;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |56|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp")) #f)))
(define ROCKET (rectangle 5 30 "solid" "red"))
(define WIDTH 100)
(define HEIGHT 300)
(define CENTER (/ (image-height ROCKET) 2))
(define BACKG (empty-scene WIDTH HEIGHT))
(define (image-place x)
  (place-image ROCKET 10 (- x CENTER) BACKG))
(define (show x)
  (cond
    [(string? x)
     (image-place HEIGHT)]
    [(<= -3 x -1)
     (place-image (text (number->string x) 20 "red")
                  10 (* 3/4 WIDTH)
                  (image-place HEIGHT))]
    [(>= x 0)
     (image-place x)]))
(define (launch x ke)
  (cond
    [(string? x) (if (string=? " " ke) -3 x)]
    [(<= -3 x -1) x]
    [(>= x 0) x]))
(define (tock s)
  (+ s 3))
(define (main1 s)
  (big-bang s
    [to-draw show]
    [on-key launch]
    [on-tick tock]))