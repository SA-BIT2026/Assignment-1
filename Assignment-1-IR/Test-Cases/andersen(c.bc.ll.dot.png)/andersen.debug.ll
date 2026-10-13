; ModuleID = 'andersen.c'
source_filename = "andersen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { ptr, ptr }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !10 {
entry:
  %s = alloca %struct.S, align 8
  %a1 = alloca i32, align 4
  %a2 = alloca i32, align 4
  %p = alloca ptr, align 8
  %q = alloca ptr, align 8
  call void @llvm.dbg.declare(metadata ptr %s, metadata !15, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata ptr %a1, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata ptr %a2, metadata !24, metadata !DIExpression()), !dbg !25
  %f1 = getelementptr inbounds %struct.S, ptr %s, i32 0, i32 0, !dbg !26
  store ptr %a1, ptr %f1, align 8, !dbg !27
  %f2 = getelementptr inbounds %struct.S, ptr %s, i32 0, i32 1, !dbg !28
  store ptr %a2, ptr %f2, align 8, !dbg !29
  call void @llvm.dbg.declare(metadata ptr %p, metadata !30, metadata !DIExpression()), !dbg !31
  %f11 = getelementptr inbounds %struct.S, ptr %s, i32 0, i32 0, !dbg !32
  %0 = load ptr, ptr %f11, align 8, !dbg !32
  store ptr %0, ptr %p, align 8, !dbg !31
  call void @llvm.dbg.declare(metadata ptr %q, metadata !33, metadata !DIExpression()), !dbg !34
  %f22 = getelementptr inbounds %struct.S, ptr %s, i32 0, i32 1, !dbg !35
  %1 = load ptr, ptr %f22, align 8, !dbg !35
  store ptr %1, ptr %q, align 8, !dbg !34
  ret i32 0, !dbg !36
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 16.0.4 (https://github.com/bjjwwang/LLVM-compile 2259018fffaba36b5e50dce52fb5aa97b417ce4f)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "andersen.c", directory: "/home/mingming/Assignment-1/Assignment-1-IR/Test-Cases", checksumkind: CSK_MD5, checksum: "cc41b5fc77df26ee59a12ed51311acae")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"clang version 16.0.4 (https://github.com/bjjwwang/LLVM-compile 2259018fffaba36b5e50dce52fb5aa97b417ce4f)"}
!10 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 5, type: !11, scopeLine: 5, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "s", scope: !10, file: !1, line: 6, type: !16)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "S", file: !1, line: 1, size: 128, elements: !17)
!17 = !{!18, !20}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !16, file: !1, line: 2, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "f2", scope: !16, file: !1, line: 3, baseType: !19, size: 64, offset: 64)
!21 = !DILocation(line: 6, column: 10, scope: !10)
!22 = !DILocalVariable(name: "a1", scope: !10, file: !1, line: 7, type: !13)
!23 = !DILocation(line: 7, column: 5, scope: !10)
!24 = !DILocalVariable(name: "a2", scope: !10, file: !1, line: 7, type: !13)
!25 = !DILocation(line: 7, column: 9, scope: !10)
!26 = !DILocation(line: 8, column: 3, scope: !10)
!27 = !DILocation(line: 8, column: 6, scope: !10)
!28 = !DILocation(line: 9, column: 3, scope: !10)
!29 = !DILocation(line: 9, column: 6, scope: !10)
!30 = !DILocalVariable(name: "p", scope: !10, file: !1, line: 10, type: !19)
!31 = !DILocation(line: 10, column: 6, scope: !10)
!32 = !DILocation(line: 10, column: 12, scope: !10)
!33 = !DILocalVariable(name: "q", scope: !10, file: !1, line: 11, type: !19)
!34 = !DILocation(line: 11, column: 6, scope: !10)
!35 = !DILocation(line: 11, column: 12, scope: !10)
!36 = !DILocation(line: 12, column: 1, scope: !10)
