target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

%Object = type { i8 }

@typeId0 = external global i8
@typeId1 = external global i8
@tableOffset0 = external global i8
@biasedInstanceId = external global i8
@tableReferenceBias = external global i8
@unoptimizableOne = external global i8
@runtimeExceptionTypeInfo = external global i8
@functionDefMutableDatas0 = external global i8
@functionDefMutableDatas1 = external global i8
@functionDefMutableDatas2 = external global i8
@functionDefMutableDatas3 = external global i8

declare i32 @__gxx_personality_v0()

define fastcc { i8*, {} } @functionDef0(i8*) #0 prefix [4 x i64] [i64 1, i64 ptrtoint (i8* @functionDefMutableDatas0 to i64), i64 sub (i64 ptrtoint (i8* @biasedInstanceId to i64), i64 1), i64 ptrtoint (i8* @typeId0 to i64)] personality i32 ()* @__gxx_personality_v0 !dbg !3 {
entry:
  %context = alloca i8*
  store i8* %0, i8** %context
  %1 = load i8*, i8** %context
  %2 = ptrtoint i8* %1 to i64
  %3 = and i64 %2, -2147483648
  %4 = inttoptr i64 %3 to i8*
  %5 = load i8*, i8** %context, !dbg !5
  %6 = call fastcc { i8*, { i32 } } @functionDef1(i8* %5), !dbg !5
  %7 = extractvalue { i8*, { i32 } } %6, 0, !dbg !5
  store i8* %7, i8** %context, !dbg !5
  %8 = load i8*, i8** %context, !dbg !5
  %9 = ptrtoint i8* %8 to i64, !dbg !5
  %10 = and i64 %9, -2147483648, !dbg !5
  %11 = inttoptr i64 %10 to i8*, !dbg !5
  %12 = extractvalue { i8*, { i32 } } %6, 1, 0, !dbg !5
  %13 = zext i32 %12 to i64, !dbg !6
  %14 = load i8*, i8** %context, !dbg !6
  %15 = ptrtoint i8* %14 to i64, !dbg !6
  %16 = and i64 %15, -2147483648, !dbg !6
  %17 = inttoptr i64 %16 to i8*, !dbg !6
  %18 = getelementptr inbounds i8, i8* %17, i64 ptrtoint (i8* @tableOffset0 to i64), !dbg !6
  %19 = getelementptr inbounds i8, i8* %18, i64 0, !dbg !6
  %20 = bitcast i8* %19 to i64**, !dbg !6
  %21 = load i64*, i64** %20, align 8, !dbg !6
  %22 = getelementptr inbounds i8, i8* %18, i64 8, !dbg !6
  %23 = bitcast i8* %22 to i64*, !dbg !6
  %24 = load i64, i64* %23, align 8, !dbg !6
  %25 = icmp ult i64 %13, %24, !dbg !6
  %26 = select i1 %25, i64 %13, i64 %24, !dbg !6
  %27 = getelementptr inbounds i64, i64* %21, i64 %26, !dbg !6
  %28 = load atomic i64, i64* %27 acquire, align 8, !dbg !6
  %29 = add i64 %28, ptrtoint (i8* @tableReferenceBias to i64), !dbg !6
  %30 = inttoptr i64 %29 to i8*, !dbg !6
  %31 = getelementptr inbounds i8, i8* %30, i64 24, !dbg !6
  %32 = bitcast i8* %31 to i64*, !dbg !6
  %33 = load i64, i64* %32, align 8, !dbg !6
  %34 = icmp ne i64 ptrtoint (i8* @typeId0 to i64), %33, !dbg !6
  %35 = bitcast i8* %30 to %Object*, !dbg !6
  br i1 %34, label %callIndirectFailTrap, label %callIndirectFailSkip, !dbg !6, !prof !7

callIndirectFailTrap:                             ; preds = %entry
  %36 = load i8*, i8** %context, !dbg !6
  call void @callIndirectFail(i8* %36, i64 %13, i64 udiv exact (i64 sub (i64 ptrtoint (i8* @tableOffset0 to i64), i64 6128), i64 16), %Object* %35, i64 ptrtoint (i8* @typeId0 to i64)), !dbg !6
  unreachable, !dbg !6

callIndirectFailSkip:                             ; preds = %entry
  %37 = getelementptr inbounds i8, i8* %30, i64 32, !dbg !6
  %38 = bitcast i8* %37 to { i8*, {} } (i8*)*, !dbg !6
  %39 = load i8*, i8** %context, !dbg !6
  %40 = call fastcc { i8*, {} } %38(i8* %39), !dbg !6
  %41 = extractvalue { i8*, {} } %40, 0, !dbg !6
  store i8* %41, i8** %context, !dbg !6
  %42 = load i8*, i8** %context, !dbg !6
  %43 = ptrtoint i8* %42 to i64, !dbg !6
  %44 = and i64 %43, -2147483648, !dbg !6
  %45 = inttoptr i64 %44 to i8*, !dbg !6
  br label %return, !dbg !8

return:                                           ; preds = %callIndirectFailSkip
  %46 = load i8*, i8** %context, !dbg !8
  %47 = insertvalue { i8*, {} } zeroinitializer, i8* %46, 0, !dbg !8
  ret { i8*, {} } %47, !dbg !8
}

define fastcc { i8*, { i32 } } @functionDef1(i8*) #0 prefix [4 x i64] [i64 1, i64 ptrtoint (i8* @functionDefMutableDatas1 to i64), i64 sub (i64 ptrtoint (i8* @biasedInstanceId to i64), i64 1), i64 ptrtoint (i8* @typeId1 to i64)] personality i32 ()* @__gxx_personality_v0 !dbg !9 {
entry:
  %context = alloca i8*
  store i8* %0, i8** %context
  %1 = load i8*, i8** %context
  %2 = ptrtoint i8* %1 to i64
  %3 = and i64 %2, -2147483648
  %4 = inttoptr i64 %3 to i8*
  br label %return, !dbg !10

return:                                           ; preds = %entry
  %5 = phi i32 [ 1, %entry ]
  %6 = load i8*, i8** %context, !dbg !10
  %7 = insertvalue { i8*, { i32 } } zeroinitializer, i8* %6, 0, !dbg !10
  %8 = insertvalue { i8*, { i32 } } %7, i32 %5, 1, 0, !dbg !10
  ret { i8*, { i32 } } %8, !dbg !10
}

define fastcc { i8*, {} } @functionDef2(i8*) #0 prefix [4 x i64] [i64 1, i64 ptrtoint (i8* @functionDefMutableDatas2 to i64), i64 sub (i64 ptrtoint (i8* @biasedInstanceId to i64), i64 1), i64 ptrtoint (i8* @typeId0 to i64)] personality i32 ()* @__gxx_personality_v0 !dbg !11 {
entry:
  %context = alloca i8*
  store i8* %0, i8** %context
  %1 = load i8*, i8** %context
  %2 = ptrtoint i8* %1 to i64
  %3 = and i64 %2, -2147483648
  %4 = inttoptr i64 %3 to i8*
  br label %return, !dbg !12

return:                                           ; preds = %entry
  %5 = load i8*, i8** %context, !dbg !12
  %6 = insertvalue { i8*, {} } zeroinitializer, i8* %5, 0, !dbg !12
  ret { i8*, {} } %6, !dbg !12
}

define fastcc { i8*, {} } @functionDef3(i8*) #0 prefix [4 x i64] [i64 1, i64 ptrtoint (i8* @functionDefMutableDatas3 to i64), i64 sub (i64 ptrtoint (i8* @biasedInstanceId to i64), i64 1), i64 ptrtoint (i8* @typeId0 to i64)] personality i32 ()* @__gxx_personality_v0 !dbg !13 {
entry:
  %context = alloca i8*
  store i8* %0, i8** %context
  %1 = load i8*, i8** %context
  %2 = ptrtoint i8* %1 to i64
  %3 = and i64 %2, -2147483648
  %4 = inttoptr i64 %3 to i8*
  br label %return, !dbg !14

return:                                           ; preds = %entry
  %5 = load i8*, i8** %context, !dbg !14
  %6 = insertvalue { i8*, {} } zeroinitializer, i8* %5, 0, !dbg !14
  ret { i8*, {} } %6, !dbg !14
}

declare void @callIndirectFail(i8*, i64, i64, %Object*, i64)

attributes #0 = { "no-frame-pointer-elim"="true" "probe-stack"="wavm_probe_stack" }

!llvm.dbg.cu = !{!0}

!0 = distinct !DICompileUnit(language: 65535, file: !1, producer: "WAVM", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!1 = !DIFile(filename: "unknown", directory: "unknown")
!2 = !{}
!3 = distinct !DISubprogram(name: "functionDef0", linkageName: "functionDef0", scope: !1, file: !1, type: !4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!4 = !DISubroutineType(types: !2)
!5 = !DILocation(line: 0, scope: !3)
!6 = !DILocation(line: 1, scope: !3)
!7 = distinct !{!"branch_weights", i32 0, i32 2147483647}
!8 = !DILocation(line: 2, scope: !3)
!9 = distinct !DISubprogram(name: "functionDef1", linkageName: "functionDef1", scope: !1, file: !1, type: !4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!10 = !DILocation(line: 1, scope: !9)
!11 = distinct !DISubprogram(name: "functionDef2", linkageName: "functionDef2", scope: !1, file: !1, type: !4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!12 = !DILocation(line: 0, scope: !11)
!13 = distinct !DISubprogram(name: "functionDef3", linkageName: "functionDef3", scope: !1, file: !1, type: !4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!14 = !DILocation(line: 0, scope: !13)
