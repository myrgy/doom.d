;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

(setq-default
 user-full-name    "Alexander Dalshov"
 user-mail-address "dalshov@gmail.com")

;; (with-eval-after-load "helm"
;;   (defun helm-persistent-action-display-window (&optional split-onewindow)
;;     "Return the window that will be used for persistent action.
;; If SPLIT-ONEWINDOW is non-`nil' window is split in persistent action."
;;     (with-helm-window
;;          (setq helm-persistent-action-display-window (get-mru-window)))))


;; (with-eval-after-load "projectile"
;;    (map!
;;    ;; localleader
;;    :m "," nil
;;    (:leader
;;      (:prefix "p"
;;        :n "T" #'+default/project-tasks
;;        :n "t" #'projectile-test-project
;;        :n "G" #'projectile-configure-project
;;        )
;;      )))

(with-eval-after-load "projectile"
  (map!
    :leader
    (:prefix "p"
             :desc "List project tasks" "T" #'+default/project-tasks
             :desc "Run project tests"  "t" #'projectile-test-project
             :desc "Configure project"  "G" #'projectile-configure-project
             )))

(map! :leader
      (:prefix "c"
               ;; (when: (featurep! :tools lsp)
                      :desc "Rename"    "r" #'lsp-rename
                      :desc "Open REPL" "R" #'+eval/open-repl-other-window))
;;)

;; (setq
;;  ;; use gdb-many-windows by default
;;  gdb-many-windows t
;;  ;; Non-nil means display source file containing the main routine at startup
;;  gdb-show-main t
;; )

(setq lsp-haskell-process-path-hie "~/.local/bin/hie-wrapper")
;; (setq lsp-enable-on-type-formatting nil)
;; (setq lsp-enable-indentation nil)
;; (setq lsp-imenu-show-container-name t)


(setq ccls-executable "~/.opt/bin/ccls"
      ccls-initialization-options `(:cache (:directory , ".cache")))

;;(def-package! gdb-mi
;;  :init
;;  (fmakunbound 'gdb)
;;  (fmakunbound 'gdb-enable-debug))
