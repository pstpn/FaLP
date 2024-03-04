(defun f (x y)
    (cond ((< x y) (cons x (cons y Nil)))
          (t (cons y (cons x Nil)))))

(f 12 13) ;; 12 13
(f 13 12) ;; 12 13