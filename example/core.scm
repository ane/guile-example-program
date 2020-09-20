(define-module (example core)
  #:export (run-gep))

(define (frob str)
  "Frobnicate a string."
  (string-append (string-upcase str) " LOL!"))

(define* (run-gep arg0 . args)
  (display (frob (string-join args)))
  (newline))

