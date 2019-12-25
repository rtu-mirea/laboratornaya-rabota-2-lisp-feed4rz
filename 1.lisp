(print (list 2 5 4 1 7 8 6 9))

(defun find-element (lst to-find)
    (setq i 0)
    (setq elements '())
    (loop for x in lst
        do (setq i (+ i 1))
        do (if (= to-find x)
                (setq elements (append elements (list i))))
        )
    elements)

(print (find-element '(2 5 4 1 7 8 1 9) 1))

(defun insert(lst index newelement)
    (if (= index 0)
        (setf lst (append (list newelement) lst)))
    (if (> index 0)
        (push newelement (cdr (nthcdr (- index 1) lst))))
    lst)
  
(print (insert '(2 5 4 1 7 8 6 9) 0 '3))

(defun delete-index(lst index)
    (append (subseq lst 0 index) (nthcdr (+ index 1) lst)))
  
(print (delete-index '(2 5 4 1 7 8 6 9) 0))
