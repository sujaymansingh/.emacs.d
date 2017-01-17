(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(when (not package-archive-contents) (package-refresh-contents))

(package-install 'evil)
(require 'evil)
(evil-mode 1)


; Left margin (with line-numbers and a little spacing between the numbers and the text!)
(global-linum-mode t)
(setq linum-format "%d ")
(setq linum-format "%4d \u2502 ")
(line-number-mode 1)

