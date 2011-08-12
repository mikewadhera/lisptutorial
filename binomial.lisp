;; (binomial n r) -- computes the binomial coefficient using pascal's triangle
;; (binomial n r) = 1 if r = 0 or r = n
;; (binomial n r) = (binomial n-1 r-1) + (binomial n-1 r)
(defun binomial (n r)
	(if (or (zerop r) (= r n))
		1
	(let ((b1 (binomial (1- n) (1- r)))
				(b2 (binomial (1- n) r)))
	  (+ b1 b2))))