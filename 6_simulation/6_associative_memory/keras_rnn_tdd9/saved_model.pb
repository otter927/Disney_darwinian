г
ѓФ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
С
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring Ј
@
StaticRegexFullMatch	
input

output
"
patternstring
і
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
А
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleщшelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements(
handleщшelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintџџџџџџџџџ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68ещ
В
+simple_rnn_359/simple_rnn_cell_35709/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*<
shared_name-+simple_rnn_359/simple_rnn_cell_35709/kernel
Ћ
?simple_rnn_359/simple_rnn_cell_35709/kernel/Read/ReadVariableOpReadVariableOp+simple_rnn_359/simple_rnn_cell_35709/kernel*
_output_shapes

:*
dtype0
Ц
5simple_rnn_359/simple_rnn_cell_35709/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*F
shared_name75simple_rnn_359/simple_rnn_cell_35709/recurrent_kernel
П
Isimple_rnn_359/simple_rnn_cell_35709/recurrent_kernel/Read/ReadVariableOpReadVariableOp5simple_rnn_359/simple_rnn_cell_35709/recurrent_kernel*
_output_shapes

:*
dtype0
Њ
)simple_rnn_359/simple_rnn_cell_35709/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*:
shared_name+)simple_rnn_359/simple_rnn_cell_35709/bias
Ѓ
=simple_rnn_359/simple_rnn_cell_35709/bias/Read/ReadVariableOpReadVariableOp)simple_rnn_359/simple_rnn_cell_35709/bias*
_output_shapes
:*
dtype0

NoOpNoOp
О
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*љ
valueяBь Bх
ф
layer_with_weights-0
layer-0
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	
signatures*
Њ

cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*

0
1
2*

0
1
2*
* 
А
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

serving_default* 
г

kernel
recurrent_kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
 __call__
*!&call_and_return_all_conditional_losses*
* 

0
1
2*

0
1
2*
* 


"states
#non_trainable_variables

$layers
%metrics
&layer_regularization_losses
'layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
ke
VARIABLE_VALUE+simple_rnn_359/simple_rnn_cell_35709/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE5simple_rnn_359/simple_rnn_cell_35709/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUE)simple_rnn_359/simple_rnn_cell_35709/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
* 

0*
* 
* 
* 
* 

0
1
2*

0
1
2*
* 

(non_trainable_variables

)layers
*metrics
+layer_regularization_losses
,layer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses*
* 
* 
* 
* 
* 


0*
* 
* 
* 
* 
* 
* 
* 
* 

$serving_default_simple_rnn_359_inputPlaceholder*+
_output_shapes
:џџџџџџџџџ(*
dtype0* 
shape:џџџџџџџџџ(
ж
StatefulPartitionedCallStatefulPartitionedCall$serving_default_simple_rnn_359_input+simple_rnn_359/simple_rnn_cell_35709/kernel)simple_rnn_359/simple_rnn_cell_35709/bias5simple_rnn_359/simple_rnn_cell_35709/recurrent_kernel*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 */
f*R(
&__inference_signature_wrapper_72531335
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ы
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename?simple_rnn_359/simple_rnn_cell_35709/kernel/Read/ReadVariableOpIsimple_rnn_359/simple_rnn_cell_35709/recurrent_kernel/Read/ReadVariableOp=simple_rnn_359/simple_rnn_cell_35709/bias/Read/ReadVariableOpConst*
Tin	
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__traced_save_72531905
Њ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename+simple_rnn_359/simple_rnn_cell_35709/kernel5simple_rnn_359/simple_rnn_cell_35709/recurrent_kernel)simple_rnn_359/simple_rnn_cell_35709/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference__traced_restore_72531924уТ
§	

L__inference_sequential_359_layer_call_and_return_conditional_losses_72531073
simple_rnn_359_input)
simple_rnn_359_72531065:%
simple_rnn_359_72531067:)
simple_rnn_359_72531069:
identityЂ&simple_rnn_359/StatefulPartitionedCallЗ
&simple_rnn_359/StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_359_inputsimple_rnn_359_72531065simple_rnn_359_72531067simple_rnn_359_72531069*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_simple_rnn_359_layer_call_and_return_conditional_losses_72530870~
IdentityIdentity/simple_rnn_359/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџo
NoOpNoOp'^simple_rnn_359/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ(: : : 2P
&simple_rnn_359/StatefulPartitionedCall&simple_rnn_359/StatefulPartitionedCall:a ]
+
_output_shapes
:џџџџџџџџџ(
.
_user_specified_namesimple_rnn_359_input
"
ћ
while_body_72530684
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_08
&while_simple_rnn_cell_35709_72530706_0:4
&while_simple_rnn_cell_35709_72530708_0:8
&while_simple_rnn_cell_35709_72530710_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor6
$while_simple_rnn_cell_35709_72530706:2
$while_simple_rnn_cell_35709_72530708:6
$while_simple_rnn_cell_35709_72530710:Ђ3while/simple_rnn_cell_35709/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0О
3while/simple_rnn_cell_35709/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2&while_simple_rnn_cell_35709_72530706_0&while_simple_rnn_cell_35709_72530708_0&while_simple_rnn_cell_35709_72530710_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *\
fWRU
S__inference_simple_rnn_cell_35709_layer_call_and_return_conditional_losses_72530632х
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder<while/simple_rnn_cell_35709/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :щшв
while/Identity_4Identity<while/simple_rnn_cell_35709/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ

while/NoOpNoOp4^while/simple_rnn_cell_35709/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"N
$while_simple_rnn_cell_35709_72530706&while_simple_rnn_cell_35709_72530706_0"N
$while_simple_rnn_cell_35709_72530708&while_simple_rnn_cell_35709_72530708_0"N
$while_simple_rnn_cell_35709_72530710&while_simple_rnn_cell_35709_72530710_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ: : : : : 2j
3while/simple_rnn_cell_35709/StatefulPartitionedCall3while/simple_rnn_cell_35709/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
П>
з
L__inference_simple_rnn_359_layer_call_and_return_conditional_losses_72531811

inputsF
4simple_rnn_cell_35709_matmul_readvariableop_resource:C
5simple_rnn_cell_35709_biasadd_readvariableop_resource:H
6simple_rnn_cell_35709_matmul_1_readvariableop_resource:
identityЂ,simple_rnn_cell_35709/BiasAdd/ReadVariableOpЂ+simple_rnn_cell_35709/MatMul/ReadVariableOpЂ-simple_rnn_cell_35709/MatMul_1/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:(џџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask 
+simple_rnn_cell_35709/MatMul/ReadVariableOpReadVariableOp4simple_rnn_cell_35709_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ї
simple_rnn_cell_35709/MatMulMatMulstrided_slice_2:output:03simple_rnn_cell_35709/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
,simple_rnn_cell_35709/BiasAdd/ReadVariableOpReadVariableOp5simple_rnn_cell_35709_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0И
simple_rnn_cell_35709/BiasAddBiasAdd&simple_rnn_cell_35709/MatMul:product:04simple_rnn_cell_35709/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЄ
-simple_rnn_cell_35709/MatMul_1/ReadVariableOpReadVariableOp6simple_rnn_cell_35709_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Ё
simple_rnn_cell_35709/MatMul_1MatMulzeros:output:05simple_rnn_cell_35709/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
simple_rnn_cell_35709/addAddV2&simple_rnn_cell_35709/BiasAdd:output:0(simple_rnn_cell_35709/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџs
simple_rnn_cell_35709/TanhTanhsimple_rnn_cell_35709/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ш
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:04simple_rnn_cell_35709_matmul_readvariableop_resource5simple_rnn_cell_35709_biasadd_readvariableop_resource6simple_rnn_cell_35709_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_72531745*
condR
while_cond_72531744*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:(џџџџџџџџџ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџл
NoOpNoOp-^simple_rnn_cell_35709/BiasAdd/ReadVariableOp,^simple_rnn_cell_35709/MatMul/ReadVariableOp.^simple_rnn_cell_35709/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ(: : : 2\
,simple_rnn_cell_35709/BiasAdd/ReadVariableOp,simple_rnn_cell_35709/BiasAdd/ReadVariableOp2Z
+simple_rnn_cell_35709/MatMul/ReadVariableOp+simple_rnn_cell_35709/MatMul/ReadVariableOp2^
-simple_rnn_cell_35709/MatMul_1/ReadVariableOp-simple_rnn_cell_35709/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs
щL
Р
L__inference_sequential_359_layer_call_and_return_conditional_losses_72531322

inputsU
Csimple_rnn_359_simple_rnn_cell_35709_matmul_readvariableop_resource:R
Dsimple_rnn_359_simple_rnn_cell_35709_biasadd_readvariableop_resource:W
Esimple_rnn_359_simple_rnn_cell_35709_matmul_1_readvariableop_resource:
identityЂ;simple_rnn_359/simple_rnn_cell_35709/BiasAdd/ReadVariableOpЂ:simple_rnn_359/simple_rnn_cell_35709/MatMul/ReadVariableOpЂ<simple_rnn_359/simple_rnn_cell_35709/MatMul_1/ReadVariableOpЂsimple_rnn_359/whileJ
simple_rnn_359/ShapeShapeinputs*
T0*
_output_shapes
:l
"simple_rnn_359/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_359/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_359/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
simple_rnn_359/strided_sliceStridedSlicesimple_rnn_359/Shape:output:0+simple_rnn_359/strided_slice/stack:output:0-simple_rnn_359/strided_slice/stack_1:output:0-simple_rnn_359/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
simple_rnn_359/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 
simple_rnn_359/zeros/packedPack%simple_rnn_359/strided_slice:output:0&simple_rnn_359/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:_
simple_rnn_359/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
simple_rnn_359/zerosFill$simple_rnn_359/zeros/packed:output:0#simple_rnn_359/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџr
simple_rnn_359/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
simple_rnn_359/transpose	Transposeinputs&simple_rnn_359/transpose/perm:output:0*
T0*+
_output_shapes
:(џџџџџџџџџb
simple_rnn_359/Shape_1Shapesimple_rnn_359/transpose:y:0*
T0*
_output_shapes
:n
$simple_rnn_359/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&simple_rnn_359/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&simple_rnn_359/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:І
simple_rnn_359/strided_slice_1StridedSlicesimple_rnn_359/Shape_1:output:0-simple_rnn_359/strided_slice_1/stack:output:0/simple_rnn_359/strided_slice_1/stack_1:output:0/simple_rnn_359/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
*simple_rnn_359/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџс
simple_rnn_359/TensorArrayV2TensorListReserve3simple_rnn_359/TensorArrayV2/element_shape:output:0'simple_rnn_359/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Dsimple_rnn_359/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
6simple_rnn_359/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_359/transpose:y:0Msimple_rnn_359/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвn
$simple_rnn_359/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&simple_rnn_359/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&simple_rnn_359/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Д
simple_rnn_359/strided_slice_2StridedSlicesimple_rnn_359/transpose:y:0-simple_rnn_359/strided_slice_2/stack:output:0/simple_rnn_359/strided_slice_2/stack_1:output:0/simple_rnn_359/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskО
:simple_rnn_359/simple_rnn_cell_35709/MatMul/ReadVariableOpReadVariableOpCsimple_rnn_359_simple_rnn_cell_35709_matmul_readvariableop_resource*
_output_shapes

:*
dtype0д
+simple_rnn_359/simple_rnn_cell_35709/MatMulMatMul'simple_rnn_359/strided_slice_2:output:0Bsimple_rnn_359/simple_rnn_cell_35709/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџМ
;simple_rnn_359/simple_rnn_cell_35709/BiasAdd/ReadVariableOpReadVariableOpDsimple_rnn_359_simple_rnn_cell_35709_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0х
,simple_rnn_359/simple_rnn_cell_35709/BiasAddBiasAdd5simple_rnn_359/simple_rnn_cell_35709/MatMul:product:0Csimple_rnn_359/simple_rnn_cell_35709/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџТ
<simple_rnn_359/simple_rnn_cell_35709/MatMul_1/ReadVariableOpReadVariableOpEsimple_rnn_359_simple_rnn_cell_35709_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Ю
-simple_rnn_359/simple_rnn_cell_35709/MatMul_1MatMulsimple_rnn_359/zeros:output:0Dsimple_rnn_359/simple_rnn_cell_35709/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџг
(simple_rnn_359/simple_rnn_cell_35709/addAddV25simple_rnn_359/simple_rnn_cell_35709/BiasAdd:output:07simple_rnn_359/simple_rnn_cell_35709/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ
)simple_rnn_359/simple_rnn_cell_35709/TanhTanh,simple_rnn_359/simple_rnn_cell_35709/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ}
,simple_rnn_359/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   х
simple_rnn_359/TensorArrayV2_1TensorListReserve5simple_rnn_359/TensorArrayV2_1/element_shape:output:0'simple_rnn_359/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвU
simple_rnn_359/timeConst*
_output_shapes
: *
dtype0*
value	B : r
'simple_rnn_359/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџc
!simple_rnn_359/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ћ
simple_rnn_359/whileWhile*simple_rnn_359/while/loop_counter:output:00simple_rnn_359/while/maximum_iterations:output:0simple_rnn_359/time:output:0'simple_rnn_359/TensorArrayV2_1:handle:0simple_rnn_359/zeros:output:0'simple_rnn_359/strided_slice_1:output:0Fsimple_rnn_359/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csimple_rnn_359_simple_rnn_cell_35709_matmul_readvariableop_resourceDsimple_rnn_359_simple_rnn_cell_35709_biasadd_readvariableop_resourceEsimple_rnn_359_simple_rnn_cell_35709_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *.
body&R$
"simple_rnn_359_while_body_72531256*.
cond&R$
"simple_rnn_359_while_cond_72531255*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
?simple_rnn_359/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   я
1simple_rnn_359/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_359/while:output:3Hsimple_rnn_359/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:(џџџџџџџџџ*
element_dtype0w
$simple_rnn_359/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџp
&simple_rnn_359/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: p
&simple_rnn_359/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:в
simple_rnn_359/strided_slice_3StridedSlice:simple_rnn_359/TensorArrayV2Stack/TensorListStack:tensor:0-simple_rnn_359/strided_slice_3/stack:output:0/simple_rnn_359/strided_slice_3/stack_1:output:0/simple_rnn_359/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskt
simple_rnn_359/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          У
simple_rnn_359/transpose_1	Transpose:simple_rnn_359/TensorArrayV2Stack/TensorListStack:tensor:0(simple_rnn_359/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(v
IdentityIdentity'simple_rnn_359/strided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp<^simple_rnn_359/simple_rnn_cell_35709/BiasAdd/ReadVariableOp;^simple_rnn_359/simple_rnn_cell_35709/MatMul/ReadVariableOp=^simple_rnn_359/simple_rnn_cell_35709/MatMul_1/ReadVariableOp^simple_rnn_359/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ(: : : 2z
;simple_rnn_359/simple_rnn_cell_35709/BiasAdd/ReadVariableOp;simple_rnn_359/simple_rnn_cell_35709/BiasAdd/ReadVariableOp2x
:simple_rnn_359/simple_rnn_cell_35709/MatMul/ReadVariableOp:simple_rnn_359/simple_rnn_cell_35709/MatMul/ReadVariableOp2|
<simple_rnn_359/simple_rnn_cell_35709/MatMul_1/ReadVariableOp<simple_rnn_359/simple_rnn_cell_35709/MatMul_1/ReadVariableOp2,
simple_rnn_359/whilesimple_rnn_359/while:S O
+
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs
ф
Д
while_cond_72530803
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_72530803___redundant_placeholder06
2while_while_cond_72530803___redundant_placeholder16
2while_while_cond_72530803___redundant_placeholder26
2while_while_cond_72530803___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:

ю
1sequential_359_simple_rnn_359_while_cond_72530397X
Tsequential_359_simple_rnn_359_while_sequential_359_simple_rnn_359_while_loop_counter^
Zsequential_359_simple_rnn_359_while_sequential_359_simple_rnn_359_while_maximum_iterations3
/sequential_359_simple_rnn_359_while_placeholder5
1sequential_359_simple_rnn_359_while_placeholder_15
1sequential_359_simple_rnn_359_while_placeholder_2Z
Vsequential_359_simple_rnn_359_while_less_sequential_359_simple_rnn_359_strided_slice_1r
nsequential_359_simple_rnn_359_while_sequential_359_simple_rnn_359_while_cond_72530397___redundant_placeholder0r
nsequential_359_simple_rnn_359_while_sequential_359_simple_rnn_359_while_cond_72530397___redundant_placeholder1r
nsequential_359_simple_rnn_359_while_sequential_359_simple_rnn_359_while_cond_72530397___redundant_placeholder2r
nsequential_359_simple_rnn_359_while_sequential_359_simple_rnn_359_while_cond_72530397___redundant_placeholder30
,sequential_359_simple_rnn_359_while_identity
к
(sequential_359/simple_rnn_359/while/LessLess/sequential_359_simple_rnn_359_while_placeholderVsequential_359_simple_rnn_359_while_less_sequential_359_simple_rnn_359_strided_slice_1*
T0*
_output_shapes
: 
,sequential_359/simple_rnn_359/while/IdentityIdentity,sequential_359/simple_rnn_359/while/Less:z:0*
T0
*
_output_shapes
: "e
,sequential_359_simple_rnn_359_while_identity5sequential_359/simple_rnn_359/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
њ

б
"simple_rnn_359_while_cond_72531147:
6simple_rnn_359_while_simple_rnn_359_while_loop_counter@
<simple_rnn_359_while_simple_rnn_359_while_maximum_iterations$
 simple_rnn_359_while_placeholder&
"simple_rnn_359_while_placeholder_1&
"simple_rnn_359_while_placeholder_2<
8simple_rnn_359_while_less_simple_rnn_359_strided_slice_1T
Psimple_rnn_359_while_simple_rnn_359_while_cond_72531147___redundant_placeholder0T
Psimple_rnn_359_while_simple_rnn_359_while_cond_72531147___redundant_placeholder1T
Psimple_rnn_359_while_simple_rnn_359_while_cond_72531147___redundant_placeholder2T
Psimple_rnn_359_while_simple_rnn_359_while_cond_72531147___redundant_placeholder3!
simple_rnn_359_while_identity

simple_rnn_359/while/LessLess simple_rnn_359_while_placeholder8simple_rnn_359_while_less_simple_rnn_359_strided_slice_1*
T0*
_output_shapes
: i
simple_rnn_359/while/IdentityIdentitysimple_rnn_359/while/Less:z:0*
T0
*
_output_shapes
: "G
simple_rnn_359_while_identity&simple_rnn_359/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
ѕ;
А
"simple_rnn_359_while_body_72531148:
6simple_rnn_359_while_simple_rnn_359_while_loop_counter@
<simple_rnn_359_while_simple_rnn_359_while_maximum_iterations$
 simple_rnn_359_while_placeholder&
"simple_rnn_359_while_placeholder_1&
"simple_rnn_359_while_placeholder_29
5simple_rnn_359_while_simple_rnn_359_strided_slice_1_0u
qsimple_rnn_359_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_359_tensorarrayunstack_tensorlistfromtensor_0]
Ksimple_rnn_359_while_simple_rnn_cell_35709_matmul_readvariableop_resource_0:Z
Lsimple_rnn_359_while_simple_rnn_cell_35709_biasadd_readvariableop_resource_0:_
Msimple_rnn_359_while_simple_rnn_cell_35709_matmul_1_readvariableop_resource_0:!
simple_rnn_359_while_identity#
simple_rnn_359_while_identity_1#
simple_rnn_359_while_identity_2#
simple_rnn_359_while_identity_3#
simple_rnn_359_while_identity_47
3simple_rnn_359_while_simple_rnn_359_strided_slice_1s
osimple_rnn_359_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_359_tensorarrayunstack_tensorlistfromtensor[
Isimple_rnn_359_while_simple_rnn_cell_35709_matmul_readvariableop_resource:X
Jsimple_rnn_359_while_simple_rnn_cell_35709_biasadd_readvariableop_resource:]
Ksimple_rnn_359_while_simple_rnn_cell_35709_matmul_1_readvariableop_resource:ЂAsimple_rnn_359/while/simple_rnn_cell_35709/BiasAdd/ReadVariableOpЂ@simple_rnn_359/while/simple_rnn_cell_35709/MatMul/ReadVariableOpЂBsimple_rnn_359/while/simple_rnn_cell_35709/MatMul_1/ReadVariableOp
Fsimple_rnn_359/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ё
8simple_rnn_359/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemqsimple_rnn_359_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_359_tensorarrayunstack_tensorlistfromtensor_0 simple_rnn_359_while_placeholderOsimple_rnn_359/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ь
@simple_rnn_359/while/simple_rnn_cell_35709/MatMul/ReadVariableOpReadVariableOpKsimple_rnn_359_while_simple_rnn_cell_35709_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0ј
1simple_rnn_359/while/simple_rnn_cell_35709/MatMulMatMul?simple_rnn_359/while/TensorArrayV2Read/TensorListGetItem:item:0Hsimple_rnn_359/while/simple_rnn_cell_35709/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЪ
Asimple_rnn_359/while/simple_rnn_cell_35709/BiasAdd/ReadVariableOpReadVariableOpLsimple_rnn_359_while_simple_rnn_cell_35709_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0ї
2simple_rnn_359/while/simple_rnn_cell_35709/BiasAddBiasAdd;simple_rnn_359/while/simple_rnn_cell_35709/MatMul:product:0Isimple_rnn_359/while/simple_rnn_cell_35709/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџа
Bsimple_rnn_359/while/simple_rnn_cell_35709/MatMul_1/ReadVariableOpReadVariableOpMsimple_rnn_359_while_simple_rnn_cell_35709_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0п
3simple_rnn_359/while/simple_rnn_cell_35709/MatMul_1MatMul"simple_rnn_359_while_placeholder_2Jsimple_rnn_359/while/simple_rnn_cell_35709/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџх
.simple_rnn_359/while/simple_rnn_cell_35709/addAddV2;simple_rnn_359/while/simple_rnn_cell_35709/BiasAdd:output:0=simple_rnn_359/while/simple_rnn_cell_35709/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ
/simple_rnn_359/while/simple_rnn_cell_35709/TanhTanh2simple_rnn_359/while/simple_rnn_cell_35709/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
9simple_rnn_359/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem"simple_rnn_359_while_placeholder_1 simple_rnn_359_while_placeholder3simple_rnn_359/while/simple_rnn_cell_35709/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшв\
simple_rnn_359/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_359/while/addAddV2 simple_rnn_359_while_placeholder#simple_rnn_359/while/add/y:output:0*
T0*
_output_shapes
: ^
simple_rnn_359/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ѓ
simple_rnn_359/while/add_1AddV26simple_rnn_359_while_simple_rnn_359_while_loop_counter%simple_rnn_359/while/add_1/y:output:0*
T0*
_output_shapes
: 
simple_rnn_359/while/IdentityIdentitysimple_rnn_359/while/add_1:z:0^simple_rnn_359/while/NoOp*
T0*
_output_shapes
: І
simple_rnn_359/while/Identity_1Identity<simple_rnn_359_while_simple_rnn_359_while_maximum_iterations^simple_rnn_359/while/NoOp*
T0*
_output_shapes
: 
simple_rnn_359/while/Identity_2Identitysimple_rnn_359/while/add:z:0^simple_rnn_359/while/NoOp*
T0*
_output_shapes
: Ц
simple_rnn_359/while/Identity_3IdentityIsimple_rnn_359/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_359/while/NoOp*
T0*
_output_shapes
: :щшвЎ
simple_rnn_359/while/Identity_4Identity3simple_rnn_359/while/simple_rnn_cell_35709/Tanh:y:0^simple_rnn_359/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџЇ
simple_rnn_359/while/NoOpNoOpB^simple_rnn_359/while/simple_rnn_cell_35709/BiasAdd/ReadVariableOpA^simple_rnn_359/while/simple_rnn_cell_35709/MatMul/ReadVariableOpC^simple_rnn_359/while/simple_rnn_cell_35709/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "G
simple_rnn_359_while_identity&simple_rnn_359/while/Identity:output:0"K
simple_rnn_359_while_identity_1(simple_rnn_359/while/Identity_1:output:0"K
simple_rnn_359_while_identity_2(simple_rnn_359/while/Identity_2:output:0"K
simple_rnn_359_while_identity_3(simple_rnn_359/while/Identity_3:output:0"K
simple_rnn_359_while_identity_4(simple_rnn_359/while/Identity_4:output:0"l
3simple_rnn_359_while_simple_rnn_359_strided_slice_15simple_rnn_359_while_simple_rnn_359_strided_slice_1_0"
Jsimple_rnn_359_while_simple_rnn_cell_35709_biasadd_readvariableop_resourceLsimple_rnn_359_while_simple_rnn_cell_35709_biasadd_readvariableop_resource_0"
Ksimple_rnn_359_while_simple_rnn_cell_35709_matmul_1_readvariableop_resourceMsimple_rnn_359_while_simple_rnn_cell_35709_matmul_1_readvariableop_resource_0"
Isimple_rnn_359_while_simple_rnn_cell_35709_matmul_readvariableop_resourceKsimple_rnn_359_while_simple_rnn_cell_35709_matmul_readvariableop_resource_0"ф
osimple_rnn_359_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_359_tensorarrayunstack_tensorlistfromtensorqsimple_rnn_359_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_359_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ: : : : : 2
Asimple_rnn_359/while/simple_rnn_cell_35709/BiasAdd/ReadVariableOpAsimple_rnn_359/while/simple_rnn_cell_35709/BiasAdd/ReadVariableOp2
@simple_rnn_359/while/simple_rnn_cell_35709/MatMul/ReadVariableOp@simple_rnn_359/while/simple_rnn_cell_35709/MatMul/ReadVariableOp2
Bsimple_rnn_359/while/simple_rnn_cell_35709/MatMul_1/ReadVariableOpBsimple_rnn_359/while/simple_rnn_cell_35709/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
"
ћ
while_body_72530525
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_08
&while_simple_rnn_cell_35709_72530547_0:4
&while_simple_rnn_cell_35709_72530549_0:8
&while_simple_rnn_cell_35709_72530551_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor6
$while_simple_rnn_cell_35709_72530547:2
$while_simple_rnn_cell_35709_72530549:6
$while_simple_rnn_cell_35709_72530551:Ђ3while/simple_rnn_cell_35709/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0О
3while/simple_rnn_cell_35709/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2&while_simple_rnn_cell_35709_72530547_0&while_simple_rnn_cell_35709_72530549_0&while_simple_rnn_cell_35709_72530551_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *\
fWRU
S__inference_simple_rnn_cell_35709_layer_call_and_return_conditional_losses_72530512х
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder<while/simple_rnn_cell_35709/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :щшв
while/Identity_4Identity<while/simple_rnn_cell_35709/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџ

while/NoOpNoOp4^while/simple_rnn_cell_35709/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"N
$while_simple_rnn_cell_35709_72530547&while_simple_rnn_cell_35709_72530547_0"N
$while_simple_rnn_cell_35709_72530549&while_simple_rnn_cell_35709_72530549_0"N
$while_simple_rnn_cell_35709_72530551&while_simple_rnn_cell_35709_72530551_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ: : : : : 2j
3while/simple_rnn_cell_35709/StatefulPartitionedCall3while/simple_rnn_cell_35709/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
№-
ю
while_body_72530804
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0N
<while_simple_rnn_cell_35709_matmul_readvariableop_resource_0:K
=while_simple_rnn_cell_35709_biasadd_readvariableop_resource_0:P
>while_simple_rnn_cell_35709_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorL
:while_simple_rnn_cell_35709_matmul_readvariableop_resource:I
;while_simple_rnn_cell_35709_biasadd_readvariableop_resource:N
<while_simple_rnn_cell_35709_matmul_1_readvariableop_resource:Ђ2while/simple_rnn_cell_35709/BiasAdd/ReadVariableOpЂ1while/simple_rnn_cell_35709/MatMul/ReadVariableOpЂ3while/simple_rnn_cell_35709/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ў
1while/simple_rnn_cell_35709/MatMul/ReadVariableOpReadVariableOp<while_simple_rnn_cell_35709_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0Ы
"while/simple_rnn_cell_35709/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:09while/simple_rnn_cell_35709/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЌ
2while/simple_rnn_cell_35709/BiasAdd/ReadVariableOpReadVariableOp=while_simple_rnn_cell_35709_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0Ъ
#while/simple_rnn_cell_35709/BiasAddBiasAdd,while/simple_rnn_cell_35709/MatMul:product:0:while/simple_rnn_cell_35709/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџВ
3while/simple_rnn_cell_35709/MatMul_1/ReadVariableOpReadVariableOp>while_simple_rnn_cell_35709_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0В
$while/simple_rnn_cell_35709/MatMul_1MatMulwhile_placeholder_2;while/simple_rnn_cell_35709/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџИ
while/simple_rnn_cell_35709/addAddV2,while/simple_rnn_cell_35709/BiasAdd:output:0.while/simple_rnn_cell_35709/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ
 while/simple_rnn_cell_35709/TanhTanh#while/simple_rnn_cell_35709/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџЭ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder$while/simple_rnn_cell_35709/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :щшв
while/Identity_4Identity$while/simple_rnn_cell_35709/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџы

while/NoOpNoOp3^while/simple_rnn_cell_35709/BiasAdd/ReadVariableOp2^while/simple_rnn_cell_35709/MatMul/ReadVariableOp4^while/simple_rnn_cell_35709/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"|
;while_simple_rnn_cell_35709_biasadd_readvariableop_resource=while_simple_rnn_cell_35709_biasadd_readvariableop_resource_0"~
<while_simple_rnn_cell_35709_matmul_1_readvariableop_resource>while_simple_rnn_cell_35709_matmul_1_readvariableop_resource_0"z
:while_simple_rnn_cell_35709_matmul_readvariableop_resource<while_simple_rnn_cell_35709_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ: : : : : 2h
2while/simple_rnn_cell_35709/BiasAdd/ReadVariableOp2while/simple_rnn_cell_35709/BiasAdd/ReadVariableOp2f
1while/simple_rnn_cell_35709/MatMul/ReadVariableOp1while/simple_rnn_cell_35709/MatMul/ReadVariableOp2j
3while/simple_rnn_cell_35709/MatMul_1/ReadVariableOp3while/simple_rnn_cell_35709/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 

Л
1__inference_simple_rnn_359_layer_call_fn_72531368

inputs
unknown:
	unknown_0:
	unknown_1:
identityЂStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_simple_rnn_359_layer_call_and_return_conditional_losses_72530870o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ(: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs
№-
ю
while_body_72531421
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0N
<while_simple_rnn_cell_35709_matmul_readvariableop_resource_0:K
=while_simple_rnn_cell_35709_biasadd_readvariableop_resource_0:P
>while_simple_rnn_cell_35709_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorL
:while_simple_rnn_cell_35709_matmul_readvariableop_resource:I
;while_simple_rnn_cell_35709_biasadd_readvariableop_resource:N
<while_simple_rnn_cell_35709_matmul_1_readvariableop_resource:Ђ2while/simple_rnn_cell_35709/BiasAdd/ReadVariableOpЂ1while/simple_rnn_cell_35709/MatMul/ReadVariableOpЂ3while/simple_rnn_cell_35709/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ў
1while/simple_rnn_cell_35709/MatMul/ReadVariableOpReadVariableOp<while_simple_rnn_cell_35709_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0Ы
"while/simple_rnn_cell_35709/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:09while/simple_rnn_cell_35709/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЌ
2while/simple_rnn_cell_35709/BiasAdd/ReadVariableOpReadVariableOp=while_simple_rnn_cell_35709_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0Ъ
#while/simple_rnn_cell_35709/BiasAddBiasAdd,while/simple_rnn_cell_35709/MatMul:product:0:while/simple_rnn_cell_35709/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџВ
3while/simple_rnn_cell_35709/MatMul_1/ReadVariableOpReadVariableOp>while_simple_rnn_cell_35709_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0В
$while/simple_rnn_cell_35709/MatMul_1MatMulwhile_placeholder_2;while/simple_rnn_cell_35709/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџИ
while/simple_rnn_cell_35709/addAddV2,while/simple_rnn_cell_35709/BiasAdd:output:0.while/simple_rnn_cell_35709/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ
 while/simple_rnn_cell_35709/TanhTanh#while/simple_rnn_cell_35709/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџЭ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder$while/simple_rnn_cell_35709/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :щшв
while/Identity_4Identity$while/simple_rnn_cell_35709/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџы

while/NoOpNoOp3^while/simple_rnn_cell_35709/BiasAdd/ReadVariableOp2^while/simple_rnn_cell_35709/MatMul/ReadVariableOp4^while/simple_rnn_cell_35709/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"|
;while_simple_rnn_cell_35709_biasadd_readvariableop_resource=while_simple_rnn_cell_35709_biasadd_readvariableop_resource_0"~
<while_simple_rnn_cell_35709_matmul_1_readvariableop_resource>while_simple_rnn_cell_35709_matmul_1_readvariableop_resource_0"z
:while_simple_rnn_cell_35709_matmul_readvariableop_resource<while_simple_rnn_cell_35709_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ: : : : : 2h
2while/simple_rnn_cell_35709/BiasAdd/ReadVariableOp2while/simple_rnn_cell_35709/BiasAdd/ReadVariableOp2f
1while/simple_rnn_cell_35709/MatMul/ReadVariableOp1while/simple_rnn_cell_35709/MatMul/ReadVariableOp2j
3while/simple_rnn_cell_35709/MatMul_1/ReadVariableOp3while/simple_rnn_cell_35709/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
П>
з
L__inference_simple_rnn_359_layer_call_and_return_conditional_losses_72531009

inputsF
4simple_rnn_cell_35709_matmul_readvariableop_resource:C
5simple_rnn_cell_35709_biasadd_readvariableop_resource:H
6simple_rnn_cell_35709_matmul_1_readvariableop_resource:
identityЂ,simple_rnn_cell_35709/BiasAdd/ReadVariableOpЂ+simple_rnn_cell_35709/MatMul/ReadVariableOpЂ-simple_rnn_cell_35709/MatMul_1/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:(џџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask 
+simple_rnn_cell_35709/MatMul/ReadVariableOpReadVariableOp4simple_rnn_cell_35709_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ї
simple_rnn_cell_35709/MatMulMatMulstrided_slice_2:output:03simple_rnn_cell_35709/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
,simple_rnn_cell_35709/BiasAdd/ReadVariableOpReadVariableOp5simple_rnn_cell_35709_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0И
simple_rnn_cell_35709/BiasAddBiasAdd&simple_rnn_cell_35709/MatMul:product:04simple_rnn_cell_35709/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЄ
-simple_rnn_cell_35709/MatMul_1/ReadVariableOpReadVariableOp6simple_rnn_cell_35709_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Ё
simple_rnn_cell_35709/MatMul_1MatMulzeros:output:05simple_rnn_cell_35709/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
simple_rnn_cell_35709/addAddV2&simple_rnn_cell_35709/BiasAdd:output:0(simple_rnn_cell_35709/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџs
simple_rnn_cell_35709/TanhTanhsimple_rnn_cell_35709/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ш
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:04simple_rnn_cell_35709_matmul_readvariableop_resource5simple_rnn_cell_35709_biasadd_readvariableop_resource6simple_rnn_cell_35709_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_72530943*
condR
while_cond_72530942*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:(џџџџџџџџџ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџл
NoOpNoOp-^simple_rnn_cell_35709/BiasAdd/ReadVariableOp,^simple_rnn_cell_35709/MatMul/ReadVariableOp.^simple_rnn_cell_35709/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ(: : : 2\
,simple_rnn_cell_35709/BiasAdd/ReadVariableOp,simple_rnn_cell_35709/BiasAdd/ReadVariableOp2Z
+simple_rnn_cell_35709/MatMul/ReadVariableOp+simple_rnn_cell_35709/MatMul/ReadVariableOp2^
-simple_rnn_cell_35709/MatMul_1/ReadVariableOp-simple_rnn_cell_35709/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs
ф
Д
while_cond_72531528
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_72531528___redundant_placeholder06
2while_while_cond_72531528___redundant_placeholder16
2while_while_cond_72531528___redundant_placeholder26
2while_while_cond_72531528___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
ќ
О
&__inference_signature_wrapper_72531335
simple_rnn_359_input
unknown:
	unknown_0:
	unknown_1:
identityЂStatefulPartitionedCallг
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_359_inputunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference__wrapped_model_72530464o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ(: : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
+
_output_shapes
:џџџџџџџџџ(
.
_user_specified_namesimple_rnn_359_input
ф
Д
while_cond_72530683
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_72530683___redundant_placeholder06
2while_while_cond_72530683___redundant_placeholder16
2while_while_cond_72530683___redundant_placeholder26
2while_while_cond_72530683___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
П>
з
L__inference_simple_rnn_359_layer_call_and_return_conditional_losses_72531703

inputsF
4simple_rnn_cell_35709_matmul_readvariableop_resource:C
5simple_rnn_cell_35709_biasadd_readvariableop_resource:H
6simple_rnn_cell_35709_matmul_1_readvariableop_resource:
identityЂ,simple_rnn_cell_35709/BiasAdd/ReadVariableOpЂ+simple_rnn_cell_35709/MatMul/ReadVariableOpЂ-simple_rnn_cell_35709/MatMul_1/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:(џџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask 
+simple_rnn_cell_35709/MatMul/ReadVariableOpReadVariableOp4simple_rnn_cell_35709_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ї
simple_rnn_cell_35709/MatMulMatMulstrided_slice_2:output:03simple_rnn_cell_35709/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
,simple_rnn_cell_35709/BiasAdd/ReadVariableOpReadVariableOp5simple_rnn_cell_35709_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0И
simple_rnn_cell_35709/BiasAddBiasAdd&simple_rnn_cell_35709/MatMul:product:04simple_rnn_cell_35709/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЄ
-simple_rnn_cell_35709/MatMul_1/ReadVariableOpReadVariableOp6simple_rnn_cell_35709_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Ё
simple_rnn_cell_35709/MatMul_1MatMulzeros:output:05simple_rnn_cell_35709/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
simple_rnn_cell_35709/addAddV2&simple_rnn_cell_35709/BiasAdd:output:0(simple_rnn_cell_35709/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџs
simple_rnn_cell_35709/TanhTanhsimple_rnn_cell_35709/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ш
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:04simple_rnn_cell_35709_matmul_readvariableop_resource5simple_rnn_cell_35709_biasadd_readvariableop_resource6simple_rnn_cell_35709_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_72531637*
condR
while_cond_72531636*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:(џџџџџџџџџ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџл
NoOpNoOp-^simple_rnn_cell_35709/BiasAdd/ReadVariableOp,^simple_rnn_cell_35709/MatMul/ReadVariableOp.^simple_rnn_cell_35709/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ(: : : 2\
,simple_rnn_cell_35709/BiasAdd/ReadVariableOp,simple_rnn_cell_35709/BiasAdd/ReadVariableOp2Z
+simple_rnn_cell_35709/MatMul/ReadVariableOp+simple_rnn_cell_35709/MatMul/ReadVariableOp2^
-simple_rnn_cell_35709/MatMul_1/ReadVariableOp-simple_rnn_cell_35709/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs
г	

L__inference_sequential_359_layer_call_and_return_conditional_losses_72531042

inputs)
simple_rnn_359_72531034:%
simple_rnn_359_72531036:)
simple_rnn_359_72531038:
identityЂ&simple_rnn_359/StatefulPartitionedCallЉ
&simple_rnn_359/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_359_72531034simple_rnn_359_72531036simple_rnn_359_72531038*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_simple_rnn_359_layer_call_and_return_conditional_losses_72531009~
IdentityIdentity/simple_rnn_359/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџo
NoOpNoOp'^simple_rnn_359/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ(: : : 2P
&simple_rnn_359/StatefulPartitionedCall&simple_rnn_359/StatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs

Н
1__inference_simple_rnn_359_layer_call_fn_72531346
inputs_0
unknown:
	unknown_0:
	unknown_1:
identityЂStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_simple_rnn_359_layer_call_and_return_conditional_losses_72530588o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
с4
Е
L__inference_simple_rnn_359_layer_call_and_return_conditional_losses_72530747

inputs0
simple_rnn_cell_35709_72530672:,
simple_rnn_cell_35709_72530674:0
simple_rnn_cell_35709_72530676:
identityЂ-simple_rnn_cell_35709/StatefulPartitionedCallЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
-simple_rnn_cell_35709/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_35709_72530672simple_rnn_cell_35709_72530674simple_rnn_cell_35709_72530676*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *\
fWRU
S__inference_simple_rnn_cell_35709_layer_call_and_return_conditional_losses_72530632n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ѓ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_35709_72530672simple_rnn_cell_35709_72530674simple_rnn_cell_35709_72530676*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_72530684*
condR
while_cond_72530683*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ~
NoOpNoOp.^simple_rnn_cell_35709/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2^
-simple_rnn_cell_35709/StatefulPartitionedCall-simple_rnn_cell_35709/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
є>
й
L__inference_simple_rnn_359_layer_call_and_return_conditional_losses_72531487
inputs_0F
4simple_rnn_cell_35709_matmul_readvariableop_resource:C
5simple_rnn_cell_35709_biasadd_readvariableop_resource:H
6simple_rnn_cell_35709_matmul_1_readvariableop_resource:
identityЂ,simple_rnn_cell_35709/BiasAdd/ReadVariableOpЂ+simple_rnn_cell_35709/MatMul/ReadVariableOpЂ-simple_rnn_cell_35709/MatMul_1/ReadVariableOpЂwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask 
+simple_rnn_cell_35709/MatMul/ReadVariableOpReadVariableOp4simple_rnn_cell_35709_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ї
simple_rnn_cell_35709/MatMulMatMulstrided_slice_2:output:03simple_rnn_cell_35709/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
,simple_rnn_cell_35709/BiasAdd/ReadVariableOpReadVariableOp5simple_rnn_cell_35709_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0И
simple_rnn_cell_35709/BiasAddBiasAdd&simple_rnn_cell_35709/MatMul:product:04simple_rnn_cell_35709/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЄ
-simple_rnn_cell_35709/MatMul_1/ReadVariableOpReadVariableOp6simple_rnn_cell_35709_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Ё
simple_rnn_cell_35709/MatMul_1MatMulzeros:output:05simple_rnn_cell_35709/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
simple_rnn_cell_35709/addAddV2&simple_rnn_cell_35709/BiasAdd:output:0(simple_rnn_cell_35709/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџs
simple_rnn_cell_35709/TanhTanhsimple_rnn_cell_35709/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ш
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:04simple_rnn_cell_35709_matmul_readvariableop_resource5simple_rnn_cell_35709_biasadd_readvariableop_resource6simple_rnn_cell_35709_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_72531421*
condR
while_cond_72531420*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџл
NoOpNoOp-^simple_rnn_cell_35709/BiasAdd/ReadVariableOp,^simple_rnn_cell_35709/MatMul/ReadVariableOp.^simple_rnn_cell_35709/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2\
,simple_rnn_cell_35709/BiasAdd/ReadVariableOp,simple_rnn_cell_35709/BiasAdd/ReadVariableOp2Z
+simple_rnn_cell_35709/MatMul/ReadVariableOp+simple_rnn_cell_35709/MatMul/ReadVariableOp2^
-simple_rnn_cell_35709/MatMul_1/ReadVariableOp-simple_rnn_cell_35709/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
§	

L__inference_sequential_359_layer_call_and_return_conditional_losses_72531084
simple_rnn_359_input)
simple_rnn_359_72531076:%
simple_rnn_359_72531078:)
simple_rnn_359_72531080:
identityЂ&simple_rnn_359/StatefulPartitionedCallЗ
&simple_rnn_359/StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_359_inputsimple_rnn_359_72531076simple_rnn_359_72531078simple_rnn_359_72531080*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_simple_rnn_359_layer_call_and_return_conditional_losses_72531009~
IdentityIdentity/simple_rnn_359/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџo
NoOpNoOp'^simple_rnn_359/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ(: : : 2P
&simple_rnn_359/StatefulPartitionedCall&simple_rnn_359/StatefulPartitionedCall:a ]
+
_output_shapes
:џџџџџџџџџ(
.
_user_specified_namesimple_rnn_359_input

ю
S__inference_simple_rnn_cell_35709_layer_call_and_return_conditional_losses_72530632

inputs

states0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџG
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ:џџџџџџџџџ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_namestates
ф
Д
while_cond_72530524
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_72530524___redundant_placeholder06
2while_while_cond_72530524___redundant_placeholder16
2while_while_cond_72530524___redundant_placeholder26
2while_while_cond_72530524___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
А
Щ
1__inference_sequential_359_layer_call_fn_72531062
simple_rnn_359_input
unknown:
	unknown_0:
	unknown_1:
identityЂStatefulPartitionedCallќ
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_359_inputunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_sequential_359_layer_call_and_return_conditional_losses_72531042o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ(: : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
+
_output_shapes
:џџџџџџџџџ(
.
_user_specified_namesimple_rnn_359_input

ю
S__inference_simple_rnn_cell_35709_layer_call_and_return_conditional_losses_72530512

inputs

states0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџG
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ:џџџџџџџџџ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_namestates

№
S__inference_simple_rnn_cell_35709_layer_call_and_return_conditional_losses_72531873

inputs
states_00
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџG
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ:џџџџџџџџџ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states/0

Л
1__inference_simple_rnn_359_layer_call_fn_72531379

inputs
unknown:
	unknown_0:
	unknown_1:
identityЂStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_simple_rnn_359_layer_call_and_return_conditional_losses_72531009o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ(: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs

џ
$__inference__traced_restore_72531924
file_prefixN
<assignvariableop_simple_rnn_359_simple_rnn_cell_35709_kernel:Z
Hassignvariableop_1_simple_rnn_359_simple_rnn_cell_35709_recurrent_kernel:J
<assignvariableop_2_simple_rnn_359_simple_rnn_cell_35709_bias:

identity_4ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_2
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ћ
valueЁBB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHx
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B В
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*$
_output_shapes
::::*
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOpAssignVariableOp<assignvariableop_simple_rnn_359_simple_rnn_cell_35709_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:З
AssignVariableOp_1AssignVariableOpHassignvariableop_1_simple_rnn_359_simple_rnn_cell_35709_recurrent_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_2AssignVariableOp<assignvariableop_2_simple_rnn_359_simple_rnn_cell_35709_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 

Identity_3Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^NoOp"/device:CPU:0*
T0*
_output_shapes
: U

Identity_4IdentityIdentity_3:output:0^NoOp_1*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2*"
_acd_function_control_output(*
_output_shapes
 "!

identity_4Identity_4:output:0*
_input_shapes

: : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_2:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix

Л
1__inference_sequential_359_layer_call_fn_72531095

inputs
unknown:
	unknown_0:
	unknown_1:
identityЂStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_sequential_359_layer_call_and_return_conditional_losses_72530879o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ(: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs
іI
і
1sequential_359_simple_rnn_359_while_body_72530398X
Tsequential_359_simple_rnn_359_while_sequential_359_simple_rnn_359_while_loop_counter^
Zsequential_359_simple_rnn_359_while_sequential_359_simple_rnn_359_while_maximum_iterations3
/sequential_359_simple_rnn_359_while_placeholder5
1sequential_359_simple_rnn_359_while_placeholder_15
1sequential_359_simple_rnn_359_while_placeholder_2W
Ssequential_359_simple_rnn_359_while_sequential_359_simple_rnn_359_strided_slice_1_0
sequential_359_simple_rnn_359_while_tensorarrayv2read_tensorlistgetitem_sequential_359_simple_rnn_359_tensorarrayunstack_tensorlistfromtensor_0l
Zsequential_359_simple_rnn_359_while_simple_rnn_cell_35709_matmul_readvariableop_resource_0:i
[sequential_359_simple_rnn_359_while_simple_rnn_cell_35709_biasadd_readvariableop_resource_0:n
\sequential_359_simple_rnn_359_while_simple_rnn_cell_35709_matmul_1_readvariableop_resource_0:0
,sequential_359_simple_rnn_359_while_identity2
.sequential_359_simple_rnn_359_while_identity_12
.sequential_359_simple_rnn_359_while_identity_22
.sequential_359_simple_rnn_359_while_identity_32
.sequential_359_simple_rnn_359_while_identity_4U
Qsequential_359_simple_rnn_359_while_sequential_359_simple_rnn_359_strided_slice_1
sequential_359_simple_rnn_359_while_tensorarrayv2read_tensorlistgetitem_sequential_359_simple_rnn_359_tensorarrayunstack_tensorlistfromtensorj
Xsequential_359_simple_rnn_359_while_simple_rnn_cell_35709_matmul_readvariableop_resource:g
Ysequential_359_simple_rnn_359_while_simple_rnn_cell_35709_biasadd_readvariableop_resource:l
Zsequential_359_simple_rnn_359_while_simple_rnn_cell_35709_matmul_1_readvariableop_resource:ЂPsequential_359/simple_rnn_359/while/simple_rnn_cell_35709/BiasAdd/ReadVariableOpЂOsequential_359/simple_rnn_359/while/simple_rnn_cell_35709/MatMul/ReadVariableOpЂQsequential_359/simple_rnn_359/while/simple_rnn_cell_35709/MatMul_1/ReadVariableOpІ
Usequential_359/simple_rnn_359/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Н
Gsequential_359/simple_rnn_359/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_359_simple_rnn_359_while_tensorarrayv2read_tensorlistgetitem_sequential_359_simple_rnn_359_tensorarrayunstack_tensorlistfromtensor_0/sequential_359_simple_rnn_359_while_placeholder^sequential_359/simple_rnn_359/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0ъ
Osequential_359/simple_rnn_359/while/simple_rnn_cell_35709/MatMul/ReadVariableOpReadVariableOpZsequential_359_simple_rnn_359_while_simple_rnn_cell_35709_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0Ѕ
@sequential_359/simple_rnn_359/while/simple_rnn_cell_35709/MatMulMatMulNsequential_359/simple_rnn_359/while/TensorArrayV2Read/TensorListGetItem:item:0Wsequential_359/simple_rnn_359/while/simple_rnn_cell_35709/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџш
Psequential_359/simple_rnn_359/while/simple_rnn_cell_35709/BiasAdd/ReadVariableOpReadVariableOp[sequential_359_simple_rnn_359_while_simple_rnn_cell_35709_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0Є
Asequential_359/simple_rnn_359/while/simple_rnn_cell_35709/BiasAddBiasAddJsequential_359/simple_rnn_359/while/simple_rnn_cell_35709/MatMul:product:0Xsequential_359/simple_rnn_359/while/simple_rnn_cell_35709/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџю
Qsequential_359/simple_rnn_359/while/simple_rnn_cell_35709/MatMul_1/ReadVariableOpReadVariableOp\sequential_359_simple_rnn_359_while_simple_rnn_cell_35709_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0
Bsequential_359/simple_rnn_359/while/simple_rnn_cell_35709/MatMul_1MatMul1sequential_359_simple_rnn_359_while_placeholder_2Ysequential_359/simple_rnn_359/while/simple_rnn_cell_35709/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
=sequential_359/simple_rnn_359/while/simple_rnn_cell_35709/addAddV2Jsequential_359/simple_rnn_359/while/simple_rnn_cell_35709/BiasAdd:output:0Lsequential_359/simple_rnn_359/while/simple_rnn_cell_35709/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџЛ
>sequential_359/simple_rnn_359/while/simple_rnn_cell_35709/TanhTanhAsequential_359/simple_rnn_359/while/simple_rnn_cell_35709/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџХ
Hsequential_359/simple_rnn_359/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem1sequential_359_simple_rnn_359_while_placeholder_1/sequential_359_simple_rnn_359_while_placeholderBsequential_359/simple_rnn_359/while/simple_rnn_cell_35709/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвk
)sequential_359/simple_rnn_359/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ж
'sequential_359/simple_rnn_359/while/addAddV2/sequential_359_simple_rnn_359_while_placeholder2sequential_359/simple_rnn_359/while/add/y:output:0*
T0*
_output_shapes
: m
+sequential_359/simple_rnn_359/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :п
)sequential_359/simple_rnn_359/while/add_1AddV2Tsequential_359_simple_rnn_359_while_sequential_359_simple_rnn_359_while_loop_counter4sequential_359/simple_rnn_359/while/add_1/y:output:0*
T0*
_output_shapes
: Г
,sequential_359/simple_rnn_359/while/IdentityIdentity-sequential_359/simple_rnn_359/while/add_1:z:0)^sequential_359/simple_rnn_359/while/NoOp*
T0*
_output_shapes
: т
.sequential_359/simple_rnn_359/while/Identity_1IdentityZsequential_359_simple_rnn_359_while_sequential_359_simple_rnn_359_while_maximum_iterations)^sequential_359/simple_rnn_359/while/NoOp*
T0*
_output_shapes
: Г
.sequential_359/simple_rnn_359/while/Identity_2Identity+sequential_359/simple_rnn_359/while/add:z:0)^sequential_359/simple_rnn_359/while/NoOp*
T0*
_output_shapes
: ѓ
.sequential_359/simple_rnn_359/while/Identity_3IdentityXsequential_359/simple_rnn_359/while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^sequential_359/simple_rnn_359/while/NoOp*
T0*
_output_shapes
: :щшвл
.sequential_359/simple_rnn_359/while/Identity_4IdentityBsequential_359/simple_rnn_359/while/simple_rnn_cell_35709/Tanh:y:0)^sequential_359/simple_rnn_359/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџу
(sequential_359/simple_rnn_359/while/NoOpNoOpQ^sequential_359/simple_rnn_359/while/simple_rnn_cell_35709/BiasAdd/ReadVariableOpP^sequential_359/simple_rnn_359/while/simple_rnn_cell_35709/MatMul/ReadVariableOpR^sequential_359/simple_rnn_359/while/simple_rnn_cell_35709/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "e
,sequential_359_simple_rnn_359_while_identity5sequential_359/simple_rnn_359/while/Identity:output:0"i
.sequential_359_simple_rnn_359_while_identity_17sequential_359/simple_rnn_359/while/Identity_1:output:0"i
.sequential_359_simple_rnn_359_while_identity_27sequential_359/simple_rnn_359/while/Identity_2:output:0"i
.sequential_359_simple_rnn_359_while_identity_37sequential_359/simple_rnn_359/while/Identity_3:output:0"i
.sequential_359_simple_rnn_359_while_identity_47sequential_359/simple_rnn_359/while/Identity_4:output:0"Ј
Qsequential_359_simple_rnn_359_while_sequential_359_simple_rnn_359_strided_slice_1Ssequential_359_simple_rnn_359_while_sequential_359_simple_rnn_359_strided_slice_1_0"И
Ysequential_359_simple_rnn_359_while_simple_rnn_cell_35709_biasadd_readvariableop_resource[sequential_359_simple_rnn_359_while_simple_rnn_cell_35709_biasadd_readvariableop_resource_0"К
Zsequential_359_simple_rnn_359_while_simple_rnn_cell_35709_matmul_1_readvariableop_resource\sequential_359_simple_rnn_359_while_simple_rnn_cell_35709_matmul_1_readvariableop_resource_0"Ж
Xsequential_359_simple_rnn_359_while_simple_rnn_cell_35709_matmul_readvariableop_resourceZsequential_359_simple_rnn_359_while_simple_rnn_cell_35709_matmul_readvariableop_resource_0"Ђ
sequential_359_simple_rnn_359_while_tensorarrayv2read_tensorlistgetitem_sequential_359_simple_rnn_359_tensorarrayunstack_tensorlistfromtensorsequential_359_simple_rnn_359_while_tensorarrayv2read_tensorlistgetitem_sequential_359_simple_rnn_359_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ: : : : : 2Є
Psequential_359/simple_rnn_359/while/simple_rnn_cell_35709/BiasAdd/ReadVariableOpPsequential_359/simple_rnn_359/while/simple_rnn_cell_35709/BiasAdd/ReadVariableOp2Ђ
Osequential_359/simple_rnn_359/while/simple_rnn_cell_35709/MatMul/ReadVariableOpOsequential_359/simple_rnn_359/while/simple_rnn_cell_35709/MatMul/ReadVariableOp2І
Qsequential_359/simple_rnn_359/while/simple_rnn_cell_35709/MatMul_1/ReadVariableOpQsequential_359/simple_rnn_359/while/simple_rnn_cell_35709/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
Х

р
8__inference_simple_rnn_cell_35709_layer_call_fn_72531825

inputs
states_0
unknown:
	unknown_0:
	unknown_1:
identity

identity_1ЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *\
fWRU
S__inference_simple_rnn_cell_35709_layer_call_and_return_conditional_losses_72530512o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ:џџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states/0
Х

р
8__inference_simple_rnn_cell_35709_layer_call_fn_72531839

inputs
states_0
unknown:
	unknown_0:
	unknown_1:
identity

identity_1ЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *\
fWRU
S__inference_simple_rnn_cell_35709_layer_call_and_return_conditional_losses_72530632o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ:џџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states/0
щ
к
!__inference__traced_save_72531905
file_prefixJ
Fsavev2_simple_rnn_359_simple_rnn_cell_35709_kernel_read_readvariableopT
Psavev2_simple_rnn_359_simple_rnn_cell_35709_recurrent_kernel_read_readvariableopH
Dsavev2_simple_rnn_359_simple_rnn_cell_35709_bias_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ћ
valueЁBB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHu
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B 
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Fsavev2_simple_rnn_359_simple_rnn_cell_35709_kernel_read_readvariableopPsavev2_simple_rnn_359_simple_rnn_cell_35709_recurrent_kernel_read_readvariableopDsavev2_simple_rnn_359_simple_rnn_cell_35709_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*1
_input_shapes 
: :::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: 
№-
ю
while_body_72530943
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0N
<while_simple_rnn_cell_35709_matmul_readvariableop_resource_0:K
=while_simple_rnn_cell_35709_biasadd_readvariableop_resource_0:P
>while_simple_rnn_cell_35709_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorL
:while_simple_rnn_cell_35709_matmul_readvariableop_resource:I
;while_simple_rnn_cell_35709_biasadd_readvariableop_resource:N
<while_simple_rnn_cell_35709_matmul_1_readvariableop_resource:Ђ2while/simple_rnn_cell_35709/BiasAdd/ReadVariableOpЂ1while/simple_rnn_cell_35709/MatMul/ReadVariableOpЂ3while/simple_rnn_cell_35709/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ў
1while/simple_rnn_cell_35709/MatMul/ReadVariableOpReadVariableOp<while_simple_rnn_cell_35709_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0Ы
"while/simple_rnn_cell_35709/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:09while/simple_rnn_cell_35709/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЌ
2while/simple_rnn_cell_35709/BiasAdd/ReadVariableOpReadVariableOp=while_simple_rnn_cell_35709_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0Ъ
#while/simple_rnn_cell_35709/BiasAddBiasAdd,while/simple_rnn_cell_35709/MatMul:product:0:while/simple_rnn_cell_35709/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџВ
3while/simple_rnn_cell_35709/MatMul_1/ReadVariableOpReadVariableOp>while_simple_rnn_cell_35709_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0В
$while/simple_rnn_cell_35709/MatMul_1MatMulwhile_placeholder_2;while/simple_rnn_cell_35709/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџИ
while/simple_rnn_cell_35709/addAddV2,while/simple_rnn_cell_35709/BiasAdd:output:0.while/simple_rnn_cell_35709/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ
 while/simple_rnn_cell_35709/TanhTanh#while/simple_rnn_cell_35709/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџЭ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder$while/simple_rnn_cell_35709/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :щшв
while/Identity_4Identity$while/simple_rnn_cell_35709/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџы

while/NoOpNoOp3^while/simple_rnn_cell_35709/BiasAdd/ReadVariableOp2^while/simple_rnn_cell_35709/MatMul/ReadVariableOp4^while/simple_rnn_cell_35709/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"|
;while_simple_rnn_cell_35709_biasadd_readvariableop_resource=while_simple_rnn_cell_35709_biasadd_readvariableop_resource_0"~
<while_simple_rnn_cell_35709_matmul_1_readvariableop_resource>while_simple_rnn_cell_35709_matmul_1_readvariableop_resource_0"z
:while_simple_rnn_cell_35709_matmul_readvariableop_resource<while_simple_rnn_cell_35709_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ: : : : : 2h
2while/simple_rnn_cell_35709/BiasAdd/ReadVariableOp2while/simple_rnn_cell_35709/BiasAdd/ReadVariableOp2f
1while/simple_rnn_cell_35709/MatMul/ReadVariableOp1while/simple_rnn_cell_35709/MatMul/ReadVariableOp2j
3while/simple_rnn_cell_35709/MatMul_1/ReadVariableOp3while/simple_rnn_cell_35709/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
Љ[

#__inference__wrapped_model_72530464
simple_rnn_359_inputd
Rsequential_359_simple_rnn_359_simple_rnn_cell_35709_matmul_readvariableop_resource:a
Ssequential_359_simple_rnn_359_simple_rnn_cell_35709_biasadd_readvariableop_resource:f
Tsequential_359_simple_rnn_359_simple_rnn_cell_35709_matmul_1_readvariableop_resource:
identityЂJsequential_359/simple_rnn_359/simple_rnn_cell_35709/BiasAdd/ReadVariableOpЂIsequential_359/simple_rnn_359/simple_rnn_cell_35709/MatMul/ReadVariableOpЂKsequential_359/simple_rnn_359/simple_rnn_cell_35709/MatMul_1/ReadVariableOpЂ#sequential_359/simple_rnn_359/whileg
#sequential_359/simple_rnn_359/ShapeShapesimple_rnn_359_input*
T0*
_output_shapes
:{
1sequential_359/simple_rnn_359/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3sequential_359/simple_rnn_359/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3sequential_359/simple_rnn_359/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ч
+sequential_359/simple_rnn_359/strided_sliceStridedSlice,sequential_359/simple_rnn_359/Shape:output:0:sequential_359/simple_rnn_359/strided_slice/stack:output:0<sequential_359/simple_rnn_359/strided_slice/stack_1:output:0<sequential_359/simple_rnn_359/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
,sequential_359/simple_rnn_359/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Э
*sequential_359/simple_rnn_359/zeros/packedPack4sequential_359/simple_rnn_359/strided_slice:output:05sequential_359/simple_rnn_359/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:n
)sequential_359/simple_rnn_359/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ц
#sequential_359/simple_rnn_359/zerosFill3sequential_359/simple_rnn_359/zeros/packed:output:02sequential_359/simple_rnn_359/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
,sequential_359/simple_rnn_359/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          З
'sequential_359/simple_rnn_359/transpose	Transposesimple_rnn_359_input5sequential_359/simple_rnn_359/transpose/perm:output:0*
T0*+
_output_shapes
:(џџџџџџџџџ
%sequential_359/simple_rnn_359/Shape_1Shape+sequential_359/simple_rnn_359/transpose:y:0*
T0*
_output_shapes
:}
3sequential_359/simple_rnn_359/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5sequential_359/simple_rnn_359/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5sequential_359/simple_rnn_359/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ё
-sequential_359/simple_rnn_359/strided_slice_1StridedSlice.sequential_359/simple_rnn_359/Shape_1:output:0<sequential_359/simple_rnn_359/strided_slice_1/stack:output:0>sequential_359/simple_rnn_359/strided_slice_1/stack_1:output:0>sequential_359/simple_rnn_359/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
9sequential_359/simple_rnn_359/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
+sequential_359/simple_rnn_359/TensorArrayV2TensorListReserveBsequential_359/simple_rnn_359/TensorArrayV2/element_shape:output:06sequential_359/simple_rnn_359/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвЄ
Ssequential_359/simple_rnn_359/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   К
Esequential_359/simple_rnn_359/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor+sequential_359/simple_rnn_359/transpose:y:0\sequential_359/simple_rnn_359/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв}
3sequential_359/simple_rnn_359/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5sequential_359/simple_rnn_359/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5sequential_359/simple_rnn_359/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
-sequential_359/simple_rnn_359/strided_slice_2StridedSlice+sequential_359/simple_rnn_359/transpose:y:0<sequential_359/simple_rnn_359/strided_slice_2/stack:output:0>sequential_359/simple_rnn_359/strided_slice_2/stack_1:output:0>sequential_359/simple_rnn_359/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskм
Isequential_359/simple_rnn_359/simple_rnn_cell_35709/MatMul/ReadVariableOpReadVariableOpRsequential_359_simple_rnn_359_simple_rnn_cell_35709_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
:sequential_359/simple_rnn_359/simple_rnn_cell_35709/MatMulMatMul6sequential_359/simple_rnn_359/strided_slice_2:output:0Qsequential_359/simple_rnn_359/simple_rnn_cell_35709/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџк
Jsequential_359/simple_rnn_359/simple_rnn_cell_35709/BiasAdd/ReadVariableOpReadVariableOpSsequential_359_simple_rnn_359_simple_rnn_cell_35709_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
;sequential_359/simple_rnn_359/simple_rnn_cell_35709/BiasAddBiasAddDsequential_359/simple_rnn_359/simple_rnn_cell_35709/MatMul:product:0Rsequential_359/simple_rnn_359/simple_rnn_cell_35709/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџр
Ksequential_359/simple_rnn_359/simple_rnn_cell_35709/MatMul_1/ReadVariableOpReadVariableOpTsequential_359_simple_rnn_359_simple_rnn_cell_35709_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0ћ
<sequential_359/simple_rnn_359/simple_rnn_cell_35709/MatMul_1MatMul,sequential_359/simple_rnn_359/zeros:output:0Ssequential_359/simple_rnn_359/simple_rnn_cell_35709/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
7sequential_359/simple_rnn_359/simple_rnn_cell_35709/addAddV2Dsequential_359/simple_rnn_359/simple_rnn_cell_35709/BiasAdd:output:0Fsequential_359/simple_rnn_359/simple_rnn_cell_35709/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџЏ
8sequential_359/simple_rnn_359/simple_rnn_cell_35709/TanhTanh;sequential_359/simple_rnn_359/simple_rnn_cell_35709/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
;sequential_359/simple_rnn_359/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
-sequential_359/simple_rnn_359/TensorArrayV2_1TensorListReserveDsequential_359/simple_rnn_359/TensorArrayV2_1/element_shape:output:06sequential_359/simple_rnn_359/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвd
"sequential_359/simple_rnn_359/timeConst*
_output_shapes
: *
dtype0*
value	B : 
6sequential_359/simple_rnn_359/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџr
0sequential_359/simple_rnn_359/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ю
#sequential_359/simple_rnn_359/whileWhile9sequential_359/simple_rnn_359/while/loop_counter:output:0?sequential_359/simple_rnn_359/while/maximum_iterations:output:0+sequential_359/simple_rnn_359/time:output:06sequential_359/simple_rnn_359/TensorArrayV2_1:handle:0,sequential_359/simple_rnn_359/zeros:output:06sequential_359/simple_rnn_359/strided_slice_1:output:0Usequential_359/simple_rnn_359/TensorArrayUnstack/TensorListFromTensor:output_handle:0Rsequential_359_simple_rnn_359_simple_rnn_cell_35709_matmul_readvariableop_resourceSsequential_359_simple_rnn_359_simple_rnn_cell_35709_biasadd_readvariableop_resourceTsequential_359_simple_rnn_359_simple_rnn_cell_35709_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *=
body5R3
1sequential_359_simple_rnn_359_while_body_72530398*=
cond5R3
1sequential_359_simple_rnn_359_while_cond_72530397*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
Nsequential_359/simple_rnn_359/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
@sequential_359/simple_rnn_359/TensorArrayV2Stack/TensorListStackTensorListStack,sequential_359/simple_rnn_359/while:output:3Wsequential_359/simple_rnn_359/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:(џџџџџџџџџ*
element_dtype0
3sequential_359/simple_rnn_359/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
5sequential_359/simple_rnn_359/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
5sequential_359/simple_rnn_359/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
-sequential_359/simple_rnn_359/strided_slice_3StridedSliceIsequential_359/simple_rnn_359/TensorArrayV2Stack/TensorListStack:tensor:0<sequential_359/simple_rnn_359/strided_slice_3/stack:output:0>sequential_359/simple_rnn_359/strided_slice_3/stack_1:output:0>sequential_359/simple_rnn_359/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
.sequential_359/simple_rnn_359/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          №
)sequential_359/simple_rnn_359/transpose_1	TransposeIsequential_359/simple_rnn_359/TensorArrayV2Stack/TensorListStack:tensor:07sequential_359/simple_rnn_359/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(
IdentityIdentity6sequential_359/simple_rnn_359/strided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџг
NoOpNoOpK^sequential_359/simple_rnn_359/simple_rnn_cell_35709/BiasAdd/ReadVariableOpJ^sequential_359/simple_rnn_359/simple_rnn_cell_35709/MatMul/ReadVariableOpL^sequential_359/simple_rnn_359/simple_rnn_cell_35709/MatMul_1/ReadVariableOp$^sequential_359/simple_rnn_359/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ(: : : 2
Jsequential_359/simple_rnn_359/simple_rnn_cell_35709/BiasAdd/ReadVariableOpJsequential_359/simple_rnn_359/simple_rnn_cell_35709/BiasAdd/ReadVariableOp2
Isequential_359/simple_rnn_359/simple_rnn_cell_35709/MatMul/ReadVariableOpIsequential_359/simple_rnn_359/simple_rnn_cell_35709/MatMul/ReadVariableOp2
Ksequential_359/simple_rnn_359/simple_rnn_cell_35709/MatMul_1/ReadVariableOpKsequential_359/simple_rnn_359/simple_rnn_cell_35709/MatMul_1/ReadVariableOp2J
#sequential_359/simple_rnn_359/while#sequential_359/simple_rnn_359/while:a ]
+
_output_shapes
:џџџџџџџџџ(
.
_user_specified_namesimple_rnn_359_input
А
Щ
1__inference_sequential_359_layer_call_fn_72530888
simple_rnn_359_input
unknown:
	unknown_0:
	unknown_1:
identityЂStatefulPartitionedCallќ
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_359_inputunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_sequential_359_layer_call_and_return_conditional_losses_72530879o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ(: : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
+
_output_shapes
:џџџџџџџџџ(
.
_user_specified_namesimple_rnn_359_input
П>
з
L__inference_simple_rnn_359_layer_call_and_return_conditional_losses_72530870

inputsF
4simple_rnn_cell_35709_matmul_readvariableop_resource:C
5simple_rnn_cell_35709_biasadd_readvariableop_resource:H
6simple_rnn_cell_35709_matmul_1_readvariableop_resource:
identityЂ,simple_rnn_cell_35709/BiasAdd/ReadVariableOpЂ+simple_rnn_cell_35709/MatMul/ReadVariableOpЂ-simple_rnn_cell_35709/MatMul_1/ReadVariableOpЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:(џџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask 
+simple_rnn_cell_35709/MatMul/ReadVariableOpReadVariableOp4simple_rnn_cell_35709_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ї
simple_rnn_cell_35709/MatMulMatMulstrided_slice_2:output:03simple_rnn_cell_35709/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
,simple_rnn_cell_35709/BiasAdd/ReadVariableOpReadVariableOp5simple_rnn_cell_35709_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0И
simple_rnn_cell_35709/BiasAddBiasAdd&simple_rnn_cell_35709/MatMul:product:04simple_rnn_cell_35709/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЄ
-simple_rnn_cell_35709/MatMul_1/ReadVariableOpReadVariableOp6simple_rnn_cell_35709_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Ё
simple_rnn_cell_35709/MatMul_1MatMulzeros:output:05simple_rnn_cell_35709/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
simple_rnn_cell_35709/addAddV2&simple_rnn_cell_35709/BiasAdd:output:0(simple_rnn_cell_35709/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџs
simple_rnn_cell_35709/TanhTanhsimple_rnn_cell_35709/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ш
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:04simple_rnn_cell_35709_matmul_readvariableop_resource5simple_rnn_cell_35709_biasadd_readvariableop_resource6simple_rnn_cell_35709_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_72530804*
condR
while_cond_72530803*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Т
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:(џџџџџџџџџ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџл
NoOpNoOp-^simple_rnn_cell_35709/BiasAdd/ReadVariableOp,^simple_rnn_cell_35709/MatMul/ReadVariableOp.^simple_rnn_cell_35709/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ(: : : 2\
,simple_rnn_cell_35709/BiasAdd/ReadVariableOp,simple_rnn_cell_35709/BiasAdd/ReadVariableOp2Z
+simple_rnn_cell_35709/MatMul/ReadVariableOp+simple_rnn_cell_35709/MatMul/ReadVariableOp2^
-simple_rnn_cell_35709/MatMul_1/ReadVariableOp-simple_rnn_cell_35709/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs

Н
1__inference_simple_rnn_359_layer_call_fn_72531357
inputs_0
unknown:
	unknown_0:
	unknown_1:
identityЂStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_simple_rnn_359_layer_call_and_return_conditional_losses_72530747o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
№-
ю
while_body_72531637
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0N
<while_simple_rnn_cell_35709_matmul_readvariableop_resource_0:K
=while_simple_rnn_cell_35709_biasadd_readvariableop_resource_0:P
>while_simple_rnn_cell_35709_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorL
:while_simple_rnn_cell_35709_matmul_readvariableop_resource:I
;while_simple_rnn_cell_35709_biasadd_readvariableop_resource:N
<while_simple_rnn_cell_35709_matmul_1_readvariableop_resource:Ђ2while/simple_rnn_cell_35709/BiasAdd/ReadVariableOpЂ1while/simple_rnn_cell_35709/MatMul/ReadVariableOpЂ3while/simple_rnn_cell_35709/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ў
1while/simple_rnn_cell_35709/MatMul/ReadVariableOpReadVariableOp<while_simple_rnn_cell_35709_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0Ы
"while/simple_rnn_cell_35709/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:09while/simple_rnn_cell_35709/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЌ
2while/simple_rnn_cell_35709/BiasAdd/ReadVariableOpReadVariableOp=while_simple_rnn_cell_35709_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0Ъ
#while/simple_rnn_cell_35709/BiasAddBiasAdd,while/simple_rnn_cell_35709/MatMul:product:0:while/simple_rnn_cell_35709/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџВ
3while/simple_rnn_cell_35709/MatMul_1/ReadVariableOpReadVariableOp>while_simple_rnn_cell_35709_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0В
$while/simple_rnn_cell_35709/MatMul_1MatMulwhile_placeholder_2;while/simple_rnn_cell_35709/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџИ
while/simple_rnn_cell_35709/addAddV2,while/simple_rnn_cell_35709/BiasAdd:output:0.while/simple_rnn_cell_35709/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ
 while/simple_rnn_cell_35709/TanhTanh#while/simple_rnn_cell_35709/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџЭ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder$while/simple_rnn_cell_35709/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :щшв
while/Identity_4Identity$while/simple_rnn_cell_35709/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџы

while/NoOpNoOp3^while/simple_rnn_cell_35709/BiasAdd/ReadVariableOp2^while/simple_rnn_cell_35709/MatMul/ReadVariableOp4^while/simple_rnn_cell_35709/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"|
;while_simple_rnn_cell_35709_biasadd_readvariableop_resource=while_simple_rnn_cell_35709_biasadd_readvariableop_resource_0"~
<while_simple_rnn_cell_35709_matmul_1_readvariableop_resource>while_simple_rnn_cell_35709_matmul_1_readvariableop_resource_0"z
:while_simple_rnn_cell_35709_matmul_readvariableop_resource<while_simple_rnn_cell_35709_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ: : : : : 2h
2while/simple_rnn_cell_35709/BiasAdd/ReadVariableOp2while/simple_rnn_cell_35709/BiasAdd/ReadVariableOp2f
1while/simple_rnn_cell_35709/MatMul/ReadVariableOp1while/simple_rnn_cell_35709/MatMul/ReadVariableOp2j
3while/simple_rnn_cell_35709/MatMul_1/ReadVariableOp3while/simple_rnn_cell_35709/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
ф
Д
while_cond_72531636
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_72531636___redundant_placeholder06
2while_while_cond_72531636___redundant_placeholder16
2while_while_cond_72531636___redundant_placeholder26
2while_while_cond_72531636___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
щL
Р
L__inference_sequential_359_layer_call_and_return_conditional_losses_72531214

inputsU
Csimple_rnn_359_simple_rnn_cell_35709_matmul_readvariableop_resource:R
Dsimple_rnn_359_simple_rnn_cell_35709_biasadd_readvariableop_resource:W
Esimple_rnn_359_simple_rnn_cell_35709_matmul_1_readvariableop_resource:
identityЂ;simple_rnn_359/simple_rnn_cell_35709/BiasAdd/ReadVariableOpЂ:simple_rnn_359/simple_rnn_cell_35709/MatMul/ReadVariableOpЂ<simple_rnn_359/simple_rnn_cell_35709/MatMul_1/ReadVariableOpЂsimple_rnn_359/whileJ
simple_rnn_359/ShapeShapeinputs*
T0*
_output_shapes
:l
"simple_rnn_359/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_359/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_359/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
simple_rnn_359/strided_sliceStridedSlicesimple_rnn_359/Shape:output:0+simple_rnn_359/strided_slice/stack:output:0-simple_rnn_359/strided_slice/stack_1:output:0-simple_rnn_359/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
simple_rnn_359/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 
simple_rnn_359/zeros/packedPack%simple_rnn_359/strided_slice:output:0&simple_rnn_359/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:_
simple_rnn_359/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
simple_rnn_359/zerosFill$simple_rnn_359/zeros/packed:output:0#simple_rnn_359/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџr
simple_rnn_359/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
simple_rnn_359/transpose	Transposeinputs&simple_rnn_359/transpose/perm:output:0*
T0*+
_output_shapes
:(џџџџџџџџџb
simple_rnn_359/Shape_1Shapesimple_rnn_359/transpose:y:0*
T0*
_output_shapes
:n
$simple_rnn_359/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&simple_rnn_359/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&simple_rnn_359/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:І
simple_rnn_359/strided_slice_1StridedSlicesimple_rnn_359/Shape_1:output:0-simple_rnn_359/strided_slice_1/stack:output:0/simple_rnn_359/strided_slice_1/stack_1:output:0/simple_rnn_359/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
*simple_rnn_359/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџс
simple_rnn_359/TensorArrayV2TensorListReserve3simple_rnn_359/TensorArrayV2/element_shape:output:0'simple_rnn_359/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Dsimple_rnn_359/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
6simple_rnn_359/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_359/transpose:y:0Msimple_rnn_359/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвn
$simple_rnn_359/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&simple_rnn_359/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&simple_rnn_359/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Д
simple_rnn_359/strided_slice_2StridedSlicesimple_rnn_359/transpose:y:0-simple_rnn_359/strided_slice_2/stack:output:0/simple_rnn_359/strided_slice_2/stack_1:output:0/simple_rnn_359/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskО
:simple_rnn_359/simple_rnn_cell_35709/MatMul/ReadVariableOpReadVariableOpCsimple_rnn_359_simple_rnn_cell_35709_matmul_readvariableop_resource*
_output_shapes

:*
dtype0д
+simple_rnn_359/simple_rnn_cell_35709/MatMulMatMul'simple_rnn_359/strided_slice_2:output:0Bsimple_rnn_359/simple_rnn_cell_35709/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџМ
;simple_rnn_359/simple_rnn_cell_35709/BiasAdd/ReadVariableOpReadVariableOpDsimple_rnn_359_simple_rnn_cell_35709_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0х
,simple_rnn_359/simple_rnn_cell_35709/BiasAddBiasAdd5simple_rnn_359/simple_rnn_cell_35709/MatMul:product:0Csimple_rnn_359/simple_rnn_cell_35709/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџТ
<simple_rnn_359/simple_rnn_cell_35709/MatMul_1/ReadVariableOpReadVariableOpEsimple_rnn_359_simple_rnn_cell_35709_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Ю
-simple_rnn_359/simple_rnn_cell_35709/MatMul_1MatMulsimple_rnn_359/zeros:output:0Dsimple_rnn_359/simple_rnn_cell_35709/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџг
(simple_rnn_359/simple_rnn_cell_35709/addAddV25simple_rnn_359/simple_rnn_cell_35709/BiasAdd:output:07simple_rnn_359/simple_rnn_cell_35709/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ
)simple_rnn_359/simple_rnn_cell_35709/TanhTanh,simple_rnn_359/simple_rnn_cell_35709/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ}
,simple_rnn_359/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   х
simple_rnn_359/TensorArrayV2_1TensorListReserve5simple_rnn_359/TensorArrayV2_1/element_shape:output:0'simple_rnn_359/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвU
simple_rnn_359/timeConst*
_output_shapes
: *
dtype0*
value	B : r
'simple_rnn_359/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџc
!simple_rnn_359/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ћ
simple_rnn_359/whileWhile*simple_rnn_359/while/loop_counter:output:00simple_rnn_359/while/maximum_iterations:output:0simple_rnn_359/time:output:0'simple_rnn_359/TensorArrayV2_1:handle:0simple_rnn_359/zeros:output:0'simple_rnn_359/strided_slice_1:output:0Fsimple_rnn_359/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csimple_rnn_359_simple_rnn_cell_35709_matmul_readvariableop_resourceDsimple_rnn_359_simple_rnn_cell_35709_biasadd_readvariableop_resourceEsimple_rnn_359_simple_rnn_cell_35709_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *.
body&R$
"simple_rnn_359_while_body_72531148*.
cond&R$
"simple_rnn_359_while_cond_72531147*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
?simple_rnn_359/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   я
1simple_rnn_359/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_359/while:output:3Hsimple_rnn_359/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:(џџџџџџџџџ*
element_dtype0w
$simple_rnn_359/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџp
&simple_rnn_359/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: p
&simple_rnn_359/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:в
simple_rnn_359/strided_slice_3StridedSlice:simple_rnn_359/TensorArrayV2Stack/TensorListStack:tensor:0-simple_rnn_359/strided_slice_3/stack:output:0/simple_rnn_359/strided_slice_3/stack_1:output:0/simple_rnn_359/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskt
simple_rnn_359/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          У
simple_rnn_359/transpose_1	Transpose:simple_rnn_359/TensorArrayV2Stack/TensorListStack:tensor:0(simple_rnn_359/transpose_1/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ(v
IdentityIdentity'simple_rnn_359/strided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp<^simple_rnn_359/simple_rnn_cell_35709/BiasAdd/ReadVariableOp;^simple_rnn_359/simple_rnn_cell_35709/MatMul/ReadVariableOp=^simple_rnn_359/simple_rnn_cell_35709/MatMul_1/ReadVariableOp^simple_rnn_359/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ(: : : 2z
;simple_rnn_359/simple_rnn_cell_35709/BiasAdd/ReadVariableOp;simple_rnn_359/simple_rnn_cell_35709/BiasAdd/ReadVariableOp2x
:simple_rnn_359/simple_rnn_cell_35709/MatMul/ReadVariableOp:simple_rnn_359/simple_rnn_cell_35709/MatMul/ReadVariableOp2|
<simple_rnn_359/simple_rnn_cell_35709/MatMul_1/ReadVariableOp<simple_rnn_359/simple_rnn_cell_35709/MatMul_1/ReadVariableOp2,
simple_rnn_359/whilesimple_rnn_359/while:S O
+
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs
ф
Д
while_cond_72531744
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_72531744___redundant_placeholder06
2while_while_cond_72531744___redundant_placeholder16
2while_while_cond_72531744___redundant_placeholder26
2while_while_cond_72531744___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
ф
Д
while_cond_72530942
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_72530942___redundant_placeholder06
2while_while_cond_72530942___redundant_placeholder16
2while_while_cond_72530942___redundant_placeholder26
2while_while_cond_72530942___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:

Л
1__inference_sequential_359_layer_call_fn_72531106

inputs
unknown:
	unknown_0:
	unknown_1:
identityЂStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_sequential_359_layer_call_and_return_conditional_losses_72531042o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ(: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs
њ

б
"simple_rnn_359_while_cond_72531255:
6simple_rnn_359_while_simple_rnn_359_while_loop_counter@
<simple_rnn_359_while_simple_rnn_359_while_maximum_iterations$
 simple_rnn_359_while_placeholder&
"simple_rnn_359_while_placeholder_1&
"simple_rnn_359_while_placeholder_2<
8simple_rnn_359_while_less_simple_rnn_359_strided_slice_1T
Psimple_rnn_359_while_simple_rnn_359_while_cond_72531255___redundant_placeholder0T
Psimple_rnn_359_while_simple_rnn_359_while_cond_72531255___redundant_placeholder1T
Psimple_rnn_359_while_simple_rnn_359_while_cond_72531255___redundant_placeholder2T
Psimple_rnn_359_while_simple_rnn_359_while_cond_72531255___redundant_placeholder3!
simple_rnn_359_while_identity

simple_rnn_359/while/LessLess simple_rnn_359_while_placeholder8simple_rnn_359_while_less_simple_rnn_359_strided_slice_1*
T0*
_output_shapes
: i
simple_rnn_359/while/IdentityIdentitysimple_rnn_359/while/Less:z:0*
T0
*
_output_shapes
: "G
simple_rnn_359_while_identity&simple_rnn_359/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:
ѕ;
А
"simple_rnn_359_while_body_72531256:
6simple_rnn_359_while_simple_rnn_359_while_loop_counter@
<simple_rnn_359_while_simple_rnn_359_while_maximum_iterations$
 simple_rnn_359_while_placeholder&
"simple_rnn_359_while_placeholder_1&
"simple_rnn_359_while_placeholder_29
5simple_rnn_359_while_simple_rnn_359_strided_slice_1_0u
qsimple_rnn_359_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_359_tensorarrayunstack_tensorlistfromtensor_0]
Ksimple_rnn_359_while_simple_rnn_cell_35709_matmul_readvariableop_resource_0:Z
Lsimple_rnn_359_while_simple_rnn_cell_35709_biasadd_readvariableop_resource_0:_
Msimple_rnn_359_while_simple_rnn_cell_35709_matmul_1_readvariableop_resource_0:!
simple_rnn_359_while_identity#
simple_rnn_359_while_identity_1#
simple_rnn_359_while_identity_2#
simple_rnn_359_while_identity_3#
simple_rnn_359_while_identity_47
3simple_rnn_359_while_simple_rnn_359_strided_slice_1s
osimple_rnn_359_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_359_tensorarrayunstack_tensorlistfromtensor[
Isimple_rnn_359_while_simple_rnn_cell_35709_matmul_readvariableop_resource:X
Jsimple_rnn_359_while_simple_rnn_cell_35709_biasadd_readvariableop_resource:]
Ksimple_rnn_359_while_simple_rnn_cell_35709_matmul_1_readvariableop_resource:ЂAsimple_rnn_359/while/simple_rnn_cell_35709/BiasAdd/ReadVariableOpЂ@simple_rnn_359/while/simple_rnn_cell_35709/MatMul/ReadVariableOpЂBsimple_rnn_359/while/simple_rnn_cell_35709/MatMul_1/ReadVariableOp
Fsimple_rnn_359/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   ё
8simple_rnn_359/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemqsimple_rnn_359_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_359_tensorarrayunstack_tensorlistfromtensor_0 simple_rnn_359_while_placeholderOsimple_rnn_359/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ь
@simple_rnn_359/while/simple_rnn_cell_35709/MatMul/ReadVariableOpReadVariableOpKsimple_rnn_359_while_simple_rnn_cell_35709_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0ј
1simple_rnn_359/while/simple_rnn_cell_35709/MatMulMatMul?simple_rnn_359/while/TensorArrayV2Read/TensorListGetItem:item:0Hsimple_rnn_359/while/simple_rnn_cell_35709/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЪ
Asimple_rnn_359/while/simple_rnn_cell_35709/BiasAdd/ReadVariableOpReadVariableOpLsimple_rnn_359_while_simple_rnn_cell_35709_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0ї
2simple_rnn_359/while/simple_rnn_cell_35709/BiasAddBiasAdd;simple_rnn_359/while/simple_rnn_cell_35709/MatMul:product:0Isimple_rnn_359/while/simple_rnn_cell_35709/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџа
Bsimple_rnn_359/while/simple_rnn_cell_35709/MatMul_1/ReadVariableOpReadVariableOpMsimple_rnn_359_while_simple_rnn_cell_35709_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0п
3simple_rnn_359/while/simple_rnn_cell_35709/MatMul_1MatMul"simple_rnn_359_while_placeholder_2Jsimple_rnn_359/while/simple_rnn_cell_35709/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџх
.simple_rnn_359/while/simple_rnn_cell_35709/addAddV2;simple_rnn_359/while/simple_rnn_cell_35709/BiasAdd:output:0=simple_rnn_359/while/simple_rnn_cell_35709/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ
/simple_rnn_359/while/simple_rnn_cell_35709/TanhTanh2simple_rnn_359/while/simple_rnn_cell_35709/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџ
9simple_rnn_359/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem"simple_rnn_359_while_placeholder_1 simple_rnn_359_while_placeholder3simple_rnn_359/while/simple_rnn_cell_35709/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшв\
simple_rnn_359/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_359/while/addAddV2 simple_rnn_359_while_placeholder#simple_rnn_359/while/add/y:output:0*
T0*
_output_shapes
: ^
simple_rnn_359/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ѓ
simple_rnn_359/while/add_1AddV26simple_rnn_359_while_simple_rnn_359_while_loop_counter%simple_rnn_359/while/add_1/y:output:0*
T0*
_output_shapes
: 
simple_rnn_359/while/IdentityIdentitysimple_rnn_359/while/add_1:z:0^simple_rnn_359/while/NoOp*
T0*
_output_shapes
: І
simple_rnn_359/while/Identity_1Identity<simple_rnn_359_while_simple_rnn_359_while_maximum_iterations^simple_rnn_359/while/NoOp*
T0*
_output_shapes
: 
simple_rnn_359/while/Identity_2Identitysimple_rnn_359/while/add:z:0^simple_rnn_359/while/NoOp*
T0*
_output_shapes
: Ц
simple_rnn_359/while/Identity_3IdentityIsimple_rnn_359/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_359/while/NoOp*
T0*
_output_shapes
: :щшвЎ
simple_rnn_359/while/Identity_4Identity3simple_rnn_359/while/simple_rnn_cell_35709/Tanh:y:0^simple_rnn_359/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџЇ
simple_rnn_359/while/NoOpNoOpB^simple_rnn_359/while/simple_rnn_cell_35709/BiasAdd/ReadVariableOpA^simple_rnn_359/while/simple_rnn_cell_35709/MatMul/ReadVariableOpC^simple_rnn_359/while/simple_rnn_cell_35709/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "G
simple_rnn_359_while_identity&simple_rnn_359/while/Identity:output:0"K
simple_rnn_359_while_identity_1(simple_rnn_359/while/Identity_1:output:0"K
simple_rnn_359_while_identity_2(simple_rnn_359/while/Identity_2:output:0"K
simple_rnn_359_while_identity_3(simple_rnn_359/while/Identity_3:output:0"K
simple_rnn_359_while_identity_4(simple_rnn_359/while/Identity_4:output:0"l
3simple_rnn_359_while_simple_rnn_359_strided_slice_15simple_rnn_359_while_simple_rnn_359_strided_slice_1_0"
Jsimple_rnn_359_while_simple_rnn_cell_35709_biasadd_readvariableop_resourceLsimple_rnn_359_while_simple_rnn_cell_35709_biasadd_readvariableop_resource_0"
Ksimple_rnn_359_while_simple_rnn_cell_35709_matmul_1_readvariableop_resourceMsimple_rnn_359_while_simple_rnn_cell_35709_matmul_1_readvariableop_resource_0"
Isimple_rnn_359_while_simple_rnn_cell_35709_matmul_readvariableop_resourceKsimple_rnn_359_while_simple_rnn_cell_35709_matmul_readvariableop_resource_0"ф
osimple_rnn_359_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_359_tensorarrayunstack_tensorlistfromtensorqsimple_rnn_359_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_359_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ: : : : : 2
Asimple_rnn_359/while/simple_rnn_cell_35709/BiasAdd/ReadVariableOpAsimple_rnn_359/while/simple_rnn_cell_35709/BiasAdd/ReadVariableOp2
@simple_rnn_359/while/simple_rnn_cell_35709/MatMul/ReadVariableOp@simple_rnn_359/while/simple_rnn_cell_35709/MatMul/ReadVariableOp2
Bsimple_rnn_359/while/simple_rnn_cell_35709/MatMul_1/ReadVariableOpBsimple_rnn_359/while/simple_rnn_cell_35709/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
№-
ю
while_body_72531529
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0N
<while_simple_rnn_cell_35709_matmul_readvariableop_resource_0:K
=while_simple_rnn_cell_35709_biasadd_readvariableop_resource_0:P
>while_simple_rnn_cell_35709_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorL
:while_simple_rnn_cell_35709_matmul_readvariableop_resource:I
;while_simple_rnn_cell_35709_biasadd_readvariableop_resource:N
<while_simple_rnn_cell_35709_matmul_1_readvariableop_resource:Ђ2while/simple_rnn_cell_35709/BiasAdd/ReadVariableOpЂ1while/simple_rnn_cell_35709/MatMul/ReadVariableOpЂ3while/simple_rnn_cell_35709/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ў
1while/simple_rnn_cell_35709/MatMul/ReadVariableOpReadVariableOp<while_simple_rnn_cell_35709_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0Ы
"while/simple_rnn_cell_35709/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:09while/simple_rnn_cell_35709/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЌ
2while/simple_rnn_cell_35709/BiasAdd/ReadVariableOpReadVariableOp=while_simple_rnn_cell_35709_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0Ъ
#while/simple_rnn_cell_35709/BiasAddBiasAdd,while/simple_rnn_cell_35709/MatMul:product:0:while/simple_rnn_cell_35709/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџВ
3while/simple_rnn_cell_35709/MatMul_1/ReadVariableOpReadVariableOp>while_simple_rnn_cell_35709_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0В
$while/simple_rnn_cell_35709/MatMul_1MatMulwhile_placeholder_2;while/simple_rnn_cell_35709/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџИ
while/simple_rnn_cell_35709/addAddV2,while/simple_rnn_cell_35709/BiasAdd:output:0.while/simple_rnn_cell_35709/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ
 while/simple_rnn_cell_35709/TanhTanh#while/simple_rnn_cell_35709/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџЭ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder$while/simple_rnn_cell_35709/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :щшв
while/Identity_4Identity$while/simple_rnn_cell_35709/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџы

while/NoOpNoOp3^while/simple_rnn_cell_35709/BiasAdd/ReadVariableOp2^while/simple_rnn_cell_35709/MatMul/ReadVariableOp4^while/simple_rnn_cell_35709/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"|
;while_simple_rnn_cell_35709_biasadd_readvariableop_resource=while_simple_rnn_cell_35709_biasadd_readvariableop_resource_0"~
<while_simple_rnn_cell_35709_matmul_1_readvariableop_resource>while_simple_rnn_cell_35709_matmul_1_readvariableop_resource_0"z
:while_simple_rnn_cell_35709_matmul_readvariableop_resource<while_simple_rnn_cell_35709_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ: : : : : 2h
2while/simple_rnn_cell_35709/BiasAdd/ReadVariableOp2while/simple_rnn_cell_35709/BiasAdd/ReadVariableOp2f
1while/simple_rnn_cell_35709/MatMul/ReadVariableOp1while/simple_rnn_cell_35709/MatMul/ReadVariableOp2j
3while/simple_rnn_cell_35709/MatMul_1/ReadVariableOp3while/simple_rnn_cell_35709/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
с4
Е
L__inference_simple_rnn_359_layer_call_and_return_conditional_losses_72530588

inputs0
simple_rnn_cell_35709_72530513:,
simple_rnn_cell_35709_72530515:0
simple_rnn_cell_35709_72530517:
identityЂ-simple_rnn_cell_35709/StatefulPartitionedCallЂwhile;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
-simple_rnn_cell_35709/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_35709_72530513simple_rnn_cell_35709_72530515simple_rnn_cell_35709_72530517*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџ:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *\
fWRU
S__inference_simple_rnn_cell_35709_layer_call_and_return_conditional_losses_72530512n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ѓ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_35709_72530513simple_rnn_cell_35709_72530515simple_rnn_cell_35709_72530517*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_72530525*
condR
while_cond_72530524*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ~
NoOpNoOp.^simple_rnn_cell_35709/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2^
-simple_rnn_cell_35709/StatefulPartitionedCall-simple_rnn_cell_35709/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
г	

L__inference_sequential_359_layer_call_and_return_conditional_losses_72530879

inputs)
simple_rnn_359_72530871:%
simple_rnn_359_72530873:)
simple_rnn_359_72530875:
identityЂ&simple_rnn_359/StatefulPartitionedCallЉ
&simple_rnn_359/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_359_72530871simple_rnn_359_72530873simple_rnn_359_72530875*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_simple_rnn_359_layer_call_and_return_conditional_losses_72530870~
IdentityIdentity/simple_rnn_359/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџo
NoOpNoOp'^simple_rnn_359/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ(: : : 2P
&simple_rnn_359/StatefulPartitionedCall&simple_rnn_359/StatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ(
 
_user_specified_nameinputs

№
S__inference_simple_rnn_cell_35709_layer_call_and_return_conditional_losses_72531856

inputs
states_00
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџG
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџ:џџџџџџџџџ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
states/0
є>
й
L__inference_simple_rnn_359_layer_call_and_return_conditional_losses_72531595
inputs_0F
4simple_rnn_cell_35709_matmul_readvariableop_resource:C
5simple_rnn_cell_35709_biasadd_readvariableop_resource:H
6simple_rnn_cell_35709_matmul_1_readvariableop_resource:
identityЂ,simple_rnn_cell_35709/BiasAdd/ReadVariableOpЂ+simple_rnn_cell_35709/MatMul/ReadVariableOpЂ-simple_rnn_cell_35709/MatMul_1/ReadVariableOpЂwhile=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask 
+simple_rnn_cell_35709/MatMul/ReadVariableOpReadVariableOp4simple_rnn_cell_35709_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ї
simple_rnn_cell_35709/MatMulMatMulstrided_slice_2:output:03simple_rnn_cell_35709/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
,simple_rnn_cell_35709/BiasAdd/ReadVariableOpReadVariableOp5simple_rnn_cell_35709_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0И
simple_rnn_cell_35709/BiasAddBiasAdd&simple_rnn_cell_35709/MatMul:product:04simple_rnn_cell_35709/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЄ
-simple_rnn_cell_35709/MatMul_1/ReadVariableOpReadVariableOp6simple_rnn_cell_35709_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0Ё
simple_rnn_cell_35709/MatMul_1MatMulzeros:output:05simple_rnn_cell_35709/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџІ
simple_rnn_cell_35709/addAddV2&simple_rnn_cell_35709/BiasAdd:output:0(simple_rnn_cell_35709/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџs
simple_rnn_cell_35709/TanhTanhsimple_rnn_cell_35709/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ш
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:04simple_rnn_cell_35709_matmul_readvariableop_resource5simple_rnn_cell_35709_biasadd_readvariableop_resource6simple_rnn_cell_35709_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџ: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_72531529*
condR
while_cond_72531528*8
output_shapes'
%: : : : :џџџџџџџџџ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџл
NoOpNoOp-^simple_rnn_cell_35709/BiasAdd/ReadVariableOp,^simple_rnn_cell_35709/MatMul/ReadVariableOp.^simple_rnn_cell_35709/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2\
,simple_rnn_cell_35709/BiasAdd/ReadVariableOp,simple_rnn_cell_35709/BiasAdd/ReadVariableOp2Z
+simple_rnn_cell_35709/MatMul/ReadVariableOp+simple_rnn_cell_35709/MatMul/ReadVariableOp2^
-simple_rnn_cell_35709/MatMul_1/ReadVariableOp-simple_rnn_cell_35709/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs/0
№-
ю
while_body_72531745
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0N
<while_simple_rnn_cell_35709_matmul_readvariableop_resource_0:K
=while_simple_rnn_cell_35709_biasadd_readvariableop_resource_0:P
>while_simple_rnn_cell_35709_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorL
:while_simple_rnn_cell_35709_matmul_readvariableop_resource:I
;while_simple_rnn_cell_35709_biasadd_readvariableop_resource:N
<while_simple_rnn_cell_35709_matmul_1_readvariableop_resource:Ђ2while/simple_rnn_cell_35709/BiasAdd/ReadVariableOpЂ1while/simple_rnn_cell_35709/MatMul/ReadVariableOpЂ3while/simple_rnn_cell_35709/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ў
1while/simple_rnn_cell_35709/MatMul/ReadVariableOpReadVariableOp<while_simple_rnn_cell_35709_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0Ы
"while/simple_rnn_cell_35709/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:09while/simple_rnn_cell_35709/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџЌ
2while/simple_rnn_cell_35709/BiasAdd/ReadVariableOpReadVariableOp=while_simple_rnn_cell_35709_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0Ъ
#while/simple_rnn_cell_35709/BiasAddBiasAdd,while/simple_rnn_cell_35709/MatMul:product:0:while/simple_rnn_cell_35709/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџВ
3while/simple_rnn_cell_35709/MatMul_1/ReadVariableOpReadVariableOp>while_simple_rnn_cell_35709_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0В
$while/simple_rnn_cell_35709/MatMul_1MatMulwhile_placeholder_2;while/simple_rnn_cell_35709/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџИ
while/simple_rnn_cell_35709/addAddV2,while/simple_rnn_cell_35709/BiasAdd:output:0.while/simple_rnn_cell_35709/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџ
 while/simple_rnn_cell_35709/TanhTanh#while/simple_rnn_cell_35709/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџЭ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder$while/simple_rnn_cell_35709/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :щшв
while/Identity_4Identity$while/simple_rnn_cell_35709/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџы

while/NoOpNoOp3^while/simple_rnn_cell_35709/BiasAdd/ReadVariableOp2^while/simple_rnn_cell_35709/MatMul/ReadVariableOp4^while/simple_rnn_cell_35709/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"|
;while_simple_rnn_cell_35709_biasadd_readvariableop_resource=while_simple_rnn_cell_35709_biasadd_readvariableop_resource_0"~
<while_simple_rnn_cell_35709_matmul_1_readvariableop_resource>while_simple_rnn_cell_35709_matmul_1_readvariableop_resource_0"z
:while_simple_rnn_cell_35709_matmul_readvariableop_resource<while_simple_rnn_cell_35709_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџ: : : : : 2h
2while/simple_rnn_cell_35709/BiasAdd/ReadVariableOp2while/simple_rnn_cell_35709/BiasAdd/ReadVariableOp2f
1while/simple_rnn_cell_35709/MatMul/ReadVariableOp1while/simple_rnn_cell_35709/MatMul/ReadVariableOp2j
3while/simple_rnn_cell_35709/MatMul_1/ReadVariableOp3while/simple_rnn_cell_35709/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
: 
ф
Д
while_cond_72531420
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_72531420___redundant_placeholder06
2while_while_cond_72531420___redundant_placeholder16
2while_while_cond_72531420___redundant_placeholder26
2while_while_cond_72531420___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:џџџџџџџџџ:

_output_shapes
: :

_output_shapes
:"лL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Я
serving_defaultЛ
Y
simple_rnn_359_inputA
&serving_default_simple_rnn_359_input:0џџџџџџџџџ(B
simple_rnn_3590
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:ШO
ў
layer_with_weights-0
layer-0
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	
signatures"
_tf_keras_sequential
У

cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
Ъ
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
2
1__inference_sequential_359_layer_call_fn_72530888
1__inference_sequential_359_layer_call_fn_72531095
1__inference_sequential_359_layer_call_fn_72531106
1__inference_sequential_359_layer_call_fn_72531062Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ў2ћ
L__inference_sequential_359_layer_call_and_return_conditional_losses_72531214
L__inference_sequential_359_layer_call_and_return_conditional_losses_72531322
L__inference_sequential_359_layer_call_and_return_conditional_losses_72531073
L__inference_sequential_359_layer_call_and_return_conditional_losses_72531084Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
лBи
#__inference__wrapped_model_72530464simple_rnn_359_input"
В
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
,
serving_default"
signature_map
ш

kernel
recurrent_kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
 __call__
*!&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
Й

"states
#non_trainable_variables

$layers
%metrics
&layer_regularization_losses
'layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ї2Є
1__inference_simple_rnn_359_layer_call_fn_72531346
1__inference_simple_rnn_359_layer_call_fn_72531357
1__inference_simple_rnn_359_layer_call_fn_72531368
1__inference_simple_rnn_359_layer_call_fn_72531379е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2
L__inference_simple_rnn_359_layer_call_and_return_conditional_losses_72531487
L__inference_simple_rnn_359_layer_call_and_return_conditional_losses_72531595
L__inference_simple_rnn_359_layer_call_and_return_conditional_losses_72531703
L__inference_simple_rnn_359_layer_call_and_return_conditional_losses_72531811е
ЬВШ
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
=:;2+simple_rnn_359/simple_rnn_cell_35709/kernel
G:E25simple_rnn_359/simple_rnn_cell_35709/recurrent_kernel
7:52)simple_rnn_359/simple_rnn_cell_35709/bias
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
кBз
&__inference_signature_wrapper_72531335simple_rnn_359_input"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
­
(non_trainable_variables

)layers
*metrics
+layer_regularization_losses
,layer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
И2Е
8__inference_simple_rnn_cell_35709_layer_call_fn_72531825
8__inference_simple_rnn_cell_35709_layer_call_fn_72531839О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ю2ы
S__inference_simple_rnn_cell_35709_layer_call_and_return_conditional_losses_72531856
S__inference_simple_rnn_cell_35709_layer_call_and_return_conditional_losses_72531873О
ЕВБ
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'

0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapperБ
#__inference__wrapped_model_72530464AЂ>
7Ђ4
2/
simple_rnn_359_inputџџџџџџџџџ(
Њ "?Њ<
:
simple_rnn_359(%
simple_rnn_359џџџџџџџџџЧ
L__inference_sequential_359_layer_call_and_return_conditional_losses_72531073wIЂF
?Ђ<
2/
simple_rnn_359_inputџџџџџџџџџ(
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 Ч
L__inference_sequential_359_layer_call_and_return_conditional_losses_72531084wIЂF
?Ђ<
2/
simple_rnn_359_inputџџџџџџџџџ(
p

 
Њ "%Ђ"

0џџџџџџџџџ
 Й
L__inference_sequential_359_layer_call_and_return_conditional_losses_72531214i;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ(
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 Й
L__inference_sequential_359_layer_call_and_return_conditional_losses_72531322i;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ(
p

 
Њ "%Ђ"

0џџџџџџџџџ
 
1__inference_sequential_359_layer_call_fn_72530888jIЂF
?Ђ<
2/
simple_rnn_359_inputџџџџџџџџџ(
p 

 
Њ "џџџџџџџџџ
1__inference_sequential_359_layer_call_fn_72531062jIЂF
?Ђ<
2/
simple_rnn_359_inputџџџџџџџџџ(
p

 
Њ "џџџџџџџџџ
1__inference_sequential_359_layer_call_fn_72531095\;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ(
p 

 
Њ "џџџџџџџџџ
1__inference_sequential_359_layer_call_fn_72531106\;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ(
p

 
Њ "џџџџџџџџџЬ
&__inference_signature_wrapper_72531335ЁYЂV
Ђ 
OЊL
J
simple_rnn_359_input2/
simple_rnn_359_inputџџџџџџџџџ("?Њ<
:
simple_rnn_359(%
simple_rnn_359џџџџџџџџџЭ
L__inference_simple_rnn_359_layer_call_and_return_conditional_losses_72531487}OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 Э
L__inference_simple_rnn_359_layer_call_and_return_conditional_losses_72531595}OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ "%Ђ"

0џџџџџџџџџ
 Н
L__inference_simple_rnn_359_layer_call_and_return_conditional_losses_72531703m?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ(

 
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 Н
L__inference_simple_rnn_359_layer_call_and_return_conditional_losses_72531811m?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ(

 
p

 
Њ "%Ђ"

0џџџџџџџџџ
 Ѕ
1__inference_simple_rnn_359_layer_call_fn_72531346pOЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "џџџџџџџџџЅ
1__inference_simple_rnn_359_layer_call_fn_72531357pOЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ "џџџџџџџџџ
1__inference_simple_rnn_359_layer_call_fn_72531368`?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ(

 
p 

 
Њ "џџџџџџџџџ
1__inference_simple_rnn_359_layer_call_fn_72531379`?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ(

 
p

 
Њ "џџџџџџџџџ
S__inference_simple_rnn_cell_35709_layer_call_and_return_conditional_losses_72531856З\ЂY
RЂO
 
inputsџџџџџџџџџ
'Ђ$
"
states/0џџџџџџџџџ
p 
Њ "RЂO
HЂE

0/0џџџџџџџџџ
$!

0/1/0џџџџџџџџџ
 
S__inference_simple_rnn_cell_35709_layer_call_and_return_conditional_losses_72531873З\ЂY
RЂO
 
inputsџџџџџџџџџ
'Ђ$
"
states/0џџџџџџџџџ
p
Њ "RЂO
HЂE

0/0џџџџџџџџџ
$!

0/1/0џџџџџџџџџ
 ц
8__inference_simple_rnn_cell_35709_layer_call_fn_72531825Љ\ЂY
RЂO
 
inputsџџџџџџџџџ
'Ђ$
"
states/0џџџџџџџџџ
p 
Њ "DЂA

0џџџџџџџџџ
"

1/0џџџџџџџџџц
8__inference_simple_rnn_cell_35709_layer_call_fn_72531839Љ\ЂY
RЂO
 
inputsџџџџџџџџџ
'Ђ$
"
states/0џџџџџџџџџ
p
Њ "DЂA

0џџџџџџџџџ
"

1/0џџџџџџџџџ