;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |42|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp")) #f)))
(define tree
  (underlay/xy (circle 10 "solid" "green")
               9 15
               (rectangle 2 20 "solid" "brown")))
(define WHEEL-RADIUS 5)
(define WHEEL-DISTANCE (* WHEEL-RADIUS 5))
(define WHEEL
  (circle WHEEL-RADIUS "solid" "black"))
(define SPACE
    (rectangle 10 WHEEL-RADIUS "solid" "white"))
(define BOTH-WHEELS
  (beside WHEEL SPACE WHEEL))
(define CAR
  (above (rectangle 30 10 "solid" "red") BOTH-WHEELS))
(define BACKGROUND
  (rectangle 250 50 "outline" "black"))
(define Y-CAR 30)
(define (tock ws)
  (+ ws 2))
(define (stop y ke)
  0)
(define (render ws)
  (place-images
   (list CAR tree)
   (list (make-posn ws Y-CAR)
         (make-posn 200 Y-CAR))
   BACKGROUND))
(define (main ws)
  (big-bang ws
    [on-tick tock]
    [to-draw render]
    [on-key stop]))