;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |60|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp")) #f)))
;TrafficLight -> TrafficLight
;yields the next state,given current state cs
(define (tl-next-numeric cs)
  (modulo (+ cs 1) 3))
;TrafficLight ->Image
;renders the current state cs as an image
(define (tl-render cs)
  (place-images
   (list (circle 5 (cond [(= cs 0) "solid"]
                         [else "outline"]) "red")
         (circle 5 (cond [(= cs 2) "solid"]
                         [else "outline"]) "yellow")
         (circle 5 (cond [(= cs 1) "solid"]
                         [else "outline"]) "green"))
   (list (make-posn 10 10)
         (make-posn 30 10)
         (make-posn 50 10))
   (rectangle 90 30 "outline" "black")))
;TrafficLight -> TrafficLight
;simulates a clock-based American traffic light
(define (traffic-light-simulation initial-state)
  (big-bang initial-state
    [to-draw tl-render]
    [on-tick tl-next-numeric 1]))