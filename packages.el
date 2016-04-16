;;; packages.el --- emms layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2016 Sylvain Benner & Contributors
;;
;; Author: Michael Englehorn <michael@englehorn.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `emms-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `emms/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `emms/pre-init-PACKAGE' and/or
;;   `emms/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(setq emms-packages
  '(
    emms
   ))

(setq emms-excluded-packages '())

(defun emms/init-emms ()
  "Initialize my package"
  (use-package emms
    :ensure t :defer t
    :config
    (progn
      (require 'emms-setup)
      (emms-standard)
      (require 'emms-player-simple)
      (require 'emms-source-file)
      (require 'emms-source-playlist)
      (require 'emms-player-mplayer)
      (setq emms-player-list '(emms-player-mplayer))
      (setq emms-source-file-default-directory "~/Music/")
      )
    )
  )
;;; packages.el ends here
