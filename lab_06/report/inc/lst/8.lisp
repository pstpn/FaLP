(defun allodd (lst)
       (cond 
            ((null lst)
                        t)
            ((listp (car lst))
                        (allodd (car lst)))
            ((oddp (car lst))
                        (allodd (cdr lst)))
            (t 
                        Nil)))