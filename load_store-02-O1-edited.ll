
; Function Attrs: norecurse nounwind readonly ssp uwtable
define { i64, i64 } @Point.plus(%struct.Point* nocapture readonly, i64, i64) local_unnamed_addr #0 align 2 {
  %this.x.ptr = getelementptr inbounds %struct.Point, %struct.Point* %this, i64 0, i32 0
  %this.x = load i64, i64* %this.x.ptr, align 8, !tbaa !3
  %r.x = add nsw i64 %this.x, %1
  %this.y.ptr = getelementptr inbounds %struct.Point, %struct.Point* %this, i64 0, i32 1
  %this.y = load i64, i64* %this.y.ptr, align 8, !tbaa !8
  %r.y = add nsw i64 %this.y, %2
  %r_1 = insertvalue { i64, i64 } undef, i64 %r.x, 0
  %r_2 = insertvalue { i64, i64 } %r_1, i64 %r.y, 1
  ret { i64, i64 } %r_2
}

