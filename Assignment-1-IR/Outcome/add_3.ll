; ModuleID = 'Test-Cases/add.c'
source_filename = "Test-Cases/add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add(i32 noundef %a, i32 noundef %b) #0 !dbg !10 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !15, metadata !DIExpression()), !dbg !16
  store i32 %b, ptr %b.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata ptr %c, metadata !19, metadata !DIExpression()), !dbg !20
  %0 = load i32, ptr %a.addr, align 4, !dbg !21
  %1 = load i32, ptr %b.addr, align 4, !dbg !22
  %add = add nsw i32 %0, %1, !dbg !23
  store i32 %add, ptr %c, align 4, !dbg !20
  %2 = load i32, ptr %c, align 4, !dbg !24
  ret i32 %2, !dbg !25
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.3 (1ubuntu1)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "Test-Cases/add.c", directory: "/home/halhrha/Code/SA-BIT2026-SVF-video/Assignment-1/Assignment-1-IR", checksumkind: CSK_MD5, checksum: "1843cd31500a71f5fb90c311cb6eefd4")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!10 = distinct !DISubprogram(name: "add", scope: !1, file: !1, line: 1, type: !11, scopeLine: 2, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13, !13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "a", arg: 1, scope: !10, file: !1, line: 1, type: !13)
!16 = !DILocation(line: 1, column: 13, scope: !10)
!17 = !DILocalVariable(name: "b", arg: 2, scope: !10, file: !1, line: 1, type: !13)
!18 = !DILocation(line: 1, column: 20, scope: !10)
!19 = !DILocalVariable(name: "c", scope: !10, file: !1, line: 3, type: !13)
!20 = !DILocation(line: 3, column: 7, scope: !10)
!21 = !DILocation(line: 3, column: 11, scope: !10)
!22 = !DILocation(line: 3, column: 15, scope: !10)
!23 = !DILocation(line: 3, column: 13, scope: !10)
!24 = !DILocation(line: 4, column: 10, scope: !10)
!25 = !DILocation(line: 4, column: 3, scope: !10)
