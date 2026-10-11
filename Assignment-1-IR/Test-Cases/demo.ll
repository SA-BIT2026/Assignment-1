; ModuleID = 'demo.c'
source_filename = "demo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tgetstr.initstr = internal global [25 x i8] c"select* From City ..\00\00\00\00\00", align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @tgetstr() #0 {
entry:
  ret ptr @tgetstr.initstr
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %injection = alloca ptr, align 8
  %s = alloca ptr, align 8
  %b = alloca ptr, align 8
  %p = alloca ptr, align 8
  %a = alloca i32, align 4
  %arr = alloca [5 x i32], align 16
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call ptr @tgetstr()
  store ptr %call, ptr %injection, align 8
  %0 = load ptr, ptr %injection, align 8
  store ptr %0, ptr %s, align 8
  %1 = load ptr, ptr %s, align 8
  store ptr %1, ptr %b, align 8
  %2 = load ptr, ptr %b, align 8
  call void @broadcast(ptr noundef %2)
  store i32 1, ptr %a, align 4
  store ptr %a, ptr %p, align 8
  %3 = load ptr, ptr %p, align 8
  store i32 3, ptr %3, align 4
  %4 = load i32, ptr %a, align 4
  %cmp = icmp eq i32 %4, 3
  call void @svf_assert(i1 noundef zeroext %cmp)
  store i32 0, ptr %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %5 = load i32, ptr %i, align 4
  %cmp1 = icmp slt i32 %5, 5
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  %idxprom = sext i32 %inc to i64
  %arrayidx = getelementptr inbounds [5 x i32], ptr %arr, i64 0, i64 %idxprom
  store i32 10, ptr %arrayidx, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  ret i32 0
}

declare void @broadcast(ptr noundef) #1

declare void @svf_assert(i1 noundef zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
