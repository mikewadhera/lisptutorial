;; (find-nonempty L) -- returns first non-empty member of list L
;; (find-nonempty ()) = NIL
;; (find-nonempty '((a b) ())) = (A B)
(defun find-nonempty (L)
	(if (null L)
		L
	 (or (first L) (find-nonempty (rest L)))))