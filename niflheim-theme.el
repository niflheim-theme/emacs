;;; niflheim-theme.el --- A port of the Nifleim theme to Emacs

;; Copyright (C) 2014  Nicolas Petton

;; Author: Nicolas Petton <petton.nicolas@gmail.com>, Benjamin Van Ryseghem <benjamin.vanryseghem@gmail.com>
;; Keywords: themes
;; URL: https://github.com/niflheim-theme/emacs
;; Version: 0.1

;; This file is NOT part of GNU Emacs

;;; License:
;;
;; Niflheim (https://github.com/niflheim-theme) is licensed under a
;; Creative Commons Attribution-ShareAlike 4.0 International License.


;;; Commentary:
;;
;; A port the the Niflheim dark theme for Emacs
;; (https://github.com/niflheim-theme)
;;

;;; Code:

(deftheme niflheim
  "A dark medium contrast theme")

(let ((class '((class color) (min-colors 89)))
      (background "#303030")
      (dark "#202020")
      (fringe "#353535")
      (highlight "#454545")
      (comment "#929283")
      (light  "#f6f3e8")
      (veryligh "fbfaf5")
      (grey "#666666")
      (grey-light "#aaaaaa")
      (grey-darker "#333333")
      (grey-dark "#252525")
      (orange "#ffcd8e")
      (orange-light "#ffedd5")
      (orange-2 "#f7af75")
      (orange-dark "#da8548")
      (orange-darker "#bd6626")
      (orange-mode-line "#a74b07")
      (yellow-dark "#888833")
      (purple "#cbaaf5")
      (purple-light "#ddcaf6")
      (purple-dark "#7846b5")
      (purple-darker "#5a2996")
      (blue "#7ac1ff")
      (blue-alt "#1268b4")
      (blue-light "#aaccff")
      (blue-dark "#456981")
      (blue-darker "#3e4d58")
      (green "#789771")
      (green-2 "#70a56f")
      (green-3 "#92a65e")
      (green-4 "#83e1b2")
      (green-light "#aaeeab")
      (green-dark "#284437")
      (red "#ff6c6b")
      (red-light "#ff5b66")
      (red-dark "#553333")
      (default "#b8c4cf")
      (cursor-background "#b6c4cf"))
  (custom-theme-set-faces
   'niflheim
   `(default ((,class (:background ,background :foreground ,default))))
   `(cursor ((,class (:background ,cursor-background))))

   ;; Highlighting faces
   `(fringe ((,class (:background "#353535"))))
   `(highlight ((,class (:background ,highlight :foreground "white" :underline t))))
   `(region ((,class (:background ,grey :foreground ,light))))
   `(secondary-selection ((,class (:background ,grey-dark :foreground ,light))))
   `(isearch ((,class (:background ,green-light :foreground ,dark))))
   `(lazy-highlight ((,class (:background ,green :foreground ,highlight))))
   `(hl-line ((,class (:background ,grey-dark :foreground nil :underline nil))))

   ;; Mode line faces
   `(mode-line ((,class (:background ,orange-mode-line :foreground ,light :box 1))))
   `(mode-line-inactive ((,class (:background ,background :foreground ,grey :box 1))))

   ;; Escape and prompt faces
   `(minibuffer-prompt ((,class (:foreground ,orange :weight bold))))
   `(escape-glyph ((,class (:foreground ,orange :weight bold))))

   ;; Font lock faces
   `(font-lock-builtin-face ((,class (:foreground ,red :weight bold))))
   `(font-lock-comment-face ((,class (:foreground ,comment))))
   `(font-lock-constant-face ((,class (:foreground ,orange-dark :weight bold))))
   `(font-lock-function-name-face ((,class (:foreground ,purple))))
   `(font-lock-keyword-face ((,class (:foreground ,orange-2 :weight bold))))
   `(font-lock-string-face ((,class (:foreground ,green))))
   `(font-lock-doc-face ((,class (:foreground ,green-2))))
   `(font-lock-type-face ((,class (:foreground ,green-3 :weight bold))))
   `(font-lock-variable-name-face ((,class (:foreground ,blue-light))))
   `(font-lock-warning-face ((,class (:foreground ,red))))

   ;; linum
   `(linum ((,class (:foreground ,grey :background ,background))))

   ;; whitespace
   `(whitespace-space ((,class (:background unspecified :foreground ,highlight
                                            :inverse-video unspecified))))
   `(whitespace-hspace ((,class (:background unspecified :foreground ,highlight
                                             :inverse-video unspecified))))
   `(whitespace-tab ((,class (:background unspecified :foreground ,highlight
                                          :inverse-video unspecified))))
   `(whitespace-newline ((,class (:background unspecified :foreground ,highlight
                                              :inverse-video unspecified))))
   `(whitespace-trailing ((,class (:background unspecified :foreground ,highlight
                                               :inverse-video unspecified))))
   `(whitespace-line ((,class (:background unspecified :foreground ,red
                                           :inverse-video unspecified))))
   `(whitespace-space-before-tab ((,class (:background unspecified :foreground ,highlight
                                                       :inverse-video t))))
   `(whitespace-indentation ((,class (:background unspecified :foreground ,highlight
                                                  :inverse-video unspecified))))
   `(whitespace-empty ((,class (:background unspecified :foreground ,highlight
                                            :inverse-video unspecified))))
   `(whitespace-space-after-tab ((,class (:background unspecified :foreground "#ff6c6b"
                                                      :inverse-video t :weight bold))))

   ;; Button and link faces
   `(link ((,class (:foreground ,blue :underline t))))
   `(link-visited ((,class (:foreground ,blue-light :underline t))))
   `(button ((,class (:background ,grey-darker :foreground ,light))))
   `(header-line ((,class (:background ,dark :foreground ,default :box 1))))
   ;; compilation
   `(compilation-info ((,class (:foreground ,purple :weight bold))))
   `(compilation-line-number ((,class (:foreground ,orange :weight bold))))

   ;; dired
   `(dired-header ((,class (:foreground ,orange :weight bold))))
   `(dired-directory ((,class (:foreground ,purple :weight bold))))

   ;; magit
   `(magit-section-title ((,class (:foreground ,green-3 :weight bold))))
   `(magit-branch ((,class (:foreground ,orange :weight bold))))
   `(magit-log-sha1 ((,class (:foreground ,purple :weight bold))))
   `(magit-tag ((,class (:foreground ,purple :weight bold :box 1 :background "#202020"))))
   `(magit-log-head-label-tags ((,class (:foreground ,purple :weight bold :box 1 :background ,dark))))
   `(magit-log-head-label-local ((,class (:foreground ,orange :weight bold :box 1 :background ,dark))))
   `(magit-log-head-label-remote ((,class (:foreground ,green-3 :weight bold :box 1 :background ,dark))))
   `(magit-log-head-label-head ((,class (:foreground ,red :weight bold :box 1 :background ,dark))))
   `(magit-diff-hunk-header ((,class (:background ,highlight :weight bold :foreground ,default))))
   `(magit-diff-file-header ((,class (:background ,highlight :weight bold :foreground ,default))))
   `(magit-whitespace-warning-face ((,class (:background ,red))))


   ;; diff
   `(diff-removed ((,class (:foreground ,default :background ,red-dark))))
   `(diff-added ((,class (:foreground ,default :background ,green-dark))))
   `(diff-hunk-header ((,class (:background ,highlight :weight bold :foreground ,default))))
   `(diff-file-header ((,class (:background ,highlight :weight bold :foreground ,default))))

   ;; ediff
   `(ediff-fine-diff-B ((,class (:background ,green-dark))))
   `(ediff-current-diff-B ((,class (:background ,green-dark))))
   `(ediff-fine-diff-A ((,class (:background ,red-dark :foreground))))
   `(ediff-current-diff-C ((,class (:background ,blue-darker))))
   `(ediff-fine-diff-C ((,class (:background ,blue-dark))))

   `(ediff-even-diff-A ((,class (:background ,highlight))))
   `(ediff-even-diff-B ((,class (:background ,highlight))))
   `(ediff-even-diff-C ((,class (:background ,highlight))))
   `(ediff-odd-diff-A ((,class (:background ,highlight))))
   `(ediff-odd-diff-B ((,class (:background ,highlight))))
   `(ediff-odd-diff-C ((,class (:background ,highlight))))

   ;; ido faces
   `(ido-first-match ((,class (:foreground ,purple :weight bold))))
   `(ido-only-match ((,class (:foreground ,purple :weight bold))))
   `(ido-subdir ((,class (:foreground ,orange-2))))

   ;; js2-mode
   `(js2-function-param ((,class (:foreground ,blue :weight bold))))

   ;; org-mode todo WORK IN PROGRESS
   `(org-hide ((,class (:foreground ,background))))
   `(org-todo ((,class (:foreground ,red-light :weight bold))))
   `(org-done ((,class (:foreground ,blue :weight bold))))
   `(org-scheduled-previously ((,class (:foreground ,red))))
   `(org-scheduled ((,class (:foreground ,orange))))
   `(org-headline-done ((,class (:foreground ,default))))
   `(outline-1 ((,class (:foreground ,orange))))
   `(outline-2 ((,class (:foreground ,purple))))
   `(outline-3 ((,class (:foreground ,blue))))
   `(outline-4 ((,class (:foreground ,green-3))))
   `(outline-5 ((,class (:foreground ,orange))))
   `(outline-6 ((,class (:foreground ,purple))))
   `(outline-7 ((,class (:foreground ,blue))))
   `(outline-8 ((,class (:foreground ,green-3))))

   `(org-column-title ((,class (:foreground unspecified :background unspecified))))

   `(org-agenda-date ((,class (:foreground ,purple :weight bold))))
   `(org-agenda-structure ((,class (:foreground ,orange :weight bold))))
   `(org-scheduled-today ((,class (:foreground ,default :weight bold))))
   `(org-agenda-done ((,class (:foreground ,comment))))

   ;; Message faces
   `(message-header-name ((,class (:foreground ,orange :weight bold))))
   `(message-header-cc ((,class (:foreground ,purple))))
   `(message-header-other ((,class (:foreground ,purple))))
   `(message-header-subject ((,class (:foreground ,green-4))))
   `(message-header-to ((,class (:foreground ,purple))))
   `(message-cited-text ((,class (:foreground ,comment))))
   `(message-separator ((,class (:foreground ,red :weight bold))))

   ;; mu4e
   `(mu4e-title-face ((,class (:foreground ,orange :weight bold))))
   `(mu4e-unread-face ((,class (:foreground ,orange :weight bold))))
   `(mu4e-replied-face ((,class (:foreground ,blue))))
   `(mu4e-highlight-face ((,class (:foreground ,purple :weight bold))))
   `(mu4e-header-highlight-face ((,class (:foreground unspecified :background ,grey))))

   ;; flyspell
   `(flyspell-incorrect ((,class (:underline (:color ,red :style wave) :foreground unspecified))))
   `(flyspell-duplicate ((,class (:underline (:color ,red :style wave) :foreground unspecified))))

   ;; Gnus faces -- from wombat, feel free to improve :)
   `(gnus-group-news-1 ((,class (:weight bold :foreground "#95e454"))))
   `(gnus-group-news-1-low ((,class (:foreground "#95e454"))))
   `(gnus-group-news-2 ((,class (:weight bold :foreground "#cae682"))))
   `(gnus-group-news-2-low ((,class (:foreground "#cae682"))))
   `(gnus-group-news-3 ((,class (:weight bold :foreground "#ccaa8f"))))
   `(gnus-group-news-3-low ((,class (:foreground "#ccaa8f"))))
   `(gnus-group-news-4 ((,class (:weight bold :foreground "#99968b"))))
   `(gnus-group-news-4-low ((,class (:foreground "#99968b"))))
   `(gnus-group-news-5 ((,class (:weight bold :foreground "#cae682"))))
   `(gnus-group-news-5-low ((,class (:foreground "#cae682"))))
   `(gnus-group-news-low ((,class (:foreground "#99968b"))))
   `(gnus-group-mail-1 ((,class (:weight bold :foreground "#95e454"))))
   `(gnus-group-mail-1-low ((,class (:foreground "#95e454"))))
   `(gnus-group-mail-2 ((,class (:weight bold :foreground "#cae682"))))
   `(gnus-group-mail-2-low ((,class (:foreground "#cae682"))))
   `(gnus-group-mail-3 ((,class (:weight bold :foreground "#ccaa8f"))))
   `(gnus-group-mail-3-low ((,class (:foreground "#ccaa8f"))))
   `(gnus-group-mail-low ((,class (:foreground "#99968b"))))
   `(gnus-header-content ((,class (:foreground "#8ac6f2"))))
   `(gnus-header-from ((,class (:weight bold :foreground "#95e454"))))
   `(gnus-header-subject ((,class (:foreground "#cae682"))))
   `(gnus-header-name ((,class (:foreground "#8ac6f2"))))
   `(gnus-header-newsgroups ((,class (:foreground "#cae682"))))

   ;; slime
   `(slime-repl-inputed-output-face ((,class (:foreground ,purple))))
   `(slime-inspector-value-face ((,class (:foreground ,orange :weight bold))))

   ;; company
   `(company-preview ((,class (:background ,highlight :foreground ,default))))
   `(company-preview-common ((,class (:background ,highlight :foreground ,purple))))
   `(company-preview-search ((,class (:background ,blue-alt :foreground ,default))))
   `(company-tooltip ((,class (:background ,highlight :foreground ,default))))
   `(company-scrollbar-bg ((,class (:background ,highlight))))
   `(company-scrollbar-fg ((,class (:background ,grey))))
   `(company-tooltip-common ((,class (:foreground ,purple :weight bold :background ,highlight))))
   `(company-tooltip-annotation ((,class (:foreground ,orange :background unspecified))))
   `(company-tooltip-common-selection ((,class (:foreground ,purple :background ,blue-alt :weight bold))))
   `(company-tooltip-selection ((,class (:foreground ,default :background ,blue-alt))))
   `(company-tooltip-mouse ((,class (:foreground ,default :background ,blue-alt))))
   
   ;; which-function
   `(which-func ((,class (:foreground ,purple))))))

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'niflheim)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; niflheim-theme.el ends here
