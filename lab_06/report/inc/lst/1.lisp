(defun my-reverse(lst res)
       (cond 
            ((null lst) 
                        res)
            (t 
                        (my_reverse (cdr lst) 
                                    (cons (car lst) 
                                          res)))))