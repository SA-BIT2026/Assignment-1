; ModuleID = '/mnt/e/Desktop/AcaWork/课程作业/26静态程序分析/Assignment-1/Assignment-1-IR/Test-Cases/interprocedural.c'
source_filename = "/mnt/e/Desktop/AcaWork/\E8\AF\BE\E7\A8\8B\E4\BD\9C\E4\B8\9A/26\E9\9D\99\E6\80\81\E7\A8\8B\E5\BA\8F\E5\88\86\E6\9E\90/Assignment-1/Assignment-1-IR/Test-Cases/interprocedural.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i32 noundef %p) #0 {
entry:
  %p.addr = alloca i32, align 4
  store i32 %p, ptr %p.addr, align 4
  %0 = load i32, ptr %p.addr, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %argc, ptr %argc.addr, align 4
  %call = call i32 @foo(i32 noundef 3)
  store i32 %call, ptr %x, align 4
  %0 = load i32, ptr %argc.addr, align 4
  %call1 = call i32 @foo(i32 noundef %0)
  store i32 %call1, ptr %y, align 4
  %1 = load i32, ptr %y, align 4
  %2 = load i32, ptr %argc.addr, align 4
  %cmp = icmp eq i32 %1, %2
  call void @svf_assert(i1 noundef zeroext %cmp)
  ret i32 0
}

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
!5 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
