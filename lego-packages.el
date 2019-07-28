;;; packages.el --- josegLEGO default package selection
;;
;;; Commentary:
;;
;; It show the complete list of installed packages and auto-installed if they are missing
;;
;;; Code:

(require 'package)

;; Package Repositories
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(package-initialize)

;; LEGO Packages
(setq package-selected-packages
      '(manage-minor-mode
	rjsx-mode
	pug-mode
	flycheck
	markdown-preview-eww
	markdown-mode
	ac-python
	ac-html
	ac-emmet
	emmet-mode
	ac-js2
	react-snippets
	multiple-cursors
	scss-mode
	yaml-mode
	js-doc
	magit-gitflow
	web-mode
	typescript-mode
	rbenv
	powerline
	multi-web-mode
	json-mode
	js2-mode
	helm
	exec-path-from-shell
	darkokai-theme
	whitespace-cleanup-mode
	neotree
	yasnippet
	auto-complete
	))
(package-install-selected-packages)

(defun install-packages ()
  "Install all required packages."
  (interactive)
  (unless package-archive-contents
    (package-refresh-contents))
  (dolist (package package-selected-packages)
    (unless (package-installed-p package)
      (package-install package))))

(install-packages)

(provide 'lego-packages)