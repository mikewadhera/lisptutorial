;; (fast-triangular N) -- computes the n'th triangular number
;; T(n) = 1		if n = 1
;; T(n) = n + T(n-1)		if n > 1
(defun fast-triangluar (n)
	(fast-triangluar-aux n 1))
	
(defun fast-triangluar-aux (n acc)
	(if (= n 1)
		acc
	 (fast-triangluar-aux (1- n) (+ n acc))))

; (fast-triangluar 2)
; 2 1
	; 1 3
	; 3
; 3