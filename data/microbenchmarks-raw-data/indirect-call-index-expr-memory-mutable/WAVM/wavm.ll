target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

%Object = type { i8 }

@typeId0 = external global i8
@tableOffset0 = external global i8
@memoryOffset0 = external global i8
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
  store volatile i32 1, i32* %13, align 1, !dbg !5
  %14 = load i8*, i8** %memoryBase0, !dbg !6
  %15 = getelementptr inbounds i8, i8* %14, i64 1337, !dbg !6
  %16 = bitcast i8* %15 to i32*, !dbg !6
  %17 = load volatile i32, i32* %16, align 1, !dbg !6
  %18 = zext i32 %17 to i64, !dbg !7
  %19 = load i8*, i8** %context, !dbg !7
  %20 = ptrtoint i8* %19 to i64, !dbg !7
  %21 = and i64 %20, -2147483648, !dbg !7
  %22 = inttoptr i64 %21 to i8*, !dbg !7
  %23 = getelementptr inbounds i8, i8* %22, i64 ptrtoint (i8* @tableOffset0 to i64), !dbg !7
  %24 = getelementptr inbounds i8, i8* %23, i64 0, !dbg !7
  %25 = bitcast i8* %24 to i64**, !dbg !7
  %26 = load i64*, i64** %25, align 8, !dbg !7
  %27 = getelementptr inbounds i8, i8* %23, i64 8, !dbg !7
  %28 = bitcast i8* %27 to i64*, !dbg !7
  %29 = load i64, i64* %28, align 8, !dbg !7
  %30 = icmp ult i64 %18, %29, !dbg !7
  %31 = select i1 %30, i64 %18, i64 %29, !dbg !7
  %32 = getelementptr inbounds i64, i64* %26, i64 %31, !dbg !7
  %33 = load atomic i64, i64* %32 acquire, align 8, !dbg !7
  %34 = add i64 %33, ptrtoint (i8* @tableReferenceBias to i64), !dbg !7
  %35 = inttoptr i64 %34 to i8*, !dbg !7
  %36 = getelementptr inbounds i8, i8* %35, i64 24, !dbg !7
  %37 = bitcast i8* %36 to i64*, !dbg !7
  %38 = load i64, i64* %37, align 8, !dbg !7
  %39 = icmp ne i64 ptrtoint (i8* @typeId0 to i64), %38, !dbg !7
  %40 = bitcast i8* %35 to %Object*, !dbg !7
  br i1 %39, label %callIndirectFailTrap, label %callIndirectFailSkip, !dbg !7, !prof !8

callIndirectFailTrap:                             ; preds = %entry
  %41 = load i8*, i8** %context, !dbg !7
  call void @callIndirectFail(i8* %41, i64 %18, i64 udiv exact (i64 sub (i64 ptrtoint (i8* @tableOffset0 to i64), i64 6128), i64 16), %Object* %40, i64 ptrtoint (i8* @typeId0 to i64)), !dbg !7
  unreachable, !dbg !7

callIndirectFailSkip:                             ; preds = %entry
  %42 = getelementptr inbounds i8, i8* %35, i64 32, !dbg !7
  %43 = bitcast i8* %42 to { i8*, {} } (i8*)*, !dbg !7
  %44 = load i8*, i8** %context, !dbg !7
  %45 = call fastcc { i8*, {} } %43(i8* %44), !dbg !7
  %46 = extractvalue { i8*, {} } %45, 0, !dbg !7
  store i8* %46, i8** %context, !dbg !7
  %47 = load i8*, i8** %context, !dbg !7
  %48 = ptrtoint i8* %47 to i64, !dbg !7
  %49 = and i64 %48, -2147483648, !dbg !7
  %50 = inttoptr i64 %49 to i8*, !dbg !7
  %51 = getelementptr inbounds i8, i8* %50, i64 ptrtoint (i8* @memoryOffset0 to i64), !dbg !7
  %52 = bitcast i8* %51 to i8**, !dbg !7
  %53 = load i8*, i8** %52, align 8, !dbg !7
  store i8* %53, i8** %memoryBase0, !dbg !7
  %54 = getelementptr inbounds i8, i8* %50, i64 add (i64 ptrtoint (i8* @memoryOffset0 to i64), i64 16), !dbg !7
  %55 = bitcast i8* %54 to i64*, !dbg !7
  %56 = load i64, i64* %55, align 1, !dbg !7
  store i64 %56, i64* %memoryNumReservedBytesMinusGuardBytes0, !dbg !7
  br label %return, !dbg !9

return:                                           ; preds = %callIndirectFailSkip
  %57 = load i8*, i8** %context, !dbg !9
  %58 = insertvalue { i8*, {} } zeroinitializer, i8* %57, 0, !dbg !9
  ret { i8*, {} } %58, !dbg !9
}

define fastcc { i8*, {} } @functionDef1(i8*) #0 prefix [4 x i64] [i64 1, i64 ptrtoint (i8* @functionDefMutableDatas1 to i64), i64 sub (i64 ptrtoint (i8* @biasedInstanceId to i64), i64 1), i64 ptrtoint (i8* @typeId0 to i64)] personality i32 ()* @__gxx_personality_v0 !dbg !10 {
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
  br label %return, !dbg !11

return:                                           ; preds = %entry
  %11 = load i8*, i8** %context, !dbg !11
  %12 = insertvalue { i8*, {} } zeroinitializer, i8* %11, 0, !dbg !11
  ret { i8*, {} } %12, !dbg !11
}

define fastcc { i8*, {} } @functionDef2(i8*) #0 prefix [4 x i64] [i64 1, i64 ptrtoint (i8* @functionDefMutableDatas2 to i64), i64 sub (i64 ptrtoint (i8* @biasedInstanceId to i64), i64 1), i64 ptrtoint (i8* @typeId0 to i64)] personality i32 ()* @__gxx_personality_v0 !dbg !12 {
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
  br label %return, !dbg !13

return:                                           ; preds = %entry
  %11 = load i8*, i8** %context, !dbg !13
  %12 = insertvalue { i8*, {} } zeroinitializer, i8* %11, 0, !dbg !13
  ret { i8*, {} } %12, !dbg !13
}

declare void @callIndirectFail(i8*, i64, i64, %Object*, i64)

attributes #0 = { "no-frame-pointer-elim"="true" "probe-stack"="wavm_probe_stack" }

!llvm.dbg.cu = !{!0}

!0 = distinct !DICompileUnit(language: 65535, file: !1, producer: "WAVM", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!1 = !DIFile(filename: "unknown", directory: "unknown")
!2 = !{}
!3 = distinct !DISubprogram(name: "functionDef0", linkageName: "functionDef0", scope: !1, file: !1, type: !4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!4 = !DISubroutineType(types: !2)
!5 = !DILocation(line: 2, scope: !3)
!6 = !DILocation(line: 4, scope: !3)
!7 = !DILocation(line: 5, scope: !3)
!8 = distinct !{!"branch_weights", i32 0, i32 2147483647}
!9 = !DILocation(line: 6, scope: !3)
!10 = distinct !DISubprogram(name: "functionDef1", linkageName: "functionDef1", scope: !1, file: !1, type: !4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!11 = !DILocation(line: 0, scope: !10)
!12 = distinct !DISubprogram(name: "functionDef2", linkageName: "functionDef2", scope: !1, file: !1, type: !4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!13 = !DILocation(line: 0, scope: !12)
