
import tkinter as tk
from tkinter import ttk, filedialog, messagebox
import re

class SimpleEditor:
    def __init__(self, root):
        self.root = root
        self.root.title('Editor')
        self.root.geometry('1000x700')

        self.current_file = None
        self.refresh_interval = 50
        self.refresh_id = None

        # ========== tools at the top ==========
        self.frame_top = tk.Frame(root)
        self.frame_top.pack(fill=tk.X, padx=5, pady=3)

        tk.Button(self.frame_top, text='open', command=self.open_file).pack(side=tk.LEFT, padx=3)
        tk.Button(self.frame_top, text='save', command=self.save_file).pack(side=tk.LEFT, padx=3)
        tk.Button(self.frame_top, text='save another one', command=self.save_as).pack(side=tk.LEFT, padx=3)

        # ========== all ==========
        self.frame_editor = tk.Frame(root)
        self.frame_editor.pack(fill=tk.BOTH, expand=True)

        # line number
        self.line_numbers = tk.Text(self.frame_editor, width=4, bg="#232323", fg="#B4B4B4", font=('Consolas', 12))
        self.line_numbers.pack(side=tk.LEFT, fill=tk.Y)
        self.line_numbers.config(state=tk.DISABLED)

        # area
        self.text_editor = tk.Text(self.frame_editor, font=('Consolas', 12), foreground='#ffffff', wrap=tk.NONE, undo=True)
        self.text_editor.pack(side=tk.LEFT, fill=tk.BOTH, expand=True)
        self.text_editor.config(insertbackground='white')

        # scroll bar
        self.scroll = ttk.Scrollbar(self.frame_editor, command=self.text_editor.yview)
        self.scroll.pack(side=tk.RIGHT, fill=tk.Y)
        self.text_editor.config(yscrollcommand=self.sync_scroll)

        self.text_editor.config(bg='#232323')
        self.update_line_numbers()

        # highlight
        self.setup_highlight_tags()

        self.font_size = 12
        self.text_font = ("Consolas", self.font_size)
        self.text_editor.config(font=self.text_font)
        self.line_numbers.config(font=self.text_font)

        # ctrl + '+', '-'
        self.root.bind("<Control-plus>", self.zoom_in)
        self.root.bind("<Control-minus>", self.zoom_out)
        self.root.bind("<Control-=>", self.zoom_in)

        self.auto_refresh()

    def sync_scroll(self, y1, y2):
        self.scroll.set(y1, y2)
        self.line_numbers.yview_moveto(y1)

    def auto_refresh(self):
        self.update_line_numbers()
        self.highlight_syntax()
        self.refresh_id = self.root.after(self.refresh_interval, self.auto_refresh)

    # functions
    def setup_highlight_tags(self):
        self.text_editor.tag_configure('keyword', foreground="#ff1100")     # red:    keywords
        self.text_editor.tag_configure('comment', foreground='#a0a0a0')     # grey:   comments
        self.text_editor.tag_configure('number', foreground='#B4E6B4')      # green:  numbers
        self.text_editor.tag_configure('registers', foreground="#ffef84")   # yellow: registers

        middleList: list[str] = [
            'add',
            'sub',
            'mul',
            'div',
            'big',
            'small',
            'equal',
            'and',
            'or',
            'not',
            'xor',
            'logicaland',
            'logicor',
            'logicnot'
        ]
        newList: list[str] = []
        for mid in middleList:
            newList.append(mid + 'ui8')
            newList.append(mid + 'ui16')
            newList.append(mid + 'ui32')
            newList.append(mid + 'ui64')
            newList.append(mid + 'flt32')
            newList.append(mid + 'flt64')

        middle: str = '|'.join(newList)
        
        self.keywords = (r'\b(mov|go|goes|gous|goesus|putchar|str|load|strus|loadus|pors|cors|purs|label|if|' +
                         middle + r'|halt|' +
                         r'from|to' +
                         r')\b')
        self.register_pattern = re.compile(r'\b' + '|'.join(f'reg{15 - i}' for i in range(16)) + r'\b')
        self.id_pattern = re.compile(r'\b(?:\w|_)(?:\w|_|\d)*\b')

    def highlight_syntax(self, event=None):
        # remove old highlight
        for tag in ['keyword', 'string', 'comment', 'number', 'registers', 'ids']:
            self.text_editor.tag_remove(tag, '1.0', tk.END)

        content = self.text_editor.get('1.0', tk.END)

        # 1. comments
        for match in re.finditer(r';.*', content):
            start, end = match.span()
            self.text_editor.tag_add('comment', f'1.0+{start}c', f'1.0+{end}c')

        # 2. numbers
        for match in re.finditer(r'\b\d+\b', content):
            start, end = match.span()
            self.text_editor.tag_add('number', f'1.0+{start}c', f'1.0+{end}c')

        # 3. keywords
        for match in re.finditer(self.keywords, content):
            start, end = match.span()
            self.text_editor.tag_add('keyword', f'1.0+{start}c', f'1.0+{end}c')
        
        # 4. registers
        for match in self.register_pattern.finditer(content):
            start, end = match.span()
            self.text_editor.tag_add('registers', f'1.0+{start}c', f'1.0+{end}c')

    def update_line_numbers(self, event=None):
        self.line_numbers.config(state=tk.NORMAL)
        self.line_numbers.delete(1.0, tk.END)

        end_line = int(self.text_editor.index('end-1c').split('.')[0])
        line_text = '\n'.join(str(i) for i in range(1, end_line + 1))
        self.line_numbers.insert(tk.END, line_text)
        self.line_numbers.config(state=tk.DISABLED)

        self.line_numbers.yview_moveto(self.text_editor.yview()[0])

    # open the file
    def open_file(self):
        path = filedialog.askopenfilename(filetypes=[('all file', '*.*')])
        if not path:
            return
        try:
            with open(path, 'r', encoding='utf-8') as f:
                content = f.read()
            self.text_editor.delete(1.0, tk.END)
            self.text_editor.insert(1.0, content)
            self.current_file = path
            self.root.title(f'Editor - {path}')
            self.update_line_numbers()
            self.highlight_syntax()
        except:
            messagebox.showerror('Error', 'canot open the file.')

    # save
    def save_file(self):
        if self.current_file:
            content = self.text_editor.get(1.0, tk.END)
            with open(self.current_file, 'w', encoding='utf-8') as f:
                f.write(content)
            messagebox.showinfo('Succeed', 'done!')
        else:
            self.save_as()

    # save another one
    def save_as(self):
        path = filedialog.asksaveasfilename(defaultextension='.txt', filetypes=[('All File', '*.*')])
        if path:
            self.current_file = path
            self.save_file()

    def zoom_in(self, event=None):
        if self.font_size < 24:
            self.font_size += 1
            self.text_font = ("Consolas", self.font_size)
            self.text_editor.config(font=self.text_font)
            self.line_numbers.config(font=self.text_font)

    def zoom_out(self, event=None):
        if self.font_size > 6:
            self.font_size -= 1
            self.text_font = ("Consolas", self.font_size)
            self.text_editor.config(font=self.text_font)
            self.line_numbers.config(font=self.text_font)


if __name__ == '__main__':
    root = tk.Tk()
    app = SimpleEditor(root)
    root.mainloop()
