;; examples of using find-if

; searches among a list of lists for a member that has length at least 3
(defun find-atleast3 (L)
	(find-if #'third L))

; searches among a list of lists for a member that contains an even number of elements
(defun find-evenlist (L)
	(find-if #'(lambda (l) (evenp (list-length l))) L))

; searches among a list of numbers for a member that is divisible by three
(defun find-div3 (L)
	(find-if #'(lambda (X) (zerop (rem X 3))) L))