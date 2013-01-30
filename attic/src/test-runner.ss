(define (hpapl-test-runner)
  (let ([runner (test-runner-simple)])
    (test-runner-reset runner)
    (test-runner-on-test-begin! runner test-on-test-begin-hpapl)
    (test-runner-on-test-end! runner test-on-test-end-hpapl)
    (test-runner-on-final! runner test-on-final-hpapl)
    runner))

(define (test-on-test-begin-hpapl runner)
  (printf "∘")
  (flush-output-port (current-output-port)))
      
(define (test-on-test-end-hpapl runner)
  (let ([log (test-runner-aux-value runner)]
	[kind (test-result-kind runner)])
    (when (memq kind '(fail xpass))
      (printf "~nTest ~a~@[ ~a~]: ~a~n"
        (test-runner-test-number runner)
        (test-result-ref runner 'test-name)
        (case kind [(fail) "Failed"] [(xpass) "Unexpected pass"])))
    (when (output-port? log) (display-long-test-results runner log))))

(define (test-runner-test-number runner)
  (+ (test-runner-pass-count runner)
     (test-runner-fail-count runner)
     (test-runner-xpass-count runner)
     (test-runner-xfail-count runner)
     (test-runner-skip-count runner)))

(define (display-long-test-results runner port)
  (format port "Test ~a~@[ ~a~]: ~a~n"
    (test-runner-test-number runner)
    (test-result-ref runner 'test-name)
    (case (test-result-kind runner)
      [(pass) "Passed"]
      [(fail) "Failed"]
      [(xfail) "Expected failure"]
      [(xpass) "Unexpected pass"]
      [(skip) "Skipped"]))
  (unless (test-passed? runner)
    (format port "\tExpression: ~{~a ~}~n" 
      (test-result-apl-expression (test-result-ref runner 'source-form)))
    (display #\tab port)
    (let ([err (test-result-ref runner 'actual-error)])
      (if (condition? err)
          (display-condition (test-result-ref runner 'actual-error) port)
          (format port "Expression evaluated to 0")))
    (newline port)))

(define (test-result-apl-expression form)
  (cdr (cadr (cadr (cadr (cadr (list-ref form 2)))))))

(define (%test-final-report1 value label port)
  (if (> value 0)
      (begin
	(display label port)
	(display value port)
	(newline port))))

(define (%test-final-report-hpapl runner port)
  (newline port)
  (%test-final-report1 (test-runner-pass-count runner)
		      "# of expected passes      " port)
  (%test-final-report1 (test-runner-xfail-count runner)
		      "# of expected failures    " port)
  (%test-final-report1 (test-runner-xpass-count runner)
		      "# of unexpected successes " port)
  (%test-final-report1 (test-runner-fail-count runner)
		      "# of unexpected failures  " port)
  (%test-final-report1 (test-runner-skip-count runner)
		      "# of skipped tests        " port))

(define (test-on-final-hpapl runner)
  (%test-final-report-hpapl runner (current-output-port))
  (let ((log (test-runner-aux-value runner)))
    (if (output-port? log)
	(%test-final-report-hpapl runner log))))
