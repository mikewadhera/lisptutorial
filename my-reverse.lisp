;; (my-reverse L) -- returns a new list of same members as L but reverse order
;; (my-reverse '()) = ()
;; (my-reverse '(1)) = (1)
;; (my-reverse '(1 2 3)) = '(3 2 1)
(defun my-reverse (L)
	(my-reverse-aux L nil))
	
;; (my-reverse-aux L acc) -- takes each element of L recursively prepending to acc
(defun my-reverse-aux (L acc)
	(if (null L)
		acc
	 (my-reverse-aux (rest L) (cons (first L) acc))))