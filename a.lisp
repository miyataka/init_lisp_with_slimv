(print "Hello World.")
; ,c -> swank-server start up.
; ,e -> eval s-expression on cursor.
(defpackage :morse
  (:use :common-lisp))

(in-package :morse)
; ,s -> print describe message in vim on cursor function, synbol, and so on.
; ,h -> open clhs page in brouser on cursor function and etc...
; ,d -> define some function on cursor.
(defparameter *morse-mapping*
  '((#\A ".-")
    (#\B "-...")
    (#\C "-.-.")
    (#\, "--..--")
    (#\? "..--..")))

(defun character-to-morse (character)
 (cdr (assoc character *morse-mapping* :test #'char-equal)))
; ,W or ,w -> insert '(' before/outer cursor, and pair of ')'.
; ,S -> delete '(' on the cursor, and their pair of ')'.
; ,O -> split s-expression before cursor and after cursor.
; ,J -> join s-expression before cursor and after cursor.
; ,I -> Raise subforms to delete upforms. danger!
; ,< / ,> -> move parens
; ,D -> compile defun.
; ,d -> compile defun and eval the function.
; ,F -> compile whole the file.
; ,L -> compile and Load whole the file.
; <up> -> press <up> key in Insert-mode in REPL buffer evaluate latest command.
