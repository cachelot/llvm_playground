%struct.Point = type { i64, i64 }

; Function Attrs: noinline nounwind optnone ssp uwtable
define { i64, i64 } @Point.plus(%struct.Point*, i64, i64) #0 align 2 {
  %r.ptr = alloca %struct.Point, align 8
  %arg.ptr = alloca %struct.Point, align 8
  %this.ptr = alloca %struct.Point*, align 8
  %arg.rawptr = bitcast %struct.Point* %arg.ptr to { i64, i64 }*
  %arg.x.ptr = getelementptr inbounds { i64, i64 }, { i64, i64 }* %arg.rawptr, i32 0, i32 0
  store i64 %arg.x, i64* %arg.x.ptr, align 8
  %arg.y.ptr = getelementptr inbounds { i64, i64 }, { i64, i64 }* %arg.rawptr, i32 0, i32 1
  store i64 %arg.y, i64* %arg.y.ptr, align 8
  store %struct.Point* %this, %struct.Point** %this.ptr, align 8
  %this.ptr_2 = load %struct.Point*, %struct.Point** %this.ptr, align 8
  %this.x.ptr = getelementptr inbounds %struct.Point, %struct.Point* %this.ptr_2, i32 0, i32 0
  %this.x = load i64, i64* %this.x.ptr, align 8
  %arg.x.ptr = getelementptr inbounds %struct.Point, %struct.Point* %arg.ptr, i32 0, i32 0
  %arg.x = load i64, i64* %arg.x.ptr, align 8
  %r.x = add nsw i64 %this.x, %arg.x
  %r.x.ptr = getelementptr inbounds %struct.Point, %struct.Point* %r.ptr, i32 0, i32 0
  store i64 %r.x, i64* %r.x.ptr, align 8
  %this.y.ptr = getelementptr inbounds %struct.Point, %struct.Point* %this.ptr_2, i32 0, i32 1
  %this.y = load i64, i64* %this.y.ptr, align 8
  %arg.y.ptr = getelementptr inbounds %struct.Point, %struct.Point* %arg.ptr, i32 0, i32 1
  %arg.y = load i64, i64* %arg.y.ptr, align 8
  %r.y = add nsw i64 %this.y, %arg.y
  %r.y.ptr = getelementptr inbounds %struct.Point, %struct.Point* %r.ptr, i32 0, i32 1
  store i64 %r.y, i64* %r.y.ptr, align 8
  %r.rawptr = bitcast %struct.Point* %r.ptr to { i64, i64 }*
  %r.rawptr_2 = load { i64, i64 }, { i64, i64 }* %r.rawptr, align 8
  ret { i64, i64 } %r.rawptr_2
}
