(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(when (not package-archive-contents) (package-refresh-contents))

(package-install 'evil)
(require 'evil)
(evil-mode 1)

