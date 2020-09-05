;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

(setq-default
 user-full-name    "Alexander Dalshov"
 user-mail-address "dalshov@gmail.com")

;; (setq doom-theme 'tango)
(setq doom-font (font-spec :family "monospace" :size 16 :weight 'semi-light)
      doom-variable-pitch-font (font-spec :family "sans"))

(with-eval-after-load "projectile"
  (map!
   :leader
   (:prefix "p"
    ;; :desc "List project tasks" "T" #'+default/project-tasks
     ;;:desc "Run project tests"  "t" #'projectile-test-project
     ;; :desc "Configure project"  "G" #'projectile-configure-project
     )))

(map! :leader
      (:when (featurep! :tools lsp)
             (:prefix "c"
               :desc "Rename"    "r" #'lsp-rename
               :desc "Open REPL" "R" #'+eval/open-repl-other-window
               ;; :desc "Format"    "f" #'clang-format-buffear
               )))

(setq
 imenu-max-item-length 256
 ;; use gdb-many-windows by default
 gdb-many-windows t
 ;; Non-nil means display source file containing the main routine at startup
 gdb-show-main t

 lsp-imenu-show-container-name t
 lsp-ui-sideline-enable nil
 lsp-ui-doc-enable t
 plantuml-default-exec-mode 'jar

 lsp-file-watch-threshold 10000

 lsp-file-watch-ignored
 '("[/\\\\]\\.git$"
   "[/\\\\]\\.hg$"
   "[/\\\\]\\.bzr$"
   "[/\\\\]_darcs$"
   "[/\\\\]\\.svn$"
   "[/\\\\]_FOSSIL_$"
   "[/\\\\]\\.idea$"
   "[/\\\\]\\.ensime_cache$"
   "[/\\\\]\\.eunit$"
   "[/\\\\]node_modules$"
   "[/\\\\]\\.fslckout$"
   "[/\\\\]\\.tox$"
   "[/\\\\]\\.stack-work$"
   "[/\\\\]\\.bloop$"
   "[/\\\\]\\.metals$"
   "[/\\\\]target$" "[/\\\\]\\.deps$"
   "[/\\\\]build-aux$"
   "[/\\\\]autom4te.cache$"
   "[/\\\\]\\.reference$"
   "[/\\\\]build$"
   "[/\\\\]ci-build-"
   "[/\\\\]\\.cache$")

 magit-todos-exclude-globs
 '("vendor"
   "[\\////]//.cache$"
   "[\\////]//build$"
   "[\\////]//ci-build$")

 ;;flycheck-c/c++-clang-tidy-executable "/opt/llvm10/bin/clang-tidy"
 )



(setq lsp-haskell-process-path-hie "~/.local/bin/hie-wrapper")
;; (setq lsp-enable-on-type-formatting nil)
;; (setq lsp-enable-indentation nil)
;; (setq lsp-imenu-show-container-name t)


(setq ccls-executable "~/.opt/bin/ccls"
      ccls-initialization-options `(:cache (:directory ".cache"), :compilationDatabaseDirectory "build"))

(setq display-time-world-list
      '(;; /usr/share/zoneinfo
        ("America/New_York" "New York")
        ("America/Chicago" "Chicago")
        ("US/Central" "CDT (UTC -5)")
        ("UTC" "UTC")
        ("Europe/Minsk" "Minsk")
        ("Asia/Changpai" "Changpai")
        ("Asia/Tokyo" "Tokyo")
        ("Australia/Sydney" "Sydney")
        ))

(with-eval-after-load "forge"
  (add-to-list 'forge-alist '("git.cwr.pub" "git.cwr.pub/api/v4" "git.cwr.pub" forge-gitlab-repository))
)

;;(def-package! gdb-mi
;;  :init
;;  (fmakunbound 'gdb)
;;  (fmakunbound 'gdb-enable-debug))

(use-package! lsp-treemacs)

(setq custom-file "~/.doom.d/custom.el")
(when (file-exists-p custom-file)
  (load custom-file))
