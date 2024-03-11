(defun a (lst)
    (cond 
         ((and (numberp (car lst))
               (> (car lst) 0))
                                (mapcar #'(lambda (x) 
                                                 (cond 
                                                      ((numberp x)
                                                                        (+ x 2))
                                                      (t
                                                                        x))) lst))
         ((and (numberp (car lst))
               (< (car lst) 0))
                                (mapcar #'(lambda (x) 
                                                 (cond 
                                                      ((numberp x)
                                                                        (* x x))
                                                      (t
                                                                        x))) lst))
         (t
                                (mapcar #'(lambda (x)
                                                 (cond
                                                      ((not (numberp x))
                                                                        x)
                                                      (t
                                                                        x))) lst))))