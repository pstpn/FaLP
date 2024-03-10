(set 'table (list 
                 (cons 'Russia 'Moscow)
                 (cons 'Georgia 'Tbilisi)
                 (cons 'Japan 'Tokio)
                 (cons 'China 'Pekin)))

(defun get_capital (table country)
       (cond 
            ((null table) 
                                        Nil)
            ((eql country (caar table))
                                        (cdar table))
            (t 
                                        (get_capital (cdr table) country))))

(defun get_country (table capital)
       (cond 
            ((null table) 
                                        Nil)
            ((eql capital (cdar table))
                                        (caar table))
            (t 
                                        (get_country (cdr table) capital))))