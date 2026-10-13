; ModuleID = '/home/liquid/SA/Assignment-1/Assignment-1-IR/Test-Cases/add.c'
source_filename = "/home/liquid/SA/Assignment-1/Assignment-1-IR/Test-Cases/add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add(i32 noundef %0, i32 noundef %1) #0 !dbg !10 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !16, metadata !DIExpression()), !dbg !17
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata ptr %5, metadata !20, metadata !DIExpression()), !dbg !21
  %6 = load i32, ptr %3, align 4, !dbg !22
  %7 = load i32, ptr %4, align 4, !dbg !23
  %8 = add nsw i32 %6, %7, !dbg !24
  store i32 %8, ptr %5, align 4, !dbg !21
  %9 = load i32, ptr %5, align 4, !dbg !25
  ret i32 %9, !dbg !26
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 16.0.4 (https://github.com/bjjwwang/LLVM-compile 2259018fffaba36b5e50dce52fb5aa97b417ce4f)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/liquid/SA/Assignment-1/Assignment-1-IR/Test-Cases/add.c", directory: "/mnt/c/Users/Liquid/Documents/\E7\A0\94\E7\A9\B6\E7\94\9F/\E9\9D\99\E6\80\81\E7\A8\8B\E5\BA\8F\E5\88\86\E6\9E\90", checksumkind: CSK_MD5, checksum: "1843cd31500a71f5fb90c311cb6eefd4")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"clang version 16.0.4 (https://github.com/bjjwwang/LLVM-compile 2259018fffaba36b5e50dce52fb5aa97b417ce4f)"}
!10 = distinct !DISubprogram(name: "add", scope: !11, file: !11, line: 1, type: !12, scopeLine: 2, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!11 = !DIFile(filename: "/home/liquid/SA/Assignment-1/Assignment-1-IR/Test-Cases/add.c", directory: "", checksumkind: CSK_MD5, checksum: "1843cd31500a71f5fb90c311cb6eefd4")
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !14, !14}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{}
!16 = !DILocalVariable(name: "a", arg: 1, scope: !10, file: !11, line: 1, type: !14)
!17 = !DILocation(line: 1, column: 13, scope: !10)
!18 = !DILocalVariable(name: "b", arg: 2, scope: !10, file: !11, line: 1, type: !14)
!19 = !DILocation(line: 1, column: 20, scope: !10)
!20 = !DILocalVariable(name: "c", scope: !10, file: !11, line: 3, type: !14)
!21 = !DILocation(line: 3, column: 7, scope: !10)
!22 = !DILocation(line: 3, column: 11, scope: !10)
!23 = !DILocation(line: 3, column: 15, scope: !10)
!24 = !DILocation(line: 3, column: 13, scope: !10)
!25 = !DILocation(line: 4, column: 10, scope: !10)
!26 = !DILocation(line: 4, column: 3, scope: !10)
