Instructions for setting up dotfile management is available here (https://www.atlassian.com/git/tutorials/dotfiles)

## Install emacs

```
# first, rename existing /Applications/Emacs.app -> Emacs26.app
brew tap daviderestivo/emacs-head
brew install emacs-head --HEAD --with-cocoa --with-imagemagick --with-jansson
ln -s /usr/local/opt/emacs-head/Emacs.app /Applications
```

Additional information on emacs installation is available, (https://github.crookster.org/emacs27-from-homebrew-on-macos-with-emoji/)

## Install slime helper in sbcl

```
rlwrap sbcl
* (ql:quickload "quicklisp-slime-helper")
To use, add this to your ~/.emacs:

  (load (expand-file-name "~/quicklisp/slime-helper.el"))
  ;; Replace "sbcl" with the path to your implementation
  (setq inferior-lisp-program "sbcl")
```  