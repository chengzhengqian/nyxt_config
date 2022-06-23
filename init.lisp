(in-package #:nyxt-user)

;; Import Files
(nyxt::load-lisp "~/.config/nyxt/statusline.lisp")
(nyxt::load-lisp "~/.config/nyxt/stylesheet.lisp")

(defun set-android ()
  (ffi-buffer-user-agent (current-buffer)  "Mozilla/5.0 (Linux; Android 12) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.53 Mobile Safari/537.36")
  )



(defun czq-handler (request-data)
  (print "start-czq-handler, set android user agent")
  (print request-data)
  (set-android)
  (print "------------------------")
  request-data
)

(define-configuration buffer
  ((request-resource-hook
    (reduce #'hooks:add-hook
            (mapcar #'make-handler-resource (list #'czq-handler))
            :initial-value %slot-default%))))
;; (define-configuration nyxt/reduce-tracking-mode:reduce-tracking-mode
;;   ((nyxt/reduce-tracking-mode:preferred-user-agent
;;     ;; Safari on Mac. Taken from
;;     ;; https://techblog.willshouse.com/2012/01/03/most-common-user-agents
;;     "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.3 Safari/605.1.15")))

;; ;;; reduce-tracking-mode has a preferred-user-agent slot that it uses
;; ;;; as the User Agent to set when enabled. What I want here is to have
;; ;;; the same thing as reduce-tracking-mode, but with a different User
;; ;;; Agent.
;; ;; #+nyxt-3
;; (define-mode chrome-mimick-mode (nyxt/reduce-tracking-mode:reduce-tracking-mode)
;;   "A simple mode to set Chrome-like Windows user agent."
;;   ((nyxt/reduce-tracking-mode:preferred-user-agent
;;     "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36")))

;; ;; #+nyxt-3
;; (define-mode firefox-mimick-mode (nyxt/reduce-tracking-mode:reduce-tracking-mode)
;;   "A simple mode to set Firefox-like Linux user agent."
;;   ((nyxt/reduce-tracking-mode:preferred-user-agent
;;     "Mozilla/5.0 (X11; Linux x86_64; rv:94.0) Gecko/20100101 Firefox/94.0")))

;; (define-configuration nyxt/reduce-tracking-mode:reduce-tracking-mode
;;   ((nyxt/reduce-tracking-mode:old-user-agent
;;     ;; Safari on Mac. Taken from
;;     ;; https://techblog.willshouse.com/2012/01/03/most-common-user-agents
;;     "Mozilla/5.0 (Linux; Android 12; Pixel 6 Build/SD1A.210817.023; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/94.0.4606.71 Mobile Safari/537.36")))
;; (define-configuration nyxt/reduce-tracking-mode:reduce-tracking-mode
;;   ((nyxt/reduce-tracking-mode:preferred-user-agent
;;     ;; Safari on Mac. Taken from
;;     ;; https://techblog.willshouse.com/2012/01/03/most-common-user-agents
;;     "Mozilla/5.0 (Linux; Android 12; Pixel 6 Build/SD1A.210817.023; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/94.0.4606.71 Mobile Safari/537.36")))

;; (define-mode android-agent-mode (nyxt/reduce-tracking-mode:reduce-tracking-mode)
;;   "A simple mode to set Chrome-like Windows user agent."
;;   ((nyxt/reduce-tracking-mode:preferred-user-agent
;;     "Mozilla/5.0 (Linux; Android 12; Pixel 6 Build/SD1A.210817.023; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/94.0.4606.71 Mobile Safari/537.36")))
