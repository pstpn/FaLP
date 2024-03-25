(defun solve (lst n p)
      (cond
           ((null lst)
                                (nconc n p))
           ((listp (car lst))
                                (solve (nconc (car lst) (cdr lst)) n p))
           ((or (symbolp (car lst)) (= (car lst) 0))
                                (solve (cdr lst) n p))
           ((< (car lst) 0)
                                (solve (cdr lst) (cons (car lst) n) p))
           (t
                                (solve (cdr lst) n (cons (car lst) p)))))

(load "~/quicklisp/setup.lisp")
(ql:quickload "fiveam")

(fiveam:test test_1
  (fiveam:is (equal (solve '(f g -1 4 -2 5 6) Nil Nil) '(-2 -1 6 5 4))))

(fiveam:test test_2
  (fiveam:is (equal (solve '(-12 gg (3 g (0 -7)) -4 4 4) Nil Nil) '(-4 -7 -12 4 4 3))))

(fiveam:test test_3
  (fiveam:is (equal (solve '(-1 -1 -1 -1 0 0) Nil Nil) '(-1 -1 -1 -1))))

(fiveam:run!)