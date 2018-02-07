# 1 Echoing Messages

* Read `:help echo`
* Read `:help echom`
* Read `:help messages`
* Add a line to your .vimrc that displays a friendly ASCII-art cat whenever you open Vim.

`echo "(>^.^<)"`

# 2 Setting Options

* Read `:help 'number'`
* Read `:help 'relativenumber'`
* Read `:help numberwidth`

## Toggling Boolean Options
* Read `:help set-inv` or `:help set-!`

`:set number!`

## Checking Boolean Options
* Read `:help E518`

`:set number?`

* Read `:help wrap`
* Read `:help shiftround`
* Read `:help matchtime`

# 3 Basic Mapping

* Map the - key to "delete the current line, then paste it below the one we're on now".

`:map - ddp`

* Figure out how to map the _ key to move the line up insted of down.

`:map _ ddkP`

* Try to guess how you might remove a mapping and reset a key to it's normal function.

`:unmap -`

# 4 Modal Mapping

* Set up a mapping so that you can press <c-u> to convert the current word to uppercase when you're in insert mode.

`:imap <c-u> <esc>lviwUi` works but it puts the cursor at the beginning of the word.

* Set up a mapping so that you can uppercase the current word with <c-u> when in normal mode.

`:nmap <c-u> viwU`

# 9 More Mappings

Create a mapping the surrounds a word in single quotes.

`:nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel`

Try using `vnoremap` to add a "mapping" that will wrap whatever text you have visually selected in quotes.

``:vnoremap <leader>" <esc>`>a"<esc>`<i"<esc>`<lv`>l``

Map H in normal mode to go to the beginning of the current line.

``:nnoremap H ^``

Map L in normal mode to go to the end of the current line.

``:nnoremap L $``

`H` normally moves to the first line of the window
`L` normally moves to the last line of the window

# 12 Autocommands

Create a few filetype commands that use setlocal to set options for your favorite filetypes.

``autocmd Filetype gitcommit setlocal spell textwidth=72``

``autocmd FileType javascript setlocal relativenumber``

Create a few "comment this line" autocommands for filetypes you work with often.

``autocmd FileType javascript nnoremap <buffer> <localleader>c I// <esc>``

``autocmd FileType vim nnoremap <buffer> <localleader>c I" <esc>``

# 13 Buffer-Local Abbreviations

Create a few snippet abbreviations and disable the old way of doing it.

``autocmd FileType javascript :iabbrev <buffer> r; return ;<left>``

``autocmd FileType javascript :iabbrev <buffer> return NOPE``

``autocmd FileType javascript :iabbrev <buffer> fnc return function () {<enter>}<Up><End><Left><Left><Left>``

``autocmd FileType javascript :iabbrev <buffer> function NOPE``

# 15 Operator-Pending Mappings

Create operator-pending mappings for "around next parentheses" and "around last parentheses".

``:onoremap an( :<c-u>normal! f(va(<cr>``

``:onoremap an( :<c-u>normal! f(va(<cr>``

Create similar mappings for in/around next/last curly brackets.

``:onoremap in{ :<c-u>normal! f{vi{<cr>``

``:onoremap il{ :<c-u>normal! f{vi{<cr>``

``:onoremap an{ :<c-u>normal! f{va{<cr>``

``:onoremap al{ :<c-u>normal! f{va{<cr>``

# 16 More Operator-Pending Mappings

Markdown can also have headings delimited with lines of `-` characters. Adjust the regex in these mappings to work for either type of heading:

``:onoremap ih :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rkvg_"<cr>``

``:onoremap ah :<c-u>execute "normal! ?^==\\+$\r:nohlsearch\rg_vk0"<cr>``

``:onoremap ih :<c-u>execute "normal! ?^[-=]\\{2,}$\r:nohlsearch\rkvg_"<cr>``

``:onoremap ah :<c-u>execute "normal! ?^[-=]\\{2,}$\r:nohlsearch\rg_vk0"<cr>``

Add two autocommands to your `~/.vimrc` file that will create these mappings

```
augroup filetype_markdown
  autocmd!
  autocmd Filetype markdown onoremap <buffer> ih :<c-u>execute "normal! ?^[-=]\\{2,}$\r:nohlsearch\rkvg_"<cr>
  autocmd Filetype markdown onoremap <buffer> ah :<c-u>execute "normal! ?^[-=]\\{2,}$\r:nohlsearch\rg_vk0"<cr>
augroup END
```

Create a "inside next email address" operator-pending mapping.

``:onoremap in@ :<c-u>execute "normal! /\S*@\w*\.\w*\r:nohlsearch\rviW"<cr>``
