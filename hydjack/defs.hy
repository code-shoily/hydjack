;; Anaphoric macro to capture errors???

(defmacro-alias [defcmd defcmd/base]
  "Creates a base command. 
   The handle signature:
     `(lambda [self &rest args &kwargs kwargs])`
   Meta-keys should have `:args`, `:help` and `:settings?`"
  [name meta handle]
  `(do 
     (import [django.core.management.base [BaseCommand]])
     (import [hydjack.util [get-or]])
     (defclass ~name
       [BaseCommand]
       [[args (get-or ~meta :args "<arguments placeholder>")]
        [help (get-or  ~meta :help "<help here>")]
        [can-import-settings (get-or ~meta :settings? False)]
        [handle ~handle]])))


(defmacro defcmd/label 
  "Creates a label command. 
   The handle signature:
     `(lambda [self label &kwargs options])` 
   Meta-keys should have `:args`, `:help` and `:settings?`"
  [name meta handle]
  `(do 
     (import [django.core.management.base [LabelCommand]])
     (import [hydjack.util [get-or]])
     (defclass ~name
       [LabelCommand]
       [[args (get-or ~meta :args "<arguments placeholder>")]
        [help (get-or  ~meta :help "<help here>")]
        [can-import-settings (get-or ~meta :settings? False)]
        [handle-label ~handle]])))


(defmacro defcmd/noargs 
  "Creates a no-args command. 
   The handle signature: 
     `(lambda [self &kwargs options])`
   Meta-keys should have `:args`, `:help` and `:settings?`"
  [name meta handle]
  `(do 
     (import [django.core.management.base [NoArgsCommand]])
     (import [hydjack.util [get-or]])
     (defclass ~name
       [BaseCommand]
       [[args (get-or ~meta :args "<arguments placeholder>")]
        [help (get-or  ~meta :help "<help here>")]
        [can-import-settings (get-or ~meta :settings? False)]
        [handle-noargs ~handle]])))
