(list 'cons t NIL)               -> (CONS T NIL)
(eval (eval (list 'cons t NIL))) -> Ошибка
(apply #'cons '(t NIL))          -> (T)
(list 'eval NIL)                 -> (EVAL NIL)
(eval (list 'cons t NIL))        -> (T)
(eval NIL)                       -> NIL
(eval (list 'eval NIL))          -> NIL