;;; init.el -*- lexical-binding: t; -*-

;; Copy this file to ~/.doom.d/init.el or ~/.config/doom/init.el ('doom
;; quickstart' will do this for you). The `doom!' block below controls what
;; modules are enabled and in what order they will be loaded. Remember to run
;; 'doom refresh' after modifying it.
;;
;; More information about these modules (and what flags they support) can be
;; found in modules/README.org.

(doom! :completion
       company           ; the ultimate code completion backend
       ;;(helm +fuzzy)     ; the *other* search engine for love and life
       ;;ido               ; the other *other* search engine...
       (ivy +fuzzy)      ; a search engine for love and life

       :ui
       ;;deft              ; notational velocity for Emacs
       doom              ; what makes DOOM look the way it does
       doom-dashboard    ; a nifty splash screen for Emacs
       doom-quit         ; DOOM quit-message prompts when you quit Emacs
       ;;fill-column       ; a `fill-column' indicator
       hl-todo           ; highlight TODO/FIXME/NOTE tags
       ;;indent-guides     ; highlighted indent columns
       modeline          ; snazzy, Atom-inspired modeline, plus API
       nav-flash         ; blink the current line after jumping
       ;;neotree           ; a project drawer, like NERDTree for vim
       ophints           ; highlight the region an operation acts on
       (popup            ; tame sudden yet inevitable temporary windows
        +all             ; catch all popups that start with an asterix
        +defaults)       ; default popup rules
       ;;pretty-code       ; replace bits of code with pretty symbols
       ;;tabbar            ; FIXME an (incomplete) tab bar for Emacs
       treemacs          ; a project drawer, like neotree but cooler
       ;;unicode           ; extended unicode support for various languages
       vc-gutter         ; vcs diff in the fringe
       vi-tilde-fringe   ; fringe tildes to mark beyond EOB
       window-select     ; visually switch windows
       workspaces        ; tab emulation, persistence & separate workspaces

       :editor
       (evil +everywhere); come to the dark side, we have cookies
       file-templates    ; auto-snippets for empty files
       fold              ; (nigh) universal code folding
       (format +onsave)  ; automated prettiness
       ;;lispy             ; vim for lisp, for people who dont like vim
       multiple-cursors  ; editing in many places at once
       ;;parinfer          ; turn lisp into python, sort of
       rotate-text       ; cycle region at point between text candidates
       snippets          ; my elves. They type so I don't have to

       :emacs
       (dired            ; making dired pretty [functional]
       +ranger         ; bringing the goodness of ranger to dired
       +icons          ; colorful icons for dired-mode
        )
       electric          ; smarter, keyword-based electric-indent
       vc                ; version-control and Emacs, sitting in a tree

       :term
        eshell            ; a consistent, cross-platform shell (WIP)

       :tools
       ansible
       debugger          ; FIXME stepping through code, to help you add bugs
       ;;direnv
       docker
       ;;editorconfig      ; let someone else argue about tabs vs spaces
       ;;ein               ; tame Jupyter notebooks with emacs
       eval              ; run code, run (also, repls)
       flycheck          ; tasing you for every semicolon you forget
       (flyspell          ; tasing you for misspelling mispelling
        +hunspell
        ;; +prog
        )
       ;;gist              ; interacting with github gists
       (lookup           ; helps you navigate your code and documentation
        +devdocs
        +docsets)        ; ...or in Dash docsets locally
       lsp
       ;;macos             ; MacOS-specific commands
       magit             ; a git porcelain for Emacs
       make              ; run make tasks from Emacs
       ;;password-store    ; password manager for nerds
       pdf               ; pdf enhancements
       ;;prodigy           ; FIXME managing external services & code builders
       rgb               ; creating color strings
       ;;terraform         ; infrastructure as code
       ;;tmux              ; an API for interacting with tmux
       ;;upload            ; map local to remote projects via ssh/ftp
       ;;wakatime
       ;;vterm             ; another terminals in Emacs

       :lang
       ;;agda              ; types of types of types of types...
       ;;assembly          ; assembly for fun or debugging
       (cc +lsp)                ; C/C++/Obj-C madness
       ;;clojure           ; java with a lisp
       ;;common-lisp       ; if you've seen one lisp, you've seen them all
       ;;coq               ; proofs-as-programs
       ;;crystal           ; ruby at the speed of c
       ;;csharp            ; unity, .NET, and mono shenanigans
       data              ; config/data formats
       ;;erlang            ; an elegant language for a more civilized age
       ;;elixir            ; erlang done right
       ;;elm               ; care for a cup of TEA?
       emacs-lisp        ; drown in parentheses
       ;;ess               ; emacs speaks statistics
       ;;go                ; the hipster dialect
       (haskell +lsp) ; a language that's lazier than I am
       ;;hy                ; readability of scheme w/ speed of python
       ;;idris             ;
       ;;(java +meghanada) ; the poster child for carpal tunnel syndrome
       ;;javascript        ; all(hope(abandon(ye(who(enter(here))))))
       ;;julia             ; a better, faster MATLAB
       kotlin            ; a better, slicker Java(Script)
       latex             ; writing papers in Emacs has never been so fun
       ;;ledger            ; an accounting system in Emacs
       lua               ; one-based indices? one-based indices
       markdown          ; writing docs for people to ignore
       ;;nim               ; python + lisp at the speed of c
       ;;nix               ; I hereby declare "nix geht mehr!"
       ;;ocaml             ; an objective camel
       (org              ; organize your plain life in plain text
        +attach          ; custom attachment system
        +babel           ; running code in org
        +capture         ; org-capture in and outside of Emacs
        +export          ; Exporting org to whatever you want
        +habit           ; Keep track of your habits
        +present         ; Emacs for presentations
        +protocol)       ; Support for org-protocol:// links
       ;;perl              ; write code no one else can comprehend
       ;;php               ; perl's insecure younger brother
       plantuml          ; diagrams for confusing people more
       ;;purescript        ; javascript, but functional
       python            ; beautiful is better than ugly
       ;;qt                ; the 'cutest' gui framework ever
       ;;racket            ; a DSL for DSLs
       rest              ; Emacs as a REST client
       ;;ruby              ; 1.step do {|i| p "Ruby is #{i.even? ? 'love' : 'life'}"}
       ;;rust              ; Fe2O3.unwrap().unwrap().unwrap().unwrap()
       ;;scala             ; java, but good
       ;;(sh +fish)        ; she sells (ba|z|fi)sh shells on the C xor
       ;;solidity          ; do you need a blockchain? No.
       ;;swift             ; who asked for emoji variables?
       ;;terra             ; Earth and Moon in alignment for performance.
       ;;web               ; the tubes
       ;;vala              ; GObjective-C

       ;; Applications are complex and opinionated modules that transform Emacs
       ;; toward a specific purpose. They may have additional dependencies and
       ;; should be loaded late.
       :app
       calendar
       ;;(email +gmail)    ; emacs as an email client
       ;;irc               ; how neckbeards socialize
       ;;(rss +org)        ; emacs as an RSS reader
       ;;twitter           ; twitter client https://twitter.com/vnought
       ;;(write            ; emacs as a word processor (latex + org + markdown)
       ;; +wordnut         ; wordnet (wn) search
       ;; +langtool)       ; a proofreader (grammar/style check) for Emacs

       :collab
       ;;floobits          ; peer programming for a price
       ;;impatient-mode    ; show off code over HTTP

       :config
       ;; For literate config users. This will tangle+compile a config.org
       ;; literate config in your `doom-private-dir' whenever it changes.
       ;;literate

       ;; The default module sets reasonable defaults for Emacs. It also
       ;; provides a Spacemacs-inspired keybinding scheme and a smartparens
       ;; config. Use it as a reference for your own modules.
       (default +bindings +smartparens)

       :private
        prj
       )
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#00212B" "#ff6c6b" "#98be65" "#ECBE7B" "#51afef" "#c678dd" "#46D9FF" "#bbc2cf"])
 '(auth-sources
   (quote
    ("/home/adalshov/Projects/github/doom-emacs/.local/etc/authinfo.gpg" "~/.authinfo.gpg" "~/.authinfo")))
 '(custom-enabled-themes (quote (doom-one)))
 '(custom-safe-themes
   (quote
    ("e47c0abe03e0484ddadf2ae57d32b0f29f0b2ddfe7ec810bd6d558765d9a6a6c" "2d1fe7c9007a5b76cea4395b0fc664d0c1cfd34bb4f1860300347cdad67fb2f9" "2d392972cbe692ee4ac61dc79907af65051450caf690a8c4d36eb40c1857ba7d" default)))
 '(fci-rule-color "#5B6268")
 '(jdee-db-active-breakpoint-face-colors (cons "#1B2229" "#51afef"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#1B2229" "#98be65"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#1B2229" "#3f444a"))
 '(objed-cursor-color "#ff6c6b")
 '(safe-local-variable-values
   (quote
    ((helm-make-nproc . 11)
     (eval setq projectile-project-test-cmd
           (function helm-ctest)
           projectile-project-compilation-cmd
           (function helm-make-projectile)
           projectile-project-compilation-cmd
           (function multi-compile-run)
           projectile-project-compilation-dir "build" helm-make-build-dir
           (projectile-compilation-dir)
           helm-ctest-dir
           (projectile-compilation-dir)
           flycheck-clang-tidy-build-path "ci-build-clang" multi-compile-alist
           (quote
            (("\\.*"
              ("release" "./tools/build.sh release"
               (projectile-project-root))
              ("debug" "./tools/build.sh debug"
               (projectile-project-root))
              ("dbg" "./tools/build.sh dbg"
               (projectile-project-root))
              ("asan" "./tools/build.sh asan"
               (projectile-project-root))
              ("tsan" "./tools/build.sh tsan"
               (projectile-project-root))
              ("ubsan" "./tools/build.sh ubsan"
               (projectile-project-root))
              ("clang" "./tools/build.sh clang"
               (projectile-project-root))
              ("lint" "./tools/build.sh clang-tools"
               (projectile-project-root))))))
     (eval setq projectile-project-test-cmd
           (function helm-ctest)
           projectile-project-compilation-cmd
           (function helm-make-projectile)
           projectile-project-compilation-cmd
           (function multi-compile-run)
           projectile-project-compilation-dir "build" helm-make-build-dir
           (projectile-compilation-dir)
           helm-ctest-dir
           (projectile-compilation-dir)
           multi-compile-alist
           (quote
            (("\\.*"
              ("release" "./tools/build.sh release"
               (projectile-project-root))
              ("debug" "./tools/build.sh debug"
               (projectile-project-root))
              ("dbg" "./tools/build.sh dbg"
               (projectile-project-root))
              ("asan" "./tools/build.sh asan"
               (projectile-project-root))
              ("tsan" "./tools/build.sh tsan"
               (projectile-project-root))
              ("ubsan" "./tools/build.sh ubsan"
               (projectile-project-root))
              ("clang" "./tools/build.sh clang"
               (projectile-project-root))
              ("lint" "./tools/build.sh clang-tools"
               (projectile-project-root))))))
     (projectile-project-name . "algo_server")
     (indent-tabs-mode . 1)
     (eval setq projectile-project-test-cmd
           (function helm-ctest)
           projectile-project-compilation-cmd
           (function helm-make-projectile)
           projectile-project-compilation-cmd
           (function multi-compile-run)
           projectile-project-compilation-dir "build" helm-make-build-dir
           (projectile-compilation-dir)
           helm-ctest-dir
           (projectile-compilation-dir)
           multi-compile-alist
           (quote
            (("\\.*"
              ("release" "./tools/build.sh release"
               (projectile-project-root))
              ("debug" "./tools/build.sh debug"
               (projectile-project-root))
              ("dbg" "./tools/build.sh dbg"
               (projectile-project-root))
              ("asan" "./tools/build.sh asan"
               (projectile-project-root))
              ("tsan" "./tools/build.sh tsan"
               (projectile-project-root))
              ("clang" "./tools/build.sh clang"
               (projectile-project-root))
              ("lint" "./tools/build.sh clang-tools"
               (projectile-project-root))))))
     (eval setq projectile-project-test-cmd
           (function helm-ctest)
           projectile-project-compilation-cmd
           (function helm-make-projectile)
           projectile-project-compilation-cmd
           (function multi-compile-run)
           projectile-project-compilation-dir "build" helm-make-build-dir
           (projectile-compilation-dir)
           helm-ctest-dir
           (projectile-compilation-dir)
           multi-compile-alist
           (quote
            (("\\.*"
              ("release" "./tools/build.sh release"
               (projectile-project-root))
              ("debug" "./tools/build.sh debug"
               (projectile-project-root))
              ("dbg" "./tools/build.sh dbg"
               (projectile-project-root))
              ("asan" "./tools/build.sh asan"
               (projectile-project-root))
              ("tsan" "./tools/build.sh tsan"
               (projectile-project-root))
              ("lint" "./tools/build.sh clang-tools"
               (projectile-project-root))
              ("clang" "./tools/build.sh clang"
               (projectile-project-root))))))
     (projectile-project-configure-cmd . "env CLICOLOR_FORCE=1 cmake -DCMAKE_BUILD_TYPE=Debug -DCMAKE_EXPORT_COMPILE_COMMANDS=ON -DCLANG_FORMAT_EXCLUDE_PATTERNS=/.cache/\\;/build/\\;/ci-build- ..")
     (eval setq projectile-project-test-cmd
           (function helm-ctest)
           projectile-project-compilation-cmd
           (function helm-make-projectile)
           projectile-project-compilation-cmd
           (function multi-compile-run)
           projectile-project-compilation-dir "build" helm-make-build-dir
           (projectile-compilation-dir)
           helm-ctest-dir
           (projectile-compilation-dir)
           multi-compile-alist
           (quote
            (("\\.*"
              ("release" "./tools/build.sh release"
               (projectile-project-root))
              ("debug" "./tools/build.sh debug"
               (projectile-project-root))
              ("dbg" "./tools/build.sh dbg"
               (projectile-project-root))
              ("asan" "./tools/build.sh asan"
               (projectile-project-root))
              ("tsan" "./tools/build.sh tsan"
               (projectile-project-root))
              ("clang-tools" "./tools/build.sh clang-tools"
               (projectile-project-root))
              ("clang" "./tools/build.sh clang"
               (projectile-project-root))))))
     (helm-make-nproc . 10)
     (helm-make-nproc . "-j10")
     (helm-make-nproc . "10")
     (clang-format-binary . "/opt/llvm9/bin/clang-format")
     (projectile-project-configure-cmd . "env CLICOLOR_FORCE=1 cmake -DCMAKE_BUILD_TYPE=Debug -DCMAKE_CXX_FLAGS=\"-fsanitize=address\"  -DCMAKE_EXPORT_COMPILE_COMMANDS=ON -DCLANG_FORMAT_EXCLUDE_PATTERNS=/.cache/\\;/ci-build- ..")
     (projectile-project-configure-cmd . "env CLICOLOR_FORCE=1 cmake -DCMAKE_BUILD_TYPE=Debug -DCMAKE_CXX_FLAGS='-fsanitize=address'  -DCMAKE_EXPORT_COMPILE_COMMANDS=ON -DCLANG_FORMAT_EXCLUDE_PATTERNS=/.cache/\\;/ci-build- ..")
     (projectile-project-configure-cmd . "env CLICOLOR_FORCE=1 cmake -DCMAKE_BUILD_TYPE=Debug -DCMAKE_EXPORT_COMPILE_COMMANDS=ON -DCMAKE_CXX_FLAGS='-fsanitize=address' -DCLANG_FORMAT_EXCLUDE_PATTERNS=/.cache/\\;/ci-build- ..")
     (clang-format-binary . "~/Workspace/web_server/algo_Server/tools/clang-format")
     (projectile-project-configure-cmd . "env CLICOLOR_FORCE=1 cmake -DCMAKE_BUILD_TYPE=Debug -DCMAKE_EXPORT_COMPILE_COMMANDS=ON  -DCMAKE_CXX_FLAGS='-fsanitize=address' -DCLANG_FORMAT_EXCLUDE_PATTERNS=/.cache/\\;/ci-build- ../algo_server")
     (projectile-project-name . "web_server")
     (eval setq lsp-file-watch-ignored
           (cons lsp-file-watch-ignored
                 (quote
                  ("build" "ci-build-*"))))
     (helm-make-arguments . "-j7")
     (projectile-project-configure-cmd . "cmake -DCMAKE_BUILD_TYPE=Debug -DCMAKE_EXPORT_COMPILE_COMMANDS=ON ..")
     (projectile-project-run-cmd . "./build/ccls")
     (projectile-project-name . "ccls")
     (eval setq projectile-project-test-cmd
           (function helm-ctest)
           projectile-project-compilation-cmd
           (function helm-make-projectile)
           projectile-project-compilation-dir "build" helm-make-build-dir
           (projectile-compilation-dir)
           helm-ctest-dir
           (projectile-compilation-dir))
     (clang-format-binary . "~/Workspace/gateways/tools/clang-format")
     (projectile-project-name . "Gateways")
     (projectile-project-name . "Simulator")
     (eval setq projectile-project-test-cmd
           (function helm-ctest)
           projectile-project-compilation-cmd
           (function helm-make-projectile)
           projectile-project-compilation-cmd
           (function multi-compile-run)
           projectile-project-compilation-dir "build" helm-make-build-dir
           (projectile-compilation-dir)
           helm-ctest-dir
           (projectile-compilation-dir)
           multi-compile-alist
           (quote
            (("\\.*"
              ("release" "./tools/build.sh release"
               (projectile-project-root))
              ("debug" "./tools/build.sh debug"
               (projectile-project-root))
              ("dbg" "./tools/build.sh dbg"
               (projectile-project-root))
              ("asan" "./tools/build.sh asan"
               (projectile-project-root))
              ("tsan" "./tools/build.sh tsan"
               (projectile-project-root))
              ("clang" "./tools/build.sh clang"
               (projectile-project-root))))))
     (clang-format-binary . "/opt/llvm8/bin/clang-format")
     (helm-make-arguments . "-j10")
     (projectile-project-configure-cmd . "env CLICOLOR_FORCE=1 cmake -DCMAKE_BUILD_TYPE=Debug -DCMAKE_EXPORT_COMPILE_COMMANDS=ON  -DCMAKE_CXX_FLAGS='-fsanitize=address' -DCLANG_FORMAT_EXCLUDE_PATTERNS=/.cache/\\;/ci-build- ..")
     (projectile-project-name . "qgo")
     (eval setq projectile-project-test-cmd
           (function helm-ctest)
           projectile-project-compilation-cmd
           (function helm-make-projectile)
           projectile-project-compilation-cmd
           (function multi-compile-run)
           projectile-project-compilation-dir "build" helm-make-build-dir
           (projectile-compilation-dir)
           helm-ctest-dir
           (projectile-compilation-dir)
           multi-compile-alist
           (quote
            (("\\.*"
              ("release" "./script/build.sh release"
               (projectile-project-root))
              ("debug" "./script/build.sh debug"
               (projectile-project-root))
              ("dbg" "./script/build.sh dbg"
               (projectile-project-root))
              ("asan" "./script/build.sh asan"
               (projectile-project-root))
              ("tsan" "./script/build.sh tsan"
               (projectile-project-root))
              ("clang" "./script/build.sh clang"
               (projectile-project-root))))))
     (eval require
           (quote lsp))
     (clang-format-style-option . "file")
     (clang-format-binary . "~/Workspace/feeds/tools/clang-format")
     (helm-ctest-env . "CATCH_SUCCESSFUL_TESTS=0 VERBOSE=0")
     (helm-make-arguments . "-j11")
     (projectile-project-configure-cmd . "env CLICOLOR_FORCE=1 cmake -DCMAKE_BUILD_TYPE=Debug -DCMAKE_EXPORT_COMPILE_COMMANDS=ON -DCLANG_FORMAT_EXCLUDE_PATTERNS=/.cache/\\;/ci-build- ..")
     (projectile-project-name . "Feeds")
     (eval setq projectile-project-test-cmd
           (function helm-ctest)
           projectile-project-compilation-cmd
           (function helm-make-projectile)
           projectile-project-compilation-cmd
           (function multi-compile-run)
           projectile-project-compilation-dir "build" helm-make-build-dir
           (projectile-compilation-dir)
           helm-ctest-dir
           (projectile-compilation-dir)
           multi-compile-alist
           (quote
            (("\\.*"
              ("release" "./tools/build.sh release"
               (projectile-project-root))
              ("debug" "./tools/build.sh debug"
               (projectile-project-root))
              ("dbg" "./tools/build.sh dbg"
               (projectile-project-root))
              ("asan" "./tools/build.sh asan"
               (projectile-project-root))
              ("tsan" "./tools/build.sh tsan"
               (projectile-project-root)))))))))
 '(vc-annotate-background "#282c34")
 '(vc-annotate-color-map
   (list
    (cons 20 "#98be65")
    (cons 40 "#b4be6c")
    (cons 60 "#d0be73")
    (cons 80 "#ECBE7B")
    (cons 100 "#e6ab6a")
    (cons 120 "#e09859")
    (cons 140 "#da8548")
    (cons 160 "#d38079")
    (cons 180 "#cc7cab")
    (cons 200 "#c678dd")
    (cons 220 "#d974b7")
    (cons 240 "#ec7091")
    (cons 260 "#ff6c6b")
    (cons 280 "#cf6162")
    (cons 300 "#9f585a")
    (cons 320 "#6f4e52")
    (cons 340 "#5B6268")
    (cons 360 "#5B6268")))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
