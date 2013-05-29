" Markdown
autocmd! BufNewFile,BufRead *.md set filetype=mkd
autocmd! BufNewFile,BufRead *.mkd set filetype=mkd

" Latex
autocmd! BufNewFile,BufRead *.tex set filetype=tex

" Objective-C
autocmd! BufNewFile,BufRead *.m set filetype=matlab
"autocmd! BufNewFile,BufRead *.m set filetype=objc

" ActionScript
autocmd! BufNewFile,BufRead *.as set filetype=actionscript
autocmd! BufNewFile,BufRead *.mxml set filetype=mxml

" SCSS
autocmd! BufNewFile,BufRead *.scss set filetype=scss.css

" eRuby
autocmd! BufNewFile,BufRead *.erb set filetype=eruby.html

" JSON
autocmd! BufNewFile,BufRead *.json set filetype=javascript

" GitIgnore
autocmd! BufNewFile,BufRead *.gitignore set filetype=gitignore

" ZSH
autocmd! BufNewFile,BufRead *.zsh-theme set filetype=zsh

" Nginx Config
autocmd! BufNewFile,BufRead nginx.conf set filetype=nginx

" CocoaPods
autocmd! BufNewFile,BufRead Podfile,*.podspec set filetype=ruby
