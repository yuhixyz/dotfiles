let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_global_ext = 0
" [text](text.md) instead of [text](text)
let g:vimwiki_markdown_link_ext = 1
let g:vimwiki_conceallevel = 2

" 更改复选框格式
let g:vimwiki_listsyms = ' ○◐●✓'

" 给代码块添加语法支持
let wiki = {}
let wiki.nested_syntaxes = {'python': 'python', 'c++': 'cpp'}

" 更改标题颜色
hi VimwikiHeader1 guifg=#D79921
hi VimwikiHeader2 guifg=#689D6A
hi VimwikiHeader3 guifg=#B16286
hi VimwikiHeader4 guifg=#98971A
hi VimwikiHeader5 guifg=#458588
hi VimwikiHeader6 guifg=#CC241D
