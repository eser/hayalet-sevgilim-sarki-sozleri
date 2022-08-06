#lang racket
 
(call-with-input-file "lyrics.txt"
    (lambda (in) (for ([l (in-lines in)])
      (display l)
      (newline))))

