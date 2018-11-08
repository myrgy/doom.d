;; -*- no-byte-compile: t; -*-
;;; ~/.doom.d/packages.el

;;; Examples:
;; (package! some-package)
;; (package! another-package :recipe (:fetcher github :repo "username/repo"))
;; (package! builtin-package :disable t)
(package! gdb-mi :recipe (:fetcher github
                                   :repo "weirdNox/emacs-gdb"))
                                   ;; :files ("*.el" "*.c" "*.h" "Makefile")))
