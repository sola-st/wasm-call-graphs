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
  %6 = call fastcc { i8*, {} } @functionDef1(i8* %5, i32 1), !dbg !5
  %7 = extractvalue { i8*, {} } %6, 0, !dbg !5
  store i8* %7, i8** %context, !dbg !5
  %8 = load i8*, i8** %context, !dbg !5
  %9 = ptrtoint i8* %8 to i64, !dbg !5
  %10 = and i64 %9, -2147483648, !dbg !5
  %11 = inttoptr i64 %10 to i8*, !dbg !5
  br label %return, !dbg !6

return:                                           ; preds = %entry
  %12 = load i8*, i8** %context, !dbg !6
  %13 = insertvalue { i8*, {} } zeroinitializer, i8* %12, 0, !dbg !6
  ret { i8*, {} } %13, !dbg !6
}

define fastcc { i8*, {} } @functionDef1(i8*, i32) #0 prefix [4 x i64] [i64 1, i64 ptrtoint (i8* @functionDefMutableDatas1 to i64), i64 sub (i64 ptrtoint (i8* @biasedInstanceId to i64), i64 1), i64 ptrtoint (i8* @typeId1 to i64)] personality i32 ()* @__gxx_personality_v0 !dbg !7 {
entry:
  %context = alloca i8*
  store i8* %0, i8** %context
  %2 = load i8*, i8** %context
  %3 = ptrtoint i8* %2 to i64
  %4 = and i64 %3, -2147483648
  %5 = inttoptr i64 %4 to i8*
  %6 = alloca i32
  store i32 %1, i32* %6
  %7 = load i32, i32* %6, !dbg !11
  %8 = zext i32 %7 to i64, !dbg !12
  %9 = load i8*, i8** %context, !dbg !12
  %10 = ptrtoint i8* %9 to i64, !dbg !12
  %11 = and i64 %10, -2147483648, !dbg !12
  %12 = inttoptr i64 %11 to i8*, !dbg !12
  %13 = getelementptr inbounds i8, i8* %12, i64 ptrtoint (i8* @tableOffset0 to i64), !dbg !12
  %14 = getelementptr inbounds i8, i8* %13, i64 0, !dbg !12
  %15 = bitcast i8* %14 to i64**, !dbg !12
  %16 = load i64*, i64** %15, align 8, !dbg !12
  %17 = getelementptr inbounds i8, i8* %13, i64 8, !dbg !12
  %18 = bitcast i8* %17 to i64*, !dbg !12
  %19 = load i64, i64* %18, align 8, !dbg !12
  %20 = icmp ult i64 %8, %19, !dbg !12
  %21 = select i1 %20, i64 %8, i64 %19, !dbg !12
  %22 = getelementptr inbounds i64, i64* %16, i64 %21, !dbg !12
  %23 = load atomic i64, i64* %22 acquire, align 8, !dbg !12
  %24 = add i64 %23, ptrtoint (i8* @tableReferenceBias to i64), !dbg !12
  %25 = inttoptr i64 %24 to i8*, !dbg !12
  %26 = getelementptr inbounds i8, i8* %25, i64 24, !dbg !12
  %27 = bitcast i8* %26 to i64*, !dbg !12
  %28 = load i64, i64* %27, align 8, !dbg !12
  %29 = icmp ne i64 ptrtoint (i8* @typeId0 to i64), %28, !dbg !12
  %30 = bitcast i8* %25 to %Object*, !dbg !12
  br i1 %29, label %callIndirectFailTrap, label %callIndirectFailSkip, !dbg !12, !prof !13

callIndirectFailTrap:                             ; preds = %entry
  %31 = load i8*, i8** %context, !dbg !12
  call void @callIndirectFail(i8* %31, i64 %8, i64 udiv exact (i64 sub (i64 ptrtoint (i8* @tableOffset0 to i64), i64 6128), i64 16), %Object* %30, i64 ptrtoint (i8* @typeId0 to i64)), !dbg !12
  unreachable, !dbg !12

callIndirectFailSkip:                             ; preds = %entry
  %32 = getelementptr inbounds i8, i8* %25, i64 32, !dbg !12
  %33 = bitcast i8* %32 to { i8*, {} } (i8*)*, !dbg !12
  %34 = load i8*, i8** %context, !dbg !12
  %35 = call fastcc { i8*, {} } %33(i8* %34), !dbg !12
  %36 = extractvalue { i8*, {} } %35, 0, !dbg !12
  store i8* %36, i8** %context, !dbg !12
  %37 = load i8*, i8** %context, !dbg !12
  %38 = ptrtoint i8* %37 to i64, !dbg !12
  %39 = and i64 %38, -2147483648, !dbg !12
  %40 = inttoptr i64 %39 to i8*, !dbg !12
  br label %return, !dbg !14

return:                                           ; preds = %callIndirectFailSkip
  %41 = load i8*, i8** %context, !dbg !14
  %42 = insertvalue { i8*, {} } zeroinitializer, i8* %41, 0, !dbg !14
  ret { i8*, {} } %42, !dbg !14
}

define fastcc { i8*, {} } @functionDef2(i8*) #0 prefix [4 x i64] [i64 1, i64 ptrtoint (i8* @functionDefMutableDatas2 to i64), i64 sub (i64 ptrtoint (i8* @biasedInstanceId to i64), i64 1), i64 ptrtoint (i8* @typeId0 to i64)] personality i32 ()* @__gxx_personality_v0 !dbg !15 {
entry:
  %context = alloca i8*
  store i8* %0, i8** %context
  %1 = load i8*, i8** %context
  %2 = ptrtoint i8* %1 to i64
  %3 = and i64 %2, -2147483648
  %4 = inttoptr i64 %3 to i8*
  br label %return, !dbg !16

return:                                           ; preds = %entry
  %5 = load i8*, i8** %context, !dbg !16
  %6 = insertvalue { i8*, {} } zeroinitializer, i8* %5, 0, !dbg !16
  ret { i8*, {} } %6, !dbg !16
}

define fastcc { i8*, {} } @functionDef3(i8*) #0 prefix [4 x i64] [i64 1, i64 ptrtoint (i8* @functionDefMutableDatas3 to i64), i64 sub (i64 ptrtoint (i8* @biasedInstanceId to i64), i64 1), i64 ptrtoint (i8* @typeId0 to i64)] personality i32 ()* @__gxx_personality_v0 !dbg !17 {
entry:
  %context = alloca i8*
  store i8* %0, i8** %context
  %1 = load i8*, i8** %context
  %2 = ptrtoint i8* %1 to i64
  %3 = and i64 %2, -2147483648
  %4 = inttoptr i64 %3 to i8*
  br label %return, !dbg !18

return:                                           ; preds = %entry
  %5 = load i8*, i8** %context, !dbg !18
  %6 = insertvalue { i8*, {} } zeroinitializer, i8* %5, 0, !dbg !18
  ret { i8*, {} } %6, !dbg !18
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
!13 = distinct !{!"branch_weights", i32 0, i32 2147483647}
!14 = !DILocation(line: 2, scope: !7)
!15 = distinct !DISubprogram(name: "functionDef2", linkageName: "functionDef2", scope: !1, file: !1, type: !4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!16 = !DILocation(line: 0, scope: !15)
!17 = distinct !DISubprogram(name: "functionDef3", linkageName: "functionDef3", scope: !1, file: !1, type: !4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!18 = !DILocation(line: 0, scope: !17)
