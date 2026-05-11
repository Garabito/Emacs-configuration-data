;; ======================================
;; inicializador de emacs
;; Configuraciones
;; ======================================
;; C:\Users\nxf82725\AppData\Roaming\.emacs.d\Configuration

;;------------------------------------------------------------
;; Load files and org-configuration file
;;------------------------------------------------------------
;; emacs-custom.el: Este archivo se utiliza para realizar personalizaciones en Emacs. Permite eliminar toda esa información innecesaria y 
;; sobrante. El archivo se reescribe automáticamente, sin afectar al archivo .emacs principal. De esta manera, se evitan cambios no deseados.

(setq custom-file "C:/Users/nxf82725/AppData/Roaming/.emacs.d/Configuration/emacs-custom.el")
(load custom-file)



;;I suggest reading:
;; C-hig (emacs)Lisp Libraries
;; C-hig (elisp)How Programs Do Loading
;; C-hf require
;; C:\Editors\Emacs\emacs-30.1\bin\emacs --debug-init
;;(org-babel-load-file (expand-file-name "C:\\Users\\nxf82725\\AppData\\Roaming\\.emacs.d\\Org-config\\myinit.org"))
;;(org-babel-load-file (expand-file-name "C:/Users/nxf82725/AppData/Roaming/.emacs.d/Configuration/InitConf.el"))
;;(load-file 'C:/Users/nxf82725/AppData/Roaming/.emacs.d/Configuration/InitConf.el) 
(load "C:/Users/nxf82725/AppData/Roaming/.emacs.d/Configuration/InitConf" ) 
(load "C:/Users/nxf82725/AppData/Roaming/.emacs.d/Configuration/EditConf.el")
;;(load "C:/Users/nxf82725/AppData/Roaming/.emacs.d/Configuration/PreOrgConf.el")
;;(org-babel-load-file (expand-file-name "C:/Users/nxf82725/AppData/Roaming/.emacs.d/Configuration/KbConf.org"))
(org-babel-load-file (expand-file-name "C:/Users/nxf82725/AppData/Roaming/.emacs.d/Configuration/myinit.org"))


 
;;----------------------------------------------------------------------
;; Package management
;; MELPA and others
;;(require 'package)
;; ===================================
;; MELPA Package Support
;; ===================================
;; Enables basic packaging support

;; ============ Instalaciones de paquetes =================
;; Agregamos todos los paquetes que vayamos a necesitar
;; commands M-x package-install,  M-x package-upgrade-all, package-load-list, t (which means to make available any installed version), or nil (which means no version
;;(require 'saveplace)
;;(require 'highlight-chars)
;;(require 'neotree)
;;(require 'auto-complete)
;;(require 'autopair)
;;(require 'yasnippet)
;;(require 'flycheck)
;;(require 'apropos)
;;(require 'auto-complete-config)
;;(require 'iso-transl)
;;(require 'undo-tree)
;;(require 'ox-taskjuggler)
;; Installs packages
;;

;; Adds the Melpa archive to the list of available repositories
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("gnu" . "http://elpa.gnu.org/packages/") t)
;;  (add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/") t)
(setq package-initialize-at-startup nil)

;; Initializes the package infrastructure
(package-initialize)

;; Set use-package install
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; If there are no archived package contents, refresh them
(when (not package-archive-contents)
  (package-refresh-contents))
  
;; Scans the list in myPackages
;; If the package listed is not already installed, install it
;;(mapc #'(lambda (package)
;;          (unless (package-installed-p package)
;;            (package-install package)))
;;      myPackages)

;; myPackages contains a list of package names
(defvar myPackages
  '(better-defaults                 ;; Set up some better Emacs defaults
    material-theme                  ;; Theme
    )
  )

;; =================================== Fin paquetes ===========================================

;; Error debbuging
;; Win + R
;; C:\Editors\Emacs\emacs-30.1\bin\emacs --debug-init