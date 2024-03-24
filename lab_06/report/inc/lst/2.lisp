(defun f (lst)
       (cond 
            ((null lst) 
                                Nil)
            ((listp (car lst)) 
                                (car lst))
            (t 
                                (f (cdr lst)))))