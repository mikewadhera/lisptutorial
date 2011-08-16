;; (fast-power b e) - computes b to the power of e
;; assumes b & e are non-negative integers
(defun fast-power (b e)
	(fast-power-aux b e 1))

(defun fast-power-aux (b e acc)
	(if (zerop e)
		acc
	 (fast-power-aux b (1- e) (* b acc))))
	
; (fast-power 2 3)
; 2 3 1
	; 2 2 2
		; 2 1 4
			; 2 0 8
			; 8
		; 8
	; 8
; 8