After Emacs installation follow these
=================
After installing emacs, I followed these steps:
* Chekout the last revision of this folder to desktop(you need to edit machine/yourmachine/dot_emacs.el file to add the spesific path for your PC. For this example it is ~/Desktop/elisp):

```bash
$ svn co https://github.com/aspirintr/elisp/trunk ~/Desktop/elisp
```

* Read readme.md file
* Install color theme (help http://www.nongnu.org/color-theme/#sec4)
```bash
$ sudo apt-get install emacs-goodies-el
```
  * And add the installation lib folder to before.el
```elisp
;;; Color-theme install directory in this machine
(defvar *my-color-theme-install-dir* "/usr/share/emacs23/site-lisp/emacs-goodies-el/")
```
* Install auto complete tool. I have followed this video https://www.youtube.com/watch?v=rGVVnDxwJYE
  * You can find the latest version here http://cx4a.org/software/auto-complete/
  * in bash or emacs eshell,

```bash
$ wget http://cx4a.org/pub/auto-complete/auto-complete-1.3.1.tar.bz2
$ tar xjf auto-complete-1.3.1.tar.bz2
```
  
  * In emacs, run ```M-x load-file``` and it will ask for the file. Load this file ```auto-complete-1.3.1/etc/install.el``` and you will see these lines:

```elisp
;;;Successfully installed!

;;;Add the following code to your .emacs:

(add-to-list 'load-path "~/.emacs.d/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d//ac-dict")
(ac-config-default)
```
  * Copy and paste the lines above into ~/Desktop/elisp/machines/[your machine ie tantuni]/before.el

