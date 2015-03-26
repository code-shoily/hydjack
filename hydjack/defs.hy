(defmacro-alias [defcmd defcmd/base]
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
  [name meta handle]
  `(do 
     (import [django.core.management.base [NoArgsCommand]])
     (import [hydjack.util [get-or]])
     (defclass ~name
       [NoArgsCommand]
       [[args (get-or ~meta :args "<arguments placeholder>")]
        [help (get-or  ~meta :help "<help here>")]
        [can-import-settings (get-or ~meta :settings? False)]
        [handle-noargs ~handle]])))
