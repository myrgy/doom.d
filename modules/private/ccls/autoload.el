;;; ccls/autoload.el -*- lexical-binding: t; -*-

;;;###autoload
(defvar +ccls-path-mappings [])

;;;###autoload
(defvar +ccls-initial-blacklist [])

;;;###autoload
(defun +ccls//enable ()
  (require 'ccls)
  (setq-local lsp-ui-sideline-show-symbol nil)
  (condition-case nil
      (lsp-ccls-enable)
(user-error nil)))
