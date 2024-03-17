(defun lst_sum (lst)
       (reduce #'(lambda (sum l)
               (+ sum (length l))) lst :initial-value 0))

(setf list-of-list '((1 2) (3 4)))

(lst_sum list-of-list) -> 4