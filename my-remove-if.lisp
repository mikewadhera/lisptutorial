;; (my-remove-if P L) -- returns new list containing only members of L matching P
;; (my-remove-if #'evenp '(1 2 3 4)) = '(1 3)
(defun my-remove-if (P L)
	(if (null L)
		nil
	  (if (funcall P (first L))
		  (my-remove-if P (rest L))
	   (cons (first L) (my-remove-if P (rest L))))))
	
;; example of an implementation of set difference using my-remove-if

;; (list-difference l1 l2) -- returns a new list (set) of all members in l1 not in l2
;; (list-difference '() '()) = ()
;; (list-difference '(1 2) '()) = (1 2)
;; (list-difference '() '(1 2)) = ()
;; (list-difference '(1 3 5 7) '(1 2 3 4)) = (7 5)
(defun list-difference (l1 l2)
	(my-remove-if #'(lambda (x) (member x l2)) l1))
	
;; example of an implementation of set intersection using remove-if-not

;; (list-intersection l1 l2) -- returns a new list (set) of all members belonging to both lists
;; (list-intersection '() '()) = ()
;; (list-intersection '(1 2) '()) = ()
;; (list-intersection '(1 3 5 7) '(1 2 3 4)) = (3 1)
(defun list-intersection (l1 l2)
	(remove-if-not #'(lambda (x) (member x l2)) l1))
	
;; note how set difference and set intersection are the complements of each other
;; this is apparent in the sets.lisp implementations with use of and/or
;; but much more visible here with remove-if and remove-if-not with same predicates