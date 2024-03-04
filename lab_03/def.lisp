(defun calc_sqrt (expr)
       (cond ((plusp expr) (sqrt expr))
             (t (cons 0 (sqrt (abs expr))))))

(defun solve (a b c d)
       (cond 
            ((> (+ a b) (+ c d))
                        (cond 
                            ((> a b) 
                                        (cons   (calc_sqrt (+ a b)) 
                                                (cons   (calc_sqrt (+ c d)) 
                                                        Nil)))
                            ((= a b) 
                                        (cons a (cons b Nil)))
                            (t 
                                        (cons   a 
                                                (cons   (calc_sqrt (+ c d)) 
                                                        Nil)))))
            (t 
                        (cond 
                            ((> a b) 
                                        (cons (calc_sqrt (+ (- a c) d)) (cons (calc_sqrt (- c d)) Nil)))
                            (t 
                                        (cons (calc_sqrt (- d c)) (cons (calc_sqrt (- c d)) Nil)))))))

(solve 4 3 1 2)
(solve 4 4 1 2)
(solve 3 4 1 2)

(solve 2 1 3 4)
(solve 1 2 4 3)