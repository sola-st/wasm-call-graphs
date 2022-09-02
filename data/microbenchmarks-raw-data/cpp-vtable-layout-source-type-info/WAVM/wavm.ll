target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

%Object = type { i8 }

@typeId0 = external global i8
@typeId1 = external global i8
@typeId2 = external global i8
@typeId3 = external global i8
@typeId4 = external global i8
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
@functionDefMutableDatas3 = external global i8
@functionDefMutableDatas4 = external global i8
@functionDefMutableDatas5 = external global i8
@functionDefMutableDatas6 = external global i8
@functionDefMutableDatas7 = external global i8
@functionDefMutableDatas8 = external global i8
@functionDefMutableDatas9 = external global i8
@functionDefMutableDatas10 = external global i8
@functionDefMutableDatas11 = external global i8
@functionDefMutableDatas12 = external global i8
@functionDefMutableDatas13 = external global i8
@functionDefMutableDatas14 = external global i8
@functionDefMutableDatas15 = external global i8
@functionDefMutableDatas16 = external global i8
@functionDefMutableDatas17 = external global i8
@functionDefMutableDatas18 = external global i8
@functionDefMutableDatas19 = external global i8

declare i32 @__gxx_personality_v0()

declare fastcc { i8*, { i32 } } @functionImport0(i8*, i32, i32)

declare fastcc { i8*, { i32 } } @functionImport1(i8*, i32, i32)

declare fastcc { i8*, {} } @functionImport2(i8*, i32)

define fastcc { i8*, {} } @functionDef0(i8*) #0 prefix [4 x i64] [i64 1, i64 ptrtoint (i8* @functionDefMutableDatas0 to i64), i64 sub (i64 ptrtoint (i8* @biasedInstanceId to i64), i64 1), i64 ptrtoint (i8* @typeId3 to i64)] personality i32 ()* @__gxx_personality_v0 !dbg !3 {
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
  br label %return, !dbg !5

return:                                           ; preds = %entry
  %11 = load i8*, i8** %context, !dbg !5
  %12 = insertvalue { i8*, {} } zeroinitializer, i8* %11, 0, !dbg !5
  ret { i8*, {} } %12, !dbg !5
}

define fastcc { i8*, { i32 } } @functionDef1(i8*, i32) #0 prefix [4 x i64] [i64 1, i64 ptrtoint (i8* @functionDefMutableDatas1 to i64), i64 sub (i64 ptrtoint (i8* @biasedInstanceId to i64), i64 1), i64 ptrtoint (i8* @typeId0 to i64)] personality i32 ()* @__gxx_personality_v0 !dbg !6 {
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
  %13 = alloca i32
  store i32 0, i32* %13
  %14 = load i8*, i8** %context, !dbg !10
  %15 = getelementptr inbounds i8, i8* %14, i64 ptrtoint (i8* @global0 to i64), !dbg !10
  %16 = bitcast i8* %15 to i32*, !dbg !10
  %17 = load i32, i32* %16, align 4, !dbg !10
  %18 = sub i32 %17, 16, !dbg !11
  store i32 %18, i32* %13, !dbg !12
  %19 = load i8*, i8** %context, !dbg !13
  %20 = getelementptr inbounds i8, i8* %19, i64 ptrtoint (i8* @global0 to i64), !dbg !13
  %21 = bitcast i8* %20 to i32*, !dbg !13
  store i32 %18, i32* %21, align 1, !dbg !13
  %22 = load i32, i32* %13, !dbg !14
  %23 = zext i32 %22 to i64, !dbg !15
  %24 = add i64 %23, 8, !dbg !15
  %25 = load i8*, i8** %memoryBase0, !dbg !15
  %26 = getelementptr inbounds i8, i8* %25, i64 %24, !dbg !15
  %27 = bitcast i8* %26 to i32*, !dbg !15
  store volatile i32 1032, i32* %27, align 1, !dbg !15
  %28 = load i32, i32* %13, !dbg !16
  %29 = zext i32 %28 to i64, !dbg !17
  %30 = load i8*, i8** %memoryBase0, !dbg !17
  %31 = getelementptr inbounds i8, i8* %30, i64 %29, !dbg !17
  %32 = bitcast i8* %31 to i32*, !dbg !17
  store volatile i32 1044, i32* %32, align 1, !dbg !17
  %33 = load i32, i32* %13, !dbg !18
  %34 = add i32 %33, 8, !dbg !19
  %35 = load i32, i32* %13, !dbg !20
  %36 = load i32, i32* %12, !dbg !21
  %37 = icmp ne i32 %36, 0, !dbg !22
  %38 = select i1 %37, i32 %34, i32 %35, !dbg !22
  store i32 %38, i32* %12, !dbg !23
  %39 = load i32, i32* %12, !dbg !24
  %40 = zext i32 %39 to i64, !dbg !25
  %41 = load i8*, i8** %memoryBase0, !dbg !25
  %42 = getelementptr inbounds i8, i8* %41, i64 %40, !dbg !25
  %43 = bitcast i8* %42 to i32*, !dbg !25
  %44 = load volatile i32, i32* %43, align 1, !dbg !25
  %45 = zext i32 %44 to i64, !dbg !26
  %46 = load i8*, i8** %memoryBase0, !dbg !26
  %47 = getelementptr inbounds i8, i8* %46, i64 %45, !dbg !26
  %48 = bitcast i8* %47 to i32*, !dbg !26
  %49 = load volatile i32, i32* %48, align 1, !dbg !26
  %50 = zext i32 %49 to i64, !dbg !27
  %51 = load i8*, i8** %context, !dbg !27
  %52 = ptrtoint i8* %51 to i64, !dbg !27
  %53 = and i64 %52, -2147483648, !dbg !27
  %54 = inttoptr i64 %53 to i8*, !dbg !27
  %55 = getelementptr inbounds i8, i8* %54, i64 ptrtoint (i8* @tableOffset0 to i64), !dbg !27
  %56 = getelementptr inbounds i8, i8* %55, i64 0, !dbg !27
  %57 = bitcast i8* %56 to i64**, !dbg !27
  %58 = load i64*, i64** %57, align 8, !dbg !27
  %59 = getelementptr inbounds i8, i8* %55, i64 8, !dbg !27
  %60 = bitcast i8* %59 to i64*, !dbg !27
  %61 = load i64, i64* %60, align 8, !dbg !27
  %62 = icmp ult i64 %50, %61, !dbg !27
  %63 = select i1 %62, i64 %50, i64 %61, !dbg !27
  %64 = getelementptr inbounds i64, i64* %58, i64 %63, !dbg !27
  %65 = load atomic i64, i64* %64 acquire, align 8, !dbg !27
  %66 = add i64 %65, ptrtoint (i8* @tableReferenceBias to i64), !dbg !27
  %67 = inttoptr i64 %66 to i8*, !dbg !27
  %68 = getelementptr inbounds i8, i8* %67, i64 24, !dbg !27
  %69 = bitcast i8* %68 to i64*, !dbg !27
  %70 = load i64, i64* %69, align 8, !dbg !27
  %71 = icmp ne i64 ptrtoint (i8* @typeId0 to i64), %70, !dbg !27
  %72 = bitcast i8* %67 to %Object*, !dbg !27
  br i1 %71, label %callIndirectFailTrap, label %callIndirectFailSkip, !dbg !27, !prof !28

callIndirectFailTrap:                             ; preds = %entry
  %73 = load i8*, i8** %context, !dbg !27
  call void @callIndirectFail(i8* %73, i64 %50, i64 udiv exact (i64 sub (i64 ptrtoint (i8* @tableOffset0 to i64), i64 6128), i64 16), %Object* %72, i64 ptrtoint (i8* @typeId0 to i64)), !dbg !27
  unreachable, !dbg !27

callIndirectFailSkip:                             ; preds = %entry
  %74 = getelementptr inbounds i8, i8* %67, i64 32, !dbg !27
  %75 = bitcast i8* %74 to { i8*, { i32 } } (i8*, i32)*, !dbg !27
  %76 = load i8*, i8** %context, !dbg !27
  %77 = call fastcc { i8*, { i32 } } %75(i8* %76, i32 %38), !dbg !27
  %78 = extractvalue { i8*, { i32 } } %77, 0, !dbg !27
  store i8* %78, i8** %context, !dbg !27
  %79 = load i8*, i8** %context, !dbg !27
  %80 = ptrtoint i8* %79 to i64, !dbg !27
  %81 = and i64 %80, -2147483648, !dbg !27
  %82 = inttoptr i64 %81 to i8*, !dbg !27
  %83 = getelementptr inbounds i8, i8* %82, i64 ptrtoint (i8* @memoryOffset0 to i64), !dbg !27
  %84 = bitcast i8* %83 to i8**, !dbg !27
  %85 = load i8*, i8** %84, align 8, !dbg !27
  store i8* %85, i8** %memoryBase0, !dbg !27
  %86 = getelementptr inbounds i8, i8* %82, i64 add (i64 ptrtoint (i8* @memoryOffset0 to i64), i64 16), !dbg !27
  %87 = bitcast i8* %86 to i64*, !dbg !27
  %88 = load i64, i64* %87, align 1, !dbg !27
  store i64 %88, i64* %memoryNumReservedBytesMinusGuardBytes0, !dbg !27
  %89 = extractvalue { i8*, { i32 } } %77, 1, 0, !dbg !27
  store i32 %89, i32* %12, !dbg !29
  %90 = load i32, i32* %13, !dbg !30
  %91 = add i32 %90, 16, !dbg !31
  %92 = load i8*, i8** %context, !dbg !32
  %93 = getelementptr inbounds i8, i8* %92, i64 ptrtoint (i8* @global0 to i64), !dbg !32
  %94 = bitcast i8* %93 to i32*, !dbg !32
  store i32 %91, i32* %94, align 1, !dbg !32
  %95 = load i32, i32* %12, !dbg !33
  br label %return, !dbg !34

return:                                           ; preds = %callIndirectFailSkip
  %96 = phi i32 [ %95, %callIndirectFailSkip ]
  %97 = load i8*, i8** %context, !dbg !34
  %98 = insertvalue { i8*, { i32 } } zeroinitializer, i8* %97, 0, !dbg !34
  %99 = insertvalue { i8*, { i32 } } %98, i32 %96, 1, 0, !dbg !34
  ret { i8*, { i32 } } %99, !dbg !34
}

define fastcc { i8*, { i32 } } @functionDef2(i8*, i32) #0 prefix [4 x i64] [i64 1, i64 ptrtoint (i8* @functionDefMutableDatas2 to i64), i64 sub (i64 ptrtoint (i8* @biasedInstanceId to i64), i64 1), i64 ptrtoint (i8* @typeId0 to i64)] personality i32 ()* @__gxx_personality_v0 !dbg !35 {
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
  %13 = alloca i32
  store i32 0, i32* %13
  %14 = load i8*, i8** %context, !dbg !36
  %15 = getelementptr inbounds i8, i8* %14, i64 ptrtoint (i8* @global0 to i64), !dbg !36
  %16 = bitcast i8* %15 to i32*, !dbg !36
  %17 = load i32, i32* %16, align 4, !dbg !36
  %18 = sub i32 %17, 16, !dbg !37
  store i32 %18, i32* %13, !dbg !38
  %19 = load i8*, i8** %context, !dbg !39
  %20 = getelementptr inbounds i8, i8* %19, i64 ptrtoint (i8* @global0 to i64), !dbg !39
  %21 = bitcast i8* %20 to i32*, !dbg !39
  store i32 %18, i32* %21, align 1, !dbg !39
  %22 = load i32, i32* %13, !dbg !40
  %23 = zext i32 %22 to i64, !dbg !41
  %24 = add i64 %23, 8, !dbg !41
  %25 = load i8*, i8** %memoryBase0, !dbg !41
  %26 = getelementptr inbounds i8, i8* %25, i64 %24, !dbg !41
  %27 = bitcast i8* %26 to i32*, !dbg !41
  store volatile i32 1056, i32* %27, align 1, !dbg !41
  %28 = load i32, i32* %13, !dbg !42
  %29 = zext i32 %28 to i64, !dbg !43
  %30 = load i8*, i8** %memoryBase0, !dbg !43
  %31 = getelementptr inbounds i8, i8* %30, i64 %29, !dbg !43
  %32 = bitcast i8* %31 to i32*, !dbg !43
  store volatile i32 1068, i32* %32, align 1, !dbg !43
  %33 = load i32, i32* %13, !dbg !44
  %34 = add i32 %33, 8, !dbg !45
  %35 = load i32, i32* %13, !dbg !46
  %36 = load i32, i32* %12, !dbg !47
  %37 = icmp ne i32 %36, 0, !dbg !48
  %38 = select i1 %37, i32 %34, i32 %35, !dbg !48
  store i32 %38, i32* %12, !dbg !49
  %39 = load i32, i32* %12, !dbg !50
  %40 = zext i32 %39 to i64, !dbg !51
  %41 = load i8*, i8** %memoryBase0, !dbg !51
  %42 = getelementptr inbounds i8, i8* %41, i64 %40, !dbg !51
  %43 = bitcast i8* %42 to i32*, !dbg !51
  %44 = load volatile i32, i32* %43, align 1, !dbg !51
  %45 = zext i32 %44 to i64, !dbg !52
  %46 = load i8*, i8** %memoryBase0, !dbg !52
  %47 = getelementptr inbounds i8, i8* %46, i64 %45, !dbg !52
  %48 = bitcast i8* %47 to i32*, !dbg !52
  %49 = load volatile i32, i32* %48, align 1, !dbg !52
  %50 = zext i32 %49 to i64, !dbg !53
  %51 = load i8*, i8** %context, !dbg !53
  %52 = ptrtoint i8* %51 to i64, !dbg !53
  %53 = and i64 %52, -2147483648, !dbg !53
  %54 = inttoptr i64 %53 to i8*, !dbg !53
  %55 = getelementptr inbounds i8, i8* %54, i64 ptrtoint (i8* @tableOffset0 to i64), !dbg !53
  %56 = getelementptr inbounds i8, i8* %55, i64 0, !dbg !53
  %57 = bitcast i8* %56 to i64**, !dbg !53
  %58 = load i64*, i64** %57, align 8, !dbg !53
  %59 = getelementptr inbounds i8, i8* %55, i64 8, !dbg !53
  %60 = bitcast i8* %59 to i64*, !dbg !53
  %61 = load i64, i64* %60, align 8, !dbg !53
  %62 = icmp ult i64 %50, %61, !dbg !53
  %63 = select i1 %62, i64 %50, i64 %61, !dbg !53
  %64 = getelementptr inbounds i64, i64* %58, i64 %63, !dbg !53
  %65 = load atomic i64, i64* %64 acquire, align 8, !dbg !53
  %66 = add i64 %65, ptrtoint (i8* @tableReferenceBias to i64), !dbg !53
  %67 = inttoptr i64 %66 to i8*, !dbg !53
  %68 = getelementptr inbounds i8, i8* %67, i64 24, !dbg !53
  %69 = bitcast i8* %68 to i64*, !dbg !53
  %70 = load i64, i64* %69, align 8, !dbg !53
  %71 = icmp ne i64 ptrtoint (i8* @typeId0 to i64), %70, !dbg !53
  %72 = bitcast i8* %67 to %Object*, !dbg !53
  br i1 %71, label %callIndirectFailTrap, label %callIndirectFailSkip, !dbg !53, !prof !28

callIndirectFailTrap:                             ; preds = %entry
  %73 = load i8*, i8** %context, !dbg !53
  call void @callIndirectFail(i8* %73, i64 %50, i64 udiv exact (i64 sub (i64 ptrtoint (i8* @tableOffset0 to i64), i64 6128), i64 16), %Object* %72, i64 ptrtoint (i8* @typeId0 to i64)), !dbg !53
  unreachable, !dbg !53

callIndirectFailSkip:                             ; preds = %entry
  %74 = getelementptr inbounds i8, i8* %67, i64 32, !dbg !53
  %75 = bitcast i8* %74 to { i8*, { i32 } } (i8*, i32)*, !dbg !53
  %76 = load i8*, i8** %context, !dbg !53
  %77 = call fastcc { i8*, { i32 } } %75(i8* %76, i32 %38), !dbg !53
  %78 = extractvalue { i8*, { i32 } } %77, 0, !dbg !53
  store i8* %78, i8** %context, !dbg !53
  %79 = load i8*, i8** %context, !dbg !53
  %80 = ptrtoint i8* %79 to i64, !dbg !53
  %81 = and i64 %80, -2147483648, !dbg !53
  %82 = inttoptr i64 %81 to i8*, !dbg !53
  %83 = getelementptr inbounds i8, i8* %82, i64 ptrtoint (i8* @memoryOffset0 to i64), !dbg !53
  %84 = bitcast i8* %83 to i8**, !dbg !53
  %85 = load i8*, i8** %84, align 8, !dbg !53
  store i8* %85, i8** %memoryBase0, !dbg !53
  %86 = getelementptr inbounds i8, i8* %82, i64 add (i64 ptrtoint (i8* @memoryOffset0 to i64), i64 16), !dbg !53
  %87 = bitcast i8* %86 to i64*, !dbg !53
  %88 = load i64, i64* %87, align 1, !dbg !53
  store i64 %88, i64* %memoryNumReservedBytesMinusGuardBytes0, !dbg !53
  %89 = extractvalue { i8*, { i32 } } %77, 1, 0, !dbg !53
  store i32 %89, i32* %12, !dbg !54
  %90 = load i32, i32* %13, !dbg !55
  %91 = add i32 %90, 16, !dbg !56
  %92 = load i8*, i8** %context, !dbg !57
  %93 = getelementptr inbounds i8, i8* %92, i64 ptrtoint (i8* @global0 to i64), !dbg !57
  %94 = bitcast i8* %93 to i32*, !dbg !57
  store i32 %91, i32* %94, align 1, !dbg !57
  %95 = load i32, i32* %12, !dbg !58
  br label %return, !dbg !59

return:                                           ; preds = %callIndirectFailSkip
  %96 = phi i32 [ %95, %callIndirectFailSkip ]
  %97 = load i8*, i8** %context, !dbg !59
  %98 = insertvalue { i8*, { i32 } } zeroinitializer, i8* %97, 0, !dbg !59
  %99 = insertvalue { i8*, { i32 } } %98, i32 %96, 1, 0, !dbg !59
  ret { i8*, { i32 } } %99, !dbg !59
}

define fastcc { i8*, { i32 } } @functionDef3(i8*, i32, i32) #0 prefix [4 x i64] [i64 1, i64 ptrtoint (i8* @functionDefMutableDatas3 to i64), i64 sub (i64 ptrtoint (i8* @biasedInstanceId to i64), i64 1), i64 ptrtoint (i8* @typeId1 to i64)] personality i32 ()* @__gxx_personality_v0 !dbg !60 {
entry:
  %memoryBase0 = alloca i8*
  %memoryNumReservedBytesMinusGuardBytes0 = alloca i64
  %context = alloca i8*
  store i8* %0, i8** %context
  %3 = load i8*, i8** %context
  %4 = ptrtoint i8* %3 to i64
  %5 = and i64 %4, -2147483648
  %6 = inttoptr i64 %5 to i8*
  %7 = getelementptr inbounds i8, i8* %6, i64 ptrtoint (i8* @memoryOffset0 to i64)
  %8 = bitcast i8* %7 to i8**
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %memoryBase0
  %10 = getelementptr inbounds i8, i8* %6, i64 add (i64 ptrtoint (i8* @memoryOffset0 to i64), i64 16)
  %11 = bitcast i8* %10 to i64*
  %12 = load i64, i64* %11, align 1
  store i64 %12, i64* %memoryNumReservedBytesMinusGuardBytes0
  %13 = alloca i32
  store i32 %1, i32* %13
  %14 = alloca i32
  store i32 %2, i32* %14
  %15 = load i32, i32* %13, !dbg !63
  %16 = icmp sgt i32 %15, 1, !dbg !64
  %17 = zext i1 %16 to i32, !dbg !64
  store i32 %17, i32* %13, !dbg !65
  %18 = load i8*, i8** %context, !dbg !66
  %19 = call fastcc { i8*, { i32 } } @functionDef1(i8* %18, i32 %17), !dbg !66
  %20 = extractvalue { i8*, { i32 } } %19, 0, !dbg !66
  store i8* %20, i8** %context, !dbg !66
  %21 = load i8*, i8** %context, !dbg !66
  %22 = ptrtoint i8* %21 to i64, !dbg !66
  %23 = and i64 %22, -2147483648, !dbg !66
  %24 = inttoptr i64 %23 to i8*, !dbg !66
  %25 = getelementptr inbounds i8, i8* %24, i64 ptrtoint (i8* @memoryOffset0 to i64), !dbg !66
  %26 = bitcast i8* %25 to i8**, !dbg !66
  %27 = load i8*, i8** %26, align 8, !dbg !66
  store i8* %27, i8** %memoryBase0, !dbg !66
  %28 = getelementptr inbounds i8, i8* %24, i64 add (i64 ptrtoint (i8* @memoryOffset0 to i64), i64 16), !dbg !66
  %29 = bitcast i8* %28 to i64*, !dbg !66
  %30 = load i64, i64* %29, align 1, !dbg !66
  store i64 %30, i64* %memoryNumReservedBytesMinusGuardBytes0, !dbg !66
  %31 = extractvalue { i8*, { i32 } } %19, 1, 0, !dbg !66
  %32 = load i32, i32* %13, !dbg !67
  %33 = load i8*, i8** %context, !dbg !68
  %34 = call fastcc { i8*, { i32 } } @functionDef2(i8* %33, i32 %32), !dbg !68
  %35 = extractvalue { i8*, { i32 } } %34, 0, !dbg !68
  store i8* %35, i8** %context, !dbg !68
  %36 = load i8*, i8** %context, !dbg !68
  %37 = ptrtoint i8* %36 to i64, !dbg !68
  %38 = and i64 %37, -2147483648, !dbg !68
  %39 = inttoptr i64 %38 to i8*, !dbg !68
  %40 = getelementptr inbounds i8, i8* %39, i64 ptrtoint (i8* @memoryOffset0 to i64), !dbg !68
  %41 = bitcast i8* %40 to i8**, !dbg !68
  %42 = load i8*, i8** %41, align 8, !dbg !68
  store i8* %42, i8** %memoryBase0, !dbg !68
  %43 = getelementptr inbounds i8, i8* %39, i64 add (i64 ptrtoint (i8* @memoryOffset0 to i64), i64 16), !dbg !68
  %44 = bitcast i8* %43 to i64*, !dbg !68
  %45 = load i64, i64* %44, align 1, !dbg !68
  store i64 %45, i64* %memoryNumReservedBytesMinusGuardBytes0, !dbg !68
  %46 = extractvalue { i8*, { i32 } } %34, 1, 0, !dbg !68
  %47 = add i32 %31, %46, !dbg !69
  br label %return, !dbg !70

return:                                           ; preds = %entry
  %48 = phi i32 [ %47, %entry ]
  %49 = load i8*, i8** %context, !dbg !70
  %50 = insertvalue { i8*, { i32 } } zeroinitializer, i8* %49, 0, !dbg !70
  %51 = insertvalue { i8*, { i32 } } %50, i32 %48, 1, 0, !dbg !70
  ret { i8*, { i32 } } %51, !dbg !70
}

define fastcc { i8*, { i32 } } @functionDef4(i8*, i32) #0 prefix [4 x i64] [i64 1, i64 ptrtoint (i8* @functionDefMutableDatas4 to i64), i64 sub (i64 ptrtoint (i8* @biasedInstanceId to i64), i64 1), i64 ptrtoint (i8* @typeId0 to i64)] personality i32 ()* @__gxx_personality_v0 !dbg !71 {
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
  br label %return, !dbg !72

return:                                           ; preds = %entry
  %13 = phi i32 [ 23, %entry ]
  %14 = load i8*, i8** %context, !dbg !72
  %15 = insertvalue { i8*, { i32 } } zeroinitializer, i8* %14, 0, !dbg !72
  %16 = insertvalue { i8*, { i32 } } %15, i32 %13, 1, 0, !dbg !72
  ret { i8*, { i32 } } %16, !dbg !72
}

define fastcc { i8*, { i32 } } @functionDef5(i8*, i32) #0 prefix [4 x i64] [i64 1, i64 ptrtoint (i8* @functionDefMutableDatas5 to i64), i64 sub (i64 ptrtoint (i8* @biasedInstanceId to i64), i64 1), i64 ptrtoint (i8* @typeId0 to i64)] personality i32 ()* @__gxx_personality_v0 !dbg !73 {
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
  br label %return, !dbg !74

return:                                           ; preds = %entry
  %13 = phi i32 [ 42, %entry ]
  %14 = load i8*, i8** %context, !dbg !74
  %15 = insertvalue { i8*, { i32 } } zeroinitializer, i8* %14, 0, !dbg !74
  %16 = insertvalue { i8*, { i32 } } %15, i32 %13, 1, 0, !dbg !74
  ret { i8*, { i32 } } %16, !dbg !74
}

define fastcc { i8*, { i32 } } @functionDef6(i8*, i32) #0 prefix [4 x i64] [i64 1, i64 ptrtoint (i8* @functionDefMutableDatas6 to i64), i64 sub (i64 ptrtoint (i8* @biasedInstanceId to i64), i64 1), i64 ptrtoint (i8* @typeId0 to i64)] personality i32 ()* @__gxx_personality_v0 !dbg !75 {
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
  br label %return, !dbg !76

return:                                           ; preds = %entry
  %13 = phi i32 [ 1, %entry ]
  %14 = load i8*, i8** %context, !dbg !76
  %15 = insertvalue { i8*, { i32 } } zeroinitializer, i8* %14, 0, !dbg !76
  %16 = insertvalue { i8*, { i32 } } %15, i32 %13, 1, 0, !dbg !76
  ret { i8*, { i32 } } %16, !dbg !76
}

define fastcc { i8*, { i32 } } @functionDef7(i8*, i32) #0 prefix [4 x i64] [i64 1, i64 ptrtoint (i8* @functionDefMutableDatas7 to i64), i64 sub (i64 ptrtoint (i8* @biasedInstanceId to i64), i64 1), i64 ptrtoint (i8* @typeId0 to i64)] personality i32 ()* @__gxx_personality_v0 !dbg !77 {
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
  br label %return, !dbg !78

return:                                           ; preds = %entry
  %13 = phi i32 [ 2, %entry ]
  %14 = load i8*, i8** %context, !dbg !78
  %15 = insertvalue { i8*, { i32 } } zeroinitializer, i8* %14, 0, !dbg !78
  %16 = insertvalue { i8*, { i32 } } %15, i32 %13, 1, 0, !dbg !78
  ret { i8*, { i32 } } %16, !dbg !78
}

define fastcc { i8*, {} } @functionDef8(i8*) #0 prefix [4 x i64] [i64 1, i64 ptrtoint (i8* @functionDefMutableDatas8 to i64), i64 sub (i64 ptrtoint (i8* @biasedInstanceId to i64), i64 1), i64 ptrtoint (i8* @typeId3 to i64)] personality i32 ()* @__gxx_personality_v0 !dbg !79 {
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
  %11 = load i8*, i8** %context, !dbg !80
  %12 = call fastcc { i8*, {} } @functionDef0(i8* %11), !dbg !80
  %13 = extractvalue { i8*, {} } %12, 0, !dbg !80
  store i8* %13, i8** %context, !dbg !80
  %14 = load i8*, i8** %context, !dbg !80
  %15 = ptrtoint i8* %14 to i64, !dbg !80
  %16 = and i64 %15, -2147483648, !dbg !80
  %17 = inttoptr i64 %16 to i8*, !dbg !80
  %18 = getelementptr inbounds i8, i8* %17, i64 ptrtoint (i8* @memoryOffset0 to i64), !dbg !80
  %19 = bitcast i8* %18 to i8**, !dbg !80
  %20 = load i8*, i8** %19, align 8, !dbg !80
  store i8* %20, i8** %memoryBase0, !dbg !80
  %21 = getelementptr inbounds i8, i8* %17, i64 add (i64 ptrtoint (i8* @memoryOffset0 to i64), i64 16), !dbg !80
  %22 = bitcast i8* %21 to i64*, !dbg !80
  %23 = load i64, i64* %22, align 1, !dbg !80
  store i64 %23, i64* %memoryNumReservedBytesMinusGuardBytes0, !dbg !80
  %24 = load i8*, i8** %context, !dbg !81
  %25 = call fastcc { i8*, { i32 } } @functionDef9(i8* %24), !dbg !81
  %26 = extractvalue { i8*, { i32 } } %25, 0, !dbg !81
  store i8* %26, i8** %context, !dbg !81
  %27 = load i8*, i8** %context, !dbg !81
  %28 = ptrtoint i8* %27 to i64, !dbg !81
  %29 = and i64 %28, -2147483648, !dbg !81
  %30 = inttoptr i64 %29 to i8*, !dbg !81
  %31 = getelementptr inbounds i8, i8* %30, i64 ptrtoint (i8* @memoryOffset0 to i64), !dbg !81
  %32 = bitcast i8* %31 to i8**, !dbg !81
  %33 = load i8*, i8** %32, align 8, !dbg !81
  store i8* %33, i8** %memoryBase0, !dbg !81
  %34 = getelementptr inbounds i8, i8* %30, i64 add (i64 ptrtoint (i8* @memoryOffset0 to i64), i64 16), !dbg !81
  %35 = bitcast i8* %34 to i64*, !dbg !81
  %36 = load i64, i64* %35, align 1, !dbg !81
  store i64 %36, i64* %memoryNumReservedBytesMinusGuardBytes0, !dbg !81
  %37 = extractvalue { i8*, { i32 } } %25, 1, 0, !dbg !81
  %38 = load i8*, i8** %context, !dbg !82
  %39 = call fastcc { i8*, {} } @functionDef14(i8* %38, i32 %37), !dbg !82
  %40 = extractvalue { i8*, {} } %39, 0, !dbg !82
  store i8* %40, i8** %context, !dbg !82
  %41 = load i8*, i8** %context, !dbg !82
  %42 = ptrtoint i8* %41 to i64, !dbg !82
  %43 = and i64 %42, -2147483648, !dbg !82
  %44 = inttoptr i64 %43 to i8*, !dbg !82
  %45 = getelementptr inbounds i8, i8* %44, i64 ptrtoint (i8* @memoryOffset0 to i64), !dbg !82
  %46 = bitcast i8* %45 to i8**, !dbg !82
  %47 = load i8*, i8** %46, align 8, !dbg !82
  store i8* %47, i8** %memoryBase0, !dbg !82
  %48 = getelementptr inbounds i8, i8* %44, i64 add (i64 ptrtoint (i8* @memoryOffset0 to i64), i64 16), !dbg !82
  %49 = bitcast i8* %48 to i64*, !dbg !82
  %50 = load i64, i64* %49, align 1, !dbg !82
  store i64 %50, i64* %memoryNumReservedBytesMinusGuardBytes0, !dbg !82
  %51 = load i8*, i8** %context, !dbg !83
  call void @unreachableTrap(i8* %51), !dbg !83
  unreachable, !dbg !83

return:                                           ; No predecessors!
  %52 = load i8*, i8** %context, !dbg !84
  %53 = insertvalue { i8*, {} } zeroinitializer, i8* %52, 0, !dbg !84
  ret { i8*, {} } %53, !dbg !84
}

define fastcc { i8*, { i32 } } @functionDef9(i8*) #0 prefix [4 x i64] [i64 1, i64 ptrtoint (i8* @functionDefMutableDatas9 to i64), i64 sub (i64 ptrtoint (i8* @biasedInstanceId to i64), i64 1), i64 ptrtoint (i8* @typeId4 to i64)] personality i32 ()* @__gxx_personality_v0 !dbg !85 {
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
  %11 = load i8*, i8** %context, !dbg !86
  %12 = call fastcc { i8*, { i32 } } @functionDef10(i8* %11), !dbg !86
  %13 = extractvalue { i8*, { i32 } } %12, 0, !dbg !86
  store i8* %13, i8** %context, !dbg !86
  %14 = load i8*, i8** %context, !dbg !86
  %15 = ptrtoint i8* %14 to i64, !dbg !86
  %16 = and i64 %15, -2147483648, !dbg !86
  %17 = inttoptr i64 %16 to i8*, !dbg !86
  %18 = getelementptr inbounds i8, i8* %17, i64 ptrtoint (i8* @memoryOffset0 to i64), !dbg !86
  %19 = bitcast i8* %18 to i8**, !dbg !86
  %20 = load i8*, i8** %19, align 8, !dbg !86
  store i8* %20, i8** %memoryBase0, !dbg !86
  %21 = getelementptr inbounds i8, i8* %17, i64 add (i64 ptrtoint (i8* @memoryOffset0 to i64), i64 16), !dbg !86
  %22 = bitcast i8* %21 to i64*, !dbg !86
  %23 = load i64, i64* %22, align 1, !dbg !86
  store i64 %23, i64* %memoryNumReservedBytesMinusGuardBytes0, !dbg !86
  %24 = extractvalue { i8*, { i32 } } %12, 1, 0, !dbg !86
  br label %return, !dbg !87

return:                                           ; preds = %entry
  %25 = phi i32 [ %24, %entry ]
  %26 = load i8*, i8** %context, !dbg !87
  %27 = insertvalue { i8*, { i32 } } zeroinitializer, i8* %26, 0, !dbg !87
  %28 = insertvalue { i8*, { i32 } } %27, i32 %25, 1, 0, !dbg !87
  ret { i8*, { i32 } } %28, !dbg !87
}

define fastcc { i8*, { i32 } } @functionDef10(i8*) #0 prefix [4 x i64] [i64 1, i64 ptrtoint (i8* @functionDefMutableDatas10 to i64), i64 sub (i64 ptrtoint (i8* @biasedInstanceId to i64), i64 1), i64 ptrtoint (i8* @typeId4 to i64)] personality i32 ()* @__gxx_personality_v0 !dbg !88 {
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
  %11 = alloca i32
  store i32 0, i32* %11
  %12 = alloca i32
  store i32 0, i32* %12
  %13 = alloca i32
  store i32 0, i32* %13
  %14 = alloca i32
  store i32 0, i32* %14
  %15 = load i8*, i8** %context, !dbg !89
  %16 = getelementptr inbounds i8, i8* %15, i64 ptrtoint (i8* @global0 to i64), !dbg !89
  %17 = bitcast i8* %16 to i32*, !dbg !89
  %18 = load i32, i32* %17, align 4, !dbg !89
  %19 = sub i32 %18, 16, !dbg !90
  store i32 %19, i32* %11, !dbg !91
  %20 = load i8*, i8** %context, !dbg !92
  %21 = getelementptr inbounds i8, i8* %20, i64 ptrtoint (i8* @global0 to i64), !dbg !92
  %22 = bitcast i8* %21 to i32*, !dbg !92
  store i32 %19, i32* %22, align 1, !dbg !92
  %23 = load i32, i32* %11, !dbg !93
  store i32 %23, i32* %12, !dbg !94
  %24 = add i32 %23, 12, !dbg !95
  %25 = load i32, i32* %11, !dbg !96
  %26 = add i32 %25, 8, !dbg !97
  %27 = load i8*, i8** %context, !dbg !98
  %28 = call fastcc { i8*, { i32 } } @functionImport0(i8* %27, i32 %24, i32 %26), !dbg !98
  %29 = extractvalue { i8*, { i32 } } %28, 0, !dbg !98
  store i8* %29, i8** %context, !dbg !98
  %30 = load i8*, i8** %context, !dbg !98
  %31 = ptrtoint i8* %30 to i64, !dbg !98
  %32 = and i64 %31, -2147483648, !dbg !98
  %33 = inttoptr i64 %32 to i8*, !dbg !98
  %34 = getelementptr inbounds i8, i8* %33, i64 ptrtoint (i8* @memoryOffset0 to i64), !dbg !98
  %35 = bitcast i8* %34 to i8**, !dbg !98
  %36 = load i8*, i8** %35, align 8, !dbg !98
  store i8* %36, i8** %memoryBase0, !dbg !98
  %37 = getelementptr inbounds i8, i8* %33, i64 add (i64 ptrtoint (i8* @memoryOffset0 to i64), i64 16), !dbg !98
  %38 = bitcast i8* %37 to i64*, !dbg !98
  %39 = load i64, i64* %38, align 1, !dbg !98
  store i64 %39, i64* %memoryNumReservedBytesMinusGuardBytes0, !dbg !98
  %40 = extractvalue { i8*, { i32 } } %28, 1, 0, !dbg !98
  %41 = icmp eq i32 %40, 0, !dbg !99
  %42 = zext i1 %41 to i32, !dbg !99
  %43 = icmp ne i32 %42, 0, !dbg !100
  br i1 %43, label %ifThen, label %ifElse, !dbg !100

ifThen:                                           ; preds = %entry
  %44 = load i32, i32* %12, !dbg !101
  %45 = zext i32 %44 to i64, !dbg !102
  %46 = add i64 %45, 12, !dbg !102
  %47 = load i8*, i8** %memoryBase0, !dbg !102
  %48 = getelementptr inbounds i8, i8* %47, i64 %46, !dbg !102
  %49 = bitcast i8* %48 to i32*, !dbg !102
  %50 = load volatile i32, i32* %49, align 1, !dbg !102
  store i32 %50, i32* %13, !dbg !103
  %51 = icmp ne i32 %50, 0, !dbg !104
  br i1 %51, label %ifThen1, label %ifElse2, !dbg !104

ifThen1:                                          ; preds = %ifThen
  %52 = load i32, i32* %11, !dbg !105
  %53 = load i32, i32* %13, !dbg !106
  %54 = shl i32 %53, 2, !dbg !107
  store i32 %54, i32* %13, !dbg !108
  %55 = add i32 %54, 19, !dbg !109
  %56 = and i32 %55, -16, !dbg !110
  %57 = sub i32 %52, %56, !dbg !111
  store i32 %57, i32* %11, !dbg !112
  store i32 %57, i32* %14, !dbg !113
  %58 = load i8*, i8** %context, !dbg !114
  %59 = getelementptr inbounds i8, i8* %58, i64 ptrtoint (i8* @global0 to i64), !dbg !114
  %60 = bitcast i8* %59 to i32*, !dbg !114
  store i32 %57, i32* %60, align 1, !dbg !114
  %61 = load i32, i32* %14, !dbg !115
  %62 = load i32, i32* %12, !dbg !116
  %63 = zext i32 %62 to i64, !dbg !117
  %64 = add i64 %63, 8, !dbg !117
  %65 = load i8*, i8** %memoryBase0, !dbg !117
  %66 = getelementptr inbounds i8, i8* %65, i64 %64, !dbg !117
  %67 = bitcast i8* %66 to i32*, !dbg !117
  %68 = load volatile i32, i32* %67, align 1, !dbg !117
  %69 = add i32 %68, 15, !dbg !118
  %70 = and i32 %69, -16, !dbg !119
  %71 = sub i32 %61, %70, !dbg !120
  store i32 %71, i32* %14, !dbg !121
  %72 = load i8*, i8** %context, !dbg !122
  %73 = getelementptr inbounds i8, i8* %72, i64 ptrtoint (i8* @global0 to i64), !dbg !122
  %74 = bitcast i8* %73 to i32*, !dbg !122
  store i32 %71, i32* %74, align 1, !dbg !122
  %75 = load i32, i32* %11, !dbg !123
  %76 = load i32, i32* %13, !dbg !124
  %77 = add i32 %75, %76, !dbg !125
  %78 = zext i32 %77 to i64, !dbg !126
  %79 = load i8*, i8** %memoryBase0, !dbg !126
  %80 = getelementptr inbounds i8, i8* %79, i64 %78, !dbg !126
  %81 = bitcast i8* %80 to i32*, !dbg !126
  store volatile i32 0, i32* %81, align 1, !dbg !126
  %82 = load i32, i32* %11, !dbg !127
  %83 = load i32, i32* %14, !dbg !128
  %84 = load i8*, i8** %context, !dbg !129
  %85 = call fastcc { i8*, { i32 } } @functionImport1(i8* %84, i32 %82, i32 %83), !dbg !129
  %86 = extractvalue { i8*, { i32 } } %85, 0, !dbg !129
  store i8* %86, i8** %context, !dbg !129
  %87 = load i8*, i8** %context, !dbg !129
  %88 = ptrtoint i8* %87 to i64, !dbg !129
  %89 = and i64 %88, -2147483648, !dbg !129
  %90 = inttoptr i64 %89 to i8*, !dbg !129
  %91 = getelementptr inbounds i8, i8* %90, i64 ptrtoint (i8* @memoryOffset0 to i64), !dbg !129
  %92 = bitcast i8* %91 to i8**, !dbg !129
  %93 = load i8*, i8** %92, align 8, !dbg !129
  store i8* %93, i8** %memoryBase0, !dbg !129
  %94 = getelementptr inbounds i8, i8* %90, i64 add (i64 ptrtoint (i8* @memoryOffset0 to i64), i64 16), !dbg !129
  %95 = bitcast i8* %94 to i64*, !dbg !129
  %96 = load i64, i64* %95, align 1, !dbg !129
  store i64 %96, i64* %memoryNumReservedBytesMinusGuardBytes0, !dbg !129
  %97 = extractvalue { i8*, { i32 } } %85, 1, 0, !dbg !129
  %98 = icmp ne i32 %97, 0, !dbg !130
  br i1 %98, label %blockEnd, label %br_ifElse, !dbg !130

br_ifElse:                                        ; preds = %ifThen1
  %99 = load i32, i32* %12, !dbg !131
  %100 = zext i32 %99 to i64, !dbg !132
  %101 = add i64 %100, 12, !dbg !132
  %102 = load i8*, i8** %memoryBase0, !dbg !132
  %103 = getelementptr inbounds i8, i8* %102, i64 %101, !dbg !132
  %104 = bitcast i8* %103 to i32*, !dbg !132
  %105 = load volatile i32, i32* %104, align 1, !dbg !132
  br label %ifElseEnd3, !dbg !133

ifElse2:                                          ; preds = %ifThen
  br label %ifElseEnd3, !dbg !134

ifElseEnd3:                                       ; preds = %ifElse2, %br_ifElse
  %106 = phi i32 [ %105, %br_ifElse ], [ 0, %ifElse2 ], !dbg !104
  store i32 %106, i32* %13, !dbg !135
  %107 = load i32, i32* %11, !dbg !136
  %108 = load i8*, i8** %context, !dbg !137
  %109 = call fastcc { i8*, { i32 } } @functionDef11(i8* %108, i32 %106, i32 %107), !dbg !137
  %110 = extractvalue { i8*, { i32 } } %109, 0, !dbg !137
  store i8* %110, i8** %context, !dbg !137
  %111 = load i8*, i8** %context, !dbg !137
  %112 = ptrtoint i8* %111 to i64, !dbg !137
  %113 = and i64 %112, -2147483648, !dbg !137
  %114 = inttoptr i64 %113 to i8*, !dbg !137
  %115 = getelementptr inbounds i8, i8* %114, i64 ptrtoint (i8* @memoryOffset0 to i64), !dbg !137
  %116 = bitcast i8* %115 to i8**, !dbg !137
  %117 = load i8*, i8** %116, align 8, !dbg !137
  store i8* %117, i8** %memoryBase0, !dbg !137
  %118 = getelementptr inbounds i8, i8* %114, i64 add (i64 ptrtoint (i8* @memoryOffset0 to i64), i64 16), !dbg !137
  %119 = bitcast i8* %118 to i64*, !dbg !137
  %120 = load i64, i64* %119, align 1, !dbg !137
  store i64 %120, i64* %memoryNumReservedBytesMinusGuardBytes0, !dbg !137
  %121 = extractvalue { i8*, { i32 } } %109, 1, 0, !dbg !137
  store i32 %121, i32* %11, !dbg !138
  %122 = load i32, i32* %12, !dbg !139
  %123 = add i32 %122, 16, !dbg !140
  %124 = load i8*, i8** %context, !dbg !141
  %125 = getelementptr inbounds i8, i8* %124, i64 ptrtoint (i8* @global0 to i64), !dbg !141
  %126 = bitcast i8* %125 to i32*, !dbg !141
  store i32 %123, i32* %126, align 1, !dbg !141
  %127 = load i32, i32* %11, !dbg !142
  br label %return, !dbg !143

ifElse:                                           ; preds = %entry
  br label %ifElseEnd, !dbg !144

ifElseEnd:                                        ; preds = %ifElse
  %128 = load i8*, i8** %context, !dbg !145
  %129 = call fastcc { i8*, {} } @functionImport2(i8* %128, i32 71), !dbg !145
  %130 = extractvalue { i8*, {} } %129, 0, !dbg !145
  store i8* %130, i8** %context, !dbg !145
  %131 = load i8*, i8** %context, !dbg !145
  %132 = ptrtoint i8* %131 to i64, !dbg !145
  %133 = and i64 %132, -2147483648, !dbg !145
  %134 = inttoptr i64 %133 to i8*, !dbg !145
  %135 = getelementptr inbounds i8, i8* %134, i64 ptrtoint (i8* @memoryOffset0 to i64), !dbg !145
  %136 = bitcast i8* %135 to i8**, !dbg !145
  %137 = load i8*, i8** %136, align 8, !dbg !145
  store i8* %137, i8** %memoryBase0, !dbg !145
  %138 = getelementptr inbounds i8, i8* %134, i64 add (i64 ptrtoint (i8* @memoryOffset0 to i64), i64 16), !dbg !145
  %139 = bitcast i8* %138 to i64*, !dbg !145
  %140 = load i64, i64* %139, align 1, !dbg !145
  store i64 %140, i64* %memoryNumReservedBytesMinusGuardBytes0, !dbg !145
  %141 = load i8*, i8** %context, !dbg !146
  call void @unreachableTrap(i8* %141), !dbg !146
  unreachable, !dbg !146

blockEnd:                                         ; preds = %ifThen1
  %142 = load i8*, i8** %context, !dbg !147
  %143 = call fastcc { i8*, {} } @functionImport2(i8* %142, i32 71), !dbg !147
  %144 = extractvalue { i8*, {} } %143, 0, !dbg !147
  store i8* %144, i8** %context, !dbg !147
  %145 = load i8*, i8** %context, !dbg !147
  %146 = ptrtoint i8* %145 to i64, !dbg !147
  %147 = and i64 %146, -2147483648, !dbg !147
  %148 = inttoptr i64 %147 to i8*, !dbg !147
  %149 = getelementptr inbounds i8, i8* %148, i64 ptrtoint (i8* @memoryOffset0 to i64), !dbg !147
  %150 = bitcast i8* %149 to i8**, !dbg !147
  %151 = load i8*, i8** %150, align 8, !dbg !147
  store i8* %151, i8** %memoryBase0, !dbg !147
  %152 = getelementptr inbounds i8, i8* %148, i64 add (i64 ptrtoint (i8* @memoryOffset0 to i64), i64 16), !dbg !147
  %153 = bitcast i8* %152 to i64*, !dbg !147
  %154 = load i64, i64* %153, align 1, !dbg !147
  store i64 %154, i64* %memoryNumReservedBytesMinusGuardBytes0, !dbg !147
  %155 = load i8*, i8** %context, !dbg !148
  call void @unreachableTrap(i8* %155), !dbg !148
  unreachable, !dbg !148

return:                                           ; preds = %ifElseEnd3
  %156 = phi i32 [ %127, %ifElseEnd3 ]
  %157 = load i8*, i8** %context, !dbg !149
  %158 = insertvalue { i8*, { i32 } } zeroinitializer, i8* %157, 0, !dbg !149
  %159 = insertvalue { i8*, { i32 } } %158, i32 %156, 1, 0, !dbg !149
  ret { i8*, { i32 } } %159, !dbg !149
}

define fastcc { i8*, { i32 } } @functionDef11(i8*, i32, i32) #0 prefix [4 x i64] [i64 1, i64 ptrtoint (i8* @functionDefMutableDatas11 to i64), i64 sub (i64 ptrtoint (i8* @biasedInstanceId to i64), i64 1), i64 ptrtoint (i8* @typeId1 to i64)] personality i32 ()* @__gxx_personality_v0 !dbg !150 {
entry:
  %memoryBase0 = alloca i8*
  %memoryNumReservedBytesMinusGuardBytes0 = alloca i64
  %context = alloca i8*
  store i8* %0, i8** %context
  %3 = load i8*, i8** %context
  %4 = ptrtoint i8* %3 to i64
  %5 = and i64 %4, -2147483648
  %6 = inttoptr i64 %5 to i8*
  %7 = getelementptr inbounds i8, i8* %6, i64 ptrtoint (i8* @memoryOffset0 to i64)
  %8 = bitcast i8* %7 to i8**
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %memoryBase0
  %10 = getelementptr inbounds i8, i8* %6, i64 add (i64 ptrtoint (i8* @memoryOffset0 to i64), i64 16)
  %11 = bitcast i8* %10 to i64*
  %12 = load i64, i64* %11, align 1
  store i64 %12, i64* %memoryNumReservedBytesMinusGuardBytes0
  %13 = alloca i32
  store i32 %1, i32* %13
  %14 = alloca i32
  store i32 %2, i32* %14
  %15 = load i32, i32* %13, !dbg !151
  %16 = load i32, i32* %14, !dbg !152
  %17 = load i8*, i8** %context, !dbg !153
  %18 = call fastcc { i8*, { i32 } } @functionDef3(i8* %17, i32 %15, i32 %16), !dbg !153
  %19 = extractvalue { i8*, { i32 } } %18, 0, !dbg !153
  store i8* %19, i8** %context, !dbg !153
  %20 = load i8*, i8** %context, !dbg !153
  %21 = ptrtoint i8* %20 to i64, !dbg !153
  %22 = and i64 %21, -2147483648, !dbg !153
  %23 = inttoptr i64 %22 to i8*, !dbg !153
  %24 = getelementptr inbounds i8, i8* %23, i64 ptrtoint (i8* @memoryOffset0 to i64), !dbg !153
  %25 = bitcast i8* %24 to i8**, !dbg !153
  %26 = load i8*, i8** %25, align 8, !dbg !153
  store i8* %26, i8** %memoryBase0, !dbg !153
  %27 = getelementptr inbounds i8, i8* %23, i64 add (i64 ptrtoint (i8* @memoryOffset0 to i64), i64 16), !dbg !153
  %28 = bitcast i8* %27 to i64*, !dbg !153
  %29 = load i64, i64* %28, align 1, !dbg !153
  store i64 %29, i64* %memoryNumReservedBytesMinusGuardBytes0, !dbg !153
  %30 = extractvalue { i8*, { i32 } } %18, 1, 0, !dbg !153
  br label %return, !dbg !154

return:                                           ; preds = %entry
  %31 = phi i32 [ %30, %entry ]
  %32 = load i8*, i8** %context, !dbg !154
  %33 = insertvalue { i8*, { i32 } } zeroinitializer, i8* %32, 0, !dbg !154
  %34 = insertvalue { i8*, { i32 } } %33, i32 %31, 1, 0, !dbg !154
  ret { i8*, { i32 } } %34, !dbg !154
}

define fastcc { i8*, {} } @functionDef12(i8*, i32) #0 prefix [4 x i64] [i64 1, i64 ptrtoint (i8* @functionDefMutableDatas12 to i64), i64 sub (i64 ptrtoint (i8* @biasedInstanceId to i64), i64 1), i64 ptrtoint (i8* @typeId2 to i64)] personality i32 ()* @__gxx_personality_v0 !dbg !155 {
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
  %13 = load i32, i32* %12, !dbg !156
  %14 = load i8*, i8** %context, !dbg !157
  %15 = call fastcc { i8*, {} } @functionImport2(i8* %14, i32 %13), !dbg !157
  %16 = extractvalue { i8*, {} } %15, 0, !dbg !157
  store i8* %16, i8** %context, !dbg !157
  %17 = load i8*, i8** %context, !dbg !157
  %18 = ptrtoint i8* %17 to i64, !dbg !157
  %19 = and i64 %18, -2147483648, !dbg !157
  %20 = inttoptr i64 %19 to i8*, !dbg !157
  %21 = getelementptr inbounds i8, i8* %20, i64 ptrtoint (i8* @memoryOffset0 to i64), !dbg !157
  %22 = bitcast i8* %21 to i8**, !dbg !157
  %23 = load i8*, i8** %22, align 8, !dbg !157
  store i8* %23, i8** %memoryBase0, !dbg !157
  %24 = getelementptr inbounds i8, i8* %20, i64 add (i64 ptrtoint (i8* @memoryOffset0 to i64), i64 16), !dbg !157
  %25 = bitcast i8* %24 to i64*, !dbg !157
  %26 = load i64, i64* %25, align 1, !dbg !157
  store i64 %26, i64* %memoryNumReservedBytesMinusGuardBytes0, !dbg !157
  %27 = load i8*, i8** %context, !dbg !158
  call void @unreachableTrap(i8* %27), !dbg !158
  unreachable, !dbg !158

return:                                           ; No predecessors!
  %28 = load i8*, i8** %context, !dbg !159
  %29 = insertvalue { i8*, {} } zeroinitializer, i8* %28, 0, !dbg !159
  ret { i8*, {} } %29, !dbg !159
}

define fastcc { i8*, {} } @functionDef13(i8*) #0 prefix [4 x i64] [i64 1, i64 ptrtoint (i8* @functionDefMutableDatas13 to i64), i64 sub (i64 ptrtoint (i8* @biasedInstanceId to i64), i64 1), i64 ptrtoint (i8* @typeId3 to i64)] personality i32 ()* @__gxx_personality_v0 !dbg !160 {
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
  %11 = load i8*, i8** %context, !dbg !161
  %12 = call fastcc { i8*, {} } @functionDef15(i8* %11), !dbg !161
  %13 = extractvalue { i8*, {} } %12, 0, !dbg !161
  store i8* %13, i8** %context, !dbg !161
  %14 = load i8*, i8** %context, !dbg !161
  %15 = ptrtoint i8* %14 to i64, !dbg !161
  %16 = and i64 %15, -2147483648, !dbg !161
  %17 = inttoptr i64 %16 to i8*, !dbg !161
  %18 = getelementptr inbounds i8, i8* %17, i64 ptrtoint (i8* @memoryOffset0 to i64), !dbg !161
  %19 = bitcast i8* %18 to i8**, !dbg !161
  %20 = load i8*, i8** %19, align 8, !dbg !161
  store i8* %20, i8** %memoryBase0, !dbg !161
  %21 = getelementptr inbounds i8, i8* %17, i64 add (i64 ptrtoint (i8* @memoryOffset0 to i64), i64 16), !dbg !161
  %22 = bitcast i8* %21 to i64*, !dbg !161
  %23 = load i64, i64* %22, align 1, !dbg !161
  store i64 %23, i64* %memoryNumReservedBytesMinusGuardBytes0, !dbg !161
  br label %return, !dbg !162

return:                                           ; preds = %entry
  %24 = load i8*, i8** %context, !dbg !162
  %25 = insertvalue { i8*, {} } zeroinitializer, i8* %24, 0, !dbg !162
  ret { i8*, {} } %25, !dbg !162
}

define fastcc { i8*, {} } @functionDef14(i8*, i32) #0 prefix [4 x i64] [i64 1, i64 ptrtoint (i8* @functionDefMutableDatas14 to i64), i64 sub (i64 ptrtoint (i8* @biasedInstanceId to i64), i64 1), i64 ptrtoint (i8* @typeId2 to i64)] personality i32 ()* @__gxx_personality_v0 !dbg !163 {
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
  %13 = load i8*, i8** %context, !dbg !164
  %14 = call fastcc { i8*, {} } @functionDef15(i8* %13), !dbg !164
  %15 = extractvalue { i8*, {} } %14, 0, !dbg !164
  store i8* %15, i8** %context, !dbg !164
  %16 = load i8*, i8** %context, !dbg !164
  %17 = ptrtoint i8* %16 to i64, !dbg !164
  %18 = and i64 %17, -2147483648, !dbg !164
  %19 = inttoptr i64 %18 to i8*, !dbg !164
  %20 = getelementptr inbounds i8, i8* %19, i64 ptrtoint (i8* @memoryOffset0 to i64), !dbg !164
  %21 = bitcast i8* %20 to i8**, !dbg !164
  %22 = load i8*, i8** %21, align 8, !dbg !164
  store i8* %22, i8** %memoryBase0, !dbg !164
  %23 = getelementptr inbounds i8, i8* %19, i64 add (i64 ptrtoint (i8* @memoryOffset0 to i64), i64 16), !dbg !164
  %24 = bitcast i8* %23 to i64*, !dbg !164
  %25 = load i64, i64* %24, align 1, !dbg !164
  store i64 %25, i64* %memoryNumReservedBytesMinusGuardBytes0, !dbg !164
  %26 = load i8*, i8** %context, !dbg !165
  %27 = call fastcc { i8*, {} } @functionDef13(i8* %26), !dbg !165
  %28 = extractvalue { i8*, {} } %27, 0, !dbg !165
  store i8* %28, i8** %context, !dbg !165
  %29 = load i8*, i8** %context, !dbg !165
  %30 = ptrtoint i8* %29 to i64, !dbg !165
  %31 = and i64 %30, -2147483648, !dbg !165
  %32 = inttoptr i64 %31 to i8*, !dbg !165
  %33 = getelementptr inbounds i8, i8* %32, i64 ptrtoint (i8* @memoryOffset0 to i64), !dbg !165
  %34 = bitcast i8* %33 to i8**, !dbg !165
  %35 = load i8*, i8** %34, align 8, !dbg !165
  store i8* %35, i8** %memoryBase0, !dbg !165
  %36 = getelementptr inbounds i8, i8* %32, i64 add (i64 ptrtoint (i8* @memoryOffset0 to i64), i64 16), !dbg !165
  %37 = bitcast i8* %36 to i64*, !dbg !165
  %38 = load i64, i64* %37, align 1, !dbg !165
  store i64 %38, i64* %memoryNumReservedBytesMinusGuardBytes0, !dbg !165
  %39 = load i8*, i8** %context, !dbg !166
  %40 = call fastcc { i8*, {} } @functionDef15(i8* %39), !dbg !166
  %41 = extractvalue { i8*, {} } %40, 0, !dbg !166
  store i8* %41, i8** %context, !dbg !166
  %42 = load i8*, i8** %context, !dbg !166
  %43 = ptrtoint i8* %42 to i64, !dbg !166
  %44 = and i64 %43, -2147483648, !dbg !166
  %45 = inttoptr i64 %44 to i8*, !dbg !166
  %46 = getelementptr inbounds i8, i8* %45, i64 ptrtoint (i8* @memoryOffset0 to i64), !dbg !166
  %47 = bitcast i8* %46 to i8**, !dbg !166
  %48 = load i8*, i8** %47, align 8, !dbg !166
  store i8* %48, i8** %memoryBase0, !dbg !166
  %49 = getelementptr inbounds i8, i8* %45, i64 add (i64 ptrtoint (i8* @memoryOffset0 to i64), i64 16), !dbg !166
  %50 = bitcast i8* %49 to i64*, !dbg !166
  %51 = load i64, i64* %50, align 1, !dbg !166
  store i64 %51, i64* %memoryNumReservedBytesMinusGuardBytes0, !dbg !166
  %52 = load i32, i32* %12, !dbg !167
  %53 = load i8*, i8** %context, !dbg !168
  %54 = call fastcc { i8*, {} } @functionDef12(i8* %53, i32 %52), !dbg !168
  %55 = extractvalue { i8*, {} } %54, 0, !dbg !168
  store i8* %55, i8** %context, !dbg !168
  %56 = load i8*, i8** %context, !dbg !168
  %57 = ptrtoint i8* %56 to i64, !dbg !168
  %58 = and i64 %57, -2147483648, !dbg !168
  %59 = inttoptr i64 %58 to i8*, !dbg !168
  %60 = getelementptr inbounds i8, i8* %59, i64 ptrtoint (i8* @memoryOffset0 to i64), !dbg !168
  %61 = bitcast i8* %60 to i8**, !dbg !168
  %62 = load i8*, i8** %61, align 8, !dbg !168
  store i8* %62, i8** %memoryBase0, !dbg !168
  %63 = getelementptr inbounds i8, i8* %59, i64 add (i64 ptrtoint (i8* @memoryOffset0 to i64), i64 16), !dbg !168
  %64 = bitcast i8* %63 to i64*, !dbg !168
  %65 = load i64, i64* %64, align 1, !dbg !168
  store i64 %65, i64* %memoryNumReservedBytesMinusGuardBytes0, !dbg !168
  %66 = load i8*, i8** %context, !dbg !169
  call void @unreachableTrap(i8* %66), !dbg !169
  unreachable, !dbg !169

return:                                           ; No predecessors!
  %67 = load i8*, i8** %context, !dbg !170
  %68 = insertvalue { i8*, {} } zeroinitializer, i8* %67, 0, !dbg !170
  ret { i8*, {} } %68, !dbg !170
}

define fastcc { i8*, {} } @functionDef15(i8*) #0 prefix [4 x i64] [i64 1, i64 ptrtoint (i8* @functionDefMutableDatas15 to i64), i64 sub (i64 ptrtoint (i8* @biasedInstanceId to i64), i64 1), i64 ptrtoint (i8* @typeId3 to i64)] personality i32 ()* @__gxx_personality_v0 !dbg !171 {
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
  br label %return, !dbg !172

return:                                           ; preds = %entry
  %11 = load i8*, i8** %context, !dbg !172
  %12 = insertvalue { i8*, {} } zeroinitializer, i8* %11, 0, !dbg !172
  ret { i8*, {} } %12, !dbg !172
}

define fastcc { i8*, { i32 } } @functionDef16(i8*) #0 prefix [4 x i64] [i64 1, i64 ptrtoint (i8* @functionDefMutableDatas16 to i64), i64 sub (i64 ptrtoint (i8* @biasedInstanceId to i64), i64 1), i64 ptrtoint (i8* @typeId4 to i64)] personality i32 ()* @__gxx_personality_v0 !dbg !173 {
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
  %11 = load i8*, i8** %context, !dbg !174
  %12 = getelementptr inbounds i8, i8* %11, i64 ptrtoint (i8* @global0 to i64), !dbg !174
  %13 = bitcast i8* %12 to i32*, !dbg !174
  %14 = load i32, i32* %13, align 4, !dbg !174
  br label %return, !dbg !175

return:                                           ; preds = %entry
  %15 = phi i32 [ %14, %entry ]
  %16 = load i8*, i8** %context, !dbg !175
  %17 = insertvalue { i8*, { i32 } } zeroinitializer, i8* %16, 0, !dbg !175
  %18 = insertvalue { i8*, { i32 } } %17, i32 %15, 1, 0, !dbg !175
  ret { i8*, { i32 } } %18, !dbg !175
}

define fastcc { i8*, {} } @functionDef17(i8*, i32) #0 prefix [4 x i64] [i64 1, i64 ptrtoint (i8* @functionDefMutableDatas17 to i64), i64 sub (i64 ptrtoint (i8* @biasedInstanceId to i64), i64 1), i64 ptrtoint (i8* @typeId2 to i64)] personality i32 ()* @__gxx_personality_v0 !dbg !176 {
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
  %13 = load i32, i32* %12, !dbg !177
  %14 = load i8*, i8** %context, !dbg !178
  %15 = getelementptr inbounds i8, i8* %14, i64 ptrtoint (i8* @global0 to i64), !dbg !178
  %16 = bitcast i8* %15 to i32*, !dbg !178
  store i32 %13, i32* %16, align 1, !dbg !178
  br label %return, !dbg !179

return:                                           ; preds = %entry
  %17 = load i8*, i8** %context, !dbg !179
  %18 = insertvalue { i8*, {} } zeroinitializer, i8* %17, 0, !dbg !179
  ret { i8*, {} } %18, !dbg !179
}

define fastcc { i8*, { i32 } } @functionDef18(i8*, i32) #0 prefix [4 x i64] [i64 1, i64 ptrtoint (i8* @functionDefMutableDatas18 to i64), i64 sub (i64 ptrtoint (i8* @biasedInstanceId to i64), i64 1), i64 ptrtoint (i8* @typeId0 to i64)] personality i32 ()* @__gxx_personality_v0 !dbg !180 {
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
  %13 = alloca i32
  store i32 0, i32* %13
  %14 = load i8*, i8** %context, !dbg !181
  %15 = getelementptr inbounds i8, i8* %14, i64 ptrtoint (i8* @global0 to i64), !dbg !181
  %16 = bitcast i8* %15 to i32*, !dbg !181
  %17 = load i32, i32* %16, align 4, !dbg !181
  %18 = load i32, i32* %12, !dbg !182
  %19 = sub i32 %17, %18, !dbg !183
  %20 = and i32 %19, -16, !dbg !184
  store i32 %20, i32* %13, !dbg !185
  %21 = load i8*, i8** %context, !dbg !186
  %22 = getelementptr inbounds i8, i8* %21, i64 ptrtoint (i8* @global0 to i64), !dbg !186
  %23 = bitcast i8* %22 to i32*, !dbg !186
  store i32 %20, i32* %23, align 1, !dbg !186
  %24 = load i32, i32* %13, !dbg !187
  br label %return, !dbg !188

return:                                           ; preds = %entry
  %25 = phi i32 [ %24, %entry ]
  %26 = load i8*, i8** %context, !dbg !188
  %27 = insertvalue { i8*, { i32 } } zeroinitializer, i8* %26, 0, !dbg !188
  %28 = insertvalue { i8*, { i32 } } %27, i32 %25, 1, 0, !dbg !188
  ret { i8*, { i32 } } %28, !dbg !188
}

define fastcc { i8*, { i32 } } @functionDef19(i8*) #0 prefix [4 x i64] [i64 1, i64 ptrtoint (i8* @functionDefMutableDatas19 to i64), i64 sub (i64 ptrtoint (i8* @biasedInstanceId to i64), i64 1), i64 ptrtoint (i8* @typeId4 to i64)] personality i32 ()* @__gxx_personality_v0 !dbg !189 {
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
  br label %return, !dbg !190

return:                                           ; preds = %entry
  %11 = phi i32 [ 1072, %entry ]
  %12 = load i8*, i8** %context, !dbg !190
  %13 = insertvalue { i8*, { i32 } } zeroinitializer, i8* %12, 0, !dbg !190
  %14 = insertvalue { i8*, { i32 } } %13, i32 %11, 1, 0, !dbg !190
  ret { i8*, { i32 } } %14, !dbg !190
}

declare void @callIndirectFail(i8*, i64, i64, %Object*, i64)

declare void @unreachableTrap(i8*)

attributes #0 = { "no-frame-pointer-elim"="true" "probe-stack"="wavm_probe_stack" }

!llvm.dbg.cu = !{!0}

!0 = distinct !DICompileUnit(language: 65535, file: !1, producer: "WAVM", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, nameTableKind: None)
!1 = !DIFile(filename: "unknown", directory: "unknown")
!2 = !{}
!3 = distinct !DISubprogram(name: "functionDef0", linkageName: "functionDef0", scope: !1, file: !1, type: !4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!4 = !DISubroutineType(types: !2)
!5 = !DILocation(line: 1, scope: !3)
!6 = distinct !DISubprogram(name: "functionDef1", linkageName: "functionDef1", scope: !1, file: !1, type: !7, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!7 = !DISubroutineType(types: !8)
!8 = !{!9}
!9 = !DIBasicType(name: "i32", size: 32, encoding: DW_ATE_signed)
!10 = !DILocation(line: 0, scope: !6)
!11 = !DILocation(line: 2, scope: !6)
!12 = !DILocation(line: 3, scope: !6)
!13 = !DILocation(line: 4, scope: !6)
!14 = !DILocation(line: 5, scope: !6)
!15 = !DILocation(line: 7, scope: !6)
!16 = !DILocation(line: 8, scope: !6)
!17 = !DILocation(line: 10, scope: !6)
!18 = !DILocation(line: 11, scope: !6)
!19 = !DILocation(line: 13, scope: !6)
!20 = !DILocation(line: 14, scope: !6)
!21 = !DILocation(line: 15, scope: !6)
!22 = !DILocation(line: 16, scope: !6)
!23 = !DILocation(line: 17, scope: !6)
!24 = !DILocation(line: 18, scope: !6)
!25 = !DILocation(line: 19, scope: !6)
!26 = !DILocation(line: 20, scope: !6)
!27 = !DILocation(line: 21, scope: !6)
!28 = distinct !{!"branch_weights", i32 0, i32 2147483647}
!29 = !DILocation(line: 22, scope: !6)
!30 = !DILocation(line: 23, scope: !6)
!31 = !DILocation(line: 25, scope: !6)
!32 = !DILocation(line: 26, scope: !6)
!33 = !DILocation(line: 27, scope: !6)
!34 = !DILocation(line: 28, scope: !6)
!35 = distinct !DISubprogram(name: "functionDef2", linkageName: "functionDef2", scope: !1, file: !1, type: !7, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!36 = !DILocation(line: 0, scope: !35)
!37 = !DILocation(line: 2, scope: !35)
!38 = !DILocation(line: 3, scope: !35)
!39 = !DILocation(line: 4, scope: !35)
!40 = !DILocation(line: 5, scope: !35)
!41 = !DILocation(line: 7, scope: !35)
!42 = !DILocation(line: 8, scope: !35)
!43 = !DILocation(line: 10, scope: !35)
!44 = !DILocation(line: 11, scope: !35)
!45 = !DILocation(line: 13, scope: !35)
!46 = !DILocation(line: 14, scope: !35)
!47 = !DILocation(line: 15, scope: !35)
!48 = !DILocation(line: 16, scope: !35)
!49 = !DILocation(line: 17, scope: !35)
!50 = !DILocation(line: 18, scope: !35)
!51 = !DILocation(line: 19, scope: !35)
!52 = !DILocation(line: 20, scope: !35)
!53 = !DILocation(line: 21, scope: !35)
!54 = !DILocation(line: 22, scope: !35)
!55 = !DILocation(line: 23, scope: !35)
!56 = !DILocation(line: 25, scope: !35)
!57 = !DILocation(line: 26, scope: !35)
!58 = !DILocation(line: 27, scope: !35)
!59 = !DILocation(line: 28, scope: !35)
!60 = distinct !DISubprogram(name: "functionDef3", linkageName: "functionDef3", scope: !1, file: !1, type: !61, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!61 = !DISubroutineType(types: !62)
!62 = !{!9, !9}
!63 = !DILocation(line: 0, scope: !60)
!64 = !DILocation(line: 2, scope: !60)
!65 = !DILocation(line: 3, scope: !60)
!66 = !DILocation(line: 4, scope: !60)
!67 = !DILocation(line: 5, scope: !60)
!68 = !DILocation(line: 6, scope: !60)
!69 = !DILocation(line: 7, scope: !60)
!70 = !DILocation(line: 8, scope: !60)
!71 = distinct !DISubprogram(name: "functionDef4", linkageName: "functionDef4", scope: !1, file: !1, type: !7, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!72 = !DILocation(line: 1, scope: !71)
!73 = distinct !DISubprogram(name: "functionDef5", linkageName: "functionDef5", scope: !1, file: !1, type: !7, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!74 = !DILocation(line: 1, scope: !73)
!75 = distinct !DISubprogram(name: "functionDef6", linkageName: "functionDef6", scope: !1, file: !1, type: !7, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!76 = !DILocation(line: 1, scope: !75)
!77 = distinct !DISubprogram(name: "functionDef7", linkageName: "functionDef7", scope: !1, file: !1, type: !7, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!78 = !DILocation(line: 1, scope: !77)
!79 = distinct !DISubprogram(name: "functionDef8", linkageName: "functionDef8", scope: !1, file: !1, type: !4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!80 = !DILocation(line: 0, scope: !79)
!81 = !DILocation(line: 1, scope: !79)
!82 = !DILocation(line: 2, scope: !79)
!83 = !DILocation(line: 3, scope: !79)
!84 = !DILocation(line: 4, scope: !79)
!85 = distinct !DISubprogram(name: "functionDef9", linkageName: "functionDef9", scope: !1, file: !1, type: !4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!86 = !DILocation(line: 0, scope: !85)
!87 = !DILocation(line: 1, scope: !85)
!88 = distinct !DISubprogram(name: "functionDef10", linkageName: "functionDef10", scope: !1, file: !1, type: !4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!89 = !DILocation(line: 0, scope: !88)
!90 = !DILocation(line: 2, scope: !88)
!91 = !DILocation(line: 3, scope: !88)
!92 = !DILocation(line: 4, scope: !88)
!93 = !DILocation(line: 6, scope: !88)
!94 = !DILocation(line: 7, scope: !88)
!95 = !DILocation(line: 9, scope: !88)
!96 = !DILocation(line: 10, scope: !88)
!97 = !DILocation(line: 12, scope: !88)
!98 = !DILocation(line: 13, scope: !88)
!99 = !DILocation(line: 14, scope: !88)
!100 = !DILocation(line: 15, scope: !88)
!101 = !DILocation(line: 16, scope: !88)
!102 = !DILocation(line: 17, scope: !88)
!103 = !DILocation(line: 18, scope: !88)
!104 = !DILocation(line: 19, scope: !88)
!105 = !DILocation(line: 20, scope: !88)
!106 = !DILocation(line: 21, scope: !88)
!107 = !DILocation(line: 23, scope: !88)
!108 = !DILocation(line: 24, scope: !88)
!109 = !DILocation(line: 26, scope: !88)
!110 = !DILocation(line: 28, scope: !88)
!111 = !DILocation(line: 29, scope: !88)
!112 = !DILocation(line: 30, scope: !88)
!113 = !DILocation(line: 31, scope: !88)
!114 = !DILocation(line: 32, scope: !88)
!115 = !DILocation(line: 33, scope: !88)
!116 = !DILocation(line: 34, scope: !88)
!117 = !DILocation(line: 35, scope: !88)
!118 = !DILocation(line: 37, scope: !88)
!119 = !DILocation(line: 39, scope: !88)
!120 = !DILocation(line: 40, scope: !88)
!121 = !DILocation(line: 41, scope: !88)
!122 = !DILocation(line: 42, scope: !88)
!123 = !DILocation(line: 43, scope: !88)
!124 = !DILocation(line: 44, scope: !88)
!125 = !DILocation(line: 45, scope: !88)
!126 = !DILocation(line: 47, scope: !88)
!127 = !DILocation(line: 48, scope: !88)
!128 = !DILocation(line: 49, scope: !88)
!129 = !DILocation(line: 50, scope: !88)
!130 = !DILocation(line: 51, scope: !88)
!131 = !DILocation(line: 52, scope: !88)
!132 = !DILocation(line: 53, scope: !88)
!133 = !DILocation(line: 54, scope: !88)
!134 = !DILocation(line: 56, scope: !88)
!135 = !DILocation(line: 57, scope: !88)
!136 = !DILocation(line: 58, scope: !88)
!137 = !DILocation(line: 59, scope: !88)
!138 = !DILocation(line: 60, scope: !88)
!139 = !DILocation(line: 61, scope: !88)
!140 = !DILocation(line: 63, scope: !88)
!141 = !DILocation(line: 64, scope: !88)
!142 = !DILocation(line: 65, scope: !88)
!143 = !DILocation(line: 66, scope: !88)
!144 = !DILocation(line: 67, scope: !88)
!145 = !DILocation(line: 69, scope: !88)
!146 = !DILocation(line: 70, scope: !88)
!147 = !DILocation(line: 73, scope: !88)
!148 = !DILocation(line: 74, scope: !88)
!149 = !DILocation(line: 75, scope: !88)
!150 = distinct !DISubprogram(name: "functionDef11", linkageName: "functionDef11", scope: !1, file: !1, type: !61, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!151 = !DILocation(line: 0, scope: !150)
!152 = !DILocation(line: 1, scope: !150)
!153 = !DILocation(line: 2, scope: !150)
!154 = !DILocation(line: 3, scope: !150)
!155 = distinct !DISubprogram(name: "functionDef12", linkageName: "functionDef12", scope: !1, file: !1, type: !7, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!156 = !DILocation(line: 0, scope: !155)
!157 = !DILocation(line: 1, scope: !155)
!158 = !DILocation(line: 2, scope: !155)
!159 = !DILocation(line: 3, scope: !155)
!160 = distinct !DISubprogram(name: "functionDef13", linkageName: "functionDef13", scope: !1, file: !1, type: !4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!161 = !DILocation(line: 0, scope: !160)
!162 = !DILocation(line: 1, scope: !160)
!163 = distinct !DISubprogram(name: "functionDef14", linkageName: "functionDef14", scope: !1, file: !1, type: !7, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!164 = !DILocation(line: 0, scope: !163)
!165 = !DILocation(line: 1, scope: !163)
!166 = !DILocation(line: 2, scope: !163)
!167 = !DILocation(line: 3, scope: !163)
!168 = !DILocation(line: 4, scope: !163)
!169 = !DILocation(line: 5, scope: !163)
!170 = !DILocation(line: 6, scope: !163)
!171 = distinct !DISubprogram(name: "functionDef15", linkageName: "functionDef15", scope: !1, file: !1, type: !4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!172 = !DILocation(line: 1, scope: !171)
!173 = distinct !DISubprogram(name: "functionDef16", linkageName: "functionDef16", scope: !1, file: !1, type: !4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!174 = !DILocation(line: 0, scope: !173)
!175 = !DILocation(line: 1, scope: !173)
!176 = distinct !DISubprogram(name: "functionDef17", linkageName: "functionDef17", scope: !1, file: !1, type: !7, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!177 = !DILocation(line: 0, scope: !176)
!178 = !DILocation(line: 1, scope: !176)
!179 = !DILocation(line: 2, scope: !176)
!180 = distinct !DISubprogram(name: "functionDef18", linkageName: "functionDef18", scope: !1, file: !1, type: !7, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!181 = !DILocation(line: 0, scope: !180)
!182 = !DILocation(line: 1, scope: !180)
!183 = !DILocation(line: 2, scope: !180)
!184 = !DILocation(line: 4, scope: !180)
!185 = !DILocation(line: 5, scope: !180)
!186 = !DILocation(line: 6, scope: !180)
!187 = !DILocation(line: 7, scope: !180)
!188 = !DILocation(line: 8, scope: !180)
!189 = distinct !DISubprogram(name: "functionDef19", linkageName: "functionDef19", scope: !1, file: !1, type: !4, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!190 = !DILocation(line: 1, scope: !189)
