; ModuleID = 'branch.c'
source_filename = "branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %x) #0 !dbg !10 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %x, ptr %x.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata ptr %y, metadata !17, metadata !DIExpression()), !dbg !18
  %0 = load i32, ptr %x.addr, align 4, !dbg !19
  %cmp = icmp sgt i32 %0, 10, !dbg !21
  br i1 %cmp, label %if.then, label %if.else, !dbg !22

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %x.addr, align 4, !dbg !23
  %add = add nsw i32 %1, 1, !dbg !24
  store i32 %add, ptr %y, align 4, !dbg !25
  br label %if.end, !dbg !26

if.else:                                          ; preds = %entry
  store i32 10, ptr %y, align 4, !dbg !27
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, ptr %y, align 4, !dbg !28
  %3 = load i32, ptr %x.addr, align 4, !dbg !29
  %add1 = add nsw i32 %3, 1, !dbg !30
  %cmp2 = icmp sge i32 %2, %add1, !dbg !31
  call void @svf_assert(i1 noundef zeroext %cmp2), !dbg !32
  %4 = load i32, ptr %retval, align 4, !dbg !33
  ret i32 %4, !dbg !33
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @svf_assert(i1 noundef zeroext) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 16.0.4 (https://github.com/bjjwwang/LLVM-compile 2259018fffaba36b5e50dce52fb5aa97b417ce4f)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "branch.c", directory: "/home/mingming/Assignment-1/Assignment-1-IR/Test-Cases", checksumkind: CSK_MD5, checksum: "a590f03cd6b66b2793385cea91dee08c")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"clang version 16.0.4 (https://github.com/bjjwwang/LLVM-compile 2259018fffaba36b5e50dce52fb5aa97b417ce4f)"}
!10 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 4, type: !11, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "x", arg: 1, scope: !10, file: !1, line: 4, type: !13)
!16 = !DILocation(line: 4, column: 14, scope: !10)
!17 = !DILocalVariable(name: "y", scope: !10, file: !1, line: 5, type: !13)
!18 = !DILocation(line: 5, column: 6, scope: !10)
!19 = !DILocation(line: 6, column: 5, scope: !20)
!20 = distinct !DILexicalBlock(scope: !10, file: !1, line: 6, column: 5)
!21 = !DILocation(line: 6, column: 7, scope: !20)
!22 = !DILocation(line: 6, column: 5, scope: !10)
!23 = !DILocation(line: 7, column: 7, scope: !20)
!24 = !DILocation(line: 7, column: 9, scope: !20)
!25 = !DILocation(line: 7, column: 5, scope: !20)
!26 = !DILocation(line: 7, column: 3, scope: !20)
!27 = !DILocation(line: 9, column: 5, scope: !20)
!28 = !DILocation(line: 10, column: 13, scope: !10)
!29 = !DILocation(line: 10, column: 16, scope: !10)
!30 = !DILocation(line: 10, column: 17, scope: !10)
!31 = !DILocation(line: 10, column: 14, scope: !10)
!32 = !DILocation(line: 10, column: 2, scope: !10)
!33 = !DILocation(line: 11, column: 1, scope: !10)
