;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

(setq-default
 user-full-name    "Alexander Dalshov"
 user-mail-address "dalshov@gmail.com")

(with-eval-after-load "helm"
  (defun helm-persistent-action-display-window (&optional split-onewindow)
    "Return the window that will be used for persistent action.
If SPLIT-ONEWINDOW is non-`nil' window is split in persistent action."
    (with-helm-window
         (setq helm-persistent-action-display-window (get-mru-window)))))



(def-package! helm-make
  :after helm)

(def-package! helm-ctest
  :after helm)
