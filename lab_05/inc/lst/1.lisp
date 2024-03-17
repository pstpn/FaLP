(defun minus_10 (lst)
       (mapcar #'(lambda (x) 
                        (cond 
                             ((numberp x) 
                                          (- x 10))
                             (t 
                                          x))) lst))