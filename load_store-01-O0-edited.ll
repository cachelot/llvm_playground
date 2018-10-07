define i32 @plus(i32, i32) #0 {
  %a.ptr = alloca i32, align 4
  %b.ptr = alloca i32, align 4
  %c.ptr = alloca i32, align 4
  store i32 %a, i32* %a.ptr, align 4
  store i32 %b, i32* %b.ptr, align 4
  %a2 = load i32, i32* %a.ptr, align 4
  %b2 = load i32, i32* %b.ptr, align 4
  %c = add nsw i32 %a2, %b2
  store i32 %c, i32* %c.ptr, align 4
  %c2 = load i32, i32* %c.ptr, align 4
  ret i32 %c2
}
