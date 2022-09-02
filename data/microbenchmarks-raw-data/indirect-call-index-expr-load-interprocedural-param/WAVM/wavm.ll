target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

%Object = type { i8 }

@typeId0 = external global i8
@typeId1 = external global i8
@tableOffset0 = external global i8
@memoryOffset0 = external global i8
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
  %memoryBase0 = alloca i8*
  %memoryNumReservedBytesMinusGuardBytes0 = alloca i64
  %context = alloca i8*
  store i8* %0, i8** %context
  %1 = load i8*, i8** %context
  %2 = ptrtoint i8* %1 to i64
  %3 = and i64 %2, -2147483648
  %4 = inttoptr i64 %3 to i8*
  %5 = getelementptr inbounds i8, i8* %4, i64 ptrtoint (i8* @memoryOffset0 to i64)
  %6 = bitcast i8* %5 to i8**
  %7 = load i8*, i8** %6, align 8
  store i8* %7, i8** %memoryBase0
  %8 = getelementptr inbounds i8, i8* %4, i64 add (i64 ptrtoint (i8* @memoryOffset0 to i64), i64 16)
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  store i64 %10, i64* %memoryNumReservedBytesMinusGuardBytes0
  %11 = load i8*, i8** %context, !dbg !5
  %12 = call fastcc { i8*, {} } @functionDef1(i8* %11, i32 1337), !dbg !5
  %13 = extractvalue { i8*, {} } %12, 0, !dbg !5
  store i8* %13, i8** %context, !dbg !5
  %14 = load i8*, i8** %context, !dbg !5
  %15 = ptrtoint i8* %14 to i64, !dbg !5
  %16 = and i64 %15, -2147483648, !dbg !5
  %17 = inttoptr i64 %16 to i8*, !dbg !5
  %18 = getelementptr inbounds i8, i8* %17, i64 ptrtoint (i8* @memoryOffset0 to i64), !dbg !5
  %19 = bitcast i8* %18 to i8**, !dbg !5
  %20 = load i8*, i8** %19, align 8, !dbg !5
  store i8* %20, i8** %memoryBase0, !dbg !5
  %21 = getelementptr inbounds i8, i8* %17, i64 add (i64 ptrtoint (i8* @memoryOffset0 to i64), i64 16), !dbg !5
  %22 = bitcast i8* %21 to i64*, !dbg !5
  %23 = load i64, i64* %22, align 1, !dbg !5
  store i64 %23, i64* %memoryNumReservedBytesMinusGuardBytes0, !dbg !5
  br label %return, !dbg !6

return:                                           ; preds = %entry
  %24 = load i8*, i8** %context, !dbg !6
  %25 = insertvalue { i8*, {} } zeroinitializer, i8* %24, 0, !dbg !6
  ret { i8*, {} } %25, !dbg !6
}

define fastcc { i8*, {} } @functionDef1(i8*, i32) #0 prefix [4 x i64] [i64 1, i64 ptrtoint (i8* @functionDefMutableDatas1 to i64), i64 sub (i64 ptrtoint (i8* @biasedInstanceId to i64), i64 1), i64 ptrtoint (i8* @typeId1 to i64)] personality i32 ()* @__gxx_personality_v0 !dbg !7 {
entry:
  %memoryBase0 = alloca i8*
  %memoryNumReservedBytesMinusGuardBytes0 = alloca i64
  %context = alloca i8*
  store i8* %0, i8** %context
  %2 = load i8*, i8** %context
  %3 = ptrtoint i8* %2 to i64
  %4 = and i64 %3, -2147483648
  %5 = inttoptr i64 %4 to i8*
  %6 = getelementptr inbounds i8, i8* %5, i64 ptrtoint (i8* @memoryOffset0 to i64)
  %7 = bitcast i8* %6 to i8**
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %memoryBase0
  %9 = getelementptr inbounds i8, i8* %5, i64 add (i64 ptrtoint (i8* @memoryOffset0 to i64), i64 16)
  %10 = bitcast i8* %9 to i64*
  %11 = load i64, i64* %10, align 1
  store i64 %11, i64* %memoryNumReservedBytesMinusGuardBytes0
  %12 = alloca i32
  store i32 %1, i32* %12
  %13 = load i32, i32* %12, !dbg !11
  %14 = zext i32 %13 to i64, !dbg !12
  %15 = load i8*, i8** %memoryBase0, !dbg !12
  %16 = getelementptr inbounds i8, i8* %15, i64 %14, !dbg !12
  %17 = bitcast i8* %16 to i32*, !dbg !12
  %18 = load volatile i32, i32* %17, align 1, !dbg !12
  %19 = zext i32 %18 to i64, !dbg !13
  %20 = load i8*, i8** %context, !dbg !13
  %21 = ptrtoint i8* %20 to i64, !dbg !13
  %22 = and i64 %21, -2147483648, !dbg !13
  %23 = inttoptr i64 %22 to i8*, !dbg !13
  %24 = getelementptr inbounds i8, i8* %23, i64 ptrtoint (i8* @tableOffset0 to i64), !dbg !13
  %25 = getelementptr inbounds i8, i8* %24, i64 0, !dbg !13
  %26 = bitcast i8* %25 to i64**, !dbg !13
  %27 = load i64*, i64** %26, align 8, !dbg !13
  %28 = getelementptr inbounds i8, i8* %24, i64 8, !dbg !13
  %29 = bitcast i8* %28 to i64*, !dbg !13
  %30 = load i64, i64* %29, align 8, !dbg !13
  %31 = icmp ult i64 %19, %30, !dbg !13
  %32 = select i1 %31, i64 %19, i64 %30, !dbg !13
  %33 = getelementptr inbounds i64, i64* %27, i64 %32, !dbg !13
  %34 = load atomic i64, i64* %33 acquire, align 8, !dbg !13
  %35 = add i64 %34, ptrtoint (i8* @tableReferenceBias to i64), !dbg !13
  %36 = inttoptr i64 %35 to i8*, !dbg !13
  %37 = getelementptr inbounds i8, i8* %36, i64 24, !dbg !13
  %38 = bitcast i8* %37 to i64*, !dbg !13
  %39 = load i64, i64* %38, align 8, !dbg !13
  %40 = icmp ne i64 ptrtoint (i8* @typeId0 to i64), %39, !dbg !13
  %41 = bitcast i8* %36 to %Object*, !dbg !13
  br i1 %40, label %callIndirectFailTrap, label %callIndirectFailSkip, !dbg !13, !prof !14

callIndirectFailTrap:                             ; preds = %entry
  %42 = load i8*, i8** %context, !dbg !13
  call void @callIndirectFail(i8* %42, i64 %19, i64 udiv exact (i64 sub (i64 ptrtoint (i8* @tableOffset0 to i64), i64 6128), i64 16), %Object* %41, i64 ptrtoint (i8* @typeId0 to i64)), !dbg !13
  unreachable, !dbg !13

callIndirectFailSkip:                             ; preds = %entry
  %43 = getelementptr inbounds i8, i8* %36, i64 32, !dbg !13
  %44 = bitcast i8* %43 to { i8*, {} } (i8*)*, !dbg !13
  %45 = load i8*, i8** %context, !dbg !13
  %46 = call fastcc { i8*, {} } %44(i8* %45), !dbg !13
  %47 = extractvalue { i8*, {} } %46, 0, !dbg !13
  store i8* %47, i8** %context, !dbg !13
  %48 = load i8*, i8** %context, !dbg !13
  %49 = ptrtoint i8* %48 to i64, !dbg !13
  %50 = and i64 %49, -2147483648, !dbg !13
  %51 = inttoptr i64 %50 to i8*, !dbg !13
  %52 = getelementptr inbounds i8, i8* %51, i64 ptrtoint (i8* @memoryOffset0 to i64), !dbg !13
  %53 = bitcast i8* %52 to i8**, !dbg !13
  %54 = load i8*, i8** %53, align 8, !dbg !13
  store i8* %54, i8** %memoryBase0, !dbg !13
  %55 = getelementptr inbounds i8, i8* %51, i64 add (i64 ptrtoint (i8* @memoryOffset0 to i64), i64 16), !dbg !13
  %56 = bitcast i8* %55 to i64*, !dbg !13
  %57 = load i64, i64* %56, align 1, !dbg !13
  store i64 %57, i64* %memoryNumReservedBytesMinusGuardBytes0, !dbg !13
  br label %return, !dbg !15

return:                                           ; preds = %callIndirectFailSkip
  %58 = load i8*, i8** %context, !dbg !15
  %59 = insertvalue { i8*, {} } zeroinitializer, i8* %58, 0, !dbg !15
  ret { i8*, {} } %59, !dbg !15
}

define fastcc { i8*, {} } @functionDef2(i8*) #0 prefix [4 x i64] [i64 1, i64 ptrtoint (i8* @functionDefMutableDatas2 to i64), i64 sub (i64 ptrtoint (i8* @biasedInstanceId to i64), i64 1), i64 ptrtoint (i8* @typeId0 to i64)] personality i32 ()* @__gxx_personality_v0 !dbg !16 {
entry:
  %memoryBase0 = alloca i8*
  %memoryNumReservedBytesMinusGuardBytes0 = alloca i64
  %context = alloca i8*
  store i8* %0, i8** %context
  %1 = load i8*, i8** %context
  %2 = ptrtoint i8* %1 to i64
  %3 = and i64 %2, -2147483648
  %4 = inttoptr i64 %3 to i8*
  %5 = getelementptr inbounds i8, i8* %4, i64 ptrtoint (i8* @memoryOffset0 to i64)
  %6 = bitcast i8* %5 to i8**
  %7 = load i8*, i8** %6, align 8
  store i8* %7, i8** %memoryBase0
  %8 = getelementptr inbounds i8, i8* %4, i64 add (i64 ptrtoint (i8* @memoryOffset0 to i64), i64 16)
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  store i64 %10, i64* %memoryNumReservedBytesMinusGuardBytes0
  br label %return, !dbg !17

return:                                           ; preds = %entry
  %11 = load i8*, i8** %context, !dbg !17
  %12 = insertvalue { i8*, {} } zeroinitializer, i8* %11, 0, !dbg !17
  ret { i8*, {} } %12, !dbg !17
}

define fastcc { i8*, {} } @functionDef3(i8*) #0 prefix [4 x i64] [i64 1, i64 ptrtoint (i8* @functionDefMutableDatas3 to i64), i64 sub (i64 ptrtoint (i8* @biasedInstanceId to i64), i64 1), i64 ptrtoint (i8* @typeId0 to i64)] personality i32 ()* @__gxx_personality_v0 !dbg !18 {
entry:
  %memoryBase0 = alloca i8*
  %memoryNumReservedBytesMinusGuardBytes0 = alloca i64
  %context = alloca i8*
  store i8* %0, i8** %context
  %1 = load i8*, i8** %context
  %2 = ptrtoint i8* %1 to i64
  %3 = and i64 %2, -2147483648
  %4 = inttoptr i64 %3 to i8*
  %5 = getelementptr inbounds i8, i8* %4, i64 ptrtoint (i8* @memoryOffset0 to i64)
  %6 = bitcast i8* %5 to i8**
  %7 = load i8*, i8** %6, align 8
  store i8* %7, i8** %memoryBase0
  %8 = getelementptr inbounds i8, i8* %4, i64 add (i64 ptrtoint (i8* @memoryOffset0 to i64), i64 16)
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  store i64 %10, i64* %memoryNumReservedBytesMinusGuardBytes0
  br label %return, !dbg !19

return:                                           ; preds = %entry
  %11 = load i8*, i8** %context, !dbg !19
  %12 = insertvalue { i8*, {} } zeroinitializer, i8* %11, 0, !dbg !19
  ret { i8*, {} } %12, !dbg !19
}

declare void @callIndirectFail(i8*, i64, i64, %Object*, i64)

attributes #0 = { "no-frame-pointer-elim"="true" "probe-stack"="wavm_probe_stack" }

!llvm.dbg.cu = !{!0}

!0 = distinct !DICompileUnit(language: 65535, file: !1, producer: "WAVM", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!1 = !DIFile(filename: "unknown", directory: "unknown")
!2 = !{}
!3 = distinct !DISubprogram(name: "functionDef0", linkageName: "functionDef0", scope: !1, file: !1, type: !4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!4 = !DISubroutineType(types: !2)
!5 = !DILocation(line: 1, scope: !3)
!6 = !DILocation(line: 2, scope: !3)
!7 = distinct !DISubprogram(name: "functionDef1", linkageName: "functionDef1", scope: !1, file: !1, type: !8, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "i32", size: 32, encoding: DW_ATE_signed)
!11 = !DILocation(line: 0, scope: !7)
!12 = !DILocation(line: 1, scope: !7)
!13 = !DILocation(line: 2, scope: !7)
!14 = distinct !{!"branch_weights", i32 0, i32 2147483647}
!15 = !DILocation(line: 3, scope: !7)
!16 = distinct !DISubprogram(name: "functionDef2", linkageName: "functionDef2", scope: !1, file: !1, type: !4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!17 = !DILocation(line: 0, scope: !16)
!18 = distinct !DISubprogram(name: "functionDef3", linkageName: "functionDef3", scope: !1, file: !1, type: !4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!19 = !DILocation(line: 0, scope: !18)
