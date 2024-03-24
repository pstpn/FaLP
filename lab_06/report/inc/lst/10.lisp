(defun pow-2 (lst)
       (cond 
            ((null lst) 
                        Nil)
            (t 
                        (cons (* (car lst) (car lst)) 
                              (pow-2 (cdr lst))))))