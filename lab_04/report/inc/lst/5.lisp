(defun without_last (l)
       (reverse
                (cdr
                        (reverse l))))

(defun swap-first-last (l) 
    (cons (car (last l))
          (append (without_last (cdr l))
                  (cons (car l)
                        Nil))))