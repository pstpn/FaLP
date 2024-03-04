(defun how_alike (x y)
    (if (or (= x y) (equal x y)) 
        'the_same
    (if (and (oddp x) (oddp y)) 
        'both_odd
    (if (and (evenp x) (evenp y)) 
        'both_even 
    'difference))))

(how_alike 13 13) ;; THE_SAME
(how_alike 12 14) ;; BOTH_EVEN
(how_alike 13 14) ;; DIFFERENCE
(how_alike 13 15) ;; BOTH_ODD