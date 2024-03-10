(defun last_1 (l)
       (cond 
            ((null l) 
                        Nil)
            (t 
                        (car (reverse l)))))

(defun last_2 (l)
       (cond 
            ((cdr l) 
                        (last_2 (cdr l)))
            (t 
                        (cond 
                             ((null l) 
                                        Nil)
                             (t 
                                        (car l))))))