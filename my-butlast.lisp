;; (my-butlast l) -- returns everything but the last member of list l
;; (my-butlast nil) = nil
;; (my-butlast '(1)) = nil
;; (my-butlast '(1 2 3)) = (1 2)
(defun my-butlast (l)
	(if (null (rest l))
		nil
	 (cons (first l) (my-butlast (rest l)))))