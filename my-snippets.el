;;; yasnippet-restclient.el --- Yasnippets for restclient

(defvar my-snippets-root (file-name-directory (or load-file-name
                                                   (buffer-file-name))))

;;;###autoload
(defun my-snippets-initialize ()
  "Load my-snippets."
  (let ((snippets-dir (expand-file-name "snippets" my-snippets-root)))
    (when (boundp 'yas-snippet-dirs)
      (add-to-list 'yas-snippet-dirs snippets-dir t))
    (yas-load-directory snippets-dir)))

;;;###autoload
(eval-after-load 'yasnippet
  '(my-snippets-initialize))

(require 'yasnippet)

(provide 'my-snippets)

