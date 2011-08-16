;; (apply-func-list L X) -- applies list of functions in L to X in reverse
;; (apply-func-list (list #'double #'list-length #'rest) '(1 2 3)) = 4
(defun apply-func-list (L X)
	(if (null L)
		X
	 (funcall (first L) (apply-func-list (rest L) X))))
	
; 10 times the fourth element of the list (10 20 30 40 50) [400]
(apply-func-list (list #'(lambda (x) (* 10 x)) #'first #'rest #'rest #'rest) 
								 '(10 20 30 40 50))
	
;	the third element of the second element in the list ((1 2) (3 4 5) (6)) [5]
(apply-func-list (list #'third #'second)
								 '((1 2) (3 4 5) (6)))

;	the difference between 10 and the length of (a b c d e f) [4]
(apply-func-list (list #'(lambda (x) (- 10 x)) #'list-length)
								 '(a b c d e f))

;	a list containing a list containing the symbol blah.
(apply-func-list (list #'list) (list 'blah))