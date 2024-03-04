(defun f (a b)
    (or (> a b) (= a b)))

(f -13 13)) ;; NIL
(f 13 13))  ;; T
(f 13 -13)) ;; T