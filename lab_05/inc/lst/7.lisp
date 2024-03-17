(defun cartesian (lstX lstY)
       (mapcar #'(lambda (x) 
               (mapcar #'(lambda (y) 
                                (cons x 
                                      (cons y 
                                            Nil))) lstX)) lstY))