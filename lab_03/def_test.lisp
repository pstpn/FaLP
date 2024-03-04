(ql:quickload :fiveam)

(defpackage #:test-sqrt
  (:use :cl :fiveam))

(in-package #:test-sqrt)

(defparameter *epsilon* 0.0001)

(defun calc-sqrt (expr)
  (if (plusp expr)
      (sqrt expr)
      (cons 0 (sqrt (abs expr)))))

(deftest calc-sqrt-test
    (is (= (calc-sqrt 4) 2))
    (is (= (calc-sqrt -4) (cons 0 2))))

(defun solve (a b c d)
  (if (> (+ a b) (+ c d))
      (if (> a b)
          (cons (calc-sqrt (+ a b)) (cons (calc-sqrt (+ c d)) nil))
          (if (= a b)
              (cons a (cons b nil))
              (cons a (cons (calc-sqrt (+ c d)) nil)))
          )
      (if (> a b)
          (cons (calc-sqrt (+ (- a c) d)) (cons (calc-sqrt (- c d)) nil))
          (cons (calc-sqrt (- d c)) (cons (calc-sqrt (- c d)) nil))
          )
      ))

(deftest solve-test
    (is (equal (solve 4 3 1 2) (cons 2 (cons (sqrt 3) nil)))
    (is (equal (solve 4 4 1 2) (cons 4 (cons 4 nil)))
    (is (equal (solve 3 4 1 2) (cons 3 (cons (sqrt 3) nil)))
    (is (equal (solve 2 1 3 4) (cons (sqrt 8) (cons (sqrt 1) nil)))
    (is (equal (solve 1 2 4 3) (cons (sqrt 1) (cons (sqrt 1) nil)))

(in-run :test-sqrt)
