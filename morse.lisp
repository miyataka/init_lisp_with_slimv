;; Slimv Tutorial - Part Two
(declaim (optimize (speed 0)(safety 3)(debug 3)))

;; Slimv Tutorial - Part One
(defpackage :morse
  (:use :common-lisp))

(in-package :morse)

; (find-package :morse)

(defparameter *morse-mapping*
  '((#\A ".-")
    (#\B "-...")
    (#\C "-.-.")
    (#\D "-..")
    (#\E ".")
    (#\F "..-.")
    (#\G "--.")
    (#\H "....")
    (#\I "..")
    (#\J ".---")
    (#\K "-.-")
    (#\L ".-..")
    (#\M "--")
    (#\N "-.")
    (#\O "---")
    (#\P ".--.")
    (#\Q "--.-")
    (#\R ".-.")
    (#\S "...")
    (#\T "-")
    (#\U "..-")
    (#\V "...-")
    (#\W ".--")
    (#\X "-..-")
    (#\Y "-.--")
    (#\Z "--..")
    (#\, "--..--")
    (#\? "..--..")
    (#\! "-.-.--")))

;;(defun character-to-morse (character)
;;  (assoc character *morse-mapping* :test #'char-equal))
;;(defun character-to-morse (character)
;;  (cdr (assoc character *morse-mapping* :test #'char-equal)))

(defun character-to-morse (character)
  (second (assoc character *morse-mapping* :test #'char-equal)))





;; Slimv Tutorial - Part Two

;;(defun morse-to-character (morse-string)
;;  (first (find morse-string *morse-mapping* :test #'string= :key #'cdr)))

(defun morse-to-character (morse-string)
  (first (find morse-string *morse-mapping* :test #'string= :key #'second)))

(defun string-to-morse (string)
  (with-output-to-string (morse)
    (write-string (character-to-morse (aref string 0)) morse)
    (loop
      for char across (subseq string 1)
      do (write-char #\space morse)
      do (write-string (character-to-morse char) morse))))

;; these command executes in REPL buffer. NOT source buffer.
;;(load #P"/Users/taka/sh/quicklisp.lisp")
;;(quicklisp-quickstart:install)
;;(ql:quickload :split-sequence)
;;(find-package :split-sequence)


;; Slimv Tutorial - Part Three

;;(defun morse-to-string (string)
;;  (with-output-to-string (character-stream)
;;	(loop
;;	  for morse-char in (split-sequence:split-sequence #\space string)
;;	  do (write-char (morse-to-character morse-char) character-stream))))

(defun morse-to-string (string)
  (with-output-to-string (character-stream)
	(loop
	  for morse-char in (split-sequence:split-sequence #\space string
													   :remove-empty-subseqs t)
	  do (write-char (morse-to-character morse-char) character-stream))))

;;;; swank-server command referrences.
; ,c -> swank-server start up.
; ,e -> eval s-expression on cursor.
; ,s -> print describe message in vim on cursor function, synbol, and so on.
; ,h -> open clhs page in brouser on cursor function and etc...
; ,d -> define some function on cursor.
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
; "up" -> press "up" key in Insert-mode in REPL buffer evaluate latest command.
; ,a -> Abort in Debugger.
; ,q -> Quit in Debugger.
; ,n -> contiNue restart in Debugger.
; it's not work below function. why?
; ,1 -> examine its macroexpansion.
; ,i -> inspect package? or other object?
; ,t -> toggle trace/untrace.
; ,T -> Untrace all function.
; ,xl -> List called function.
; ,xe -> List callees function.
;;;; swank-server command referrences end.


