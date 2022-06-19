(in-package #:nyxt-user)

;; Import Files
(nyxt::load-lisp "~/.config/nyxt/statusline.lisp")
(nyxt::load-lisp "~/.config/nyxt/stylesheet.lisp")


;; (define-configuration nyxt/reduce-tracking-mode:reduce-tracking-mode
;;   ((nyxt/reduce-tracking-mode:preferred-user-agent
;;     ;; Safari on Mac. Taken from
;;     ;; https://techblog.willshouse.com/2012/01/03/most-common-user-agents
;;     "Mozilla/5.0 (Linux; Android 12; Pixel 6 Build/SD1A.210817.023; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/94.0.4606.71 Mobile Safari/537.36")))

;; (define-mode android-agent-mode (nyxt/reduce-tracking-mode:reduce-tracking-mode)
;;   "A simple mode to set Chrome-like Windows user agent."
;;   ((nyxt/reduce-tracking-mode:preferred-user-agent
;;     "Mozilla/5.0 (Linux; Android 12; Pixel 6 Build/SD1A.210817.023; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/94.0.4606.71 Mobile Safari/537.36")))
