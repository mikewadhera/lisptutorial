;; Computes the nth triangular number
;; T(n) = 1		if n = 1
;; T(n) = n + T(n-1)		if n > 1
(defun triangular (n)
    (if (= n 1)
      1
     (+ n (triangular (- n 1)))))

; * (triangular 3)
; 6

; * (triangular 3)
;   0: (TRIANGULAR 3)
;     1: (TRIANGULAR 2)
;       2: (TRIANGULAR 1)
;       2: TRIANGULAR returned 1
;     1: TRIANGULAR returned 3
;   0: TRIANGULAR returned 6
; 6