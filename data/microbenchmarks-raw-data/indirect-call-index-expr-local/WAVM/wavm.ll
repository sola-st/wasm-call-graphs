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

declare i32 @__gxx_personality_v0()

define fastcc { i8*, {} } @functionDef0(i8*) #0 prefix [4 x i64] [i64 1, i64 ptrtoint (i8* @functionDefMutableDatas0 to i64), i64 sub (i64 ptrtoint (i8* @biasedInstanceId to i64), i64 1), i64 ptrtoint (i8* @typeId0 to i64)] personality i32 ()* @__gxx_personality_v0 !dbg !3 {
entry:
  %context = alloca i8*
  store i8* %0, i8** %context
  %1 = load i8*, i8** %context
  %2 = ptrtoint i8* %1 to i64
  %3 = and i64 %2, -2147483648
  %4 = inttoptr i64 %3 to i8*
  %5 = alloca i32
  store i32 0, i32* %5
  store i32 1, i32* %5, !dbg !5
  %6 = load i32, i32* %5, !dbg !6
  %7 = zext i32 %6 to i64, !dbg !7
  %8 = load i8*, i8** %context, !dbg !7
  %9 = ptrtoint i8* %8 to i64, !dbg !7
  %10 = and i64 %9, -2147483648, !dbg !7
  %11 = inttoptr i64 %10 to i8*, !dbg !7
  %12 = getelementptr inbounds i8, i8* %11, i64 ptrtoint (i8* @tableOffset0 to i64), !dbg !7
  %13 = getelementptr inbounds i8, i8* %12, i64 0, !dbg !7
  %14 = bitcast i8* %13 to i64**, !dbg !7
  %15 = load i64*, i64** %14, align 8, !dbg !7
  %16 = getelementptr inbounds i8, i8* %12, i64 8, !dbg !7
  %17 = bitcast i8* %16 to i64*, !dbg !7
  %18 = load i64, i64* %17, align 8, !dbg !7
  %19 = icmp ult i64 %7, %18, !dbg !7
  %20 = select i1 %19, i64 %7, i64 %18, !dbg !7
  %21 = getelementptr inbounds i64, i64* %15, i64 %20, !dbg !7
  %22 = load atomic i64, i64* %21 acquire, align 8, !dbg !7
  %23 = add i64 %22, ptrtoint (i8* @tableReferenceBias to i64), !dbg !7
  %24 = inttoptr i64 %23 to i8*, !dbg !7
  %25 = getelementptr inbounds i8, i8* %24, i64 24, !dbg !7
  %26 = bitcast i8* %25 to i64*, !dbg !7
  %27 = load i64, i64* %26, align 8, !dbg !7
  %28 = icmp ne i64 ptrtoint (i8* @typeId0 to i64), %27, !dbg !7
  %29 = bitcast i8* %24 to %Object*, !dbg !7
  br i1 %28, label %callIndirectFailTrap, label %callIndirectFailSkip, !dbg !7, !prof !8

callIndirectFailTrap:                             ; preds = %entry
  %30 = load i8*, i8** %context, !dbg !7
  call void @callIndirectFail(i8* %30, i64 %7, i64 udiv exact (i64 sub (i64 ptrtoint (i8* @tableOffset0 to i64), i64 6128), i64 16), %Object* %29, i64 ptrtoint (i8* @typeId0 to i64)), !dbg !7
  unreachable, !dbg !7

callIndirectFailSkip:                             ; preds = %entry
  %31 = getelementptr inbounds i8, i8* %24, i64 32, !dbg !7
  %32 = bitcast i8* %31 to { i8*, {} } (i8*)*, !dbg !7
  %33 = load i8*, i8** %context, !dbg !7
  %34 = call fastcc { i8*, {} } %32(i8* %33), !dbg !7
  %35 = extractvalue { i8*, {} } %34, 0, !dbg !7
  store i8* %35, i8** %context, !dbg !7
  %36 = load i8*, i8** %context, !dbg !7
  %37 = ptrtoint i8* %36 to i64, !dbg !7
  %38 = and i64 %37, -2147483648, !dbg !7
  %39 = inttoptr i64 %38 to i8*, !dbg !7
  br label %return, !dbg !9

return:                                           ; preds = %callIndirectFailSkip
  %40 = load i8*, i8** %context, !dbg !9
  %41 = insertvalue { i8*, {} } zeroinitializer, i8* %40, 0, !dbg !9
  ret { i8*, {} } %41, !dbg !9
}

define fastcc { i8*, {} } @functionDef1(i8*) #0 prefix [4 x i64] [i64 1, i64 ptrtoint (i8* @functionDefMutableDatas1 to i64), i64 sub (i64 ptrtoint (i8* @biasedInstanceId to i64), i64 1), i64 ptrtoint (i8* @typeId0 to i64)] personality i32 ()* @__gxx_personality_v0 !dbg !10 {
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
!7 = !DILocation(line: 3, scope: !3)
!8 = distinct !{!"branch_weights", i32 0, i32 2147483647}
!9 = !DILocation(line: 4, scope: !3)
!10 = distinct !DISubprogram(name: "functionDef1", linkageName: "functionDef1", scope: !1, file: !1, type: !4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!11 = !DILocation(line: 0, scope: !10)
!12 = distinct !DISubprogram(name: "functionDef2", linkageName: "functionDef2", scope: !1, file: !1, type: !4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!13 = !DILocation(line: 0, scope: !12)
