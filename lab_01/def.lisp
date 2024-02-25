(defun f (ar1) 
    (cons (caaadr ar1) 
          (cons (cons (cdaadr ar1) 
                      (cons (car (cdaddr ar1)) Nil)) 
                Nil)))


(f `(1 ((2 . 3) 4) (5 6) 7) )