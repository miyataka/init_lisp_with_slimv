;;;; Tutorial Slimv Part 1.

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
    (#\O "---")
    (#\S "...")
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

;;;; Tutorial Slimv Part 2.

(defun morse-to-charactor (morse-string)
  (first (find morse-string *morse-mapping* :test #'string= :key #'second)))

; ,a -> Abort in Debugger.
; ,q -> Quit in Debugger.
; ,n -> contiNue restart in Debugger.



(declaim (optimize (speed 0) (safety 3) (debug 3)))

; it's not work below function. why?
(defun string-to-morse (string)
  (with-output-to-string (morse)
    (write-string (character-to-morse (aref string 0)) morse)
    (loop
      for char across (subseq string 1)
      do (write-char #\Space morse)
      do (write-string (character-to-morse char) morse))))

; ,1 -> examine its macroexpansion.

(load #P"/Users/taka/sh/quick.lisp")

(quicklisp-quickstart:install)

(ql:quickload :split-sequence)
; ,i -> inspect package? or other object?
;;;; end of Tutorial of Slimv Part 2.
