;; -*- no-byte-compile: t; -*-
;;; ~/.doom.d/packages.el

(package! lsp-treemacs)

(package! gdb-mi
  :recipe (:host github
           :repo "weirdNox/emacs-gdb"
           :files ("*.el" "*.c" "*.h" "Makefile")))
