(in-package #:nyxt-user)

;; This only works on the versions of Nyxt after 2.2.4.
;; (define-configuration browser
;;   ((theme (make-instance
;;            'theme:theme
;;            :dark-p t
;;            :background-color "#282a36"
;;            :text-color "#f8f8f2"
;;            :accent-color "#ff5555"
;;            :primary-color "#50fa7b"
;;            :secondary-color "#bd93f9"
;;            :tertiary-color "#6272a4"
;;            :quaternary-color "#44475a"))))

;; ;; Custom Dark-mode for webpages
;; (define-configuration nyxt/style-mode:dark-mode
;;   ((style #.(cl-css:css
;;              '((*
;;                 :background-color "#282a36 !important"
;;                 :background-image "none !important"
;;                 :color "#f8f8f2")
;;                (a
;;                 :background-color "#282a36 !important"
;;                 :background-image "none !important"
;;                 :color "#6272a4 !important"))))))


;; Configurations for versions below 2.2.4:

;; Configure Webpage Colors
(define-configuration window
 ((message-buffer-style
   (str:concat
    %slot-default%
    (cl-css:css
     '((body
        :background-color "#ffffff"
        :color "#000000")))))))

;; Configure Prompt Section
(define-configuration prompt-buffer
 ((style (str:concat
          %slot-default%
          (cl-css:css
           '((body
              :background-color "#ffffff"
              :color "#000000")
             ("#prompt-area"
              :background-color "#dddddd")
             ("#input"
              :background-color "#dddddd"
              :color "#000000")
             (".source-name"
              :color "#000000"
              :background-color "#ffffff")
             (".source-content"
              :background-color "#ffffff")
             (".source-content th"
              :border "1px solid #111111"
              :background-color "#ffffff")
             ("#selection"
              :background-color "#ffffff"
              :color "#000000")
             (.marked :background-color "#ffffff"
                      :font-weight "bold"
                      :color "#111111")
             (.selected :background-color "#000000"
                        :color "#ffffff")))))))

(define-configuration internal-buffer
 ((style
   (str:concat
    %slot-default%
    (cl-css:css
     '((title
        :color "#000000")
       (body
        :background-color "#ffffff"
        :color "#000000")
       (hr
        :color "#000000")
       (a
        :color "#111111")
       (.button
        :color "#000000"
        :background-color "#dddddd")))))))

;; Configure History Tree Mode
(define-configuration nyxt/history-tree-mode:history-tree-mode
 ((nyxt/history-tree-mode::style
   (str:concat
    %slot-default%
    (cl-css:css
     '((body
        :background-color "#ffffff"
        :color "#000000")
       (hr
        :color "#111111")
       (a
        :color "#222222")
       ("ul li::before"
        :background-color "#ffffff")
       ("ul li::after"
        :background-color "#ffffff")
       ("ul li:only-child::before"
        :background-color "#ffffff")))))))

;; Highlight Hint Buttons
(define-configuration nyxt/web-mode:web-mode
 ((nyxt/web-mode:highlighted-box-style
   (cl-css:css
    '((".nyxt-hint.nyxt-highlight-hint"
       :background "#ff5555")))
   :documentation "The style of highlighted boxes, e.g. link hints.")))

;; Configure StatusLines Styles
(define-configuration status-buffer
 ((style (str:concat
          %slot-default%
          (cl-css:css
           '((* :clor "#000000")
	     ("#controls"
              :border-top "1px solid #000000"
	      :color "#000000"
              :background-color "#000000")
             ("#url"
              :background-color "#000000"
              :color "#000000"
              :border-top "1px solid #000000")
             ("#modes"
              :background-color "#000000"
	      :color "#000000"
              :border-top "1px solid #111111")
             ("#tabs"
              :background-color "#000000"
              :color "#000000"
              :border-top "1px solid #111111")))))))

(define-configuration nyxt/style-mode:dark-mode
 ((style #.(cl-css:css
            '((*
               :background-color "#ffffff !important"
               :background-image "none !important"
               :color "#000000")
              (a
               :background-color "#ffffff !important"
               :background-image "none !important"
               :color "#111111 !important"))))))
