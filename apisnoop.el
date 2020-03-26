;;; apisnoop.el --- helper functions for APISnoop users    -*- lexical-binding: t; -*-
;; Copyright (c) 2020 Zach Mandeville

;; Author: Zach Mandeville <zz@ii.coop>
;; Keywords: apisnoop kubernetes
;; Version: 0.0.1

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;; This is a potentially growing list of helper functions for when you are using apisnoop and emacs together.
;; It's also a chance to better learn how to write emacs packages.  It's niche, but a nice niche!

;;; Code:

(defun apisnoop/insert-ticket-template ()
  "Inserts contents of the \"ticket-template.org\" file stored in your current directory."
  (interactive)
  (let ((template-file "./ticket-template.org"))
    (if (file-exists-p template-file)
        (insert-file-contents template-file)
      (message "No ticket-template.org found in current directory: %s." default-directory))))

(provide 'apisnoop)
;;; apisnoop.el ends here
