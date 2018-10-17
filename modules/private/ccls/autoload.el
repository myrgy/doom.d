;;; ccls/autoload.el -*- lexical-binding: t; -*-

;;;###autoload
(defvar +ccls-path-mappings [])

;;;###autoload
(defvar +ccls-initial-blacklist [])

;;;###autoload
(defun +ccls//enable ()
  (require 'ccls)
  ;; (setq-local lsp-ui-sideline-show-symbol nil)
  (condition-case nil
      (lsp-ccls-enable)
    (user-error nil)))

(after! projectile
  ;; (setq compilation-read-command nil)  ; no prompt in projectile-compile-project
  ;; ;; . -> Build
  ;; (projectile-register-project-type 'cmake '("CMakeLists.txt")
  ;;                                   :configure "cmake %s"
  ;;                                   :compile "cmake --build Debug"
  ;;                                   :test "ctest")
  (add-to-list 'projectile-globally-ignored-directories ".cache")
)
