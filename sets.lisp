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
		
;; TODO: Make tail-recursive
;; (list-memberp i l) -- returns T if i is a member of list l
;; (list-memberp 1 '()) = F
;; (list-memberp 1 '(1)) = T
(defun list-memberp (i l)
	(if (null l)
		nil
	 (or (equal i (first l)) (list-memberp i (rest l)))))

;; (list-subsetp l1 l2) -- returns true if l1 is a subset of l2
;; (list-subsetp '() '()) = T
;; (list-subsetp '(1) '()) = F
;; (list-subsetp '(1) '(1)) = T
;; (list-subsetp '(1) '(1 2)) = T
(defun list-subsetp (l1 l2)
  (if (null l1)
    't
	 (and (list-memberp (first l1) l2) (list-subsetp (rest l1) l2))))

;; TODO: optimize - horribly inefficient due to use of equal
;; (list-properp l1 l2) -- returns true if l1 is a proper subset of l2
;; (list-properp '() '()) = F
;; (list-properp '(1) '()) = F
;; (list-properp '(1) '(1)) = F	
;; (list-properp '(1) '(1 2)) = T
(defun list-properp (l1 l2)
	(and (list-subsetp l1 l2) (not (equal l1 l2))))