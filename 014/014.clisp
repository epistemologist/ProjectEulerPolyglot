(defun collatz (pair)
 (if (= (first pair) 1)
     (second pair)
     (if (= (mod (first pair) 2) 0) 
     (collatz (list (/ (first pair) 2) (+ 1 (second pair))))
     (collatz (list (+ 1 (* 3 (first pair))) (+ 1 (second pair))))
)))

(defun collatzlength (n)
 (collatz (list n 0)))

(defun main ()
 (setq n 0)
 (setq maxlength 0)
 (loop for i from 1 to 1000000 
       for temp = (collatzlength i) do
       (cond
       ((> temp maxlength)
        (progn
         (setq n i)
         (setq maxlength temp)
         (print (list n maxlength))
        )
       )
       ((= (mod i 1000) 0)
       (print i)
       ))
 )
 n
)
 
(print (main))
