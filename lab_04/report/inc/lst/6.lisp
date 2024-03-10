(defun get_sum (dice)
    (+ (car dice) (cdr dice)))

(defun roll_dice ()
    (setf *random-state* (make-random-state t))
    (cons (+ (random 5) 1)
          (+ (random 5) 1)))

(defun is_abs_win (dice)
    (let ((sum (get_sum dice)))
         (or (= sum 7) 
             (= sum 11))))

(defun is_reroll (dice)
    (let ((fir (car dice))
          (sec (cdr dice)))
         (or (and (= fir 6) (= sec 6))
             (and (= fir 1) (= sec 1)))))


(defun get_dice (id)
    (let ((dices (roll_dice)))
          (princ id)
          (princ dices)
         (cond 
              ((is_reroll dices)
                                (get_dice id))
               (t 
                                dices))))

(defun play ()
    (let ((dice1 (get_dice 1))
          (dice2 (get_dice 2)))
         (cond
              ((is_abs_win dice1)
                                                (print "1_win_abs"))
              ((is_abs_win dice2)
                                                (print "2_win_abs"))
              ((> (get_sum dice1) (get_sum dice2))
                                                (print "1_win"))
              ((< (get_sum dice1) (get_sum dice2))
                                                (print "2_win"))
              (t
                                                (print "draw")))))