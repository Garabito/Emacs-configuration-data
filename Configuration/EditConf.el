;; ==============================
;; 4 Configuraciones de Edición
;; ==============================

;; Verificamos la sintaxis de código al vuelo.
(global-flycheck-mode t)


;; No usamos tabs duros.
;;(setq-default indent-tabs-mode nil)

;; Configuramos a emacs de tal forma que pueda compartir el clipboard con
;; el sistema operativo.
(setq
 x-select-enable-clipboard t
 x-select-enable-primary t
 save-interprogram-paste-before-kill t
 apropos-do-all t
 mouse-yank-at-point t)

;; Configuramos la búsqueda en el buffer. (ya hay comandos habiliados en myinit.org)

;;(global-set-key (kbd "C-s") 'isearch-forward-regexp)
::(global-set-key (kbd "C-r") 'isearch-backward-regexp)
;;(global-set-key (kbd "C-M-s") 'isearch-forward)
;;(global-set-key (kbd "C-M-r") 'isearch-backward)
;; Atajos globales para Org Mode
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)


;; Una característica que me gustaba de mis anteriores editores es el duplicar
;; una linea  de código.
;;(global-set-key "\C-c\C-d" "\C-a\C- \C-n\M-w\C-y")


;; ==================================================================================
;; https://www.howardism.org/Technical/Emacs/orgmode-wordprocessor.html

;; Better Header Bullets
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))) 

;; Better Headers
(let* ((variable-tuple (cond ((x-list-fonts "Source Sans Pro") '(:font "Source Sans Pro"))
                             ((x-list-fonts "Lucida Grande")   '(:font "Lucida Grande"))
                             ((x-list-fonts "Verdana")         '(:font "Verdana"))
                             ((x-family-fonts "Sans Serif")    '(:family "Sans Serif"))
                             (nil (warn "Cannot find a Sans Serif Font.  Install Source Sans Pro."))))
       (base-font-color     (face-foreground 'default nil 'default))
       (headline           `(:inherit default :weight bold :foreground ,base-font-color)))

  (custom-theme-set-faces 'user
                          `(org-level-8 ((t (,@headline ,@variable-tuple))))
                          `(org-level-7 ((t (,@headline ,@variable-tuple))))
                          `(org-level-6 ((t (,@headline ,@variable-tuple))))
                          `(org-level-5 ((t (,@headline ,@variable-tuple))))
                          `(org-level-4 ((t (,@headline ,@variable-tuple :height 1.1))))
                          `(org-level-3 ((t (,@headline ,@variable-tuple :height 1.25))))
                          `(org-level-2 ((t (,@headline ,@variable-tuple :height 1.5))))
                          `(org-level-1 ((t (,@headline ,@variable-tuple :height 1.75))))
                          `(org-document-title ((t (,@headline ,@variable-tuple :height 1.5 :underline nil))))))
						  
						  