target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@typeId0 = external global i8
@typeId1 = external global i8
@biasedInstanceId = external global i8
@tableReferenceBias = external global i8
@unoptimizableOne = external global i8
@runtimeExceptionTypeInfo = external global i8
@functionDefMutableDatas0 = external global i8
@functionDefMutableDatas1 = external global i8

declare i32 @__gxx_personality_v0()

declare fastcc { i8*, {} } @functionImport0(i8*, i32)

define fastcc { i8*, {} } @functionDef0(i8*) #0 prefix [4 x i64] [i64 1, i64 ptrtoint (i8* @functionDefMutableDatas0 to i64), i64 sub (i64 ptrtoint (i8* @biasedInstanceId to i64), i64 1), i64 ptrtoint (i8* @typeId1 to i64)] personality i32 ()* @__gxx_personality_v0 !dbg !3 {
entry:
  %context = alloca i8*
  store i8* %0, i8** %context
  %1 = load i8*, i8** %context
  %2 = ptrtoint i8* %1 to i64
  %3 = and i64 %2, -2147483648
  %4 = inttoptr i64 %3 to i8*
  %5 = load i8*, i8** %context, !dbg !5
  %6 = call fastcc { i8*, {} } @functionImport0(i8* %5, i32 42), !dbg !5
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

define fastcc { i8*, {} } @functionDef1(i8*) #0 prefix [4 x i64] [i64 1, i64 ptrtoint (i8* @functionDefMutableDatas1 to i64), i64 sub (i64 ptrtoint (i8* @biasedInstanceId to i64), i64 1), i64 ptrtoint (i8* @typeId1 to i64)] personality i32 ()* @__gxx_personality_v0 !dbg !7 {
entry:
  %context = alloca i8*
  store i8* %0, i8** %context
  %1 = load i8*, i8** %context
  %2 = ptrtoint i8* %1 to i64
  %3 = and i64 %2, -2147483648
  %4 = inttoptr i64 %3 to i8*
  br label %return, !dbg !8

return:                                           ; preds = %entry
  %5 = load i8*, i8** %context, !dbg !8
  %6 = insertvalue { i8*, {} } zeroinitializer, i8* %5, 0, !dbg !8
  ret { i8*, {} } %6, !dbg !8
}

attributes #0 = { "no-frame-pointer-elim"="true" "probe-stack"="wavm_probe_stack" }

!llvm.dbg.cu = !{!0}

!0 = distinct !DICompileUnit(language: 65535, file: !1, producer: "WAVM", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!1 = !DIFile(filename: "unknown", directory: "unknown")
!2 = !{}
!3 = distinct !DISubprogram(name: "functionDef0", linkageName: "functionDef0", scope: !1, file: !1, type: !4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!4 = !DISubroutineType(types: !2)
!5 = !DILocation(line: 1, scope: !3)
!6 = !DILocation(line: 2, scope: !3)
!7 = distinct !DISubprogram(name: "functionDef1", linkageName: "functionDef1", scope: !1, file: !1, type: !4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!8 = !DILocation(line: 0, scope: !7)
