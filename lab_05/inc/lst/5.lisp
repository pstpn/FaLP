(defun set-equal (lst1 lst2)
       (and (= (length lst1) (length lst2))
            (= (length lst1) (length (intersection lst1 lst2)))))