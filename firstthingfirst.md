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
And add the installation lib folder to before.el

```elisp
;;; Color-theme install directory in this machine
(defvar *my-color-theme-install-dir* "/usr/share/emacs23/site-lisp/emacs-goodies-el/")
```
