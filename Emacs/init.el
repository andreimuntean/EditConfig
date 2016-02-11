;; Disables the toolbar.
(tool-bar-mode -1)

;; Sets the default theme.
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'purple-haze t)

;; No alarms and no surprises.
(setq ring-bell-function 'ignore)

;; Configures Sicstus Prolog.
(autoload 'run-prolog "prolog" "Start a Prolog sub-process." t)
(autoload 'prolog-mode "prolog" "Major mode for editing Prolog programs." t)
(autoload 'mercury-mode "prolog" "Major mode for editing Mercury programs." t)
(setq prolog-system 'sicstus)
(setq auto-mode-alist (append '(("\\.pl$" . prolog-mode)
				("\\.m$" . mercury-mode))
			      auto-mode-alist))
(setq prolog-indent-width 4)