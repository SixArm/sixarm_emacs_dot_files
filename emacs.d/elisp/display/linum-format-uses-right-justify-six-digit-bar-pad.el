;; linum-format-uses-right-justify-six-digit-bar-pad: for readable line numbers.
;;
;; http://www.emacswiki.org/LineNumbers
;;
;; We customize our left-side line numbers:
;;
;;  * right justified, which is similar to other editors such as sublime.
;;  * six digits, which for us is a good tradeoff of consistent width and speed.
;;  * a vertical bar
;;  * one space of padding

(setq linum-format "%6d| ")
