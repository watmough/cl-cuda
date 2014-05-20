#|
  This file is a part of cl-cuda project.
  Copyright (c) 2012 Masayuki Takagi (kamonama@gmail.com)
|#

(in-package :cl-user)
(defpackage cl-cuda
  (:use :cl
        :cl-cuda.driver-api
        :cl-cuda.lang
        :cl-cuda.api)
  (:export ;; Built-in Vector Types
           :float3 :make-float3
           :float3-p
           :float3-x :float3-y :float3-z :float3-=
           :float4 :make-float4
           :float4-p
           :float4-x :float4-y :float4-z :float4-w :float4-=
           :void :bool :bool* :int :int* :float :float*
           :float3 :float3* :float4 :float4*
           ;; Syntax
           :grid-dim-x :grid-dim-y :grid-dim-z
           :block-dim-x :block-dim-y :block-dim-z
           :block-idx-x :block-idx-y :block-idx-z
           :thread-idx-x :thread-idx-y :thread-idx-z
           :with-shared-memory :syncthreads
           ;; Built-in functions
           :rsqrtf
           :atomic-add
           :pointer
           :dot)
  (:shadowing-import-from :cl-cuda.api
                          :expand-macro
                          :expand-macro-1))

(cl-reexport:reexport-from :cl-cuda.driver-api :cl-cuda)
(cl-reexport:reexport-from :cl-cuda.api :cl-cuda)
