(defun rec-add (lst res)
       (cond 
            ((null lst) res)
            ((listp (car lst)) 
                              (rec-add (car lst) res))
            ((numberp (car lst)) 
                              (rec-add (cdr lst) (+ res (car lst))))
            (t (rec-add (cdr lst) res))))