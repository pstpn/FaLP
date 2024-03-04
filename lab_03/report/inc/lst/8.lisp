(defun cond_solution (x y z)
    (cond ((> x y) (< x z))
          ((> x z) (< x y))))

(defun if_solution (x y z)
    (if (< y x) 
        (if (< x z) t Nil) 
    (if (< x y) 
        (if (< z x) t Nil))))

(defun and_or_solution (x y z)
    (or (and (< x y) (> x z)) (and (> x y) (< x z))))