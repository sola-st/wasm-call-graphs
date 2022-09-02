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
  %12 = call fastcc { i8*, { i32 } } @functionDef1(i8* %11), !dbg !5
  %13 = extractvalue { i8*, { i32 } } %12, 0, !dbg !5
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
  %24 = extractvalue { i8*, { i32 } } %12, 1, 0, !dbg !5
  %25 = zext i32 %24 to i64, !dbg !6
  %26 = load i8*, i8** %memoryBase0, !dbg !6
  %27 = getelementptr inbounds i8, i8* %26, i64 %25, !dbg !6
  %28 = bitcast i8* %27 to i32*, !dbg !6
  %29 = load volatile i32, i32* %28, align 1, !dbg !6
  %30 = zext i32 %29 to i64, !dbg !7
  %31 = load i8*, i8** %context, !dbg !7
  %32 = ptrtoint i8* %31 to i64, !dbg !7
  %33 = and i64 %32, -2147483648, !dbg !7
  %34 = inttoptr i64 %33 to i8*, !dbg !7
  %35 = getelementptr inbounds i8, i8* %34, i64 ptrtoint (i8* @tableOffset0 to i64), !dbg !7
  %36 = getelementptr inbounds i8, i8* %35, i64 0, !dbg !7
  %37 = bitcast i8* %36 to i64**, !dbg !7
  %38 = load i64*, i64** %37, align 8, !dbg !7
  %39 = getelementptr inbounds i8, i8* %35, i64 8, !dbg !7
  %40 = bitcast i8* %39 to i64*, !dbg !7
  %41 = load i64, i64* %40, align 8, !dbg !7
  %42 = icmp ult i64 %30, %41, !dbg !7
  %43 = select i1 %42, i64 %30, i64 %41, !dbg !7
  %44 = getelementptr inbounds i64, i64* %38, i64 %43, !dbg !7
  %45 = load atomic i64, i64* %44 acquire, align 8, !dbg !7
  %46 = add i64 %45, ptrtoint (i8* @tableReferenceBias to i64), !dbg !7
  %47 = inttoptr i64 %46 to i8*, !dbg !7
  %48 = getelementptr inbounds i8, i8* %47, i64 24, !dbg !7
  %49 = bitcast i8* %48 to i64*, !dbg !7
  %50 = load i64, i64* %49, align 8, !dbg !7
  %51 = icmp ne i64 ptrtoint (i8* @typeId0 to i64), %50, !dbg !7
  %52 = bitcast i8* %47 to %Object*, !dbg !7
  br i1 %51, label %callIndirectFailTrap, label %callIndirectFailSkip, !dbg !7, !prof !8

callIndirectFailTrap:                             ; preds = %entry
  %53 = load i8*, i8** %context, !dbg !7
  call void @callIndirectFail(i8* %53, i64 %30, i64 udiv exact (i64 sub (i64 ptrtoint (i8* @tableOffset0 to i64), i64 6128), i64 16), %Object* %52, i64 ptrtoint (i8* @typeId0 to i64)), !dbg !7
  unreachable, !dbg !7

callIndirectFailSkip:                             ; preds = %entry
  %54 = getelementptr inbounds i8, i8* %47, i64 32, !dbg !7
  %55 = bitcast i8* %54 to { i8*, {} } (i8*)*, !dbg !7
  %56 = load i8*, i8** %context, !dbg !7
  %57 = call fastcc { i8*, {} } %55(i8* %56), !dbg !7
  %58 = extractvalue { i8*, {} } %57, 0, !dbg !7
  store i8* %58, i8** %context, !dbg !7
  %59 = load i8*, i8** %context, !dbg !7
  %60 = ptrtoint i8* %59 to i64, !dbg !7
  %61 = and i64 %60, -2147483648, !dbg !7
  %62 = inttoptr i64 %61 to i8*, !dbg !7
  %63 = getelementptr inbounds i8, i8* %62, i64 ptrtoint (i8* @memoryOffset0 to i64), !dbg !7
  %64 = bitcast i8* %63 to i8**, !dbg !7
  %65 = load i8*, i8** %64, align 8, !dbg !7
  store i8* %65, i8** %memoryBase0, !dbg !7
  %66 = getelementptr inbounds i8, i8* %62, i64 add (i64 ptrtoint (i8* @memoryOffset0 to i64), i64 16), !dbg !7
  %67 = bitcast i8* %66 to i64*, !dbg !7
  %68 = load i64, i64* %67, align 1, !dbg !7
  store i64 %68, i64* %memoryNumReservedBytesMinusGuardBytes0, !dbg !7
  br label %return, !dbg !9

return:                                           ; preds = %callIndirectFailSkip
  %69 = load i8*, i8** %context, !dbg !9
  %70 = insertvalue { i8*, {} } zeroinitializer, i8* %69, 0, !dbg !9
  ret { i8*, {} } %70, !dbg !9
}

define fastcc { i8*, { i32 } } @functionDef1(i8*) #0 prefix [4 x i64] [i64 1, i64 ptrtoint (i8* @functionDefMutableDatas1 to i64), i64 sub (i64 ptrtoint (i8* @biasedInstanceId to i64), i64 1), i64 ptrtoint (i8* @typeId1 to i64)] personality i32 ()* @__gxx_personality_v0 !dbg !10 {
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
  %11 = phi i32 [ 1337, %entry ]
  %12 = load i8*, i8** %context, !dbg !11
  %13 = insertvalue { i8*, { i32 } } zeroinitializer, i8* %12, 0, !dbg !11
  %14 = insertvalue { i8*, { i32 } } %13, i32 %11, 1, 0, !dbg !11
  ret { i8*, { i32 } } %14, !dbg !11
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

define fastcc { i8*, {} } @functionDef3(i8*) #0 prefix [4 x i64] [i64 1, i64 ptrtoint (i8* @functionDefMutableDatas3 to i64), i64 sub (i64 ptrtoint (i8* @biasedInstanceId to i64), i64 1), i64 ptrtoint (i8* @typeId0 to i64)] personality i32 ()* @__gxx_personality_v0 !dbg !14 {
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
  br label %return, !dbg !15

return:                                           ; preds = %entry
  %11 = load i8*, i8** %context, !dbg !15
  %12 = insertvalue { i8*, {} } zeroinitializer, i8* %11, 0, !dbg !15
  ret { i8*, {} } %12, !dbg !15
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
!7 = !DILocation(line: 2, scope: !3)
!8 = distinct !{!"branch_weights", i32 0, i32 2147483647}
!9 = !DILocation(line: 3, scope: !3)
!10 = distinct !DISubprogram(name: "functionDef1", linkageName: "functionDef1", scope: !1, file: !1, type: !4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!11 = !DILocation(line: 1, scope: !10)
!12 = distinct !DISubprogram(name: "functionDef2", linkageName: "functionDef2", scope: !1, file: !1, type: !4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!13 = !DILocation(line: 0, scope: !12)
!14 = distinct !DISubprogram(name: "functionDef3", linkageName: "functionDef3", scope: !1, file: !1, type: !4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!15 = !DILocation(line: 0, scope: !14)
