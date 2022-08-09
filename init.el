;; .Emacs.d/init.el
;; ===================================
;; MELPA Package Support
;; ===================================
;; Enables basic packaging support
;;(require 'auto-complete)
(require 'package)
(require 'powerline)
(powerline-center-theme)
;;(require 'terraform-mode)
;;(require 'yaml-mode)
;;(require 'magit)
;; Adds the Melpa archive to the list of available repositories
(add-to-list 'auto-mode-alist '("\\.tf\\'" . terraform-mode))
(add-hook 'terraform-mode-hook #'terraform-format-on-save-mode)
(add-to-list 'default-frame-alist '(background-color . "##483C41"))
(add-to-list 'auto-mode-alist '("\\.ya?ml\\'" . yaml-mode))
;;(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
;; Initializes the package infrastructure
(package-initialize)
;; If there are no archived package contents, refresh them
(when (not package-archive-contents)
  (package-refresh-contents))
;; Installs packages
;;
;; myPackages contains a list of package names
(defvar myPackages
  '(cyberpunk-theme
    imenu-list
    auto-complete
    treemacs
    magit
    flycheck
    elpy
    python-mode
    pdf-tools
    which-key
    terraform-mode
    )
  )
;; Scans the list in myPackages
;; If the package listed is not already installed, install it
(mapc #'(lambda (package)
          (unless (package-installed-p package)
            (package-install package)))
      myPackages)
;; ===================================
;; Basic Customization
;; ===================================
(setq inhibit-startup-message t);; Hide the startup message
;;(add-hook 'emacs-startup-hook 'treemacs)
(add-hook 'terraform-mode-hook #'terraform-format-on-save-mode)
(setq treemacs-width 25)
(setq treemacs-git-mode 'simple)
(setq treemacs-show-hidden-files t)
(setq treemacs-follow-after-init t)
(setq elpy-rpc-python-command "python3")
(elpy-enable)
(eval-after-load "elpy"
  '(cl-dolist (key '("M-<up>" "M-<down>" "M-<left>" "M-<right>"))
     (define-key elpy-mode-map (kbd key) nil)))

;; Prevent Elpy from overriding standard cursor movements
(eval-after-load "elpy"
  '(cl-dolist (key '("C-<left>" "C-<right>"))
     (define-key elpy-mode-map (kbd key) nil)))
;; Run black on save
(add-hook 'elpy-mode-hook (lambda ()
  (add-hook 'before-save-hook 'elpy-black-fix-code nil t)))
;; Set C-8 to format Python code
(global-set-key (kbd "C-8") 'elpy-black-fix-code)
(global-set-key (kbd "C-t") 'treemacs)
(defun ml/zsh ()
  "Start a terminal emulator in a new window."
  (interactive)
  (split-window-sensibly)
  (other-window 1)
  (ansi-term (executable-find "zsh")))
(global-set-key (kbd "C-i") #'imenu-list-smart-toggle)
(global-set-key (kbd "M-w") #'treemacs-select-window)
(global-set-key (kbd "C-s") #'ml/zsh)
(global-set-key (kbd "M-o") #'split-window-horizontally)
(windmove-default-keybindings)
(setq imenu-list-focus-after-activation nil)
(setq imenu-list-auto-resize t)
;;(define-key global-map "\C-cl" 'org-store-link)
;;(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
(setq org-agenda-files (list "/Users/charlesragland/org/"))
(setq org-journal-dir "/Users/charlesragland/.emacs.d/journal/")
(setq org-journal-file-format "%Y-%m-%d.org")
(defvar org-journal-date-format "%A %d-%m-%Y")
(global-set-key (kbd "C-a") #'org-agenda)
(global-set-key (kbd "C-j") #'org-journal-new-entry)
(global-set-key (kbd "<f6>") 'flyspell-mode)
;;(global-set-key (kbd "M-g" #'magit-file-dispatch)
(which-key-mode)
(load-theme 'cyberpunk t)           ;; Load cyberpunk theme
;; User-Defined init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("05d1b0f079a493d98d02444fafc8d85ba5815b1e1d731a80291f063fd72ee0a9" default))
 '(package-selected-packages
   '(ssh-agency markdown-mode pandoc-mode json-mode yara-mode python-black flyspell\
-correct-avy-menu powerline org-journal org-super-agenda org-agenda-property yaml-m\
ode docker all-the-icons ## which-key pdf-tools auto-complete terraform-mode cyberp\
unk-theme imenu-list-minor-m$
                (custom-set-faces))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
