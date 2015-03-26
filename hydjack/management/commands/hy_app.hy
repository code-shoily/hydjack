(require hydjack.defs)
(import os)

(defun make-app-structure
  [app-label]
  (let [[files ["__init__.hy" "models.hy" "views.hy" 
               "admin.hy" "forms.hy" "urls.hy" "util.hy"]]]
    (os.mkdir app-label)
    (for [f files] 
         (-> (.format "{}/{}" app-label f)
             (open "w")
             (.close)))))


(defcmd/label
  Command
  {:args "<app1 app2 app3>"
   :help "Creates a hy app"
   :settings? True}
  (lambda [self label &kwargs kwargs]
    (make-app-structure label)))
