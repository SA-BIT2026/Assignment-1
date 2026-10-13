; ModuleID = '/home/liquid/SA/Assignment-1/Assignment-1-IR/Test-Cases/demo.c'
source_filename = "/home/liquid/SA/Assignment-1/Assignment-1-IR/Test-Cases/demo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tgetstr.initstr = internal global [25 x i8] c"select* From City ..\00\00\00\00\00", align 16, !dbg !0

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @tgetstr() #0 !dbg !2 {
  ret ptr @tgetstr.initstr, !dbg !23
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !24 {
  %1 = alloca i32, align 4
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca [5 x i32], align 16
  %8 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !28, metadata !DIExpression()), !dbg !29
  %9 = call ptr @tgetstr(), !dbg !30
  store ptr %9, ptr %2, align 8, !dbg !29
  call void @llvm.dbg.declare(metadata ptr %3, metadata !31, metadata !DIExpression()), !dbg !32
  %10 = load ptr, ptr %2, align 8, !dbg !33
  store ptr %10, ptr %3, align 8, !dbg !32
  call void @llvm.dbg.declare(metadata ptr %4, metadata !34, metadata !DIExpression()), !dbg !35
  %11 = load ptr, ptr %3, align 8, !dbg !36
  store ptr %11, ptr %4, align 8, !dbg !35
  %12 = load ptr, ptr %4, align 8, !dbg !37
  call void @broadcast(ptr noundef %12), !dbg !38
  call void @llvm.dbg.declare(metadata ptr %5, metadata !39, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata ptr %6, metadata !42, metadata !DIExpression()), !dbg !43
  store i32 1, ptr %6, align 4, !dbg !43
  store ptr %6, ptr %5, align 8, !dbg !44
  %13 = load ptr, ptr %5, align 8, !dbg !45
  store i32 3, ptr %13, align 4, !dbg !46
  %14 = load i32, ptr %6, align 4, !dbg !47
  %15 = icmp eq i32 %14, 3, !dbg !48
  call void @svf_assert(i1 noundef zeroext %15), !dbg !49
  call void @llvm.dbg.declare(metadata ptr %7, metadata !50, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata ptr %8, metadata !55, metadata !DIExpression()), !dbg !56
  store i32 0, ptr %8, align 4, !dbg !56
  br label %16, !dbg !57

16:                                               ; preds = %19, %0
  %17 = load i32, ptr %8, align 4, !dbg !58
  %18 = icmp slt i32 %17, 5, !dbg !59
  br i1 %18, label %19, label %24, !dbg !57

19:                                               ; preds = %16
  %20 = load i32, ptr %8, align 4, !dbg !60
  %21 = add nsw i32 %20, 1, !dbg !60
  store i32 %21, ptr %8, align 4, !dbg !60
  %22 = sext i32 %21 to i64, !dbg !62
  %23 = getelementptr inbounds [5 x i32], ptr %7, i64 0, i64 %22, !dbg !62
  store i32 10, ptr %23, align 4, !dbg !63
  br label %16, !dbg !57, !llvm.loop !64

24:                                               ; preds = %16
  ret i32 0, !dbg !67
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @broadcast(ptr noundef) #2

declare void @svf_assert(i1 noundef zeroext) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!8}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "initstr", scope: !2, file: !3, line: 9, type: !12, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "tgetstr", scope: !3, file: !3, line: 7, type: !4, scopeLine: 7, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !11)
!3 = !DIFile(filename: "/home/liquid/SA/Assignment-1/Assignment-1-IR/Test-Cases/demo.c", directory: "", checksumkind: CSK_MD5, checksum: "cdd10c41d4dbbe45ab3a2151f745700c")
!4 = !DISubroutineType(types: !5)
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = distinct !DICompileUnit(language: DW_LANG_C11, file: !9, producer: "clang version 16.0.4 (https://github.com/bjjwwang/LLVM-compile 2259018fffaba36b5e50dce52fb5aa97b417ce4f)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !10, splitDebugInlining: false, nameTableKind: None)
!9 = !DIFile(filename: "/home/liquid/SA/Assignment-1/Assignment-1-IR/Test-Cases/demo.c", directory: "/mnt/c/Users/Liquid/Documents/\E7\A0\94\E7\A9\B6\E7\94\9F/\E9\9D\99\E6\80\81\E7\A8\8B\E5\BA\8F\E5\88\86\E6\9E\90", checksumkind: CSK_MD5, checksum: "cdd10c41d4dbbe45ab3a2151f745700c")
!10 = !{!0}
!11 = !{}
!12 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 200, elements: !13)
!13 = !{!14}
!14 = !DISubrange(count: 25)
!15 = !{i32 7, !"Dwarf Version", i32 5}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{i32 8, !"PIC Level", i32 2}
!19 = !{i32 7, !"PIE Level", i32 2}
!20 = !{i32 7, !"uwtable", i32 2}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 16.0.4 (https://github.com/bjjwwang/LLVM-compile 2259018fffaba36b5e50dce52fb5aa97b417ce4f)"}
!23 = !DILocation(line: 10, column: 5, scope: !2)
!24 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 16, type: !25, scopeLine: 16, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !11)
!25 = !DISubroutineType(types: !26)
!26 = !{!27}
!27 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!28 = !DILocalVariable(name: "injection", scope: !24, file: !3, line: 19, type: !6)
!29 = !DILocation(line: 19, column: 11, scope: !24)
!30 = !DILocation(line: 19, column: 23, scope: !24)
!31 = !DILocalVariable(name: "s", scope: !24, file: !3, line: 20, type: !6)
!32 = !DILocation(line: 20, column: 11, scope: !24)
!33 = !DILocation(line: 20, column: 15, scope: !24)
!34 = !DILocalVariable(name: "b", scope: !24, file: !3, line: 21, type: !6)
!35 = !DILocation(line: 21, column: 11, scope: !24)
!36 = !DILocation(line: 21, column: 15, scope: !24)
!37 = !DILocation(line: 22, column: 15, scope: !24)
!38 = !DILocation(line: 22, column: 5, scope: !24)
!39 = !DILocalVariable(name: "p", scope: !24, file: !3, line: 25, type: !40)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!41 = !DILocation(line: 25, column: 10, scope: !24)
!42 = !DILocalVariable(name: "a", scope: !24, file: !3, line: 26, type: !27)
!43 = !DILocation(line: 26, column: 9, scope: !24)
!44 = !DILocation(line: 27, column: 7, scope: !24)
!45 = !DILocation(line: 28, column: 6, scope: !24)
!46 = !DILocation(line: 28, column: 8, scope: !24)
!47 = !DILocation(line: 29, column: 16, scope: !24)
!48 = !DILocation(line: 29, column: 18, scope: !24)
!49 = !DILocation(line: 29, column: 5, scope: !24)
!50 = !DILocalVariable(name: "arr", scope: !24, file: !3, line: 32, type: !51)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 160, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 5)
!54 = !DILocation(line: 32, column: 9, scope: !24)
!55 = !DILocalVariable(name: "i", scope: !24, file: !3, line: 33, type: !27)
!56 = !DILocation(line: 33, column: 9, scope: !24)
!57 = !DILocation(line: 34, column: 5, scope: !24)
!58 = !DILocation(line: 34, column: 11, scope: !24)
!59 = !DILocation(line: 34, column: 13, scope: !24)
!60 = !DILocation(line: 35, column: 10, scope: !61)
!61 = distinct !DILexicalBlock(scope: !24, file: !3, line: 34, column: 18)
!62 = !DILocation(line: 35, column: 6, scope: !61)
!63 = !DILocation(line: 35, column: 14, scope: !61)
!64 = distinct !{!64, !57, !65, !66}
!65 = !DILocation(line: 36, column: 5, scope: !24)
!66 = !{!"llvm.loop.mustprogress"}
!67 = !DILocation(line: 38, column: 5, scope: !24)
