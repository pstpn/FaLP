(defun pred1 (x)
    (and (numberp x) (plusp x)))

(defun pred2 (x)
    (and (plusp x) (numberp x)))

(pred1 13)  ;; T
(pred1 -13) ;; NIL
(pred1 'g)  ;; NIL

(pred2 13)  ;; T
(pred2 -13) ;; NIL
(pred2 'g)  ;; Ошибка