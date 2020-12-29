(define rember 
  (lambda (a lat)
    (cond
      ((null? lat) '())
      (else (cond
        ((eq? (car lat) a) (cdr lat))
        (else (rember a (cdr lat))))))))

(print '(------------))
;a = bacon, lat = (bacon lettuce and tomato)
(print (null? '(bacon lettuce and tomato)))
(print (eq? 'bacon (car '(bacon lettuce and tomato))))
(print (cdr '(bacon lettuce and tomato)))

(print '(------------))
;a = and, lat = (bacon lettuce and tomato)
(print (null? '(bacon lettuce and tomato)))
(print (eq? 'and (car '(bacon lettuce and tomato))))
(print (cdr '(bacon lettuce and tomato)))
(print (null? '(lettuce and tomato)))
(print (eq? 'and (car '(lettuce and tomato))))
(print (cdr '(lettuce and tomato)))
(print (null? '(and tomato)))
(print (eq? 'and (car '(and tomato))))
(print (cdr '(and tomato)))

(print (rember 'and '(bacon lettuce and tomato)))

(print '(----p38----))

(define rember
  (lambda (a lat)
    (cond
    ((null? lat) '())
    (else (cond
    ((eq? (car lat) a) (cdr lat))
    (else (cons (car lat)
    (rember a (cdr lat)))))))))

(print (rember 'meat '(mashed potatoes and meat gravy)))
;a = and, lat = bacon lettuce and tomato

(print (null? '(bacon lettuce and tomato)))
(print ())





;(print (rember 'mint '(mojito mint)))

;(print (eq? 1 2))
;(print '(eq? 1 2))
;(print (quote (eq? 1 2)))
;(print '(quote (eq? 1 2)))
;(print '(' ))
;(print (quote '(eq? 1 2)))

;(print (rember 'mint '(lamb chops and mint jelly)))
;(print '(----))
;(print (null? '(lamb chops and mint jelly)))
;(print (eq? 'lamb 'mint))
;(print (rember 'mint '(chops and mint jelly)))

;(print (null? '(chops and mint jelly)))
;(print (eq? 'chops 'mint))
;(print (rember 'mint '(and mint jelly)))

;(print (null? '(and mint jelly)))
;(print (eq? 'and 'mint))
;(print (rember 'mint '(mint jelly)))

;(print (null? '(mint jelly)))
;(print (eq? 'mint 'mint))
;(print (cdr '(mint jelly)))


