; ModuleID = 'heap_pass.cpp'
source_filename = "heap_pass.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.llvm::RegisterPass" = type { %"class.llvm::PassInfo" }
%"class.llvm::PassInfo" = type { %"class.llvm::StringRef", %"class.llvm::StringRef", i8*, i8, i8, i8, %"class.std::vector", %"class.llvm::Pass"* ()* }
%"class.llvm::StringRef" = type { i8*, i64 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl" }
%"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl" = type { %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl_data" = type { %"class.llvm::PassInfo"**, %"class.llvm::PassInfo"**, %"class.llvm::PassInfo"** }
%"class.llvm::Pass" = type <{ i32 (...)**, %"class.llvm::AnalysisResolver"*, i8*, i32, [4 x i8] }>
%"class.llvm::AnalysisResolver" = type { %"class.std::vector.0", %"class.llvm::PMDataManager"* }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<std::pair<const void *, llvm::Pass *>, std::allocator<std::pair<const void *, llvm::Pass *>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<const void *, llvm::Pass *>, std::allocator<std::pair<const void *, llvm::Pass *>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::pair<const void *, llvm::Pass *>, std::allocator<std::pair<const void *, llvm::Pass *>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::pair<const void *, llvm::Pass *>, std::allocator<std::pair<const void *, llvm::Pass *>>>::_Vector_impl_data" = type { %"struct.std::pair"*, %"struct.std::pair"*, %"struct.std::pair"* }
%"struct.std::pair" = type { i8*, %"class.llvm::Pass"* }
%"class.llvm::PMDataManager" = type opaque
%"class.llvm::PassRegistry" = type { %"class.llvm::sys::SmartRWMutex", %"class.llvm::DenseMap", %"class.llvm::StringMap", %"class.std::vector.5", %"class.std::vector.10" }
%"class.llvm::sys::SmartRWMutex" = type { %"class.std::shared_timed_mutex", i32, i32 }
%"class.std::shared_timed_mutex" = type { %"class.std::__shared_mutex_pthread" }
%"class.std::__shared_mutex_pthread" = type { %union.pthread_rwlock_t }
%union.pthread_rwlock_t = type { %struct.__pthread_rwlock_arch_t }
%struct.__pthread_rwlock_arch_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, [7 x i8], i64, i32 }
%"class.llvm::DenseMap" = type <{ %"struct.llvm::detail::DenseMapPair"*, i32, i32, i32, [4 x i8] }>
%"struct.llvm::detail::DenseMapPair" = type opaque
%"class.llvm::StringMap" = type <{ %"class.llvm::StringMapImpl", %"class.llvm::MallocAllocator", [7 x i8] }>
%"class.llvm::StringMapImpl" = type { %"class.llvm::StringMapEntryBase"**, i32, i32, i32, i32 }
%"class.llvm::StringMapEntryBase" = type { i64 }
%"class.llvm::MallocAllocator" = type { i8 }
%"class.std::vector.5" = type { %"struct.std::_Vector_base.6" }
%"struct.std::_Vector_base.6" = type { %"struct.std::_Vector_base<std::unique_ptr<const llvm::PassInfo>, std::allocator<std::unique_ptr<const llvm::PassInfo>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::unique_ptr<const llvm::PassInfo>, std::allocator<std::unique_ptr<const llvm::PassInfo>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::unique_ptr<const llvm::PassInfo>, std::allocator<std::unique_ptr<const llvm::PassInfo>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::unique_ptr<const llvm::PassInfo>, std::allocator<std::unique_ptr<const llvm::PassInfo>>>::_Vector_impl_data" = type { %"class.std::unique_ptr"*, %"class.std::unique_ptr"*, %"class.std::unique_ptr"* }
%"class.std::unique_ptr" = type opaque
%"class.std::vector.10" = type { %"struct.std::_Vector_base.11" }
%"struct.std::_Vector_base.11" = type { %"struct.std::_Vector_base<llvm::PassRegistrationListener *, std::allocator<llvm::PassRegistrationListener *>>::_Vector_impl" }
%"struct.std::_Vector_base<llvm::PassRegistrationListener *, std::allocator<llvm::PassRegistrationListener *>>::_Vector_impl" = type { %"struct.std::_Vector_base<llvm::PassRegistrationListener *, std::allocator<llvm::PassRegistrationListener *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<llvm::PassRegistrationListener *, std::allocator<llvm::PassRegistrationListener *>>::_Vector_impl_data" = type { %"struct.llvm::PassRegistrationListener"**, %"struct.llvm::PassRegistrationListener"**, %"struct.llvm::PassRegistrationListener"** }
%"struct.llvm::PassRegistrationListener" = type { i32 (...)** }
%"class.std::allocator" = type { i8 }
%"class.std::__new_allocator" = type { i8 }
%"struct.(anonymous namespace)::HeapMemoryMeasurement" = type { %"class.llvm::FunctionPass.base", [4 x i8] }
%"class.llvm::FunctionPass.base" = type { %"class.llvm::Pass.base" }
%"class.llvm::Pass.base" = type <{ i32 (...)**, %"class.llvm::AnalysisResolver"*, i8*, i32 }>
%"class.llvm::FunctionPass" = type { %"class.llvm::Pass.base", [4 x i8] }
%"class.llvm::Module" = type { %"class.llvm::LLVMContext"*, %"class.llvm::SymbolTableList", %"class.llvm::SymbolTableList.15", %"class.llvm::SymbolTableList.23", %"class.llvm::SymbolTableList.31", %"class.llvm::iplist", %"class.std::__cxx11::basic_string", %"class.std::unique_ptr.48", %"class.llvm::StringMap.51", %"class.std::unique_ptr.53", %"class.std::unique_ptr.61", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.llvm::StringMap.69", %"class.llvm::DataLayout", %"class.llvm::StringMap.88", %"class.llvm::DenseMap.90" }
%"class.llvm::LLVMContext" = type { %"class.llvm::LLVMContextImpl"* }
%"class.llvm::LLVMContextImpl" = type opaque
%"class.llvm::SymbolTableList" = type { %"class.llvm::iplist_impl" }
%"class.llvm::iplist_impl" = type { %"class.llvm::simple_ilist" }
%"class.llvm::simple_ilist" = type { %"class.llvm::ilist_sentinel" }
%"class.llvm::ilist_sentinel" = type { %"class.llvm::ilist_node_impl" }
%"class.llvm::ilist_node_impl" = type { %"class.llvm::ilist_node_base" }
%"class.llvm::ilist_node_base" = type { %"class.llvm::ilist_node_base"*, %"class.llvm::ilist_node_base"* }
%"class.llvm::SymbolTableList.15" = type { %"class.llvm::iplist_impl.16" }
%"class.llvm::iplist_impl.16" = type { %"class.llvm::simple_ilist.19" }
%"class.llvm::simple_ilist.19" = type { %"class.llvm::ilist_sentinel.21" }
%"class.llvm::ilist_sentinel.21" = type { %"class.llvm::ilist_node_impl.22" }
%"class.llvm::ilist_node_impl.22" = type { %"class.llvm::ilist_node_base" }
%"class.llvm::SymbolTableList.23" = type { %"class.llvm::iplist_impl.24" }
%"class.llvm::iplist_impl.24" = type { %"class.llvm::simple_ilist.27" }
%"class.llvm::simple_ilist.27" = type { %"class.llvm::ilist_sentinel.29" }
%"class.llvm::ilist_sentinel.29" = type { %"class.llvm::ilist_node_impl.30" }
%"class.llvm::ilist_node_impl.30" = type { %"class.llvm::ilist_node_base" }
%"class.llvm::SymbolTableList.31" = type { %"class.llvm::iplist_impl.32" }
%"class.llvm::iplist_impl.32" = type { %"class.llvm::simple_ilist.35" }
%"class.llvm::simple_ilist.35" = type { %"class.llvm::ilist_sentinel.37" }
%"class.llvm::ilist_sentinel.37" = type { %"class.llvm::ilist_node_impl.38" }
%"class.llvm::ilist_node_impl.38" = type { %"class.llvm::ilist_node_base" }
%"class.llvm::iplist" = type { %"class.llvm::iplist_impl.39" }
%"class.llvm::iplist_impl.39" = type { %"class.llvm::simple_ilist.41" }
%"class.llvm::simple_ilist.41" = type { %"class.llvm::ilist_sentinel.43" }
%"class.llvm::ilist_sentinel.43" = type { %"class.llvm::ilist_node_impl.44" }
%"class.llvm::ilist_node_impl.44" = type { %"class.llvm::ilist_node_base" }
%"class.std::unique_ptr.48" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.50" }
%"struct.std::_Head_base.50" = type { %"class.llvm::ValueSymbolTable"* }
%"class.llvm::ValueSymbolTable" = type opaque
%"class.llvm::StringMap.51" = type <{ %"class.llvm::StringMapImpl", %"class.llvm::MallocAllocator", [7 x i8] }>
%"class.std::unique_ptr.53" = type { %"struct.std::__uniq_ptr_data.54" }
%"struct.std::__uniq_ptr_data.54" = type { %"class.std::__uniq_ptr_impl.55" }
%"class.std::__uniq_ptr_impl.55" = type { %"class.std::tuple.56" }
%"class.std::tuple.56" = type { %"struct.std::_Tuple_impl.57" }
%"struct.std::_Tuple_impl.57" = type { %"struct.std::_Head_base.60" }
%"struct.std::_Head_base.60" = type { %"class.llvm::MemoryBuffer"* }
%"class.llvm::MemoryBuffer" = type opaque
%"class.std::unique_ptr.61" = type { %"struct.std::__uniq_ptr_data.62" }
%"struct.std::__uniq_ptr_data.62" = type { %"class.std::__uniq_ptr_impl.63" }
%"class.std::__uniq_ptr_impl.63" = type { %"class.std::tuple.64" }
%"class.std::tuple.64" = type { %"struct.std::_Tuple_impl.65" }
%"struct.std::_Tuple_impl.65" = type { %"struct.std::_Head_base.68" }
%"struct.std::_Head_base.68" = type { %"class.llvm::GVMaterializer"* }
%"class.llvm::GVMaterializer" = type opaque
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }
%"class.llvm::StringMap.69" = type <{ %"class.llvm::StringMapImpl", %"class.llvm::MallocAllocator", [7 x i8] }>
%"class.llvm::DataLayout" = type { i8, i32, %"struct.llvm::MaybeAlign", i32, i32, %"struct.llvm::MaybeAlign", i32, i32, %"class.llvm::SmallVector", %"class.llvm::SmallVector.72", %"class.std::__cxx11::basic_string", %"class.llvm::SmallVector.78", i8*, %"class.llvm::SmallVector.83" }
%"struct.llvm::MaybeAlign" = type { %"class.llvm::Optional" }
%"class.llvm::Optional" = type { %"class.llvm::optional_detail::OptionalStorage" }
%"class.llvm::optional_detail::OptionalStorage" = type { %union.anon.71, i8 }
%union.anon.71 = type { i8 }
%"class.llvm::SmallVector" = type { %"class.llvm::SmallVectorImpl", %"struct.llvm::SmallVectorStorage" }
%"class.llvm::SmallVectorImpl" = type { %"class.llvm::SmallVectorTemplateBase" }
%"class.llvm::SmallVectorTemplateBase" = type { %"class.llvm::SmallVectorTemplateCommon" }
%"class.llvm::SmallVectorTemplateCommon" = type { %"class.llvm::SmallVectorBase" }
%"class.llvm::SmallVectorBase" = type { i8*, i64, i64 }
%"struct.llvm::SmallVectorStorage" = type { [8 x i8] }
%"class.llvm::SmallVector.72" = type { %"class.llvm::SmallVectorImpl.73", %"struct.llvm::SmallVectorStorage.77" }
%"class.llvm::SmallVectorImpl.73" = type { %"class.llvm::SmallVectorTemplateBase.74" }
%"class.llvm::SmallVectorTemplateBase.74" = type { %"class.llvm::SmallVectorTemplateCommon.75" }
%"class.llvm::SmallVectorTemplateCommon.75" = type { %"class.llvm::SmallVectorBase.76" }
%"class.llvm::SmallVectorBase.76" = type { i8*, i32, i32 }
%"struct.llvm::SmallVectorStorage.77" = type { [128 x i8] }
%"class.llvm::SmallVector.78" = type { %"class.llvm::SmallVectorImpl.79", %"struct.llvm::SmallVectorStorage.82" }
%"class.llvm::SmallVectorImpl.79" = type { %"class.llvm::SmallVectorTemplateBase.80" }
%"class.llvm::SmallVectorTemplateBase.80" = type { %"class.llvm::SmallVectorTemplateCommon.81" }
%"class.llvm::SmallVectorTemplateCommon.81" = type { %"class.llvm::SmallVectorBase.76" }
%"struct.llvm::SmallVectorStorage.82" = type { [128 x i8] }
%"class.llvm::SmallVector.83" = type { %"class.llvm::SmallVectorImpl.84", %"struct.llvm::SmallVectorStorage.87" }
%"class.llvm::SmallVectorImpl.84" = type { %"class.llvm::SmallVectorTemplateBase.85" }
%"class.llvm::SmallVectorTemplateBase.85" = type { %"class.llvm::SmallVectorTemplateCommon.86" }
%"class.llvm::SmallVectorTemplateCommon.86" = type { %"class.llvm::SmallVectorBase.76" }
%"struct.llvm::SmallVectorStorage.87" = type { [32 x i8] }
%"class.llvm::StringMap.88" = type <{ %"class.llvm::StringMapImpl", %"class.llvm::MallocAllocator", [7 x i8] }>
%"class.llvm::DenseMap.90" = type <{ %"struct.llvm::detail::DenseMapPair.92"*, i32, i32, i32, [4 x i8] }>
%"struct.llvm::detail::DenseMapPair.92" = type opaque
%"class.llvm::raw_ostream" = type <{ i32 (...)**, i32, [4 x i8], i8*, i8*, i8*, i8, [7 x i8], %"class.llvm::raw_ostream"*, i32, [4 x i8] }>
%"class.llvm::PMStack" = type opaque
%"class.llvm::AnalysisUsage" = type <{ %"class.llvm::SmallVector.94", %"class.llvm::SmallVector.99", %"class.llvm::SmallVector.99", %"class.llvm::SmallVector.101", i8, [7 x i8] }>
%"class.llvm::SmallVector.94" = type { %"class.llvm::SmallVectorImpl.95", %"struct.llvm::SmallVectorStorage.98" }
%"class.llvm::SmallVectorImpl.95" = type { %"class.llvm::SmallVectorTemplateBase.96" }
%"class.llvm::SmallVectorTemplateBase.96" = type { %"class.llvm::SmallVectorTemplateCommon.97" }
%"class.llvm::SmallVectorTemplateCommon.97" = type { %"class.llvm::SmallVectorBase.76" }
%"struct.llvm::SmallVectorStorage.98" = type { [64 x i8] }
%"class.llvm::SmallVector.99" = type { %"class.llvm::SmallVectorImpl.95", %"struct.llvm::SmallVectorStorage.100" }
%"struct.llvm::SmallVectorStorage.100" = type { [16 x i8] }
%"class.llvm::SmallVector.101" = type { %"class.llvm::SmallVectorImpl.95" }
%"class.llvm::ImmutablePass" = type { %"class.llvm::ModulePass.base", [4 x i8] }
%"class.llvm::ModulePass.base" = type { %"class.llvm::Pass.base" }
%"class.llvm::Function" = type { %"class.llvm::GlobalObject", %"class.llvm::ilist_node", %"class.llvm::SymbolTableList.103", %"class.llvm::Argument"*, i64, %"class.std::unique_ptr.48", %"class.llvm::AttributeList" }
%"class.llvm::GlobalObject" = type { %"class.llvm::GlobalValue", %"class.llvm::Comdat"* }
%"class.llvm::GlobalValue" = type { %"class.llvm::Constant", %"class.llvm::Type"*, i32, i32, %"class.llvm::Module"* }
%"class.llvm::Constant" = type { %"class.llvm::User" }
%"class.llvm::User" = type { %"class.llvm::Value" }
%"class.llvm::Value" = type { %"class.llvm::Type"*, %"class.llvm::Use"*, i8, i8, i16, i32 }
%"class.llvm::Use" = type { %"class.llvm::Value"*, %"class.llvm::Use"*, %"class.llvm::Use"**, %"class.llvm::User"* }
%"class.llvm::Type" = type { %"class.llvm::LLVMContext"*, i32, i32, %"class.llvm::Type"** }
%"class.llvm::Comdat" = type { %"class.llvm::StringMapEntry"*, i32, %"class.llvm::SmallPtrSet" }
%"class.llvm::StringMapEntry" = type opaque
%"class.llvm::SmallPtrSet" = type { %"class.llvm::SmallPtrSetImpl.base", [2 x i8*] }
%"class.llvm::SmallPtrSetImpl.base" = type { %"class.llvm::SmallPtrSetImplBase.base" }
%"class.llvm::SmallPtrSetImplBase.base" = type <{ i8**, i8**, i32, i32, i32 }>
%"class.llvm::ilist_node" = type { %"class.llvm::ilist_node_impl.22" }
%"class.llvm::SymbolTableList.103" = type { %"class.llvm::iplist_impl.104" }
%"class.llvm::iplist_impl.104" = type { %"class.llvm::simple_ilist.107" }
%"class.llvm::simple_ilist.107" = type { %"class.llvm::ilist_sentinel.109" }
%"class.llvm::ilist_sentinel.109" = type { %"class.llvm::ilist_node_impl.110" }
%"class.llvm::ilist_node_impl.110" = type { %"class.llvm::ilist_node_base" }
%"class.llvm::Argument" = type <{ %"class.llvm::Value", %"class.llvm::Function"*, i32, [4 x i8] }>
%"class.llvm::AttributeList" = type { %"class.llvm::AttributeListImpl"* }
%"class.llvm::AttributeListImpl" = type opaque
%"class.llvm::ilist_iterator" = type { %"class.llvm::ilist_node_impl.110"* }
%"class.llvm::BasicBlock" = type { %"class.llvm::Value", %"class.llvm::ilist_node_with_parent", %"class.llvm::SymbolTableList.115", %"class.llvm::Function"* }
%"class.llvm::ilist_node_with_parent" = type { %"class.llvm::ilist_node.114" }
%"class.llvm::ilist_node.114" = type { %"class.llvm::ilist_node_impl.110" }
%"class.llvm::SymbolTableList.115" = type { %"class.llvm::iplist_impl.116" }
%"class.llvm::iplist_impl.116" = type { %"class.llvm::simple_ilist.119" }
%"class.llvm::simple_ilist.119" = type { %"class.llvm::ilist_sentinel.121" }
%"class.llvm::ilist_sentinel.121" = type { %"class.llvm::ilist_node_impl.122" }
%"class.llvm::ilist_node_impl.122" = type { %"class.llvm::ilist_node_base" }
%"class.llvm::ilist_iterator.123" = type { %"class.llvm::ilist_node_impl.122"* }
%"class.llvm::Instruction" = type <{ %"class.llvm::User", %"class.llvm::ilist_node_with_parent.124", %"class.llvm::BasicBlock"*, %"class.llvm::DebugLoc", i32, [4 x i8] }>
%"class.llvm::ilist_node_with_parent.124" = type { %"class.llvm::ilist_node.125" }
%"class.llvm::ilist_node.125" = type { %"class.llvm::ilist_node_impl.122" }
%"class.llvm::DebugLoc" = type { %"class.llvm::TypedTrackingMDRef" }
%"class.llvm::TypedTrackingMDRef" = type { %"class.llvm::TrackingMDRef" }
%"class.llvm::TrackingMDRef" = type { %"class.llvm::Metadata"* }
%"class.llvm::Metadata" = type { i8, i8, i16, i32 }
%"class.llvm::AllocaInst" = type { %"class.llvm::UnaryInstruction.base", %"class.llvm::Type"* }
%"class.llvm::UnaryInstruction.base" = type { %"class.llvm::Instruction.base" }
%"class.llvm::Instruction.base" = type <{ %"class.llvm::User", %"class.llvm::ilist_node_with_parent.124", %"class.llvm::BasicBlock"*, %"class.llvm::DebugLoc", i32 }>
%"class.llvm::TypeSize" = type { %"class.llvm::LinearPolySize.base", [4 x i8] }
%"class.llvm::LinearPolySize.base" = type { %"class.llvm::UnivariateLinearPolyBase.base" }
%"class.llvm::UnivariateLinearPolyBase.base" = type <{ i64, i32 }>
%"class.llvm::CallInst" = type { %"class.llvm::CallBase" }
%"class.llvm::CallBase" = type { %"class.llvm::Instruction.base", %"class.llvm::AttributeList", %"class.llvm::FunctionType"* }
%"class.llvm::FunctionType" = type { %"class.llvm::Type" }
%"class.llvm::raw_fd_ostream" = type { %"class.llvm::raw_pwrite_stream.base", i32, i8, i8, i8, %"class.llvm::Optional.111", %"class.std::error_code", i64 }
%"class.llvm::raw_pwrite_stream.base" = type { %"class.llvm::raw_ostream.base" }
%"class.llvm::raw_ostream.base" = type <{ i32 (...)**, i32, [4 x i8], i8*, i8*, i8*, i8, [7 x i8], %"class.llvm::raw_ostream"*, i32 }>
%"class.llvm::Optional.111" = type { %"class.llvm::optional_detail::OptionalStorage.112" }
%"class.llvm::optional_detail::OptionalStorage.112" = type { %union.anon.113, i8 }
%union.anon.113 = type { i8 }
%"class.std::error_code" = type { i32, %"class.std::_V2::error_category"* }
%"class.std::_V2::error_category" = type { i32 (...)** }
%"struct.llvm::ilist_detail::SpecificNodeAccess.108" = type { i8 }
%"struct.llvm::ilist_detail::SpecificNodeAccess.120" = type { i8 }
%"class.llvm::LinearPolySize" = type { %"class.llvm::UnivariateLinearPolyBase.base", [4 x i8] }
%"class.llvm::UnivariateLinearPolyBase" = type <{ i64, i32, [4 x i8] }>
%"class.llvm::ArrayType" = type { %"class.llvm::Type", %"class.llvm::Type"*, i64 }
%"class.llvm::VectorType" = type <{ %"class.llvm::Type", %"class.llvm::Type"*, i32, [4 x i8] }>
%"class.llvm::ElementCount" = type { %"class.llvm::LinearPolySize.128" }
%"class.llvm::LinearPolySize.128" = type { %"class.llvm::UnivariateLinearPolyBase.129" }
%"class.llvm::UnivariateLinearPolyBase.129" = type { i32, i32 }
%"class.llvm::SmallPtrSetImpl.126" = type opaque
%"class.llvm::StructType" = type { %"class.llvm::Type", i8* }
%"class.llvm::StructLayout" = type { i64, %"struct.llvm::Align", i8, i32 }
%"struct.llvm::Align" = type { i8 }
%"struct.llvm::PointerAlignElem" = type { %"struct.llvm::Align", %"struct.llvm::Align", i32, i32, i32 }
%"class.llvm::PointerType" = type { %"class.llvm::Type", %"class.llvm::Type"* }
%"class.llvm::IntegerType" = type { %"class.llvm::Type" }

$_ZN4llvm9StringRefC2EPKc = comdat any

$_ZN4llvm9StringRef6strLenEPKc = comdat any

$_ZN4llvm8PassInfoD2Ev = comdat any

$_ZNSt6vectorIPKN4llvm8PassInfoESaIS3_EED2Ev = comdat any

$_ZSt8_DestroyIPPKN4llvm8PassInfoES3_EvT_S5_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIPKN4llvm8PassInfoESaIS3_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIPKN4llvm8PassInfoESaIS3_EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZSt8_DestroyIPPKN4llvm8PassInfoEEvT_S5_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPPKN4llvm8PassInfoEEEvT_S7_ = comdat any

$_ZNSt12_Vector_baseIPKN4llvm8PassInfoESaIS3_EE13_M_deallocateEPS3_m = comdat any

$_ZNSt12_Vector_baseIPKN4llvm8PassInfoESaIS3_EE12_Vector_implD2Ev = comdat any

$_ZNSt16allocator_traitsISaIPKN4llvm8PassInfoEEE10deallocateERS4_PS3_m = comdat any

$_ZNSt15__new_allocatorIPKN4llvm8PassInfoEE10deallocateEPS3_m = comdat any

$_ZNSaIPKN4llvm8PassInfoEED2Ev = comdat any

$_ZNSt15__new_allocatorIPKN4llvm8PassInfoEED2Ev = comdat any

$_ZN4llvm8PassInfoC2ENS_9StringRefES1_PKvPFPNS_4PassEvEbb = comdat any

$_ZN4llvm12FunctionPassC2ERc = comdat any

$_ZN4llvm4Pass16doInitializationERNS_6ModuleE = comdat any

$_ZN4llvm4Pass14doFinalizationERNS_6ModuleE = comdat any

$_ZN4llvm4PassC2ENS_8PassKindERc = comdat any

$_ZN4llvm12FunctionPassD2Ev = comdat any

$_ZN4llvm13AnalysisUsage15setPreservesAllEv = comdat any

$_ZN4llvm11raw_ostreamlsEPKc = comdat any

$_ZN4llvm11raw_ostreamlsENS_9StringRefE = comdat any

$_ZN4llvm11GlobalValue9getParentEv = comdat any

$_ZN4llvm8Function5beginEv = comdat any

$_ZN4llvm8Function3endEv = comdat any

$_ZN4llvmneERKNS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_10BasicBlockELb0ELb0EvEELb0ELb0EEES7_ = comdat any

$_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_10BasicBlockELb0ELb0EvEELb0ELb0EEdeEv = comdat any

$_ZN4llvm10BasicBlock5beginEv = comdat any

$_ZN4llvm10BasicBlock3endEv = comdat any

$_ZN4llvmneERKNS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvEELb0ELb0EEES7_ = comdat any

$_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvEELb0ELb0EEdeEv = comdat any

$_ZN4llvm8dyn_castINS_10AllocaInstENS_11InstructionEEENS_10cast_rettyIT_PT0_E8ret_typeES6_ = comdat any

$_ZNK4llvm10AllocaInst16getAllocatedTypeEv = comdat any

$_ZNK4llvm10DataLayout16getTypeAllocSizeEPNS_4TypeE = comdat any

$_ZN4llvm8dyn_castINS_8CallInstENS_11InstructionEEENS_10cast_rettyIT_PT0_E8ret_typeES6_ = comdat any

$_ZNK4llvm8CallBase17getCalledFunctionEv = comdat any

$_ZNK4llvm9StringRef10startswithES0_ = comdat any

$_ZNK4llvm8CallBase10getOperandEj = comdat any

$_ZN4llvm8dyn_castINS_11InstructionENS_5ValueEEENS_10cast_rettyIT_PT0_E8ret_typeES6_ = comdat any

$_ZN4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvEELb0ELb0EEppEv = comdat any

$_ZN4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_10BasicBlockELb0ELb0EvEELb0ELb0EEppEv = comdat any

$_ZNK4llvm9StringRef4sizeEv = comdat any

$_ZNK4llvm9StringRef4dataEv = comdat any

$_ZN4llvm12simple_ilistINS_10BasicBlockEJEE5beginEv = comdat any

$_ZN4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_10BasicBlockELb0ELb0EvEELb0ELb0EEC2ERNS_15ilist_node_implIS4_EE = comdat any

$_ZN4llvm12simple_ilistINS_10BasicBlockEJEE3endEv = comdat any

$_ZNK4llvm15ilist_node_baseILb0EE15isKnownSentinelEv = comdat any

$_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsINS_10BasicBlockELb0ELb0EvEEE11getValuePtrEPNS_15ilist_node_implIS4_EE = comdat any

$_ZN4llvm12ilist_detail10NodeAccess11getValuePtrINS0_12node_optionsINS_10BasicBlockELb0ELb0EvEEEENT_7pointerEPNS_15ilist_node_implIS6_EE = comdat any

$_ZN4llvm12simple_ilistINS_11InstructionEJEE5beginEv = comdat any

$_ZN4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvEELb0ELb0EEC2ERNS_15ilist_node_implIS4_EE = comdat any

$_ZN4llvm12simple_ilistINS_11InstructionEJEE3endEv = comdat any

$_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsINS_11InstructionELb0ELb0EvEEE11getValuePtrEPNS_15ilist_node_implIS4_EE = comdat any

$_ZN4llvm12ilist_detail10NodeAccess11getValuePtrINS0_12node_optionsINS_11InstructionELb0ELb0EvEEEENT_7pointerEPNS_15ilist_node_implIS6_EE = comdat any

$_ZN4llvm3isaINS_10AllocaInstEPNS_11InstructionEEEbRKT0_ = comdat any

$_ZN4llvm4castINS_10AllocaInstENS_11InstructionEEENS_10cast_rettyIT_PT0_E8ret_typeES6_ = comdat any

$_ZN4llvm13isa_impl_wrapINS_10AllocaInstEKPNS_11InstructionEPKS2_E4doitERS4_ = comdat any

$_ZN4llvm13isa_impl_wrapINS_10AllocaInstEPKNS_11InstructionES4_E4doitERKS4_ = comdat any

$_ZN4llvm13simplify_typeIKPNS_11InstructionEE18getSimplifiedValueERS3_ = comdat any

$_ZN4llvm11isa_impl_clINS_10AllocaInstEPKNS_11InstructionEE4doitES4_ = comdat any

$_ZN4llvm8isa_implINS_10AllocaInstENS_11InstructionEvE4doitERKS2_ = comdat any

$_ZN4llvm10AllocaInst7classofEPKNS_11InstructionE = comdat any

$_ZNK4llvm11Instruction9getOpcodeEv = comdat any

$_ZNK4llvm5Value10getValueIDEv = comdat any

$_ZN4llvm13simplify_typeIPNS_11InstructionEE18getSimplifiedValueERS2_ = comdat any

$_ZN4llvm16cast_convert_valINS_10AllocaInstEPNS_11InstructionES3_E4doitERKS3_ = comdat any

$_ZN4llvm7alignToENS_8TypeSizeEm = comdat any

$_ZNK4llvm10DataLayout16getTypeStoreSizeEPNS_4TypeE = comdat any

$_ZNK4llvm14LinearPolySizeINS_8TypeSizeEE16getKnownMinValueEv = comdat any

$_ZNK4llvm14LinearPolySizeINS_8TypeSizeEE10isScalableEv = comdat any

$_ZN4llvm8TypeSizeC2Emb = comdat any

$_ZN4llvm14LinearPolySizeINS_8TypeSizeEE3getEmb = comdat any

$_ZN4llvm14LinearPolySizeINS_8TypeSizeEEC2EmNS2_4DimsE = comdat any

$_ZN4llvm8TypeSizeC2ERKNS_14LinearPolySizeIS0_EE = comdat any

$_ZN4llvm24UnivariateLinearPolyBaseINS_8TypeSizeEEC2Emj = comdat any

$_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE = comdat any

$_ZN4llvm10divideCeilEmm = comdat any

$_ZNK4llvm8TypeSize15getKnownMinSizeEv = comdat any

$_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE = comdat any

$_ZNK4llvm4Type9getTypeIDEv = comdat any

$_ZN4llvm8TypeSize5FixedEm = comdat any

$_ZNK4llvm10DataLayout20getPointerSizeInBitsEj = comdat any

$_ZNK4llvm4Type22getPointerAddressSpaceEv = comdat any

$_ZN4llvm4castINS_9ArrayTypeENS_4TypeEEENS_10cast_rettyIT_PT0_E8ret_typeES6_ = comdat any

$_ZN4llvmmlEmRKNS_8TypeSizeE = comdat any

$_ZNK4llvm9ArrayType14getNumElementsEv = comdat any

$_ZNK4llvm10DataLayout22getTypeAllocSizeInBitsEPNS_4TypeE = comdat any

$_ZNK4llvm9ArrayType14getElementTypeEv = comdat any

$_ZN4llvm4castINS_10StructTypeENS_4TypeEEENS_10cast_rettyIT_PT0_E8ret_typeES6_ = comdat any

$_ZNK4llvm12StructLayout13getSizeInBitsEv = comdat any

$_ZNK4llvm4Type18getIntegerBitWidthEv = comdat any

$_ZN4llvm4castINS_10VectorTypeENS_4TypeEEENS_10cast_rettyIT_PT0_E8ret_typeES6_ = comdat any

$_ZNK4llvm10VectorType15getElementCountEv = comdat any

$_ZNK4llvm14LinearPolySizeINS_12ElementCountEE16getKnownMinValueEv = comdat any

$_ZNK4llvm10VectorType14getElementTypeEv = comdat any

$_ZNK4llvm8TypeSize12getFixedSizeEv = comdat any

$_ZNK4llvm14LinearPolySizeINS_12ElementCountEE10isScalableEv = comdat any

$_ZNK4llvm4Type17isFloatingPointTyEv = comdat any

$_ZNK4llvm4Type10isVectorTyEv = comdat any

$_ZN4llvm4castINS_11PointerTypeENS_4TypeEEENS_10cast_rettyIT_PT0_E8ret_typeES6_ = comdat any

$_ZNK4llvm4Type13getScalarTypeEv = comdat any

$_ZNK4llvm11PointerType15getAddressSpaceEv = comdat any

$_ZN4llvm3isaINS_11PointerTypeEPNS_4TypeEEEbRKT0_ = comdat any

$_ZN4llvm16cast_convert_valINS_11PointerTypeEPNS_4TypeES3_E4doitERKS3_ = comdat any

$_ZN4llvm13isa_impl_wrapINS_11PointerTypeEKPNS_4TypeEPKS2_E4doitERS4_ = comdat any

$_ZN4llvm13isa_impl_wrapINS_11PointerTypeEPKNS_4TypeES4_E4doitERKS4_ = comdat any

$_ZN4llvm13simplify_typeIKPNS_4TypeEE18getSimplifiedValueERS3_ = comdat any

$_ZN4llvm11isa_impl_clINS_11PointerTypeEPKNS_4TypeEE4doitES4_ = comdat any

$_ZN4llvm8isa_implINS_11PointerTypeENS_4TypeEvE4doitERKS2_ = comdat any

$_ZN4llvm13simplify_typeIPNS_4TypeEE18getSimplifiedValueERS2_ = comdat any

$_ZNK4llvm4Type16getContainedTypeEj = comdat any

$_ZNK4llvm4Type15getSubclassDataEv = comdat any

$_ZN4llvm3isaINS_9ArrayTypeEPNS_4TypeEEEbRKT0_ = comdat any

$_ZN4llvm16cast_convert_valINS_9ArrayTypeEPNS_4TypeES3_E4doitERKS3_ = comdat any

$_ZN4llvm13isa_impl_wrapINS_9ArrayTypeEKPNS_4TypeEPKS2_E4doitERS4_ = comdat any

$_ZN4llvm13isa_impl_wrapINS_9ArrayTypeEPKNS_4TypeES4_E4doitERKS4_ = comdat any

$_ZN4llvm11isa_impl_clINS_9ArrayTypeEPKNS_4TypeEE4doitES4_ = comdat any

$_ZN4llvm8isa_implINS_9ArrayTypeENS_4TypeEvE4doitERKS2_ = comdat any

$_ZN4llvm9ArrayType7classofEPKNS_4TypeE = comdat any

$_ZN4llvmmlERKNS_8TypeSizeEm = comdat any

$_ZN4llvmmLERNS_8TypeSizeEm = comdat any

$_ZN4llvmmlEiRKNS_8TypeSizeE = comdat any

$_ZN4llvmmlERKNS_8TypeSizeEi = comdat any

$_ZN4llvm3isaINS_10StructTypeEPNS_4TypeEEEbRKT0_ = comdat any

$_ZN4llvm16cast_convert_valINS_10StructTypeEPNS_4TypeES3_E4doitERKS3_ = comdat any

$_ZN4llvm13isa_impl_wrapINS_10StructTypeEKPNS_4TypeEPKS2_E4doitERS4_ = comdat any

$_ZN4llvm13isa_impl_wrapINS_10StructTypeEPKNS_4TypeES4_E4doitERKS4_ = comdat any

$_ZN4llvm11isa_impl_clINS_10StructTypeEPKNS_4TypeEE4doitES4_ = comdat any

$_ZN4llvm8isa_implINS_10StructTypeENS_4TypeEvE4doitERKS2_ = comdat any

$_ZN4llvm10StructType7classofEPKNS_4TypeE = comdat any

$_ZN4llvm4castINS_11IntegerTypeEKNS_4TypeEEENS_10cast_rettyIT_PT0_E8ret_typeES7_ = comdat any

$_ZNK4llvm11IntegerType11getBitWidthEv = comdat any

$_ZN4llvm3isaINS_11IntegerTypeEPKNS_4TypeEEEbRKT0_ = comdat any

$_ZN4llvm16cast_convert_valINS_11IntegerTypeEPKNS_4TypeES4_E4doitERKS4_ = comdat any

$_ZN4llvm13isa_impl_wrapINS_11IntegerTypeEKPKNS_4TypeES4_E4doitERS5_ = comdat any

$_ZN4llvm13isa_impl_wrapINS_11IntegerTypeEPKNS_4TypeES4_E4doitERKS4_ = comdat any

$_ZN4llvm13simplify_typeIKPKNS_4TypeEE18getSimplifiedValueERS4_ = comdat any

$_ZN4llvm11isa_impl_clINS_11IntegerTypeEPKNS_4TypeEE4doitES4_ = comdat any

$_ZN4llvm8isa_implINS_11IntegerTypeENS_4TypeEvE4doitERKS2_ = comdat any

$_ZN4llvm11IntegerType7classofEPKNS_4TypeE = comdat any

$_ZN4llvm13simplify_typeIPKNS_4TypeEE18getSimplifiedValueERS3_ = comdat any

$_ZN4llvm3isaINS_10VectorTypeEPNS_4TypeEEEbRKT0_ = comdat any

$_ZN4llvm16cast_convert_valINS_10VectorTypeEPNS_4TypeES3_E4doitERKS3_ = comdat any

$_ZN4llvm13isa_impl_wrapINS_10VectorTypeEKPNS_4TypeEPKS2_E4doitERS4_ = comdat any

$_ZN4llvm13isa_impl_wrapINS_10VectorTypeEPKNS_4TypeES4_E4doitERKS4_ = comdat any

$_ZN4llvm11isa_impl_clINS_10VectorTypeEPKNS_4TypeEE4doitES4_ = comdat any

$_ZN4llvm8isa_implINS_10VectorTypeENS_4TypeEvE4doitERKS2_ = comdat any

$_ZN4llvm10VectorType7classofEPKNS_4TypeE = comdat any

$_ZN4llvm14LinearPolySizeINS_12ElementCountEE3getEjb = comdat any

$_ZN4llvm3isaINS_18ScalableVectorTypeEPKNS_10VectorTypeEEEbRKT0_ = comdat any

$_ZN4llvm14LinearPolySizeINS_12ElementCountEEC2EjNS2_4DimsE = comdat any

$_ZN4llvm12ElementCountC2ERKNS_14LinearPolySizeIS0_EE = comdat any

$_ZN4llvm24UnivariateLinearPolyBaseINS_12ElementCountEEC2Ejj = comdat any

$_ZN4llvm13isa_impl_wrapINS_18ScalableVectorTypeEKPKNS_10VectorTypeES4_E4doitERS5_ = comdat any

$_ZN4llvm13isa_impl_wrapINS_18ScalableVectorTypeEPKNS_10VectorTypeES4_E4doitERKS4_ = comdat any

$_ZN4llvm13simplify_typeIKPKNS_10VectorTypeEE18getSimplifiedValueERS4_ = comdat any

$_ZN4llvm11isa_impl_clINS_18ScalableVectorTypeEPKNS_10VectorTypeEE4doitES4_ = comdat any

$_ZN4llvm8isa_implINS_18ScalableVectorTypeENS_10VectorTypeEvE4doitERKS2_ = comdat any

$_ZN4llvm18ScalableVectorType7classofEPKNS_4TypeE = comdat any

$_ZN4llvm13simplify_typeIPKNS_10VectorTypeEE18getSimplifiedValueERS3_ = comdat any

$_ZNK4llvm14LinearPolySizeINS_8TypeSizeEE13getFixedValueEv = comdat any

$_ZN4llvm7alignToEmmm = comdat any

$_ZN4llvm3isaINS_8CallInstEPNS_11InstructionEEEbRKT0_ = comdat any

$_ZN4llvm4castINS_8CallInstENS_11InstructionEEENS_10cast_rettyIT_PT0_E8ret_typeES6_ = comdat any

$_ZN4llvm13isa_impl_wrapINS_8CallInstEKPNS_11InstructionEPKS2_E4doitERS4_ = comdat any

$_ZN4llvm13isa_impl_wrapINS_8CallInstEPKNS_11InstructionES4_E4doitERKS4_ = comdat any

$_ZN4llvm11isa_impl_clINS_8CallInstEPKNS_11InstructionEE4doitES4_ = comdat any

$_ZN4llvm8isa_implINS_8CallInstENS_11InstructionEvE4doitERKS2_ = comdat any

$_ZN4llvm8CallInst7classofEPKNS_11InstructionE = comdat any

$_ZN4llvm16cast_convert_valINS_8CallInstEPNS_11InstructionES3_E4doitERKS3_ = comdat any

$_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEENS_10cast_rettyIT_PT0_E8ret_typeES6_ = comdat any

$_ZNK4llvm8CallBase16getCalledOperandEv = comdat any

$_ZNK4llvm11GlobalValue12getValueTypeEv = comdat any

$_ZNK4llvm8CallBase15getFunctionTypeEv = comdat any

$_ZN4llvm3isaINS_8FunctionEPNS_5ValueEEEbRKT0_ = comdat any

$_ZN4llvm4castINS_8FunctionENS_5ValueEEENS_10cast_rettyIT_PT0_E8ret_typeES6_ = comdat any

$_ZN4llvm13isa_impl_wrapINS_8FunctionEKPNS_5ValueEPKS2_E4doitERS4_ = comdat any

$_ZN4llvm13isa_impl_wrapINS_8FunctionEPKNS_5ValueES4_E4doitERKS4_ = comdat any

$_ZN4llvm13simplify_typeIKPNS_5ValueEE18getSimplifiedValueERS3_ = comdat any

$_ZN4llvm11isa_impl_clINS_8FunctionEPKNS_5ValueEE4doitES4_ = comdat any

$_ZN4llvm8isa_implINS_8FunctionENS_5ValueEvE4doitERKS2_ = comdat any

$_ZN4llvm13simplify_typeIPNS_5ValueEE18getSimplifiedValueERS2_ = comdat any

$_ZN4llvm16cast_convert_valINS_8FunctionEPNS_5ValueES3_E4doitERKS3_ = comdat any

$_ZNK4llvm8CallBase2OpILin1EEERKNS_3UseEv = comdat any

$_ZNK4llvm3UsecvPNS_5ValueEEv = comdat any

$_ZN4llvm4User6OpFromILin1ENS_8CallBaseEEERNS_3UseEPKT0_ = comdat any

$_ZN4llvm21VariadicOperandTraitsINS_8CallBaseELj1EE6op_endEPS1_ = comdat any

$_ZN4llvm9StringRef13compareMemoryEPKcS2_m = comdat any

$_ZN4llvm21VariadicOperandTraitsINS_8CallBaseELj1EE8operandsEPKNS_4UserE = comdat any

$_ZN4llvm12cast_or_nullINS_5ValueES1_EENS_10cast_rettyIT_PT0_E8ret_typeES5_ = comdat any

$_ZN4llvm21VariadicOperandTraitsINS_8CallBaseELj1EE8op_beginEPS1_ = comdat any

$_ZNK4llvm3Use3getEv = comdat any

$_ZNK4llvm4User14getNumOperandsEv = comdat any

$_ZN4llvm3isaINS_5ValueEPS1_EEbRKT0_ = comdat any

$_ZN4llvm4castINS_5ValueES1_EENS_10cast_rettyIT_PT0_E8ret_typeES5_ = comdat any

$_ZN4llvm13isa_impl_wrapINS_5ValueEKPS1_PKS1_E4doitERS3_ = comdat any

$_ZN4llvm13isa_impl_wrapINS_5ValueEPKS1_S3_E4doitERKS3_ = comdat any

$_ZN4llvm11isa_impl_clINS_5ValueEPKS1_E4doitES3_ = comdat any

$_ZN4llvm8isa_implINS_5ValueES1_vE4doitERKS1_ = comdat any

$_ZN4llvm16cast_convert_valINS_5ValueEPS1_S2_E4doitERKS2_ = comdat any

$_ZN4llvm3isaINS_11InstructionEPNS_5ValueEEEbRKT0_ = comdat any

$_ZN4llvm4castINS_11InstructionENS_5ValueEEENS_10cast_rettyIT_PT0_E8ret_typeES6_ = comdat any

$_ZN4llvm13isa_impl_wrapINS_11InstructionEKPNS_5ValueEPKS2_E4doitERS4_ = comdat any

$_ZN4llvm13isa_impl_wrapINS_11InstructionEPKNS_5ValueES4_E4doitERKS4_ = comdat any

$_ZN4llvm11isa_impl_clINS_11InstructionEPKNS_5ValueEE4doitES4_ = comdat any

$_ZN4llvm8isa_implINS_11InstructionENS_5ValueEvE4doitERKS2_ = comdat any

$_ZN4llvm16cast_convert_valINS_11InstructionEPNS_5ValueES3_E4doitERKS3_ = comdat any

$_ZN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvEEE7getNextEv = comdat any

$_ZNK4llvm15ilist_node_baseILb0EE7getNextEv = comdat any

$_ZN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_10BasicBlockELb0ELb0EvEEE7getNextEv = comdat any

$_ZNSt6vectorIPKN4llvm8PassInfoESaIS3_EEC2Ev = comdat any

$_ZNSt12_Vector_baseIPKN4llvm8PassInfoESaIS3_EEC2Ev = comdat any

$_ZNSt12_Vector_baseIPKN4llvm8PassInfoESaIS3_EE12_Vector_implC2Ev = comdat any

$_ZNSaIPKN4llvm8PassInfoEEC2Ev = comdat any

$_ZNSt12_Vector_baseIPKN4llvm8PassInfoESaIS3_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt15__new_allocatorIPKN4llvm8PassInfoEEC2Ev = comdat any

@_ZN4llvm24DisableABIBreakingChecksE = external global i32, align 4
@_ZN4llvm30VerifyDisableABIBreakingChecksE = weak hidden global i32* @_ZN4llvm24DisableABIBreakingChecksE, align 8
@_ZL1X = internal global %"struct.llvm::RegisterPass" zeroinitializer, align 8
@.str = private unnamed_addr constant [24 x i8] c"heap-memory-measurement\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Heap Memory Measurement Pass\00", align 1
@__dso_handle = external hidden global i8
@_ZN12_GLOBAL__N_121HeapMemoryMeasurement2IDE = internal global i8 0, align 1
@_ZTVN12_GLOBAL__N_121HeapMemoryMeasurementE = internal unnamed_addr constant { [20 x i8*] } { [20 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN12_GLOBAL__N_121HeapMemoryMeasurementE to i8*), i8* bitcast (void (%"struct.(anonymous namespace)::HeapMemoryMeasurement"*)* @_ZN12_GLOBAL__N_121HeapMemoryMeasurementD2Ev to i8*), i8* bitcast (void (%"struct.(anonymous namespace)::HeapMemoryMeasurement"*)* @_ZN12_GLOBAL__N_121HeapMemoryMeasurementD0Ev to i8*), i8* bitcast ({ i8*, i64 } (%"class.llvm::Pass"*)* @_ZNK4llvm4Pass11getPassNameEv to i8*), i8* bitcast (i1 (%"class.llvm::Pass"*, %"class.llvm::Module"*)* @_ZN4llvm4Pass16doInitializationERNS_6ModuleE to i8*), i8* bitcast (i1 (%"class.llvm::Pass"*, %"class.llvm::Module"*)* @_ZN4llvm4Pass14doFinalizationERNS_6ModuleE to i8*), i8* bitcast (void (%"class.llvm::Pass"*, %"class.llvm::raw_ostream"*, %"class.llvm::Module"*)* @_ZNK4llvm4Pass5printERNS_11raw_ostreamEPKNS_6ModuleE to i8*), i8* bitcast (%"class.llvm::Pass"* (%"class.llvm::FunctionPass"*, %"class.llvm::raw_ostream"*, %"class.std::__cxx11::basic_string"*)* @_ZNK4llvm12FunctionPass17createPrinterPassERNS_11raw_ostreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE to i8*), i8* bitcast (void (%"class.llvm::FunctionPass"*, %"class.llvm::PMStack"*, i32)* @_ZN4llvm12FunctionPass17assignPassManagerERNS_7PMStackENS_15PassManagerTypeE to i8*), i8* bitcast (void (%"class.llvm::Pass"*, %"class.llvm::PMStack"*)* @_ZN4llvm4Pass18preparePassManagerERNS_7PMStackE to i8*), i8* bitcast (i32 (%"class.llvm::FunctionPass"*)* @_ZNK4llvm12FunctionPass27getPotentialPassManagerTypeEv to i8*), i8* bitcast (void (%"struct.(anonymous namespace)::HeapMemoryMeasurement"*, %"class.llvm::AnalysisUsage"*)* @_ZNK12_GLOBAL__N_121HeapMemoryMeasurement16getAnalysisUsageERN4llvm13AnalysisUsageE to i8*), i8* bitcast (void (%"class.llvm::Pass"*)* @_ZN4llvm4Pass13releaseMemoryEv to i8*), i8* bitcast (i8* (%"class.llvm::Pass"*, i8*)* @_ZN4llvm4Pass26getAdjustedAnalysisPointerEPKv to i8*), i8* bitcast (%"class.llvm::ImmutablePass"* (%"class.llvm::Pass"*)* @_ZN4llvm4Pass18getAsImmutablePassEv to i8*), i8* bitcast (%"class.llvm::PMDataManager"* (%"class.llvm::Pass"*)* @_ZN4llvm4Pass18getAsPMDataManagerEv to i8*), i8* bitcast (void (%"class.llvm::Pass"*)* @_ZNK4llvm4Pass14verifyAnalysisEv to i8*), i8* bitcast (void (%"class.llvm::Pass"*, i32)* @_ZN4llvm4Pass17dumpPassStructureEj to i8*), i8* bitcast (i1 (%"struct.(anonymous namespace)::HeapMemoryMeasurement"*, %"class.llvm::Function"*)* @_ZN12_GLOBAL__N_121HeapMemoryMeasurement13runOnFunctionERN4llvm8FunctionE to i8*)] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global i8*
@_ZTSN12_GLOBAL__N_121HeapMemoryMeasurementE = internal constant [40 x i8] c"N12_GLOBAL__N_121HeapMemoryMeasurementE\00", align 1
@_ZTIN4llvm12FunctionPassE = external constant i8*
@_ZTIN12_GLOBAL__N_121HeapMemoryMeasurementE = internal constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @_ZTSN12_GLOBAL__N_121HeapMemoryMeasurementE, i32 0, i32 0), i8* bitcast (i8** @_ZTIN4llvm12FunctionPassE to i8*) }, align 8
@_ZTVN4llvm12FunctionPassE = external unnamed_addr constant { [20 x i8*] }, align 8
@_ZTVN4llvm4PassE = external unnamed_addr constant { [19 x i8*] }, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"Heap memory measurement for function: \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"free\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Allocated bytes: \00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Deallocated bytes: \00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"!NodePtr->isKnownSentinel()\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"/usr/include/llvm/ADT/ilist_iterator.h\00", align 1
@__PRETTY_FUNCTION__._ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_10BasicBlockELb0ELb0EvEELb0ELb0EEdeEv = private unnamed_addr constant [278 x i8] c"llvm::ilist_iterator::reference llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::BasicBlock, false, false, void>, false, false>::operator*() const [OptionsT = llvm::ilist_detail::node_options<llvm::BasicBlock, false, false, void>, IsReverse = false, IsConst = false]\00", align 1
@__PRETTY_FUNCTION__._ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvEELb0ELb0EEdeEv = private unnamed_addr constant [280 x i8] c"llvm::ilist_iterator::reference llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::Instruction, false, false, void>, false, false>::operator*() const [OptionsT = llvm::ilist_detail::node_options<llvm::Instruction, false, false, void>, IsReverse = false, IsConst = false]\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"isa<> used on a null pointer\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"Val && \22isa<> used on a null pointer\22\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"/usr/include/llvm/Support/Casting.h\00", align 1
@__PRETTY_FUNCTION__._ZN4llvm11isa_impl_clINS_10AllocaInstEPKNS_11InstructionEE4doitES4_ = private unnamed_addr constant [153 x i8] c"static bool llvm::isa_impl_cl<llvm::AllocaInst, const llvm::Instruction *>::doit(const From *) [To = llvm::AllocaInst, From = const llvm::Instruction *]\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"cast<Ty>() argument of incompatible type!\00", align 1
@.str.13 = private unnamed_addr constant [59 x i8] c"isa<X>(Val) && \22cast<Ty>() argument of incompatible type!\22\00", align 1
@__PRETTY_FUNCTION__._ZN4llvm4castINS_10AllocaInstENS_11InstructionEEENS_10cast_rettyIT_PT0_E8ret_typeES6_ = private unnamed_addr constant [100 x i8] c"typename cast_retty<X, Y *>::ret_type llvm::cast(Y *) [X = llvm::AllocaInst, Y = llvm::Instruction]\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"Align must be non-zero\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"Align != 0u && \22Align must be non-zero\22\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"/usr/include/llvm/Support/TypeSize.h\00", align 1
@__PRETTY_FUNCTION__._ZN4llvm7alignToENS_8TypeSizeEm = private unnamed_addr constant [55 x i8] c"llvm::TypeSize llvm::alignTo(llvm::TypeSize, uint64_t)\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"Dimension out of range\00", align 1
@.str.18 = private unnamed_addr constant [55 x i8] c"UnivariateDim < Dimensions && \22Dimension out of range\22\00", align 1
@__PRETTY_FUNCTION__._ZN4llvm24UnivariateLinearPolyBaseINS_8TypeSizeEEC2Emj = private unnamed_addr constant [155 x i8] c"llvm::UnivariateLinearPolyBase<llvm::TypeSize>::UnivariateLinearPolyBase(llvm::UnivariateLinearPolyBase::ScalarTy, unsigned int) [LeafTy = llvm::TypeSize]\00", align 1
@.str.19 = private unnamed_addr constant [48 x i8] c"Cannot getTypeInfo() on a type that is unsized!\00", align 1
@.str.20 = private unnamed_addr constant [67 x i8] c"Ty->isSized() && \22Cannot getTypeInfo() on a type that is unsized!\22\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"/usr/include/llvm/IR/DataLayout.h\00", align 1
@__PRETTY_FUNCTION__._ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE = private unnamed_addr constant [71 x i8] c"llvm::TypeSize llvm::DataLayout::getTypeSizeInBits(llvm::Type *) const\00", align 1
@.str.22 = private unnamed_addr constant [50 x i8] c"DataLayout::getTypeSizeInBits(): Unsupported type\00", align 1
@__PRETTY_FUNCTION__._ZN4llvm4castINS_11PointerTypeENS_4TypeEEENS_10cast_rettyIT_PT0_E8ret_typeES6_ = private unnamed_addr constant [94 x i8] c"typename cast_retty<X, Y *>::ret_type llvm::cast(Y *) [X = llvm::PointerType, Y = llvm::Type]\00", align 1
@__PRETTY_FUNCTION__._ZN4llvm11isa_impl_clINS_11PointerTypeEPKNS_4TypeEE4doitES4_ = private unnamed_addr constant [141 x i8] c"static bool llvm::isa_impl_cl<llvm::PointerType, const llvm::Type *>::doit(const From *) [To = llvm::PointerType, From = const llvm::Type *]\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"Index out of range!\00", align 1
@.str.24 = private unnamed_addr constant [45 x i8] c"i < NumContainedTys && \22Index out of range!\22\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"/usr/include/llvm/IR/Type.h\00", align 1
@__PRETTY_FUNCTION__._ZNK4llvm4Type16getContainedTypeEj = private unnamed_addr constant [61 x i8] c"llvm::Type *llvm::Type::getContainedType(unsigned int) const\00", align 1
@__PRETTY_FUNCTION__._ZN4llvm4castINS_9ArrayTypeENS_4TypeEEENS_10cast_rettyIT_PT0_E8ret_typeES6_ = private unnamed_addr constant [92 x i8] c"typename cast_retty<X, Y *>::ret_type llvm::cast(Y *) [X = llvm::ArrayType, Y = llvm::Type]\00", align 1
@__PRETTY_FUNCTION__._ZN4llvm11isa_impl_clINS_9ArrayTypeEPKNS_4TypeEE4doitES4_ = private unnamed_addr constant [137 x i8] c"static bool llvm::isa_impl_cl<llvm::ArrayType, const llvm::Type *>::doit(const From *) [To = llvm::ArrayType, From = const llvm::Type *]\00", align 1
@__PRETTY_FUNCTION__._ZN4llvm4castINS_10StructTypeENS_4TypeEEENS_10cast_rettyIT_PT0_E8ret_typeES6_ = private unnamed_addr constant [93 x i8] c"typename cast_retty<X, Y *>::ret_type llvm::cast(Y *) [X = llvm::StructType, Y = llvm::Type]\00", align 1
@__PRETTY_FUNCTION__._ZN4llvm11isa_impl_clINS_10StructTypeEPKNS_4TypeEE4doitES4_ = private unnamed_addr constant [139 x i8] c"static bool llvm::isa_impl_cl<llvm::StructType, const llvm::Type *>::doit(const From *) [To = llvm::StructType, From = const llvm::Type *]\00", align 1
@__PRETTY_FUNCTION__._ZN4llvm4castINS_11IntegerTypeEKNS_4TypeEEENS_10cast_rettyIT_PT0_E8ret_typeES7_ = private unnamed_addr constant [100 x i8] c"typename cast_retty<X, Y *>::ret_type llvm::cast(Y *) [X = llvm::IntegerType, Y = const llvm::Type]\00", align 1
@__PRETTY_FUNCTION__._ZN4llvm11isa_impl_clINS_11IntegerTypeEPKNS_4TypeEE4doitES4_ = private unnamed_addr constant [141 x i8] c"static bool llvm::isa_impl_cl<llvm::IntegerType, const llvm::Type *>::doit(const From *) [To = llvm::IntegerType, From = const llvm::Type *]\00", align 1
@__PRETTY_FUNCTION__._ZN4llvm4castINS_10VectorTypeENS_4TypeEEENS_10cast_rettyIT_PT0_E8ret_typeES6_ = private unnamed_addr constant [93 x i8] c"typename cast_retty<X, Y *>::ret_type llvm::cast(Y *) [X = llvm::VectorType, Y = llvm::Type]\00", align 1
@__PRETTY_FUNCTION__._ZN4llvm11isa_impl_clINS_10VectorTypeEPKNS_4TypeEE4doitES4_ = private unnamed_addr constant [139 x i8] c"static bool llvm::isa_impl_cl<llvm::VectorType, const llvm::Type *>::doit(const From *) [To = llvm::VectorType, From = const llvm::Type *]\00", align 1
@__PRETTY_FUNCTION__._ZN4llvm24UnivariateLinearPolyBaseINS_12ElementCountEEC2Ejj = private unnamed_addr constant [163 x i8] c"llvm::UnivariateLinearPolyBase<llvm::ElementCount>::UnivariateLinearPolyBase(llvm::UnivariateLinearPolyBase::ScalarTy, unsigned int) [LeafTy = llvm::ElementCount]\00", align 1
@__PRETTY_FUNCTION__._ZN4llvm11isa_impl_clINS_18ScalableVectorTypeEPKNS_10VectorTypeEE4doitES4_ = private unnamed_addr constant [167 x i8] c"static bool llvm::isa_impl_cl<llvm::ScalableVectorType, const llvm::VectorType *>::doit(const From *) [To = llvm::ScalableVectorType, From = const llvm::VectorType *]\00", align 1
@.str.26 = private unnamed_addr constant [55 x i8] c"Request for a fixed element count on a scalable object\00", align 1
@.str.27 = private unnamed_addr constant [74 x i8] c"!isScalable() && \22Request for a fixed element count on a scalable object\22\00", align 1
@__PRETTY_FUNCTION__._ZNK4llvm14LinearPolySizeINS_8TypeSizeEE13getFixedValueEv = private unnamed_addr constant [117 x i8] c"llvm::LinearPolySize::ScalarTy llvm::LinearPolySize<llvm::TypeSize>::getFixedValue() const [LeafTy = llvm::TypeSize]\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"Align can't be 0.\00", align 1
@.str.29 = private unnamed_addr constant [35 x i8] c"Align != 0u && \22Align can't be 0.\22\00", align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"/usr/include/llvm/Support/MathExtras.h\00", align 1
@__PRETTY_FUNCTION__._ZN4llvm7alignToEmmm = private unnamed_addr constant [53 x i8] c"uint64_t llvm::alignTo(uint64_t, uint64_t, uint64_t)\00", align 1
@__PRETTY_FUNCTION__._ZN4llvm11isa_impl_clINS_8CallInstEPKNS_11InstructionEE4doitES4_ = private unnamed_addr constant [149 x i8] c"static bool llvm::isa_impl_cl<llvm::CallInst, const llvm::Instruction *>::doit(const From *) [To = llvm::CallInst, From = const llvm::Instruction *]\00", align 1
@__PRETTY_FUNCTION__._ZN4llvm4castINS_8CallInstENS_11InstructionEEENS_10cast_rettyIT_PT0_E8ret_typeES6_ = private unnamed_addr constant [98 x i8] c"typename cast_retty<X, Y *>::ret_type llvm::cast(Y *) [X = llvm::CallInst, Y = llvm::Instruction]\00", align 1
@__PRETTY_FUNCTION__._ZN4llvm11isa_impl_clINS_8FunctionEPKNS_5ValueEE4doitES4_ = private unnamed_addr constant [137 x i8] c"static bool llvm::isa_impl_cl<llvm::Function, const llvm::Value *>::doit(const From *) [To = llvm::Function, From = const llvm::Value *]\00", align 1
@__PRETTY_FUNCTION__._ZN4llvm4castINS_8FunctionENS_5ValueEEENS_10cast_rettyIT_PT0_E8ret_typeES6_ = private unnamed_addr constant [92 x i8] c"typename cast_retty<X, Y *>::ret_type llvm::cast(Y *) [X = llvm::Function, Y = llvm::Value]\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"getOperand() out of range!\00", align 1
@.str.32 = private unnamed_addr constant [86 x i8] c"i_nocapture < OperandTraits<CallBase>::operands(this) && \22getOperand() out of range!\22\00", align 1
@.str.33 = private unnamed_addr constant [34 x i8] c"/usr/include/llvm/IR/InstrTypes.h\00", align 1
@__PRETTY_FUNCTION__._ZNK4llvm8CallBase10getOperandEj = private unnamed_addr constant [60 x i8] c"llvm::Value *llvm::CallBase::getOperand(unsigned int) const\00", align 1
@.str.34 = private unnamed_addr constant [50 x i8] c"cast_or_null<Ty>() argument of incompatible type!\00", align 1
@.str.35 = private unnamed_addr constant [67 x i8] c"isa<X>(Val) && \22cast_or_null<Ty>() argument of incompatible type!\22\00", align 1
@__PRETTY_FUNCTION__._ZN4llvm12cast_or_nullINS_5ValueES1_EENS_10cast_rettyIT_PT0_E8ret_typeES5_ = private unnamed_addr constant [97 x i8] c"typename cast_retty<X, Y *>::ret_type llvm::cast_or_null(Y *) [X = llvm::Value, Y = llvm::Value]\00", align 1
@__PRETTY_FUNCTION__._ZN4llvm11isa_impl_clINS_5ValueEPKS1_E4doitES3_ = private unnamed_addr constant [131 x i8] c"static bool llvm::isa_impl_cl<llvm::Value, const llvm::Value *>::doit(const From *) [To = llvm::Value, From = const llvm::Value *]\00", align 1
@__PRETTY_FUNCTION__._ZN4llvm4castINS_5ValueES1_EENS_10cast_rettyIT_PT0_E8ret_typeES5_ = private unnamed_addr constant [89 x i8] c"typename cast_retty<X, Y *>::ret_type llvm::cast(Y *) [X = llvm::Value, Y = llvm::Value]\00", align 1
@__PRETTY_FUNCTION__._ZN4llvm11isa_impl_clINS_11InstructionEPKNS_5ValueEE4doitES4_ = private unnamed_addr constant [143 x i8] c"static bool llvm::isa_impl_cl<llvm::Instruction, const llvm::Value *>::doit(const From *) [To = llvm::Instruction, From = const llvm::Value *]\00", align 1
@__PRETTY_FUNCTION__._ZN4llvm4castINS_11InstructionENS_5ValueEEENS_10cast_rettyIT_PT0_E8ret_typeES6_ = private unnamed_addr constant [95 x i8] c"typename cast_retty<X, Y *>::ret_type llvm::cast(Y *) [X = llvm::Instruction, Y = llvm::Value]\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_heap_pass.cpp, i8* null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  %1 = alloca %"class.llvm::StringRef", align 8
  %2 = alloca %"class.llvm::StringRef", align 8
  call void @_ZN4llvm9StringRefC2EPKc(%"class.llvm::StringRef"* noundef nonnull align 8 dereferenceable(16) %1, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  call void @_ZN4llvm9StringRefC2EPKc(%"class.llvm::StringRef"* noundef nonnull align 8 dereferenceable(16) %2, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %3 = bitcast %"class.llvm::StringRef"* %1 to { i8*, i64 }*
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %3, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = bitcast %"class.llvm::StringRef"* %2 to { i8*, i64 }*
  %9 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %8, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  call void @_ZN4llvm12RegisterPassIN12_GLOBAL__N_121HeapMemoryMeasurementEEC2ENS_9StringRefES4_bb(%"struct.llvm::RegisterPass"* noundef nonnull align 8 dereferenceable(80) @_ZL1X, i8* %5, i64 %7, i8* %10, i64 %12, i1 noundef zeroext false, i1 noundef zeroext false)
  %13 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"struct.llvm::RegisterPass"*)* @_ZN4llvm12RegisterPassIN12_GLOBAL__N_121HeapMemoryMeasurementEED2Ev to void (i8*)*), i8* bitcast (%"struct.llvm::RegisterPass"* @_ZL1X to i8*), i8* @__dso_handle) #3
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN4llvm9StringRefC2EPKc(%"class.llvm::StringRef"* noundef nonnull align 8 dereferenceable(16) %0, i8* noundef %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"class.llvm::StringRef"*, align 8
  %4 = alloca i8*, align 8
  store %"class.llvm::StringRef"* %0, %"class.llvm::StringRef"** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %"class.llvm::StringRef"*, %"class.llvm::StringRef"** %3, align 8
  %6 = getelementptr inbounds %"class.llvm::StringRef", %"class.llvm::StringRef"* %5, i32 0, i32 0
  %7 = load i8*, i8** %4, align 8
  store i8* %7, i8** %6, align 8
  %8 = getelementptr inbounds %"class.llvm::StringRef", %"class.llvm::StringRef"* %5, i32 0, i32 1
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = call noundef i64 @_ZN4llvm9StringRef6strLenEPKc(i8* noundef %12)
  br label %15

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %14, %11
  %16 = phi i64 [ %13, %11 ], [ 0, %14 ]
  store i64 %16, i64* %8, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define internal void @_ZN4llvm12RegisterPassIN12_GLOBAL__N_121HeapMemoryMeasurementEEC2ENS_9StringRefES4_bb(%"struct.llvm::RegisterPass"* noundef nonnull align 8 dereferenceable(80) %0, i8* %1, i64 %2, i8* %3, i64 %4, i1 noundef zeroext %5, i1 noundef zeroext %6) unnamed_addr #1 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %8 = alloca %"class.llvm::StringRef", align 8
  %9 = alloca %"class.llvm::StringRef", align 8
  %10 = alloca %"struct.llvm::RegisterPass"*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca %"class.llvm::StringRef", align 8
  %14 = alloca %"class.llvm::StringRef", align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = bitcast %"class.llvm::StringRef"* %8 to { i8*, i64 }*
  %18 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %17, i32 0, i32 0
  store i8* %1, i8** %18, align 8
  %19 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %17, i32 0, i32 1
  store i64 %2, i64* %19, align 8
  %20 = bitcast %"class.llvm::StringRef"* %9 to { i8*, i64 }*
  %21 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %20, i32 0, i32 0
  store i8* %3, i8** %21, align 8
  %22 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %20, i32 0, i32 1
  store i64 %4, i64* %22, align 8
  store %"struct.llvm::RegisterPass"* %0, %"struct.llvm::RegisterPass"** %10, align 8
  %23 = zext i1 %5 to i8
  store i8 %23, i8* %11, align 1
  %24 = zext i1 %6 to i8
  store i8 %24, i8* %12, align 1
  %25 = load %"struct.llvm::RegisterPass"*, %"struct.llvm::RegisterPass"** %10, align 8
  %26 = bitcast %"struct.llvm::RegisterPass"* %25 to %"class.llvm::PassInfo"*
  %27 = bitcast %"class.llvm::StringRef"* %13 to i8*
  %28 = bitcast %"class.llvm::StringRef"* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 16, i1 false)
  %29 = bitcast %"class.llvm::StringRef"* %14 to i8*
  %30 = bitcast %"class.llvm::StringRef"* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 16, i1 false)
  %31 = load i8, i8* %11, align 1
  %32 = trunc i8 %31 to i1
  %33 = load i8, i8* %12, align 1
  %34 = trunc i8 %33 to i1
  %35 = bitcast %"class.llvm::StringRef"* %13 to { i8*, i64 }*
  %36 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %35, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = bitcast %"class.llvm::StringRef"* %14 to { i8*, i64 }*
  %41 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %40, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  call void @_ZN4llvm8PassInfoC2ENS_9StringRefES1_PKvPFPNS_4PassEvEbb(%"class.llvm::PassInfo"* noundef nonnull align 8 dereferenceable(80) %26, i8* %37, i64 %39, i8* %42, i64 %44, i8* noundef @_ZN12_GLOBAL__N_121HeapMemoryMeasurement2IDE, %"class.llvm::Pass"* ()* noundef @_ZN4llvm15callDefaultCtorIN12_GLOBAL__N_121HeapMemoryMeasurementEEEPNS_4PassEv, i1 noundef zeroext %32, i1 noundef zeroext %34)
  %45 = invoke noundef %"class.llvm::PassRegistry"* @_ZN4llvm12PassRegistry15getPassRegistryEv()
          to label %46 unwind label %49

46:                                               ; preds = %7
  %47 = bitcast %"struct.llvm::RegisterPass"* %25 to %"class.llvm::PassInfo"*
  invoke void @_ZN4llvm12PassRegistry12registerPassERKNS_8PassInfoEb(%"class.llvm::PassRegistry"* noundef nonnull align 8 dereferenceable(168) %45, %"class.llvm::PassInfo"* noundef nonnull align 8 dereferenceable(80) %47, i1 noundef zeroext false)
          to label %48 unwind label %49

48:                                               ; preds = %46
  ret void

49:                                               ; preds = %46, %7
  %50 = landingpad { i8*, i32 }
          cleanup
  %51 = extractvalue { i8*, i32 } %50, 0
  store i8* %51, i8** %15, align 8
  %52 = extractvalue { i8*, i32 } %50, 1
  store i32 %52, i32* %16, align 4
  %53 = bitcast %"struct.llvm::RegisterPass"* %25 to %"class.llvm::PassInfo"*
  call void @_ZN4llvm8PassInfoD2Ev(%"class.llvm::PassInfo"* noundef nonnull align 8 dereferenceable(80) %53) #3
  br label %54

54:                                               ; preds = %49
  %55 = load i8*, i8** %15, align 8
  %56 = load i32, i32* %16, align 4
  %57 = insertvalue { i8*, i32 } undef, i8* %55, 0
  %58 = insertvalue { i8*, i32 } %57, i32 %56, 1
  resume { i8*, i32 } %58
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ZN4llvm12RegisterPassIN12_GLOBAL__N_121HeapMemoryMeasurementEED2Ev(%"struct.llvm::RegisterPass"* noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #2 align 2 {
  %2 = alloca %"struct.llvm::RegisterPass"*, align 8
  store %"struct.llvm::RegisterPass"* %0, %"struct.llvm::RegisterPass"** %2, align 8
  %3 = load %"struct.llvm::RegisterPass"*, %"struct.llvm::RegisterPass"** %2, align 8
  %4 = bitcast %"struct.llvm::RegisterPass"* %3 to %"class.llvm::PassInfo"*
  call void @_ZN4llvm8PassInfoD2Ev(%"class.llvm::PassInfo"* noundef nonnull align 8 dereferenceable(80) %4) #3
  ret void
}

; Function Attrs: nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZN4llvm9StringRef6strLenEPKc(i8* noundef %0) #4 comdat align 2 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i64 @strlen(i8* noundef %3) #3
  ret i64 %4
}

; Function Attrs: nounwind
declare i64 @strlen(i8* noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4llvm8PassInfoD2Ev(%"class.llvm::PassInfo"* noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #2 comdat align 2 {
  %2 = alloca %"class.llvm::PassInfo"*, align 8
  store %"class.llvm::PassInfo"* %0, %"class.llvm::PassInfo"** %2, align 8
  %3 = load %"class.llvm::PassInfo"*, %"class.llvm::PassInfo"** %2, align 8
  %4 = getelementptr inbounds %"class.llvm::PassInfo", %"class.llvm::PassInfo"* %3, i32 0, i32 6
  call void @_ZNSt6vectorIPKN4llvm8PassInfoESaIS3_EED2Ev(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %4) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIPKN4llvm8PassInfoESaIS3_EED2Ev(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"class.std::vector"*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %"class.std::vector"* %0, %"class.std::vector"** %2, align 8
  %5 = load %"class.std::vector"*, %"class.std::vector"** %2, align 8
  %6 = bitcast %"class.std::vector"* %5 to %"struct.std::_Vector_base"*
  %7 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %6, i32 0, i32 0
  %8 = bitcast %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl"* %7 to %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl_data"*
  %9 = getelementptr inbounds %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl_data", %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl_data"* %8, i32 0, i32 0
  %10 = load %"class.llvm::PassInfo"**, %"class.llvm::PassInfo"*** %9, align 8
  %11 = bitcast %"class.std::vector"* %5 to %"struct.std::_Vector_base"*
  %12 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %11, i32 0, i32 0
  %13 = bitcast %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl"* %12 to %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl_data"*
  %14 = getelementptr inbounds %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl_data", %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl_data"* %13, i32 0, i32 1
  %15 = load %"class.llvm::PassInfo"**, %"class.llvm::PassInfo"*** %14, align 8
  %16 = bitcast %"class.std::vector"* %5 to %"struct.std::_Vector_base"*
  %17 = call noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIPKN4llvm8PassInfoESaIS3_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %16) #3
  invoke void @_ZSt8_DestroyIPPKN4llvm8PassInfoES3_EvT_S5_RSaIT0_E(%"class.llvm::PassInfo"** noundef %10, %"class.llvm::PassInfo"** noundef %15, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %17)
          to label %18 unwind label %20

18:                                               ; preds = %1
  %19 = bitcast %"class.std::vector"* %5 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIPKN4llvm8PassInfoESaIS3_EED2Ev(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %19) #3
  ret void

20:                                               ; preds = %1
  %21 = landingpad { i8*, i32 }
          catch i8* null
  %22 = extractvalue { i8*, i32 } %21, 0
  store i8* %22, i8** %3, align 8
  %23 = extractvalue { i8*, i32 } %21, 1
  store i32 %23, i32* %4, align 4
  %24 = bitcast %"class.std::vector"* %5 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIPKN4llvm8PassInfoESaIS3_EED2Ev(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %24) #3
  br label %25

25:                                               ; preds = %20
  %26 = load i8*, i8** %3, align 8
  call void @__clang_call_terminate(i8* %26) #15
  unreachable
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPPKN4llvm8PassInfoES3_EvT_S5_RSaIT0_E(%"class.llvm::PassInfo"** noundef %0, %"class.llvm::PassInfo"** noundef %1, %"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %2) #6 comdat {
  %4 = alloca %"class.llvm::PassInfo"**, align 8
  %5 = alloca %"class.llvm::PassInfo"**, align 8
  %6 = alloca %"class.std::allocator"*, align 8
  store %"class.llvm::PassInfo"** %0, %"class.llvm::PassInfo"*** %4, align 8
  store %"class.llvm::PassInfo"** %1, %"class.llvm::PassInfo"*** %5, align 8
  store %"class.std::allocator"* %2, %"class.std::allocator"** %6, align 8
  %7 = load %"class.llvm::PassInfo"**, %"class.llvm::PassInfo"*** %4, align 8
  %8 = load %"class.llvm::PassInfo"**, %"class.llvm::PassInfo"*** %5, align 8
  call void @_ZSt8_DestroyIPPKN4llvm8PassInfoEEvT_S5_(%"class.llvm::PassInfo"** noundef %7, %"class.llvm::PassInfo"** noundef %8)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIPKN4llvm8PassInfoESaIS3_EE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %0) #4 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %2, align 8
  %3 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %5 = bitcast %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl"* %4 to %"class.std::allocator"*
  ret %"class.std::allocator"* %5
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIPKN4llvm8PassInfoESaIS3_EED2Ev(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"struct.std::_Vector_base"*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %2, align 8
  %5 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %2, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %7 = bitcast %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl"* %6 to %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl_data"*
  %8 = getelementptr inbounds %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl_data", %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl_data"* %7, i32 0, i32 0
  %9 = load %"class.llvm::PassInfo"**, %"class.llvm::PassInfo"*** %8, align 8
  %10 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %11 = bitcast %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl"* %10 to %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl_data"*
  %12 = getelementptr inbounds %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl_data", %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl_data"* %11, i32 0, i32 2
  %13 = load %"class.llvm::PassInfo"**, %"class.llvm::PassInfo"*** %12, align 8
  %14 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  %15 = bitcast %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl"* %14 to %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl_data"*
  %16 = getelementptr inbounds %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl_data", %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl_data"* %15, i32 0, i32 0
  %17 = load %"class.llvm::PassInfo"**, %"class.llvm::PassInfo"*** %16, align 8
  %18 = ptrtoint %"class.llvm::PassInfo"** %13 to i64
  %19 = ptrtoint %"class.llvm::PassInfo"** %17 to i64
  %20 = sub i64 %18, %19
  %21 = sdiv exact i64 %20, 8
  invoke void @_ZNSt12_Vector_baseIPKN4llvm8PassInfoESaIS3_EE13_M_deallocateEPS3_m(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %5, %"class.llvm::PassInfo"** noundef %9, i64 noundef %21)
          to label %22 unwind label %24

22:                                               ; preds = %1
  %23 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIPKN4llvm8PassInfoESaIS3_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl"* noundef nonnull align 8 dereferenceable(24) %23) #3
  ret void

24:                                               ; preds = %1
  %25 = landingpad { i8*, i32 }
          catch i8* null
  %26 = extractvalue { i8*, i32 } %25, 0
  store i8* %26, i8** %3, align 8
  %27 = extractvalue { i8*, i32 } %25, 1
  store i32 %27, i32* %4, align 4
  %28 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %5, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIPKN4llvm8PassInfoESaIS3_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl"* noundef nonnull align 8 dereferenceable(24) %28) #3
  br label %29

29:                                               ; preds = %24
  %30 = load i8*, i8** %3, align 8
  call void @__clang_call_terminate(i8* %30) #15
  unreachable
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #7 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #3
  call void @_ZSt9terminatev() #15
  unreachable
}

declare i8* @__cxa_begin_catch(i8*)

declare void @_ZSt9terminatev()

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPPKN4llvm8PassInfoEEvT_S5_(%"class.llvm::PassInfo"** noundef %0, %"class.llvm::PassInfo"** noundef %1) #6 comdat {
  %3 = alloca %"class.llvm::PassInfo"**, align 8
  %4 = alloca %"class.llvm::PassInfo"**, align 8
  store %"class.llvm::PassInfo"** %0, %"class.llvm::PassInfo"*** %3, align 8
  store %"class.llvm::PassInfo"** %1, %"class.llvm::PassInfo"*** %4, align 8
  %5 = load %"class.llvm::PassInfo"**, %"class.llvm::PassInfo"*** %3, align 8
  %6 = load %"class.llvm::PassInfo"**, %"class.llvm::PassInfo"*** %4, align 8
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPPKN4llvm8PassInfoEEEvT_S7_(%"class.llvm::PassInfo"** noundef %5, %"class.llvm::PassInfo"** noundef %6)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPPKN4llvm8PassInfoEEEvT_S7_(%"class.llvm::PassInfo"** noundef %0, %"class.llvm::PassInfo"** noundef %1) #4 comdat align 2 {
  %3 = alloca %"class.llvm::PassInfo"**, align 8
  %4 = alloca %"class.llvm::PassInfo"**, align 8
  store %"class.llvm::PassInfo"** %0, %"class.llvm::PassInfo"*** %3, align 8
  store %"class.llvm::PassInfo"** %1, %"class.llvm::PassInfo"*** %4, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIPKN4llvm8PassInfoESaIS3_EE13_M_deallocateEPS3_m(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %0, %"class.llvm::PassInfo"** noundef %1, i64 noundef %2) #6 comdat align 2 {
  %4 = alloca %"struct.std::_Vector_base"*, align 8
  %5 = alloca %"class.llvm::PassInfo"**, align 8
  %6 = alloca i64, align 8
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %4, align 8
  store %"class.llvm::PassInfo"** %1, %"class.llvm::PassInfo"*** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %4, align 8
  %8 = load %"class.llvm::PassInfo"**, %"class.llvm::PassInfo"*** %5, align 8
  %9 = icmp ne %"class.llvm::PassInfo"** %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %7, i32 0, i32 0
  %12 = bitcast %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl"* %11 to %"class.std::allocator"*
  %13 = load %"class.llvm::PassInfo"**, %"class.llvm::PassInfo"*** %5, align 8
  %14 = load i64, i64* %6, align 8
  call void @_ZNSt16allocator_traitsISaIPKN4llvm8PassInfoEEE10deallocateERS4_PS3_m(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %12, %"class.llvm::PassInfo"** noundef %13, i64 noundef %14)
  br label %15

15:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIPKN4llvm8PassInfoESaIS3_EE12_Vector_implD2Ev(%"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl"* %0, %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl"** %2, align 8
  %3 = load %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl"*, %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl"** %2, align 8
  %4 = bitcast %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl"* %3 to %"class.std::allocator"*
  call void @_ZNSaIPKN4llvm8PassInfoEED2Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %4) #3
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIPKN4llvm8PassInfoEEE10deallocateERS4_PS3_m(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %0, %"class.llvm::PassInfo"** noundef %1, i64 noundef %2) #6 comdat align 2 {
  %4 = alloca %"class.std::allocator"*, align 8
  %5 = alloca %"class.llvm::PassInfo"**, align 8
  %6 = alloca i64, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %4, align 8
  store %"class.llvm::PassInfo"** %1, %"class.llvm::PassInfo"*** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.std::allocator"*, %"class.std::allocator"** %4, align 8
  %8 = bitcast %"class.std::allocator"* %7 to %"class.std::__new_allocator"*
  %9 = load %"class.llvm::PassInfo"**, %"class.llvm::PassInfo"*** %5, align 8
  %10 = load i64, i64* %6, align 8
  call void @_ZNSt15__new_allocatorIPKN4llvm8PassInfoEE10deallocateEPS3_m(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %8, %"class.llvm::PassInfo"** noundef %9, i64 noundef %10)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIPKN4llvm8PassInfoEE10deallocateEPS3_m(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %0, %"class.llvm::PassInfo"** noundef %1, i64 noundef %2) #4 comdat align 2 {
  %4 = alloca %"class.std::__new_allocator"*, align 8
  %5 = alloca %"class.llvm::PassInfo"**, align 8
  %6 = alloca i64, align 8
  store %"class.std::__new_allocator"* %0, %"class.std::__new_allocator"** %4, align 8
  store %"class.llvm::PassInfo"** %1, %"class.llvm::PassInfo"*** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %4, align 8
  %8 = load %"class.llvm::PassInfo"**, %"class.llvm::PassInfo"*** %5, align 8
  %9 = bitcast %"class.llvm::PassInfo"** %8 to i8*
  call void @_ZdlPv(i8* noundef %9) #16
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) #8

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIPKN4llvm8PassInfoEED2Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 {
  %2 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8
  %4 = bitcast %"class.std::allocator"* %3 to %"class.std::__new_allocator"*
  call void @_ZNSt15__new_allocatorIPKN4llvm8PassInfoEED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %4) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIPKN4llvm8PassInfoEED2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 {
  %2 = alloca %"class.std::__new_allocator"*, align 8
  store %"class.std::__new_allocator"* %0, %"class.std::__new_allocator"** %2, align 8
  %3 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %2, align 8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress noinline optnone uwtable
define internal noundef %"class.llvm::Pass"* @_ZN4llvm15callDefaultCtorIN12_GLOBAL__N_121HeapMemoryMeasurementEEEPNS_4PassEv() #6 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = call noalias noundef nonnull i8* @_Znwm(i64 noundef 32) #17
  %4 = bitcast i8* %3 to %"struct.(anonymous namespace)::HeapMemoryMeasurement"*
  invoke void @_ZN12_GLOBAL__N_121HeapMemoryMeasurementC2Ev(%"struct.(anonymous namespace)::HeapMemoryMeasurement"* noundef nonnull align 8 dereferenceable(28) %4)
          to label %5 unwind label %7

5:                                                ; preds = %0
  %6 = bitcast %"struct.(anonymous namespace)::HeapMemoryMeasurement"* %4 to %"class.llvm::Pass"*
  ret %"class.llvm::Pass"* %6

7:                                                ; preds = %0
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  store i8* %9, i8** %1, align 8
  %10 = extractvalue { i8*, i32 } %8, 1
  store i32 %10, i32* %2, align 4
  call void @_ZdlPv(i8* noundef %3) #16
  br label %11

11:                                               ; preds = %7
  %12 = load i8*, i8** %1, align 8
  %13 = load i32, i32* %2, align 4
  %14 = insertvalue { i8*, i32 } undef, i8* %12, 0
  %15 = insertvalue { i8*, i32 } %14, i32 %13, 1
  resume { i8*, i32 } %15
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4llvm8PassInfoC2ENS_9StringRefES1_PKvPFPNS_4PassEvEbb(%"class.llvm::PassInfo"* noundef nonnull align 8 dereferenceable(80) %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* noundef %5, %"class.llvm::Pass"* ()* noundef %6, i1 noundef zeroext %7, i1 noundef zeroext %8) unnamed_addr #2 comdat align 2 {
  %10 = alloca %"class.llvm::StringRef", align 8
  %11 = alloca %"class.llvm::StringRef", align 8
  %12 = alloca %"class.llvm::PassInfo"*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %"class.llvm::Pass"* ()*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = bitcast %"class.llvm::StringRef"* %10 to { i8*, i64 }*
  %18 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %17, i32 0, i32 0
  store i8* %1, i8** %18, align 8
  %19 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %17, i32 0, i32 1
  store i64 %2, i64* %19, align 8
  %20 = bitcast %"class.llvm::StringRef"* %11 to { i8*, i64 }*
  %21 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %20, i32 0, i32 0
  store i8* %3, i8** %21, align 8
  %22 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %20, i32 0, i32 1
  store i64 %4, i64* %22, align 8
  store %"class.llvm::PassInfo"* %0, %"class.llvm::PassInfo"** %12, align 8
  store i8* %5, i8** %13, align 8
  store %"class.llvm::Pass"* ()* %6, %"class.llvm::Pass"* ()** %14, align 8
  %23 = zext i1 %7 to i8
  store i8 %23, i8* %15, align 1
  %24 = zext i1 %8 to i8
  store i8 %24, i8* %16, align 1
  %25 = load %"class.llvm::PassInfo"*, %"class.llvm::PassInfo"** %12, align 8
  %26 = getelementptr inbounds %"class.llvm::PassInfo", %"class.llvm::PassInfo"* %25, i32 0, i32 0
  %27 = bitcast %"class.llvm::StringRef"* %26 to i8*
  %28 = bitcast %"class.llvm::StringRef"* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 16, i1 false)
  %29 = getelementptr inbounds %"class.llvm::PassInfo", %"class.llvm::PassInfo"* %25, i32 0, i32 1
  %30 = bitcast %"class.llvm::StringRef"* %29 to i8*
  %31 = bitcast %"class.llvm::StringRef"* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 16, i1 false)
  %32 = getelementptr inbounds %"class.llvm::PassInfo", %"class.llvm::PassInfo"* %25, i32 0, i32 2
  %33 = load i8*, i8** %13, align 8
  store i8* %33, i8** %32, align 8
  %34 = getelementptr inbounds %"class.llvm::PassInfo", %"class.llvm::PassInfo"* %25, i32 0, i32 3
  %35 = load i8, i8* %15, align 1
  %36 = trunc i8 %35 to i1
  %37 = zext i1 %36 to i8
  store i8 %37, i8* %34, align 8
  %38 = getelementptr inbounds %"class.llvm::PassInfo", %"class.llvm::PassInfo"* %25, i32 0, i32 4
  %39 = load i8, i8* %16, align 1
  %40 = trunc i8 %39 to i1
  %41 = zext i1 %40 to i8
  store i8 %41, i8* %38, align 1
  %42 = getelementptr inbounds %"class.llvm::PassInfo", %"class.llvm::PassInfo"* %25, i32 0, i32 5
  store i8 0, i8* %42, align 2
  %43 = getelementptr inbounds %"class.llvm::PassInfo", %"class.llvm::PassInfo"* %25, i32 0, i32 6
  call void @_ZNSt6vectorIPKN4llvm8PassInfoESaIS3_EEC2Ev(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %43) #3
  %44 = getelementptr inbounds %"class.llvm::PassInfo", %"class.llvm::PassInfo"* %25, i32 0, i32 7
  %45 = load %"class.llvm::Pass"* ()*, %"class.llvm::Pass"* ()** %14, align 8
  store %"class.llvm::Pass"* ()* %45, %"class.llvm::Pass"* ()** %44, align 8
  ret void
}

declare noundef %"class.llvm::PassRegistry"* @_ZN4llvm12PassRegistry15getPassRegistryEv() #10

declare void @_ZN4llvm12PassRegistry12registerPassERKNS_8PassInfoEb(%"class.llvm::PassRegistry"* noundef nonnull align 8 dereferenceable(168), %"class.llvm::PassInfo"* noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext) #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znwm(i64 noundef) #11

; Function Attrs: noinline optnone uwtable
define internal void @_ZN12_GLOBAL__N_121HeapMemoryMeasurementC2Ev(%"struct.(anonymous namespace)::HeapMemoryMeasurement"* noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #1 align 2 {
  %2 = alloca %"struct.(anonymous namespace)::HeapMemoryMeasurement"*, align 8
  store %"struct.(anonymous namespace)::HeapMemoryMeasurement"* %0, %"struct.(anonymous namespace)::HeapMemoryMeasurement"** %2, align 8
  %3 = load %"struct.(anonymous namespace)::HeapMemoryMeasurement"*, %"struct.(anonymous namespace)::HeapMemoryMeasurement"** %2, align 8
  %4 = bitcast %"struct.(anonymous namespace)::HeapMemoryMeasurement"* %3 to %"class.llvm::FunctionPass"*
  call void @_ZN4llvm12FunctionPassC2ERc(%"class.llvm::FunctionPass"* noundef nonnull align 8 dereferenceable(28) %4, i8* noundef nonnull align 1 dereferenceable(1) @_ZN12_GLOBAL__N_121HeapMemoryMeasurement2IDE)
  %5 = bitcast %"struct.(anonymous namespace)::HeapMemoryMeasurement"* %3 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [20 x i8*] }, { [20 x i8*] }* @_ZTVN12_GLOBAL__N_121HeapMemoryMeasurementE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %5, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN4llvm12FunctionPassC2ERc(%"class.llvm::FunctionPass"* noundef nonnull align 8 dereferenceable(28) %0, i8* noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"class.llvm::FunctionPass"*, align 8
  %4 = alloca i8*, align 8
  store %"class.llvm::FunctionPass"* %0, %"class.llvm::FunctionPass"** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %"class.llvm::FunctionPass"*, %"class.llvm::FunctionPass"** %3, align 8
  %6 = bitcast %"class.llvm::FunctionPass"* %5 to %"class.llvm::Pass"*
  %7 = load i8*, i8** %4, align 8
  call void @_ZN4llvm4PassC2ENS_8PassKindERc(%"class.llvm::Pass"* noundef nonnull align 8 dereferenceable(28) %6, i32 noundef 2, i8* noundef nonnull align 1 dereferenceable(1) %7)
  %8 = bitcast %"class.llvm::FunctionPass"* %5 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [20 x i8*] }, { [20 x i8*] }* @_ZTVN4llvm12FunctionPassE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %8, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ZN12_GLOBAL__N_121HeapMemoryMeasurementD2Ev(%"struct.(anonymous namespace)::HeapMemoryMeasurement"* noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #2 align 2 {
  %2 = alloca %"struct.(anonymous namespace)::HeapMemoryMeasurement"*, align 8
  store %"struct.(anonymous namespace)::HeapMemoryMeasurement"* %0, %"struct.(anonymous namespace)::HeapMemoryMeasurement"** %2, align 8
  %3 = load %"struct.(anonymous namespace)::HeapMemoryMeasurement"*, %"struct.(anonymous namespace)::HeapMemoryMeasurement"** %2, align 8
  %4 = bitcast %"struct.(anonymous namespace)::HeapMemoryMeasurement"* %3 to %"class.llvm::FunctionPass"*
  call void @_ZN4llvm12FunctionPassD2Ev(%"class.llvm::FunctionPass"* noundef nonnull align 8 dereferenceable(28) %4) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ZN12_GLOBAL__N_121HeapMemoryMeasurementD0Ev(%"struct.(anonymous namespace)::HeapMemoryMeasurement"* noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #2 align 2 {
  %2 = alloca %"struct.(anonymous namespace)::HeapMemoryMeasurement"*, align 8
  store %"struct.(anonymous namespace)::HeapMemoryMeasurement"* %0, %"struct.(anonymous namespace)::HeapMemoryMeasurement"** %2, align 8
  %3 = load %"struct.(anonymous namespace)::HeapMemoryMeasurement"*, %"struct.(anonymous namespace)::HeapMemoryMeasurement"** %2, align 8
  call void @_ZN12_GLOBAL__N_121HeapMemoryMeasurementD2Ev(%"struct.(anonymous namespace)::HeapMemoryMeasurement"* noundef nonnull align 8 dereferenceable(28) %3) #3
  %4 = bitcast %"struct.(anonymous namespace)::HeapMemoryMeasurement"* %3 to i8*
  call void @_ZdlPv(i8* noundef %4) #16
  ret void
}

declare { i8*, i64 } @_ZNK4llvm4Pass11getPassNameEv(%"class.llvm::Pass"* noundef nonnull align 8 dereferenceable(28)) unnamed_addr #10

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm4Pass16doInitializationERNS_6ModuleE(%"class.llvm::Pass"* noundef nonnull align 8 dereferenceable(28) %0, %"class.llvm::Module"* noundef nonnull align 8 dereferenceable(800) %1) unnamed_addr #4 comdat align 2 {
  %3 = alloca %"class.llvm::Pass"*, align 8
  %4 = alloca %"class.llvm::Module"*, align 8
  store %"class.llvm::Pass"* %0, %"class.llvm::Pass"** %3, align 8
  store %"class.llvm::Module"* %1, %"class.llvm::Module"** %4, align 8
  %5 = load %"class.llvm::Pass"*, %"class.llvm::Pass"** %3, align 8
  ret i1 false
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm4Pass14doFinalizationERNS_6ModuleE(%"class.llvm::Pass"* noundef nonnull align 8 dereferenceable(28) %0, %"class.llvm::Module"* noundef nonnull align 8 dereferenceable(800) %1) unnamed_addr #4 comdat align 2 {
  %3 = alloca %"class.llvm::Pass"*, align 8
  %4 = alloca %"class.llvm::Module"*, align 8
  store %"class.llvm::Pass"* %0, %"class.llvm::Pass"** %3, align 8
  store %"class.llvm::Module"* %1, %"class.llvm::Module"** %4, align 8
  %5 = load %"class.llvm::Pass"*, %"class.llvm::Pass"** %3, align 8
  ret i1 false
}

declare void @_ZNK4llvm4Pass5printERNS_11raw_ostreamEPKNS_6ModuleE(%"class.llvm::Pass"* noundef nonnull align 8 dereferenceable(28), %"class.llvm::raw_ostream"* noundef nonnull align 8 dereferenceable(60), %"class.llvm::Module"* noundef) unnamed_addr #10

declare noundef %"class.llvm::Pass"* @_ZNK4llvm12FunctionPass17createPrinterPassERNS_11raw_ostreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.llvm::FunctionPass"* noundef nonnull align 8 dereferenceable(28), %"class.llvm::raw_ostream"* noundef nonnull align 8 dereferenceable(60), %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) unnamed_addr #10

declare void @_ZN4llvm12FunctionPass17assignPassManagerERNS_7PMStackENS_15PassManagerTypeE(%"class.llvm::FunctionPass"* noundef nonnull align 8 dereferenceable(28), %"class.llvm::PMStack"* noundef nonnull align 1, i32 noundef) unnamed_addr #10

declare void @_ZN4llvm4Pass18preparePassManagerERNS_7PMStackE(%"class.llvm::Pass"* noundef nonnull align 8 dereferenceable(28), %"class.llvm::PMStack"* noundef nonnull align 1) unnamed_addr #10

declare noundef i32 @_ZNK4llvm12FunctionPass27getPotentialPassManagerTypeEv(%"class.llvm::FunctionPass"* noundef nonnull align 8 dereferenceable(28)) unnamed_addr #10

; Function Attrs: mustprogress noinline optnone uwtable
define internal void @_ZNK12_GLOBAL__N_121HeapMemoryMeasurement16getAnalysisUsageERN4llvm13AnalysisUsageE(%"struct.(anonymous namespace)::HeapMemoryMeasurement"* noundef nonnull align 8 dereferenceable(28) %0, %"class.llvm::AnalysisUsage"* noundef nonnull align 8 dereferenceable(161) %1) unnamed_addr #6 align 2 {
  %3 = alloca %"struct.(anonymous namespace)::HeapMemoryMeasurement"*, align 8
  %4 = alloca %"class.llvm::AnalysisUsage"*, align 8
  store %"struct.(anonymous namespace)::HeapMemoryMeasurement"* %0, %"struct.(anonymous namespace)::HeapMemoryMeasurement"** %3, align 8
  store %"class.llvm::AnalysisUsage"* %1, %"class.llvm::AnalysisUsage"** %4, align 8
  %5 = load %"struct.(anonymous namespace)::HeapMemoryMeasurement"*, %"struct.(anonymous namespace)::HeapMemoryMeasurement"** %3, align 8
  %6 = load %"class.llvm::AnalysisUsage"*, %"class.llvm::AnalysisUsage"** %4, align 8
  call void @_ZN4llvm13AnalysisUsage15setPreservesAllEv(%"class.llvm::AnalysisUsage"* noundef nonnull align 8 dereferenceable(161) %6)
  ret void
}

declare void @_ZN4llvm4Pass13releaseMemoryEv(%"class.llvm::Pass"* noundef nonnull align 8 dereferenceable(28)) unnamed_addr #10

declare noundef i8* @_ZN4llvm4Pass26getAdjustedAnalysisPointerEPKv(%"class.llvm::Pass"* noundef nonnull align 8 dereferenceable(28), i8* noundef) unnamed_addr #10

declare noundef %"class.llvm::ImmutablePass"* @_ZN4llvm4Pass18getAsImmutablePassEv(%"class.llvm::Pass"* noundef nonnull align 8 dereferenceable(28)) unnamed_addr #10

declare noundef %"class.llvm::PMDataManager"* @_ZN4llvm4Pass18getAsPMDataManagerEv(%"class.llvm::Pass"* noundef nonnull align 8 dereferenceable(28)) unnamed_addr #10

declare void @_ZNK4llvm4Pass14verifyAnalysisEv(%"class.llvm::Pass"* noundef nonnull align 8 dereferenceable(28)) unnamed_addr #10

declare void @_ZN4llvm4Pass17dumpPassStructureEj(%"class.llvm::Pass"* noundef nonnull align 8 dereferenceable(28), i32 noundef) unnamed_addr #10

; Function Attrs: mustprogress noinline optnone uwtable
define internal noundef zeroext i1 @_ZN12_GLOBAL__N_121HeapMemoryMeasurement13runOnFunctionERN4llvm8FunctionE(%"struct.(anonymous namespace)::HeapMemoryMeasurement"* noundef nonnull align 8 dereferenceable(28) %0, %"class.llvm::Function"* noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #6 align 2 {
  %3 = alloca %"struct.(anonymous namespace)::HeapMemoryMeasurement"*, align 8
  %4 = alloca %"class.llvm::Function"*, align 8
  %5 = alloca %"class.llvm::StringRef", align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %"class.llvm::DataLayout"*, align 8
  %9 = alloca %"class.llvm::Function"*, align 8
  %10 = alloca %"class.llvm::ilist_iterator", align 8
  %11 = alloca %"class.llvm::ilist_iterator", align 8
  %12 = alloca %"class.llvm::BasicBlock"*, align 8
  %13 = alloca %"class.llvm::BasicBlock"*, align 8
  %14 = alloca %"class.llvm::ilist_iterator.123", align 8
  %15 = alloca %"class.llvm::ilist_iterator.123", align 8
  %16 = alloca %"class.llvm::Instruction"*, align 8
  %17 = alloca %"class.llvm::AllocaInst"*, align 8
  %18 = alloca %"class.llvm::Type"*, align 8
  %19 = alloca %"class.llvm::TypeSize", align 8
  %20 = alloca %"class.llvm::CallInst"*, align 8
  %21 = alloca %"class.llvm::Function"*, align 8
  %22 = alloca %"class.llvm::StringRef", align 8
  %23 = alloca %"class.llvm::StringRef", align 8
  %24 = alloca %"class.llvm::Value"*, align 8
  %25 = alloca %"class.llvm::Instruction"*, align 8
  %26 = alloca %"class.llvm::AllocaInst"*, align 8
  %27 = alloca %"class.llvm::Type"*, align 8
  %28 = alloca %"class.llvm::TypeSize", align 8
  store %"struct.(anonymous namespace)::HeapMemoryMeasurement"* %0, %"struct.(anonymous namespace)::HeapMemoryMeasurement"** %3, align 8
  store %"class.llvm::Function"* %1, %"class.llvm::Function"** %4, align 8
  %29 = load %"struct.(anonymous namespace)::HeapMemoryMeasurement"*, %"struct.(anonymous namespace)::HeapMemoryMeasurement"** %3, align 8
  %30 = call noundef nonnull align 8 dereferenceable(96) %"class.llvm::raw_fd_ostream"* @_ZN4llvm4errsEv()
  %31 = bitcast %"class.llvm::raw_fd_ostream"* %30 to %"class.llvm::raw_ostream"*
  %32 = call noundef nonnull align 8 dereferenceable(60) %"class.llvm::raw_ostream"* @_ZN4llvm11raw_ostreamlsEPKc(%"class.llvm::raw_ostream"* noundef nonnull align 8 dereferenceable(60) %31, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %33 = load %"class.llvm::Function"*, %"class.llvm::Function"** %4, align 8
  %34 = bitcast %"class.llvm::Function"* %33 to %"class.llvm::Value"*
  %35 = call { i8*, i64 } @_ZNK4llvm5Value7getNameEv(%"class.llvm::Value"* noundef nonnull align 8 dereferenceable(24) %34)
  %36 = bitcast %"class.llvm::StringRef"* %5 to { i8*, i64 }*
  %37 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %36, i32 0, i32 0
  %38 = extractvalue { i8*, i64 } %35, 0
  store i8* %38, i8** %37, align 8
  %39 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %36, i32 0, i32 1
  %40 = extractvalue { i8*, i64 } %35, 1
  store i64 %40, i64* %39, align 8
  %41 = bitcast %"class.llvm::StringRef"* %5 to { i8*, i64 }*
  %42 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %41, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call noundef nonnull align 8 dereferenceable(60) %"class.llvm::raw_ostream"* @_ZN4llvm11raw_ostreamlsENS_9StringRefE(%"class.llvm::raw_ostream"* noundef nonnull align 8 dereferenceable(60) %32, i8* %43, i64 %45)
  %47 = call noundef nonnull align 8 dereferenceable(60) %"class.llvm::raw_ostream"* @_ZN4llvm11raw_ostreamlsEPKc(%"class.llvm::raw_ostream"* noundef nonnull align 8 dereferenceable(60) %46, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %48 = load %"class.llvm::Function"*, %"class.llvm::Function"** %4, align 8
  %49 = bitcast %"class.llvm::Function"* %48 to %"class.llvm::GlobalValue"*
  %50 = call noundef %"class.llvm::Module"* @_ZN4llvm11GlobalValue9getParentEv(%"class.llvm::GlobalValue"* noundef nonnull align 8 dereferenceable(48) %49)
  %51 = call noundef nonnull align 8 dereferenceable(440) %"class.llvm::DataLayout"* @_ZNK4llvm6Module13getDataLayoutEv(%"class.llvm::Module"* noundef nonnull align 8 dereferenceable(800) %50)
  store %"class.llvm::DataLayout"* %51, %"class.llvm::DataLayout"** %8, align 8
  %52 = load %"class.llvm::Function"*, %"class.llvm::Function"** %4, align 8
  store %"class.llvm::Function"* %52, %"class.llvm::Function"** %9, align 8
  %53 = load %"class.llvm::Function"*, %"class.llvm::Function"** %9, align 8
  %54 = call %"class.llvm::ilist_node_impl.110"* @_ZN4llvm8Function5beginEv(%"class.llvm::Function"* noundef nonnull align 8 dereferenceable(120) %53)
  %55 = getelementptr inbounds %"class.llvm::ilist_iterator", %"class.llvm::ilist_iterator"* %10, i32 0, i32 0
  store %"class.llvm::ilist_node_impl.110"* %54, %"class.llvm::ilist_node_impl.110"** %55, align 8
  %56 = load %"class.llvm::Function"*, %"class.llvm::Function"** %9, align 8
  %57 = call %"class.llvm::ilist_node_impl.110"* @_ZN4llvm8Function3endEv(%"class.llvm::Function"* noundef nonnull align 8 dereferenceable(120) %56)
  %58 = getelementptr inbounds %"class.llvm::ilist_iterator", %"class.llvm::ilist_iterator"* %11, i32 0, i32 0
  store %"class.llvm::ilist_node_impl.110"* %57, %"class.llvm::ilist_node_impl.110"** %58, align 8
  br label %59

59:                                               ; preds = %155, %2
  %60 = call noundef zeroext i1 @_ZN4llvmneERKNS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_10BasicBlockELb0ELb0EvEELb0ELb0EEES7_(%"class.llvm::ilist_iterator"* noundef nonnull align 8 dereferenceable(8) %10, %"class.llvm::ilist_iterator"* noundef nonnull align 8 dereferenceable(8) %11)
  br i1 %60, label %61, label %157

61:                                               ; preds = %59
  %62 = call noundef nonnull align 8 dereferenceable(64) %"class.llvm::BasicBlock"* @_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_10BasicBlockELb0ELb0EvEELb0ELb0EEdeEv(%"class.llvm::ilist_iterator"* noundef nonnull align 8 dereferenceable(8) %10)
  store %"class.llvm::BasicBlock"* %62, %"class.llvm::BasicBlock"** %12, align 8
  %63 = load %"class.llvm::BasicBlock"*, %"class.llvm::BasicBlock"** %12, align 8
  store %"class.llvm::BasicBlock"* %63, %"class.llvm::BasicBlock"** %13, align 8
  %64 = load %"class.llvm::BasicBlock"*, %"class.llvm::BasicBlock"** %13, align 8
  %65 = call %"class.llvm::ilist_node_impl.122"* @_ZN4llvm10BasicBlock5beginEv(%"class.llvm::BasicBlock"* noundef nonnull align 8 dereferenceable(64) %64)
  %66 = getelementptr inbounds %"class.llvm::ilist_iterator.123", %"class.llvm::ilist_iterator.123"* %14, i32 0, i32 0
  store %"class.llvm::ilist_node_impl.122"* %65, %"class.llvm::ilist_node_impl.122"** %66, align 8
  %67 = load %"class.llvm::BasicBlock"*, %"class.llvm::BasicBlock"** %13, align 8
  %68 = call %"class.llvm::ilist_node_impl.122"* @_ZN4llvm10BasicBlock3endEv(%"class.llvm::BasicBlock"* noundef nonnull align 8 dereferenceable(64) %67)
  %69 = getelementptr inbounds %"class.llvm::ilist_iterator.123", %"class.llvm::ilist_iterator.123"* %15, i32 0, i32 0
  store %"class.llvm::ilist_node_impl.122"* %68, %"class.llvm::ilist_node_impl.122"** %69, align 8
  br label %70

70:                                               ; preds = %152, %61
  %71 = call noundef zeroext i1 @_ZN4llvmneERKNS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvEELb0ELb0EEES7_(%"class.llvm::ilist_iterator.123"* noundef nonnull align 8 dereferenceable(8) %14, %"class.llvm::ilist_iterator.123"* noundef nonnull align 8 dereferenceable(8) %15)
  br i1 %71, label %72, label %154

72:                                               ; preds = %70
  %73 = call noundef nonnull align 8 dereferenceable(60) %"class.llvm::Instruction"* @_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvEELb0ELb0EEdeEv(%"class.llvm::ilist_iterator.123"* noundef nonnull align 8 dereferenceable(8) %14)
  store %"class.llvm::Instruction"* %73, %"class.llvm::Instruction"** %16, align 8
  %74 = load %"class.llvm::Instruction"*, %"class.llvm::Instruction"** %16, align 8
  %75 = call noundef %"class.llvm::AllocaInst"* @_ZN4llvm8dyn_castINS_10AllocaInstENS_11InstructionEEENS_10cast_rettyIT_PT0_E8ret_typeES6_(%"class.llvm::Instruction"* noundef %74)
  store %"class.llvm::AllocaInst"* %75, %"class.llvm::AllocaInst"** %17, align 8
  %76 = load %"class.llvm::AllocaInst"*, %"class.llvm::AllocaInst"** %17, align 8
  %77 = icmp ne %"class.llvm::AllocaInst"* %76, null
  br i1 %77, label %78, label %92

78:                                               ; preds = %72
  %79 = load %"class.llvm::AllocaInst"*, %"class.llvm::AllocaInst"** %17, align 8
  %80 = call noundef %"class.llvm::Type"* @_ZNK4llvm10AllocaInst16getAllocatedTypeEv(%"class.llvm::AllocaInst"* noundef nonnull align 8 dereferenceable(72) %79)
  store %"class.llvm::Type"* %80, %"class.llvm::Type"** %18, align 8
  %81 = load %"class.llvm::DataLayout"*, %"class.llvm::DataLayout"** %8, align 8
  %82 = load %"class.llvm::Type"*, %"class.llvm::Type"** %18, align 8
  %83 = call { i64, i32 } @_ZNK4llvm10DataLayout16getTypeAllocSizeEPNS_4TypeE(%"class.llvm::DataLayout"* noundef nonnull align 8 dereferenceable(440) %81, %"class.llvm::Type"* noundef %82)
  %84 = bitcast %"class.llvm::TypeSize"* %19 to { i64, i32 }*
  %85 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %84, i32 0, i32 0
  %86 = extractvalue { i64, i32 } %83, 0
  store i64 %86, i64* %85, align 8
  %87 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %84, i32 0, i32 1
  %88 = extractvalue { i64, i32 } %83, 1
  store i32 %88, i32* %87, align 8
  %89 = call noundef i64 @_ZNK4llvm8TypeSizecvmEv(%"class.llvm::TypeSize"* noundef nonnull align 8 dereferenceable(12) %19)
  %90 = load i64, i64* %6, align 8
  %91 = add i64 %90, %89
  store i64 %91, i64* %6, align 8
  br label %151

92:                                               ; preds = %72
  %93 = load %"class.llvm::Instruction"*, %"class.llvm::Instruction"** %16, align 8
  %94 = call noundef %"class.llvm::CallInst"* @_ZN4llvm8dyn_castINS_8CallInstENS_11InstructionEEENS_10cast_rettyIT_PT0_E8ret_typeES6_(%"class.llvm::Instruction"* noundef %93)
  store %"class.llvm::CallInst"* %94, %"class.llvm::CallInst"** %20, align 8
  %95 = load %"class.llvm::CallInst"*, %"class.llvm::CallInst"** %20, align 8
  %96 = icmp ne %"class.llvm::CallInst"* %95, null
  br i1 %96, label %97, label %150

97:                                               ; preds = %92
  %98 = load %"class.llvm::CallInst"*, %"class.llvm::CallInst"** %20, align 8
  %99 = bitcast %"class.llvm::CallInst"* %98 to %"class.llvm::CallBase"*
  %100 = call noundef %"class.llvm::Function"* @_ZNK4llvm8CallBase17getCalledFunctionEv(%"class.llvm::CallBase"* noundef nonnull align 8 dereferenceable(80) %99)
  store %"class.llvm::Function"* %100, %"class.llvm::Function"** %21, align 8
  %101 = load %"class.llvm::Function"*, %"class.llvm::Function"** %21, align 8
  %102 = icmp ne %"class.llvm::Function"* %101, null
  br i1 %102, label %103, label %118

103:                                              ; preds = %97
  %104 = load %"class.llvm::Function"*, %"class.llvm::Function"** %21, align 8
  %105 = bitcast %"class.llvm::Function"* %104 to %"class.llvm::Value"*
  %106 = call { i8*, i64 } @_ZNK4llvm5Value7getNameEv(%"class.llvm::Value"* noundef nonnull align 8 dereferenceable(24) %105)
  %107 = bitcast %"class.llvm::StringRef"* %22 to { i8*, i64 }*
  %108 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %107, i32 0, i32 0
  %109 = extractvalue { i8*, i64 } %106, 0
  store i8* %109, i8** %108, align 8
  %110 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %107, i32 0, i32 1
  %111 = extractvalue { i8*, i64 } %106, 1
  store i64 %111, i64* %110, align 8
  call void @_ZN4llvm9StringRefC2EPKc(%"class.llvm::StringRef"* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %112 = bitcast %"class.llvm::StringRef"* %23 to { i8*, i64 }*
  %113 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %112, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = call noundef zeroext i1 @_ZNK4llvm9StringRef10startswithES0_(%"class.llvm::StringRef"* noundef nonnull align 8 dereferenceable(16) %22, i8* %114, i64 %116)
  br label %118

118:                                              ; preds = %103, %97
  %119 = phi i1 [ false, %97 ], [ %117, %103 ]
  br i1 %119, label %120, label %149

120:                                              ; preds = %118
  %121 = load %"class.llvm::CallInst"*, %"class.llvm::CallInst"** %20, align 8
  %122 = bitcast %"class.llvm::CallInst"* %121 to %"class.llvm::CallBase"*
  %123 = call noundef %"class.llvm::Value"* @_ZNK4llvm8CallBase10getOperandEj(%"class.llvm::CallBase"* noundef nonnull align 8 dereferenceable(80) %122, i32 noundef 0)
  store %"class.llvm::Value"* %123, %"class.llvm::Value"** %24, align 8
  %124 = load %"class.llvm::Value"*, %"class.llvm::Value"** %24, align 8
  %125 = call noundef %"class.llvm::Instruction"* @_ZN4llvm8dyn_castINS_11InstructionENS_5ValueEEENS_10cast_rettyIT_PT0_E8ret_typeES6_(%"class.llvm::Value"* noundef %124)
  store %"class.llvm::Instruction"* %125, %"class.llvm::Instruction"** %25, align 8
  %126 = load %"class.llvm::Instruction"*, %"class.llvm::Instruction"** %25, align 8
  %127 = icmp ne %"class.llvm::Instruction"* %126, null
  br i1 %127, label %128, label %148

128:                                              ; preds = %120
  %129 = load %"class.llvm::Instruction"*, %"class.llvm::Instruction"** %25, align 8
  %130 = call noundef %"class.llvm::AllocaInst"* @_ZN4llvm8dyn_castINS_10AllocaInstENS_11InstructionEEENS_10cast_rettyIT_PT0_E8ret_typeES6_(%"class.llvm::Instruction"* noundef %129)
  store %"class.llvm::AllocaInst"* %130, %"class.llvm::AllocaInst"** %26, align 8
  %131 = load %"class.llvm::AllocaInst"*, %"class.llvm::AllocaInst"** %26, align 8
  %132 = icmp ne %"class.llvm::AllocaInst"* %131, null
  br i1 %132, label %133, label %147

133:                                              ; preds = %128
  %134 = load %"class.llvm::AllocaInst"*, %"class.llvm::AllocaInst"** %26, align 8
  %135 = call noundef %"class.llvm::Type"* @_ZNK4llvm10AllocaInst16getAllocatedTypeEv(%"class.llvm::AllocaInst"* noundef nonnull align 8 dereferenceable(72) %134)
  store %"class.llvm::Type"* %135, %"class.llvm::Type"** %27, align 8
  %136 = load %"class.llvm::DataLayout"*, %"class.llvm::DataLayout"** %8, align 8
  %137 = load %"class.llvm::Type"*, %"class.llvm::Type"** %27, align 8
  %138 = call { i64, i32 } @_ZNK4llvm10DataLayout16getTypeAllocSizeEPNS_4TypeE(%"class.llvm::DataLayout"* noundef nonnull align 8 dereferenceable(440) %136, %"class.llvm::Type"* noundef %137)
  %139 = bitcast %"class.llvm::TypeSize"* %28 to { i64, i32 }*
  %140 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %139, i32 0, i32 0
  %141 = extractvalue { i64, i32 } %138, 0
  store i64 %141, i64* %140, align 8
  %142 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %139, i32 0, i32 1
  %143 = extractvalue { i64, i32 } %138, 1
  store i32 %143, i32* %142, align 8
  %144 = call noundef i64 @_ZNK4llvm8TypeSizecvmEv(%"class.llvm::TypeSize"* noundef nonnull align 8 dereferenceable(12) %28)
  %145 = load i64, i64* %7, align 8
  %146 = add i64 %145, %144
  store i64 %146, i64* %7, align 8
  br label %147

147:                                              ; preds = %133, %128
  br label %148

148:                                              ; preds = %147, %120
  br label %149

149:                                              ; preds = %148, %118
  br label %150

150:                                              ; preds = %149, %92
  br label %151

151:                                              ; preds = %150, %78
  br label %152

152:                                              ; preds = %151
  %153 = call noundef nonnull align 8 dereferenceable(8) %"class.llvm::ilist_iterator.123"* @_ZN4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvEELb0ELb0EEppEv(%"class.llvm::ilist_iterator.123"* noundef nonnull align 8 dereferenceable(8) %14)
  br label %70

154:                                              ; preds = %70
  br label %155

155:                                              ; preds = %154
  %156 = call noundef nonnull align 8 dereferenceable(8) %"class.llvm::ilist_iterator"* @_ZN4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_10BasicBlockELb0ELb0EvEELb0ELb0EEppEv(%"class.llvm::ilist_iterator"* noundef nonnull align 8 dereferenceable(8) %10)
  br label %59

157:                                              ; preds = %59
  %158 = call noundef nonnull align 8 dereferenceable(96) %"class.llvm::raw_fd_ostream"* @_ZN4llvm4errsEv()
  %159 = bitcast %"class.llvm::raw_fd_ostream"* %158 to %"class.llvm::raw_ostream"*
  %160 = call noundef nonnull align 8 dereferenceable(60) %"class.llvm::raw_ostream"* @_ZN4llvm11raw_ostreamlsEPKc(%"class.llvm::raw_ostream"* noundef nonnull align 8 dereferenceable(60) %159, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %161 = load i64, i64* %6, align 8
  %162 = call noundef nonnull align 8 dereferenceable(60) %"class.llvm::raw_ostream"* @_ZN4llvm11raw_ostreamlsEy(%"class.llvm::raw_ostream"* noundef nonnull align 8 dereferenceable(60) %160, i64 noundef %161)
  %163 = call noundef nonnull align 8 dereferenceable(60) %"class.llvm::raw_ostream"* @_ZN4llvm11raw_ostreamlsEPKc(%"class.llvm::raw_ostream"* noundef nonnull align 8 dereferenceable(60) %162, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %164 = call noundef nonnull align 8 dereferenceable(96) %"class.llvm::raw_fd_ostream"* @_ZN4llvm4errsEv()
  %165 = bitcast %"class.llvm::raw_fd_ostream"* %164 to %"class.llvm::raw_ostream"*
  %166 = call noundef nonnull align 8 dereferenceable(60) %"class.llvm::raw_ostream"* @_ZN4llvm11raw_ostreamlsEPKc(%"class.llvm::raw_ostream"* noundef nonnull align 8 dereferenceable(60) %165, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %167 = load i64, i64* %7, align 8
  %168 = call noundef nonnull align 8 dereferenceable(60) %"class.llvm::raw_ostream"* @_ZN4llvm11raw_ostreamlsEy(%"class.llvm::raw_ostream"* noundef nonnull align 8 dereferenceable(60) %166, i64 noundef %167)
  %169 = call noundef nonnull align 8 dereferenceable(60) %"class.llvm::raw_ostream"* @_ZN4llvm11raw_ostreamlsEPKc(%"class.llvm::raw_ostream"* noundef nonnull align 8 dereferenceable(60) %168, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret i1 false
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4llvm4PassC2ENS_8PassKindERc(%"class.llvm::Pass"* noundef nonnull align 8 dereferenceable(28) %0, i32 noundef %1, i8* noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat align 2 {
  %4 = alloca %"class.llvm::Pass"*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %"class.llvm::Pass"* %0, %"class.llvm::Pass"** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load %"class.llvm::Pass"*, %"class.llvm::Pass"** %4, align 8
  %8 = bitcast %"class.llvm::Pass"* %7 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [19 x i8*] }, { [19 x i8*] }* @_ZTVN4llvm4PassE, i32 0, inrange i32 0, i32 2) to i32 (...)**), i32 (...)*** %8, align 8
  %9 = getelementptr inbounds %"class.llvm::Pass", %"class.llvm::Pass"* %7, i32 0, i32 1
  store %"class.llvm::AnalysisResolver"* null, %"class.llvm::AnalysisResolver"** %9, align 8
  %10 = getelementptr inbounds %"class.llvm::Pass", %"class.llvm::Pass"* %7, i32 0, i32 2
  %11 = load i8*, i8** %6, align 8
  store i8* %11, i8** %10, align 8
  %12 = getelementptr inbounds %"class.llvm::Pass", %"class.llvm::Pass"* %7, i32 0, i32 3
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %12, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4llvm12FunctionPassD2Ev(%"class.llvm::FunctionPass"* noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #2 comdat align 2 {
  %2 = alloca %"class.llvm::FunctionPass"*, align 8
  store %"class.llvm::FunctionPass"* %0, %"class.llvm::FunctionPass"** %2, align 8
  %3 = load %"class.llvm::FunctionPass"*, %"class.llvm::FunctionPass"** %2, align 8
  %4 = bitcast %"class.llvm::FunctionPass"* %3 to %"class.llvm::Pass"*
  call void @_ZN4llvm4PassD2Ev(%"class.llvm::Pass"* noundef nonnull align 8 dereferenceable(28) %4) #3
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4llvm4PassD2Ev(%"class.llvm::Pass"* noundef nonnull align 8 dereferenceable(28)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4llvm13AnalysisUsage15setPreservesAllEv(%"class.llvm::AnalysisUsage"* noundef nonnull align 8 dereferenceable(161) %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::AnalysisUsage"*, align 8
  store %"class.llvm::AnalysisUsage"* %0, %"class.llvm::AnalysisUsage"** %2, align 8
  %3 = load %"class.llvm::AnalysisUsage"*, %"class.llvm::AnalysisUsage"** %2, align 8
  %4 = getelementptr inbounds %"class.llvm::AnalysisUsage", %"class.llvm::AnalysisUsage"* %3, i32 0, i32 4
  store i8 1, i8* %4, align 8
  ret void
}

declare noundef nonnull align 8 dereferenceable(96) %"class.llvm::raw_fd_ostream"* @_ZN4llvm4errsEv() #10

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(60) %"class.llvm::raw_ostream"* @_ZN4llvm11raw_ostreamlsEPKc(%"class.llvm::raw_ostream"* noundef nonnull align 8 dereferenceable(60) %0, i8* noundef %1) #6 comdat align 2 {
  %3 = alloca %"class.llvm::raw_ostream"*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %"class.llvm::StringRef", align 8
  store %"class.llvm::raw_ostream"* %0, %"class.llvm::raw_ostream"** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %"class.llvm::raw_ostream"*, %"class.llvm::raw_ostream"** %3, align 8
  %7 = load i8*, i8** %4, align 8
  call void @_ZN4llvm9StringRefC2EPKc(%"class.llvm::StringRef"* noundef nonnull align 8 dereferenceable(16) %5, i8* noundef %7)
  %8 = bitcast %"class.llvm::StringRef"* %5 to { i8*, i64 }*
  %9 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %8, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = call noundef nonnull align 8 dereferenceable(60) %"class.llvm::raw_ostream"* @_ZN4llvm11raw_ostreamlsENS_9StringRefE(%"class.llvm::raw_ostream"* noundef nonnull align 8 dereferenceable(60) %6, i8* %10, i64 %12)
  ret %"class.llvm::raw_ostream"* %13
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(60) %"class.llvm::raw_ostream"* @_ZN4llvm11raw_ostreamlsENS_9StringRefE(%"class.llvm::raw_ostream"* noundef nonnull align 8 dereferenceable(60) %0, i8* %1, i64 %2) #6 comdat align 2 {
  %4 = alloca %"class.llvm::raw_ostream"*, align 8
  %5 = alloca %"class.llvm::StringRef", align 8
  %6 = alloca %"class.llvm::raw_ostream"*, align 8
  %7 = alloca i64, align 8
  %8 = bitcast %"class.llvm::StringRef"* %5 to { i8*, i64 }*
  %9 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %8, i32 0, i32 0
  store i8* %1, i8** %9, align 8
  %10 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %8, i32 0, i32 1
  store i64 %2, i64* %10, align 8
  store %"class.llvm::raw_ostream"* %0, %"class.llvm::raw_ostream"** %6, align 8
  %11 = load %"class.llvm::raw_ostream"*, %"class.llvm::raw_ostream"** %6, align 8
  %12 = call noundef i64 @_ZNK4llvm9StringRef4sizeEv(%"class.llvm::StringRef"* noundef nonnull align 8 dereferenceable(16) %5)
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = getelementptr inbounds %"class.llvm::raw_ostream", %"class.llvm::raw_ostream"* %11, i32 0, i32 4
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds %"class.llvm::raw_ostream", %"class.llvm::raw_ostream"* %11, i32 0, i32 5
  %17 = load i8*, i8** %16, align 8
  %18 = ptrtoint i8* %15 to i64
  %19 = ptrtoint i8* %17 to i64
  %20 = sub i64 %18, %19
  %21 = icmp ugt i64 %13, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = call noundef i8* @_ZNK4llvm9StringRef4dataEv(%"class.llvm::StringRef"* noundef nonnull align 8 dereferenceable(16) %5)
  %24 = load i64, i64* %7, align 8
  %25 = call noundef nonnull align 8 dereferenceable(60) %"class.llvm::raw_ostream"* @_ZN4llvm11raw_ostream5writeEPKcm(%"class.llvm::raw_ostream"* noundef nonnull align 8 dereferenceable(60) %11, i8* noundef %23, i64 noundef %24)
  store %"class.llvm::raw_ostream"* %25, %"class.llvm::raw_ostream"** %4, align 8
  br label %39

26:                                               ; preds = %3
  %27 = load i64, i64* %7, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = getelementptr inbounds %"class.llvm::raw_ostream", %"class.llvm::raw_ostream"* %11, i32 0, i32 5
  %31 = load i8*, i8** %30, align 8
  %32 = call noundef i8* @_ZNK4llvm9StringRef4dataEv(%"class.llvm::StringRef"* noundef nonnull align 8 dereferenceable(16) %5)
  %33 = load i64, i64* %7, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %31, i8* align 1 %32, i64 %33, i1 false)
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds %"class.llvm::raw_ostream", %"class.llvm::raw_ostream"* %11, i32 0, i32 5
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 %34
  store i8* %37, i8** %35, align 8
  br label %38

38:                                               ; preds = %29, %26
  store %"class.llvm::raw_ostream"* %11, %"class.llvm::raw_ostream"** %4, align 8
  br label %39

39:                                               ; preds = %38, %22
  %40 = load %"class.llvm::raw_ostream"*, %"class.llvm::raw_ostream"** %4, align 8
  ret %"class.llvm::raw_ostream"* %40
}

declare { i8*, i64 } @_ZNK4llvm5Value7getNameEv(%"class.llvm::Value"* noundef nonnull align 8 dereferenceable(24)) #10

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::Module"* @_ZN4llvm11GlobalValue9getParentEv(%"class.llvm::GlobalValue"* noundef nonnull align 8 dereferenceable(48) %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::GlobalValue"*, align 8
  store %"class.llvm::GlobalValue"* %0, %"class.llvm::GlobalValue"** %2, align 8
  %3 = load %"class.llvm::GlobalValue"*, %"class.llvm::GlobalValue"** %2, align 8
  %4 = getelementptr inbounds %"class.llvm::GlobalValue", %"class.llvm::GlobalValue"* %3, i32 0, i32 4
  %5 = load %"class.llvm::Module"*, %"class.llvm::Module"** %4, align 8
  ret %"class.llvm::Module"* %5
}

declare noundef nonnull align 8 dereferenceable(440) %"class.llvm::DataLayout"* @_ZNK4llvm6Module13getDataLayoutEv(%"class.llvm::Module"* noundef nonnull align 8 dereferenceable(800)) #10

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local %"class.llvm::ilist_node_impl.110"* @_ZN4llvm8Function5beginEv(%"class.llvm::Function"* noundef nonnull align 8 dereferenceable(120) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::ilist_iterator", align 8
  %3 = alloca %"class.llvm::Function"*, align 8
  store %"class.llvm::Function"* %0, %"class.llvm::Function"** %3, align 8
  %4 = load %"class.llvm::Function"*, %"class.llvm::Function"** %3, align 8
  %5 = getelementptr inbounds %"class.llvm::Function", %"class.llvm::Function"* %4, i32 0, i32 2
  %6 = bitcast %"class.llvm::SymbolTableList.103"* %5 to %"class.llvm::simple_ilist.107"*
  %7 = call %"class.llvm::ilist_node_impl.110"* @_ZN4llvm12simple_ilistINS_10BasicBlockEJEE5beginEv(%"class.llvm::simple_ilist.107"* noundef nonnull align 8 dereferenceable(16) %6)
  %8 = getelementptr inbounds %"class.llvm::ilist_iterator", %"class.llvm::ilist_iterator"* %2, i32 0, i32 0
  store %"class.llvm::ilist_node_impl.110"* %7, %"class.llvm::ilist_node_impl.110"** %8, align 8
  %9 = getelementptr inbounds %"class.llvm::ilist_iterator", %"class.llvm::ilist_iterator"* %2, i32 0, i32 0
  %10 = load %"class.llvm::ilist_node_impl.110"*, %"class.llvm::ilist_node_impl.110"** %9, align 8
  ret %"class.llvm::ilist_node_impl.110"* %10
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local %"class.llvm::ilist_node_impl.110"* @_ZN4llvm8Function3endEv(%"class.llvm::Function"* noundef nonnull align 8 dereferenceable(120) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::ilist_iterator", align 8
  %3 = alloca %"class.llvm::Function"*, align 8
  store %"class.llvm::Function"* %0, %"class.llvm::Function"** %3, align 8
  %4 = load %"class.llvm::Function"*, %"class.llvm::Function"** %3, align 8
  %5 = getelementptr inbounds %"class.llvm::Function", %"class.llvm::Function"* %4, i32 0, i32 2
  %6 = bitcast %"class.llvm::SymbolTableList.103"* %5 to %"class.llvm::simple_ilist.107"*
  %7 = call %"class.llvm::ilist_node_impl.110"* @_ZN4llvm12simple_ilistINS_10BasicBlockEJEE3endEv(%"class.llvm::simple_ilist.107"* noundef nonnull align 8 dereferenceable(16) %6)
  %8 = getelementptr inbounds %"class.llvm::ilist_iterator", %"class.llvm::ilist_iterator"* %2, i32 0, i32 0
  store %"class.llvm::ilist_node_impl.110"* %7, %"class.llvm::ilist_node_impl.110"** %8, align 8
  %9 = getelementptr inbounds %"class.llvm::ilist_iterator", %"class.llvm::ilist_iterator"* %2, i32 0, i32 0
  %10 = load %"class.llvm::ilist_node_impl.110"*, %"class.llvm::ilist_node_impl.110"** %9, align 8
  ret %"class.llvm::ilist_node_impl.110"* %10
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvmneERKNS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_10BasicBlockELb0ELb0EvEELb0ELb0EEES7_(%"class.llvm::ilist_iterator"* noundef nonnull align 8 dereferenceable(8) %0, %"class.llvm::ilist_iterator"* noundef nonnull align 8 dereferenceable(8) %1) #4 comdat {
  %3 = alloca %"class.llvm::ilist_iterator"*, align 8
  %4 = alloca %"class.llvm::ilist_iterator"*, align 8
  store %"class.llvm::ilist_iterator"* %0, %"class.llvm::ilist_iterator"** %3, align 8
  store %"class.llvm::ilist_iterator"* %1, %"class.llvm::ilist_iterator"** %4, align 8
  %5 = load %"class.llvm::ilist_iterator"*, %"class.llvm::ilist_iterator"** %3, align 8
  %6 = getelementptr inbounds %"class.llvm::ilist_iterator", %"class.llvm::ilist_iterator"* %5, i32 0, i32 0
  %7 = load %"class.llvm::ilist_node_impl.110"*, %"class.llvm::ilist_node_impl.110"** %6, align 8
  %8 = load %"class.llvm::ilist_iterator"*, %"class.llvm::ilist_iterator"** %4, align 8
  %9 = getelementptr inbounds %"class.llvm::ilist_iterator", %"class.llvm::ilist_iterator"* %8, i32 0, i32 0
  %10 = load %"class.llvm::ilist_node_impl.110"*, %"class.llvm::ilist_node_impl.110"** %9, align 8
  %11 = icmp ne %"class.llvm::ilist_node_impl.110"* %7, %10
  ret i1 %11
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(64) %"class.llvm::BasicBlock"* @_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_10BasicBlockELb0ELb0EvEELb0ELb0EEdeEv(%"class.llvm::ilist_iterator"* noundef nonnull align 8 dereferenceable(8) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::ilist_iterator"*, align 8
  store %"class.llvm::ilist_iterator"* %0, %"class.llvm::ilist_iterator"** %2, align 8
  %3 = load %"class.llvm::ilist_iterator"*, %"class.llvm::ilist_iterator"** %2, align 8
  %4 = getelementptr inbounds %"class.llvm::ilist_iterator", %"class.llvm::ilist_iterator"* %3, i32 0, i32 0
  %5 = load %"class.llvm::ilist_node_impl.110"*, %"class.llvm::ilist_node_impl.110"** %4, align 8
  %6 = bitcast %"class.llvm::ilist_node_impl.110"* %5 to %"class.llvm::ilist_node_base"*
  %7 = call noundef zeroext i1 @_ZNK4llvm15ilist_node_baseILb0EE15isKnownSentinelEv(%"class.llvm::ilist_node_base"* noundef nonnull align 8 dereferenceable(16) %6)
  %8 = xor i1 %7, true
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %12

10:                                               ; preds = %1
  call void @__assert_fail(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i32 noundef 138, i8* noundef getelementptr inbounds ([278 x i8], [278 x i8]* @__PRETTY_FUNCTION__._ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_10BasicBlockELb0ELb0EvEELb0ELb0EEdeEv, i64 0, i64 0)) #15
  unreachable

11:                                               ; No predecessors!
  br label %12

12:                                               ; preds = %11, %9
  %13 = getelementptr inbounds %"class.llvm::ilist_iterator", %"class.llvm::ilist_iterator"* %3, i32 0, i32 0
  %14 = load %"class.llvm::ilist_node_impl.110"*, %"class.llvm::ilist_node_impl.110"** %13, align 8
  %15 = call noundef %"class.llvm::BasicBlock"* @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsINS_10BasicBlockELb0ELb0EvEEE11getValuePtrEPNS_15ilist_node_implIS4_EE(%"class.llvm::ilist_node_impl.110"* noundef %14)
  ret %"class.llvm::BasicBlock"* %15
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local %"class.llvm::ilist_node_impl.122"* @_ZN4llvm10BasicBlock5beginEv(%"class.llvm::BasicBlock"* noundef nonnull align 8 dereferenceable(64) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::ilist_iterator.123", align 8
  %3 = alloca %"class.llvm::BasicBlock"*, align 8
  store %"class.llvm::BasicBlock"* %0, %"class.llvm::BasicBlock"** %3, align 8
  %4 = load %"class.llvm::BasicBlock"*, %"class.llvm::BasicBlock"** %3, align 8
  %5 = getelementptr inbounds %"class.llvm::BasicBlock", %"class.llvm::BasicBlock"* %4, i32 0, i32 2
  %6 = bitcast %"class.llvm::SymbolTableList.115"* %5 to %"class.llvm::simple_ilist.119"*
  %7 = call %"class.llvm::ilist_node_impl.122"* @_ZN4llvm12simple_ilistINS_11InstructionEJEE5beginEv(%"class.llvm::simple_ilist.119"* noundef nonnull align 8 dereferenceable(16) %6)
  %8 = getelementptr inbounds %"class.llvm::ilist_iterator.123", %"class.llvm::ilist_iterator.123"* %2, i32 0, i32 0
  store %"class.llvm::ilist_node_impl.122"* %7, %"class.llvm::ilist_node_impl.122"** %8, align 8
  %9 = getelementptr inbounds %"class.llvm::ilist_iterator.123", %"class.llvm::ilist_iterator.123"* %2, i32 0, i32 0
  %10 = load %"class.llvm::ilist_node_impl.122"*, %"class.llvm::ilist_node_impl.122"** %9, align 8
  ret %"class.llvm::ilist_node_impl.122"* %10
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local %"class.llvm::ilist_node_impl.122"* @_ZN4llvm10BasicBlock3endEv(%"class.llvm::BasicBlock"* noundef nonnull align 8 dereferenceable(64) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::ilist_iterator.123", align 8
  %3 = alloca %"class.llvm::BasicBlock"*, align 8
  store %"class.llvm::BasicBlock"* %0, %"class.llvm::BasicBlock"** %3, align 8
  %4 = load %"class.llvm::BasicBlock"*, %"class.llvm::BasicBlock"** %3, align 8
  %5 = getelementptr inbounds %"class.llvm::BasicBlock", %"class.llvm::BasicBlock"* %4, i32 0, i32 2
  %6 = bitcast %"class.llvm::SymbolTableList.115"* %5 to %"class.llvm::simple_ilist.119"*
  %7 = call %"class.llvm::ilist_node_impl.122"* @_ZN4llvm12simple_ilistINS_11InstructionEJEE3endEv(%"class.llvm::simple_ilist.119"* noundef nonnull align 8 dereferenceable(16) %6)
  %8 = getelementptr inbounds %"class.llvm::ilist_iterator.123", %"class.llvm::ilist_iterator.123"* %2, i32 0, i32 0
  store %"class.llvm::ilist_node_impl.122"* %7, %"class.llvm::ilist_node_impl.122"** %8, align 8
  %9 = getelementptr inbounds %"class.llvm::ilist_iterator.123", %"class.llvm::ilist_iterator.123"* %2, i32 0, i32 0
  %10 = load %"class.llvm::ilist_node_impl.122"*, %"class.llvm::ilist_node_impl.122"** %9, align 8
  ret %"class.llvm::ilist_node_impl.122"* %10
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvmneERKNS_14ilist_iteratorINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvEELb0ELb0EEES7_(%"class.llvm::ilist_iterator.123"* noundef nonnull align 8 dereferenceable(8) %0, %"class.llvm::ilist_iterator.123"* noundef nonnull align 8 dereferenceable(8) %1) #4 comdat {
  %3 = alloca %"class.llvm::ilist_iterator.123"*, align 8
  %4 = alloca %"class.llvm::ilist_iterator.123"*, align 8
  store %"class.llvm::ilist_iterator.123"* %0, %"class.llvm::ilist_iterator.123"** %3, align 8
  store %"class.llvm::ilist_iterator.123"* %1, %"class.llvm::ilist_iterator.123"** %4, align 8
  %5 = load %"class.llvm::ilist_iterator.123"*, %"class.llvm::ilist_iterator.123"** %3, align 8
  %6 = getelementptr inbounds %"class.llvm::ilist_iterator.123", %"class.llvm::ilist_iterator.123"* %5, i32 0, i32 0
  %7 = load %"class.llvm::ilist_node_impl.122"*, %"class.llvm::ilist_node_impl.122"** %6, align 8
  %8 = load %"class.llvm::ilist_iterator.123"*, %"class.llvm::ilist_iterator.123"** %4, align 8
  %9 = getelementptr inbounds %"class.llvm::ilist_iterator.123", %"class.llvm::ilist_iterator.123"* %8, i32 0, i32 0
  %10 = load %"class.llvm::ilist_node_impl.122"*, %"class.llvm::ilist_node_impl.122"** %9, align 8
  %11 = icmp ne %"class.llvm::ilist_node_impl.122"* %7, %10
  ret i1 %11
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(60) %"class.llvm::Instruction"* @_ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvEELb0ELb0EEdeEv(%"class.llvm::ilist_iterator.123"* noundef nonnull align 8 dereferenceable(8) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::ilist_iterator.123"*, align 8
  store %"class.llvm::ilist_iterator.123"* %0, %"class.llvm::ilist_iterator.123"** %2, align 8
  %3 = load %"class.llvm::ilist_iterator.123"*, %"class.llvm::ilist_iterator.123"** %2, align 8
  %4 = getelementptr inbounds %"class.llvm::ilist_iterator.123", %"class.llvm::ilist_iterator.123"* %3, i32 0, i32 0
  %5 = load %"class.llvm::ilist_node_impl.122"*, %"class.llvm::ilist_node_impl.122"** %4, align 8
  %6 = bitcast %"class.llvm::ilist_node_impl.122"* %5 to %"class.llvm::ilist_node_base"*
  %7 = call noundef zeroext i1 @_ZNK4llvm15ilist_node_baseILb0EE15isKnownSentinelEv(%"class.llvm::ilist_node_base"* noundef nonnull align 8 dereferenceable(16) %6)
  %8 = xor i1 %7, true
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %12

10:                                               ; preds = %1
  call void @__assert_fail(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i32 noundef 138, i8* noundef getelementptr inbounds ([280 x i8], [280 x i8]* @__PRETTY_FUNCTION__._ZNK4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvEELb0ELb0EEdeEv, i64 0, i64 0)) #15
  unreachable

11:                                               ; No predecessors!
  br label %12

12:                                               ; preds = %11, %9
  %13 = getelementptr inbounds %"class.llvm::ilist_iterator.123", %"class.llvm::ilist_iterator.123"* %3, i32 0, i32 0
  %14 = load %"class.llvm::ilist_node_impl.122"*, %"class.llvm::ilist_node_impl.122"** %13, align 8
  %15 = call noundef %"class.llvm::Instruction"* @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsINS_11InstructionELb0ELb0EvEEE11getValuePtrEPNS_15ilist_node_implIS4_EE(%"class.llvm::ilist_node_impl.122"* noundef %14)
  ret %"class.llvm::Instruction"* %15
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::AllocaInst"* @_ZN4llvm8dyn_castINS_10AllocaInstENS_11InstructionEEENS_10cast_rettyIT_PT0_E8ret_typeES6_(%"class.llvm::Instruction"* noundef %0) #6 comdat {
  %2 = alloca %"class.llvm::Instruction"*, align 8
  store %"class.llvm::Instruction"* %0, %"class.llvm::Instruction"** %2, align 8
  %3 = call noundef zeroext i1 @_ZN4llvm3isaINS_10AllocaInstEPNS_11InstructionEEEbRKT0_(%"class.llvm::Instruction"** noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = load %"class.llvm::Instruction"*, %"class.llvm::Instruction"** %2, align 8
  %6 = call noundef %"class.llvm::AllocaInst"* @_ZN4llvm4castINS_10AllocaInstENS_11InstructionEEENS_10cast_rettyIT_PT0_E8ret_typeES6_(%"class.llvm::Instruction"* noundef %5)
  br label %8

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %7, %4
  %9 = phi %"class.llvm::AllocaInst"* [ %6, %4 ], [ null, %7 ]
  ret %"class.llvm::AllocaInst"* %9
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::Type"* @_ZNK4llvm10AllocaInst16getAllocatedTypeEv(%"class.llvm::AllocaInst"* noundef nonnull align 8 dereferenceable(72) %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::AllocaInst"*, align 8
  store %"class.llvm::AllocaInst"* %0, %"class.llvm::AllocaInst"** %2, align 8
  %3 = load %"class.llvm::AllocaInst"*, %"class.llvm::AllocaInst"** %2, align 8
  %4 = getelementptr inbounds %"class.llvm::AllocaInst", %"class.llvm::AllocaInst"* %3, i32 0, i32 1
  %5 = load %"class.llvm::Type"*, %"class.llvm::Type"** %4, align 8
  ret %"class.llvm::Type"* %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local { i64, i32 } @_ZNK4llvm10DataLayout16getTypeAllocSizeEPNS_4TypeE(%"class.llvm::DataLayout"* noundef nonnull align 8 dereferenceable(440) %0, %"class.llvm::Type"* noundef %1) #6 comdat align 2 {
  %3 = alloca %"class.llvm::TypeSize", align 8
  %4 = alloca %"class.llvm::DataLayout"*, align 8
  %5 = alloca %"class.llvm::Type"*, align 8
  %6 = alloca %"class.llvm::TypeSize", align 8
  store %"class.llvm::DataLayout"* %0, %"class.llvm::DataLayout"** %4, align 8
  store %"class.llvm::Type"* %1, %"class.llvm::Type"** %5, align 8
  %7 = load %"class.llvm::DataLayout"*, %"class.llvm::DataLayout"** %4, align 8
  %8 = load %"class.llvm::Type"*, %"class.llvm::Type"** %5, align 8
  %9 = call { i64, i32 } @_ZNK4llvm10DataLayout16getTypeStoreSizeEPNS_4TypeE(%"class.llvm::DataLayout"* noundef nonnull align 8 dereferenceable(440) %7, %"class.llvm::Type"* noundef %8)
  %10 = bitcast %"class.llvm::TypeSize"* %6 to { i64, i32 }*
  %11 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 0
  %12 = extractvalue { i64, i32 } %9, 0
  store i64 %12, i64* %11, align 8
  %13 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 1
  %14 = extractvalue { i64, i32 } %9, 1
  store i32 %14, i32* %13, align 8
  %15 = load %"class.llvm::Type"*, %"class.llvm::Type"** %5, align 8
  %16 = call noundef i64 @_ZNK4llvm10DataLayout19getABITypeAlignmentEPNS_4TypeE(%"class.llvm::DataLayout"* noundef nonnull align 8 dereferenceable(440) %7, %"class.llvm::Type"* noundef %15)
  %17 = bitcast %"class.llvm::TypeSize"* %6 to { i64, i32 }*
  %18 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call { i64, i32 } @_ZN4llvm7alignToENS_8TypeSizeEm(i64 %19, i32 %21, i64 noundef %16)
  %23 = bitcast %"class.llvm::TypeSize"* %3 to { i64, i32 }*
  %24 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %23, i32 0, i32 0
  %25 = extractvalue { i64, i32 } %22, 0
  store i64 %25, i64* %24, align 8
  %26 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %23, i32 0, i32 1
  %27 = extractvalue { i64, i32 } %22, 1
  store i32 %27, i32* %26, align 8
  %28 = bitcast %"class.llvm::TypeSize"* %3 to { i64, i32 }*
  %29 = load { i64, i32 }, { i64, i32 }* %28, align 8
  ret { i64, i32 } %29
}

declare noundef i64 @_ZNK4llvm8TypeSizecvmEv(%"class.llvm::TypeSize"* noundef nonnull align 8 dereferenceable(12)) #10

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::CallInst"* @_ZN4llvm8dyn_castINS_8CallInstENS_11InstructionEEENS_10cast_rettyIT_PT0_E8ret_typeES6_(%"class.llvm::Instruction"* noundef %0) #6 comdat {
  %2 = alloca %"class.llvm::Instruction"*, align 8
  store %"class.llvm::Instruction"* %0, %"class.llvm::Instruction"** %2, align 8
  %3 = call noundef zeroext i1 @_ZN4llvm3isaINS_8CallInstEPNS_11InstructionEEEbRKT0_(%"class.llvm::Instruction"** noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = load %"class.llvm::Instruction"*, %"class.llvm::Instruction"** %2, align 8
  %6 = call noundef %"class.llvm::CallInst"* @_ZN4llvm4castINS_8CallInstENS_11InstructionEEENS_10cast_rettyIT_PT0_E8ret_typeES6_(%"class.llvm::Instruction"* noundef %5)
  br label %8

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %7, %4
  %9 = phi %"class.llvm::CallInst"* [ %6, %4 ], [ null, %7 ]
  ret %"class.llvm::CallInst"* %9
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::Function"* @_ZNK4llvm8CallBase17getCalledFunctionEv(%"class.llvm::CallBase"* noundef nonnull align 8 dereferenceable(80) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::Function"*, align 8
  %3 = alloca %"class.llvm::CallBase"*, align 8
  %4 = alloca %"class.llvm::Function"*, align 8
  store %"class.llvm::CallBase"* %0, %"class.llvm::CallBase"** %3, align 8
  %5 = load %"class.llvm::CallBase"*, %"class.llvm::CallBase"** %3, align 8
  %6 = call noundef %"class.llvm::Value"* @_ZNK4llvm8CallBase16getCalledOperandEv(%"class.llvm::CallBase"* noundef nonnull align 8 dereferenceable(80) %5)
  %7 = call noundef %"class.llvm::Function"* @_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEENS_10cast_rettyIT_PT0_E8ret_typeES6_(%"class.llvm::Value"* noundef %6)
  store %"class.llvm::Function"* %7, %"class.llvm::Function"** %4, align 8
  %8 = load %"class.llvm::Function"*, %"class.llvm::Function"** %4, align 8
  %9 = icmp ne %"class.llvm::Function"* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %"class.llvm::Function"*, %"class.llvm::Function"** %4, align 8
  %12 = bitcast %"class.llvm::Function"* %11 to %"class.llvm::GlobalValue"*
  %13 = call noundef %"class.llvm::Type"* @_ZNK4llvm11GlobalValue12getValueTypeEv(%"class.llvm::GlobalValue"* noundef nonnull align 8 dereferenceable(48) %12)
  %14 = call noundef %"class.llvm::FunctionType"* @_ZNK4llvm8CallBase15getFunctionTypeEv(%"class.llvm::CallBase"* noundef nonnull align 8 dereferenceable(80) %5)
  %15 = bitcast %"class.llvm::FunctionType"* %14 to %"class.llvm::Type"*
  %16 = icmp eq %"class.llvm::Type"* %13, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = load %"class.llvm::Function"*, %"class.llvm::Function"** %4, align 8
  store %"class.llvm::Function"* %18, %"class.llvm::Function"** %2, align 8
  br label %21

19:                                               ; preds = %10
  br label %20

20:                                               ; preds = %19, %1
  store %"class.llvm::Function"* null, %"class.llvm::Function"** %2, align 8
  br label %21

21:                                               ; preds = %20, %17
  %22 = load %"class.llvm::Function"*, %"class.llvm::Function"** %2, align 8
  ret %"class.llvm::Function"* %22
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK4llvm9StringRef10startswithES0_(%"class.llvm::StringRef"* noundef nonnull align 8 dereferenceable(16) %0, i8* %1, i64 %2) #6 comdat align 2 {
  %4 = alloca %"class.llvm::StringRef", align 8
  %5 = alloca %"class.llvm::StringRef"*, align 8
  %6 = bitcast %"class.llvm::StringRef"* %4 to { i8*, i64 }*
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %6, i32 0, i32 0
  store i8* %1, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %6, i32 0, i32 1
  store i64 %2, i64* %8, align 8
  store %"class.llvm::StringRef"* %0, %"class.llvm::StringRef"** %5, align 8
  %9 = load %"class.llvm::StringRef"*, %"class.llvm::StringRef"** %5, align 8
  %10 = getelementptr inbounds %"class.llvm::StringRef", %"class.llvm::StringRef"* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %"class.llvm::StringRef", %"class.llvm::StringRef"* %4, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp uge i64 %11, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %3
  %16 = getelementptr inbounds %"class.llvm::StringRef", %"class.llvm::StringRef"* %9, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds %"class.llvm::StringRef", %"class.llvm::StringRef"* %4, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds %"class.llvm::StringRef", %"class.llvm::StringRef"* %4, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call noundef i32 @_ZN4llvm9StringRef13compareMemoryEPKcS2_m(i8* noundef %17, i8* noundef %19, i64 noundef %21)
  %23 = icmp eq i32 %22, 0
  br label %24

24:                                               ; preds = %15, %3
  %25 = phi i1 [ false, %3 ], [ %23, %15 ]
  ret i1 %25
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::Value"* @_ZNK4llvm8CallBase10getOperandEj(%"class.llvm::CallBase"* noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1) #6 comdat align 2 {
  %3 = alloca %"class.llvm::CallBase"*, align 8
  %4 = alloca i32, align 4
  store %"class.llvm::CallBase"* %0, %"class.llvm::CallBase"** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %"class.llvm::CallBase"*, %"class.llvm::CallBase"** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = bitcast %"class.llvm::CallBase"* %5 to %"class.llvm::User"*
  %8 = call noundef i32 @_ZN4llvm21VariadicOperandTraitsINS_8CallBaseELj1EE8operandsEPKNS_4UserE(%"class.llvm::User"* noundef %7)
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %10, %2
  %12 = phi i1 [ false, %2 ], [ true, %10 ]
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  br label %16

14:                                               ; preds = %11
  call void @__assert_fail(i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.32, i64 0, i64 0), i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.33, i64 0, i64 0), i32 noundef 2336, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @__PRETTY_FUNCTION__._ZNK4llvm8CallBase10getOperandEj, i64 0, i64 0)) #15
  unreachable

15:                                               ; No predecessors!
  br label %16

16:                                               ; preds = %15, %13
  %17 = call noundef %"class.llvm::Use"* @_ZN4llvm21VariadicOperandTraitsINS_8CallBaseELj1EE8op_beginEPS1_(%"class.llvm::CallBase"* noundef %5)
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %"class.llvm::Use", %"class.llvm::Use"* %17, i64 %19
  %21 = call noundef %"class.llvm::Value"* @_ZNK4llvm3Use3getEv(%"class.llvm::Use"* noundef nonnull align 8 dereferenceable(32) %20)
  %22 = call noundef %"class.llvm::Value"* @_ZN4llvm12cast_or_nullINS_5ValueES1_EENS_10cast_rettyIT_PT0_E8ret_typeES5_(%"class.llvm::Value"* noundef %21)
  ret %"class.llvm::Value"* %22
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::Instruction"* @_ZN4llvm8dyn_castINS_11InstructionENS_5ValueEEENS_10cast_rettyIT_PT0_E8ret_typeES6_(%"class.llvm::Value"* noundef %0) #6 comdat {
  %2 = alloca %"class.llvm::Value"*, align 8
  store %"class.llvm::Value"* %0, %"class.llvm::Value"** %2, align 8
  %3 = call noundef zeroext i1 @_ZN4llvm3isaINS_11InstructionEPNS_5ValueEEEbRKT0_(%"class.llvm::Value"** noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = load %"class.llvm::Value"*, %"class.llvm::Value"** %2, align 8
  %6 = call noundef %"class.llvm::Instruction"* @_ZN4llvm4castINS_11InstructionENS_5ValueEEENS_10cast_rettyIT_PT0_E8ret_typeES6_(%"class.llvm::Value"* noundef %5)
  br label %8

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %7, %4
  %9 = phi %"class.llvm::Instruction"* [ %6, %4 ], [ null, %7 ]
  ret %"class.llvm::Instruction"* %9
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"class.llvm::ilist_iterator.123"* @_ZN4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvEELb0ELb0EEppEv(%"class.llvm::ilist_iterator.123"* noundef nonnull align 8 dereferenceable(8) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::ilist_iterator.123"*, align 8
  store %"class.llvm::ilist_iterator.123"* %0, %"class.llvm::ilist_iterator.123"** %2, align 8
  %3 = load %"class.llvm::ilist_iterator.123"*, %"class.llvm::ilist_iterator.123"** %2, align 8
  %4 = getelementptr inbounds %"class.llvm::ilist_iterator.123", %"class.llvm::ilist_iterator.123"* %3, i32 0, i32 0
  %5 = load %"class.llvm::ilist_node_impl.122"*, %"class.llvm::ilist_node_impl.122"** %4, align 8
  %6 = call noundef %"class.llvm::ilist_node_impl.122"* @_ZN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvEEE7getNextEv(%"class.llvm::ilist_node_impl.122"* noundef nonnull align 8 dereferenceable(16) %5)
  %7 = getelementptr inbounds %"class.llvm::ilist_iterator.123", %"class.llvm::ilist_iterator.123"* %3, i32 0, i32 0
  store %"class.llvm::ilist_node_impl.122"* %6, %"class.llvm::ilist_node_impl.122"** %7, align 8
  ret %"class.llvm::ilist_iterator.123"* %3
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"class.llvm::ilist_iterator"* @_ZN4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_10BasicBlockELb0ELb0EvEELb0ELb0EEppEv(%"class.llvm::ilist_iterator"* noundef nonnull align 8 dereferenceable(8) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::ilist_iterator"*, align 8
  store %"class.llvm::ilist_iterator"* %0, %"class.llvm::ilist_iterator"** %2, align 8
  %3 = load %"class.llvm::ilist_iterator"*, %"class.llvm::ilist_iterator"** %2, align 8
  %4 = getelementptr inbounds %"class.llvm::ilist_iterator", %"class.llvm::ilist_iterator"* %3, i32 0, i32 0
  %5 = load %"class.llvm::ilist_node_impl.110"*, %"class.llvm::ilist_node_impl.110"** %4, align 8
  %6 = call noundef %"class.llvm::ilist_node_impl.110"* @_ZN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_10BasicBlockELb0ELb0EvEEE7getNextEv(%"class.llvm::ilist_node_impl.110"* noundef nonnull align 8 dereferenceable(16) %5)
  %7 = getelementptr inbounds %"class.llvm::ilist_iterator", %"class.llvm::ilist_iterator"* %3, i32 0, i32 0
  store %"class.llvm::ilist_node_impl.110"* %6, %"class.llvm::ilist_node_impl.110"** %7, align 8
  ret %"class.llvm::ilist_iterator"* %3
}

declare noundef nonnull align 8 dereferenceable(60) %"class.llvm::raw_ostream"* @_ZN4llvm11raw_ostreamlsEy(%"class.llvm::raw_ostream"* noundef nonnull align 8 dereferenceable(60), i64 noundef) #10

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNK4llvm9StringRef4sizeEv(%"class.llvm::StringRef"* noundef nonnull align 8 dereferenceable(16) %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::StringRef"*, align 8
  store %"class.llvm::StringRef"* %0, %"class.llvm::StringRef"** %2, align 8
  %3 = load %"class.llvm::StringRef"*, %"class.llvm::StringRef"** %2, align 8
  %4 = getelementptr inbounds %"class.llvm::StringRef", %"class.llvm::StringRef"* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

declare noundef nonnull align 8 dereferenceable(60) %"class.llvm::raw_ostream"* @_ZN4llvm11raw_ostream5writeEPKcm(%"class.llvm::raw_ostream"* noundef nonnull align 8 dereferenceable(60), i8* noundef, i64 noundef) #10

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i8* @_ZNK4llvm9StringRef4dataEv(%"class.llvm::StringRef"* noundef nonnull align 8 dereferenceable(16) %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::StringRef"*, align 8
  store %"class.llvm::StringRef"* %0, %"class.llvm::StringRef"** %2, align 8
  %3 = load %"class.llvm::StringRef"*, %"class.llvm::StringRef"** %2, align 8
  %4 = getelementptr inbounds %"class.llvm::StringRef", %"class.llvm::StringRef"* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  ret i8* %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local %"class.llvm::ilist_node_impl.110"* @_ZN4llvm12simple_ilistINS_10BasicBlockEJEE5beginEv(%"class.llvm::simple_ilist.107"* noundef nonnull align 8 dereferenceable(16) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::ilist_iterator", align 8
  %3 = alloca %"class.llvm::simple_ilist.107"*, align 8
  %4 = alloca %"class.llvm::ilist_iterator", align 8
  store %"class.llvm::simple_ilist.107"* %0, %"class.llvm::simple_ilist.107"** %3, align 8
  %5 = load %"class.llvm::simple_ilist.107"*, %"class.llvm::simple_ilist.107"** %3, align 8
  %6 = getelementptr inbounds %"class.llvm::simple_ilist.107", %"class.llvm::simple_ilist.107"* %5, i32 0, i32 0
  %7 = bitcast %"class.llvm::ilist_sentinel.109"* %6 to %"class.llvm::ilist_node_impl.110"*
  call void @_ZN4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_10BasicBlockELb0ELb0EvEELb0ELb0EEC2ERNS_15ilist_node_implIS4_EE(%"class.llvm::ilist_iterator"* noundef nonnull align 8 dereferenceable(8) %4, %"class.llvm::ilist_node_impl.110"* noundef nonnull align 8 dereferenceable(16) %7)
  %8 = call noundef nonnull align 8 dereferenceable(8) %"class.llvm::ilist_iterator"* @_ZN4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_10BasicBlockELb0ELb0EvEELb0ELb0EEppEv(%"class.llvm::ilist_iterator"* noundef nonnull align 8 dereferenceable(8) %4)
  %9 = bitcast %"class.llvm::ilist_iterator"* %2 to i8*
  %10 = bitcast %"class.llvm::ilist_iterator"* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 8, i1 false)
  %11 = getelementptr inbounds %"class.llvm::ilist_iterator", %"class.llvm::ilist_iterator"* %2, i32 0, i32 0
  %12 = load %"class.llvm::ilist_node_impl.110"*, %"class.llvm::ilist_node_impl.110"** %11, align 8
  ret %"class.llvm::ilist_node_impl.110"* %12
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_10BasicBlockELb0ELb0EvEELb0ELb0EEC2ERNS_15ilist_node_implIS4_EE(%"class.llvm::ilist_iterator"* noundef nonnull align 8 dereferenceable(8) %0, %"class.llvm::ilist_node_impl.110"* noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 {
  %3 = alloca %"class.llvm::ilist_iterator"*, align 8
  %4 = alloca %"class.llvm::ilist_node_impl.110"*, align 8
  store %"class.llvm::ilist_iterator"* %0, %"class.llvm::ilist_iterator"** %3, align 8
  store %"class.llvm::ilist_node_impl.110"* %1, %"class.llvm::ilist_node_impl.110"** %4, align 8
  %5 = load %"class.llvm::ilist_iterator"*, %"class.llvm::ilist_iterator"** %3, align 8
  %6 = bitcast %"class.llvm::ilist_iterator"* %5 to %"struct.llvm::ilist_detail::SpecificNodeAccess.108"*
  %7 = getelementptr inbounds %"class.llvm::ilist_iterator", %"class.llvm::ilist_iterator"* %5, i32 0, i32 0
  %8 = load %"class.llvm::ilist_node_impl.110"*, %"class.llvm::ilist_node_impl.110"** %4, align 8
  store %"class.llvm::ilist_node_impl.110"* %8, %"class.llvm::ilist_node_impl.110"** %7, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local %"class.llvm::ilist_node_impl.110"* @_ZN4llvm12simple_ilistINS_10BasicBlockEJEE3endEv(%"class.llvm::simple_ilist.107"* noundef nonnull align 8 dereferenceable(16) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::ilist_iterator", align 8
  %3 = alloca %"class.llvm::simple_ilist.107"*, align 8
  store %"class.llvm::simple_ilist.107"* %0, %"class.llvm::simple_ilist.107"** %3, align 8
  %4 = load %"class.llvm::simple_ilist.107"*, %"class.llvm::simple_ilist.107"** %3, align 8
  %5 = getelementptr inbounds %"class.llvm::simple_ilist.107", %"class.llvm::simple_ilist.107"* %4, i32 0, i32 0
  %6 = bitcast %"class.llvm::ilist_sentinel.109"* %5 to %"class.llvm::ilist_node_impl.110"*
  call void @_ZN4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_10BasicBlockELb0ELb0EvEELb0ELb0EEC2ERNS_15ilist_node_implIS4_EE(%"class.llvm::ilist_iterator"* noundef nonnull align 8 dereferenceable(8) %2, %"class.llvm::ilist_node_impl.110"* noundef nonnull align 8 dereferenceable(16) %6)
  %7 = getelementptr inbounds %"class.llvm::ilist_iterator", %"class.llvm::ilist_iterator"* %2, i32 0, i32 0
  %8 = load %"class.llvm::ilist_node_impl.110"*, %"class.llvm::ilist_node_impl.110"** %7, align 8
  ret %"class.llvm::ilist_node_impl.110"* %8
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK4llvm15ilist_node_baseILb0EE15isKnownSentinelEv(%"class.llvm::ilist_node_base"* noundef nonnull align 8 dereferenceable(16) %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::ilist_node_base"*, align 8
  store %"class.llvm::ilist_node_base"* %0, %"class.llvm::ilist_node_base"** %2, align 8
  %3 = load %"class.llvm::ilist_node_base"*, %"class.llvm::ilist_node_base"** %2, align 8
  ret i1 false
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #12

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::BasicBlock"* @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsINS_10BasicBlockELb0ELb0EvEEE11getValuePtrEPNS_15ilist_node_implIS4_EE(%"class.llvm::ilist_node_impl.110"* noundef %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::ilist_node_impl.110"*, align 8
  store %"class.llvm::ilist_node_impl.110"* %0, %"class.llvm::ilist_node_impl.110"** %2, align 8
  %3 = load %"class.llvm::ilist_node_impl.110"*, %"class.llvm::ilist_node_impl.110"** %2, align 8
  %4 = call noundef %"class.llvm::BasicBlock"* @_ZN4llvm12ilist_detail10NodeAccess11getValuePtrINS0_12node_optionsINS_10BasicBlockELb0ELb0EvEEEENT_7pointerEPNS_15ilist_node_implIS6_EE(%"class.llvm::ilist_node_impl.110"* noundef %3)
  ret %"class.llvm::BasicBlock"* %4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::BasicBlock"* @_ZN4llvm12ilist_detail10NodeAccess11getValuePtrINS0_12node_optionsINS_10BasicBlockELb0ELb0EvEEEENT_7pointerEPNS_15ilist_node_implIS6_EE(%"class.llvm::ilist_node_impl.110"* noundef %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::ilist_node_impl.110"*, align 8
  store %"class.llvm::ilist_node_impl.110"* %0, %"class.llvm::ilist_node_impl.110"** %2, align 8
  %3 = load %"class.llvm::ilist_node_impl.110"*, %"class.llvm::ilist_node_impl.110"** %2, align 8
  %4 = icmp eq %"class.llvm::ilist_node_impl.110"* %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = bitcast %"class.llvm::ilist_node_impl.110"* %3 to i8*
  %7 = getelementptr inbounds i8, i8* %6, i64 -24
  %8 = bitcast i8* %7 to %"class.llvm::BasicBlock"*
  br label %10

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %9, %5
  %11 = phi %"class.llvm::BasicBlock"* [ %8, %5 ], [ null, %9 ]
  ret %"class.llvm::BasicBlock"* %11
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local %"class.llvm::ilist_node_impl.122"* @_ZN4llvm12simple_ilistINS_11InstructionEJEE5beginEv(%"class.llvm::simple_ilist.119"* noundef nonnull align 8 dereferenceable(16) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::ilist_iterator.123", align 8
  %3 = alloca %"class.llvm::simple_ilist.119"*, align 8
  %4 = alloca %"class.llvm::ilist_iterator.123", align 8
  store %"class.llvm::simple_ilist.119"* %0, %"class.llvm::simple_ilist.119"** %3, align 8
  %5 = load %"class.llvm::simple_ilist.119"*, %"class.llvm::simple_ilist.119"** %3, align 8
  %6 = getelementptr inbounds %"class.llvm::simple_ilist.119", %"class.llvm::simple_ilist.119"* %5, i32 0, i32 0
  %7 = bitcast %"class.llvm::ilist_sentinel.121"* %6 to %"class.llvm::ilist_node_impl.122"*
  call void @_ZN4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvEELb0ELb0EEC2ERNS_15ilist_node_implIS4_EE(%"class.llvm::ilist_iterator.123"* noundef nonnull align 8 dereferenceable(8) %4, %"class.llvm::ilist_node_impl.122"* noundef nonnull align 8 dereferenceable(16) %7)
  %8 = call noundef nonnull align 8 dereferenceable(8) %"class.llvm::ilist_iterator.123"* @_ZN4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvEELb0ELb0EEppEv(%"class.llvm::ilist_iterator.123"* noundef nonnull align 8 dereferenceable(8) %4)
  %9 = bitcast %"class.llvm::ilist_iterator.123"* %2 to i8*
  %10 = bitcast %"class.llvm::ilist_iterator.123"* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 8, i1 false)
  %11 = getelementptr inbounds %"class.llvm::ilist_iterator.123", %"class.llvm::ilist_iterator.123"* %2, i32 0, i32 0
  %12 = load %"class.llvm::ilist_node_impl.122"*, %"class.llvm::ilist_node_impl.122"** %11, align 8
  ret %"class.llvm::ilist_node_impl.122"* %12
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvEELb0ELb0EEC2ERNS_15ilist_node_implIS4_EE(%"class.llvm::ilist_iterator.123"* noundef nonnull align 8 dereferenceable(8) %0, %"class.llvm::ilist_node_impl.122"* noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 {
  %3 = alloca %"class.llvm::ilist_iterator.123"*, align 8
  %4 = alloca %"class.llvm::ilist_node_impl.122"*, align 8
  store %"class.llvm::ilist_iterator.123"* %0, %"class.llvm::ilist_iterator.123"** %3, align 8
  store %"class.llvm::ilist_node_impl.122"* %1, %"class.llvm::ilist_node_impl.122"** %4, align 8
  %5 = load %"class.llvm::ilist_iterator.123"*, %"class.llvm::ilist_iterator.123"** %3, align 8
  %6 = bitcast %"class.llvm::ilist_iterator.123"* %5 to %"struct.llvm::ilist_detail::SpecificNodeAccess.120"*
  %7 = getelementptr inbounds %"class.llvm::ilist_iterator.123", %"class.llvm::ilist_iterator.123"* %5, i32 0, i32 0
  %8 = load %"class.llvm::ilist_node_impl.122"*, %"class.llvm::ilist_node_impl.122"** %4, align 8
  store %"class.llvm::ilist_node_impl.122"* %8, %"class.llvm::ilist_node_impl.122"** %7, align 8
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local %"class.llvm::ilist_node_impl.122"* @_ZN4llvm12simple_ilistINS_11InstructionEJEE3endEv(%"class.llvm::simple_ilist.119"* noundef nonnull align 8 dereferenceable(16) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::ilist_iterator.123", align 8
  %3 = alloca %"class.llvm::simple_ilist.119"*, align 8
  store %"class.llvm::simple_ilist.119"* %0, %"class.llvm::simple_ilist.119"** %3, align 8
  %4 = load %"class.llvm::simple_ilist.119"*, %"class.llvm::simple_ilist.119"** %3, align 8
  %5 = getelementptr inbounds %"class.llvm::simple_ilist.119", %"class.llvm::simple_ilist.119"* %4, i32 0, i32 0
  %6 = bitcast %"class.llvm::ilist_sentinel.121"* %5 to %"class.llvm::ilist_node_impl.122"*
  call void @_ZN4llvm14ilist_iteratorINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvEELb0ELb0EEC2ERNS_15ilist_node_implIS4_EE(%"class.llvm::ilist_iterator.123"* noundef nonnull align 8 dereferenceable(8) %2, %"class.llvm::ilist_node_impl.122"* noundef nonnull align 8 dereferenceable(16) %6)
  %7 = getelementptr inbounds %"class.llvm::ilist_iterator.123", %"class.llvm::ilist_iterator.123"* %2, i32 0, i32 0
  %8 = load %"class.llvm::ilist_node_impl.122"*, %"class.llvm::ilist_node_impl.122"** %7, align 8
  ret %"class.llvm::ilist_node_impl.122"* %8
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::Instruction"* @_ZN4llvm12ilist_detail18SpecificNodeAccessINS0_12node_optionsINS_11InstructionELb0ELb0EvEEE11getValuePtrEPNS_15ilist_node_implIS4_EE(%"class.llvm::ilist_node_impl.122"* noundef %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::ilist_node_impl.122"*, align 8
  store %"class.llvm::ilist_node_impl.122"* %0, %"class.llvm::ilist_node_impl.122"** %2, align 8
  %3 = load %"class.llvm::ilist_node_impl.122"*, %"class.llvm::ilist_node_impl.122"** %2, align 8
  %4 = call noundef %"class.llvm::Instruction"* @_ZN4llvm12ilist_detail10NodeAccess11getValuePtrINS0_12node_optionsINS_11InstructionELb0ELb0EvEEEENT_7pointerEPNS_15ilist_node_implIS6_EE(%"class.llvm::ilist_node_impl.122"* noundef %3)
  ret %"class.llvm::Instruction"* %4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::Instruction"* @_ZN4llvm12ilist_detail10NodeAccess11getValuePtrINS0_12node_optionsINS_11InstructionELb0ELb0EvEEEENT_7pointerEPNS_15ilist_node_implIS6_EE(%"class.llvm::ilist_node_impl.122"* noundef %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::ilist_node_impl.122"*, align 8
  store %"class.llvm::ilist_node_impl.122"* %0, %"class.llvm::ilist_node_impl.122"** %2, align 8
  %3 = load %"class.llvm::ilist_node_impl.122"*, %"class.llvm::ilist_node_impl.122"** %2, align 8
  %4 = icmp eq %"class.llvm::ilist_node_impl.122"* %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = bitcast %"class.llvm::ilist_node_impl.122"* %3 to i8*
  %7 = getelementptr inbounds i8, i8* %6, i64 -24
  %8 = bitcast i8* %7 to %"class.llvm::Instruction"*
  br label %10

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %9, %5
  %11 = phi %"class.llvm::Instruction"* [ %8, %5 ], [ null, %9 ]
  ret %"class.llvm::Instruction"* %11
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm3isaINS_10AllocaInstEPNS_11InstructionEEEbRKT0_(%"class.llvm::Instruction"** noundef nonnull align 8 dereferenceable(8) %0) #6 comdat {
  %2 = alloca %"class.llvm::Instruction"**, align 8
  store %"class.llvm::Instruction"** %0, %"class.llvm::Instruction"*** %2, align 8
  %3 = load %"class.llvm::Instruction"**, %"class.llvm::Instruction"*** %2, align 8
  %4 = call noundef zeroext i1 @_ZN4llvm13isa_impl_wrapINS_10AllocaInstEKPNS_11InstructionEPKS2_E4doitERS4_(%"class.llvm::Instruction"** noundef nonnull align 8 dereferenceable(8) %3)
  ret i1 %4
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::AllocaInst"* @_ZN4llvm4castINS_10AllocaInstENS_11InstructionEEENS_10cast_rettyIT_PT0_E8ret_typeES6_(%"class.llvm::Instruction"* noundef %0) #6 comdat {
  %2 = alloca %"class.llvm::Instruction"*, align 8
  store %"class.llvm::Instruction"* %0, %"class.llvm::Instruction"** %2, align 8
  %3 = call noundef zeroext i1 @_ZN4llvm3isaINS_10AllocaInstEPNS_11InstructionEEEbRKT0_(%"class.llvm::Instruction"** noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %4, %1
  %6 = phi i1 [ false, %1 ], [ true, %4 ]
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  br label %10

8:                                                ; preds = %5
  call void @__assert_fail(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 noundef 269, i8* noundef getelementptr inbounds ([100 x i8], [100 x i8]* @__PRETTY_FUNCTION__._ZN4llvm4castINS_10AllocaInstENS_11InstructionEEENS_10cast_rettyIT_PT0_E8ret_typeES6_, i64 0, i64 0)) #15
  unreachable

9:                                                ; No predecessors!
  br label %10

10:                                               ; preds = %9, %7
  %11 = call noundef %"class.llvm::AllocaInst"* @_ZN4llvm16cast_convert_valINS_10AllocaInstEPNS_11InstructionES3_E4doitERKS3_(%"class.llvm::Instruction"** noundef nonnull align 8 dereferenceable(8) %2)
  ret %"class.llvm::AllocaInst"* %11
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm13isa_impl_wrapINS_10AllocaInstEKPNS_11InstructionEPKS2_E4doitERS4_(%"class.llvm::Instruction"** noundef nonnull align 8 dereferenceable(8) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::Instruction"**, align 8
  %3 = alloca %"class.llvm::Instruction"*, align 8
  store %"class.llvm::Instruction"** %0, %"class.llvm::Instruction"*** %2, align 8
  %4 = load %"class.llvm::Instruction"**, %"class.llvm::Instruction"*** %2, align 8
  %5 = call noundef %"class.llvm::Instruction"* @_ZN4llvm13simplify_typeIKPNS_11InstructionEE18getSimplifiedValueERS3_(%"class.llvm::Instruction"** noundef nonnull align 8 dereferenceable(8) %4)
  store %"class.llvm::Instruction"* %5, %"class.llvm::Instruction"** %3, align 8
  %6 = call noundef zeroext i1 @_ZN4llvm13isa_impl_wrapINS_10AllocaInstEPKNS_11InstructionES4_E4doitERKS4_(%"class.llvm::Instruction"** noundef nonnull align 8 dereferenceable(8) %3)
  ret i1 %6
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm13isa_impl_wrapINS_10AllocaInstEPKNS_11InstructionES4_E4doitERKS4_(%"class.llvm::Instruction"** noundef nonnull align 8 dereferenceable(8) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::Instruction"**, align 8
  store %"class.llvm::Instruction"** %0, %"class.llvm::Instruction"*** %2, align 8
  %3 = load %"class.llvm::Instruction"**, %"class.llvm::Instruction"*** %2, align 8
  %4 = load %"class.llvm::Instruction"*, %"class.llvm::Instruction"** %3, align 8
  %5 = call noundef zeroext i1 @_ZN4llvm11isa_impl_clINS_10AllocaInstEPKNS_11InstructionEE4doitES4_(%"class.llvm::Instruction"* noundef %4)
  ret i1 %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::Instruction"* @_ZN4llvm13simplify_typeIKPNS_11InstructionEE18getSimplifiedValueERS3_(%"class.llvm::Instruction"** noundef nonnull align 8 dereferenceable(8) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::Instruction"**, align 8
  store %"class.llvm::Instruction"** %0, %"class.llvm::Instruction"*** %2, align 8
  %3 = load %"class.llvm::Instruction"**, %"class.llvm::Instruction"*** %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) %"class.llvm::Instruction"** @_ZN4llvm13simplify_typeIPNS_11InstructionEE18getSimplifiedValueERS2_(%"class.llvm::Instruction"** noundef nonnull align 8 dereferenceable(8) %3)
  %5 = load %"class.llvm::Instruction"*, %"class.llvm::Instruction"** %4, align 8
  ret %"class.llvm::Instruction"* %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm11isa_impl_clINS_10AllocaInstEPKNS_11InstructionEE4doitES4_(%"class.llvm::Instruction"* noundef %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::Instruction"*, align 8
  store %"class.llvm::Instruction"* %0, %"class.llvm::Instruction"** %2, align 8
  %3 = load %"class.llvm::Instruction"*, %"class.llvm::Instruction"** %2, align 8
  %4 = icmp ne %"class.llvm::Instruction"* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %5, %1
  %7 = phi i1 [ false, %1 ], [ true, %5 ]
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  br label %11

9:                                                ; preds = %6
  call void @__assert_fail(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 noundef 104, i8* noundef getelementptr inbounds ([153 x i8], [153 x i8]* @__PRETTY_FUNCTION__._ZN4llvm11isa_impl_clINS_10AllocaInstEPKNS_11InstructionEE4doitES4_, i64 0, i64 0)) #15
  unreachable

10:                                               ; No predecessors!
  br label %11

11:                                               ; preds = %10, %8
  %12 = load %"class.llvm::Instruction"*, %"class.llvm::Instruction"** %2, align 8
  %13 = call noundef zeroext i1 @_ZN4llvm8isa_implINS_10AllocaInstENS_11InstructionEvE4doitERKS2_(%"class.llvm::Instruction"* noundef nonnull align 8 dereferenceable(60) %12)
  ret i1 %13
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm8isa_implINS_10AllocaInstENS_11InstructionEvE4doitERKS2_(%"class.llvm::Instruction"* noundef nonnull align 8 dereferenceable(60) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::Instruction"*, align 8
  store %"class.llvm::Instruction"* %0, %"class.llvm::Instruction"** %2, align 8
  %3 = load %"class.llvm::Instruction"*, %"class.llvm::Instruction"** %2, align 8
  %4 = call noundef zeroext i1 @_ZN4llvm10AllocaInst7classofEPKNS_11InstructionE(%"class.llvm::Instruction"* noundef %3)
  ret i1 %4
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm10AllocaInst7classofEPKNS_11InstructionE(%"class.llvm::Instruction"* noundef %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::Instruction"*, align 8
  store %"class.llvm::Instruction"* %0, %"class.llvm::Instruction"** %2, align 8
  %3 = load %"class.llvm::Instruction"*, %"class.llvm::Instruction"** %2, align 8
  %4 = call noundef i32 @_ZNK4llvm11Instruction9getOpcodeEv(%"class.llvm::Instruction"* noundef nonnull align 8 dereferenceable(60) %3)
  %5 = icmp eq i32 %4, 31
  ret i1 %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4llvm11Instruction9getOpcodeEv(%"class.llvm::Instruction"* noundef nonnull align 8 dereferenceable(60) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::Instruction"*, align 8
  store %"class.llvm::Instruction"* %0, %"class.llvm::Instruction"** %2, align 8
  %3 = load %"class.llvm::Instruction"*, %"class.llvm::Instruction"** %2, align 8
  %4 = bitcast %"class.llvm::Instruction"* %3 to %"class.llvm::Value"*
  %5 = call noundef i32 @_ZNK4llvm5Value10getValueIDEv(%"class.llvm::Value"* noundef nonnull align 8 dereferenceable(24) %4)
  %6 = sub i32 %5, 27
  ret i32 %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4llvm5Value10getValueIDEv(%"class.llvm::Value"* noundef nonnull align 8 dereferenceable(24) %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::Value"*, align 8
  store %"class.llvm::Value"* %0, %"class.llvm::Value"** %2, align 8
  %3 = load %"class.llvm::Value"*, %"class.llvm::Value"** %2, align 8
  %4 = getelementptr inbounds %"class.llvm::Value", %"class.llvm::Value"* %3, i32 0, i32 2
  %5 = load i8, i8* %4, align 8
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"class.llvm::Instruction"** @_ZN4llvm13simplify_typeIPNS_11InstructionEE18getSimplifiedValueERS2_(%"class.llvm::Instruction"** noundef nonnull align 8 dereferenceable(8) %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::Instruction"**, align 8
  store %"class.llvm::Instruction"** %0, %"class.llvm::Instruction"*** %2, align 8
  %3 = load %"class.llvm::Instruction"**, %"class.llvm::Instruction"*** %2, align 8
  ret %"class.llvm::Instruction"** %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::AllocaInst"* @_ZN4llvm16cast_convert_valINS_10AllocaInstEPNS_11InstructionES3_E4doitERKS3_(%"class.llvm::Instruction"** noundef nonnull align 8 dereferenceable(8) %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::Instruction"**, align 8
  %3 = alloca %"class.llvm::AllocaInst"*, align 8
  store %"class.llvm::Instruction"** %0, %"class.llvm::Instruction"*** %2, align 8
  %4 = load %"class.llvm::Instruction"**, %"class.llvm::Instruction"*** %2, align 8
  %5 = load %"class.llvm::Instruction"*, %"class.llvm::Instruction"** %4, align 8
  %6 = bitcast %"class.llvm::Instruction"* %5 to %"class.llvm::AllocaInst"*
  store %"class.llvm::AllocaInst"* %6, %"class.llvm::AllocaInst"** %3, align 8
  %7 = load %"class.llvm::AllocaInst"*, %"class.llvm::AllocaInst"** %3, align 8
  ret %"class.llvm::AllocaInst"* %7
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local { i64, i32 } @_ZN4llvm7alignToENS_8TypeSizeEm(i64 %0, i32 %1, i64 noundef %2) #6 comdat {
  %4 = alloca %"class.llvm::TypeSize", align 8
  %5 = alloca %"class.llvm::TypeSize", align 8
  %6 = alloca i64, align 8
  %7 = bitcast %"class.llvm::TypeSize"* %5 to { i64, i32 }*
  %8 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 0
  store i64 %0, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 1
  store i32 %1, i32* %9, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %13

13:                                               ; preds = %12, %3
  %14 = phi i1 [ false, %3 ], [ true, %12 ]
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  br label %18

16:                                               ; preds = %13
  call void @__assert_fail(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0), i32 noundef 489, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @__PRETTY_FUNCTION__._ZN4llvm7alignToENS_8TypeSizeEm, i64 0, i64 0)) #15
  unreachable

17:                                               ; No predecessors!
  br label %18

18:                                               ; preds = %17, %15
  %19 = bitcast %"class.llvm::TypeSize"* %5 to %"class.llvm::LinearPolySize"*
  %20 = call noundef i64 @_ZNK4llvm14LinearPolySizeINS_8TypeSizeEE16getKnownMinValueEv(%"class.llvm::LinearPolySize"* noundef nonnull align 8 dereferenceable(12) %19)
  %21 = load i64, i64* %6, align 8
  %22 = add i64 %20, %21
  %23 = sub i64 %22, 1
  %24 = load i64, i64* %6, align 8
  %25 = udiv i64 %23, %24
  %26 = load i64, i64* %6, align 8
  %27 = mul i64 %25, %26
  %28 = bitcast %"class.llvm::TypeSize"* %5 to %"class.llvm::LinearPolySize"*
  %29 = call noundef zeroext i1 @_ZNK4llvm14LinearPolySizeINS_8TypeSizeEE10isScalableEv(%"class.llvm::LinearPolySize"* noundef nonnull align 8 dereferenceable(12) %28)
  call void @_ZN4llvm8TypeSizeC2Emb(%"class.llvm::TypeSize"* noundef nonnull align 8 dereferenceable(12) %4, i64 noundef %27, i1 noundef zeroext %29)
  %30 = bitcast %"class.llvm::TypeSize"* %4 to { i64, i32 }*
  %31 = load { i64, i32 }, { i64, i32 }* %30, align 8
  ret { i64, i32 } %31
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local { i64, i32 } @_ZNK4llvm10DataLayout16getTypeStoreSizeEPNS_4TypeE(%"class.llvm::DataLayout"* noundef nonnull align 8 dereferenceable(440) %0, %"class.llvm::Type"* noundef %1) #6 comdat align 2 {
  %3 = alloca %"class.llvm::TypeSize", align 8
  %4 = alloca %"class.llvm::DataLayout"*, align 8
  %5 = alloca %"class.llvm::Type"*, align 8
  %6 = alloca %"class.llvm::TypeSize", align 8
  store %"class.llvm::DataLayout"* %0, %"class.llvm::DataLayout"** %4, align 8
  store %"class.llvm::Type"* %1, %"class.llvm::Type"** %5, align 8
  %7 = load %"class.llvm::DataLayout"*, %"class.llvm::DataLayout"** %4, align 8
  %8 = load %"class.llvm::Type"*, %"class.llvm::Type"** %5, align 8
  %9 = call { i64, i32 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(%"class.llvm::DataLayout"* noundef nonnull align 8 dereferenceable(440) %7, %"class.llvm::Type"* noundef %8)
  %10 = bitcast %"class.llvm::TypeSize"* %6 to { i64, i32 }*
  %11 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 0
  %12 = extractvalue { i64, i32 } %9, 0
  store i64 %12, i64* %11, align 8
  %13 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 1
  %14 = extractvalue { i64, i32 } %9, 1
  store i32 %14, i32* %13, align 8
  %15 = call noundef i64 @_ZNK4llvm8TypeSize15getKnownMinSizeEv(%"class.llvm::TypeSize"* noundef nonnull align 8 dereferenceable(12) %6)
  %16 = call noundef i64 @_ZN4llvm10divideCeilEmm(i64 noundef %15, i64 noundef 8)
  %17 = bitcast %"class.llvm::TypeSize"* %6 to %"class.llvm::LinearPolySize"*
  %18 = call noundef zeroext i1 @_ZNK4llvm14LinearPolySizeINS_8TypeSizeEE10isScalableEv(%"class.llvm::LinearPolySize"* noundef nonnull align 8 dereferenceable(12) %17)
  call void @_ZN4llvm8TypeSizeC2Emb(%"class.llvm::TypeSize"* noundef nonnull align 8 dereferenceable(12) %3, i64 noundef %16, i1 noundef zeroext %18)
  %19 = bitcast %"class.llvm::TypeSize"* %3 to { i64, i32 }*
  %20 = load { i64, i32 }, { i64, i32 }* %19, align 8
  ret { i64, i32 } %20
}

declare noundef i64 @_ZNK4llvm10DataLayout19getABITypeAlignmentEPNS_4TypeE(%"class.llvm::DataLayout"* noundef nonnull align 8 dereferenceable(440), %"class.llvm::Type"* noundef) #10

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNK4llvm14LinearPolySizeINS_8TypeSizeEE16getKnownMinValueEv(%"class.llvm::LinearPolySize"* noundef nonnull align 8 dereferenceable(12) %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::LinearPolySize"*, align 8
  store %"class.llvm::LinearPolySize"* %0, %"class.llvm::LinearPolySize"** %2, align 8
  %3 = load %"class.llvm::LinearPolySize"*, %"class.llvm::LinearPolySize"** %2, align 8
  %4 = bitcast %"class.llvm::LinearPolySize"* %3 to %"class.llvm::UnivariateLinearPolyBase"*
  %5 = getelementptr inbounds %"class.llvm::UnivariateLinearPolyBase", %"class.llvm::UnivariateLinearPolyBase"* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK4llvm14LinearPolySizeINS_8TypeSizeEE10isScalableEv(%"class.llvm::LinearPolySize"* noundef nonnull align 8 dereferenceable(12) %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::LinearPolySize"*, align 8
  store %"class.llvm::LinearPolySize"* %0, %"class.llvm::LinearPolySize"** %2, align 8
  %3 = load %"class.llvm::LinearPolySize"*, %"class.llvm::LinearPolySize"** %2, align 8
  %4 = bitcast %"class.llvm::LinearPolySize"* %3 to %"class.llvm::UnivariateLinearPolyBase"*
  %5 = getelementptr inbounds %"class.llvm::UnivariateLinearPolyBase", %"class.llvm::UnivariateLinearPolyBase"* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = icmp eq i32 %6, 1
  ret i1 %7
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN4llvm8TypeSizeC2Emb(%"class.llvm::TypeSize"* noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %1, i1 noundef zeroext %2) unnamed_addr #1 comdat align 2 {
  %4 = alloca %"class.llvm::TypeSize"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca %"class.llvm::TypeSize", align 8
  store %"class.llvm::TypeSize"* %0, %"class.llvm::TypeSize"** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = zext i1 %2 to i8
  store i8 %8, i8* %6, align 1
  %9 = load %"class.llvm::TypeSize"*, %"class.llvm::TypeSize"** %4, align 8
  %10 = bitcast %"class.llvm::TypeSize"* %9 to %"class.llvm::LinearPolySize"*
  %11 = load i64, i64* %5, align 8
  %12 = load i8, i8* %6, align 1
  %13 = trunc i8 %12 to i1
  %14 = call { i64, i32 } @_ZN4llvm14LinearPolySizeINS_8TypeSizeEE3getEmb(i64 noundef %11, i1 noundef zeroext %13)
  %15 = bitcast %"class.llvm::TypeSize"* %7 to { i64, i32 }*
  %16 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 0
  %17 = extractvalue { i64, i32 } %14, 0
  store i64 %17, i64* %16, align 8
  %18 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 1
  %19 = extractvalue { i64, i32 } %14, 1
  store i32 %19, i32* %18, align 8
  %20 = bitcast %"class.llvm::TypeSize"* %7 to %"class.llvm::LinearPolySize"*
  %21 = bitcast %"class.llvm::LinearPolySize"* %10 to i8*
  %22 = bitcast %"class.llvm::LinearPolySize"* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 12, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local { i64, i32 } @_ZN4llvm14LinearPolySizeINS_8TypeSizeEE3getEmb(i64 noundef %0, i1 noundef zeroext %1) #6 comdat align 2 {
  %3 = alloca %"class.llvm::TypeSize", align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  %6 = alloca %"class.llvm::LinearPolySize", align 8
  store i64 %0, i64* %4, align 8
  %7 = zext i1 %1 to i8
  store i8 %7, i8* %5, align 1
  %8 = load i64, i64* %4, align 8
  %9 = load i8, i8* %5, align 1
  %10 = trunc i8 %9 to i1
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 1, i32 0
  call void @_ZN4llvm14LinearPolySizeINS_8TypeSizeEEC2EmNS2_4DimsE(%"class.llvm::LinearPolySize"* noundef nonnull align 8 dereferenceable(12) %6, i64 noundef %8, i32 noundef %12)
  call void @_ZN4llvm8TypeSizeC2ERKNS_14LinearPolySizeIS0_EE(%"class.llvm::TypeSize"* noundef nonnull align 8 dereferenceable(12) %3, %"class.llvm::LinearPolySize"* noundef nonnull align 8 dereferenceable(12) %6)
  %13 = bitcast %"class.llvm::TypeSize"* %3 to { i64, i32 }*
  %14 = load { i64, i32 }, { i64, i32 }* %13, align 8
  ret { i64, i32 } %14
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN4llvm14LinearPolySizeINS_8TypeSizeEEC2EmNS2_4DimsE(%"class.llvm::LinearPolySize"* noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 {
  %4 = alloca %"class.llvm::LinearPolySize"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %"class.llvm::LinearPolySize"* %0, %"class.llvm::LinearPolySize"** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %"class.llvm::LinearPolySize"*, %"class.llvm::LinearPolySize"** %4, align 8
  %8 = bitcast %"class.llvm::LinearPolySize"* %7 to %"class.llvm::UnivariateLinearPolyBase"*
  %9 = load i64, i64* %5, align 8
  %10 = load i32, i32* %6, align 4
  call void @_ZN4llvm24UnivariateLinearPolyBaseINS_8TypeSizeEEC2Emj(%"class.llvm::UnivariateLinearPolyBase"* noundef nonnull align 8 dereferenceable(12) %8, i64 noundef %9, i32 noundef %10)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4llvm8TypeSizeC2ERKNS_14LinearPolySizeIS0_EE(%"class.llvm::TypeSize"* noundef nonnull align 8 dereferenceable(12) %0, %"class.llvm::LinearPolySize"* noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #2 comdat align 2 {
  %3 = alloca %"class.llvm::TypeSize"*, align 8
  %4 = alloca %"class.llvm::LinearPolySize"*, align 8
  store %"class.llvm::TypeSize"* %0, %"class.llvm::TypeSize"** %3, align 8
  store %"class.llvm::LinearPolySize"* %1, %"class.llvm::LinearPolySize"** %4, align 8
  %5 = load %"class.llvm::TypeSize"*, %"class.llvm::TypeSize"** %3, align 8
  %6 = bitcast %"class.llvm::TypeSize"* %5 to %"class.llvm::LinearPolySize"*
  %7 = load %"class.llvm::LinearPolySize"*, %"class.llvm::LinearPolySize"** %4, align 8
  %8 = bitcast %"class.llvm::LinearPolySize"* %6 to i8*
  %9 = bitcast %"class.llvm::LinearPolySize"* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 12, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4llvm24UnivariateLinearPolyBaseINS_8TypeSizeEEC2Emj(%"class.llvm::UnivariateLinearPolyBase"* noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %1, i32 noundef %2) unnamed_addr #2 comdat align 2 {
  %4 = alloca %"class.llvm::UnivariateLinearPolyBase"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %"class.llvm::UnivariateLinearPolyBase"* %0, %"class.llvm::UnivariateLinearPolyBase"** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %"class.llvm::UnivariateLinearPolyBase"*, %"class.llvm::UnivariateLinearPolyBase"** %4, align 8
  %8 = getelementptr inbounds %"class.llvm::UnivariateLinearPolyBase", %"class.llvm::UnivariateLinearPolyBase"* %7, i32 0, i32 0
  %9 = load i64, i64* %5, align 8
  store i64 %9, i64* %8, align 8
  %10 = getelementptr inbounds %"class.llvm::UnivariateLinearPolyBase", %"class.llvm::UnivariateLinearPolyBase"* %7, i32 0, i32 1
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp ult i32 %12, 2
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %14, %3
  %16 = phi i1 [ false, %3 ], [ true, %14 ]
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  br label %20

18:                                               ; preds = %15
  call void @__assert_fail(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0), i32 noundef 178, i8* noundef getelementptr inbounds ([155 x i8], [155 x i8]* @__PRETTY_FUNCTION__._ZN4llvm24UnivariateLinearPolyBaseINS_8TypeSizeEEC2Emj, i64 0, i64 0)) #15
  unreachable

19:                                               ; No predecessors!
  br label %20

20:                                               ; preds = %19, %17
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local { i64, i32 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(%"class.llvm::DataLayout"* noundef nonnull align 8 dereferenceable(440) %0, %"class.llvm::Type"* noundef %1) #6 comdat align 2 {
  %3 = alloca %"class.llvm::TypeSize", align 8
  %4 = alloca %"class.llvm::DataLayout"*, align 8
  %5 = alloca %"class.llvm::Type"*, align 8
  %6 = alloca %"class.llvm::ArrayType"*, align 8
  %7 = alloca %"class.llvm::TypeSize", align 8
  %8 = alloca %"class.llvm::VectorType"*, align 8
  %9 = alloca %"class.llvm::ElementCount", align 4
  %10 = alloca i64, align 8
  %11 = alloca %"class.llvm::TypeSize", align 8
  store %"class.llvm::DataLayout"* %0, %"class.llvm::DataLayout"** %4, align 8
  store %"class.llvm::Type"* %1, %"class.llvm::Type"** %5, align 8
  %12 = load %"class.llvm::DataLayout"*, %"class.llvm::DataLayout"** %4, align 8
  %13 = load %"class.llvm::Type"*, %"class.llvm::Type"** %5, align 8
  %14 = call noundef zeroext i1 @_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %13, %"class.llvm::SmallPtrSetImpl.126"* noundef null)
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15, %2
  %17 = phi i1 [ false, %2 ], [ true, %15 ]
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  br label %21

19:                                               ; preds = %16
  call void @__assert_fail(i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.20, i64 0, i64 0), i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i64 0, i64 0), i32 noundef 674, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__._ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE, i64 0, i64 0)) #15
  unreachable

20:                                               ; No predecessors!
  br label %21

21:                                               ; preds = %20, %18
  %22 = load %"class.llvm::Type"*, %"class.llvm::Type"** %5, align 8
  %23 = call noundef i32 @_ZNK4llvm4Type9getTypeIDEv(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %22)
  switch i32 %23, label %150 [
    i32 8, label %24
    i32 15, label %33
    i32 17, label %44
    i32 16, label %63
    i32 13, label %74
    i32 0, label %84
    i32 1, label %84
    i32 2, label %91
    i32 3, label %98
    i32 10, label %98
    i32 6, label %105
    i32 5, label %105
    i32 11, label %112
    i32 4, label %119
    i32 18, label %126
    i32 19, label %126
  ]

24:                                               ; preds = %21
  %25 = call noundef i32 @_ZNK4llvm10DataLayout20getPointerSizeInBitsEj(%"class.llvm::DataLayout"* noundef nonnull align 8 dereferenceable(440) %12, i32 noundef 0)
  %26 = zext i32 %25 to i64
  %27 = call { i64, i32 } @_ZN4llvm8TypeSize5FixedEm(i64 noundef %26)
  %28 = bitcast %"class.llvm::TypeSize"* %3 to { i64, i32 }*
  %29 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %28, i32 0, i32 0
  %30 = extractvalue { i64, i32 } %27, 0
  store i64 %30, i64* %29, align 8
  %31 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %28, i32 0, i32 1
  %32 = extractvalue { i64, i32 } %27, 1
  store i32 %32, i32* %31, align 8
  br label %151

33:                                               ; preds = %21
  %34 = load %"class.llvm::Type"*, %"class.llvm::Type"** %5, align 8
  %35 = call noundef i32 @_ZNK4llvm4Type22getPointerAddressSpaceEv(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %34)
  %36 = call noundef i32 @_ZNK4llvm10DataLayout20getPointerSizeInBitsEj(%"class.llvm::DataLayout"* noundef nonnull align 8 dereferenceable(440) %12, i32 noundef %35)
  %37 = zext i32 %36 to i64
  %38 = call { i64, i32 } @_ZN4llvm8TypeSize5FixedEm(i64 noundef %37)
  %39 = bitcast %"class.llvm::TypeSize"* %3 to { i64, i32 }*
  %40 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %39, i32 0, i32 0
  %41 = extractvalue { i64, i32 } %38, 0
  store i64 %41, i64* %40, align 8
  %42 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %39, i32 0, i32 1
  %43 = extractvalue { i64, i32 } %38, 1
  store i32 %43, i32* %42, align 8
  br label %151

44:                                               ; preds = %21
  %45 = load %"class.llvm::Type"*, %"class.llvm::Type"** %5, align 8
  %46 = call noundef %"class.llvm::ArrayType"* @_ZN4llvm4castINS_9ArrayTypeENS_4TypeEEENS_10cast_rettyIT_PT0_E8ret_typeES6_(%"class.llvm::Type"* noundef %45)
  store %"class.llvm::ArrayType"* %46, %"class.llvm::ArrayType"** %6, align 8
  %47 = load %"class.llvm::ArrayType"*, %"class.llvm::ArrayType"** %6, align 8
  %48 = call noundef i64 @_ZNK4llvm9ArrayType14getNumElementsEv(%"class.llvm::ArrayType"* noundef nonnull align 8 dereferenceable(40) %47)
  %49 = load %"class.llvm::ArrayType"*, %"class.llvm::ArrayType"** %6, align 8
  %50 = call noundef %"class.llvm::Type"* @_ZNK4llvm9ArrayType14getElementTypeEv(%"class.llvm::ArrayType"* noundef nonnull align 8 dereferenceable(40) %49)
  %51 = call { i64, i32 } @_ZNK4llvm10DataLayout22getTypeAllocSizeInBitsEPNS_4TypeE(%"class.llvm::DataLayout"* noundef nonnull align 8 dereferenceable(440) %12, %"class.llvm::Type"* noundef %50)
  %52 = bitcast %"class.llvm::TypeSize"* %7 to { i64, i32 }*
  %53 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %52, i32 0, i32 0
  %54 = extractvalue { i64, i32 } %51, 0
  store i64 %54, i64* %53, align 8
  %55 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %52, i32 0, i32 1
  %56 = extractvalue { i64, i32 } %51, 1
  store i32 %56, i32* %55, align 8
  %57 = call { i64, i32 } @_ZN4llvmmlEmRKNS_8TypeSizeE(i64 noundef %48, %"class.llvm::TypeSize"* noundef nonnull align 8 dereferenceable(12) %7)
  %58 = bitcast %"class.llvm::TypeSize"* %3 to { i64, i32 }*
  %59 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %58, i32 0, i32 0
  %60 = extractvalue { i64, i32 } %57, 0
  store i64 %60, i64* %59, align 8
  %61 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %58, i32 0, i32 1
  %62 = extractvalue { i64, i32 } %57, 1
  store i32 %62, i32* %61, align 8
  br label %151

63:                                               ; preds = %21
  %64 = load %"class.llvm::Type"*, %"class.llvm::Type"** %5, align 8
  %65 = call noundef %"class.llvm::StructType"* @_ZN4llvm4castINS_10StructTypeENS_4TypeEEENS_10cast_rettyIT_PT0_E8ret_typeES6_(%"class.llvm::Type"* noundef %64)
  %66 = call noundef %"class.llvm::StructLayout"* @_ZNK4llvm10DataLayout15getStructLayoutEPNS_10StructTypeE(%"class.llvm::DataLayout"* noundef nonnull align 8 dereferenceable(440) %12, %"class.llvm::StructType"* noundef %65)
  %67 = call noundef i64 @_ZNK4llvm12StructLayout13getSizeInBitsEv(%"class.llvm::StructLayout"* noundef nonnull align 8 dereferenceable(16) %66)
  %68 = call { i64, i32 } @_ZN4llvm8TypeSize5FixedEm(i64 noundef %67)
  %69 = bitcast %"class.llvm::TypeSize"* %3 to { i64, i32 }*
  %70 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %69, i32 0, i32 0
  %71 = extractvalue { i64, i32 } %68, 0
  store i64 %71, i64* %70, align 8
  %72 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %69, i32 0, i32 1
  %73 = extractvalue { i64, i32 } %68, 1
  store i32 %73, i32* %72, align 8
  br label %151

74:                                               ; preds = %21
  %75 = load %"class.llvm::Type"*, %"class.llvm::Type"** %5, align 8
  %76 = call noundef i32 @_ZNK4llvm4Type18getIntegerBitWidthEv(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %75)
  %77 = zext i32 %76 to i64
  %78 = call { i64, i32 } @_ZN4llvm8TypeSize5FixedEm(i64 noundef %77)
  %79 = bitcast %"class.llvm::TypeSize"* %3 to { i64, i32 }*
  %80 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %79, i32 0, i32 0
  %81 = extractvalue { i64, i32 } %78, 0
  store i64 %81, i64* %80, align 8
  %82 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %79, i32 0, i32 1
  %83 = extractvalue { i64, i32 } %78, 1
  store i32 %83, i32* %82, align 8
  br label %151

84:                                               ; preds = %21, %21
  %85 = call { i64, i32 } @_ZN4llvm8TypeSize5FixedEm(i64 noundef 16)
  %86 = bitcast %"class.llvm::TypeSize"* %3 to { i64, i32 }*
  %87 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %86, i32 0, i32 0
  %88 = extractvalue { i64, i32 } %85, 0
  store i64 %88, i64* %87, align 8
  %89 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %86, i32 0, i32 1
  %90 = extractvalue { i64, i32 } %85, 1
  store i32 %90, i32* %89, align 8
  br label %151

91:                                               ; preds = %21
  %92 = call { i64, i32 } @_ZN4llvm8TypeSize5FixedEm(i64 noundef 32)
  %93 = bitcast %"class.llvm::TypeSize"* %3 to { i64, i32 }*
  %94 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %93, i32 0, i32 0
  %95 = extractvalue { i64, i32 } %92, 0
  store i64 %95, i64* %94, align 8
  %96 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %93, i32 0, i32 1
  %97 = extractvalue { i64, i32 } %92, 1
  store i32 %97, i32* %96, align 8
  br label %151

98:                                               ; preds = %21, %21
  %99 = call { i64, i32 } @_ZN4llvm8TypeSize5FixedEm(i64 noundef 64)
  %100 = bitcast %"class.llvm::TypeSize"* %3 to { i64, i32 }*
  %101 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %100, i32 0, i32 0
  %102 = extractvalue { i64, i32 } %99, 0
  store i64 %102, i64* %101, align 8
  %103 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %100, i32 0, i32 1
  %104 = extractvalue { i64, i32 } %99, 1
  store i32 %104, i32* %103, align 8
  br label %151

105:                                              ; preds = %21, %21
  %106 = call { i64, i32 } @_ZN4llvm8TypeSize5FixedEm(i64 noundef 128)
  %107 = bitcast %"class.llvm::TypeSize"* %3 to { i64, i32 }*
  %108 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %107, i32 0, i32 0
  %109 = extractvalue { i64, i32 } %106, 0
  store i64 %109, i64* %108, align 8
  %110 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %107, i32 0, i32 1
  %111 = extractvalue { i64, i32 } %106, 1
  store i32 %111, i32* %110, align 8
  br label %151

112:                                              ; preds = %21
  %113 = call { i64, i32 } @_ZN4llvm8TypeSize5FixedEm(i64 noundef 8192)
  %114 = bitcast %"class.llvm::TypeSize"* %3 to { i64, i32 }*
  %115 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %114, i32 0, i32 0
  %116 = extractvalue { i64, i32 } %113, 0
  store i64 %116, i64* %115, align 8
  %117 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %114, i32 0, i32 1
  %118 = extractvalue { i64, i32 } %113, 1
  store i32 %118, i32* %117, align 8
  br label %151

119:                                              ; preds = %21
  %120 = call { i64, i32 } @_ZN4llvm8TypeSize5FixedEm(i64 noundef 80)
  %121 = bitcast %"class.llvm::TypeSize"* %3 to { i64, i32 }*
  %122 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %121, i32 0, i32 0
  %123 = extractvalue { i64, i32 } %120, 0
  store i64 %123, i64* %122, align 8
  %124 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %121, i32 0, i32 1
  %125 = extractvalue { i64, i32 } %120, 1
  store i32 %125, i32* %124, align 8
  br label %151

126:                                              ; preds = %21, %21
  %127 = load %"class.llvm::Type"*, %"class.llvm::Type"** %5, align 8
  %128 = call noundef %"class.llvm::VectorType"* @_ZN4llvm4castINS_10VectorTypeENS_4TypeEEENS_10cast_rettyIT_PT0_E8ret_typeES6_(%"class.llvm::Type"* noundef %127)
  store %"class.llvm::VectorType"* %128, %"class.llvm::VectorType"** %8, align 8
  %129 = load %"class.llvm::VectorType"*, %"class.llvm::VectorType"** %8, align 8
  %130 = call i64 @_ZNK4llvm10VectorType15getElementCountEv(%"class.llvm::VectorType"* noundef nonnull align 8 dereferenceable(36) %129)
  %131 = getelementptr inbounds %"class.llvm::ElementCount", %"class.llvm::ElementCount"* %9, i32 0, i32 0
  %132 = getelementptr inbounds %"class.llvm::LinearPolySize.128", %"class.llvm::LinearPolySize.128"* %131, i32 0, i32 0
  %133 = bitcast %"class.llvm::UnivariateLinearPolyBase.129"* %132 to i64*
  store i64 %130, i64* %133, align 4
  %134 = bitcast %"class.llvm::ElementCount"* %9 to %"class.llvm::LinearPolySize.128"*
  %135 = call noundef i32 @_ZNK4llvm14LinearPolySizeINS_12ElementCountEE16getKnownMinValueEv(%"class.llvm::LinearPolySize.128"* noundef nonnull align 4 dereferenceable(8) %134)
  %136 = zext i32 %135 to i64
  %137 = load %"class.llvm::VectorType"*, %"class.llvm::VectorType"** %8, align 8
  %138 = call noundef %"class.llvm::Type"* @_ZNK4llvm10VectorType14getElementTypeEv(%"class.llvm::VectorType"* noundef nonnull align 8 dereferenceable(36) %137)
  %139 = call { i64, i32 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(%"class.llvm::DataLayout"* noundef nonnull align 8 dereferenceable(440) %12, %"class.llvm::Type"* noundef %138)
  %140 = bitcast %"class.llvm::TypeSize"* %11 to { i64, i32 }*
  %141 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %140, i32 0, i32 0
  %142 = extractvalue { i64, i32 } %139, 0
  store i64 %142, i64* %141, align 8
  %143 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %140, i32 0, i32 1
  %144 = extractvalue { i64, i32 } %139, 1
  store i32 %144, i32* %143, align 8
  %145 = call noundef i64 @_ZNK4llvm8TypeSize12getFixedSizeEv(%"class.llvm::TypeSize"* noundef nonnull align 8 dereferenceable(12) %11)
  %146 = mul i64 %136, %145
  store i64 %146, i64* %10, align 8
  %147 = load i64, i64* %10, align 8
  %148 = bitcast %"class.llvm::ElementCount"* %9 to %"class.llvm::LinearPolySize.128"*
  %149 = call noundef zeroext i1 @_ZNK4llvm14LinearPolySizeINS_12ElementCountEE10isScalableEv(%"class.llvm::LinearPolySize.128"* noundef nonnull align 4 dereferenceable(8) %148)
  call void @_ZN4llvm8TypeSizeC2Emb(%"class.llvm::TypeSize"* noundef nonnull align 8 dereferenceable(12) %3, i64 noundef %147, i1 noundef zeroext %149)
  br label %151

150:                                              ; preds = %21
  call void @_ZN4llvm25llvm_unreachable_internalEPKcS1_j(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.22, i64 0, i64 0), i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i64 0, i64 0), i32 noundef 717) #18
  unreachable

151:                                              ; preds = %126, %119, %112, %105, %98, %91, %84, %74, %63, %44, %33, %24
  %152 = bitcast %"class.llvm::TypeSize"* %3 to { i64, i32 }*
  %153 = load { i64, i32 }, { i64, i32 }* %152, align 8
  ret { i64, i32 } %153
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZN4llvm10divideCeilEmm(i64 noundef %0, i64 noundef %1) #6 comdat {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call noundef i64 @_ZN4llvm7alignToEmmm(i64 noundef %5, i64 noundef %6, i64 noundef 0)
  %8 = load i64, i64* %4, align 8
  %9 = udiv i64 %7, %8
  ret i64 %9
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNK4llvm8TypeSize15getKnownMinSizeEv(%"class.llvm::TypeSize"* noundef nonnull align 8 dereferenceable(12) %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::TypeSize"*, align 8
  store %"class.llvm::TypeSize"* %0, %"class.llvm::TypeSize"** %2, align 8
  %3 = load %"class.llvm::TypeSize"*, %"class.llvm::TypeSize"** %2, align 8
  %4 = bitcast %"class.llvm::TypeSize"* %3 to %"class.llvm::LinearPolySize"*
  %5 = call noundef i64 @_ZNK4llvm14LinearPolySizeINS_8TypeSizeEE16getKnownMinValueEv(%"class.llvm::LinearPolySize"* noundef nonnull align 8 dereferenceable(12) %4)
  ret i64 %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK4llvm4Type7isSizedEPNS_15SmallPtrSetImplIPS0_EE(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %0, %"class.llvm::SmallPtrSetImpl.126"* noundef %1) #6 comdat align 2 {
  %3 = alloca i1, align 1
  %4 = alloca %"class.llvm::Type"*, align 8
  %5 = alloca %"class.llvm::SmallPtrSetImpl.126"*, align 8
  store %"class.llvm::Type"* %0, %"class.llvm::Type"** %4, align 8
  store %"class.llvm::SmallPtrSetImpl.126"* %1, %"class.llvm::SmallPtrSetImpl.126"** %5, align 8
  %6 = load %"class.llvm::Type"*, %"class.llvm::Type"** %4, align 8
  %7 = call noundef i32 @_ZNK4llvm4Type9getTypeIDEv(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %6)
  %8 = icmp eq i32 %7, 13
  br i1 %8, label %20, label %9

9:                                                ; preds = %2
  %10 = call noundef zeroext i1 @_ZNK4llvm4Type17isFloatingPointTyEv(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %6)
  br i1 %10, label %20, label %11

11:                                               ; preds = %9
  %12 = call noundef i32 @_ZNK4llvm4Type9getTypeIDEv(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %6)
  %13 = icmp eq i32 %12, 15
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = call noundef i32 @_ZNK4llvm4Type9getTypeIDEv(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %6)
  %16 = icmp eq i32 %15, 10
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = call noundef i32 @_ZNK4llvm4Type9getTypeIDEv(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %6)
  %19 = icmp eq i32 %18, 11
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %14, %11, %9, %2
  store i1 true, i1* %3, align 1
  br label %33

21:                                               ; preds = %17
  %22 = call noundef i32 @_ZNK4llvm4Type9getTypeIDEv(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %6)
  %23 = icmp ne i32 %22, 16
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = call noundef i32 @_ZNK4llvm4Type9getTypeIDEv(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %6)
  %26 = icmp ne i32 %25, 17
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = call noundef zeroext i1 @_ZNK4llvm4Type10isVectorTyEv(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %6)
  br i1 %28, label %30, label %29

29:                                               ; preds = %27
  store i1 false, i1* %3, align 1
  br label %33

30:                                               ; preds = %27, %24, %21
  %31 = load %"class.llvm::SmallPtrSetImpl.126"*, %"class.llvm::SmallPtrSetImpl.126"** %5, align 8
  %32 = call noundef zeroext i1 @_ZNK4llvm4Type18isSizedDerivedTypeEPNS_15SmallPtrSetImplIPS0_EE(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %6, %"class.llvm::SmallPtrSetImpl.126"* noundef %31)
  store i1 %32, i1* %3, align 1
  br label %33

33:                                               ; preds = %30, %29, %20
  %34 = load i1, i1* %3, align 1
  ret i1 %34
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4llvm4Type9getTypeIDEv(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"* %0, %"class.llvm::Type"** %2, align 8
  %3 = load %"class.llvm::Type"*, %"class.llvm::Type"** %2, align 8
  %4 = getelementptr inbounds %"class.llvm::Type", %"class.llvm::Type"* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = and i32 %5, 255
  ret i32 %6
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local { i64, i32 } @_ZN4llvm8TypeSize5FixedEm(i64 noundef %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::TypeSize", align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  call void @_ZN4llvm8TypeSizeC2Emb(%"class.llvm::TypeSize"* noundef nonnull align 8 dereferenceable(12) %2, i64 noundef %4, i1 noundef zeroext false)
  %5 = bitcast %"class.llvm::TypeSize"* %2 to { i64, i32 }*
  %6 = load { i64, i32 }, { i64, i32 }* %5, align 8
  ret { i64, i32 } %6
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4llvm10DataLayout20getPointerSizeInBitsEj(%"class.llvm::DataLayout"* noundef nonnull align 8 dereferenceable(440) %0, i32 noundef %1) #6 comdat align 2 {
  %3 = alloca %"class.llvm::DataLayout"*, align 8
  %4 = alloca i32, align 4
  store %"class.llvm::DataLayout"* %0, %"class.llvm::DataLayout"** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %"class.llvm::DataLayout"*, %"class.llvm::DataLayout"** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call noundef nonnull align 4 dereferenceable(16) %"struct.llvm::PointerAlignElem"* @_ZNK4llvm10DataLayout19getPointerAlignElemEj(%"class.llvm::DataLayout"* noundef nonnull align 8 dereferenceable(440) %5, i32 noundef %6)
  %8 = getelementptr inbounds %"struct.llvm::PointerAlignElem", %"struct.llvm::PointerAlignElem"* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  ret i32 %9
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4llvm4Type22getPointerAddressSpaceEv(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"* %0, %"class.llvm::Type"** %2, align 8
  %3 = load %"class.llvm::Type"*, %"class.llvm::Type"** %2, align 8
  %4 = call noundef %"class.llvm::Type"* @_ZNK4llvm4Type13getScalarTypeEv(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %3)
  %5 = call noundef %"class.llvm::PointerType"* @_ZN4llvm4castINS_11PointerTypeENS_4TypeEEENS_10cast_rettyIT_PT0_E8ret_typeES6_(%"class.llvm::Type"* noundef %4)
  %6 = call noundef i32 @_ZNK4llvm11PointerType15getAddressSpaceEv(%"class.llvm::PointerType"* noundef nonnull align 8 dereferenceable(32) %5)
  ret i32 %6
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::ArrayType"* @_ZN4llvm4castINS_9ArrayTypeENS_4TypeEEENS_10cast_rettyIT_PT0_E8ret_typeES6_(%"class.llvm::Type"* noundef %0) #6 comdat {
  %2 = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"* %0, %"class.llvm::Type"** %2, align 8
  %3 = call noundef zeroext i1 @_ZN4llvm3isaINS_9ArrayTypeEPNS_4TypeEEEbRKT0_(%"class.llvm::Type"** noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %4, %1
  %6 = phi i1 [ false, %1 ], [ true, %4 ]
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  br label %10

8:                                                ; preds = %5
  call void @__assert_fail(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 noundef 269, i8* noundef getelementptr inbounds ([92 x i8], [92 x i8]* @__PRETTY_FUNCTION__._ZN4llvm4castINS_9ArrayTypeENS_4TypeEEENS_10cast_rettyIT_PT0_E8ret_typeES6_, i64 0, i64 0)) #15
  unreachable

9:                                                ; No predecessors!
  br label %10

10:                                               ; preds = %9, %7
  %11 = call noundef %"class.llvm::ArrayType"* @_ZN4llvm16cast_convert_valINS_9ArrayTypeEPNS_4TypeES3_E4doitERKS3_(%"class.llvm::Type"** noundef nonnull align 8 dereferenceable(8) %2)
  ret %"class.llvm::ArrayType"* %11
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local { i64, i32 } @_ZN4llvmmlEmRKNS_8TypeSizeE(i64 noundef %0, %"class.llvm::TypeSize"* noundef nonnull align 8 dereferenceable(12) %1) #6 comdat {
  %3 = alloca %"class.llvm::TypeSize", align 8
  %4 = alloca i64, align 8
  %5 = alloca %"class.llvm::TypeSize"*, align 8
  store i64 %0, i64* %4, align 8
  store %"class.llvm::TypeSize"* %1, %"class.llvm::TypeSize"** %5, align 8
  %6 = load %"class.llvm::TypeSize"*, %"class.llvm::TypeSize"** %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call { i64, i32 } @_ZN4llvmmlERKNS_8TypeSizeEm(%"class.llvm::TypeSize"* noundef nonnull align 8 dereferenceable(12) %6, i64 noundef %7)
  %9 = bitcast %"class.llvm::TypeSize"* %3 to { i64, i32 }*
  %10 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 0
  %11 = extractvalue { i64, i32 } %8, 0
  store i64 %11, i64* %10, align 8
  %12 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 1
  %13 = extractvalue { i64, i32 } %8, 1
  store i32 %13, i32* %12, align 8
  %14 = bitcast %"class.llvm::TypeSize"* %3 to { i64, i32 }*
  %15 = load { i64, i32 }, { i64, i32 }* %14, align 8
  ret { i64, i32 } %15
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNK4llvm9ArrayType14getNumElementsEv(%"class.llvm::ArrayType"* noundef nonnull align 8 dereferenceable(40) %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::ArrayType"*, align 8
  store %"class.llvm::ArrayType"* %0, %"class.llvm::ArrayType"** %2, align 8
  %3 = load %"class.llvm::ArrayType"*, %"class.llvm::ArrayType"** %2, align 8
  %4 = getelementptr inbounds %"class.llvm::ArrayType", %"class.llvm::ArrayType"* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local { i64, i32 } @_ZNK4llvm10DataLayout22getTypeAllocSizeInBitsEPNS_4TypeE(%"class.llvm::DataLayout"* noundef nonnull align 8 dereferenceable(440) %0, %"class.llvm::Type"* noundef %1) #6 comdat align 2 {
  %3 = alloca %"class.llvm::TypeSize", align 8
  %4 = alloca %"class.llvm::DataLayout"*, align 8
  %5 = alloca %"class.llvm::Type"*, align 8
  %6 = alloca %"class.llvm::TypeSize", align 8
  store %"class.llvm::DataLayout"* %0, %"class.llvm::DataLayout"** %4, align 8
  store %"class.llvm::Type"* %1, %"class.llvm::Type"** %5, align 8
  %7 = load %"class.llvm::DataLayout"*, %"class.llvm::DataLayout"** %4, align 8
  %8 = load %"class.llvm::Type"*, %"class.llvm::Type"** %5, align 8
  %9 = call { i64, i32 } @_ZNK4llvm10DataLayout16getTypeAllocSizeEPNS_4TypeE(%"class.llvm::DataLayout"* noundef nonnull align 8 dereferenceable(440) %7, %"class.llvm::Type"* noundef %8)
  %10 = bitcast %"class.llvm::TypeSize"* %6 to { i64, i32 }*
  %11 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 0
  %12 = extractvalue { i64, i32 } %9, 0
  store i64 %12, i64* %11, align 8
  %13 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 1
  %14 = extractvalue { i64, i32 } %9, 1
  store i32 %14, i32* %13, align 8
  %15 = call { i64, i32 } @_ZN4llvmmlEiRKNS_8TypeSizeE(i32 noundef 8, %"class.llvm::TypeSize"* noundef nonnull align 8 dereferenceable(12) %6)
  %16 = bitcast %"class.llvm::TypeSize"* %3 to { i64, i32 }*
  %17 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 0
  %18 = extractvalue { i64, i32 } %15, 0
  store i64 %18, i64* %17, align 8
  %19 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 1
  %20 = extractvalue { i64, i32 } %15, 1
  store i32 %20, i32* %19, align 8
  %21 = bitcast %"class.llvm::TypeSize"* %3 to { i64, i32 }*
  %22 = load { i64, i32 }, { i64, i32 }* %21, align 8
  ret { i64, i32 } %22
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::Type"* @_ZNK4llvm9ArrayType14getElementTypeEv(%"class.llvm::ArrayType"* noundef nonnull align 8 dereferenceable(40) %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::ArrayType"*, align 8
  store %"class.llvm::ArrayType"* %0, %"class.llvm::ArrayType"** %2, align 8
  %3 = load %"class.llvm::ArrayType"*, %"class.llvm::ArrayType"** %2, align 8
  %4 = getelementptr inbounds %"class.llvm::ArrayType", %"class.llvm::ArrayType"* %3, i32 0, i32 1
  %5 = load %"class.llvm::Type"*, %"class.llvm::Type"** %4, align 8
  ret %"class.llvm::Type"* %5
}

declare noundef %"class.llvm::StructLayout"* @_ZNK4llvm10DataLayout15getStructLayoutEPNS_10StructTypeE(%"class.llvm::DataLayout"* noundef nonnull align 8 dereferenceable(440), %"class.llvm::StructType"* noundef) #10

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::StructType"* @_ZN4llvm4castINS_10StructTypeENS_4TypeEEENS_10cast_rettyIT_PT0_E8ret_typeES6_(%"class.llvm::Type"* noundef %0) #6 comdat {
  %2 = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"* %0, %"class.llvm::Type"** %2, align 8
  %3 = call noundef zeroext i1 @_ZN4llvm3isaINS_10StructTypeEPNS_4TypeEEEbRKT0_(%"class.llvm::Type"** noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %4, %1
  %6 = phi i1 [ false, %1 ], [ true, %4 ]
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  br label %10

8:                                                ; preds = %5
  call void @__assert_fail(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 noundef 269, i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @__PRETTY_FUNCTION__._ZN4llvm4castINS_10StructTypeENS_4TypeEEENS_10cast_rettyIT_PT0_E8ret_typeES6_, i64 0, i64 0)) #15
  unreachable

9:                                                ; No predecessors!
  br label %10

10:                                               ; preds = %9, %7
  %11 = call noundef %"class.llvm::StructType"* @_ZN4llvm16cast_convert_valINS_10StructTypeEPNS_4TypeES3_E4doitERKS3_(%"class.llvm::Type"** noundef nonnull align 8 dereferenceable(8) %2)
  ret %"class.llvm::StructType"* %11
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNK4llvm12StructLayout13getSizeInBitsEv(%"class.llvm::StructLayout"* noundef nonnull align 8 dereferenceable(16) %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::StructLayout"*, align 8
  store %"class.llvm::StructLayout"* %0, %"class.llvm::StructLayout"** %2, align 8
  %3 = load %"class.llvm::StructLayout"*, %"class.llvm::StructLayout"** %2, align 8
  %4 = getelementptr inbounds %"class.llvm::StructLayout", %"class.llvm::StructLayout"* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = mul i64 8, %5
  ret i64 %6
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4llvm4Type18getIntegerBitWidthEv(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"* %0, %"class.llvm::Type"** %2, align 8
  %3 = load %"class.llvm::Type"*, %"class.llvm::Type"** %2, align 8
  %4 = call noundef %"class.llvm::IntegerType"* @_ZN4llvm4castINS_11IntegerTypeEKNS_4TypeEEENS_10cast_rettyIT_PT0_E8ret_typeES7_(%"class.llvm::Type"* noundef %3)
  %5 = call noundef i32 @_ZNK4llvm11IntegerType11getBitWidthEv(%"class.llvm::IntegerType"* noundef nonnull align 8 dereferenceable(24) %4)
  ret i32 %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::VectorType"* @_ZN4llvm4castINS_10VectorTypeENS_4TypeEEENS_10cast_rettyIT_PT0_E8ret_typeES6_(%"class.llvm::Type"* noundef %0) #6 comdat {
  %2 = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"* %0, %"class.llvm::Type"** %2, align 8
  %3 = call noundef zeroext i1 @_ZN4llvm3isaINS_10VectorTypeEPNS_4TypeEEEbRKT0_(%"class.llvm::Type"** noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %4, %1
  %6 = phi i1 [ false, %1 ], [ true, %4 ]
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  br label %10

8:                                                ; preds = %5
  call void @__assert_fail(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 noundef 269, i8* noundef getelementptr inbounds ([93 x i8], [93 x i8]* @__PRETTY_FUNCTION__._ZN4llvm4castINS_10VectorTypeENS_4TypeEEENS_10cast_rettyIT_PT0_E8ret_typeES6_, i64 0, i64 0)) #15
  unreachable

9:                                                ; No predecessors!
  br label %10

10:                                               ; preds = %9, %7
  %11 = call noundef %"class.llvm::VectorType"* @_ZN4llvm16cast_convert_valINS_10VectorTypeEPNS_4TypeES3_E4doitERKS3_(%"class.llvm::Type"** noundef nonnull align 8 dereferenceable(8) %2)
  ret %"class.llvm::VectorType"* %11
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZNK4llvm10VectorType15getElementCountEv(%"class.llvm::VectorType"* noundef nonnull align 8 dereferenceable(36) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::ElementCount", align 4
  %3 = alloca %"class.llvm::VectorType"*, align 8
  %4 = alloca %"class.llvm::VectorType"*, align 8
  store %"class.llvm::VectorType"* %0, %"class.llvm::VectorType"** %3, align 8
  %5 = load %"class.llvm::VectorType"*, %"class.llvm::VectorType"** %3, align 8
  %6 = getelementptr inbounds %"class.llvm::VectorType", %"class.llvm::VectorType"* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  store %"class.llvm::VectorType"* %5, %"class.llvm::VectorType"** %4, align 8
  %8 = call noundef zeroext i1 @_ZN4llvm3isaINS_18ScalableVectorTypeEPKNS_10VectorTypeEEEbRKT0_(%"class.llvm::VectorType"** noundef nonnull align 8 dereferenceable(8) %4)
  %9 = call i64 @_ZN4llvm14LinearPolySizeINS_12ElementCountEE3getEjb(i32 noundef %7, i1 noundef zeroext %8)
  %10 = getelementptr inbounds %"class.llvm::ElementCount", %"class.llvm::ElementCount"* %2, i32 0, i32 0
  %11 = getelementptr inbounds %"class.llvm::LinearPolySize.128", %"class.llvm::LinearPolySize.128"* %10, i32 0, i32 0
  %12 = bitcast %"class.llvm::UnivariateLinearPolyBase.129"* %11 to i64*
  store i64 %9, i64* %12, align 4
  %13 = getelementptr inbounds %"class.llvm::ElementCount", %"class.llvm::ElementCount"* %2, i32 0, i32 0
  %14 = getelementptr inbounds %"class.llvm::LinearPolySize.128", %"class.llvm::LinearPolySize.128"* %13, i32 0, i32 0
  %15 = bitcast %"class.llvm::UnivariateLinearPolyBase.129"* %14 to i64*
  %16 = load i64, i64* %15, align 4
  ret i64 %16
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4llvm14LinearPolySizeINS_12ElementCountEE16getKnownMinValueEv(%"class.llvm::LinearPolySize.128"* noundef nonnull align 4 dereferenceable(8) %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::LinearPolySize.128"*, align 8
  store %"class.llvm::LinearPolySize.128"* %0, %"class.llvm::LinearPolySize.128"** %2, align 8
  %3 = load %"class.llvm::LinearPolySize.128"*, %"class.llvm::LinearPolySize.128"** %2, align 8
  %4 = bitcast %"class.llvm::LinearPolySize.128"* %3 to %"class.llvm::UnivariateLinearPolyBase.129"*
  %5 = getelementptr inbounds %"class.llvm::UnivariateLinearPolyBase.129", %"class.llvm::UnivariateLinearPolyBase.129"* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  ret i32 %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::Type"* @_ZNK4llvm10VectorType14getElementTypeEv(%"class.llvm::VectorType"* noundef nonnull align 8 dereferenceable(36) %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::VectorType"*, align 8
  store %"class.llvm::VectorType"* %0, %"class.llvm::VectorType"** %2, align 8
  %3 = load %"class.llvm::VectorType"*, %"class.llvm::VectorType"** %2, align 8
  %4 = getelementptr inbounds %"class.llvm::VectorType", %"class.llvm::VectorType"* %3, i32 0, i32 1
  %5 = load %"class.llvm::Type"*, %"class.llvm::Type"** %4, align 8
  ret %"class.llvm::Type"* %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNK4llvm8TypeSize12getFixedSizeEv(%"class.llvm::TypeSize"* noundef nonnull align 8 dereferenceable(12) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::TypeSize"*, align 8
  store %"class.llvm::TypeSize"* %0, %"class.llvm::TypeSize"** %2, align 8
  %3 = load %"class.llvm::TypeSize"*, %"class.llvm::TypeSize"** %2, align 8
  %4 = bitcast %"class.llvm::TypeSize"* %3 to %"class.llvm::LinearPolySize"*
  %5 = call noundef i64 @_ZNK4llvm14LinearPolySizeINS_8TypeSizeEE13getFixedValueEv(%"class.llvm::LinearPolySize"* noundef nonnull align 8 dereferenceable(12) %4)
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK4llvm14LinearPolySizeINS_12ElementCountEE10isScalableEv(%"class.llvm::LinearPolySize.128"* noundef nonnull align 4 dereferenceable(8) %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::LinearPolySize.128"*, align 8
  store %"class.llvm::LinearPolySize.128"* %0, %"class.llvm::LinearPolySize.128"** %2, align 8
  %3 = load %"class.llvm::LinearPolySize.128"*, %"class.llvm::LinearPolySize.128"** %2, align 8
  %4 = bitcast %"class.llvm::LinearPolySize.128"* %3 to %"class.llvm::UnivariateLinearPolyBase.129"*
  %5 = getelementptr inbounds %"class.llvm::UnivariateLinearPolyBase.129", %"class.llvm::UnivariateLinearPolyBase.129"* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 1
  ret i1 %7
}

; Function Attrs: noreturn
declare void @_ZN4llvm25llvm_unreachable_internalEPKcS1_j(i8* noundef, i8* noundef, i32 noundef) #13

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK4llvm4Type17isFloatingPointTyEv(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"* %0, %"class.llvm::Type"** %2, align 8
  %3 = load %"class.llvm::Type"*, %"class.llvm::Type"** %2, align 8
  %4 = call noundef i32 @_ZNK4llvm4Type9getTypeIDEv(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %3)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %1
  %7 = call noundef i32 @_ZNK4llvm4Type9getTypeIDEv(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %3)
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %24, label %9

9:                                                ; preds = %6
  %10 = call noundef i32 @_ZNK4llvm4Type9getTypeIDEv(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %3)
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %24, label %12

12:                                               ; preds = %9
  %13 = call noundef i32 @_ZNK4llvm4Type9getTypeIDEv(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %3)
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %24, label %15

15:                                               ; preds = %12
  %16 = call noundef i32 @_ZNK4llvm4Type9getTypeIDEv(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %3)
  %17 = icmp eq i32 %16, 4
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = call noundef i32 @_ZNK4llvm4Type9getTypeIDEv(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %3)
  %20 = icmp eq i32 %19, 5
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = call noundef i32 @_ZNK4llvm4Type9getTypeIDEv(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %3)
  %23 = icmp eq i32 %22, 6
  br label %24

24:                                               ; preds = %21, %18, %15, %12, %9, %6, %1
  %25 = phi i1 [ true, %18 ], [ true, %15 ], [ true, %12 ], [ true, %9 ], [ true, %6 ], [ true, %1 ], [ %23, %21 ]
  ret i1 %25
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK4llvm4Type10isVectorTyEv(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"* %0, %"class.llvm::Type"** %2, align 8
  %3 = load %"class.llvm::Type"*, %"class.llvm::Type"** %2, align 8
  %4 = call noundef i32 @_ZNK4llvm4Type9getTypeIDEv(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %3)
  %5 = icmp eq i32 %4, 19
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = call noundef i32 @_ZNK4llvm4Type9getTypeIDEv(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %3)
  %8 = icmp eq i32 %7, 18
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi i1 [ true, %1 ], [ %8, %6 ]
  ret i1 %10
}

declare noundef zeroext i1 @_ZNK4llvm4Type18isSizedDerivedTypeEPNS_15SmallPtrSetImplIPS0_EE(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24), %"class.llvm::SmallPtrSetImpl.126"* noundef) #10

declare noundef nonnull align 4 dereferenceable(16) %"struct.llvm::PointerAlignElem"* @_ZNK4llvm10DataLayout19getPointerAlignElemEj(%"class.llvm::DataLayout"* noundef nonnull align 8 dereferenceable(440), i32 noundef) #10

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::PointerType"* @_ZN4llvm4castINS_11PointerTypeENS_4TypeEEENS_10cast_rettyIT_PT0_E8ret_typeES6_(%"class.llvm::Type"* noundef %0) #6 comdat {
  %2 = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"* %0, %"class.llvm::Type"** %2, align 8
  %3 = call noundef zeroext i1 @_ZN4llvm3isaINS_11PointerTypeEPNS_4TypeEEEbRKT0_(%"class.llvm::Type"** noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %4, %1
  %6 = phi i1 [ false, %1 ], [ true, %4 ]
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  br label %10

8:                                                ; preds = %5
  call void @__assert_fail(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 noundef 269, i8* noundef getelementptr inbounds ([94 x i8], [94 x i8]* @__PRETTY_FUNCTION__._ZN4llvm4castINS_11PointerTypeENS_4TypeEEENS_10cast_rettyIT_PT0_E8ret_typeES6_, i64 0, i64 0)) #15
  unreachable

9:                                                ; No predecessors!
  br label %10

10:                                               ; preds = %9, %7
  %11 = call noundef %"class.llvm::PointerType"* @_ZN4llvm16cast_convert_valINS_11PointerTypeEPNS_4TypeES3_E4doitERKS3_(%"class.llvm::Type"** noundef nonnull align 8 dereferenceable(8) %2)
  ret %"class.llvm::PointerType"* %11
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::Type"* @_ZNK4llvm4Type13getScalarTypeEv(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::Type"*, align 8
  %3 = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"* %0, %"class.llvm::Type"** %3, align 8
  %4 = load %"class.llvm::Type"*, %"class.llvm::Type"** %3, align 8
  %5 = call noundef zeroext i1 @_ZNK4llvm4Type10isVectorTyEv(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %4)
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call noundef %"class.llvm::Type"* @_ZNK4llvm4Type16getContainedTypeEj(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 0)
  store %"class.llvm::Type"* %7, %"class.llvm::Type"** %2, align 8
  br label %9

8:                                                ; preds = %1
  store %"class.llvm::Type"* %4, %"class.llvm::Type"** %2, align 8
  br label %9

9:                                                ; preds = %8, %6
  %10 = load %"class.llvm::Type"*, %"class.llvm::Type"** %2, align 8
  ret %"class.llvm::Type"* %10
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4llvm11PointerType15getAddressSpaceEv(%"class.llvm::PointerType"* noundef nonnull align 8 dereferenceable(32) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::PointerType"*, align 8
  store %"class.llvm::PointerType"* %0, %"class.llvm::PointerType"** %2, align 8
  %3 = load %"class.llvm::PointerType"*, %"class.llvm::PointerType"** %2, align 8
  %4 = bitcast %"class.llvm::PointerType"* %3 to %"class.llvm::Type"*
  %5 = call noundef i32 @_ZNK4llvm4Type15getSubclassDataEv(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %4)
  ret i32 %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm3isaINS_11PointerTypeEPNS_4TypeEEEbRKT0_(%"class.llvm::Type"** noundef nonnull align 8 dereferenceable(8) %0) #6 comdat {
  %2 = alloca %"class.llvm::Type"**, align 8
  store %"class.llvm::Type"** %0, %"class.llvm::Type"*** %2, align 8
  %3 = load %"class.llvm::Type"**, %"class.llvm::Type"*** %2, align 8
  %4 = call noundef zeroext i1 @_ZN4llvm13isa_impl_wrapINS_11PointerTypeEKPNS_4TypeEPKS2_E4doitERS4_(%"class.llvm::Type"** noundef nonnull align 8 dereferenceable(8) %3)
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::PointerType"* @_ZN4llvm16cast_convert_valINS_11PointerTypeEPNS_4TypeES3_E4doitERKS3_(%"class.llvm::Type"** noundef nonnull align 8 dereferenceable(8) %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::Type"**, align 8
  %3 = alloca %"class.llvm::PointerType"*, align 8
  store %"class.llvm::Type"** %0, %"class.llvm::Type"*** %2, align 8
  %4 = load %"class.llvm::Type"**, %"class.llvm::Type"*** %2, align 8
  %5 = load %"class.llvm::Type"*, %"class.llvm::Type"** %4, align 8
  %6 = bitcast %"class.llvm::Type"* %5 to %"class.llvm::PointerType"*
  store %"class.llvm::PointerType"* %6, %"class.llvm::PointerType"** %3, align 8
  %7 = load %"class.llvm::PointerType"*, %"class.llvm::PointerType"** %3, align 8
  ret %"class.llvm::PointerType"* %7
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm13isa_impl_wrapINS_11PointerTypeEKPNS_4TypeEPKS2_E4doitERS4_(%"class.llvm::Type"** noundef nonnull align 8 dereferenceable(8) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::Type"**, align 8
  %3 = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"** %0, %"class.llvm::Type"*** %2, align 8
  %4 = load %"class.llvm::Type"**, %"class.llvm::Type"*** %2, align 8
  %5 = call noundef %"class.llvm::Type"* @_ZN4llvm13simplify_typeIKPNS_4TypeEE18getSimplifiedValueERS3_(%"class.llvm::Type"** noundef nonnull align 8 dereferenceable(8) %4)
  store %"class.llvm::Type"* %5, %"class.llvm::Type"** %3, align 8
  %6 = call noundef zeroext i1 @_ZN4llvm13isa_impl_wrapINS_11PointerTypeEPKNS_4TypeES4_E4doitERKS4_(%"class.llvm::Type"** noundef nonnull align 8 dereferenceable(8) %3)
  ret i1 %6
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm13isa_impl_wrapINS_11PointerTypeEPKNS_4TypeES4_E4doitERKS4_(%"class.llvm::Type"** noundef nonnull align 8 dereferenceable(8) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::Type"**, align 8
  store %"class.llvm::Type"** %0, %"class.llvm::Type"*** %2, align 8
  %3 = load %"class.llvm::Type"**, %"class.llvm::Type"*** %2, align 8
  %4 = load %"class.llvm::Type"*, %"class.llvm::Type"** %3, align 8
  %5 = call noundef zeroext i1 @_ZN4llvm11isa_impl_clINS_11PointerTypeEPKNS_4TypeEE4doitES4_(%"class.llvm::Type"* noundef %4)
  ret i1 %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::Type"* @_ZN4llvm13simplify_typeIKPNS_4TypeEE18getSimplifiedValueERS3_(%"class.llvm::Type"** noundef nonnull align 8 dereferenceable(8) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::Type"**, align 8
  store %"class.llvm::Type"** %0, %"class.llvm::Type"*** %2, align 8
  %3 = load %"class.llvm::Type"**, %"class.llvm::Type"*** %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) %"class.llvm::Type"** @_ZN4llvm13simplify_typeIPNS_4TypeEE18getSimplifiedValueERS2_(%"class.llvm::Type"** noundef nonnull align 8 dereferenceable(8) %3)
  %5 = load %"class.llvm::Type"*, %"class.llvm::Type"** %4, align 8
  ret %"class.llvm::Type"* %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm11isa_impl_clINS_11PointerTypeEPKNS_4TypeEE4doitES4_(%"class.llvm::Type"* noundef %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"* %0, %"class.llvm::Type"** %2, align 8
  %3 = load %"class.llvm::Type"*, %"class.llvm::Type"** %2, align 8
  %4 = icmp ne %"class.llvm::Type"* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %5, %1
  %7 = phi i1 [ false, %1 ], [ true, %5 ]
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  br label %11

9:                                                ; preds = %6
  call void @__assert_fail(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 noundef 104, i8* noundef getelementptr inbounds ([141 x i8], [141 x i8]* @__PRETTY_FUNCTION__._ZN4llvm11isa_impl_clINS_11PointerTypeEPKNS_4TypeEE4doitES4_, i64 0, i64 0)) #15
  unreachable

10:                                               ; No predecessors!
  br label %11

11:                                               ; preds = %10, %8
  %12 = load %"class.llvm::Type"*, %"class.llvm::Type"** %2, align 8
  %13 = call noundef zeroext i1 @_ZN4llvm8isa_implINS_11PointerTypeENS_4TypeEvE4doitERKS2_(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %12)
  ret i1 %13
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm8isa_implINS_11PointerTypeENS_4TypeEvE4doitERKS2_(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"* %0, %"class.llvm::Type"** %2, align 8
  %3 = load %"class.llvm::Type"*, %"class.llvm::Type"** %2, align 8
  %4 = call noundef i32 @_ZNK4llvm4Type9getTypeIDEv(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %3)
  %5 = icmp eq i32 %4, 15
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"class.llvm::Type"** @_ZN4llvm13simplify_typeIPNS_4TypeEE18getSimplifiedValueERS2_(%"class.llvm::Type"** noundef nonnull align 8 dereferenceable(8) %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::Type"**, align 8
  store %"class.llvm::Type"** %0, %"class.llvm::Type"*** %2, align 8
  %3 = load %"class.llvm::Type"**, %"class.llvm::Type"*** %2, align 8
  ret %"class.llvm::Type"** %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::Type"* @_ZNK4llvm4Type16getContainedTypeEj(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) #4 comdat align 2 {
  %3 = alloca %"class.llvm::Type"*, align 8
  %4 = alloca i32, align 4
  store %"class.llvm::Type"* %0, %"class.llvm::Type"** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %"class.llvm::Type"*, %"class.llvm::Type"** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = getelementptr inbounds %"class.llvm::Type", %"class.llvm::Type"* %5, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %10, %2
  %12 = phi i1 [ false, %2 ], [ true, %10 ]
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  br label %16

14:                                               ; preds = %11
  call void @__assert_fail(i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.24, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i64 0, i64 0), i32 noundef 338, i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @__PRETTY_FUNCTION__._ZNK4llvm4Type16getContainedTypeEj, i64 0, i64 0)) #15
  unreachable

15:                                               ; No predecessors!
  br label %16

16:                                               ; preds = %15, %13
  %17 = getelementptr inbounds %"class.llvm::Type", %"class.llvm::Type"* %5, i32 0, i32 3
  %18 = load %"class.llvm::Type"**, %"class.llvm::Type"*** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %"class.llvm::Type"*, %"class.llvm::Type"** %18, i64 %20
  %22 = load %"class.llvm::Type"*, %"class.llvm::Type"** %21, align 8
  ret %"class.llvm::Type"* %22
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4llvm4Type15getSubclassDataEv(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"* %0, %"class.llvm::Type"** %2, align 8
  %3 = load %"class.llvm::Type"*, %"class.llvm::Type"** %2, align 8
  %4 = getelementptr inbounds %"class.llvm::Type", %"class.llvm::Type"* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = lshr i32 %5, 8
  ret i32 %6
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm3isaINS_9ArrayTypeEPNS_4TypeEEEbRKT0_(%"class.llvm::Type"** noundef nonnull align 8 dereferenceable(8) %0) #6 comdat {
  %2 = alloca %"class.llvm::Type"**, align 8
  store %"class.llvm::Type"** %0, %"class.llvm::Type"*** %2, align 8
  %3 = load %"class.llvm::Type"**, %"class.llvm::Type"*** %2, align 8
  %4 = call noundef zeroext i1 @_ZN4llvm13isa_impl_wrapINS_9ArrayTypeEKPNS_4TypeEPKS2_E4doitERS4_(%"class.llvm::Type"** noundef nonnull align 8 dereferenceable(8) %3)
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::ArrayType"* @_ZN4llvm16cast_convert_valINS_9ArrayTypeEPNS_4TypeES3_E4doitERKS3_(%"class.llvm::Type"** noundef nonnull align 8 dereferenceable(8) %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::Type"**, align 8
  %3 = alloca %"class.llvm::ArrayType"*, align 8
  store %"class.llvm::Type"** %0, %"class.llvm::Type"*** %2, align 8
  %4 = load %"class.llvm::Type"**, %"class.llvm::Type"*** %2, align 8
  %5 = load %"class.llvm::Type"*, %"class.llvm::Type"** %4, align 8
  %6 = bitcast %"class.llvm::Type"* %5 to %"class.llvm::ArrayType"*
  store %"class.llvm::ArrayType"* %6, %"class.llvm::ArrayType"** %3, align 8
  %7 = load %"class.llvm::ArrayType"*, %"class.llvm::ArrayType"** %3, align 8
  ret %"class.llvm::ArrayType"* %7
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm13isa_impl_wrapINS_9ArrayTypeEKPNS_4TypeEPKS2_E4doitERS4_(%"class.llvm::Type"** noundef nonnull align 8 dereferenceable(8) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::Type"**, align 8
  %3 = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"** %0, %"class.llvm::Type"*** %2, align 8
  %4 = load %"class.llvm::Type"**, %"class.llvm::Type"*** %2, align 8
  %5 = call noundef %"class.llvm::Type"* @_ZN4llvm13simplify_typeIKPNS_4TypeEE18getSimplifiedValueERS3_(%"class.llvm::Type"** noundef nonnull align 8 dereferenceable(8) %4)
  store %"class.llvm::Type"* %5, %"class.llvm::Type"** %3, align 8
  %6 = call noundef zeroext i1 @_ZN4llvm13isa_impl_wrapINS_9ArrayTypeEPKNS_4TypeES4_E4doitERKS4_(%"class.llvm::Type"** noundef nonnull align 8 dereferenceable(8) %3)
  ret i1 %6
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm13isa_impl_wrapINS_9ArrayTypeEPKNS_4TypeES4_E4doitERKS4_(%"class.llvm::Type"** noundef nonnull align 8 dereferenceable(8) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::Type"**, align 8
  store %"class.llvm::Type"** %0, %"class.llvm::Type"*** %2, align 8
  %3 = load %"class.llvm::Type"**, %"class.llvm::Type"*** %2, align 8
  %4 = load %"class.llvm::Type"*, %"class.llvm::Type"** %3, align 8
  %5 = call noundef zeroext i1 @_ZN4llvm11isa_impl_clINS_9ArrayTypeEPKNS_4TypeEE4doitES4_(%"class.llvm::Type"* noundef %4)
  ret i1 %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm11isa_impl_clINS_9ArrayTypeEPKNS_4TypeEE4doitES4_(%"class.llvm::Type"* noundef %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"* %0, %"class.llvm::Type"** %2, align 8
  %3 = load %"class.llvm::Type"*, %"class.llvm::Type"** %2, align 8
  %4 = icmp ne %"class.llvm::Type"* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %5, %1
  %7 = phi i1 [ false, %1 ], [ true, %5 ]
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  br label %11

9:                                                ; preds = %6
  call void @__assert_fail(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 noundef 104, i8* noundef getelementptr inbounds ([137 x i8], [137 x i8]* @__PRETTY_FUNCTION__._ZN4llvm11isa_impl_clINS_9ArrayTypeEPKNS_4TypeEE4doitES4_, i64 0, i64 0)) #15
  unreachable

10:                                               ; No predecessors!
  br label %11

11:                                               ; preds = %10, %8
  %12 = load %"class.llvm::Type"*, %"class.llvm::Type"** %2, align 8
  %13 = call noundef zeroext i1 @_ZN4llvm8isa_implINS_9ArrayTypeENS_4TypeEvE4doitERKS2_(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %12)
  ret i1 %13
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm8isa_implINS_9ArrayTypeENS_4TypeEvE4doitERKS2_(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"* %0, %"class.llvm::Type"** %2, align 8
  %3 = load %"class.llvm::Type"*, %"class.llvm::Type"** %2, align 8
  %4 = call noundef zeroext i1 @_ZN4llvm9ArrayType7classofEPKNS_4TypeE(%"class.llvm::Type"* noundef %3)
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm9ArrayType7classofEPKNS_4TypeE(%"class.llvm::Type"* noundef %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"* %0, %"class.llvm::Type"** %2, align 8
  %3 = load %"class.llvm::Type"*, %"class.llvm::Type"** %2, align 8
  %4 = call noundef i32 @_ZNK4llvm4Type9getTypeIDEv(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %3)
  %5 = icmp eq i32 %4, 17
  ret i1 %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local { i64, i32 } @_ZN4llvmmlERKNS_8TypeSizeEm(%"class.llvm::TypeSize"* noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %1) #6 comdat {
  %3 = alloca %"class.llvm::TypeSize", align 8
  %4 = alloca %"class.llvm::TypeSize"*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %"class.llvm::TypeSize", align 8
  store %"class.llvm::TypeSize"* %0, %"class.llvm::TypeSize"** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %"class.llvm::TypeSize"*, %"class.llvm::TypeSize"** %4, align 8
  %8 = bitcast %"class.llvm::TypeSize"* %6 to i8*
  %9 = bitcast %"class.llvm::TypeSize"* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 16, i1 false)
  %10 = load i64, i64* %5, align 8
  %11 = call noundef nonnull align 8 dereferenceable(12) %"class.llvm::TypeSize"* @_ZN4llvmmLERNS_8TypeSizeEm(%"class.llvm::TypeSize"* noundef nonnull align 8 dereferenceable(12) %6, i64 noundef %10)
  %12 = bitcast %"class.llvm::TypeSize"* %3 to i8*
  %13 = bitcast %"class.llvm::TypeSize"* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 16, i1 false)
  %14 = bitcast %"class.llvm::TypeSize"* %3 to { i64, i32 }*
  %15 = load { i64, i32 }, { i64, i32 }* %14, align 8
  ret { i64, i32 } %15
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(12) %"class.llvm::TypeSize"* @_ZN4llvmmLERNS_8TypeSizeEm(%"class.llvm::TypeSize"* noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %1) #4 comdat {
  %3 = alloca %"class.llvm::TypeSize"*, align 8
  %4 = alloca i64, align 8
  store %"class.llvm::TypeSize"* %0, %"class.llvm::TypeSize"** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load %"class.llvm::TypeSize"*, %"class.llvm::TypeSize"** %3, align 8
  %7 = bitcast %"class.llvm::TypeSize"* %6 to %"class.llvm::UnivariateLinearPolyBase"*
  %8 = getelementptr inbounds %"class.llvm::UnivariateLinearPolyBase", %"class.llvm::UnivariateLinearPolyBase"* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = mul i64 %9, %5
  store i64 %10, i64* %8, align 8
  %11 = load %"class.llvm::TypeSize"*, %"class.llvm::TypeSize"** %3, align 8
  ret %"class.llvm::TypeSize"* %11
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local { i64, i32 } @_ZN4llvmmlEiRKNS_8TypeSizeE(i32 noundef %0, %"class.llvm::TypeSize"* noundef nonnull align 8 dereferenceable(12) %1) #6 comdat {
  %3 = alloca %"class.llvm::TypeSize", align 8
  %4 = alloca i32, align 4
  %5 = alloca %"class.llvm::TypeSize"*, align 8
  store i32 %0, i32* %4, align 4
  store %"class.llvm::TypeSize"* %1, %"class.llvm::TypeSize"** %5, align 8
  %6 = load %"class.llvm::TypeSize"*, %"class.llvm::TypeSize"** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call { i64, i32 } @_ZN4llvmmlERKNS_8TypeSizeEi(%"class.llvm::TypeSize"* noundef nonnull align 8 dereferenceable(12) %6, i32 noundef %7)
  %9 = bitcast %"class.llvm::TypeSize"* %3 to { i64, i32 }*
  %10 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 0
  %11 = extractvalue { i64, i32 } %8, 0
  store i64 %11, i64* %10, align 8
  %12 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 1
  %13 = extractvalue { i64, i32 } %8, 1
  store i32 %13, i32* %12, align 8
  %14 = bitcast %"class.llvm::TypeSize"* %3 to { i64, i32 }*
  %15 = load { i64, i32 }, { i64, i32 }* %14, align 8
  ret { i64, i32 } %15
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local { i64, i32 } @_ZN4llvmmlERKNS_8TypeSizeEi(%"class.llvm::TypeSize"* noundef nonnull align 8 dereferenceable(12) %0, i32 noundef %1) #6 comdat {
  %3 = alloca %"class.llvm::TypeSize", align 8
  %4 = alloca %"class.llvm::TypeSize"*, align 8
  %5 = alloca i32, align 4
  store %"class.llvm::TypeSize"* %0, %"class.llvm::TypeSize"** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %"class.llvm::TypeSize"*, %"class.llvm::TypeSize"** %4, align 8
  %7 = load i32, i32* %5, align 4
  %8 = sext i32 %7 to i64
  %9 = call { i64, i32 } @_ZN4llvmmlERKNS_8TypeSizeEm(%"class.llvm::TypeSize"* noundef nonnull align 8 dereferenceable(12) %6, i64 noundef %8)
  %10 = bitcast %"class.llvm::TypeSize"* %3 to { i64, i32 }*
  %11 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 0
  %12 = extractvalue { i64, i32 } %9, 0
  store i64 %12, i64* %11, align 8
  %13 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %10, i32 0, i32 1
  %14 = extractvalue { i64, i32 } %9, 1
  store i32 %14, i32* %13, align 8
  %15 = bitcast %"class.llvm::TypeSize"* %3 to { i64, i32 }*
  %16 = load { i64, i32 }, { i64, i32 }* %15, align 8
  ret { i64, i32 } %16
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm3isaINS_10StructTypeEPNS_4TypeEEEbRKT0_(%"class.llvm::Type"** noundef nonnull align 8 dereferenceable(8) %0) #6 comdat {
  %2 = alloca %"class.llvm::Type"**, align 8
  store %"class.llvm::Type"** %0, %"class.llvm::Type"*** %2, align 8
  %3 = load %"class.llvm::Type"**, %"class.llvm::Type"*** %2, align 8
  %4 = call noundef zeroext i1 @_ZN4llvm13isa_impl_wrapINS_10StructTypeEKPNS_4TypeEPKS2_E4doitERS4_(%"class.llvm::Type"** noundef nonnull align 8 dereferenceable(8) %3)
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::StructType"* @_ZN4llvm16cast_convert_valINS_10StructTypeEPNS_4TypeES3_E4doitERKS3_(%"class.llvm::Type"** noundef nonnull align 8 dereferenceable(8) %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::Type"**, align 8
  %3 = alloca %"class.llvm::StructType"*, align 8
  store %"class.llvm::Type"** %0, %"class.llvm::Type"*** %2, align 8
  %4 = load %"class.llvm::Type"**, %"class.llvm::Type"*** %2, align 8
  %5 = load %"class.llvm::Type"*, %"class.llvm::Type"** %4, align 8
  %6 = bitcast %"class.llvm::Type"* %5 to %"class.llvm::StructType"*
  store %"class.llvm::StructType"* %6, %"class.llvm::StructType"** %3, align 8
  %7 = load %"class.llvm::StructType"*, %"class.llvm::StructType"** %3, align 8
  ret %"class.llvm::StructType"* %7
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm13isa_impl_wrapINS_10StructTypeEKPNS_4TypeEPKS2_E4doitERS4_(%"class.llvm::Type"** noundef nonnull align 8 dereferenceable(8) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::Type"**, align 8
  %3 = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"** %0, %"class.llvm::Type"*** %2, align 8
  %4 = load %"class.llvm::Type"**, %"class.llvm::Type"*** %2, align 8
  %5 = call noundef %"class.llvm::Type"* @_ZN4llvm13simplify_typeIKPNS_4TypeEE18getSimplifiedValueERS3_(%"class.llvm::Type"** noundef nonnull align 8 dereferenceable(8) %4)
  store %"class.llvm::Type"* %5, %"class.llvm::Type"** %3, align 8
  %6 = call noundef zeroext i1 @_ZN4llvm13isa_impl_wrapINS_10StructTypeEPKNS_4TypeES4_E4doitERKS4_(%"class.llvm::Type"** noundef nonnull align 8 dereferenceable(8) %3)
  ret i1 %6
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm13isa_impl_wrapINS_10StructTypeEPKNS_4TypeES4_E4doitERKS4_(%"class.llvm::Type"** noundef nonnull align 8 dereferenceable(8) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::Type"**, align 8
  store %"class.llvm::Type"** %0, %"class.llvm::Type"*** %2, align 8
  %3 = load %"class.llvm::Type"**, %"class.llvm::Type"*** %2, align 8
  %4 = load %"class.llvm::Type"*, %"class.llvm::Type"** %3, align 8
  %5 = call noundef zeroext i1 @_ZN4llvm11isa_impl_clINS_10StructTypeEPKNS_4TypeEE4doitES4_(%"class.llvm::Type"* noundef %4)
  ret i1 %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm11isa_impl_clINS_10StructTypeEPKNS_4TypeEE4doitES4_(%"class.llvm::Type"* noundef %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"* %0, %"class.llvm::Type"** %2, align 8
  %3 = load %"class.llvm::Type"*, %"class.llvm::Type"** %2, align 8
  %4 = icmp ne %"class.llvm::Type"* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %5, %1
  %7 = phi i1 [ false, %1 ], [ true, %5 ]
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  br label %11

9:                                                ; preds = %6
  call void @__assert_fail(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 noundef 104, i8* noundef getelementptr inbounds ([139 x i8], [139 x i8]* @__PRETTY_FUNCTION__._ZN4llvm11isa_impl_clINS_10StructTypeEPKNS_4TypeEE4doitES4_, i64 0, i64 0)) #15
  unreachable

10:                                               ; No predecessors!
  br label %11

11:                                               ; preds = %10, %8
  %12 = load %"class.llvm::Type"*, %"class.llvm::Type"** %2, align 8
  %13 = call noundef zeroext i1 @_ZN4llvm8isa_implINS_10StructTypeENS_4TypeEvE4doitERKS2_(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %12)
  ret i1 %13
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm8isa_implINS_10StructTypeENS_4TypeEvE4doitERKS2_(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"* %0, %"class.llvm::Type"** %2, align 8
  %3 = load %"class.llvm::Type"*, %"class.llvm::Type"** %2, align 8
  %4 = call noundef zeroext i1 @_ZN4llvm10StructType7classofEPKNS_4TypeE(%"class.llvm::Type"* noundef %3)
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm10StructType7classofEPKNS_4TypeE(%"class.llvm::Type"* noundef %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"* %0, %"class.llvm::Type"** %2, align 8
  %3 = load %"class.llvm::Type"*, %"class.llvm::Type"** %2, align 8
  %4 = call noundef i32 @_ZNK4llvm4Type9getTypeIDEv(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %3)
  %5 = icmp eq i32 %4, 16
  ret i1 %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::IntegerType"* @_ZN4llvm4castINS_11IntegerTypeEKNS_4TypeEEENS_10cast_rettyIT_PT0_E8ret_typeES7_(%"class.llvm::Type"* noundef %0) #6 comdat {
  %2 = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"* %0, %"class.llvm::Type"** %2, align 8
  %3 = call noundef zeroext i1 @_ZN4llvm3isaINS_11IntegerTypeEPKNS_4TypeEEEbRKT0_(%"class.llvm::Type"** noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %4, %1
  %6 = phi i1 [ false, %1 ], [ true, %4 ]
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  br label %10

8:                                                ; preds = %5
  call void @__assert_fail(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 noundef 269, i8* noundef getelementptr inbounds ([100 x i8], [100 x i8]* @__PRETTY_FUNCTION__._ZN4llvm4castINS_11IntegerTypeEKNS_4TypeEEENS_10cast_rettyIT_PT0_E8ret_typeES7_, i64 0, i64 0)) #15
  unreachable

9:                                                ; No predecessors!
  br label %10

10:                                               ; preds = %9, %7
  %11 = call noundef %"class.llvm::IntegerType"* @_ZN4llvm16cast_convert_valINS_11IntegerTypeEPKNS_4TypeES4_E4doitERKS4_(%"class.llvm::Type"** noundef nonnull align 8 dereferenceable(8) %2)
  ret %"class.llvm::IntegerType"* %11
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4llvm11IntegerType11getBitWidthEv(%"class.llvm::IntegerType"* noundef nonnull align 8 dereferenceable(24) %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::IntegerType"*, align 8
  store %"class.llvm::IntegerType"* %0, %"class.llvm::IntegerType"** %2, align 8
  %3 = load %"class.llvm::IntegerType"*, %"class.llvm::IntegerType"** %2, align 8
  %4 = bitcast %"class.llvm::IntegerType"* %3 to %"class.llvm::Type"*
  %5 = call noundef i32 @_ZNK4llvm4Type15getSubclassDataEv(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %4)
  ret i32 %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm3isaINS_11IntegerTypeEPKNS_4TypeEEEbRKT0_(%"class.llvm::Type"** noundef nonnull align 8 dereferenceable(8) %0) #6 comdat {
  %2 = alloca %"class.llvm::Type"**, align 8
  store %"class.llvm::Type"** %0, %"class.llvm::Type"*** %2, align 8
  %3 = load %"class.llvm::Type"**, %"class.llvm::Type"*** %2, align 8
  %4 = call noundef zeroext i1 @_ZN4llvm13isa_impl_wrapINS_11IntegerTypeEKPKNS_4TypeES4_E4doitERS5_(%"class.llvm::Type"** noundef nonnull align 8 dereferenceable(8) %3)
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::IntegerType"* @_ZN4llvm16cast_convert_valINS_11IntegerTypeEPKNS_4TypeES4_E4doitERKS4_(%"class.llvm::Type"** noundef nonnull align 8 dereferenceable(8) %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::Type"**, align 8
  %3 = alloca %"class.llvm::IntegerType"*, align 8
  store %"class.llvm::Type"** %0, %"class.llvm::Type"*** %2, align 8
  %4 = load %"class.llvm::Type"**, %"class.llvm::Type"*** %2, align 8
  %5 = load %"class.llvm::Type"*, %"class.llvm::Type"** %4, align 8
  %6 = bitcast %"class.llvm::Type"* %5 to %"class.llvm::IntegerType"*
  store %"class.llvm::IntegerType"* %6, %"class.llvm::IntegerType"** %3, align 8
  %7 = load %"class.llvm::IntegerType"*, %"class.llvm::IntegerType"** %3, align 8
  ret %"class.llvm::IntegerType"* %7
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm13isa_impl_wrapINS_11IntegerTypeEKPKNS_4TypeES4_E4doitERS5_(%"class.llvm::Type"** noundef nonnull align 8 dereferenceable(8) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::Type"**, align 8
  %3 = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"** %0, %"class.llvm::Type"*** %2, align 8
  %4 = load %"class.llvm::Type"**, %"class.llvm::Type"*** %2, align 8
  %5 = call noundef %"class.llvm::Type"* @_ZN4llvm13simplify_typeIKPKNS_4TypeEE18getSimplifiedValueERS4_(%"class.llvm::Type"** noundef nonnull align 8 dereferenceable(8) %4)
  store %"class.llvm::Type"* %5, %"class.llvm::Type"** %3, align 8
  %6 = call noundef zeroext i1 @_ZN4llvm13isa_impl_wrapINS_11IntegerTypeEPKNS_4TypeES4_E4doitERKS4_(%"class.llvm::Type"** noundef nonnull align 8 dereferenceable(8) %3)
  ret i1 %6
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm13isa_impl_wrapINS_11IntegerTypeEPKNS_4TypeES4_E4doitERKS4_(%"class.llvm::Type"** noundef nonnull align 8 dereferenceable(8) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::Type"**, align 8
  store %"class.llvm::Type"** %0, %"class.llvm::Type"*** %2, align 8
  %3 = load %"class.llvm::Type"**, %"class.llvm::Type"*** %2, align 8
  %4 = load %"class.llvm::Type"*, %"class.llvm::Type"** %3, align 8
  %5 = call noundef zeroext i1 @_ZN4llvm11isa_impl_clINS_11IntegerTypeEPKNS_4TypeEE4doitES4_(%"class.llvm::Type"* noundef %4)
  ret i1 %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::Type"* @_ZN4llvm13simplify_typeIKPKNS_4TypeEE18getSimplifiedValueERS4_(%"class.llvm::Type"** noundef nonnull align 8 dereferenceable(8) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::Type"**, align 8
  store %"class.llvm::Type"** %0, %"class.llvm::Type"*** %2, align 8
  %3 = load %"class.llvm::Type"**, %"class.llvm::Type"*** %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) %"class.llvm::Type"** @_ZN4llvm13simplify_typeIPKNS_4TypeEE18getSimplifiedValueERS3_(%"class.llvm::Type"** noundef nonnull align 8 dereferenceable(8) %3)
  %5 = load %"class.llvm::Type"*, %"class.llvm::Type"** %4, align 8
  ret %"class.llvm::Type"* %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm11isa_impl_clINS_11IntegerTypeEPKNS_4TypeEE4doitES4_(%"class.llvm::Type"* noundef %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"* %0, %"class.llvm::Type"** %2, align 8
  %3 = load %"class.llvm::Type"*, %"class.llvm::Type"** %2, align 8
  %4 = icmp ne %"class.llvm::Type"* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %5, %1
  %7 = phi i1 [ false, %1 ], [ true, %5 ]
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  br label %11

9:                                                ; preds = %6
  call void @__assert_fail(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 noundef 104, i8* noundef getelementptr inbounds ([141 x i8], [141 x i8]* @__PRETTY_FUNCTION__._ZN4llvm11isa_impl_clINS_11IntegerTypeEPKNS_4TypeEE4doitES4_, i64 0, i64 0)) #15
  unreachable

10:                                               ; No predecessors!
  br label %11

11:                                               ; preds = %10, %8
  %12 = load %"class.llvm::Type"*, %"class.llvm::Type"** %2, align 8
  %13 = call noundef zeroext i1 @_ZN4llvm8isa_implINS_11IntegerTypeENS_4TypeEvE4doitERKS2_(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %12)
  ret i1 %13
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm8isa_implINS_11IntegerTypeENS_4TypeEvE4doitERKS2_(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"* %0, %"class.llvm::Type"** %2, align 8
  %3 = load %"class.llvm::Type"*, %"class.llvm::Type"** %2, align 8
  %4 = call noundef zeroext i1 @_ZN4llvm11IntegerType7classofEPKNS_4TypeE(%"class.llvm::Type"* noundef %3)
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm11IntegerType7classofEPKNS_4TypeE(%"class.llvm::Type"* noundef %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"* %0, %"class.llvm::Type"** %2, align 8
  %3 = load %"class.llvm::Type"*, %"class.llvm::Type"** %2, align 8
  %4 = call noundef i32 @_ZNK4llvm4Type9getTypeIDEv(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %3)
  %5 = icmp eq i32 %4, 13
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"class.llvm::Type"** @_ZN4llvm13simplify_typeIPKNS_4TypeEE18getSimplifiedValueERS3_(%"class.llvm::Type"** noundef nonnull align 8 dereferenceable(8) %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::Type"**, align 8
  store %"class.llvm::Type"** %0, %"class.llvm::Type"*** %2, align 8
  %3 = load %"class.llvm::Type"**, %"class.llvm::Type"*** %2, align 8
  ret %"class.llvm::Type"** %3
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm3isaINS_10VectorTypeEPNS_4TypeEEEbRKT0_(%"class.llvm::Type"** noundef nonnull align 8 dereferenceable(8) %0) #6 comdat {
  %2 = alloca %"class.llvm::Type"**, align 8
  store %"class.llvm::Type"** %0, %"class.llvm::Type"*** %2, align 8
  %3 = load %"class.llvm::Type"**, %"class.llvm::Type"*** %2, align 8
  %4 = call noundef zeroext i1 @_ZN4llvm13isa_impl_wrapINS_10VectorTypeEKPNS_4TypeEPKS2_E4doitERS4_(%"class.llvm::Type"** noundef nonnull align 8 dereferenceable(8) %3)
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::VectorType"* @_ZN4llvm16cast_convert_valINS_10VectorTypeEPNS_4TypeES3_E4doitERKS3_(%"class.llvm::Type"** noundef nonnull align 8 dereferenceable(8) %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::Type"**, align 8
  %3 = alloca %"class.llvm::VectorType"*, align 8
  store %"class.llvm::Type"** %0, %"class.llvm::Type"*** %2, align 8
  %4 = load %"class.llvm::Type"**, %"class.llvm::Type"*** %2, align 8
  %5 = load %"class.llvm::Type"*, %"class.llvm::Type"** %4, align 8
  %6 = bitcast %"class.llvm::Type"* %5 to %"class.llvm::VectorType"*
  store %"class.llvm::VectorType"* %6, %"class.llvm::VectorType"** %3, align 8
  %7 = load %"class.llvm::VectorType"*, %"class.llvm::VectorType"** %3, align 8
  ret %"class.llvm::VectorType"* %7
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm13isa_impl_wrapINS_10VectorTypeEKPNS_4TypeEPKS2_E4doitERS4_(%"class.llvm::Type"** noundef nonnull align 8 dereferenceable(8) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::Type"**, align 8
  %3 = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"** %0, %"class.llvm::Type"*** %2, align 8
  %4 = load %"class.llvm::Type"**, %"class.llvm::Type"*** %2, align 8
  %5 = call noundef %"class.llvm::Type"* @_ZN4llvm13simplify_typeIKPNS_4TypeEE18getSimplifiedValueERS3_(%"class.llvm::Type"** noundef nonnull align 8 dereferenceable(8) %4)
  store %"class.llvm::Type"* %5, %"class.llvm::Type"** %3, align 8
  %6 = call noundef zeroext i1 @_ZN4llvm13isa_impl_wrapINS_10VectorTypeEPKNS_4TypeES4_E4doitERKS4_(%"class.llvm::Type"** noundef nonnull align 8 dereferenceable(8) %3)
  ret i1 %6
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm13isa_impl_wrapINS_10VectorTypeEPKNS_4TypeES4_E4doitERKS4_(%"class.llvm::Type"** noundef nonnull align 8 dereferenceable(8) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::Type"**, align 8
  store %"class.llvm::Type"** %0, %"class.llvm::Type"*** %2, align 8
  %3 = load %"class.llvm::Type"**, %"class.llvm::Type"*** %2, align 8
  %4 = load %"class.llvm::Type"*, %"class.llvm::Type"** %3, align 8
  %5 = call noundef zeroext i1 @_ZN4llvm11isa_impl_clINS_10VectorTypeEPKNS_4TypeEE4doitES4_(%"class.llvm::Type"* noundef %4)
  ret i1 %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm11isa_impl_clINS_10VectorTypeEPKNS_4TypeEE4doitES4_(%"class.llvm::Type"* noundef %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"* %0, %"class.llvm::Type"** %2, align 8
  %3 = load %"class.llvm::Type"*, %"class.llvm::Type"** %2, align 8
  %4 = icmp ne %"class.llvm::Type"* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %5, %1
  %7 = phi i1 [ false, %1 ], [ true, %5 ]
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  br label %11

9:                                                ; preds = %6
  call void @__assert_fail(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 noundef 104, i8* noundef getelementptr inbounds ([139 x i8], [139 x i8]* @__PRETTY_FUNCTION__._ZN4llvm11isa_impl_clINS_10VectorTypeEPKNS_4TypeEE4doitES4_, i64 0, i64 0)) #15
  unreachable

10:                                               ; No predecessors!
  br label %11

11:                                               ; preds = %10, %8
  %12 = load %"class.llvm::Type"*, %"class.llvm::Type"** %2, align 8
  %13 = call noundef zeroext i1 @_ZN4llvm8isa_implINS_10VectorTypeENS_4TypeEvE4doitERKS2_(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %12)
  ret i1 %13
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm8isa_implINS_10VectorTypeENS_4TypeEvE4doitERKS2_(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"* %0, %"class.llvm::Type"** %2, align 8
  %3 = load %"class.llvm::Type"*, %"class.llvm::Type"** %2, align 8
  %4 = call noundef zeroext i1 @_ZN4llvm10VectorType7classofEPKNS_4TypeE(%"class.llvm::Type"* noundef %3)
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm10VectorType7classofEPKNS_4TypeE(%"class.llvm::Type"* noundef %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"* %0, %"class.llvm::Type"** %2, align 8
  %3 = load %"class.llvm::Type"*, %"class.llvm::Type"** %2, align 8
  %4 = call noundef i32 @_ZNK4llvm4Type9getTypeIDEv(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %3)
  %5 = icmp eq i32 %4, 18
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load %"class.llvm::Type"*, %"class.llvm::Type"** %2, align 8
  %8 = call noundef i32 @_ZNK4llvm4Type9getTypeIDEv(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %7)
  %9 = icmp eq i32 %8, 19
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i1 [ true, %1 ], [ %9, %6 ]
  ret i1 %11
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZN4llvm14LinearPolySizeINS_12ElementCountEE3getEjb(i32 noundef %0, i1 noundef zeroext %1) #6 comdat align 2 {
  %3 = alloca %"class.llvm::ElementCount", align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca %"class.llvm::LinearPolySize.128", align 4
  store i32 %0, i32* %4, align 4
  %7 = zext i1 %1 to i8
  store i8 %7, i8* %5, align 1
  %8 = load i32, i32* %4, align 4
  %9 = load i8, i8* %5, align 1
  %10 = trunc i8 %9 to i1
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 1, i32 0
  call void @_ZN4llvm14LinearPolySizeINS_12ElementCountEEC2EjNS2_4DimsE(%"class.llvm::LinearPolySize.128"* noundef nonnull align 4 dereferenceable(8) %6, i32 noundef %8, i32 noundef %12)
  call void @_ZN4llvm12ElementCountC2ERKNS_14LinearPolySizeIS0_EE(%"class.llvm::ElementCount"* noundef nonnull align 4 dereferenceable(8) %3, %"class.llvm::LinearPolySize.128"* noundef nonnull align 4 dereferenceable(8) %6)
  %13 = getelementptr inbounds %"class.llvm::ElementCount", %"class.llvm::ElementCount"* %3, i32 0, i32 0
  %14 = getelementptr inbounds %"class.llvm::LinearPolySize.128", %"class.llvm::LinearPolySize.128"* %13, i32 0, i32 0
  %15 = bitcast %"class.llvm::UnivariateLinearPolyBase.129"* %14 to i64*
  %16 = load i64, i64* %15, align 4
  ret i64 %16
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm3isaINS_18ScalableVectorTypeEPKNS_10VectorTypeEEEbRKT0_(%"class.llvm::VectorType"** noundef nonnull align 8 dereferenceable(8) %0) #6 comdat {
  %2 = alloca %"class.llvm::VectorType"**, align 8
  store %"class.llvm::VectorType"** %0, %"class.llvm::VectorType"*** %2, align 8
  %3 = load %"class.llvm::VectorType"**, %"class.llvm::VectorType"*** %2, align 8
  %4 = call noundef zeroext i1 @_ZN4llvm13isa_impl_wrapINS_18ScalableVectorTypeEKPKNS_10VectorTypeES4_E4doitERS5_(%"class.llvm::VectorType"** noundef nonnull align 8 dereferenceable(8) %3)
  ret i1 %4
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZN4llvm14LinearPolySizeINS_12ElementCountEEC2EjNS2_4DimsE(%"class.llvm::LinearPolySize.128"* noundef nonnull align 4 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 {
  %4 = alloca %"class.llvm::LinearPolySize.128"*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %"class.llvm::LinearPolySize.128"* %0, %"class.llvm::LinearPolySize.128"** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %"class.llvm::LinearPolySize.128"*, %"class.llvm::LinearPolySize.128"** %4, align 8
  %8 = bitcast %"class.llvm::LinearPolySize.128"* %7 to %"class.llvm::UnivariateLinearPolyBase.129"*
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  call void @_ZN4llvm24UnivariateLinearPolyBaseINS_12ElementCountEEC2Ejj(%"class.llvm::UnivariateLinearPolyBase.129"* noundef nonnull align 4 dereferenceable(8) %8, i32 noundef %9, i32 noundef %10)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4llvm12ElementCountC2ERKNS_14LinearPolySizeIS0_EE(%"class.llvm::ElementCount"* noundef nonnull align 4 dereferenceable(8) %0, %"class.llvm::LinearPolySize.128"* noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 {
  %3 = alloca %"class.llvm::ElementCount"*, align 8
  %4 = alloca %"class.llvm::LinearPolySize.128"*, align 8
  store %"class.llvm::ElementCount"* %0, %"class.llvm::ElementCount"** %3, align 8
  store %"class.llvm::LinearPolySize.128"* %1, %"class.llvm::LinearPolySize.128"** %4, align 8
  %5 = load %"class.llvm::ElementCount"*, %"class.llvm::ElementCount"** %3, align 8
  %6 = bitcast %"class.llvm::ElementCount"* %5 to %"class.llvm::LinearPolySize.128"*
  %7 = load %"class.llvm::LinearPolySize.128"*, %"class.llvm::LinearPolySize.128"** %4, align 8
  %8 = bitcast %"class.llvm::LinearPolySize.128"* %6 to i8*
  %9 = bitcast %"class.llvm::LinearPolySize.128"* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 %9, i64 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4llvm24UnivariateLinearPolyBaseINS_12ElementCountEEC2Ejj(%"class.llvm::UnivariateLinearPolyBase.129"* noundef nonnull align 4 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 comdat align 2 {
  %4 = alloca %"class.llvm::UnivariateLinearPolyBase.129"*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %"class.llvm::UnivariateLinearPolyBase.129"* %0, %"class.llvm::UnivariateLinearPolyBase.129"** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %"class.llvm::UnivariateLinearPolyBase.129"*, %"class.llvm::UnivariateLinearPolyBase.129"** %4, align 8
  %8 = getelementptr inbounds %"class.llvm::UnivariateLinearPolyBase.129", %"class.llvm::UnivariateLinearPolyBase.129"* %7, i32 0, i32 0
  %9 = load i32, i32* %5, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds %"class.llvm::UnivariateLinearPolyBase.129", %"class.llvm::UnivariateLinearPolyBase.129"* %7, i32 0, i32 1
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ult i32 %12, 2
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %14, %3
  %16 = phi i1 [ false, %3 ], [ true, %14 ]
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  br label %20

18:                                               ; preds = %15
  call void @__assert_fail(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0), i32 noundef 178, i8* noundef getelementptr inbounds ([163 x i8], [163 x i8]* @__PRETTY_FUNCTION__._ZN4llvm24UnivariateLinearPolyBaseINS_12ElementCountEEC2Ejj, i64 0, i64 0)) #15
  unreachable

19:                                               ; No predecessors!
  br label %20

20:                                               ; preds = %19, %17
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm13isa_impl_wrapINS_18ScalableVectorTypeEKPKNS_10VectorTypeES4_E4doitERS5_(%"class.llvm::VectorType"** noundef nonnull align 8 dereferenceable(8) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::VectorType"**, align 8
  %3 = alloca %"class.llvm::VectorType"*, align 8
  store %"class.llvm::VectorType"** %0, %"class.llvm::VectorType"*** %2, align 8
  %4 = load %"class.llvm::VectorType"**, %"class.llvm::VectorType"*** %2, align 8
  %5 = call noundef %"class.llvm::VectorType"* @_ZN4llvm13simplify_typeIKPKNS_10VectorTypeEE18getSimplifiedValueERS4_(%"class.llvm::VectorType"** noundef nonnull align 8 dereferenceable(8) %4)
  store %"class.llvm::VectorType"* %5, %"class.llvm::VectorType"** %3, align 8
  %6 = call noundef zeroext i1 @_ZN4llvm13isa_impl_wrapINS_18ScalableVectorTypeEPKNS_10VectorTypeES4_E4doitERKS4_(%"class.llvm::VectorType"** noundef nonnull align 8 dereferenceable(8) %3)
  ret i1 %6
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm13isa_impl_wrapINS_18ScalableVectorTypeEPKNS_10VectorTypeES4_E4doitERKS4_(%"class.llvm::VectorType"** noundef nonnull align 8 dereferenceable(8) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::VectorType"**, align 8
  store %"class.llvm::VectorType"** %0, %"class.llvm::VectorType"*** %2, align 8
  %3 = load %"class.llvm::VectorType"**, %"class.llvm::VectorType"*** %2, align 8
  %4 = load %"class.llvm::VectorType"*, %"class.llvm::VectorType"** %3, align 8
  %5 = call noundef zeroext i1 @_ZN4llvm11isa_impl_clINS_18ScalableVectorTypeEPKNS_10VectorTypeEE4doitES4_(%"class.llvm::VectorType"* noundef %4)
  ret i1 %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::VectorType"* @_ZN4llvm13simplify_typeIKPKNS_10VectorTypeEE18getSimplifiedValueERS4_(%"class.llvm::VectorType"** noundef nonnull align 8 dereferenceable(8) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::VectorType"**, align 8
  store %"class.llvm::VectorType"** %0, %"class.llvm::VectorType"*** %2, align 8
  %3 = load %"class.llvm::VectorType"**, %"class.llvm::VectorType"*** %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) %"class.llvm::VectorType"** @_ZN4llvm13simplify_typeIPKNS_10VectorTypeEE18getSimplifiedValueERS3_(%"class.llvm::VectorType"** noundef nonnull align 8 dereferenceable(8) %3)
  %5 = load %"class.llvm::VectorType"*, %"class.llvm::VectorType"** %4, align 8
  ret %"class.llvm::VectorType"* %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm11isa_impl_clINS_18ScalableVectorTypeEPKNS_10VectorTypeEE4doitES4_(%"class.llvm::VectorType"* noundef %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::VectorType"*, align 8
  store %"class.llvm::VectorType"* %0, %"class.llvm::VectorType"** %2, align 8
  %3 = load %"class.llvm::VectorType"*, %"class.llvm::VectorType"** %2, align 8
  %4 = icmp ne %"class.llvm::VectorType"* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %5, %1
  %7 = phi i1 [ false, %1 ], [ true, %5 ]
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  br label %11

9:                                                ; preds = %6
  call void @__assert_fail(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 noundef 104, i8* noundef getelementptr inbounds ([167 x i8], [167 x i8]* @__PRETTY_FUNCTION__._ZN4llvm11isa_impl_clINS_18ScalableVectorTypeEPKNS_10VectorTypeEE4doitES4_, i64 0, i64 0)) #15
  unreachable

10:                                               ; No predecessors!
  br label %11

11:                                               ; preds = %10, %8
  %12 = load %"class.llvm::VectorType"*, %"class.llvm::VectorType"** %2, align 8
  %13 = call noundef zeroext i1 @_ZN4llvm8isa_implINS_18ScalableVectorTypeENS_10VectorTypeEvE4doitERKS2_(%"class.llvm::VectorType"* noundef nonnull align 8 dereferenceable(36) %12)
  ret i1 %13
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm8isa_implINS_18ScalableVectorTypeENS_10VectorTypeEvE4doitERKS2_(%"class.llvm::VectorType"* noundef nonnull align 8 dereferenceable(36) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::VectorType"*, align 8
  store %"class.llvm::VectorType"* %0, %"class.llvm::VectorType"** %2, align 8
  %3 = load %"class.llvm::VectorType"*, %"class.llvm::VectorType"** %2, align 8
  %4 = bitcast %"class.llvm::VectorType"* %3 to %"class.llvm::Type"*
  %5 = call noundef zeroext i1 @_ZN4llvm18ScalableVectorType7classofEPKNS_4TypeE(%"class.llvm::Type"* noundef %4)
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm18ScalableVectorType7classofEPKNS_4TypeE(%"class.llvm::Type"* noundef %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::Type"*, align 8
  store %"class.llvm::Type"* %0, %"class.llvm::Type"** %2, align 8
  %3 = load %"class.llvm::Type"*, %"class.llvm::Type"** %2, align 8
  %4 = call noundef i32 @_ZNK4llvm4Type9getTypeIDEv(%"class.llvm::Type"* noundef nonnull align 8 dereferenceable(24) %3)
  %5 = icmp eq i32 %4, 19
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"class.llvm::VectorType"** @_ZN4llvm13simplify_typeIPKNS_10VectorTypeEE18getSimplifiedValueERS3_(%"class.llvm::VectorType"** noundef nonnull align 8 dereferenceable(8) %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::VectorType"**, align 8
  store %"class.llvm::VectorType"** %0, %"class.llvm::VectorType"*** %2, align 8
  %3 = load %"class.llvm::VectorType"**, %"class.llvm::VectorType"*** %2, align 8
  ret %"class.llvm::VectorType"** %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZNK4llvm14LinearPolySizeINS_8TypeSizeEE13getFixedValueEv(%"class.llvm::LinearPolySize"* noundef nonnull align 8 dereferenceable(12) %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::LinearPolySize"*, align 8
  store %"class.llvm::LinearPolySize"* %0, %"class.llvm::LinearPolySize"** %2, align 8
  %3 = load %"class.llvm::LinearPolySize"*, %"class.llvm::LinearPolySize"** %2, align 8
  %4 = call noundef zeroext i1 @_ZNK4llvm14LinearPolySizeINS_8TypeSizeEE10isScalableEv(%"class.llvm::LinearPolySize"* noundef nonnull align 8 dereferenceable(12) %3)
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %5, %1
  %7 = phi i1 [ false, %1 ], [ true, %5 ]
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  br label %11

9:                                                ; preds = %6
  call void @__assert_fail(i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.27, i64 0, i64 0), i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0), i32 noundef 314, i8* noundef getelementptr inbounds ([117 x i8], [117 x i8]* @__PRETTY_FUNCTION__._ZNK4llvm14LinearPolySizeINS_8TypeSizeEE13getFixedValueEv, i64 0, i64 0)) #15
  unreachable

10:                                               ; No predecessors!
  br label %11

11:                                               ; preds = %10, %8
  %12 = call noundef i64 @_ZNK4llvm14LinearPolySizeINS_8TypeSizeEE16getKnownMinValueEv(%"class.llvm::LinearPolySize"* noundef nonnull align 8 dereferenceable(12) %3)
  ret i64 %12
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i64 @_ZN4llvm7alignToEmmm(i64 noundef %0, i64 noundef %1, i64 noundef %2) #4 comdat {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %10

10:                                               ; preds = %9, %3
  %11 = phi i1 [ false, %3 ], [ true, %9 ]
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  br label %15

13:                                               ; preds = %10
  call void @__assert_fail(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i64 0, i64 0), i32 noundef 729, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @__PRETTY_FUNCTION__._ZN4llvm7alignToEmmm, i64 0, i64 0)) #15
  unreachable

14:                                               ; No predecessors!
  br label %15

15:                                               ; preds = %14, %12
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = urem i64 %17, %16
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = add i64 %19, %20
  %22 = sub i64 %21, 1
  %23 = load i64, i64* %6, align 8
  %24 = sub i64 %22, %23
  %25 = load i64, i64* %5, align 8
  %26 = udiv i64 %24, %25
  %27 = load i64, i64* %5, align 8
  %28 = mul i64 %26, %27
  %29 = load i64, i64* %6, align 8
  %30 = add i64 %28, %29
  ret i64 %30
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm3isaINS_8CallInstEPNS_11InstructionEEEbRKT0_(%"class.llvm::Instruction"** noundef nonnull align 8 dereferenceable(8) %0) #6 comdat {
  %2 = alloca %"class.llvm::Instruction"**, align 8
  store %"class.llvm::Instruction"** %0, %"class.llvm::Instruction"*** %2, align 8
  %3 = load %"class.llvm::Instruction"**, %"class.llvm::Instruction"*** %2, align 8
  %4 = call noundef zeroext i1 @_ZN4llvm13isa_impl_wrapINS_8CallInstEKPNS_11InstructionEPKS2_E4doitERS4_(%"class.llvm::Instruction"** noundef nonnull align 8 dereferenceable(8) %3)
  ret i1 %4
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::CallInst"* @_ZN4llvm4castINS_8CallInstENS_11InstructionEEENS_10cast_rettyIT_PT0_E8ret_typeES6_(%"class.llvm::Instruction"* noundef %0) #6 comdat {
  %2 = alloca %"class.llvm::Instruction"*, align 8
  store %"class.llvm::Instruction"* %0, %"class.llvm::Instruction"** %2, align 8
  %3 = call noundef zeroext i1 @_ZN4llvm3isaINS_8CallInstEPNS_11InstructionEEEbRKT0_(%"class.llvm::Instruction"** noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %4, %1
  %6 = phi i1 [ false, %1 ], [ true, %4 ]
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  br label %10

8:                                                ; preds = %5
  call void @__assert_fail(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 noundef 269, i8* noundef getelementptr inbounds ([98 x i8], [98 x i8]* @__PRETTY_FUNCTION__._ZN4llvm4castINS_8CallInstENS_11InstructionEEENS_10cast_rettyIT_PT0_E8ret_typeES6_, i64 0, i64 0)) #15
  unreachable

9:                                                ; No predecessors!
  br label %10

10:                                               ; preds = %9, %7
  %11 = call noundef %"class.llvm::CallInst"* @_ZN4llvm16cast_convert_valINS_8CallInstEPNS_11InstructionES3_E4doitERKS3_(%"class.llvm::Instruction"** noundef nonnull align 8 dereferenceable(8) %2)
  ret %"class.llvm::CallInst"* %11
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm13isa_impl_wrapINS_8CallInstEKPNS_11InstructionEPKS2_E4doitERS4_(%"class.llvm::Instruction"** noundef nonnull align 8 dereferenceable(8) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::Instruction"**, align 8
  %3 = alloca %"class.llvm::Instruction"*, align 8
  store %"class.llvm::Instruction"** %0, %"class.llvm::Instruction"*** %2, align 8
  %4 = load %"class.llvm::Instruction"**, %"class.llvm::Instruction"*** %2, align 8
  %5 = call noundef %"class.llvm::Instruction"* @_ZN4llvm13simplify_typeIKPNS_11InstructionEE18getSimplifiedValueERS3_(%"class.llvm::Instruction"** noundef nonnull align 8 dereferenceable(8) %4)
  store %"class.llvm::Instruction"* %5, %"class.llvm::Instruction"** %3, align 8
  %6 = call noundef zeroext i1 @_ZN4llvm13isa_impl_wrapINS_8CallInstEPKNS_11InstructionES4_E4doitERKS4_(%"class.llvm::Instruction"** noundef nonnull align 8 dereferenceable(8) %3)
  ret i1 %6
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm13isa_impl_wrapINS_8CallInstEPKNS_11InstructionES4_E4doitERKS4_(%"class.llvm::Instruction"** noundef nonnull align 8 dereferenceable(8) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::Instruction"**, align 8
  store %"class.llvm::Instruction"** %0, %"class.llvm::Instruction"*** %2, align 8
  %3 = load %"class.llvm::Instruction"**, %"class.llvm::Instruction"*** %2, align 8
  %4 = load %"class.llvm::Instruction"*, %"class.llvm::Instruction"** %3, align 8
  %5 = call noundef zeroext i1 @_ZN4llvm11isa_impl_clINS_8CallInstEPKNS_11InstructionEE4doitES4_(%"class.llvm::Instruction"* noundef %4)
  ret i1 %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm11isa_impl_clINS_8CallInstEPKNS_11InstructionEE4doitES4_(%"class.llvm::Instruction"* noundef %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::Instruction"*, align 8
  store %"class.llvm::Instruction"* %0, %"class.llvm::Instruction"** %2, align 8
  %3 = load %"class.llvm::Instruction"*, %"class.llvm::Instruction"** %2, align 8
  %4 = icmp ne %"class.llvm::Instruction"* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %5, %1
  %7 = phi i1 [ false, %1 ], [ true, %5 ]
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  br label %11

9:                                                ; preds = %6
  call void @__assert_fail(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 noundef 104, i8* noundef getelementptr inbounds ([149 x i8], [149 x i8]* @__PRETTY_FUNCTION__._ZN4llvm11isa_impl_clINS_8CallInstEPKNS_11InstructionEE4doitES4_, i64 0, i64 0)) #15
  unreachable

10:                                               ; No predecessors!
  br label %11

11:                                               ; preds = %10, %8
  %12 = load %"class.llvm::Instruction"*, %"class.llvm::Instruction"** %2, align 8
  %13 = call noundef zeroext i1 @_ZN4llvm8isa_implINS_8CallInstENS_11InstructionEvE4doitERKS2_(%"class.llvm::Instruction"* noundef nonnull align 8 dereferenceable(60) %12)
  ret i1 %13
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm8isa_implINS_8CallInstENS_11InstructionEvE4doitERKS2_(%"class.llvm::Instruction"* noundef nonnull align 8 dereferenceable(60) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::Instruction"*, align 8
  store %"class.llvm::Instruction"* %0, %"class.llvm::Instruction"** %2, align 8
  %3 = load %"class.llvm::Instruction"*, %"class.llvm::Instruction"** %2, align 8
  %4 = call noundef zeroext i1 @_ZN4llvm8CallInst7classofEPKNS_11InstructionE(%"class.llvm::Instruction"* noundef %3)
  ret i1 %4
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm8CallInst7classofEPKNS_11InstructionE(%"class.llvm::Instruction"* noundef %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::Instruction"*, align 8
  store %"class.llvm::Instruction"* %0, %"class.llvm::Instruction"** %2, align 8
  %3 = load %"class.llvm::Instruction"*, %"class.llvm::Instruction"** %2, align 8
  %4 = call noundef i32 @_ZNK4llvm11Instruction9getOpcodeEv(%"class.llvm::Instruction"* noundef nonnull align 8 dereferenceable(60) %3)
  %5 = icmp eq i32 %4, 56
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::CallInst"* @_ZN4llvm16cast_convert_valINS_8CallInstEPNS_11InstructionES3_E4doitERKS3_(%"class.llvm::Instruction"** noundef nonnull align 8 dereferenceable(8) %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::Instruction"**, align 8
  %3 = alloca %"class.llvm::CallInst"*, align 8
  store %"class.llvm::Instruction"** %0, %"class.llvm::Instruction"*** %2, align 8
  %4 = load %"class.llvm::Instruction"**, %"class.llvm::Instruction"*** %2, align 8
  %5 = load %"class.llvm::Instruction"*, %"class.llvm::Instruction"** %4, align 8
  %6 = bitcast %"class.llvm::Instruction"* %5 to %"class.llvm::CallInst"*
  store %"class.llvm::CallInst"* %6, %"class.llvm::CallInst"** %3, align 8
  %7 = load %"class.llvm::CallInst"*, %"class.llvm::CallInst"** %3, align 8
  ret %"class.llvm::CallInst"* %7
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::Function"* @_ZN4llvm16dyn_cast_or_nullINS_8FunctionENS_5ValueEEENS_10cast_rettyIT_PT0_E8ret_typeES6_(%"class.llvm::Value"* noundef %0) #6 comdat {
  %2 = alloca %"class.llvm::Value"*, align 8
  store %"class.llvm::Value"* %0, %"class.llvm::Value"** %2, align 8
  %3 = load %"class.llvm::Value"*, %"class.llvm::Value"** %2, align 8
  %4 = icmp ne %"class.llvm::Value"* %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = call noundef zeroext i1 @_ZN4llvm3isaINS_8FunctionEPNS_5ValueEEEbRKT0_(%"class.llvm::Value"** noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %6, label %7, label %10

7:                                                ; preds = %5
  %8 = load %"class.llvm::Value"*, %"class.llvm::Value"** %2, align 8
  %9 = call noundef %"class.llvm::Function"* @_ZN4llvm4castINS_8FunctionENS_5ValueEEENS_10cast_rettyIT_PT0_E8ret_typeES6_(%"class.llvm::Value"* noundef %8)
  br label %11

10:                                               ; preds = %5, %1
  br label %11

11:                                               ; preds = %10, %7
  %12 = phi %"class.llvm::Function"* [ %9, %7 ], [ null, %10 ]
  ret %"class.llvm::Function"* %12
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::Value"* @_ZNK4llvm8CallBase16getCalledOperandEv(%"class.llvm::CallBase"* noundef nonnull align 8 dereferenceable(80) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::CallBase"*, align 8
  store %"class.llvm::CallBase"* %0, %"class.llvm::CallBase"** %2, align 8
  %3 = load %"class.llvm::CallBase"*, %"class.llvm::CallBase"** %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(32) %"class.llvm::Use"* @_ZNK4llvm8CallBase2OpILin1EEERKNS_3UseEv(%"class.llvm::CallBase"* noundef nonnull align 8 dereferenceable(80) %3)
  %5 = call noundef %"class.llvm::Value"* @_ZNK4llvm3UsecvPNS_5ValueEEv(%"class.llvm::Use"* noundef nonnull align 8 dereferenceable(32) %4)
  ret %"class.llvm::Value"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::Type"* @_ZNK4llvm11GlobalValue12getValueTypeEv(%"class.llvm::GlobalValue"* noundef nonnull align 8 dereferenceable(48) %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::GlobalValue"*, align 8
  store %"class.llvm::GlobalValue"* %0, %"class.llvm::GlobalValue"** %2, align 8
  %3 = load %"class.llvm::GlobalValue"*, %"class.llvm::GlobalValue"** %2, align 8
  %4 = getelementptr inbounds %"class.llvm::GlobalValue", %"class.llvm::GlobalValue"* %3, i32 0, i32 1
  %5 = load %"class.llvm::Type"*, %"class.llvm::Type"** %4, align 8
  ret %"class.llvm::Type"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::FunctionType"* @_ZNK4llvm8CallBase15getFunctionTypeEv(%"class.llvm::CallBase"* noundef nonnull align 8 dereferenceable(80) %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::CallBase"*, align 8
  store %"class.llvm::CallBase"* %0, %"class.llvm::CallBase"** %2, align 8
  %3 = load %"class.llvm::CallBase"*, %"class.llvm::CallBase"** %2, align 8
  %4 = getelementptr inbounds %"class.llvm::CallBase", %"class.llvm::CallBase"* %3, i32 0, i32 2
  %5 = load %"class.llvm::FunctionType"*, %"class.llvm::FunctionType"** %4, align 8
  ret %"class.llvm::FunctionType"* %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm3isaINS_8FunctionEPNS_5ValueEEEbRKT0_(%"class.llvm::Value"** noundef nonnull align 8 dereferenceable(8) %0) #6 comdat {
  %2 = alloca %"class.llvm::Value"**, align 8
  store %"class.llvm::Value"** %0, %"class.llvm::Value"*** %2, align 8
  %3 = load %"class.llvm::Value"**, %"class.llvm::Value"*** %2, align 8
  %4 = call noundef zeroext i1 @_ZN4llvm13isa_impl_wrapINS_8FunctionEKPNS_5ValueEPKS2_E4doitERS4_(%"class.llvm::Value"** noundef nonnull align 8 dereferenceable(8) %3)
  ret i1 %4
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::Function"* @_ZN4llvm4castINS_8FunctionENS_5ValueEEENS_10cast_rettyIT_PT0_E8ret_typeES6_(%"class.llvm::Value"* noundef %0) #6 comdat {
  %2 = alloca %"class.llvm::Value"*, align 8
  store %"class.llvm::Value"* %0, %"class.llvm::Value"** %2, align 8
  %3 = call noundef zeroext i1 @_ZN4llvm3isaINS_8FunctionEPNS_5ValueEEEbRKT0_(%"class.llvm::Value"** noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %4, %1
  %6 = phi i1 [ false, %1 ], [ true, %4 ]
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  br label %10

8:                                                ; preds = %5
  call void @__assert_fail(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 noundef 269, i8* noundef getelementptr inbounds ([92 x i8], [92 x i8]* @__PRETTY_FUNCTION__._ZN4llvm4castINS_8FunctionENS_5ValueEEENS_10cast_rettyIT_PT0_E8ret_typeES6_, i64 0, i64 0)) #15
  unreachable

9:                                                ; No predecessors!
  br label %10

10:                                               ; preds = %9, %7
  %11 = call noundef %"class.llvm::Function"* @_ZN4llvm16cast_convert_valINS_8FunctionEPNS_5ValueES3_E4doitERKS3_(%"class.llvm::Value"** noundef nonnull align 8 dereferenceable(8) %2)
  ret %"class.llvm::Function"* %11
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm13isa_impl_wrapINS_8FunctionEKPNS_5ValueEPKS2_E4doitERS4_(%"class.llvm::Value"** noundef nonnull align 8 dereferenceable(8) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::Value"**, align 8
  %3 = alloca %"class.llvm::Value"*, align 8
  store %"class.llvm::Value"** %0, %"class.llvm::Value"*** %2, align 8
  %4 = load %"class.llvm::Value"**, %"class.llvm::Value"*** %2, align 8
  %5 = call noundef %"class.llvm::Value"* @_ZN4llvm13simplify_typeIKPNS_5ValueEE18getSimplifiedValueERS3_(%"class.llvm::Value"** noundef nonnull align 8 dereferenceable(8) %4)
  store %"class.llvm::Value"* %5, %"class.llvm::Value"** %3, align 8
  %6 = call noundef zeroext i1 @_ZN4llvm13isa_impl_wrapINS_8FunctionEPKNS_5ValueES4_E4doitERKS4_(%"class.llvm::Value"** noundef nonnull align 8 dereferenceable(8) %3)
  ret i1 %6
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm13isa_impl_wrapINS_8FunctionEPKNS_5ValueES4_E4doitERKS4_(%"class.llvm::Value"** noundef nonnull align 8 dereferenceable(8) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::Value"**, align 8
  store %"class.llvm::Value"** %0, %"class.llvm::Value"*** %2, align 8
  %3 = load %"class.llvm::Value"**, %"class.llvm::Value"*** %2, align 8
  %4 = load %"class.llvm::Value"*, %"class.llvm::Value"** %3, align 8
  %5 = call noundef zeroext i1 @_ZN4llvm11isa_impl_clINS_8FunctionEPKNS_5ValueEE4doitES4_(%"class.llvm::Value"* noundef %4)
  ret i1 %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::Value"* @_ZN4llvm13simplify_typeIKPNS_5ValueEE18getSimplifiedValueERS3_(%"class.llvm::Value"** noundef nonnull align 8 dereferenceable(8) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::Value"**, align 8
  store %"class.llvm::Value"** %0, %"class.llvm::Value"*** %2, align 8
  %3 = load %"class.llvm::Value"**, %"class.llvm::Value"*** %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(8) %"class.llvm::Value"** @_ZN4llvm13simplify_typeIPNS_5ValueEE18getSimplifiedValueERS2_(%"class.llvm::Value"** noundef nonnull align 8 dereferenceable(8) %3)
  %5 = load %"class.llvm::Value"*, %"class.llvm::Value"** %4, align 8
  ret %"class.llvm::Value"* %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm11isa_impl_clINS_8FunctionEPKNS_5ValueEE4doitES4_(%"class.llvm::Value"* noundef %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::Value"*, align 8
  store %"class.llvm::Value"* %0, %"class.llvm::Value"** %2, align 8
  %3 = load %"class.llvm::Value"*, %"class.llvm::Value"** %2, align 8
  %4 = icmp ne %"class.llvm::Value"* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %5, %1
  %7 = phi i1 [ false, %1 ], [ true, %5 ]
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  br label %11

9:                                                ; preds = %6
  call void @__assert_fail(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 noundef 104, i8* noundef getelementptr inbounds ([137 x i8], [137 x i8]* @__PRETTY_FUNCTION__._ZN4llvm11isa_impl_clINS_8FunctionEPKNS_5ValueEE4doitES4_, i64 0, i64 0)) #15
  unreachable

10:                                               ; No predecessors!
  br label %11

11:                                               ; preds = %10, %8
  %12 = load %"class.llvm::Value"*, %"class.llvm::Value"** %2, align 8
  %13 = call noundef zeroext i1 @_ZN4llvm8isa_implINS_8FunctionENS_5ValueEvE4doitERKS2_(%"class.llvm::Value"* noundef nonnull align 8 dereferenceable(24) %12)
  ret i1 %13
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm8isa_implINS_8FunctionENS_5ValueEvE4doitERKS2_(%"class.llvm::Value"* noundef nonnull align 8 dereferenceable(24) %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::Value"*, align 8
  store %"class.llvm::Value"* %0, %"class.llvm::Value"** %2, align 8
  %3 = load %"class.llvm::Value"*, %"class.llvm::Value"** %2, align 8
  %4 = call noundef i32 @_ZNK4llvm5Value10getValueIDEv(%"class.llvm::Value"* noundef nonnull align 8 dereferenceable(24) %3)
  %5 = icmp eq i32 %4, 0
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) %"class.llvm::Value"** @_ZN4llvm13simplify_typeIPNS_5ValueEE18getSimplifiedValueERS2_(%"class.llvm::Value"** noundef nonnull align 8 dereferenceable(8) %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::Value"**, align 8
  store %"class.llvm::Value"** %0, %"class.llvm::Value"*** %2, align 8
  %3 = load %"class.llvm::Value"**, %"class.llvm::Value"*** %2, align 8
  ret %"class.llvm::Value"** %3
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::Function"* @_ZN4llvm16cast_convert_valINS_8FunctionEPNS_5ValueES3_E4doitERKS3_(%"class.llvm::Value"** noundef nonnull align 8 dereferenceable(8) %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::Value"**, align 8
  %3 = alloca %"class.llvm::Function"*, align 8
  store %"class.llvm::Value"** %0, %"class.llvm::Value"*** %2, align 8
  %4 = load %"class.llvm::Value"**, %"class.llvm::Value"*** %2, align 8
  %5 = load %"class.llvm::Value"*, %"class.llvm::Value"** %4, align 8
  %6 = bitcast %"class.llvm::Value"* %5 to %"class.llvm::Function"*
  store %"class.llvm::Function"* %6, %"class.llvm::Function"** %3, align 8
  %7 = load %"class.llvm::Function"*, %"class.llvm::Function"** %3, align 8
  ret %"class.llvm::Function"* %7
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) %"class.llvm::Use"* @_ZNK4llvm8CallBase2OpILin1EEERKNS_3UseEv(%"class.llvm::CallBase"* noundef nonnull align 8 dereferenceable(80) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::CallBase"*, align 8
  store %"class.llvm::CallBase"* %0, %"class.llvm::CallBase"** %2, align 8
  %3 = load %"class.llvm::CallBase"*, %"class.llvm::CallBase"** %2, align 8
  %4 = call noundef nonnull align 8 dereferenceable(32) %"class.llvm::Use"* @_ZN4llvm4User6OpFromILin1ENS_8CallBaseEEERNS_3UseEPKT0_(%"class.llvm::CallBase"* noundef %3)
  ret %"class.llvm::Use"* %4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::Value"* @_ZNK4llvm3UsecvPNS_5ValueEEv(%"class.llvm::Use"* noundef nonnull align 8 dereferenceable(32) %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::Use"*, align 8
  store %"class.llvm::Use"* %0, %"class.llvm::Use"** %2, align 8
  %3 = load %"class.llvm::Use"*, %"class.llvm::Use"** %2, align 8
  %4 = getelementptr inbounds %"class.llvm::Use", %"class.llvm::Use"* %3, i32 0, i32 0
  %5 = load %"class.llvm::Value"*, %"class.llvm::Value"** %4, align 8
  ret %"class.llvm::Value"* %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) %"class.llvm::Use"* @_ZN4llvm4User6OpFromILin1ENS_8CallBaseEEERNS_3UseEPKT0_(%"class.llvm::CallBase"* noundef %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::CallBase"*, align 8
  store %"class.llvm::CallBase"* %0, %"class.llvm::CallBase"** %2, align 8
  %3 = load %"class.llvm::CallBase"*, %"class.llvm::CallBase"** %2, align 8
  %4 = call noundef %"class.llvm::Use"* @_ZN4llvm21VariadicOperandTraitsINS_8CallBaseELj1EE6op_endEPS1_(%"class.llvm::CallBase"* noundef %3)
  %5 = getelementptr inbounds %"class.llvm::Use", %"class.llvm::Use"* %4, i64 -1
  ret %"class.llvm::Use"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::Use"* @_ZN4llvm21VariadicOperandTraitsINS_8CallBaseELj1EE6op_endEPS1_(%"class.llvm::CallBase"* noundef %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::CallBase"*, align 8
  store %"class.llvm::CallBase"* %0, %"class.llvm::CallBase"** %2, align 8
  %3 = load %"class.llvm::CallBase"*, %"class.llvm::CallBase"** %2, align 8
  %4 = bitcast %"class.llvm::CallBase"* %3 to %"class.llvm::Use"*
  ret %"class.llvm::Use"* %4
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZN4llvm9StringRef13compareMemoryEPKcS2_m(i8* noundef %0, i8* noundef %1, i64 noundef %2) #4 comdat align 2 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %16

11:                                               ; preds = %3
  %12 = load i8*, i8** %5, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @memcmp(i8* noundef %12, i8* noundef %13, i64 noundef %14) #19
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %11, %10
  %17 = load i32, i32* %4, align 4
  ret i32 %17
}

; Function Attrs: nounwind readonly willreturn
declare i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #14

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZN4llvm21VariadicOperandTraitsINS_8CallBaseELj1EE8operandsEPKNS_4UserE(%"class.llvm::User"* noundef %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::User"*, align 8
  store %"class.llvm::User"* %0, %"class.llvm::User"** %2, align 8
  %3 = load %"class.llvm::User"*, %"class.llvm::User"** %2, align 8
  %4 = call noundef i32 @_ZNK4llvm4User14getNumOperandsEv(%"class.llvm::User"* noundef nonnull align 8 dereferenceable(24) %3)
  ret i32 %4
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::Value"* @_ZN4llvm12cast_or_nullINS_5ValueES1_EENS_10cast_rettyIT_PT0_E8ret_typeES5_(%"class.llvm::Value"* noundef %0) #6 comdat {
  %2 = alloca %"class.llvm::Value"*, align 8
  %3 = alloca %"class.llvm::Value"*, align 8
  store %"class.llvm::Value"* %0, %"class.llvm::Value"** %3, align 8
  %4 = load %"class.llvm::Value"*, %"class.llvm::Value"** %3, align 8
  %5 = icmp ne %"class.llvm::Value"* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store %"class.llvm::Value"* null, %"class.llvm::Value"** %2, align 8
  br label %18

7:                                                ; preds = %1
  %8 = call noundef zeroext i1 @_ZN4llvm3isaINS_5ValueEPS1_EEbRKT0_(%"class.llvm::Value"** noundef nonnull align 8 dereferenceable(8) %3)
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %9, %7
  %11 = phi i1 [ false, %7 ], [ true, %9 ]
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  br label %15

13:                                               ; preds = %10
  call void @__assert_fail(i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 noundef 311, i8* noundef getelementptr inbounds ([97 x i8], [97 x i8]* @__PRETTY_FUNCTION__._ZN4llvm12cast_or_nullINS_5ValueES1_EENS_10cast_rettyIT_PT0_E8ret_typeES5_, i64 0, i64 0)) #15
  unreachable

14:                                               ; No predecessors!
  br label %15

15:                                               ; preds = %14, %12
  %16 = load %"class.llvm::Value"*, %"class.llvm::Value"** %3, align 8
  %17 = call noundef %"class.llvm::Value"* @_ZN4llvm4castINS_5ValueES1_EENS_10cast_rettyIT_PT0_E8ret_typeES5_(%"class.llvm::Value"* noundef %16)
  store %"class.llvm::Value"* %17, %"class.llvm::Value"** %2, align 8
  br label %18

18:                                               ; preds = %15, %6
  %19 = load %"class.llvm::Value"*, %"class.llvm::Value"** %2, align 8
  ret %"class.llvm::Value"* %19
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::Use"* @_ZN4llvm21VariadicOperandTraitsINS_8CallBaseELj1EE8op_beginEPS1_(%"class.llvm::CallBase"* noundef %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::CallBase"*, align 8
  store %"class.llvm::CallBase"* %0, %"class.llvm::CallBase"** %2, align 8
  %3 = load %"class.llvm::CallBase"*, %"class.llvm::CallBase"** %2, align 8
  %4 = bitcast %"class.llvm::CallBase"* %3 to %"class.llvm::Use"*
  %5 = load %"class.llvm::CallBase"*, %"class.llvm::CallBase"** %2, align 8
  %6 = bitcast %"class.llvm::CallBase"* %5 to %"class.llvm::User"*
  %7 = call noundef i32 @_ZNK4llvm4User14getNumOperandsEv(%"class.llvm::User"* noundef nonnull align 8 dereferenceable(24) %6)
  %8 = zext i32 %7 to i64
  %9 = sub i64 0, %8
  %10 = getelementptr inbounds %"class.llvm::Use", %"class.llvm::Use"* %4, i64 %9
  ret %"class.llvm::Use"* %10
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::Value"* @_ZNK4llvm3Use3getEv(%"class.llvm::Use"* noundef nonnull align 8 dereferenceable(32) %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::Use"*, align 8
  store %"class.llvm::Use"* %0, %"class.llvm::Use"** %2, align 8
  %3 = load %"class.llvm::Use"*, %"class.llvm::Use"** %2, align 8
  %4 = getelementptr inbounds %"class.llvm::Use", %"class.llvm::Use"* %3, i32 0, i32 0
  %5 = load %"class.llvm::Value"*, %"class.llvm::Value"** %4, align 8
  ret %"class.llvm::Value"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef i32 @_ZNK4llvm4User14getNumOperandsEv(%"class.llvm::User"* noundef nonnull align 8 dereferenceable(24) %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::User"*, align 8
  store %"class.llvm::User"* %0, %"class.llvm::User"** %2, align 8
  %3 = load %"class.llvm::User"*, %"class.llvm::User"** %2, align 8
  %4 = bitcast %"class.llvm::User"* %3 to %"class.llvm::Value"*
  %5 = getelementptr inbounds %"class.llvm::Value", %"class.llvm::Value"* %4, i32 0, i32 5
  %6 = load i32, i32* %5, align 4
  %7 = and i32 %6, 134217727
  ret i32 %7
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm3isaINS_5ValueEPS1_EEbRKT0_(%"class.llvm::Value"** noundef nonnull align 8 dereferenceable(8) %0) #6 comdat {
  %2 = alloca %"class.llvm::Value"**, align 8
  store %"class.llvm::Value"** %0, %"class.llvm::Value"*** %2, align 8
  %3 = load %"class.llvm::Value"**, %"class.llvm::Value"*** %2, align 8
  %4 = call noundef zeroext i1 @_ZN4llvm13isa_impl_wrapINS_5ValueEKPS1_PKS1_E4doitERS3_(%"class.llvm::Value"** noundef nonnull align 8 dereferenceable(8) %3)
  ret i1 %4
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::Value"* @_ZN4llvm4castINS_5ValueES1_EENS_10cast_rettyIT_PT0_E8ret_typeES5_(%"class.llvm::Value"* noundef %0) #6 comdat {
  %2 = alloca %"class.llvm::Value"*, align 8
  store %"class.llvm::Value"* %0, %"class.llvm::Value"** %2, align 8
  %3 = call noundef zeroext i1 @_ZN4llvm3isaINS_5ValueEPS1_EEbRKT0_(%"class.llvm::Value"** noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %4, %1
  %6 = phi i1 [ false, %1 ], [ true, %4 ]
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  br label %10

8:                                                ; preds = %5
  call void @__assert_fail(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 noundef 269, i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @__PRETTY_FUNCTION__._ZN4llvm4castINS_5ValueES1_EENS_10cast_rettyIT_PT0_E8ret_typeES5_, i64 0, i64 0)) #15
  unreachable

9:                                                ; No predecessors!
  br label %10

10:                                               ; preds = %9, %7
  %11 = call noundef %"class.llvm::Value"* @_ZN4llvm16cast_convert_valINS_5ValueEPS1_S2_E4doitERKS2_(%"class.llvm::Value"** noundef nonnull align 8 dereferenceable(8) %2)
  ret %"class.llvm::Value"* %11
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm13isa_impl_wrapINS_5ValueEKPS1_PKS1_E4doitERS3_(%"class.llvm::Value"** noundef nonnull align 8 dereferenceable(8) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::Value"**, align 8
  %3 = alloca %"class.llvm::Value"*, align 8
  store %"class.llvm::Value"** %0, %"class.llvm::Value"*** %2, align 8
  %4 = load %"class.llvm::Value"**, %"class.llvm::Value"*** %2, align 8
  %5 = call noundef %"class.llvm::Value"* @_ZN4llvm13simplify_typeIKPNS_5ValueEE18getSimplifiedValueERS3_(%"class.llvm::Value"** noundef nonnull align 8 dereferenceable(8) %4)
  store %"class.llvm::Value"* %5, %"class.llvm::Value"** %3, align 8
  %6 = call noundef zeroext i1 @_ZN4llvm13isa_impl_wrapINS_5ValueEPKS1_S3_E4doitERKS3_(%"class.llvm::Value"** noundef nonnull align 8 dereferenceable(8) %3)
  ret i1 %6
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm13isa_impl_wrapINS_5ValueEPKS1_S3_E4doitERKS3_(%"class.llvm::Value"** noundef nonnull align 8 dereferenceable(8) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::Value"**, align 8
  store %"class.llvm::Value"** %0, %"class.llvm::Value"*** %2, align 8
  %3 = load %"class.llvm::Value"**, %"class.llvm::Value"*** %2, align 8
  %4 = load %"class.llvm::Value"*, %"class.llvm::Value"** %3, align 8
  %5 = call noundef zeroext i1 @_ZN4llvm11isa_impl_clINS_5ValueEPKS1_E4doitES3_(%"class.llvm::Value"* noundef %4)
  ret i1 %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm11isa_impl_clINS_5ValueEPKS1_E4doitES3_(%"class.llvm::Value"* noundef %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::Value"*, align 8
  store %"class.llvm::Value"* %0, %"class.llvm::Value"** %2, align 8
  %3 = load %"class.llvm::Value"*, %"class.llvm::Value"** %2, align 8
  %4 = icmp ne %"class.llvm::Value"* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %5, %1
  %7 = phi i1 [ false, %1 ], [ true, %5 ]
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  br label %11

9:                                                ; preds = %6
  call void @__assert_fail(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 noundef 104, i8* noundef getelementptr inbounds ([131 x i8], [131 x i8]* @__PRETTY_FUNCTION__._ZN4llvm11isa_impl_clINS_5ValueEPKS1_E4doitES3_, i64 0, i64 0)) #15
  unreachable

10:                                               ; No predecessors!
  br label %11

11:                                               ; preds = %10, %8
  %12 = load %"class.llvm::Value"*, %"class.llvm::Value"** %2, align 8
  %13 = call noundef zeroext i1 @_ZN4llvm8isa_implINS_5ValueES1_vE4doitERKS1_(%"class.llvm::Value"* noundef nonnull align 8 dereferenceable(24) %12)
  ret i1 %13
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm8isa_implINS_5ValueES1_vE4doitERKS1_(%"class.llvm::Value"* noundef nonnull align 8 dereferenceable(24) %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::Value"*, align 8
  store %"class.llvm::Value"* %0, %"class.llvm::Value"** %2, align 8
  ret i1 true
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::Value"* @_ZN4llvm16cast_convert_valINS_5ValueEPS1_S2_E4doitERKS2_(%"class.llvm::Value"** noundef nonnull align 8 dereferenceable(8) %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::Value"**, align 8
  %3 = alloca %"class.llvm::Value"*, align 8
  store %"class.llvm::Value"** %0, %"class.llvm::Value"*** %2, align 8
  %4 = load %"class.llvm::Value"**, %"class.llvm::Value"*** %2, align 8
  %5 = load %"class.llvm::Value"*, %"class.llvm::Value"** %4, align 8
  store %"class.llvm::Value"* %5, %"class.llvm::Value"** %3, align 8
  %6 = load %"class.llvm::Value"*, %"class.llvm::Value"** %3, align 8
  ret %"class.llvm::Value"* %6
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm3isaINS_11InstructionEPNS_5ValueEEEbRKT0_(%"class.llvm::Value"** noundef nonnull align 8 dereferenceable(8) %0) #6 comdat {
  %2 = alloca %"class.llvm::Value"**, align 8
  store %"class.llvm::Value"** %0, %"class.llvm::Value"*** %2, align 8
  %3 = load %"class.llvm::Value"**, %"class.llvm::Value"*** %2, align 8
  %4 = call noundef zeroext i1 @_ZN4llvm13isa_impl_wrapINS_11InstructionEKPNS_5ValueEPKS2_E4doitERS4_(%"class.llvm::Value"** noundef nonnull align 8 dereferenceable(8) %3)
  ret i1 %4
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::Instruction"* @_ZN4llvm4castINS_11InstructionENS_5ValueEEENS_10cast_rettyIT_PT0_E8ret_typeES6_(%"class.llvm::Value"* noundef %0) #6 comdat {
  %2 = alloca %"class.llvm::Value"*, align 8
  store %"class.llvm::Value"* %0, %"class.llvm::Value"** %2, align 8
  %3 = call noundef zeroext i1 @_ZN4llvm3isaINS_11InstructionEPNS_5ValueEEEbRKT0_(%"class.llvm::Value"** noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %4, %1
  %6 = phi i1 [ false, %1 ], [ true, %4 ]
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  br label %10

8:                                                ; preds = %5
  call void @__assert_fail(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 noundef 269, i8* noundef getelementptr inbounds ([95 x i8], [95 x i8]* @__PRETTY_FUNCTION__._ZN4llvm4castINS_11InstructionENS_5ValueEEENS_10cast_rettyIT_PT0_E8ret_typeES6_, i64 0, i64 0)) #15
  unreachable

9:                                                ; No predecessors!
  br label %10

10:                                               ; preds = %9, %7
  %11 = call noundef %"class.llvm::Instruction"* @_ZN4llvm16cast_convert_valINS_11InstructionEPNS_5ValueES3_E4doitERKS3_(%"class.llvm::Value"** noundef nonnull align 8 dereferenceable(8) %2)
  ret %"class.llvm::Instruction"* %11
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm13isa_impl_wrapINS_11InstructionEKPNS_5ValueEPKS2_E4doitERS4_(%"class.llvm::Value"** noundef nonnull align 8 dereferenceable(8) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::Value"**, align 8
  %3 = alloca %"class.llvm::Value"*, align 8
  store %"class.llvm::Value"** %0, %"class.llvm::Value"*** %2, align 8
  %4 = load %"class.llvm::Value"**, %"class.llvm::Value"*** %2, align 8
  %5 = call noundef %"class.llvm::Value"* @_ZN4llvm13simplify_typeIKPNS_5ValueEE18getSimplifiedValueERS3_(%"class.llvm::Value"** noundef nonnull align 8 dereferenceable(8) %4)
  store %"class.llvm::Value"* %5, %"class.llvm::Value"** %3, align 8
  %6 = call noundef zeroext i1 @_ZN4llvm13isa_impl_wrapINS_11InstructionEPKNS_5ValueES4_E4doitERKS4_(%"class.llvm::Value"** noundef nonnull align 8 dereferenceable(8) %3)
  ret i1 %6
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm13isa_impl_wrapINS_11InstructionEPKNS_5ValueES4_E4doitERKS4_(%"class.llvm::Value"** noundef nonnull align 8 dereferenceable(8) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::Value"**, align 8
  store %"class.llvm::Value"** %0, %"class.llvm::Value"*** %2, align 8
  %3 = load %"class.llvm::Value"**, %"class.llvm::Value"*** %2, align 8
  %4 = load %"class.llvm::Value"*, %"class.llvm::Value"** %3, align 8
  %5 = call noundef zeroext i1 @_ZN4llvm11isa_impl_clINS_11InstructionEPKNS_5ValueEE4doitES4_(%"class.llvm::Value"* noundef %4)
  ret i1 %5
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm11isa_impl_clINS_11InstructionEPKNS_5ValueEE4doitES4_(%"class.llvm::Value"* noundef %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::Value"*, align 8
  store %"class.llvm::Value"* %0, %"class.llvm::Value"** %2, align 8
  %3 = load %"class.llvm::Value"*, %"class.llvm::Value"** %2, align 8
  %4 = icmp ne %"class.llvm::Value"* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %5, %1
  %7 = phi i1 [ false, %1 ], [ true, %5 ]
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  br label %11

9:                                                ; preds = %6
  call void @__assert_fail(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 noundef 104, i8* noundef getelementptr inbounds ([143 x i8], [143 x i8]* @__PRETTY_FUNCTION__._ZN4llvm11isa_impl_clINS_11InstructionEPKNS_5ValueEE4doitES4_, i64 0, i64 0)) #15
  unreachable

10:                                               ; No predecessors!
  br label %11

11:                                               ; preds = %10, %8
  %12 = load %"class.llvm::Value"*, %"class.llvm::Value"** %2, align 8
  %13 = call noundef zeroext i1 @_ZN4llvm8isa_implINS_11InstructionENS_5ValueEvE4doitERKS2_(%"class.llvm::Value"* noundef nonnull align 8 dereferenceable(24) %12)
  ret i1 %13
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4llvm8isa_implINS_11InstructionENS_5ValueEvE4doitERKS2_(%"class.llvm::Value"* noundef nonnull align 8 dereferenceable(24) %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::Value"*, align 8
  store %"class.llvm::Value"* %0, %"class.llvm::Value"** %2, align 8
  %3 = load %"class.llvm::Value"*, %"class.llvm::Value"** %2, align 8
  %4 = call noundef i32 @_ZNK4llvm5Value10getValueIDEv(%"class.llvm::Value"* noundef nonnull align 8 dereferenceable(24) %3)
  %5 = icmp uge i32 %4, 27
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::Instruction"* @_ZN4llvm16cast_convert_valINS_11InstructionEPNS_5ValueES3_E4doitERKS3_(%"class.llvm::Value"** noundef nonnull align 8 dereferenceable(8) %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::Value"**, align 8
  %3 = alloca %"class.llvm::Instruction"*, align 8
  store %"class.llvm::Value"** %0, %"class.llvm::Value"*** %2, align 8
  %4 = load %"class.llvm::Value"**, %"class.llvm::Value"*** %2, align 8
  %5 = load %"class.llvm::Value"*, %"class.llvm::Value"** %4, align 8
  %6 = bitcast %"class.llvm::Value"* %5 to %"class.llvm::Instruction"*
  store %"class.llvm::Instruction"* %6, %"class.llvm::Instruction"** %3, align 8
  %7 = load %"class.llvm::Instruction"*, %"class.llvm::Instruction"** %3, align 8
  ret %"class.llvm::Instruction"* %7
}

; Function Attrs: mustprogress noinline optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::ilist_node_impl.122"* @_ZN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_11InstructionELb0ELb0EvEEE7getNextEv(%"class.llvm::ilist_node_impl.122"* noundef nonnull align 8 dereferenceable(16) %0) #6 comdat align 2 {
  %2 = alloca %"class.llvm::ilist_node_impl.122"*, align 8
  store %"class.llvm::ilist_node_impl.122"* %0, %"class.llvm::ilist_node_impl.122"** %2, align 8
  %3 = load %"class.llvm::ilist_node_impl.122"*, %"class.llvm::ilist_node_impl.122"** %2, align 8
  %4 = bitcast %"class.llvm::ilist_node_impl.122"* %3 to %"class.llvm::ilist_node_base"*
  %5 = call noundef %"class.llvm::ilist_node_base"* @_ZNK4llvm15ilist_node_baseILb0EE7getNextEv(%"class.llvm::ilist_node_base"* noundef nonnull align 8 dereferenceable(16) %4)
  %6 = bitcast %"class.llvm::ilist_node_base"* %5 to %"class.llvm::ilist_node_impl.122"*
  ret %"class.llvm::ilist_node_impl.122"* %6
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::ilist_node_base"* @_ZNK4llvm15ilist_node_baseILb0EE7getNextEv(%"class.llvm::ilist_node_base"* noundef nonnull align 8 dereferenceable(16) %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::ilist_node_base"*, align 8
  store %"class.llvm::ilist_node_base"* %0, %"class.llvm::ilist_node_base"** %2, align 8
  %3 = load %"class.llvm::ilist_node_base"*, %"class.llvm::ilist_node_base"** %2, align 8
  %4 = getelementptr inbounds %"class.llvm::ilist_node_base", %"class.llvm::ilist_node_base"* %3, i32 0, i32 1
  %5 = load %"class.llvm::ilist_node_base"*, %"class.llvm::ilist_node_base"** %4, align 8
  ret %"class.llvm::ilist_node_base"* %5
}

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef %"class.llvm::ilist_node_impl.110"* @_ZN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_10BasicBlockELb0ELb0EvEEE7getNextEv(%"class.llvm::ilist_node_impl.110"* noundef nonnull align 8 dereferenceable(16) %0) #4 comdat align 2 {
  %2 = alloca %"class.llvm::ilist_node_impl.110"*, align 8
  store %"class.llvm::ilist_node_impl.110"* %0, %"class.llvm::ilist_node_impl.110"** %2, align 8
  %3 = load %"class.llvm::ilist_node_impl.110"*, %"class.llvm::ilist_node_impl.110"** %2, align 8
  %4 = bitcast %"class.llvm::ilist_node_impl.110"* %3 to %"class.llvm::ilist_node_base"*
  %5 = call noundef %"class.llvm::ilist_node_base"* @_ZNK4llvm15ilist_node_baseILb0EE7getNextEv(%"class.llvm::ilist_node_base"* noundef nonnull align 8 dereferenceable(16) %4)
  %6 = bitcast %"class.llvm::ilist_node_base"* %5 to %"class.llvm::ilist_node_impl.110"*
  ret %"class.llvm::ilist_node_impl.110"* %6
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIPKN4llvm8PassInfoESaIS3_EEC2Ev(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
  %2 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %0, %"class.std::vector"** %2, align 8
  %3 = load %"class.std::vector"*, %"class.std::vector"** %2, align 8
  %4 = bitcast %"class.std::vector"* %3 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIPKN4llvm8PassInfoESaIS3_EEC2Ev(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %4) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIPKN4llvm8PassInfoESaIS3_EEC2Ev(%"struct.std::_Vector_base"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %0, %"struct.std::_Vector_base"** %2, align 8
  %3 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIPKN4llvm8PassInfoESaIS3_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl"* noundef nonnull align 8 dereferenceable(24) %4) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIPKN4llvm8PassInfoESaIS3_EE12_Vector_implC2Ev(%"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl"* %0, %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl"** %2, align 8
  %3 = load %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl"*, %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl"** %2, align 8
  %4 = bitcast %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl"* %3 to %"class.std::allocator"*
  call void @_ZNSaIPKN4llvm8PassInfoEEC2Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %4) #3
  %5 = bitcast %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl"* %3 to %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl_data"*
  call void @_ZNSt12_Vector_baseIPKN4llvm8PassInfoESaIS3_EE17_Vector_impl_dataC2Ev(%"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl_data"* noundef nonnull align 8 dereferenceable(24) %5) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIPKN4llvm8PassInfoEEC2Ev(%"class.std::allocator"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 {
  %2 = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %0, %"class.std::allocator"** %2, align 8
  %3 = load %"class.std::allocator"*, %"class.std::allocator"** %2, align 8
  %4 = bitcast %"class.std::allocator"* %3 to %"class.std::__new_allocator"*
  call void @_ZNSt15__new_allocatorIPKN4llvm8PassInfoEEC2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %4) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIPKN4llvm8PassInfoESaIS3_EE17_Vector_impl_dataC2Ev(%"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl_data"* noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
  %2 = alloca %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl_data"*, align 8
  store %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl_data"* %0, %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl_data"** %2, align 8
  %3 = load %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl_data"*, %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl_data"** %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl_data", %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl_data"* %3, i32 0, i32 0
  store %"class.llvm::PassInfo"** null, %"class.llvm::PassInfo"*** %4, align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl_data", %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl_data"* %3, i32 0, i32 1
  store %"class.llvm::PassInfo"** null, %"class.llvm::PassInfo"*** %5, align 8
  %6 = getelementptr inbounds %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl_data", %"struct.std::_Vector_base<const llvm::PassInfo *, std::allocator<const llvm::PassInfo *>>::_Vector_impl_data"* %3, i32 0, i32 2
  store %"class.llvm::PassInfo"** null, %"class.llvm::PassInfo"*** %6, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIPKN4llvm8PassInfoEEC2Ev(%"class.std::__new_allocator"* noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 {
  %2 = alloca %"class.std::__new_allocator"*, align 8
  store %"class.std::__new_allocator"* %0, %"class.std::__new_allocator"** %2, align 8
  %3 = load %"class.std::__new_allocator"*, %"class.std::__new_allocator"** %2, align 8
  ret void
}

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_heap_pass.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind }
attributes #8 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn nounwind }
attributes #16 = { builtin nounwind }
attributes #17 = { builtin allocsize(0) }
attributes #18 = { noreturn }
attributes #19 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
