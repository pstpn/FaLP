(defun first-odd (lst)
       (cond 
            ((null lst)
                                Nil)
            ((listp (car lst))
                                (first-odd (car lst)))
            ((oddp (car lst)) 
                                (car lst))
            (t 
                                (first-odd (cdr lst)))))