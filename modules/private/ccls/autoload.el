;;; ccls/autoload.el -*- lexical-binding: t; -*-

;;;###autoload
(defvar +ccls-path-mappings [])

;;;###autoload
(defvar +ccls-initial-blacklist [])

(after! projectile
  ;; (setq compilation-read-command nil)  ; no prompt in projectile-compile-project
  ;; ;; . -> Build
  ;; (projectile-register-project-type 'cmake '("CMakeLists.txt")
  ;;                                   :configure "cmake %s"
  ;;                                   :compile "cmake --build Debug"
  ;;                                   :test "ctest")
  (add-to-list 'projectile-globally-ignored-directories ".cache")
  )
