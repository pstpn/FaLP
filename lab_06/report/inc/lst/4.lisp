(defun multi (lst n)
       (cond 
            ((null lst) 
                                Nil)
            ((listp (car lst)) 
                                (multi (car lst) n))
            ((numberp (car lst)) 
                                (cons (* (car lst) n) 
                                      (multi (cdr lst) n)))
            (t 
                                (cons (car lst) 
                                      (multi (cdr lst) n)))))