;; ======================================
;; inicializador de emacs
;; Configuraciones
;; ======================================

;; ================= Configuraciones Iniciales =================================	  
;; Establecemos el tamaño que tendrá al iniciar emacs.
(when window-system (set-frame-size (selected-frame) 80 30))


;; Establecemos una fuente agradable
(set-frame-font "Courier New 12")

;; Cargamos los temas que vamos a aplicarle a emacs.
;;(add-to-list 'custom-theme-load-path "~/.emacs.d/temas")
;;(add-to-list 'load-path "~/.emacs.d/temas")
;;(load-theme 'tomorrow-night-bright t)

;;(load-theme 'matrix t)
(load-theme 'blue-sea t)
;;[ ] blue-mood -- blue-mood theme
;;[ ] blue-sea -- blue-sea theme


;;[X] calm-forest -- calm-forest theme
;; Hide the startup message
;;(setq inhibit-startup-message t)


;; Indicamos que queremos ver el número de lineas.
;;(global-nlinum-mode t)
(global-display-line-numbers-mode 1)
;; Alternatively, to use it only in programming modes:
;;    (add-hook 'prog-mode-hook #'display-line-numbers-mode)
	
;; Indicamos que durante la edición podamos el número de linea y el número de
;; columna en el que estamos trabajando
(setq column-number-mode t)


;; Indicamos que el título de la ventana va a ser el path del archivo que estamos
;; editando en el buffer actual.
(setq-default frame-title-format "%b (%f)")

;; Indicamos que resalte la linea actual
;;(global-hl-line-mode 1)

;; Una de las características que menos me gusta, es que el cursor se encuentre
;; parpadeando, por lo que lo vamos a quitar. Así como que cada vez que hace una
;; evaluación campaneé.
;; (blink-cursor-mode 0)
;; (setq ring-bell-function 'ignore)

;; Quéremos que resalte los paréntesis y sus matchs.
;;(show-paren-mode 1)
;;(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;; Inhabilitamos la barra de menús y de herramientas
;; (menu-bar-mode -1)
;; (when (fboundp 'scroll-bar-mode)
;;   (scroll-bar-mode -1)
;;   (tool-bar-mode -1))

;; Definimos una función para ingresar a pantalla completa.
(defun fullscreen ()
  "TO-DO."
  (interactive)
  (set-frame-parameter nil 'fullscreen
                       (if (frame-parameter nil 'fullscreen) nil 'fullboth)))
(global-set-key [f11] 'fullscreen)

;; Quiero que me enseñe el estado de la batería de la laptop, así como la hora
;; actual.

(display-battery-mode t)
(display-time-mode)

;;  Utilizamos a Nyan-Cat como indicador de la posición en el buffer.

;;(nyan-mode t)
;;(nyan-start-animation)
;;(setq nyan-wavy-trail t)

;; Limpiamos el mode-line
(defvar mode-line-cleaner-alist
  `((auto-complete-mode . " α")
    (yas/minor-mode . " υ")
    (paredit-mode . " π")
    (eldoc-mode . "")
    (column-enforce-mode . " 80")
    (abbrev-mode . "")
    (lisp-interaction-mode . " λ")
    (hi-lock-mode . "")
    (python-mode . " Π")
    (emacs-lisp-mode . " ε")
    (nxhtml-mode . " nx")
    (fundamental-mode . " F")
    (latex-mode . " Φ")
    (flycheck-mode . " Γ")
    (magit-auto-revert-mode . " gR")
    (yas-global-mode . " ψ")
    (yas-minor-mode . " ψ")
    (projectile-mode . " ρ"))
  "Una lista para 'clean-mode-line'.")


