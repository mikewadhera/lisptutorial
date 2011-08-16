;; (repeat-transformation F N X) -- repeats function F on input X, N times
;; (repeat-transformation (function double) 4 1) = 16
(defun repeat-transformation (F N X)
	(if (zerop N)
		X
	 (repeat-transformation F (1- N) (funcall F X))))

(repeat-transformation #'(lambda (l) (cons 'blah l)) 10 nil)
; (BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH BLAH)

(defun list-nth (N L)
  "Returns nth member of L, not zero-based"
	(first (repeat-transformation #'rest (1- N) L)))

(list-nth 6 '(1 2 3 4 5 6 7 8))
; 6