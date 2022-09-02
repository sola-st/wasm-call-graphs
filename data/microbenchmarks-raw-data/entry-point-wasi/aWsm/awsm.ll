; ModuleID = '/home/michelle/Documents/sa-for-wasm/wasabi/lib/wasm/tests/callgraph-eval/data/library_data/entry-point-wasi/CG_tools_data/aWsm/awsm.bc'
source_filename = "main.wasm"

@globals_len = constant i32 0
@starting_pages = constant i32 0
@max_pages = constant i32 65536

declare void @initialize_region(i32, i32, i8*)

declare i32 @instruction_memory_size()

declare i32 @instruction_memory_grow(i32)

declare void @add_function_to_table(i32, i32, i8*)

declare i8* @get_function_from_table(i32, i32)

declare i32 @rotl_u32(i32, i32)

declare i32 @rotr_u32(i32, i32)

declare i64 @rotl_u64(i64, i64)

declare i64 @rotr_u64(i64, i64)

declare i32 @i32_trunc_f32(float)

declare i32 @u32_trunc_f32(float)

declare i32 @i32_trunc_f64(double)

declare i32 @u32_trunc_f64(double)

declare i64 @i64_trunc_f32(float)

declare i64 @u64_trunc_f32(float)

declare i64 @i64_trunc_f64(double)

declare i64 @u64_trunc_f64(double)

declare float @f32_trunc_f32(float)

declare double @f64_trunc_f64(double)

declare float @get_f32(i32)

declare void @set_f32(i32, float)

declare double @get_f64(i32)

declare void @set_f64(i32, double)

declare i8 @get_i8(i32)

declare void @set_i8(i32, i8)

declare i16 @get_i16(i32)

declare void @set_i16(i32, i16)

declare i32 @get_i32(i32)

declare void @set_i32(i32, i32)

declare i64 @get_i64(i32)

declare void @set_i64(i32, i64)

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #0

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #0

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #0

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.cttz.i64(i64, i1 immarg) #0

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #0

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #0

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #0

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.sqrt.f32(float) #0

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.sqrt.f64(double) #0

declare float @f32_min(float, float)

declare float @f32_max(float, float)

declare float @f32_copysign(float, float)

declare float @f32_floor(float)

declare float @f32_ceil(float)

declare float @f32_nearest(float)

declare double @f64_min(double, double)

declare double @f64_max(double, double)

declare double @f64_copysign(double, double)

declare double @f64_floor(double)

declare double @f64_ceil(double)

declare double @f64_nearest(double)

declare i32 @u32_div(i32, i32)

declare i32 @u32_rem(i32, i32)

declare i32 @i32_div(i32, i32)

declare i32 @i32_rem(i32, i32)

declare i64 @u64_div(i64, i64)

declare i64 @u64_rem(i64, i64)

declare i64 @i64_div(i64, i64)

declare i64 @i64_rem(i64, i64)

declare void @awsm_abi__trap_unreachable()

; Function Attrs: nounwind
define void @wasmf__start() #1 {
entry:
  call void @wasmf_internal_1()
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind
define void @wasmf_internal_1() #1 {
entry:
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind
define void @wasmf_internal_2() #1 {
entry:
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

define void @populate_memory() {
entry:
  ret void
}

define void @awsm_abi__start_fn() {
entry:
  ret void
}

define void @populate_table() {
entry:
  ret void
}

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #1 = { nounwind }
