;; -*- mode: scheme; coding: utf-8 -*-

;;;;
;;;; Copyright (C) 2011 - 2016
;;;; David Pirotte <david at altosw dot be>

;;;; This file is part of Grip.
;;;; A Grip of Really Important Procedures.

;;;; Grip is free software: you can redistribute it and/or modify it
;;;; under the terms of the GNU General Public License as published by
;;;; the Free Software Foundation, either version 3 of the License, or
;;;; (at your option) any later version.

;;;; Grip is distributed in the hope that it will be useful WARRANTY;
;;;; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
;;;; A PARTICULAR PURPOSE.  See the GNU General Public License for more
;;;; details.

;;;; You should have received a copy of the GNU General Public License
;;;; along with Grip.  If not, see <http://www.gnu.org/licenses/>.
;;;;

;;; Commentary:

;;; Code:


(define-module (grip push)
  #:export (push!
	    push*))


(define-syntax push!
  (syntax-rules ()
    ((push! item list)
     (begin
       (set! list (cons item list))
       list))))

(define-syntax push*
  (syntax-rules ()
    ((push* elements ... identifier)
     (begin
       (set! identifier (cons* elements ... identifier))
       identifier))))


#!

(define l1 '(b a))
(push! 'c l1)

(define l2 '(c d))
(push* 'a 'b l2)

!#
