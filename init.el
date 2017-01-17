(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(when (not package-archive-contents) (package-refresh-contents))

(package-install 'evil)
(require 'evil)
(evil-mode 1)


; Need this for python stuff (make sure that flake8 is on the path though!)
(package-install 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)


; Left margin (with line-numbers and a little spacing between the numbers and the text!)
(global-linum-mode t)
(setq linum-format "%d ")
(setq linum-format "%4d \u2502 ")
(line-number-mode 1)

; I want to see the column number along the bottom
(setq column-number-mode t)


; I don't want the toolbar
(menu-bar-mode -1)
