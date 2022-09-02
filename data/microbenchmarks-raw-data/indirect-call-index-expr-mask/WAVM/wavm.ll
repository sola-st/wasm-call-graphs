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
  %13 = and i32 %12, 1, !dbg !6
  %14 = zext i32 %13 to i64, !dbg !7
  %15 = load i8*, i8** %context, !dbg !7
  %16 = ptrtoint i8* %15 to i64, !dbg !7
  %17 = and i64 %16, -2147483648, !dbg !7
  %18 = inttoptr i64 %17 to i8*, !dbg !7
  %19 = getelementptr inbounds i8, i8* %18, i64 ptrtoint (i8* @tableOffset0 to i64), !dbg !7
  %20 = getelementptr inbounds i8, i8* %19, i64 0, !dbg !7
  %21 = bitcast i8* %20 to i64**, !dbg !7
  %22 = load i64*, i64** %21, align 8, !dbg !7
  %23 = getelementptr inbounds i8, i8* %19, i64 8, !dbg !7
  %24 = bitcast i8* %23 to i64*, !dbg !7
  %25 = load i64, i64* %24, align 8, !dbg !7
  %26 = icmp ult i64 %14, %25, !dbg !7
  %27 = select i1 %26, i64 %14, i64 %25, !dbg !7
  %28 = getelementptr inbounds i64, i64* %22, i64 %27, !dbg !7
  %29 = load atomic i64, i64* %28 acquire, align 8, !dbg !7
  %30 = add i64 %29, ptrtoint (i8* @tableReferenceBias to i64), !dbg !7
  %31 = inttoptr i64 %30 to i8*, !dbg !7
  %32 = getelementptr inbounds i8, i8* %31, i64 24, !dbg !7
  %33 = bitcast i8* %32 to i64*, !dbg !7
  %34 = load i64, i64* %33, align 8, !dbg !7
  %35 = icmp ne i64 ptrtoint (i8* @typeId0 to i64), %34, !dbg !7
  %36 = bitcast i8* %31 to %Object*, !dbg !7
  br i1 %35, label %callIndirectFailTrap, label %callIndirectFailSkip, !dbg !7, !prof !8

callIndirectFailTrap:                             ; preds = %entry
  %37 = load i8*, i8** %context, !dbg !7
  call void @callIndirectFail(i8* %37, i64 %14, i64 udiv exact (i64 sub (i64 ptrtoint (i8* @tableOffset0 to i64), i64 6128), i64 16), %Object* %36, i64 ptrtoint (i8* @typeId0 to i64)), !dbg !7
  unreachable, !dbg !7

callIndirectFailSkip:                             ; preds = %entry
  %38 = getelementptr inbounds i8, i8* %31, i64 32, !dbg !7
  %39 = bitcast i8* %38 to { i8*, {} } (i8*)*, !dbg !7
  %40 = load i8*, i8** %context, !dbg !7
  %41 = call fastcc { i8*, {} } %39(i8* %40), !dbg !7
  %42 = extractvalue { i8*, {} } %41, 0, !dbg !7
  store i8* %42, i8** %context, !dbg !7
  %43 = load i8*, i8** %context, !dbg !7
  %44 = ptrtoint i8* %43 to i64, !dbg !7
  %45 = and i64 %44, -2147483648, !dbg !7
  %46 = inttoptr i64 %45 to i8*, !dbg !7
  br label %return, !dbg !9

return:                                           ; preds = %callIndirectFailSkip
  %47 = load i8*, i8** %context, !dbg !9
  %48 = insertvalue { i8*, {} } zeroinitializer, i8* %47, 0, !dbg !9
  ret { i8*, {} } %48, !dbg !9
}

define fastcc { i8*, { i32 } } @functionDef1(i8*) #0 prefix [4 x i64] [i64 1, i64 ptrtoint (i8* @functionDefMutableDatas1 to i64), i64 sub (i64 ptrtoint (i8* @biasedInstanceId to i64), i64 1), i64 ptrtoint (i8* @typeId1 to i64)] personality i32 ()* @__gxx_personality_v0 !dbg !10 {
entry:
  %context = alloca i8*
  store i8* %0, i8** %context
  %1 = load i8*, i8** %context
  %2 = ptrtoint i8* %1 to i64
  %3 = and i64 %2, -2147483648
  %4 = inttoptr i64 %3 to i8*
  br label %return, !dbg !11

return:                                           ; preds = %entry
  %5 = phi i32 [ 1, %entry ]
  %6 = load i8*, i8** %context, !dbg !11
  %7 = insertvalue { i8*, { i32 } } zeroinitializer, i8* %6, 0, !dbg !11
  %8 = insertvalue { i8*, { i32 } } %7, i32 %5, 1, 0, !dbg !11
  ret { i8*, { i32 } } %8, !dbg !11
}

define fastcc { i8*, {} } @functionDef2(i8*) #0 prefix [4 x i64] [i64 1, i64 ptrtoint (i8* @functionDefMutableDatas2 to i64), i64 sub (i64 ptrtoint (i8* @biasedInstanceId to i64), i64 1), i64 ptrtoint (i8* @typeId0 to i64)] personality i32 ()* @__gxx_personality_v0 !dbg !12 {
entry:
  %context = alloca i8*
  store i8* %0, i8** %context
  %1 = load i8*, i8** %context
  %2 = ptrtoint i8* %1 to i64
  %3 = and i64 %2, -2147483648
  %4 = inttoptr i64 %3 to i8*
  br label %return, !dbg !13

return:                                           ; preds = %entry
  %5 = load i8*, i8** %context, !dbg !13
  %6 = insertvalue { i8*, {} } zeroinitializer, i8* %5, 0, !dbg !13
  ret { i8*, {} } %6, !dbg !13
}

define fastcc { i8*, {} } @functionDef3(i8*) #0 prefix [4 x i64] [i64 1, i64 ptrtoint (i8* @functionDefMutableDatas3 to i64), i64 sub (i64 ptrtoint (i8* @biasedInstanceId to i64), i64 1), i64 ptrtoint (i8* @typeId0 to i64)] personality i32 ()* @__gxx_personality_v0 !dbg !14 {
entry:
  %context = alloca i8*
  store i8* %0, i8** %context
  %1 = load i8*, i8** %context
  %2 = ptrtoint i8* %1 to i64
  %3 = and i64 %2, -2147483648
  %4 = inttoptr i64 %3 to i8*
  br label %return, !dbg !15

return:                                           ; preds = %entry
  %5 = load i8*, i8** %context, !dbg !15
  %6 = insertvalue { i8*, {} } zeroinitializer, i8* %5, 0, !dbg !15
  ret { i8*, {} } %6, !dbg !15
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
!6 = !DILocation(line: 2, scope: !3)
!7 = !DILocation(line: 3, scope: !3)
!8 = distinct !{!"branch_weights", i32 0, i32 2147483647}
!9 = !DILocation(line: 4, scope: !3)
!10 = distinct !DISubprogram(name: "functionDef1", linkageName: "functionDef1", scope: !1, file: !1, type: !4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!11 = !DILocation(line: 1, scope: !10)
!12 = distinct !DISubprogram(name: "functionDef2", linkageName: "functionDef2", scope: !1, file: !1, type: !4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!13 = !DILocation(line: 0, scope: !12)
!14 = distinct !DISubprogram(name: "functionDef3", linkageName: "functionDef3", scope: !1, file: !1, type: !4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!15 = !DILocation(line: 0, scope: !14)
