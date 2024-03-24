(defun select-between (lst a b)
      (cond 
           ((null lst) 
                                    Nil)
           ((listp (car lst)) 
                                    (select-between (car lst) a b))
           ((and (< a (car lst)) (> b (car lst))) 
                                    (cons (car lst) 
                                          (select-between (cdr lst) a b)))
           (t 
                                    (select-between (cdr lst) a b))))