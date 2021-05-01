;; -*- no-byte-compile: t; -*-
;;; ~/.doom.d/packages.el

(package! lsp-treemacs)

;;(package! gdb-mi
;;  :recipe (:host github
;;           :repo "weirdNox/emacs-gdb"
;;           :files ("*.el" "*.c" "*.h" "Makefile")))

;; (when (package! eaf :recipe (:host github
;;                              :repo "manateelazycat/emacs-application-framework"
;;                              :files ("*.el" "*.py" "app" "core")
;;                              :build (:not compile)))

;;   (package! ctable :recipe (:host github :repo "kiwanami/emacs-ctable"))
;;   (package! deferred :recipe (:host github :repo "kiwanami/emacs-deferred"))
;;   (package! epc :recipe (:host github :repo "kiwanami/emacs-epc")))

;; (use-package! eaf
;;   :commands (eaf-open-browser eaf-open find-file)
;;   :config
;;   (use-package! ctable)
;;   (use-package! deferred)
;;   (use-package! epc))
