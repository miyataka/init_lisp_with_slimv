# init_lisp_with_slimv
my note of Common Lisp

I started learn Common Lisp with slimv.
I studyed tutorial of slimv.

below Tutorial was done.

[Tutorial Part1](http://kovisoft.bitbucket.org/tutorial.html)

[Tutorial Part2](http://kovisoft.bitbucket.org/tutorial2.html)

[Tutorial Part3](http://kovisoft.bitbucket.org/tutorial3.html)

I will study next 'roswell'.

## I learned things in the tutorials.
-  ,c -> swank-server start up.
-  ,e -> eval s-expression on cursor.
-  ,s -> print describe message in vim on cursor function, synbol, and so on.
-  ,h -> open clhs page in brouser on cursor function and etc...
-  ,d -> define some function on cursor.
-  ,W or ,w -> insert '(' before/outer cursor, and pair of ')'.
-  ,S -> delete '(' on the cursor, and their pair of ')'.
-  ,O -> split s-expression before cursor and after cursor.
-  ,J -> join s-expression before cursor and after cursor.
-  ,I -> Raise subforms to delete upforms. danger!
-  ,<[>] -> move parens
-  ,D -> compile defun.
-  ,d -> compile defun and eval the function.
-  ,F -> compile whole the file.
-  ,L -> compile and Load whole the file.
-  "up" -> press "up" key in Insert-mode in REPL buffer evaluate latest command.
-  ,a -> Abort in Debugger.
-  ,q -> Quit in Debugger.
-  ,n -> contiNue restart in Debugger.
-  ,1 -> examine its macroexpansion.
-  ,i -> inspect package? or other object?
-  ,t -> toggle trace/untrace.
-  ,T -> Untrace all function.
-  ,xl -> List called function.
-  ,xe -> List callees function.
