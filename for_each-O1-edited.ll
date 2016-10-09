define i32 @_Z3sumRKNSt3__16vectorIiNS_9allocatorIiEEEE(%"class.std::__1::vector"* nocapture readonly dereferenceable(24)) #0 {
; <label>:loop.entry
  %begin_ptr = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %0, i64 0, i32 0, i32 0
  %begin = load i32*, i32** %begin_ptr, align 8, !tbaa !2
  %end_ptr = getelementptr inbounds %"class.std::__1::vector", %"class.std::__1::vector"* %0, i64 0, i32 0, i32 1
  %end = load i32*, i32** %end_ptr, align 8, !tbaa !8
  %empty = icmp eq i32* %begin, %end
  br i1 %empty, label %exit, label %loop

; <label>:loop
  %augend = phi i32 [ %sum, %loop ], [ 0, %loop.entry ]
  %offset = phi i32* [ %next_offset, %loop ], [ %begin, %loop.entry ]
  %item = load i32, i32* %offset, align 4, !tbaa !9
  %sum = add nsw i32 %augend, %item
  %next_offset = getelementptr inbounds i32, i32* %offset, i64 1
  %done = icmp eq i32* %next_offset, %end
  br i1 %done, label %exit, label %loop

; <label>:exit 
  %result = phi i32 [ 0, %loop.entry ], [ %sum, %loop ]
  ret i32 %result

}

