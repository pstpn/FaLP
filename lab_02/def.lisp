(defun f (x y) (+ (* 3 (* x x)) y))

(defun ff (x y)
    (eval (cons 'f 
                (cons x 
                      (cons y Nil)))))

; (cadr (2 (3 (5 (6)))))

(ff (caadr `(2 (3 (5 (6))))) (caadr (cadadr `(2 (3 (5 (6)))))))