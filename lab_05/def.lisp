(load "~/quicklisp/setup.lisp")
(ql:quickload "fiveam")

(defun a (lst)
       (cond
            ((< (* (caar lst) (cadar lst)) 0)
                (reduce #'(lambda (x y)
                                 (+ (+ (car y) (cadr y)) x)) lst :initial-value 0))
            ((and (> (caar lst) 0)
                  (> (cadar lst) 0))
                (mapcar #'(lambda (l)
                                 (cons (* (car l) 2) 
                                       (cons (* (cadr l) 2) 
                                             Nil))) lst))
            (t
                (mapcar #'(lambda (l)
                                 (* (car l) (cadr l))) lst))))

(fiveam:test test1
        (setf c '((1 2) (3 4) (-5 6)))
        (setf b 'c)
        (setf a 'b)
        (fiveam:is (equal (a (eval (eval a))) '((2 4) (6 8) (-10 12)))))
(fiveam:test test2
        (setf c '((1 -2) (3 4) (-5 6)))
        (setf b 'c)
        (setf a 'b)
        (fiveam:is (equal (a (eval (eval a))) 7)))
(fiveam:test test3
        (setf c '((-1 -2) (3 4) (-5 6)))
        (setf b 'c)
        (setf a 'b)
        (fiveam:is (equal (a (eval (eval a))) '(2 12 -30))))

(fiveam:run!)