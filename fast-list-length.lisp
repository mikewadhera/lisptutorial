;; (fast-list-length L) -- returns size of L
;; (fast-list-length '()) = 0
;; (fast-list-length '(1)) = 1
;; (fast-list-length '(1 2 3)) = 3
(defun fast-list-length (L)
	(fast-list-length-aux L 0))
	
(defun fast-list-length-aux (L acc)
	(if (null L)
		acc
	 (fast-list-length-aux (rest L) (+ 1 acc))))