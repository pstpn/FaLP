(defun without_last_1 (l)
       (reverse
                (cdr
                        (reverse l))))

(defun without_last_2 (l)
       (cond 
            ((null (cdr l)) 
                                Nil)
            (t 
                                (cons (car l) 
                                      (without_last_2 (cdr l))))))