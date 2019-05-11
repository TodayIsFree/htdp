;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |80|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp")) #f)))
(define-struct r3 [h m s])
;An R3 is a structure:
;(make-r3 Number Number Number)
(define ex1 (make-r3 12 30 2))
(define ex2 (make-r3 1 0 3))
;R3->Number
;determines the distance of p to the origin
(define (r3-time-to-0 p)
  (+ (* 3600 (r3-h p))
     (* 60 (r3-m p))
     (r3-s p)))