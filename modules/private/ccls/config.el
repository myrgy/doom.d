;;; ccls/config.el -*- lexical-binding: t; -*-

(def-package! ccls
  ;; :when (featurep! :private +lsp
  :hook ((c-mode c++-mode cuda-mode objc-mode) . '+setup-ccls)
  :init
  (setq ccls-initialization-options '(
        :index (:comments 2)
        :completion (:detailedLabel t)
        :cacheDirectory ".cache"
        ))
  (defun +setup-ccls ()
    (setq-local company-transformers nil)
    (setq-local company-lsp-cache-candidates nil)
    ;; (setq-local lsp-ui-sideline-show-symbol nil)
    (lsp))

  :config
   (when (featurep! +lens)
    (add-hook 'lsp-after-open-hook #'ccls-code-lens-mode))

  (when (featurep! +rainbow)
    ;; overlay is slow
    ;; Use https://github.com/emacs-mirror/emacs/commits/feature/noverlay
    (setq ccls-sem-highlight-method 'font-lock)
    (ccls-use-default-rainbow-sem-highlight))

  ;; https://github.com/maskray/ccls/blob/master/src/config.h
  ;; (setq ccls-extra-init-params
  ;;  `(:clang (:extraArgs ["--gcc-toolchain=/usr"]
  ;;            :pathMappings ,+ccls-path-mappings)
  ;;           ;; :completion
  ;;           ;; (:include
  ;;           ;;  (:blacklist
  ;;           ;;   ["^/usr/(local/)?include/c\\+\\+/[0-9\\.]+/(bits|tr1|tr2|profile|ext|debug)/"
  ;;           ;;    "^/usr/(local/)?include/c\\+\\+/v1/"
  ;;           ;;    ]))
  ;;           :index (:initialBlacklist ,+ccls-initial-blacklist :trackDependency 1)))

  (evil-set-initial-state 'ccls-tree-mode 'emacs)
  (set-company-backend! '(c-mode c++-mode cuda-mode objc-mode) 'company-lsp)

  (map!
   ;; localleader
   :m "," nil
   (:leader
     (:prefix "l"
       (:desc "Other" :prefix "o"
         :n "r" #'ccls-reload
         ))
     ))
  )
