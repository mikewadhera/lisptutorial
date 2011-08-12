;; (list-intersection l1 l2) -- returns a new list (set) of all members belonging to both lists
;; (list-intersection '() '()) = ()
;; (list-intersection '(1 2) '()) = ()
;; (list-intersection '(1 3 5 7) '(1 2 3 4)) = (3 1)
(defun list-intersection (l1 l2)
	(cond 
		((null l1) nil)
		((member (first l1) l2)
		 (cons (first l1) (list-intersection (rest l1) l2)))
		(t (list-intersection (rest l1) l2))))
		
;; (list-union l1 l2) -- returns a new list (set) of all members of either l1 l2 or both
;; (list-union '() '()) = ()
;; (list-union '(1 2) '()) = (1 2)
;; (list-union '() '(1 2)) = (1 2)
;; (list-union '(1 3 5 7) '(1 2 3 4)) = (1 3 5 7 2 4)
(defun list-union (l1 l2)
	(cond 
		((null l1) l2)
		((member (first l1) l2) (list-union (rest l1) l2))
		(t (cons (first l1) (list-union (rest l1) l2)))))
		
;; (list-difference l1 l2) -- returns a new list (set) of all members in l1 not in l2
;; (list-difference '() '()) = ()
;; (list-difference '(1 2) '()) = (1 2)
;; (list-difference '() '(1 2)) = ()
;; (list-difference '(1 3 5 7) '(1 2 3 4)) = (7 5)
(defun list-difference (l1 l2)
	(cond
		((null l1) nil)
		((member (first l1) l2) (list-difference (rest l1) l2))
		(t (cons (first l1) (list-difference (rest l1) l2)))))