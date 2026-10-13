; ModuleID = 'demo.optnone.ll'
source_filename = "demo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tgetstr.initstr = internal global [25 x i8] c"select* From City ..\00\00\00\00\00", align 16

; Function Attrs: noinline nounwind uwtable
define dso_local ptr @tgetstr() #0 {
entry:
  ret ptr @tgetstr.initstr
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %arr = alloca [5 x i32], align 16
  %call = call ptr @tgetstr()
  call void @broadcast(ptr noundef %call)
  %cmp = icmp eq i32 3, 3
  call void @svf_assert(i1 noundef zeroext %cmp)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %while.body ]
  %cmp1 = icmp slt i32 %i.0, 5
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %inc = add nsw i32 %i.0, 1
  %idxprom = sext i32 %inc to i64
  %arrayidx = getelementptr inbounds [5 x i32], ptr %arr, i64 0, i64 %idxprom
  store i32 10, ptr %arrayidx, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  ret i32 0
}

declare void @broadcast(ptr noundef) #1

declare void @svf_assert(i1 noundef zeroext) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 16.0.4 (https://github.com/bjjwwang/LLVM-compile 2259018fffaba36b5e50dce52fb5aa97b417ce4f)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
