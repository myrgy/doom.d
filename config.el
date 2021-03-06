;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

(setq-default
 user-full-name    "Alexander Dalshov"
 user-mail-address "dalshov@gmail.com")

;; (setq doom-theme 'tango)
(setq doom-font (font-spec :family "monospace"
                           ;;:size 28
                           :size 16
                           :weight 'semi-light)
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
(setq read-process-output-max (* 1024 1024 4)) ;; 4mb

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
 plantuml-jar-path '"/usr/share/java/plantuml.jar"
 plantuml-java-args '("-Djava.awt.headless=true" "-jar")

 enable-local-variables t

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


(add-to-list 'auto-mode-alist '("\\.puml\\'" . plantuml-mode))

(setq clang-format-executable "/opt/llvm10/bin/clang-format")
(setq +format-with-lsp nil)

(setq lsp-haskell-process-path-hie "~/.local/bin/hie-wrapper")
;; (setq lsp-enable-on-type-formatting nil)
;; (setq lsp-enable-indentation nil)
;; (setq lsp-imenu-show-container-name t)

;; (setq ccls-args '("--log-file=/tmp/ccls.log"))
(setq ccls-executable "~/.opt/bin/ccls")
(after! ccls
  (message "ccls init optionsll")
  (setq ccls-initialization-options `(:trackDependency 1
                                      :index(:threads 5)
                                      :cache (:directory ".cache")
                                      :compilationDatabaseDirectory "build")))

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

(setq deft-directory "~/Dropbox/org/"
      deft-recursive t
      org-directory "~/Dropbox/org/"
      ;;org-brain-path "~/Dropbox/org/brain"
      org-roam-tag-sources '(prop last-directory)
      org-roam-directory "~/Dropbox/org/roam")


;;(def-package! gdb-mi
;;  :init
;;  (fmakunbound 'gdb)
;;  (fmakunbound 'gdb-enable-debug))

;;(use-package! lsp-treemacs)

;;(fmakunbound 'gdb)
;;(fmakunbound 'gdb-enable-debug)

(setq custom-file "~/.doom.d/custom.el")
(when (file-exists-p custom-file)
  (load custom-file))


;; Font size adjustment
(defun auto-adjust-font-size (frame)
  "Inspired by https://emacs.stackexchange.com/a/44930/17066. FRAME is ignored.
If I let Windows handle DPI everything looks blurry."
  (setq attrs (frame-monitor-attributes frame))
  (setq pix-w (cl-fourth (assoc 'geometry attrs)))

  (when (eq pix-w 2560) ;; imac
    (setq size 14))
  (when (eq pix-w 1920) ;; laptop low res
    (setq size 14))
  (when (eq pix-w 3840) ;; laptop hi res
    (setq size 28))
  (set-frame-font  (font-spec :family "monospace"
                              :size size
                              :weight 'semi-light)))

;;(add-hook 'window-size-change-functions #'auto-adjust-font-size)

;; Each path is relative to `+mu4e-mu4e-mail-path', which is ~/.mail by default
(set-email-account! "work"
  '((mu4e-sent-folder       . "/work/Sent Mail")
    (mu4e-drafts-folder     . "/work/Drafts")
    (mu4e-trash-folder      . "/work/Trash")
    (mu4e-refile-folder     . "/work/All Mail")
    (smtpmail-smtp-user     . "adalshov@charlesworthresearch.com")
    (user-mail-address      . "adalshov@charlesworthresearch.com")    ;; only needed for mu < 1.4
    (mu4e-compose-signature . "---\nAlexander Dalshov"))
  t)
