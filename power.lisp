;; (power b e) - computes b to the power of e
;; assumes b & e are non-negative integers
(defun power (b e)
	(if (= 1 e)
		b
	 (* b (power b (- e 1)))))
