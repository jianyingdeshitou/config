"--------------------------------------------------------
set nocp

"--------------------------------------------------------
" pathogen
call pathogen#infect()

"--------------------------------------------------------
syntax on
colorscheme desert
" filetype plugin indent on
filetype plugin on                                             
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

"--------------------------------------------------------
" 设置行号显示
set nu

"--------------------------------------------------------
" 设置tab长度为4
set tabstop=4
set shiftwidth=4
set expandtab

"--------------------------------------------------------
" 光标
"set cursorline
" Highlight current line
"au WinLeave * set nocursorline nocursorcolumn
"au WinEnter * set cursorline cursorcolumn
"set cursorline cursorcolumn
set cursorcolumn

"--------------------------------------------------------
" 设置内部编码为utf8
set encoding=utf-8
" 当前编辑的文件编码
set fileencoding=utf8
" 打开支持编码的文件: 使用utf-8或gbk打开文件
set fileencodings=uft8-bom,utf8,gbk,gb2312,big5   
set fileformats=unix,dos

"--------------------------------------------------------
" 检索时忽略大小写
set ic
" 检索时高亮显示匹配项
set hls is

"--------------------------------------------------------
set foldmethod=indent
"set foldmethod=syntax
" 启动vim时不要自动折叠代码
set foldlevel=100  
" 设置折叠栏宽度
"set foldcolumn=5 
  
"--------------------------------------------------------
" TagList

" Tlist_GainFocus_On_ToggleOpen : 
" 为 1 则使用TlistToggle打开标签列表窗口后会获焦点至于标签列表窗口；
" 为0则taglist打开后焦点仍保持在代码窗口

" Tlist_Auto_Open : 
" 为1则Vim启动后自动打开标签列表窗口

" Tlist_Close_On_Select : 
" 选择标签或文件后是否自动关闭标签列表窗口

" Tlist_Exit_OnlyWindow : 
" Vim当前仅打开标签列表窗口时，是否自动退出Vim
let Tlist_Exit_OnlyWindow=1

" Tlist_Use_SingleClick : 
" 是否将默认双击标答打开定义的方式更改为单击后打开标签

" Tlist_Auto_Highlight_Tag : 
" 是否高亮显示当前标签。命令":TlistHighlightTag"也可达到同样效果

" Tlist_Highlight_Tag_On_BufEnter : 
" 默认情况下，Vim打开/切换至一个新的缓冲区/文件后，标签列表窗口会自动将当前代码窗口对应的标签高亮显示。
" TlistHighlight_Tag_On_BufEnter置为0可禁止以上行为

" Tlist_Process_File_Always : 
" 为1则即使标签列表窗口未打开，taglist仍然会在后台处理vim所打开文件的标签
let Tlist_Process_File_Always=1 

" Tlist_Auto_Update : 
" 打开/禁止taglist在打开新文件或修改文件后自动更新标签。
" 禁止自动更新后，taglist仅在使用
" :TlistUpdate, :TlistAddFiles，或:TlistAddFilesRecursive命令后更新标签
"let Tlist_Auto_Update = 1

" Tlist_File_Fold_Auto_Close : 
" 自动关闭标签列表窗口中非激活文件/缓冲区所在文档标签树，仅显示当前缓冲区标签树
" 非当前文件，函数列表折叠隐藏
let Tlist_File_Fold_Auto_Close=1 

" Tlist_Sort_Type : 
" 标签排序依据， 可以为"name"（按标签名排序）
" 或"order"（按标签在文件中出现的顺序，默认值）

" Tlist_Use_Horiz_Window : 
" 标签列表窗口使用水平分割样式

" Tlist_Use_Right_Window : 
" 标签列表窗口显示在右侧（使用垂直分割样式时）
" 0 的话就是显示在左边
"let Tlist_Use_Right_Window=1 

" Tlist_WinWidth : 
" 设定水平分割时标签列表窗口的宽度
let Tlist_WinWidth=40       

" Tlist_WinHeight : 
" 设定垂直分割时标签列表窗口的高度

" Tlist_Inc_Winwidth : 
" 显示标签列表窗口时允许/禁止扩展Vim窗口宽度
let Tlist_Inc_Winwidth=0

" Tlist_Compact_Format : 
" 减少标签列表窗口中的空白行

" Tlist_Enable_Fold_Column : 
" 是否不显示Vim目录列

" Tlist_Display_Prototype : 
" 是否在标签列表窗口用标签原型替代标签名

" Tlist_Display_Tag_Scope : 
" 在标签名后是否显示标签有效范围

" Tlist_Show_Menu : 
" 在图型界面Vim中，是否以下拉菜单方式显示当前文件中的标签

" Tlist_Max_Submenu_Item : 
" 子菜单项上限值。如子菜单项超出此上限将会被分隔到多个子菜单中。
" 缺省值为25

" Tlist_Max_Tag_Length : 
" 标签菜单中标签长度上限

" 让taglist可以同时展示多个文件的函数列表
"let Tlist_Show_One_File=0 
let Tlist_Show_One_File=1

"因为我们放在环境变量里，所以可以直接执行
"let Tlist_Ctags_Cmd='ctags' 

let tlist_php_settings = 'php;c:class;i:interfaces;d:constant;f:function'

"--------------------------------------------------------
" winmanager
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>

"--------------------------------------------------------
" miniBufExplorer
let g:miniBufExplMapWindowNavVim = 1

"--------------------------------------------------------
" matchi
" 忽略大小写
let b:match_ignorecase = 1
"let b:match_words='\<begin\>:\<end\>'

"--------------------------------------------------------
" 使更新 _vimrc 更容易
nmap ;s :source $HOME/.vimrc<CR>
nmap ;v :e $HOME/.vimrc<CR>

"--------------------------------------------------------
" Remove trailing whitespace in vim before saving
" 对于新建文件，可能需要重新打开才能识别文件类型(:e)
"autocmd FileType c,cpp,python,ruby,java,sh,html,javascript,php autocmd BufWritePre <buffer> :%s/\s\+$//e

"autocmd BufWritePre * :%s/\s\+$//e
autocmd BufWritePre *.php :%s/\s\+$//e

"--------------------------------------------------------
" DoxygenToolkit
let g:DoxygenToolkit_commentType = "php"
let g:DoxygenToolkit_authorName="myname"
let s:licenseTag = "Copyright(C)\<enter>"
let s:licenseTag = s:licenseTag . "For free\<enter>"
let s:licenseTag = s:licenseTag . "All right reserved\<enter>"
let g:DoxygenToolkit_licenseTag = s:licenseTag
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:doxygen_enhanced_color=1

let g:DoxygenToolkit_briefTag_pre="@desc function  "
let g:DoxygenToolkit_paramTag_pre="@params [type] "
let g:DoxygenToolkit_returnTag="@return "
let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------"
let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------"
"let g:DoxygenToolkit_authorName="Mathias Lorente"
"let g:DoxygenToolkit_licenseTag="My own license"

"--------------------------------------------------------
" Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_php_checkers = ["php", "phpcs", "phpmd"]

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

"let g:syntastic_error_symbol = 'err!'
"let g:syntastic_warning_symbol = '!'

"nmap <A-up> :lprev<cr>
"nmap <A-down> :lnext<cr>
"nmap <A-right> :ll<cr>

