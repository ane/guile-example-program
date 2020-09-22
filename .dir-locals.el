((scheme-mode .
              ((geiser-scheme-implementation . "guile")
               (eval . (push (expand-file-name "example" (locate-dominating-file default-directory ".dir-locals.el"))
                             geiser-guile-load-path)))))
