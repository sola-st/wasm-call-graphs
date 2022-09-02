target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

%Object = type { i8 }

@typeId0 = external global i8
@tableOffset0 = external global i8
@memoryOffset0 = external global i8
@global0 = external global i8
@biasedInstanceId = external global i8
@tableReferenceBias = external global i8
@unoptimizableOne = external global i8
@runtimeExceptionTypeInfo = external global i8
@functionDefMutableDatas0 = external global i8
@functionDefMutableDatas1 = external global i8
@functionDefMutableDatas2 = external global i8

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
  %11 = load i8*, i8** %memoryBase0, !dbg !5
  %12 = getelementptr inbounds i8, i8* %11, i64 1337, !dbg !5
  %13 = bitcast i8* %12 to i32*, !dbg !5
  %14 = load volatile i32, i32* %13, align 1, !dbg !5
  %15 = zext i32 %14 to i64, !dbg !6
  %16 = load i8*, i8** %context, !dbg !6
  %17 = ptrtoint i8* %16 to i64, !dbg !6
  %18 = and i64 %17, -2147483648, !dbg !6
  %19 = inttoptr i64 %18 to i8*, !dbg !6
  %20 = getelementptr inbounds i8, i8* %19, i64 ptrtoint (i8* @tableOffset0 to i64), !dbg !6
  %21 = getelementptr inbounds i8, i8* %20, i64 0, !dbg !6
  %22 = bitcast i8* %21 to i64**, !dbg !6
  %23 = load i64*, i64** %22, align 8, !dbg !6
  %24 = getelementptr inbounds i8, i8* %20, i64 8, !dbg !6
  %25 = bitcast i8* %24 to i64*, !dbg !6
  %26 = load i64, i64* %25, align 8, !dbg !6
  %27 = icmp ult i64 %15, %26, !dbg !6
  %28 = select i1 %27, i64 %15, i64 %26, !dbg !6
  %29 = getelementptr inbounds i64, i64* %23, i64 %28, !dbg !6
  %30 = load atomic i64, i64* %29 acquire, align 8, !dbg !6
  %31 = add i64 %30, ptrtoint (i8* @tableReferenceBias to i64), !dbg !6
  %32 = inttoptr i64 %31 to i8*, !dbg !6
  %33 = getelementptr inbounds i8, i8* %32, i64 24, !dbg !6
  %34 = bitcast i8* %33 to i64*, !dbg !6
  %35 = load i64, i64* %34, align 8, !dbg !6
  %36 = icmp ne i64 ptrtoint (i8* @typeId0 to i64), %35, !dbg !6
  %37 = bitcast i8* %32 to %Object*, !dbg !6
  br i1 %36, label %callIndirectFailTrap, label %callIndirectFailSkip, !dbg !6, !prof !7

callIndirectFailTrap:                             ; preds = %entry
  %38 = load i8*, i8** %context, !dbg !6
  call void @callIndirectFail(i8* %38, i64 %15, i64 udiv exact (i64 sub (i64 ptrtoint (i8* @tableOffset0 to i64), i64 6128), i64 16), %Object* %37, i64 ptrtoint (i8* @typeId0 to i64)), !dbg !6
  unreachable, !dbg !6

callIndirectFailSkip:                             ; preds = %entry
  %39 = getelementptr inbounds i8, i8* %32, i64 32, !dbg !6
  %40 = bitcast i8* %39 to { i8*, {} } (i8*)*, !dbg !6
  %41 = load i8*, i8** %context, !dbg !6
  %42 = call fastcc { i8*, {} } %40(i8* %41), !dbg !6
  %43 = extractvalue { i8*, {} } %42, 0, !dbg !6
  store i8* %43, i8** %context, !dbg !6
  %44 = load i8*, i8** %context, !dbg !6
  %45 = ptrtoint i8* %44 to i64, !dbg !6
  %46 = and i64 %45, -2147483648, !dbg !6
  %47 = inttoptr i64 %46 to i8*, !dbg !6
  %48 = getelementptr inbounds i8, i8* %47, i64 ptrtoint (i8* @memoryOffset0 to i64), !dbg !6
  %49 = bitcast i8* %48 to i8**, !dbg !6
  %50 = load i8*, i8** %49, align 8, !dbg !6
  store i8* %50, i8** %memoryBase0, !dbg !6
  %51 = getelementptr inbounds i8, i8* %47, i64 add (i64 ptrtoint (i8* @memoryOffset0 to i64), i64 16), !dbg !6
  %52 = bitcast i8* %51 to i64*, !dbg !6
  %53 = load i64, i64* %52, align 1, !dbg !6
  store i64 %53, i64* %memoryNumReservedBytesMinusGuardBytes0, !dbg !6
  br label %return, !dbg !8

return:                                           ; preds = %callIndirectFailSkip
  %54 = load i8*, i8** %context, !dbg !8
  %55 = insertvalue { i8*, {} } zeroinitializer, i8* %54, 0, !dbg !8
  ret { i8*, {} } %55, !dbg !8
}

define fastcc { i8*, {} } @functionDef1(i8*) #0 prefix [4 x i64] [i64 1, i64 ptrtoint (i8* @functionDefMutableDatas1 to i64), i64 sub (i64 ptrtoint (i8* @biasedInstanceId to i64), i64 1), i64 ptrtoint (i8* @typeId0 to i64)] personality i32 ()* @__gxx_personality_v0 !dbg !9 {
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
  br label %return, !dbg !10

return:                                           ; preds = %entry
  %11 = load i8*, i8** %context, !dbg !10
  %12 = insertvalue { i8*, {} } zeroinitializer, i8* %11, 0, !dbg !10
  ret { i8*, {} } %12, !dbg !10
}

define fastcc { i8*, {} } @functionDef2(i8*) #0 prefix [4 x i64] [i64 1, i64 ptrtoint (i8* @functionDefMutableDatas2 to i64), i64 sub (i64 ptrtoint (i8* @biasedInstanceId to i64), i64 1), i64 ptrtoint (i8* @typeId0 to i64)] personality i32 ()* @__gxx_personality_v0 !dbg !11 {
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
  br label %return, !dbg !12

return:                                           ; preds = %entry
  %11 = load i8*, i8** %context, !dbg !12
  %12 = insertvalue { i8*, {} } zeroinitializer, i8* %11, 0, !dbg !12
  ret { i8*, {} } %12, !dbg !12
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
!7 = distinct !{!"branch_weights", i32 0, i32 2147483647}
!8 = !DILocation(line: 3, scope: !3)
!9 = distinct !DISubprogram(name: "functionDef1", linkageName: "functionDef1", scope: !1, file: !1, type: !4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!10 = !DILocation(line: 0, scope: !9)
!11 = distinct !DISubprogram(name: "functionDef2", linkageName: "functionDef2", scope: !1, file: !1, type: !4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!12 = !DILocation(line: 0, scope: !11)
