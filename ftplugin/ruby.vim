" Vim filetype plugin
" Language:	Ruby
" Maintainer:	Gavin Sinclair <gsinclair at soyabean.com.au>
" Info:         $Id: ruby.vim,v 1.5 2003/09/16 16:06:45 gsinclair Exp $
" URL:          http://vim-ruby.sourceforge.net
" Anon CVS:     See above site 
" Licence:      GPL (http://www.gnu.org)
" Disclaimer: 
"    This program is distributed in the hope that it will be useful,
"    but WITHOUT ANY WARRANTY; without even the implied warranty of
"    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
"    GNU General Public License for more details.
" ----------------------------------------------------------------------------
"
" Matchit support thanks to Ned Konz.  See his ftplugin/ruby.vim at
"   http://bike-nomad.com/vim/ruby.vim.
" ----------------------------------------------------------------------------

" Only do this when not done yet for this buffer
if (exists("b:did_ftplugin"))
    finish
endif
let b:did_ftplugin = 1

" Matchit support
if exists("loaded_matchit")
  if !exists("b:match_words")
    let b:match_ignorecase = 0
    let b:match_words =
\ '\%(\%(\%(^\|[;=]\)\s*\)\@<=\%(class\|module\|while\|begin\|until\|for\|if\|unless\|def\|case\)\|\<do\)\>:' .
\ '\<\%(else\|elsif\|ensure\|rescue\|when\)\>:\%(^\|[^.]\)\@<=\<end\>'
  endif
endif

" vim: ff=unix
