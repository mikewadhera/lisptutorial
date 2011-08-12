;; (my-last l) - returns last element of list l
;; (my-last nil) = nil
;; (my-last '(1)) = 1
;; (my-last '(1 2 3)) = 3
(defun my-last (l)
	(let ((l1 (first l))
				(l2 (rest l)))
				(if (null l2)
						l1
					(my-last l2))))