(reverse '(a b c))       -> (C B A)
(reverse '(a b (c (d)))) -> ((C (D)) B A)
(reverse '(a))           -> (A)
(reverse ())             -> NIL
(reverse '((a b c)))     -> ((A B C))
(last '(a b c))          -> (C)
(last '(a))              -> (A)
(last '(a b (c)))        -> ((C))
(last ())                -> NIL