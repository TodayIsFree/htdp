;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |74|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp")) #f)))
(define MTS (empty-scene 100 100))
(define DOT (circle 3 "solid" "red"))
;A Posn represents the state of the world
;Posn -> Posn
(define (main p0)
  (big-bang p0
    [on-tick x+]
    [on-mouse reset-dot]
    [to-draw scene+dot]))
;Posn->Image
;adds a red spot to MTS at p
(define (scene+dot p)
  (place-image DOT (posn-x p) (posn-y p) MTS))
(define (x+ p)
  (make-posn (+ (posn-x p) 3) (posn-y p)))
;Posn Number Number MouseEvt -> Posn
;for mouse clicks,(make-posn x y);otherwise p
(define (reset-dot p x y me)
  (cond
    [(mouse=? me "button-down") (make-posn x y)]
    [else p]))

