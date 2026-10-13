; ModuleID = '/home/liquid/SA/Assignment-1/Assignment-1-IR/Test-Cases/interprocedural.c'
source_filename = "/home/liquid/SA/Assignment-1/Assignment-1-IR/Test-Cases/interprocedural.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @foo(i32 noundef %0) #0 !dbg !10 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !16, metadata !DIExpression()), !dbg !17
  %3 = load i32, ptr %2, align 4, !dbg !18
  ret i32 %3, !dbg !19
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0) #0 !dbg !20 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata ptr %3, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %4, metadata !25, metadata !DIExpression()), !dbg !26
  %5 = call i32 @foo(i32 noundef 3), !dbg !27
  store i32 %5, ptr %3, align 4, !dbg !28
  %6 = load i32, ptr %2, align 4, !dbg !29
  %7 = call i32 @foo(i32 noundef %6), !dbg !30
  store i32 %7, ptr %4, align 4, !dbg !31
  %8 = load i32, ptr %4, align 4, !dbg !32
  %9 = load i32, ptr %2, align 4, !dbg !33
  %10 = icmp eq i32 %8, %9, !dbg !34
  call void @svf_assert(i1 noundef zeroext %10), !dbg !35
  ret i32 0, !dbg !36
}

declare void @svf_assert(i1 noundef zeroext) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 16.0.4 (https://github.com/bjjwwang/LLVM-compile 2259018fffaba36b5e50dce52fb5aa97b417ce4f)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/liquid/SA/Assignment-1/Assignment-1-IR/Test-Cases/interprocedural.c", directory: "/mnt/c/Users/Liquid/Documents/\E7\A0\94\E7\A9\B6\E7\94\9F/\E9\9D\99\E6\80\81\E7\A8\8B\E5\BA\8F\E5\88\86\E6\9E\90", checksumkind: CSK_MD5, checksum: "9363edd1d60002ccf234c17cc51c4434")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"clang version 16.0.4 (https://github.com/bjjwwang/LLVM-compile 2259018fffaba36b5e50dce52fb5aa97b417ce4f)"}
!10 = distinct !DISubprogram(name: "foo", scope: !11, file: !11, line: 4, type: !12, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!11 = !DIFile(filename: "/home/liquid/SA/Assignment-1/Assignment-1-IR/Test-Cases/interprocedural.c", directory: "", checksumkind: CSK_MD5, checksum: "9363edd1d60002ccf234c17cc51c4434")
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !14}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{}
!16 = !DILocalVariable(name: "p", arg: 1, scope: !10, file: !11, line: 4, type: !14)
!17 = !DILocation(line: 4, column: 13, scope: !10)
!18 = !DILocation(line: 5, column: 12, scope: !10)
!19 = !DILocation(line: 5, column: 5, scope: !10)
!20 = distinct !DISubprogram(name: "main", scope: !11, file: !11, line: 7, type: !12, scopeLine: 7, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!21 = !DILocalVariable(name: "argc", arg: 1, scope: !20, file: !11, line: 7, type: !14)
!22 = !DILocation(line: 7, column: 14, scope: !20)
!23 = !DILocalVariable(name: "x", scope: !20, file: !11, line: 8, type: !14)
!24 = !DILocation(line: 8, column: 7, scope: !20)
!25 = !DILocalVariable(name: "y", scope: !20, file: !11, line: 9, type: !14)
!26 = !DILocation(line: 9, column: 7, scope: !20)
!27 = !DILocation(line: 10, column: 7, scope: !20)
!28 = !DILocation(line: 10, column: 5, scope: !20)
!29 = !DILocation(line: 11, column: 11, scope: !20)
!30 = !DILocation(line: 11, column: 7, scope: !20)
!31 = !DILocation(line: 11, column: 5, scope: !20)
!32 = !DILocation(line: 12, column: 14, scope: !20)
!33 = !DILocation(line: 12, column: 19, scope: !20)
!34 = !DILocation(line: 12, column: 16, scope: !20)
!35 = !DILocation(line: 12, column: 3, scope: !20)
!36 = !DILocation(line: 13, column: 1, scope: !20)
