(defun multi (lst x)
       (cond 
            ((null lst) 
                                Nil)
            ((numberp (car lst))
                                (cons (* (car lst) x)
                                      (cdr lst)))
            (t 
                                (cons (car lst)
                                      (multi (cdr lst) x)))))