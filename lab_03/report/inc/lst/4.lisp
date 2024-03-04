(defun f (x y z)
    (or (and (< x y) (> x z)) (and (> x y) (< x z))))

(f 12 -3 13) ;; T
(f 13 -3 13) ;; Nil
(f 13 13 13) ;; Nil