target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

%Object = type { i8 }

@typeId0 = external global i8
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
  %6 = ptrtoint i8* %5 to i64, !dbg !5
  %7 = and i64 %6, -2147483648, !dbg !5
  %8 = inttoptr i64 %7 to i8*, !dbg !5
  %9 = getelementptr inbounds i8, i8* %8, i64 ptrtoint (i8* @tableOffset0 to i64), !dbg !5
  %10 = getelementptr inbounds i8, i8* %9, i64 0, !dbg !5
  %11 = bitcast i8* %10 to i64**, !dbg !5
  %12 = load i64*, i64** %11, align 8, !dbg !5
  %13 = getelementptr inbounds i8, i8* %9, i64 8, !dbg !5
  %14 = bitcast i8* %13 to i64*, !dbg !5
  %15 = load i64, i64* %14, align 8, !dbg !5
  %16 = icmp ult i64 0, %15, !dbg !5
  %17 = select i1 %16, i64 0, i64 %15, !dbg !5
  %18 = getelementptr inbounds i64, i64* %12, i64 %17, !dbg !5
  %19 = load atomic i64, i64* %18 acquire, align 8, !dbg !5
  %20 = add i64 %19, ptrtoint (i8* @tableReferenceBias to i64), !dbg !5
  %21 = inttoptr i64 %20 to i8*, !dbg !5
  %22 = getelementptr inbounds i8, i8* %21, i64 24, !dbg !5
  %23 = bitcast i8* %22 to i64*, !dbg !5
  %24 = load i64, i64* %23, align 8, !dbg !5
  %25 = icmp ne i64 ptrtoint (i8* @typeId0 to i64), %24, !dbg !5
  %26 = bitcast i8* %21 to %Object*, !dbg !5
  br i1 %25, label %callIndirectFailTrap, label %callIndirectFailSkip, !dbg !5, !prof !6

callIndirectFailTrap:                             ; preds = %entry
  %27 = load i8*, i8** %context, !dbg !5
  call void @callIndirectFail(i8* %27, i64 0, i64 udiv exact (i64 sub (i64 ptrtoint (i8* @tableOffset0 to i64), i64 6128), i64 16), %Object* %26, i64 ptrtoint (i8* @typeId0 to i64)), !dbg !5
  unreachable, !dbg !5

callIndirectFailSkip:                             ; preds = %entry
  %28 = getelementptr inbounds i8, i8* %21, i64 32, !dbg !5
  %29 = bitcast i8* %28 to { i8*, {} } (i8*)*, !dbg !5
  %30 = load i8*, i8** %context, !dbg !5
  %31 = call fastcc { i8*, {} } %29(i8* %30), !dbg !5
  %32 = extractvalue { i8*, {} } %31, 0, !dbg !5
  store i8* %32, i8** %context, !dbg !5
  %33 = load i8*, i8** %context, !dbg !5
  %34 = ptrtoint i8* %33 to i64, !dbg !5
  %35 = and i64 %34, -2147483648, !dbg !5
  %36 = inttoptr i64 %35 to i8*, !dbg !5
  br label %return, !dbg !7

return:                                           ; preds = %callIndirectFailSkip
  %37 = load i8*, i8** %context, !dbg !7
  %38 = insertvalue { i8*, {} } zeroinitializer, i8* %37, 0, !dbg !7
  ret { i8*, {} } %38, !dbg !7
}

define fastcc { i8*, {} } @functionDef1(i8*) #0 prefix [4 x i64] [i64 1, i64 ptrtoint (i8* @functionDefMutableDatas1 to i64), i64 sub (i64 ptrtoint (i8* @biasedInstanceId to i64), i64 1), i64 ptrtoint (i8* @typeId0 to i64)] personality i32 ()* @__gxx_personality_v0 !dbg !8 {
entry:
  %context = alloca i8*
  store i8* %0, i8** %context
  %1 = load i8*, i8** %context
  %2 = ptrtoint i8* %1 to i64
  %3 = and i64 %2, -2147483648
  %4 = inttoptr i64 %3 to i8*
  br label %return, !dbg !9

return:                                           ; preds = %entry
  %5 = load i8*, i8** %context, !dbg !9
  %6 = insertvalue { i8*, {} } zeroinitializer, i8* %5, 0, !dbg !9
  ret { i8*, {} } %6, !dbg !9
}

define fastcc { i8*, {} } @functionDef2(i8*) #0 prefix [4 x i64] [i64 1, i64 ptrtoint (i8* @functionDefMutableDatas2 to i64), i64 sub (i64 ptrtoint (i8* @biasedInstanceId to i64), i64 1), i64 ptrtoint (i8* @typeId0 to i64)] personality i32 ()* @__gxx_personality_v0 !dbg !10 {
entry:
  %context = alloca i8*
  store i8* %0, i8** %context
  %1 = load i8*, i8** %context
  %2 = ptrtoint i8* %1 to i64
  %3 = and i64 %2, -2147483648
  %4 = inttoptr i64 %3 to i8*
  br label %return, !dbg !11

return:                                           ; preds = %entry
  %5 = load i8*, i8** %context, !dbg !11
  %6 = insertvalue { i8*, {} } zeroinitializer, i8* %5, 0, !dbg !11
  ret { i8*, {} } %6, !dbg !11
}

define fastcc { i8*, {} } @functionDef3(i8*) #0 prefix [4 x i64] [i64 1, i64 ptrtoint (i8* @functionDefMutableDatas3 to i64), i64 sub (i64 ptrtoint (i8* @biasedInstanceId to i64), i64 1), i64 ptrtoint (i8* @typeId0 to i64)] personality i32 ()* @__gxx_personality_v0 !dbg !12 {
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

declare void @callIndirectFail(i8*, i64, i64, %Object*, i64)

attributes #0 = { "no-frame-pointer-elim"="true" "probe-stack"="wavm_probe_stack" }

!llvm.dbg.cu = !{!0}

!0 = distinct !DICompileUnit(language: 65535, file: !1, producer: "WAVM", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!1 = !DIFile(filename: "unknown", directory: "unknown")
!2 = !{}
!3 = distinct !DISubprogram(name: "functionDef0", linkageName: "functionDef0", scope: !1, file: !1, type: !4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!4 = !DISubroutineType(types: !2)
!5 = !DILocation(line: 1, scope: !3)
!6 = distinct !{!"branch_weights", i32 0, i32 2147483647}
!7 = !DILocation(line: 2, scope: !3)
!8 = distinct !DISubprogram(name: "functionDef1", linkageName: "functionDef1", scope: !1, file: !1, type: !4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!9 = !DILocation(line: 0, scope: !8)
!10 = distinct !DISubprogram(name: "functionDef2", linkageName: "functionDef2", scope: !1, file: !1, type: !4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!11 = !DILocation(line: 0, scope: !10)
!12 = distinct !DISubprogram(name: "functionDef3", linkageName: "functionDef3", scope: !1, file: !1, type: !4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!13 = !DILocation(line: 0, scope: !12)
