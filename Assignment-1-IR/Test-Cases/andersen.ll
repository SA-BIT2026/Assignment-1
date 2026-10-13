; ModuleID = '/home/liquid/SA/Assignment-1/Assignment-1-IR/Test-Cases/andersen.c'
source_filename = "/home/liquid/SA/Assignment-1/Assignment-1-IR/Test-Cases/andersen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { ptr, ptr }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !10 {
  %1 = alloca %struct.S, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.dbg.declare(metadata ptr %1, metadata !16, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata ptr %2, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %3, metadata !25, metadata !DIExpression()), !dbg !26
  %6 = getelementptr inbounds %struct.S, ptr %1, i32 0, i32 0, !dbg !27
  store ptr %2, ptr %6, align 8, !dbg !28
  %7 = getelementptr inbounds %struct.S, ptr %1, i32 0, i32 1, !dbg !29
  store ptr %3, ptr %7, align 8, !dbg !30
  call void @llvm.dbg.declare(metadata ptr %4, metadata !31, metadata !DIExpression()), !dbg !32
  %8 = getelementptr inbounds %struct.S, ptr %1, i32 0, i32 0, !dbg !33
  %9 = load ptr, ptr %8, align 8, !dbg !33
  store ptr %9, ptr %4, align 8, !dbg !32
  call void @llvm.dbg.declare(metadata ptr %5, metadata !34, metadata !DIExpression()), !dbg !35
  %10 = getelementptr inbounds %struct.S, ptr %1, i32 0, i32 1, !dbg !36
  %11 = load ptr, ptr %10, align 8, !dbg !36
  store ptr %11, ptr %5, align 8, !dbg !35
  ret i32 0, !dbg !37
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "clang version 16.0.4 (https://github.com/bjjwwang/LLVM-compile 2259018fffaba36b5e50dce52fb5aa97b417ce4f)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/liquid/SA/Assignment-1/Assignment-1-IR/Test-Cases/andersen.c", directory: "/mnt/c/Users/Liquid/Documents/\E7\A0\94\E7\A9\B6\E7\94\9F/\E9\9D\99\E6\80\81\E7\A8\8B\E5\BA\8F\E5\88\86\E6\9E\90", checksumkind: CSK_MD5, checksum: "cc41b5fc77df26ee59a12ed51311acae")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"clang version 16.0.4 (https://github.com/bjjwwang/LLVM-compile 2259018fffaba36b5e50dce52fb5aa97b417ce4f)"}
!10 = distinct !DISubprogram(name: "main", scope: !11, file: !11, line: 5, type: !12, scopeLine: 5, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!11 = !DIFile(filename: "/home/liquid/SA/Assignment-1/Assignment-1-IR/Test-Cases/andersen.c", directory: "", checksumkind: CSK_MD5, checksum: "cc41b5fc77df26ee59a12ed51311acae")
!12 = !DISubroutineType(types: !13)
!13 = !{!14}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{}
!16 = !DILocalVariable(name: "s", scope: !10, file: !11, line: 6, type: !17)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "S", file: !11, line: 1, size: 128, elements: !18)
!18 = !{!19, !21}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "f1", scope: !17, file: !11, line: 2, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "f2", scope: !17, file: !11, line: 3, baseType: !20, size: 64, offset: 64)
!22 = !DILocation(line: 6, column: 10, scope: !10)
!23 = !DILocalVariable(name: "a1", scope: !10, file: !11, line: 7, type: !14)
!24 = !DILocation(line: 7, column: 5, scope: !10)
!25 = !DILocalVariable(name: "a2", scope: !10, file: !11, line: 7, type: !14)
!26 = !DILocation(line: 7, column: 9, scope: !10)
!27 = !DILocation(line: 8, column: 3, scope: !10)
!28 = !DILocation(line: 8, column: 6, scope: !10)
!29 = !DILocation(line: 9, column: 3, scope: !10)
!30 = !DILocation(line: 9, column: 6, scope: !10)
!31 = !DILocalVariable(name: "p", scope: !10, file: !11, line: 10, type: !20)
!32 = !DILocation(line: 10, column: 6, scope: !10)
!33 = !DILocation(line: 10, column: 12, scope: !10)
!34 = !DILocalVariable(name: "q", scope: !10, file: !11, line: 11, type: !20)
!35 = !DILocation(line: 11, column: 6, scope: !10)
!36 = !DILocation(line: 11, column: 12, scope: !10)
!37 = !DILocation(line: 12, column: 1, scope: !10)
