;; Set up the keyboard so the delete key on both the regular keyboard
;; and the keypad delete the character under the cursor and to the right
;; under X, instead of the default, backspace behavior.
(global-set-key [delete] 'delete-char)
(global-set-key [kp-delete] 'delete-char)

;; Turn on font-lock mode for Emacs
(cond ((not running-xemacs)
       (global-font-lock-mode t)
))

;; Visual feedback on selections
(setq-default transient-mark-mode t)

;; Always end a file with a newline
(setq require-final-newline t)

;; Stop at the end of the file, not just add lines
(setq next-line-add-newlines nil)

;; Set background to black
(set-foreground-color "ghost white")
(set-background-color "black")

;; Enable wheelmouse support by default
(cond (window-system
       (mwheel-install)
))

;; Feisty disables register copy shortcuts.  Reenable it
(global-set-key [(control x) (x)] 'copy-to-register)  ; Ctrl+x x
(global-set-key [(control x) (g)] 'insert-register)  ; Ctrl+x g

;; I like this shortcut and want it on older systems
(global-set-key [(meta g) (g)] 'goto-line)  ; Meta+g g

;; Shut up the damned splash buffer
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

;; Set C mode parameters
(setq tab-width 4)
(setq indent-tabs-mode t)
(setq c-basic-offset 4)
