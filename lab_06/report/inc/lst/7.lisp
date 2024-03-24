(defun recnth (n lst)
       (cond 
            ((null lst) 
                            Nil)
            ((< (length lst) (- n 1))
                            Nil)
            ((= n 0) 
                            (car lst))
            (t 
                            (recnth (- n 1) (cdr lst)))))