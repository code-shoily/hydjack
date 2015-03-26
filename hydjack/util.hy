(defun get-or
  [d k &optional [or-value None]]
  (try (get d k) (catch [e KeyError] or-value)))


