; ModuleID = '/home/liquid/SA/Assignment-1/Assignment-1-IR/Test-Cases/example.c'
source_filename = "/home/liquid/SA/Assignment-1/Assignment-1-IR/Test-Cases/example.c"
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
define dso_local i32 @main() #0 !dbg !20 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !23, metadata !DIExpression()), !dbg !24
  %2 = call i32 @foo(i32 noundef 0), !dbg !25
  store i32 %2, ptr %1, align 4, !dbg !24
  ret i32 0, !dbg !26
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 16.0.4 (https://github.com/bjjwwang/LLVM-compile 2259018fffaba36b5e50dce52fb5aa97b417ce4f)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/liquid/SA/Assignment-1/Assignment-1-IR/Test-Cases/example.c", directory: "/mnt/c/Users/Liquid/Documents/\E7\A0\94\E7\A9\B6\E7\94\9F/\E9\9D\99\E6\80\81\E7\A8\8B\E5\BA\8F\E5\88\86\E6\9E\90", checksumkind: CSK_MD5, checksum: "c251443c3ce37528962843c1ae39d773")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"clang version 16.0.4 (https://github.com/bjjwwang/LLVM-compile 2259018fffaba36b5e50dce52fb5aa97b417ce4f)"}
!10 = distinct !DISubprogram(name: "foo", scope: !11, file: !11, line: 1, type: !12, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!11 = !DIFile(filename: "/home/liquid/SA/Assignment-1/Assignment-1-IR/Test-Cases/example.c", directory: "", checksumkind: CSK_MD5, checksum: "c251443c3ce37528962843c1ae39d773")
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !14}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{}
!16 = !DILocalVariable(name: "b", arg: 1, scope: !10, file: !11, line: 1, type: !14)
!17 = !DILocation(line: 1, column: 13, scope: !10)
!18 = !DILocation(line: 2, column: 12, scope: !10)
!19 = !DILocation(line: 2, column: 5, scope: !10)
!20 = distinct !DISubprogram(name: "main", scope: !11, file: !11, line: 4, type: !21, scopeLine: 4, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!21 = !DISubroutineType(types: !22)
!22 = !{!14}
!23 = !DILocalVariable(name: "a", scope: !20, file: !11, line: 5, type: !14)
!24 = !DILocation(line: 5, column: 6, scope: !20)
!25 = !DILocation(line: 5, column: 10, scope: !20)
!26 = !DILocation(line: 6, column: 1, scope: !20)
