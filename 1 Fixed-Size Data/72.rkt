;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |72|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp")) #f)))
(define-struct posn [x y])
;A Posn is a structure
; (make-posn Number Number)
;interpretation a point x pixels from left,y from top
(define-struct entry [name phone email])
;An Entry is a structure
; (make-entry String String String)
;interpretation a contact's name ,phone#, and email
(define-struct ball [location velocity])
;A Ball-1d is a structure;
; (make-ball Number Number)
;interpretation 1 distance to top and velocity
;interpretation 2 distance to left and velocity
(define-struct vel [deltax deltay])
;A Vel is structure:
; (make-vel Number Number)
;interpretation (make-vel dx dy)means a velocity of
;dx pixels [per tick]along the horizontal and
;dy pixels [per tick]along the vertical direction
(define-struct phone# [area switch num])
;A phone# is a structure;
; (make-phone# String String Number)
;interpretation a phone's area ,swtich ,num
