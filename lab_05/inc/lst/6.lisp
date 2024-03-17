(defun select-between (lst a b)
       (cond 
            ((null lst) Nil)
            (t (reduce #'(lambda (x y)
                        (cond ((and (> y a) (< y b)) (cons y x))
                              (t x))) lst :initial-value nil))))