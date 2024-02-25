(mystery (one two))       -> Ошибка
(mystery '(one two))      -> (TWO ONE)

(mystery (last one two))  -> Ошибка
(mystery '(last one two)) -> (ONE LAST)

(mystery free)            -> Ошибка
(mystery '(free))         -> (NIL FREE)

(mystery one 'two)        -> Ошибка
(mystery '(one 'two))     -> ('TWO ONE)