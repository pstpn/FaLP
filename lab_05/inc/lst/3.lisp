(defun multi (lst a)
       (mapcar #'(lambda (x) 
                        (cond 
                             ((numberp x) 
                                          (* x a))
                             (t 
                                          x))) lst))