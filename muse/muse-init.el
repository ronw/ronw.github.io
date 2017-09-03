(require 'muse) 
(require 'muse-mode)
(require 'muse-wiki)
(require 'muse-colors)
(require 'muse-html)
(require 'muse-latex)
(require 'muse-project)
 
(setq muse-project-alist
      '(("eeweb"
         ("." 
          :default "index" 
          :force-publish ("WikiIndex")
          :major-mode  muse-mode)
         (:base "eeweb-xhtml" 
                :path ".."))
        ))

(muse-derive-style "eeweb-xhtml" "xhtml"
                   :header "./header.html"
                   :footer "./footer.html"
                   :style-sheet "<link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\">"
)
(muse-derive-style "classes-xhtml" "xhtml"
                   :footer "./footer.html"
                   :style-sheet "<link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\">")

(setq muse-mode-hook
      '(lambda ()
         (define-key muse-mode-map [(control ?c) (control ?c)] 'muse-project-publish)
         ))

