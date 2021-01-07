;;; spaceduck-theme.el --- Spaceduck color theme for Emacs 24.
;; URL: https://github.com/tathran/spaceduck-emacs
;; Version: 0.1

;;; Commentary:
;;
;; This theme is adapted from the original spaceduck vim theme by pineapplegiant
;; and can be found here: https://github.com/pineapplegiant/spaceduck.
;;


(deftheme spaceduck
  "Spaceduck color theme for Emacs 24")

(let ((spaceduck-fg          "#ecf0c1")
      (spaceduck-bg          "#0f111b")
      (spaceduck-cyan        "#00a3cc")
      (spaceduck-red         "#e33400")
      (spaceduck-orange      "#e39400")
      (spaceduck-green       "#5ccc96")
      (spaceduck-yellow      "#f2ce00")
      (spaceduck-black       "#000000")
      (spaceduck-purple2     "#7a5ccc")
      (spaceduck-darkpurple2 "#30365F")
      (spaceduck-purple      "#b3a1e6")
      (spaceduck-magenta     "#ce6f8f")
      (spaceduck-darkpurple  "#30365F")
      (spaceduck-blue        "#114fd6")
      (spaceduck-cursorline  "#16172d")
      )
  (custom-theme-set-variables
   'spaceduck
   '(frame-brackground-mode (quote dark)))

  (custom-theme-set-faces
   'spaceduck

   ;; Agda2
   `(agda2-highlight-datatype-face ((t (:foreground ,spaceduck-yellow))))
   `(agda2-highlight-primitive-type-face ((t (:foreground ,spaceduck-yellow))))
   `(agda2-highlight-function-face ((t (:foreground ,spaceduck-darkpurple))))
   `(agda2-highlight-keyword-face ((t ,(list :foreground spaceduck-yellow
                                             :bold t))))
   `(agda2-highlight-inductive-constructor-face ((t (:foreground ,spaceduck-cyan))))
   `(agda2-highlight-number-face ((t (:foreground ,spaceduck-blue))))

   ;; AUCTeX
   `(font-latex-bold-face ((t (:foreground ,spaceduck-yellow :bold t))))
   `(font-latex-italic-face ((t (:foreground ,spaceduck-yellow :italic t))))
   `(font-latex-math-face ((t (:foreground ,spaceduck-cyan))))
   `(font-latex-sectioning-5-face ((t ,(list :foreground spaceduck-darkpurple
                                             :bold t))))
   `(font-latex-slide-title-face ((t (:foreground ,spaceduck-darkpurple))))
   `(font-latex-string-face ((t (:foreground ,spaceduck-cyan))))
   `(font-latex-warning-face ((t (:foreground ,spaceduck-red))))

   ;; Basic Coloring (or Uncategorized)
   `(border ((t ,(list :background spaceduck-bg
                       :foreground spaceduck-darkpurple))))
   `(cursor ((t (:background ,spaceduck-fg))))
   `(default ((t ,(list :foreground spaceduck-fg
                        :background spaceduck-bg))))
   `(fringe ((t ,(list :background spaceduck-bg
                       :foreground spaceduck-green))))
   `(link ((t (:foreground ,spaceduck-darkpurple :underline t))))
   `(link-visited ((t (:foreground ,spaceduck-blue :underline t))))
   `(match ((t (:background ,spaceduck-yellow))))
   `(shadow ((t (:foreground ,spaceduck-bg))))
   `(minibuffer-prompt ((t (:foreground ,spaceduck-darkpurple))))
   `(region ((t (:background ,spaceduck-darkpurple2 :foreground nil))))
   `(secondary-selection ((t ,(list :background spaceduck-green
                                    :foreground nil))))
   `(trailing-whitespace ((t ,(list :foreground spaceduck-black
                                    :background spaceduck-red))))
   `(tooltip ((t ,(list :background spaceduck-blue
                        :foreground spaceduck-purple2))))

   ;; Calendar
   `(holiday-face ((t (:foreground ,spaceduck-red))))

   ;; Compilation
   `(compilation-info ((t ,(list :foreground spaceduck-cyan
                                 :inherit 'unspecified))))
   `(compilation-warning ((t ,(list :foreground spaceduck-darkpurple2
                                    :bold t
                                    :inherit 'unspecified))))
   `(compilation-error ((t (:foreground ,spaceduck-red))))
   `(compilation-mode-line-fail ((t ,(list :foreground spaceduck-red
                                           :weight 'bold
                                           :inherit 'unspecified))))
   `(compilation-mode-line-exit ((t ,(list :foreground spaceduck-cyan
                                           :weight 'bold
                                           :inherit 'unspecified))))

   ;; Custom
   `(custom-state ((t (:foreground ,spaceduck-cyan))))

   ;; Diff
   `(diff-removed ((t ,(list :foreground spaceduck-red
                             :background nil))))
   `(diff-added ((t ,(list :foreground spaceduck-cyan
                           :background nil))))

   ;; Dired
   `(dired-directory ((t (:foreground ,spaceduck-darkpurple :weight bold))))
   `(dired-ignored ((t ,(list :foreground spaceduck-yellow
                              :inherit 'unspecified))))

   ;; Ebrowse
   `(ebrowse-root-class ((t (:foreground ,spaceduck-darkpurple :weight bold))))
   `(ebrowse-progress ((t (:background ,spaceduck-darkpurple))))

   ;; Egg
   `(egg-branch ((t (:foreground ,spaceduck-yellow))))
   `(egg-branch-mono ((t (:foreground ,spaceduck-yellow))))
   `(egg-diff-add ((t (:foreground ,spaceduck-cyan))))
   `(egg-diff-del ((t (:foreground ,spaceduck-red))))
   `(egg-diff-file-header ((t (:foreground ,spaceduck-blue))))
   `(egg-help-header-1 ((t (:foreground ,spaceduck-yellow))))
   `(egg-help-header-2 ((t (:foreground ,spaceduck-darkpurple))))
   `(egg-log-HEAD-name ((t (:box (:color ,spaceduck-fg)))))
   `(egg-reflog-mono ((t (:foreground ,spaceduck-magenta))))
   `(egg-section-title ((t (:foreground ,spaceduck-yellow))))
   `(egg-text-base ((t (:foreground ,spaceduck-fg))))
   `(egg-term ((t (:foreground ,spaceduck-yellow))))

   ;; ERC
   `(erc-notice-face ((t (:foreground ,spaceduck-blue))))
   `(erc-timestamp-face ((t (:foreground ,spaceduck-cyan))))
   `(erc-input-face ((t (:foreground ,spaceduck-red))))
   `(erc-my-nick-face ((t (:foreground ,spaceduck-red))))

   ;; EShell
   `(eshell-ls-backup ((t (:foreground ,spaceduck-yellow))))
   `(eshell-ls-directory ((t (:foreground ,spaceduck-darkpurple))))
   `(eshell-ls-executable ((t (:foreground ,spaceduck-cyan))))
   `(eshell-ls-symlink ((t (:foreground ,spaceduck-yellow))))

   ;; Font Lock
   `(font-lock-builtin-face ((t (:foreground ,spaceduck-green))))
   `(font-lock-comment-face ((t (:foreground ,spaceduck-darkpurple2))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,spaceduck-darkpurple2))))
   `(font-lock-constant-face ((t (:foreground ,spaceduck-magenta))))
   `(font-lock-doc-face ((t (:foreground ,spaceduck-cyan))))
   `(font-lock-doc-string-face ((t (:foreground ,spaceduck-red))))
   `(font-lock-function-name-face ((t (:foreground ,spaceduck-yellow))))
   `(font-lock-keyword-face ((t (:foreground ,spaceduck-green :bold t))))
   `(font-lock-preprocessor-face ((t (:foreground ,spaceduck-yellow))))
   `(font-lock-reference-face ((t (:foreground ,spaceduck-yellow))))
   `(font-lock-string-face ((t (:foreground ,spaceduck-cyan))))
   `(font-lock-type-face ((t (:foreground ,spaceduck-purple2))))
   `(font-lock-variable-name-face ((t (:foreground ,spaceduck-fg))))
   `(default-frame-alist ((t (:foreground ,spaceduck-green))))
   `(font-lock-warning-face ((t (:foreground ,spaceduck-red))))

   ;; Flymake
   `(flymake-errline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,spaceduck-red)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:foreground ,spaceduck-red :weight bold :underline t))))
   `(flymake-warnline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,spaceduck-yellow)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:forground ,spaceduck-green :weight bold :underline t))))
   `(flymake-infoline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,spaceduck-cyan)
                   :foreground unspecified
                   :background unspecified
                   :inherit unspecified))
      (t (:forground ,spaceduck-cyan :weight bold :underline t))))

   ;; Flyspell
   `(flyspell-incorrect
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,spaceduck-red) :inherit unspecified))
      (t (:foreground ,spaceduck-red :weight bold :underline t))))
   `(flyspell-duplicate
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,spaceduck-yellow) :inherit unspecified))
      (t (:foreground ,spaceduck-green :weight bold :underline t))))

   ;; Helm
   `(helm-candidate-number ((t ,(list :background spaceduck-darkpurple
                                      :foreground spaceduck-yellow
                                      :bold t))))
   `(helm-ff-directory ((t ,(list :foreground spaceduck-black
                                  :background spaceduck-green
                                  :bold t))))
   `(helm-ff-executable ((t (:foreground ,spaceduck-cyan))))
   `(helm-ff-file ((t (:foreground ,spaceduck-fg :inherit unspecified))))
   `(helm-ff-invalid-symlink ((t ,(list :foreground spaceduck-magenta
                                        :background spaceduck-red))))
   `(helm-ff-symlink ((t (:foreground ,spaceduck-darkpurple :bold t))))
   `(helm-selection-line ((t (:background ,spaceduck-darkpurple2))))
   `(helm-selection ((t (:background ,spaceduck-darkpurple :underline nil))))
   `(helm-source-header ((t ,(list :foreground spaceduck-yellow
                                   :background spaceduck-bg
                                   :box (list :line-width -1
                                              :style 'released-button)))))

   ;; Ido
   `(ido-first-match ((t (:foreground ,spaceduck-green :bold nil))))
   `(ido-only-match ((t (:foreground ,spaceduck-darkpurple2 :weight bold))))
   `(ido-subdir ((t (:foreground ,spaceduck-darkpurple :weight bold))))

   ;; Info
   `(info-xref ((t (:foreground ,spaceduck-darkpurple))))
   `(info-visited ((t (:foreground ,spaceduck-blue))))

   ;; Jabber
   `(jabber-chat-prompt-foreign ((t ,(list :foreground spaceduck-yellow
                                           :bold nil))))
   `(jabber-chat-prompt-local ((t (:foreground ,spaceduck-yellow))))
   `(jabber-chat-prompt-system ((t (:foreground ,spaceduck-cyan))))
   `(jabber-rare-time-face ((t (:foreground ,spaceduck-cyan))))
   `(jabber-roster-user-online ((t (:foreground ,spaceduck-cyan))))
   `(jabber-activity-face ((t (:foreground ,spaceduck-red))))
   `(jabber-activity-personal-face ((t (:foreground ,spaceduck-green :bold t))))

   ;; Line Highlighting
   `(highlight ((t (:background ,spaceduck-cursorline :foreground nil))))
   `(highlight-current-line-face ((t ,(list :background spaceduck-darkpurple
                                            :foreground nil))))

   ;; Linum
   `(linum ((t `(list :foreground spaceduck-fg
                      :background spaceduck-bg))))

   ;; Magit
   `(magit-branch ((t (:foreground ,spaceduck-darkpurple))))
   `(magit-diff-hunk-header ((t (:background ,spaceduck-bg))))
   `(magit-diff-file-header ((t (:background ,spaceduck-bg))))
   `(magit-log-sha1 ((t (:foreground ,spaceduck-red))))
   `(magit-log-author ((t (:foreground ,spaceduck-darkpurple2))))
   `(magit-log-head-label-remote ((t ,(list :foreground spaceduck-cyan
                                            :background spaceduck-bg))))
   `(magit-log-head-label-local ((t ,(list :foreground spaceduck-darkpurple
                                           :background spaceduck-bg))))
   `(magit-log-head-label-tags ((t ,(list :foreground spaceduck-yellow
                                          :background spaceduck-bg))))
   `(magit-log-head-label-head ((t ,(list :foreground spaceduck-fg
                                          :background spaceduck-bg))))
   `(magit-item-highlight ((t (:background ,spaceduck-bg))))
   `(magit-tag ((t ,(list :foreground spaceduck-yellow
                          :background spaceduck-bg))))
   `(magit-blame-heading ((t ,(list :background spaceduck-bg
                                    :foreground spaceduck-fg))))

   ;; Message
   `(message-header-name ((t (:foreground ,spaceduck-cyan))))

   ;; Mode Line
   `(mode-line ((t ,(list :background spaceduck-darkpurple2
                          :foreground spaceduck-black))))
   `(mode-line-buffer-id ((t ,(list :background spaceduck-bg
                                    :foreground spaceduck-purple2))))
   `(mode-line-inactive ((t ,(list :background spaceduck-bg
                                   :foreground spaceduck-darkpurple))))

   ;; Neo Dir
   `(neo-dir-link-face ((t (:foreground ,spaceduck-darkpurple))))

   ;; Org Mode
   `(org-agenda-structure ((t (:foreground ,spaceduck-darkpurple))))
   `(org-column ((t (:background ,spaceduck-bg))))
   `(org-column-title ((t (:background ,spaceduck-bg :underline t :weight bold))))
   `(org-done ((t (:foreground ,spaceduck-cyan))))
   `(org-todo ((t (:foreground ,spaceduck-red))))
   `(org-upcoming-deadline ((t (:foreground ,spaceduck-yellow))))

   ;; Search
   `(isearch ((t ,(list :foreground spaceduck-black
                        :background spaceduck-fg))))
   `(isearch-fail ((t ,(list :foreground spaceduck-black
                             :background spaceduck-red))))
   `(isearch-lazy-highlight-face ((t ,(list
                                       :foreground spaceduck-fg
                                       :background spaceduck-magenta))))

   ;; Sh
   `(sh-quoted-exec ((t (:foreground ,spaceduck-red))))

   ;; Show Paren
   `(show-paren-match-face ((t (:background ,spaceduck-bg))))
   `(show-paren-mismatch-face ((t (:background ,spaceduck-red))))

   ;; Slime
   `(slime-repl-inputed-output-face ((t (:foreground ,spaceduck-red))))

   ;; Tuareg
   `(tuareg-font-lock-governing-face ((t (:foreground ,spaceduck-yellow))))

   ;; Speedbar
   `(speedbar-directory-face ((t ,(list :foreground spaceduck-darkpurple
                                        :weight 'bold))))
   `(speedbar-file-face ((t (:foreground ,spaceduck-fg))))
   `(speedbar-highlight-face ((t (:background ,spaceduck-bg))))
   `(speedbar-selected-face ((t (:foreground ,spaceduck-red))))
   `(speedbar-tag-face ((t (:foreground ,spaceduck-yellow))))

   ;; Which Function
   `(which-func ((t (:foreground ,spaceduck-blue))))

   ;; Whitespace
   `(whitespace-space ((t ,(list :background spaceduck-bg
                                 :foreground spaceduck-bg))))
   `(whitespace-tab ((t ,(list :background spaceduck-bg
                               :foreground spaceduck-bg))))
   `(whitespace-hspace ((t ,(list :background spaceduck-bg
                                  :foreground spaceduck-bg))))
   `(whitespace-line ((t ,(list :background spaceduck-bg
                                :foreground spaceduck-red))))
   `(whitespace-newline ((t ,(list :background spaceduck-bg
                                   :foreground spaceduck-bg))))
   `(whitespace-trailing ((t ,(list :background spaceduck-red
                                    :foreground spaceduck-red))))
   `(whitespace-empty ((t ,(list :background spaceduck-yellow
                                 :foreground spaceduck-yellow))))
   `(whitespace-indentation ((t ,(list :background spaceduck-yellow
                                       :foreground spaceduck-red))))
   `(whitespace-space-after-tab ((t ,(list :background spaceduck-yellow
                                           :foreground spaceduck-yellow))))
   `(whitespace-space-before-tab ((t ,(list :background spaceduck-darkpurple2
                                            :foreground spaceduck-darkpurple2))))

   ;;;;; company-mode
   `(company-tooltip ((t (:foreground ,spaceduck-fg :background ,spaceduck-bg))))
   `(company-tooltip-annotation ((t (:foreground ,spaceduck-darkpurple2 :background ,spaceduck-bg))))
   `(company-tooltip-annotation-selection ((t (:foreground ,spaceduck-darkpurple2 :background ,spaceduck-bg))))
   `(company-tooltip-selection ((t (:foreground ,spaceduck-fg :background ,spaceduck-bg))))
   `(company-tooltip-mouse ((t (:background ,spaceduck-bg))))
   `(company-tooltip-common ((t (:foreground ,spaceduck-cyan))))
   `(company-tooltip-common-selection ((t (:foreground ,spaceduck-cyan))))
   `(company-scrollbar-fg ((t (:background ,spaceduck-bg))))
   `(company-scrollbar-bg ((t (:background ,spaceduck-bg))))
   `(company-preview ((t (:background ,spaceduck-cyan))))
   `(company-preview-common ((t (:foreground ,spaceduck-cyan :background ,spaceduck-bg))))

   ;;;;; Proof General
   `(proof-locked-face ((t (:background ,spaceduck-purple))))
   ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'spaceduck)

;;; spaceduck-theme.el ends here.