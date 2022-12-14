vim.cmd([[

" Plugins "
  call plug#begin()
  Plug 'tpope/vim-commentary'
  Plug 'ntpeters/vim-better-whitespace'
  Plug 'tpope/vim-surround'
  Plug 'jiangmiao/auto-pairs'
  Plug 'lukas-reineke/indent-blankline.nvim'
  Plug 'https://github.com/frazrepo/vim-rainbow'
  Plug 'rose-pine/neovim', {'as': 'rose-pine', 'tag': 'v1.*'}
  let g:rainbow_active = 1
" Auto Completion "
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  call plug#end()
" Make <CR> to accept selected completion item or notify coc.nvim to format
	inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()"
                              \:"\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" Tab Size (2) "
  set tabstop=2
  set softtabstop=2
  set shiftwidth=2
  set expandtab
" Appearance "
  let &t_ut=''
  colorscheme rose-pine
  set termguicolors
  set number
  set showcmd
  set encoding=utf-8
  set relativenumber
" Disable C-Z "
  noremap <C-z> <Nop>
" Better j and k "
  nnoremap j gj
  nnoremap k gk
" Allows you to use esc to use normal-terminal mode by pressing ESC "
  tnoremap <Esc> <C-\><C-n>
  tnoremap <M-[> <Esc>
  tnoremap <C-v><Esc> <Esc>
" Disables mouse "
  set mouse =
" Opens new terminal window (vertically split) "
  noremap <C-q> :vs<Enter><C-w>l:term<Enter>
]])
vim.api.nvim_create_autocmd("ColorScheme", {
  command = [[
    highlight IndentBlanklineIndent1 guifg=#eb6f92 gui=nocombine
    highlight IndentBlanklineIndent2 guifg=#f6c177 gui=nocombine
    highlight IndentBlanklineIndent3 guifg=#9ccfd8 gui=nocombine
    highlight IndentBlanklineIndent4 guifg=#31748f gui=nocombine
    highlight IndentBlanklineIndent5 guifg=#c4a7e7 gui=nocombine
  ]]
})

vim.g.strip_whitespace_on_save = 1
vim.g.strip_whitelines_at_eof = 1
vim.g.fzf_preview_window = {}

vim.cmd [[highlight IndentBlanklineIndent1 guifg=#eb6f92 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#f6c177 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#9ccfd8 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#31748f gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#c4a7e7 gui=nocombine]]

vim.opt.list = true
vim.opt.listchars:append("space:??")
vim.opt.listchars:append("eol:???")

require("indent_blankline").setup {
  space_char_blankline ="",
  char_highlight_list = {
   "IndentBlanklineIndent1",
   "IndentBlanklineIndent2",
   "IndentBlanklineIndent3",
   "IndentBlanklineIndent4",
   "IndentBlanklineIndent5",
  },
}
