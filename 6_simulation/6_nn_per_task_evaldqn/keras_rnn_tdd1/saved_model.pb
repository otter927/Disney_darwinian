��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
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
delete_old_dirsbool(�
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
dtypetype�
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
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
�
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handle���element_dtype"
element_dtypetype"

shape_typetype:
2	
�
TensorListReserve
element_shape"
shape_type
num_elements(
handle���element_dtype"
element_dtypetype"

shape_typetype:
2	
�
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint���������
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
�
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
�"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68��
�
+simple_rnn_104/simple_rnn_cell_15506/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:P*<
shared_name-+simple_rnn_104/simple_rnn_cell_15506/kernel
�
?simple_rnn_104/simple_rnn_cell_15506/kernel/Read/ReadVariableOpReadVariableOp+simple_rnn_104/simple_rnn_cell_15506/kernel*
_output_shapes

:P*
dtype0
�
5simple_rnn_104/simple_rnn_cell_15506/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:PP*F
shared_name75simple_rnn_104/simple_rnn_cell_15506/recurrent_kernel
�
Isimple_rnn_104/simple_rnn_cell_15506/recurrent_kernel/Read/ReadVariableOpReadVariableOp5simple_rnn_104/simple_rnn_cell_15506/recurrent_kernel*
_output_shapes

:PP*
dtype0
�
)simple_rnn_104/simple_rnn_cell_15506/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:P*:
shared_name+)simple_rnn_104/simple_rnn_cell_15506/bias
�
=simple_rnn_104/simple_rnn_cell_15506/bias/Read/ReadVariableOpReadVariableOp)simple_rnn_104/simple_rnn_cell_15506/bias*
_output_shapes
:P*
dtype0

NoOpNoOp
�
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B�
�
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
�
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
�
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
�

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
�

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
VARIABLE_VALUE+simple_rnn_104/simple_rnn_cell_15506/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE5simple_rnn_104/simple_rnn_cell_15506/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUE)simple_rnn_104/simple_rnn_cell_15506/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
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
�
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
�
$serving_default_simple_rnn_104_inputPlaceholder*,
_output_shapes
:����������*
dtype0*!
shape:����������
�
StatefulPartitionedCallStatefulPartitionedCall$serving_default_simple_rnn_104_input+simple_rnn_104/simple_rnn_cell_15506/kernel)simple_rnn_104/simple_rnn_cell_15506/bias5simple_rnn_104/simple_rnn_cell_15506/recurrent_kernel*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������P*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� */
f*R(
&__inference_signature_wrapper_38359218
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename?simple_rnn_104/simple_rnn_cell_15506/kernel/Read/ReadVariableOpIsimple_rnn_104/simple_rnn_cell_15506/recurrent_kernel/Read/ReadVariableOp=simple_rnn_104/simple_rnn_cell_15506/bias/Read/ReadVariableOpConst*
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
GPU 2J 8� **
f%R#
!__inference__traced_save_38359788
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename+simple_rnn_104/simple_rnn_cell_15506/kernel5simple_rnn_104/simple_rnn_cell_15506/recurrent_kernel)simple_rnn_104/simple_rnn_cell_15506/bias*
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
GPU 2J 8� *-
f(R&
$__inference__traced_restore_38359807��
�
�
1__inference_simple_rnn_104_layer_call_fn_38359229
inputs_0
unknown:P
	unknown_0:P
	unknown_1:PP
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������P*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_simple_rnn_104_layer_call_and_return_conditional_losses_38358471o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������P`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�>
�
L__inference_simple_rnn_104_layer_call_and_return_conditional_losses_38358753

inputsF
4simple_rnn_cell_15506_matmul_readvariableop_resource:PC
5simple_rnn_cell_15506_biasadd_readvariableop_resource:PH
6simple_rnn_cell_15506_matmul_1_readvariableop_resource:PP
identity��,simple_rnn_cell_15506/BiasAdd/ReadVariableOp�+simple_rnn_cell_15506/MatMul/ReadVariableOp�-simple_rnn_cell_15506/MatMul_1/ReadVariableOp�while;
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
valueB:�
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
value	B :Ps
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
:���������Pc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:����������D
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
+simple_rnn_cell_15506/MatMul/ReadVariableOpReadVariableOp4simple_rnn_cell_15506_matmul_readvariableop_resource*
_output_shapes

:P*
dtype0�
simple_rnn_cell_15506/MatMulMatMulstrided_slice_2:output:03simple_rnn_cell_15506/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
,simple_rnn_cell_15506/BiasAdd/ReadVariableOpReadVariableOp5simple_rnn_cell_15506_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0�
simple_rnn_cell_15506/BiasAddBiasAdd&simple_rnn_cell_15506/MatMul:product:04simple_rnn_cell_15506/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
-simple_rnn_cell_15506/MatMul_1/ReadVariableOpReadVariableOp6simple_rnn_cell_15506_matmul_1_readvariableop_resource*
_output_shapes

:PP*
dtype0�
simple_rnn_cell_15506/MatMul_1MatMulzeros:output:05simple_rnn_cell_15506/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
simple_rnn_cell_15506/addAddV2&simple_rnn_cell_15506/BiasAdd:output:0(simple_rnn_cell_15506/MatMul_1:product:0*
T0*'
_output_shapes
:���������Ps
simple_rnn_cell_15506/TanhTanhsimple_rnn_cell_15506/add:z:0*
T0*'
_output_shapes
:���������Pn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����P   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:04simple_rnn_cell_15506_matmul_readvariableop_resource5simple_rnn_cell_15506_biasadd_readvariableop_resource6simple_rnn_cell_15506_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������P: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_38358687*
condR
while_cond_38358686*8
output_shapes'
%: : : : :���������P: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����P   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������P*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������P*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:����������Pg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������P�
NoOpNoOp-^simple_rnn_cell_15506/BiasAdd/ReadVariableOp,^simple_rnn_cell_15506/MatMul/ReadVariableOp.^simple_rnn_cell_15506/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:����������: : : 2\
,simple_rnn_cell_15506/BiasAdd/ReadVariableOp,simple_rnn_cell_15506/BiasAdd/ReadVariableOp2Z
+simple_rnn_cell_15506/MatMul/ReadVariableOp+simple_rnn_cell_15506/MatMul/ReadVariableOp2^
-simple_rnn_cell_15506/MatMul_1/ReadVariableOp-simple_rnn_cell_15506/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
1__inference_simple_rnn_104_layer_call_fn_38359240
inputs_0
unknown:P
	unknown_0:P
	unknown_1:PP
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������P*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_simple_rnn_104_layer_call_and_return_conditional_losses_38358630o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������P`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�	
�
L__inference_sequential_104_layer_call_and_return_conditional_losses_38358925

inputs)
simple_rnn_104_38358917:P%
simple_rnn_104_38358919:P)
simple_rnn_104_38358921:PP
identity��&simple_rnn_104/StatefulPartitionedCall�
&simple_rnn_104/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_104_38358917simple_rnn_104_38358919simple_rnn_104_38358921*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������P*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_simple_rnn_104_layer_call_and_return_conditional_losses_38358892~
IdentityIdentity/simple_rnn_104/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������Po
NoOpNoOp'^simple_rnn_104/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:����������: : : 2P
&simple_rnn_104/StatefulPartitionedCall&simple_rnn_104/StatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
"simple_rnn_104_while_cond_38359030:
6simple_rnn_104_while_simple_rnn_104_while_loop_counter@
<simple_rnn_104_while_simple_rnn_104_while_maximum_iterations$
 simple_rnn_104_while_placeholder&
"simple_rnn_104_while_placeholder_1&
"simple_rnn_104_while_placeholder_2<
8simple_rnn_104_while_less_simple_rnn_104_strided_slice_1T
Psimple_rnn_104_while_simple_rnn_104_while_cond_38359030___redundant_placeholder0T
Psimple_rnn_104_while_simple_rnn_104_while_cond_38359030___redundant_placeholder1T
Psimple_rnn_104_while_simple_rnn_104_while_cond_38359030___redundant_placeholder2T
Psimple_rnn_104_while_simple_rnn_104_while_cond_38359030___redundant_placeholder3!
simple_rnn_104_while_identity
�
simple_rnn_104/while/LessLess simple_rnn_104_while_placeholder8simple_rnn_104_while_less_simple_rnn_104_strided_slice_1*
T0*
_output_shapes
: i
simple_rnn_104/while/IdentityIdentitysimple_rnn_104/while/Less:z:0*
T0
*
_output_shapes
: "G
simple_rnn_104_while_identity&simple_rnn_104/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������P: ::::: 
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
:���������P:

_output_shapes
: :

_output_shapes
:
�"
�
while_body_38358408
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_08
&while_simple_rnn_cell_15506_38358430_0:P4
&while_simple_rnn_cell_15506_38358432_0:P8
&while_simple_rnn_cell_15506_38358434_0:PP
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor6
$while_simple_rnn_cell_15506_38358430:P2
$while_simple_rnn_cell_15506_38358432:P6
$while_simple_rnn_cell_15506_38358434:PP��3while/simple_rnn_cell_15506/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
3while/simple_rnn_cell_15506/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2&while_simple_rnn_cell_15506_38358430_0&while_simple_rnn_cell_15506_38358432_0&while_simple_rnn_cell_15506_38358434_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������P:���������P*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_simple_rnn_cell_15506_layer_call_and_return_conditional_losses_38358395�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder<while/simple_rnn_cell_15506/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :����
while/Identity_4Identity<while/simple_rnn_cell_15506/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������P�

while/NoOpNoOp4^while/simple_rnn_cell_15506/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"N
$while_simple_rnn_cell_15506_38358430&while_simple_rnn_cell_15506_38358430_0"N
$while_simple_rnn_cell_15506_38358432&while_simple_rnn_cell_15506_38358432_0"N
$while_simple_rnn_cell_15506_38358434&while_simple_rnn_cell_15506_38358434_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������P: : : : : 2j
3while/simple_rnn_cell_15506/StatefulPartitionedCall3while/simple_rnn_cell_15506/StatefulPartitionedCall: 
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
:���������P:

_output_shapes
: :

_output_shapes
: 
�"
�
while_body_38358567
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_08
&while_simple_rnn_cell_15506_38358589_0:P4
&while_simple_rnn_cell_15506_38358591_0:P8
&while_simple_rnn_cell_15506_38358593_0:PP
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor6
$while_simple_rnn_cell_15506_38358589:P2
$while_simple_rnn_cell_15506_38358591:P6
$while_simple_rnn_cell_15506_38358593:PP��3while/simple_rnn_cell_15506/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
3while/simple_rnn_cell_15506/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2&while_simple_rnn_cell_15506_38358589_0&while_simple_rnn_cell_15506_38358591_0&while_simple_rnn_cell_15506_38358593_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������P:���������P*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_simple_rnn_cell_15506_layer_call_and_return_conditional_losses_38358515�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder<while/simple_rnn_cell_15506/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :����
while/Identity_4Identity<while/simple_rnn_cell_15506/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:���������P�

while/NoOpNoOp4^while/simple_rnn_cell_15506/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"N
$while_simple_rnn_cell_15506_38358589&while_simple_rnn_cell_15506_38358589_0"N
$while_simple_rnn_cell_15506_38358591&while_simple_rnn_cell_15506_38358591_0"N
$while_simple_rnn_cell_15506_38358593&while_simple_rnn_cell_15506_38358593_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������P: : : : : 2j
3while/simple_rnn_cell_15506/StatefulPartitionedCall3while/simple_rnn_cell_15506/StatefulPartitionedCall: 
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
:���������P:

_output_shapes
: :

_output_shapes
: 
�>
�
L__inference_simple_rnn_104_layer_call_and_return_conditional_losses_38359370
inputs_0F
4simple_rnn_cell_15506_matmul_readvariableop_resource:PC
5simple_rnn_cell_15506_biasadd_readvariableop_resource:PH
6simple_rnn_cell_15506_matmul_1_readvariableop_resource:PP
identity��,simple_rnn_cell_15506/BiasAdd/ReadVariableOp�+simple_rnn_cell_15506/MatMul/ReadVariableOp�-simple_rnn_cell_15506/MatMul_1/ReadVariableOp�while=
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
valueB:�
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
value	B :Ps
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
:���������Pc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
+simple_rnn_cell_15506/MatMul/ReadVariableOpReadVariableOp4simple_rnn_cell_15506_matmul_readvariableop_resource*
_output_shapes

:P*
dtype0�
simple_rnn_cell_15506/MatMulMatMulstrided_slice_2:output:03simple_rnn_cell_15506/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
,simple_rnn_cell_15506/BiasAdd/ReadVariableOpReadVariableOp5simple_rnn_cell_15506_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0�
simple_rnn_cell_15506/BiasAddBiasAdd&simple_rnn_cell_15506/MatMul:product:04simple_rnn_cell_15506/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
-simple_rnn_cell_15506/MatMul_1/ReadVariableOpReadVariableOp6simple_rnn_cell_15506_matmul_1_readvariableop_resource*
_output_shapes

:PP*
dtype0�
simple_rnn_cell_15506/MatMul_1MatMulzeros:output:05simple_rnn_cell_15506/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
simple_rnn_cell_15506/addAddV2&simple_rnn_cell_15506/BiasAdd:output:0(simple_rnn_cell_15506/MatMul_1:product:0*
T0*'
_output_shapes
:���������Ps
simple_rnn_cell_15506/TanhTanhsimple_rnn_cell_15506/add:z:0*
T0*'
_output_shapes
:���������Pn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����P   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:04simple_rnn_cell_15506_matmul_readvariableop_resource5simple_rnn_cell_15506_biasadd_readvariableop_resource6simple_rnn_cell_15506_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������P: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_38359304*
condR
while_cond_38359303*8
output_shapes'
%: : : : :���������P: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����P   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������P*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������P*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������Pg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������P�
NoOpNoOp-^simple_rnn_cell_15506/BiasAdd/ReadVariableOp,^simple_rnn_cell_15506/MatMul/ReadVariableOp.^simple_rnn_cell_15506/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2\
,simple_rnn_cell_15506/BiasAdd/ReadVariableOp,simple_rnn_cell_15506/BiasAdd/ReadVariableOp2Z
+simple_rnn_cell_15506/MatMul/ReadVariableOp+simple_rnn_cell_15506/MatMul/ReadVariableOp2^
-simple_rnn_cell_15506/MatMul_1/ReadVariableOp-simple_rnn_cell_15506/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�4
�
L__inference_simple_rnn_104_layer_call_and_return_conditional_losses_38358471

inputs0
simple_rnn_cell_15506_38358396:P,
simple_rnn_cell_15506_38358398:P0
simple_rnn_cell_15506_38358400:PP
identity��-simple_rnn_cell_15506/StatefulPartitionedCall�while;
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
valueB:�
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
value	B :Ps
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
:���������Pc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
-simple_rnn_cell_15506/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_15506_38358396simple_rnn_cell_15506_38358398simple_rnn_cell_15506_38358400*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������P:���������P*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_simple_rnn_cell_15506_layer_call_and_return_conditional_losses_38358395n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����P   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_15506_38358396simple_rnn_cell_15506_38358398simple_rnn_cell_15506_38358400*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������P: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_38358408*
condR
while_cond_38358407*8
output_shapes'
%: : : : :���������P: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����P   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������P*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������P*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������Pg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������P~
NoOpNoOp.^simple_rnn_cell_15506/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2^
-simple_rnn_cell_15506/StatefulPartitionedCall-simple_rnn_cell_15506/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�[
�
#__inference__wrapped_model_38358347
simple_rnn_104_inputd
Rsequential_104_simple_rnn_104_simple_rnn_cell_15506_matmul_readvariableop_resource:Pa
Ssequential_104_simple_rnn_104_simple_rnn_cell_15506_biasadd_readvariableop_resource:Pf
Tsequential_104_simple_rnn_104_simple_rnn_cell_15506_matmul_1_readvariableop_resource:PP
identity��Jsequential_104/simple_rnn_104/simple_rnn_cell_15506/BiasAdd/ReadVariableOp�Isequential_104/simple_rnn_104/simple_rnn_cell_15506/MatMul/ReadVariableOp�Ksequential_104/simple_rnn_104/simple_rnn_cell_15506/MatMul_1/ReadVariableOp�#sequential_104/simple_rnn_104/whileg
#sequential_104/simple_rnn_104/ShapeShapesimple_rnn_104_input*
T0*
_output_shapes
:{
1sequential_104/simple_rnn_104/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3sequential_104/simple_rnn_104/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3sequential_104/simple_rnn_104/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+sequential_104/simple_rnn_104/strided_sliceStridedSlice,sequential_104/simple_rnn_104/Shape:output:0:sequential_104/simple_rnn_104/strided_slice/stack:output:0<sequential_104/simple_rnn_104/strided_slice/stack_1:output:0<sequential_104/simple_rnn_104/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
,sequential_104/simple_rnn_104/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :P�
*sequential_104/simple_rnn_104/zeros/packedPack4sequential_104/simple_rnn_104/strided_slice:output:05sequential_104/simple_rnn_104/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:n
)sequential_104/simple_rnn_104/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
#sequential_104/simple_rnn_104/zerosFill3sequential_104/simple_rnn_104/zeros/packed:output:02sequential_104/simple_rnn_104/zeros/Const:output:0*
T0*'
_output_shapes
:���������P�
,sequential_104/simple_rnn_104/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
'sequential_104/simple_rnn_104/transpose	Transposesimple_rnn_104_input5sequential_104/simple_rnn_104/transpose/perm:output:0*
T0*,
_output_shapes
:�����������
%sequential_104/simple_rnn_104/Shape_1Shape+sequential_104/simple_rnn_104/transpose:y:0*
T0*
_output_shapes
:}
3sequential_104/simple_rnn_104/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5sequential_104/simple_rnn_104/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5sequential_104/simple_rnn_104/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
-sequential_104/simple_rnn_104/strided_slice_1StridedSlice.sequential_104/simple_rnn_104/Shape_1:output:0<sequential_104/simple_rnn_104/strided_slice_1/stack:output:0>sequential_104/simple_rnn_104/strided_slice_1/stack_1:output:0>sequential_104/simple_rnn_104/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
9sequential_104/simple_rnn_104/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
+sequential_104/simple_rnn_104/TensorArrayV2TensorListReserveBsequential_104/simple_rnn_104/TensorArrayV2/element_shape:output:06sequential_104/simple_rnn_104/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Ssequential_104/simple_rnn_104/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Esequential_104/simple_rnn_104/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor+sequential_104/simple_rnn_104/transpose:y:0\sequential_104/simple_rnn_104/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���}
3sequential_104/simple_rnn_104/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5sequential_104/simple_rnn_104/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5sequential_104/simple_rnn_104/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
-sequential_104/simple_rnn_104/strided_slice_2StridedSlice+sequential_104/simple_rnn_104/transpose:y:0<sequential_104/simple_rnn_104/strided_slice_2/stack:output:0>sequential_104/simple_rnn_104/strided_slice_2/stack_1:output:0>sequential_104/simple_rnn_104/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
Isequential_104/simple_rnn_104/simple_rnn_cell_15506/MatMul/ReadVariableOpReadVariableOpRsequential_104_simple_rnn_104_simple_rnn_cell_15506_matmul_readvariableop_resource*
_output_shapes

:P*
dtype0�
:sequential_104/simple_rnn_104/simple_rnn_cell_15506/MatMulMatMul6sequential_104/simple_rnn_104/strided_slice_2:output:0Qsequential_104/simple_rnn_104/simple_rnn_cell_15506/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
Jsequential_104/simple_rnn_104/simple_rnn_cell_15506/BiasAdd/ReadVariableOpReadVariableOpSsequential_104_simple_rnn_104_simple_rnn_cell_15506_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0�
;sequential_104/simple_rnn_104/simple_rnn_cell_15506/BiasAddBiasAddDsequential_104/simple_rnn_104/simple_rnn_cell_15506/MatMul:product:0Rsequential_104/simple_rnn_104/simple_rnn_cell_15506/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
Ksequential_104/simple_rnn_104/simple_rnn_cell_15506/MatMul_1/ReadVariableOpReadVariableOpTsequential_104_simple_rnn_104_simple_rnn_cell_15506_matmul_1_readvariableop_resource*
_output_shapes

:PP*
dtype0�
<sequential_104/simple_rnn_104/simple_rnn_cell_15506/MatMul_1MatMul,sequential_104/simple_rnn_104/zeros:output:0Ssequential_104/simple_rnn_104/simple_rnn_cell_15506/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
7sequential_104/simple_rnn_104/simple_rnn_cell_15506/addAddV2Dsequential_104/simple_rnn_104/simple_rnn_cell_15506/BiasAdd:output:0Fsequential_104/simple_rnn_104/simple_rnn_cell_15506/MatMul_1:product:0*
T0*'
_output_shapes
:���������P�
8sequential_104/simple_rnn_104/simple_rnn_cell_15506/TanhTanh;sequential_104/simple_rnn_104/simple_rnn_cell_15506/add:z:0*
T0*'
_output_shapes
:���������P�
;sequential_104/simple_rnn_104/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����P   �
-sequential_104/simple_rnn_104/TensorArrayV2_1TensorListReserveDsequential_104/simple_rnn_104/TensorArrayV2_1/element_shape:output:06sequential_104/simple_rnn_104/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���d
"sequential_104/simple_rnn_104/timeConst*
_output_shapes
: *
dtype0*
value	B : �
6sequential_104/simple_rnn_104/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������r
0sequential_104/simple_rnn_104/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
#sequential_104/simple_rnn_104/whileWhile9sequential_104/simple_rnn_104/while/loop_counter:output:0?sequential_104/simple_rnn_104/while/maximum_iterations:output:0+sequential_104/simple_rnn_104/time:output:06sequential_104/simple_rnn_104/TensorArrayV2_1:handle:0,sequential_104/simple_rnn_104/zeros:output:06sequential_104/simple_rnn_104/strided_slice_1:output:0Usequential_104/simple_rnn_104/TensorArrayUnstack/TensorListFromTensor:output_handle:0Rsequential_104_simple_rnn_104_simple_rnn_cell_15506_matmul_readvariableop_resourceSsequential_104_simple_rnn_104_simple_rnn_cell_15506_biasadd_readvariableop_resourceTsequential_104_simple_rnn_104_simple_rnn_cell_15506_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������P: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *=
body5R3
1sequential_104_simple_rnn_104_while_body_38358281*=
cond5R3
1sequential_104_simple_rnn_104_while_cond_38358280*8
output_shapes'
%: : : : :���������P: : : : : *
parallel_iterations �
Nsequential_104/simple_rnn_104/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����P   �
@sequential_104/simple_rnn_104/TensorArrayV2Stack/TensorListStackTensorListStack,sequential_104/simple_rnn_104/while:output:3Wsequential_104/simple_rnn_104/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������P*
element_dtype0�
3sequential_104/simple_rnn_104/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������
5sequential_104/simple_rnn_104/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
5sequential_104/simple_rnn_104/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
-sequential_104/simple_rnn_104/strided_slice_3StridedSliceIsequential_104/simple_rnn_104/TensorArrayV2Stack/TensorListStack:tensor:0<sequential_104/simple_rnn_104/strided_slice_3/stack:output:0>sequential_104/simple_rnn_104/strided_slice_3/stack_1:output:0>sequential_104/simple_rnn_104/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������P*
shrink_axis_mask�
.sequential_104/simple_rnn_104/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
)sequential_104/simple_rnn_104/transpose_1	TransposeIsequential_104/simple_rnn_104/TensorArrayV2Stack/TensorListStack:tensor:07sequential_104/simple_rnn_104/transpose_1/perm:output:0*
T0*,
_output_shapes
:����������P�
IdentityIdentity6sequential_104/simple_rnn_104/strided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������P�
NoOpNoOpK^sequential_104/simple_rnn_104/simple_rnn_cell_15506/BiasAdd/ReadVariableOpJ^sequential_104/simple_rnn_104/simple_rnn_cell_15506/MatMul/ReadVariableOpL^sequential_104/simple_rnn_104/simple_rnn_cell_15506/MatMul_1/ReadVariableOp$^sequential_104/simple_rnn_104/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:����������: : : 2�
Jsequential_104/simple_rnn_104/simple_rnn_cell_15506/BiasAdd/ReadVariableOpJsequential_104/simple_rnn_104/simple_rnn_cell_15506/BiasAdd/ReadVariableOp2�
Isequential_104/simple_rnn_104/simple_rnn_cell_15506/MatMul/ReadVariableOpIsequential_104/simple_rnn_104/simple_rnn_cell_15506/MatMul/ReadVariableOp2�
Ksequential_104/simple_rnn_104/simple_rnn_cell_15506/MatMul_1/ReadVariableOpKsequential_104/simple_rnn_104/simple_rnn_cell_15506/MatMul_1/ReadVariableOp2J
#sequential_104/simple_rnn_104/while#sequential_104/simple_rnn_104/while:b ^
,
_output_shapes
:����������
.
_user_specified_namesimple_rnn_104_input
�
�
&__inference_signature_wrapper_38359218
simple_rnn_104_input
unknown:P
	unknown_0:P
	unknown_1:PP
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_104_inputunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������P*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference__wrapped_model_38358347o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������P`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:����������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
,
_output_shapes
:����������
.
_user_specified_namesimple_rnn_104_input
�

�
8__inference_simple_rnn_cell_15506_layer_call_fn_38359708

inputs
states_0
unknown:P
	unknown_0:P
	unknown_1:PP
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������P:���������P*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_simple_rnn_cell_15506_layer_call_and_return_conditional_losses_38358395o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������Pq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������P`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������:���������P: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������P
"
_user_specified_name
states/0
�>
�
L__inference_simple_rnn_104_layer_call_and_return_conditional_losses_38359586

inputsF
4simple_rnn_cell_15506_matmul_readvariableop_resource:PC
5simple_rnn_cell_15506_biasadd_readvariableop_resource:PH
6simple_rnn_cell_15506_matmul_1_readvariableop_resource:PP
identity��,simple_rnn_cell_15506/BiasAdd/ReadVariableOp�+simple_rnn_cell_15506/MatMul/ReadVariableOp�-simple_rnn_cell_15506/MatMul_1/ReadVariableOp�while;
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
valueB:�
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
value	B :Ps
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
:���������Pc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:����������D
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
+simple_rnn_cell_15506/MatMul/ReadVariableOpReadVariableOp4simple_rnn_cell_15506_matmul_readvariableop_resource*
_output_shapes

:P*
dtype0�
simple_rnn_cell_15506/MatMulMatMulstrided_slice_2:output:03simple_rnn_cell_15506/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
,simple_rnn_cell_15506/BiasAdd/ReadVariableOpReadVariableOp5simple_rnn_cell_15506_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0�
simple_rnn_cell_15506/BiasAddBiasAdd&simple_rnn_cell_15506/MatMul:product:04simple_rnn_cell_15506/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
-simple_rnn_cell_15506/MatMul_1/ReadVariableOpReadVariableOp6simple_rnn_cell_15506_matmul_1_readvariableop_resource*
_output_shapes

:PP*
dtype0�
simple_rnn_cell_15506/MatMul_1MatMulzeros:output:05simple_rnn_cell_15506/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
simple_rnn_cell_15506/addAddV2&simple_rnn_cell_15506/BiasAdd:output:0(simple_rnn_cell_15506/MatMul_1:product:0*
T0*'
_output_shapes
:���������Ps
simple_rnn_cell_15506/TanhTanhsimple_rnn_cell_15506/add:z:0*
T0*'
_output_shapes
:���������Pn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����P   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:04simple_rnn_cell_15506_matmul_readvariableop_resource5simple_rnn_cell_15506_biasadd_readvariableop_resource6simple_rnn_cell_15506_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������P: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_38359520*
condR
while_cond_38359519*8
output_shapes'
%: : : : :���������P: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����P   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������P*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������P*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:����������Pg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������P�
NoOpNoOp-^simple_rnn_cell_15506/BiasAdd/ReadVariableOp,^simple_rnn_cell_15506/MatMul/ReadVariableOp.^simple_rnn_cell_15506/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:����������: : : 2\
,simple_rnn_cell_15506/BiasAdd/ReadVariableOp,simple_rnn_cell_15506/BiasAdd/ReadVariableOp2Z
+simple_rnn_cell_15506/MatMul/ReadVariableOp+simple_rnn_cell_15506/MatMul/ReadVariableOp2^
-simple_rnn_cell_15506/MatMul_1/ReadVariableOp-simple_rnn_cell_15506/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
"simple_rnn_104_while_cond_38359138:
6simple_rnn_104_while_simple_rnn_104_while_loop_counter@
<simple_rnn_104_while_simple_rnn_104_while_maximum_iterations$
 simple_rnn_104_while_placeholder&
"simple_rnn_104_while_placeholder_1&
"simple_rnn_104_while_placeholder_2<
8simple_rnn_104_while_less_simple_rnn_104_strided_slice_1T
Psimple_rnn_104_while_simple_rnn_104_while_cond_38359138___redundant_placeholder0T
Psimple_rnn_104_while_simple_rnn_104_while_cond_38359138___redundant_placeholder1T
Psimple_rnn_104_while_simple_rnn_104_while_cond_38359138___redundant_placeholder2T
Psimple_rnn_104_while_simple_rnn_104_while_cond_38359138___redundant_placeholder3!
simple_rnn_104_while_identity
�
simple_rnn_104/while/LessLess simple_rnn_104_while_placeholder8simple_rnn_104_while_less_simple_rnn_104_strided_slice_1*
T0*
_output_shapes
: i
simple_rnn_104/while/IdentityIdentitysimple_rnn_104/while/Less:z:0*
T0
*
_output_shapes
: "G
simple_rnn_104_while_identity&simple_rnn_104/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������P: ::::: 
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
:���������P:

_output_shapes
: :

_output_shapes
:
�

�
8__inference_simple_rnn_cell_15506_layer_call_fn_38359722

inputs
states_0
unknown:P
	unknown_0:P
	unknown_1:PP
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������P:���������P*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_simple_rnn_cell_15506_layer_call_and_return_conditional_losses_38358515o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������Pq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������P`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������:���������P: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������P
"
_user_specified_name
states/0
�L
�
L__inference_sequential_104_layer_call_and_return_conditional_losses_38359097

inputsU
Csimple_rnn_104_simple_rnn_cell_15506_matmul_readvariableop_resource:PR
Dsimple_rnn_104_simple_rnn_cell_15506_biasadd_readvariableop_resource:PW
Esimple_rnn_104_simple_rnn_cell_15506_matmul_1_readvariableop_resource:PP
identity��;simple_rnn_104/simple_rnn_cell_15506/BiasAdd/ReadVariableOp�:simple_rnn_104/simple_rnn_cell_15506/MatMul/ReadVariableOp�<simple_rnn_104/simple_rnn_cell_15506/MatMul_1/ReadVariableOp�simple_rnn_104/whileJ
simple_rnn_104/ShapeShapeinputs*
T0*
_output_shapes
:l
"simple_rnn_104/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_104/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_104/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_104/strided_sliceStridedSlicesimple_rnn_104/Shape:output:0+simple_rnn_104/strided_slice/stack:output:0-simple_rnn_104/strided_slice/stack_1:output:0-simple_rnn_104/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
simple_rnn_104/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :P�
simple_rnn_104/zeros/packedPack%simple_rnn_104/strided_slice:output:0&simple_rnn_104/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:_
simple_rnn_104/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
simple_rnn_104/zerosFill$simple_rnn_104/zeros/packed:output:0#simple_rnn_104/zeros/Const:output:0*
T0*'
_output_shapes
:���������Pr
simple_rnn_104/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_104/transpose	Transposeinputs&simple_rnn_104/transpose/perm:output:0*
T0*,
_output_shapes
:����������b
simple_rnn_104/Shape_1Shapesimple_rnn_104/transpose:y:0*
T0*
_output_shapes
:n
$simple_rnn_104/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&simple_rnn_104/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&simple_rnn_104/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_104/strided_slice_1StridedSlicesimple_rnn_104/Shape_1:output:0-simple_rnn_104/strided_slice_1/stack:output:0/simple_rnn_104/strided_slice_1/stack_1:output:0/simple_rnn_104/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
*simple_rnn_104/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
simple_rnn_104/TensorArrayV2TensorListReserve3simple_rnn_104/TensorArrayV2/element_shape:output:0'simple_rnn_104/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Dsimple_rnn_104/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
6simple_rnn_104/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_104/transpose:y:0Msimple_rnn_104/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���n
$simple_rnn_104/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&simple_rnn_104/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&simple_rnn_104/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_104/strided_slice_2StridedSlicesimple_rnn_104/transpose:y:0-simple_rnn_104/strided_slice_2/stack:output:0/simple_rnn_104/strided_slice_2/stack_1:output:0/simple_rnn_104/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
:simple_rnn_104/simple_rnn_cell_15506/MatMul/ReadVariableOpReadVariableOpCsimple_rnn_104_simple_rnn_cell_15506_matmul_readvariableop_resource*
_output_shapes

:P*
dtype0�
+simple_rnn_104/simple_rnn_cell_15506/MatMulMatMul'simple_rnn_104/strided_slice_2:output:0Bsimple_rnn_104/simple_rnn_cell_15506/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
;simple_rnn_104/simple_rnn_cell_15506/BiasAdd/ReadVariableOpReadVariableOpDsimple_rnn_104_simple_rnn_cell_15506_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0�
,simple_rnn_104/simple_rnn_cell_15506/BiasAddBiasAdd5simple_rnn_104/simple_rnn_cell_15506/MatMul:product:0Csimple_rnn_104/simple_rnn_cell_15506/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
<simple_rnn_104/simple_rnn_cell_15506/MatMul_1/ReadVariableOpReadVariableOpEsimple_rnn_104_simple_rnn_cell_15506_matmul_1_readvariableop_resource*
_output_shapes

:PP*
dtype0�
-simple_rnn_104/simple_rnn_cell_15506/MatMul_1MatMulsimple_rnn_104/zeros:output:0Dsimple_rnn_104/simple_rnn_cell_15506/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
(simple_rnn_104/simple_rnn_cell_15506/addAddV25simple_rnn_104/simple_rnn_cell_15506/BiasAdd:output:07simple_rnn_104/simple_rnn_cell_15506/MatMul_1:product:0*
T0*'
_output_shapes
:���������P�
)simple_rnn_104/simple_rnn_cell_15506/TanhTanh,simple_rnn_104/simple_rnn_cell_15506/add:z:0*
T0*'
_output_shapes
:���������P}
,simple_rnn_104/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����P   �
simple_rnn_104/TensorArrayV2_1TensorListReserve5simple_rnn_104/TensorArrayV2_1/element_shape:output:0'simple_rnn_104/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���U
simple_rnn_104/timeConst*
_output_shapes
: *
dtype0*
value	B : r
'simple_rnn_104/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������c
!simple_rnn_104/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
simple_rnn_104/whileWhile*simple_rnn_104/while/loop_counter:output:00simple_rnn_104/while/maximum_iterations:output:0simple_rnn_104/time:output:0'simple_rnn_104/TensorArrayV2_1:handle:0simple_rnn_104/zeros:output:0'simple_rnn_104/strided_slice_1:output:0Fsimple_rnn_104/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csimple_rnn_104_simple_rnn_cell_15506_matmul_readvariableop_resourceDsimple_rnn_104_simple_rnn_cell_15506_biasadd_readvariableop_resourceEsimple_rnn_104_simple_rnn_cell_15506_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������P: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *.
body&R$
"simple_rnn_104_while_body_38359031*.
cond&R$
"simple_rnn_104_while_cond_38359030*8
output_shapes'
%: : : : :���������P: : : : : *
parallel_iterations �
?simple_rnn_104/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����P   �
1simple_rnn_104/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_104/while:output:3Hsimple_rnn_104/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������P*
element_dtype0w
$simple_rnn_104/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������p
&simple_rnn_104/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: p
&simple_rnn_104/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_104/strided_slice_3StridedSlice:simple_rnn_104/TensorArrayV2Stack/TensorListStack:tensor:0-simple_rnn_104/strided_slice_3/stack:output:0/simple_rnn_104/strided_slice_3/stack_1:output:0/simple_rnn_104/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������P*
shrink_axis_maskt
simple_rnn_104/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_104/transpose_1	Transpose:simple_rnn_104/TensorArrayV2Stack/TensorListStack:tensor:0(simple_rnn_104/transpose_1/perm:output:0*
T0*,
_output_shapes
:����������Pv
IdentityIdentity'simple_rnn_104/strided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������P�
NoOpNoOp<^simple_rnn_104/simple_rnn_cell_15506/BiasAdd/ReadVariableOp;^simple_rnn_104/simple_rnn_cell_15506/MatMul/ReadVariableOp=^simple_rnn_104/simple_rnn_cell_15506/MatMul_1/ReadVariableOp^simple_rnn_104/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:����������: : : 2z
;simple_rnn_104/simple_rnn_cell_15506/BiasAdd/ReadVariableOp;simple_rnn_104/simple_rnn_cell_15506/BiasAdd/ReadVariableOp2x
:simple_rnn_104/simple_rnn_cell_15506/MatMul/ReadVariableOp:simple_rnn_104/simple_rnn_cell_15506/MatMul/ReadVariableOp2|
<simple_rnn_104/simple_rnn_cell_15506/MatMul_1/ReadVariableOp<simple_rnn_104/simple_rnn_cell_15506/MatMul_1/ReadVariableOp2,
simple_rnn_104/whilesimple_rnn_104/while:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
while_cond_38358407
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_38358407___redundant_placeholder06
2while_while_cond_38358407___redundant_placeholder16
2while_while_cond_38358407___redundant_placeholder26
2while_while_cond_38358407___redundant_placeholder3
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
-: : : : :���������P: ::::: 
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
:���������P:

_output_shapes
: :

_output_shapes
:
�>
�
L__inference_simple_rnn_104_layer_call_and_return_conditional_losses_38359478
inputs_0F
4simple_rnn_cell_15506_matmul_readvariableop_resource:PC
5simple_rnn_cell_15506_biasadd_readvariableop_resource:PH
6simple_rnn_cell_15506_matmul_1_readvariableop_resource:PP
identity��,simple_rnn_cell_15506/BiasAdd/ReadVariableOp�+simple_rnn_cell_15506/MatMul/ReadVariableOp�-simple_rnn_cell_15506/MatMul_1/ReadVariableOp�while=
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
valueB:�
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
value	B :Ps
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
:���������Pc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
+simple_rnn_cell_15506/MatMul/ReadVariableOpReadVariableOp4simple_rnn_cell_15506_matmul_readvariableop_resource*
_output_shapes

:P*
dtype0�
simple_rnn_cell_15506/MatMulMatMulstrided_slice_2:output:03simple_rnn_cell_15506/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
,simple_rnn_cell_15506/BiasAdd/ReadVariableOpReadVariableOp5simple_rnn_cell_15506_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0�
simple_rnn_cell_15506/BiasAddBiasAdd&simple_rnn_cell_15506/MatMul:product:04simple_rnn_cell_15506/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
-simple_rnn_cell_15506/MatMul_1/ReadVariableOpReadVariableOp6simple_rnn_cell_15506_matmul_1_readvariableop_resource*
_output_shapes

:PP*
dtype0�
simple_rnn_cell_15506/MatMul_1MatMulzeros:output:05simple_rnn_cell_15506/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
simple_rnn_cell_15506/addAddV2&simple_rnn_cell_15506/BiasAdd:output:0(simple_rnn_cell_15506/MatMul_1:product:0*
T0*'
_output_shapes
:���������Ps
simple_rnn_cell_15506/TanhTanhsimple_rnn_cell_15506/add:z:0*
T0*'
_output_shapes
:���������Pn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����P   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:04simple_rnn_cell_15506_matmul_readvariableop_resource5simple_rnn_cell_15506_biasadd_readvariableop_resource6simple_rnn_cell_15506_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������P: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_38359412*
condR
while_cond_38359411*8
output_shapes'
%: : : : :���������P: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����P   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������P*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������P*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������Pg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������P�
NoOpNoOp-^simple_rnn_cell_15506/BiasAdd/ReadVariableOp,^simple_rnn_cell_15506/MatMul/ReadVariableOp.^simple_rnn_cell_15506/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2\
,simple_rnn_cell_15506/BiasAdd/ReadVariableOp,simple_rnn_cell_15506/BiasAdd/ReadVariableOp2Z
+simple_rnn_cell_15506/MatMul/ReadVariableOp+simple_rnn_cell_15506/MatMul/ReadVariableOp2^
-simple_rnn_cell_15506/MatMul_1/ReadVariableOp-simple_rnn_cell_15506/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
S__inference_simple_rnn_cell_15506_layer_call_and_return_conditional_losses_38359739

inputs
states_00
matmul_readvariableop_resource:P-
biasadd_readvariableop_resource:P2
 matmul_1_readvariableop_resource:PP
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:P*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Pr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:P*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Px
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:PP*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Pd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:���������PG
TanhTanhadd:z:0*
T0*'
_output_shapes
:���������PW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������PY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������P�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������:���������P: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������P
"
_user_specified_name
states/0
�-
�
while_body_38359412
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0N
<while_simple_rnn_cell_15506_matmul_readvariableop_resource_0:PK
=while_simple_rnn_cell_15506_biasadd_readvariableop_resource_0:PP
>while_simple_rnn_cell_15506_matmul_1_readvariableop_resource_0:PP
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorL
:while_simple_rnn_cell_15506_matmul_readvariableop_resource:PI
;while_simple_rnn_cell_15506_biasadd_readvariableop_resource:PN
<while_simple_rnn_cell_15506_matmul_1_readvariableop_resource:PP��2while/simple_rnn_cell_15506/BiasAdd/ReadVariableOp�1while/simple_rnn_cell_15506/MatMul/ReadVariableOp�3while/simple_rnn_cell_15506/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
1while/simple_rnn_cell_15506/MatMul/ReadVariableOpReadVariableOp<while_simple_rnn_cell_15506_matmul_readvariableop_resource_0*
_output_shapes

:P*
dtype0�
"while/simple_rnn_cell_15506/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:09while/simple_rnn_cell_15506/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
2while/simple_rnn_cell_15506/BiasAdd/ReadVariableOpReadVariableOp=while_simple_rnn_cell_15506_biasadd_readvariableop_resource_0*
_output_shapes
:P*
dtype0�
#while/simple_rnn_cell_15506/BiasAddBiasAdd,while/simple_rnn_cell_15506/MatMul:product:0:while/simple_rnn_cell_15506/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
3while/simple_rnn_cell_15506/MatMul_1/ReadVariableOpReadVariableOp>while_simple_rnn_cell_15506_matmul_1_readvariableop_resource_0*
_output_shapes

:PP*
dtype0�
$while/simple_rnn_cell_15506/MatMul_1MatMulwhile_placeholder_2;while/simple_rnn_cell_15506/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
while/simple_rnn_cell_15506/addAddV2,while/simple_rnn_cell_15506/BiasAdd:output:0.while/simple_rnn_cell_15506/MatMul_1:product:0*
T0*'
_output_shapes
:���������P
 while/simple_rnn_cell_15506/TanhTanh#while/simple_rnn_cell_15506/add:z:0*
T0*'
_output_shapes
:���������P�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder$while/simple_rnn_cell_15506/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :����
while/Identity_4Identity$while/simple_rnn_cell_15506/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:���������P�

while/NoOpNoOp3^while/simple_rnn_cell_15506/BiasAdd/ReadVariableOp2^while/simple_rnn_cell_15506/MatMul/ReadVariableOp4^while/simple_rnn_cell_15506/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"|
;while_simple_rnn_cell_15506_biasadd_readvariableop_resource=while_simple_rnn_cell_15506_biasadd_readvariableop_resource_0"~
<while_simple_rnn_cell_15506_matmul_1_readvariableop_resource>while_simple_rnn_cell_15506_matmul_1_readvariableop_resource_0"z
:while_simple_rnn_cell_15506_matmul_readvariableop_resource<while_simple_rnn_cell_15506_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������P: : : : : 2h
2while/simple_rnn_cell_15506/BiasAdd/ReadVariableOp2while/simple_rnn_cell_15506/BiasAdd/ReadVariableOp2f
1while/simple_rnn_cell_15506/MatMul/ReadVariableOp1while/simple_rnn_cell_15506/MatMul/ReadVariableOp2j
3while/simple_rnn_cell_15506/MatMul_1/ReadVariableOp3while/simple_rnn_cell_15506/MatMul_1/ReadVariableOp: 
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
:���������P:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_38358566
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_38358566___redundant_placeholder06
2while_while_cond_38358566___redundant_placeholder16
2while_while_cond_38358566___redundant_placeholder26
2while_while_cond_38358566___redundant_placeholder3
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
-: : : : :���������P: ::::: 
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
:���������P:

_output_shapes
: :

_output_shapes
:
�
�
$__inference__traced_restore_38359807
file_prefixN
<assignvariableop_simple_rnn_104_simple_rnn_cell_15506_kernel:PZ
Hassignvariableop_1_simple_rnn_104_simple_rnn_cell_15506_recurrent_kernel:PPJ
<assignvariableop_2_simple_rnn_104_simple_rnn_cell_15506_bias:P

identity_4��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_2�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHx
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*$
_output_shapes
::::*
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp<assignvariableop_simple_rnn_104_simple_rnn_cell_15506_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpHassignvariableop_1_simple_rnn_104_simple_rnn_cell_15506_recurrent_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp<assignvariableop_2_simple_rnn_104_simple_rnn_cell_15506_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �

Identity_3Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^NoOp"/device:CPU:0*
T0*
_output_shapes
: U

Identity_4IdentityIdentity_3:output:0^NoOp_1*
T0*
_output_shapes
: �
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
�4
�
L__inference_simple_rnn_104_layer_call_and_return_conditional_losses_38358630

inputs0
simple_rnn_cell_15506_38358555:P,
simple_rnn_cell_15506_38358557:P0
simple_rnn_cell_15506_38358559:PP
identity��-simple_rnn_cell_15506/StatefulPartitionedCall�while;
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
valueB:�
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
value	B :Ps
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
:���������Pc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������D
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
-simple_rnn_cell_15506/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_15506_38358555simple_rnn_cell_15506_38358557simple_rnn_cell_15506_38358559*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������P:���������P*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_simple_rnn_cell_15506_layer_call_and_return_conditional_losses_38358515n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����P   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_15506_38358555simple_rnn_cell_15506_38358557simple_rnn_cell_15506_38358559*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������P: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_38358567*
condR
while_cond_38358566*8
output_shapes'
%: : : : :���������P: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����P   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������P*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������P*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������Pg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������P~
NoOpNoOp.^simple_rnn_cell_15506/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2^
-simple_rnn_cell_15506/StatefulPartitionedCall-simple_rnn_cell_15506/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�-
�
while_body_38359304
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0N
<while_simple_rnn_cell_15506_matmul_readvariableop_resource_0:PK
=while_simple_rnn_cell_15506_biasadd_readvariableop_resource_0:PP
>while_simple_rnn_cell_15506_matmul_1_readvariableop_resource_0:PP
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorL
:while_simple_rnn_cell_15506_matmul_readvariableop_resource:PI
;while_simple_rnn_cell_15506_biasadd_readvariableop_resource:PN
<while_simple_rnn_cell_15506_matmul_1_readvariableop_resource:PP��2while/simple_rnn_cell_15506/BiasAdd/ReadVariableOp�1while/simple_rnn_cell_15506/MatMul/ReadVariableOp�3while/simple_rnn_cell_15506/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
1while/simple_rnn_cell_15506/MatMul/ReadVariableOpReadVariableOp<while_simple_rnn_cell_15506_matmul_readvariableop_resource_0*
_output_shapes

:P*
dtype0�
"while/simple_rnn_cell_15506/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:09while/simple_rnn_cell_15506/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
2while/simple_rnn_cell_15506/BiasAdd/ReadVariableOpReadVariableOp=while_simple_rnn_cell_15506_biasadd_readvariableop_resource_0*
_output_shapes
:P*
dtype0�
#while/simple_rnn_cell_15506/BiasAddBiasAdd,while/simple_rnn_cell_15506/MatMul:product:0:while/simple_rnn_cell_15506/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
3while/simple_rnn_cell_15506/MatMul_1/ReadVariableOpReadVariableOp>while_simple_rnn_cell_15506_matmul_1_readvariableop_resource_0*
_output_shapes

:PP*
dtype0�
$while/simple_rnn_cell_15506/MatMul_1MatMulwhile_placeholder_2;while/simple_rnn_cell_15506/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
while/simple_rnn_cell_15506/addAddV2,while/simple_rnn_cell_15506/BiasAdd:output:0.while/simple_rnn_cell_15506/MatMul_1:product:0*
T0*'
_output_shapes
:���������P
 while/simple_rnn_cell_15506/TanhTanh#while/simple_rnn_cell_15506/add:z:0*
T0*'
_output_shapes
:���������P�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder$while/simple_rnn_cell_15506/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :����
while/Identity_4Identity$while/simple_rnn_cell_15506/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:���������P�

while/NoOpNoOp3^while/simple_rnn_cell_15506/BiasAdd/ReadVariableOp2^while/simple_rnn_cell_15506/MatMul/ReadVariableOp4^while/simple_rnn_cell_15506/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"|
;while_simple_rnn_cell_15506_biasadd_readvariableop_resource=while_simple_rnn_cell_15506_biasadd_readvariableop_resource_0"~
<while_simple_rnn_cell_15506_matmul_1_readvariableop_resource>while_simple_rnn_cell_15506_matmul_1_readvariableop_resource_0"z
:while_simple_rnn_cell_15506_matmul_readvariableop_resource<while_simple_rnn_cell_15506_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������P: : : : : 2h
2while/simple_rnn_cell_15506/BiasAdd/ReadVariableOp2while/simple_rnn_cell_15506/BiasAdd/ReadVariableOp2f
1while/simple_rnn_cell_15506/MatMul/ReadVariableOp1while/simple_rnn_cell_15506/MatMul/ReadVariableOp2j
3while/simple_rnn_cell_15506/MatMul_1/ReadVariableOp3while/simple_rnn_cell_15506/MatMul_1/ReadVariableOp: 
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
:���������P:

_output_shapes
: :

_output_shapes
: 
�
�
1__inference_simple_rnn_104_layer_call_fn_38359262

inputs
unknown:P
	unknown_0:P
	unknown_1:PP
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������P*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_simple_rnn_104_layer_call_and_return_conditional_losses_38358892o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������P`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:����������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
1sequential_104_simple_rnn_104_while_cond_38358280X
Tsequential_104_simple_rnn_104_while_sequential_104_simple_rnn_104_while_loop_counter^
Zsequential_104_simple_rnn_104_while_sequential_104_simple_rnn_104_while_maximum_iterations3
/sequential_104_simple_rnn_104_while_placeholder5
1sequential_104_simple_rnn_104_while_placeholder_15
1sequential_104_simple_rnn_104_while_placeholder_2Z
Vsequential_104_simple_rnn_104_while_less_sequential_104_simple_rnn_104_strided_slice_1r
nsequential_104_simple_rnn_104_while_sequential_104_simple_rnn_104_while_cond_38358280___redundant_placeholder0r
nsequential_104_simple_rnn_104_while_sequential_104_simple_rnn_104_while_cond_38358280___redundant_placeholder1r
nsequential_104_simple_rnn_104_while_sequential_104_simple_rnn_104_while_cond_38358280___redundant_placeholder2r
nsequential_104_simple_rnn_104_while_sequential_104_simple_rnn_104_while_cond_38358280___redundant_placeholder30
,sequential_104_simple_rnn_104_while_identity
�
(sequential_104/simple_rnn_104/while/LessLess/sequential_104_simple_rnn_104_while_placeholderVsequential_104_simple_rnn_104_while_less_sequential_104_simple_rnn_104_strided_slice_1*
T0*
_output_shapes
: �
,sequential_104/simple_rnn_104/while/IdentityIdentity,sequential_104/simple_rnn_104/while/Less:z:0*
T0
*
_output_shapes
: "e
,sequential_104_simple_rnn_104_while_identity5sequential_104/simple_rnn_104/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������P: ::::: 
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
:���������P:

_output_shapes
: :

_output_shapes
:
�
�
1__inference_sequential_104_layer_call_fn_38358978

inputs
unknown:P
	unknown_0:P
	unknown_1:PP
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������P*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_sequential_104_layer_call_and_return_conditional_losses_38358762o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������P`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:����������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
1__inference_simple_rnn_104_layer_call_fn_38359251

inputs
unknown:P
	unknown_0:P
	unknown_1:PP
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������P*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_simple_rnn_104_layer_call_and_return_conditional_losses_38358753o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������P`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:����������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�>
�
L__inference_simple_rnn_104_layer_call_and_return_conditional_losses_38359694

inputsF
4simple_rnn_cell_15506_matmul_readvariableop_resource:PC
5simple_rnn_cell_15506_biasadd_readvariableop_resource:PH
6simple_rnn_cell_15506_matmul_1_readvariableop_resource:PP
identity��,simple_rnn_cell_15506/BiasAdd/ReadVariableOp�+simple_rnn_cell_15506/MatMul/ReadVariableOp�-simple_rnn_cell_15506/MatMul_1/ReadVariableOp�while;
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
valueB:�
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
value	B :Ps
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
:���������Pc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:����������D
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
+simple_rnn_cell_15506/MatMul/ReadVariableOpReadVariableOp4simple_rnn_cell_15506_matmul_readvariableop_resource*
_output_shapes

:P*
dtype0�
simple_rnn_cell_15506/MatMulMatMulstrided_slice_2:output:03simple_rnn_cell_15506/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
,simple_rnn_cell_15506/BiasAdd/ReadVariableOpReadVariableOp5simple_rnn_cell_15506_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0�
simple_rnn_cell_15506/BiasAddBiasAdd&simple_rnn_cell_15506/MatMul:product:04simple_rnn_cell_15506/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
-simple_rnn_cell_15506/MatMul_1/ReadVariableOpReadVariableOp6simple_rnn_cell_15506_matmul_1_readvariableop_resource*
_output_shapes

:PP*
dtype0�
simple_rnn_cell_15506/MatMul_1MatMulzeros:output:05simple_rnn_cell_15506/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
simple_rnn_cell_15506/addAddV2&simple_rnn_cell_15506/BiasAdd:output:0(simple_rnn_cell_15506/MatMul_1:product:0*
T0*'
_output_shapes
:���������Ps
simple_rnn_cell_15506/TanhTanhsimple_rnn_cell_15506/add:z:0*
T0*'
_output_shapes
:���������Pn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����P   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:04simple_rnn_cell_15506_matmul_readvariableop_resource5simple_rnn_cell_15506_biasadd_readvariableop_resource6simple_rnn_cell_15506_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������P: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_38359628*
condR
while_cond_38359627*8
output_shapes'
%: : : : :���������P: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����P   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������P*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������P*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:����������Pg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������P�
NoOpNoOp-^simple_rnn_cell_15506/BiasAdd/ReadVariableOp,^simple_rnn_cell_15506/MatMul/ReadVariableOp.^simple_rnn_cell_15506/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:����������: : : 2\
,simple_rnn_cell_15506/BiasAdd/ReadVariableOp,simple_rnn_cell_15506/BiasAdd/ReadVariableOp2Z
+simple_rnn_cell_15506/MatMul/ReadVariableOp+simple_rnn_cell_15506/MatMul/ReadVariableOp2^
-simple_rnn_cell_15506/MatMul_1/ReadVariableOp-simple_rnn_cell_15506/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�-
�
while_body_38359628
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0N
<while_simple_rnn_cell_15506_matmul_readvariableop_resource_0:PK
=while_simple_rnn_cell_15506_biasadd_readvariableop_resource_0:PP
>while_simple_rnn_cell_15506_matmul_1_readvariableop_resource_0:PP
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorL
:while_simple_rnn_cell_15506_matmul_readvariableop_resource:PI
;while_simple_rnn_cell_15506_biasadd_readvariableop_resource:PN
<while_simple_rnn_cell_15506_matmul_1_readvariableop_resource:PP��2while/simple_rnn_cell_15506/BiasAdd/ReadVariableOp�1while/simple_rnn_cell_15506/MatMul/ReadVariableOp�3while/simple_rnn_cell_15506/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
1while/simple_rnn_cell_15506/MatMul/ReadVariableOpReadVariableOp<while_simple_rnn_cell_15506_matmul_readvariableop_resource_0*
_output_shapes

:P*
dtype0�
"while/simple_rnn_cell_15506/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:09while/simple_rnn_cell_15506/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
2while/simple_rnn_cell_15506/BiasAdd/ReadVariableOpReadVariableOp=while_simple_rnn_cell_15506_biasadd_readvariableop_resource_0*
_output_shapes
:P*
dtype0�
#while/simple_rnn_cell_15506/BiasAddBiasAdd,while/simple_rnn_cell_15506/MatMul:product:0:while/simple_rnn_cell_15506/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
3while/simple_rnn_cell_15506/MatMul_1/ReadVariableOpReadVariableOp>while_simple_rnn_cell_15506_matmul_1_readvariableop_resource_0*
_output_shapes

:PP*
dtype0�
$while/simple_rnn_cell_15506/MatMul_1MatMulwhile_placeholder_2;while/simple_rnn_cell_15506/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
while/simple_rnn_cell_15506/addAddV2,while/simple_rnn_cell_15506/BiasAdd:output:0.while/simple_rnn_cell_15506/MatMul_1:product:0*
T0*'
_output_shapes
:���������P
 while/simple_rnn_cell_15506/TanhTanh#while/simple_rnn_cell_15506/add:z:0*
T0*'
_output_shapes
:���������P�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder$while/simple_rnn_cell_15506/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :����
while/Identity_4Identity$while/simple_rnn_cell_15506/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:���������P�

while/NoOpNoOp3^while/simple_rnn_cell_15506/BiasAdd/ReadVariableOp2^while/simple_rnn_cell_15506/MatMul/ReadVariableOp4^while/simple_rnn_cell_15506/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"|
;while_simple_rnn_cell_15506_biasadd_readvariableop_resource=while_simple_rnn_cell_15506_biasadd_readvariableop_resource_0"~
<while_simple_rnn_cell_15506_matmul_1_readvariableop_resource>while_simple_rnn_cell_15506_matmul_1_readvariableop_resource_0"z
:while_simple_rnn_cell_15506_matmul_readvariableop_resource<while_simple_rnn_cell_15506_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������P: : : : : 2h
2while/simple_rnn_cell_15506/BiasAdd/ReadVariableOp2while/simple_rnn_cell_15506/BiasAdd/ReadVariableOp2f
1while/simple_rnn_cell_15506/MatMul/ReadVariableOp1while/simple_rnn_cell_15506/MatMul/ReadVariableOp2j
3while/simple_rnn_cell_15506/MatMul_1/ReadVariableOp3while/simple_rnn_cell_15506/MatMul_1/ReadVariableOp: 
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
:���������P:

_output_shapes
: :

_output_shapes
: 
�	
�
L__inference_sequential_104_layer_call_and_return_conditional_losses_38358956
simple_rnn_104_input)
simple_rnn_104_38358948:P%
simple_rnn_104_38358950:P)
simple_rnn_104_38358952:PP
identity��&simple_rnn_104/StatefulPartitionedCall�
&simple_rnn_104/StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_104_inputsimple_rnn_104_38358948simple_rnn_104_38358950simple_rnn_104_38358952*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������P*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_simple_rnn_104_layer_call_and_return_conditional_losses_38358753~
IdentityIdentity/simple_rnn_104/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������Po
NoOpNoOp'^simple_rnn_104/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:����������: : : 2P
&simple_rnn_104/StatefulPartitionedCall&simple_rnn_104/StatefulPartitionedCall:b ^
,
_output_shapes
:����������
.
_user_specified_namesimple_rnn_104_input
�
�
while_cond_38359411
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_38359411___redundant_placeholder06
2while_while_cond_38359411___redundant_placeholder16
2while_while_cond_38359411___redundant_placeholder26
2while_while_cond_38359411___redundant_placeholder3
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
-: : : : :���������P: ::::: 
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
:���������P:

_output_shapes
: :

_output_shapes
:
�
�
1__inference_sequential_104_layer_call_fn_38358771
simple_rnn_104_input
unknown:P
	unknown_0:P
	unknown_1:PP
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_104_inputunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������P*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_sequential_104_layer_call_and_return_conditional_losses_38358762o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������P`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:����������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
,
_output_shapes
:����������
.
_user_specified_namesimple_rnn_104_input
�
�
1__inference_sequential_104_layer_call_fn_38358989

inputs
unknown:P
	unknown_0:P
	unknown_1:PP
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������P*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_sequential_104_layer_call_and_return_conditional_losses_38358925o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������P`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:����������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�;
�
"simple_rnn_104_while_body_38359031:
6simple_rnn_104_while_simple_rnn_104_while_loop_counter@
<simple_rnn_104_while_simple_rnn_104_while_maximum_iterations$
 simple_rnn_104_while_placeholder&
"simple_rnn_104_while_placeholder_1&
"simple_rnn_104_while_placeholder_29
5simple_rnn_104_while_simple_rnn_104_strided_slice_1_0u
qsimple_rnn_104_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_104_tensorarrayunstack_tensorlistfromtensor_0]
Ksimple_rnn_104_while_simple_rnn_cell_15506_matmul_readvariableop_resource_0:PZ
Lsimple_rnn_104_while_simple_rnn_cell_15506_biasadd_readvariableop_resource_0:P_
Msimple_rnn_104_while_simple_rnn_cell_15506_matmul_1_readvariableop_resource_0:PP!
simple_rnn_104_while_identity#
simple_rnn_104_while_identity_1#
simple_rnn_104_while_identity_2#
simple_rnn_104_while_identity_3#
simple_rnn_104_while_identity_47
3simple_rnn_104_while_simple_rnn_104_strided_slice_1s
osimple_rnn_104_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_104_tensorarrayunstack_tensorlistfromtensor[
Isimple_rnn_104_while_simple_rnn_cell_15506_matmul_readvariableop_resource:PX
Jsimple_rnn_104_while_simple_rnn_cell_15506_biasadd_readvariableop_resource:P]
Ksimple_rnn_104_while_simple_rnn_cell_15506_matmul_1_readvariableop_resource:PP��Asimple_rnn_104/while/simple_rnn_cell_15506/BiasAdd/ReadVariableOp�@simple_rnn_104/while/simple_rnn_cell_15506/MatMul/ReadVariableOp�Bsimple_rnn_104/while/simple_rnn_cell_15506/MatMul_1/ReadVariableOp�
Fsimple_rnn_104/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
8simple_rnn_104/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemqsimple_rnn_104_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_104_tensorarrayunstack_tensorlistfromtensor_0 simple_rnn_104_while_placeholderOsimple_rnn_104/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
@simple_rnn_104/while/simple_rnn_cell_15506/MatMul/ReadVariableOpReadVariableOpKsimple_rnn_104_while_simple_rnn_cell_15506_matmul_readvariableop_resource_0*
_output_shapes

:P*
dtype0�
1simple_rnn_104/while/simple_rnn_cell_15506/MatMulMatMul?simple_rnn_104/while/TensorArrayV2Read/TensorListGetItem:item:0Hsimple_rnn_104/while/simple_rnn_cell_15506/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
Asimple_rnn_104/while/simple_rnn_cell_15506/BiasAdd/ReadVariableOpReadVariableOpLsimple_rnn_104_while_simple_rnn_cell_15506_biasadd_readvariableop_resource_0*
_output_shapes
:P*
dtype0�
2simple_rnn_104/while/simple_rnn_cell_15506/BiasAddBiasAdd;simple_rnn_104/while/simple_rnn_cell_15506/MatMul:product:0Isimple_rnn_104/while/simple_rnn_cell_15506/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
Bsimple_rnn_104/while/simple_rnn_cell_15506/MatMul_1/ReadVariableOpReadVariableOpMsimple_rnn_104_while_simple_rnn_cell_15506_matmul_1_readvariableop_resource_0*
_output_shapes

:PP*
dtype0�
3simple_rnn_104/while/simple_rnn_cell_15506/MatMul_1MatMul"simple_rnn_104_while_placeholder_2Jsimple_rnn_104/while/simple_rnn_cell_15506/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
.simple_rnn_104/while/simple_rnn_cell_15506/addAddV2;simple_rnn_104/while/simple_rnn_cell_15506/BiasAdd:output:0=simple_rnn_104/while/simple_rnn_cell_15506/MatMul_1:product:0*
T0*'
_output_shapes
:���������P�
/simple_rnn_104/while/simple_rnn_cell_15506/TanhTanh2simple_rnn_104/while/simple_rnn_cell_15506/add:z:0*
T0*'
_output_shapes
:���������P�
9simple_rnn_104/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem"simple_rnn_104_while_placeholder_1 simple_rnn_104_while_placeholder3simple_rnn_104/while/simple_rnn_cell_15506/Tanh:y:0*
_output_shapes
: *
element_dtype0:���\
simple_rnn_104/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_104/while/addAddV2 simple_rnn_104_while_placeholder#simple_rnn_104/while/add/y:output:0*
T0*
_output_shapes
: ^
simple_rnn_104/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_104/while/add_1AddV26simple_rnn_104_while_simple_rnn_104_while_loop_counter%simple_rnn_104/while/add_1/y:output:0*
T0*
_output_shapes
: �
simple_rnn_104/while/IdentityIdentitysimple_rnn_104/while/add_1:z:0^simple_rnn_104/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_104/while/Identity_1Identity<simple_rnn_104_while_simple_rnn_104_while_maximum_iterations^simple_rnn_104/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_104/while/Identity_2Identitysimple_rnn_104/while/add:z:0^simple_rnn_104/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_104/while/Identity_3IdentityIsimple_rnn_104/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_104/while/NoOp*
T0*
_output_shapes
: :����
simple_rnn_104/while/Identity_4Identity3simple_rnn_104/while/simple_rnn_cell_15506/Tanh:y:0^simple_rnn_104/while/NoOp*
T0*'
_output_shapes
:���������P�
simple_rnn_104/while/NoOpNoOpB^simple_rnn_104/while/simple_rnn_cell_15506/BiasAdd/ReadVariableOpA^simple_rnn_104/while/simple_rnn_cell_15506/MatMul/ReadVariableOpC^simple_rnn_104/while/simple_rnn_cell_15506/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "G
simple_rnn_104_while_identity&simple_rnn_104/while/Identity:output:0"K
simple_rnn_104_while_identity_1(simple_rnn_104/while/Identity_1:output:0"K
simple_rnn_104_while_identity_2(simple_rnn_104/while/Identity_2:output:0"K
simple_rnn_104_while_identity_3(simple_rnn_104/while/Identity_3:output:0"K
simple_rnn_104_while_identity_4(simple_rnn_104/while/Identity_4:output:0"l
3simple_rnn_104_while_simple_rnn_104_strided_slice_15simple_rnn_104_while_simple_rnn_104_strided_slice_1_0"�
Jsimple_rnn_104_while_simple_rnn_cell_15506_biasadd_readvariableop_resourceLsimple_rnn_104_while_simple_rnn_cell_15506_biasadd_readvariableop_resource_0"�
Ksimple_rnn_104_while_simple_rnn_cell_15506_matmul_1_readvariableop_resourceMsimple_rnn_104_while_simple_rnn_cell_15506_matmul_1_readvariableop_resource_0"�
Isimple_rnn_104_while_simple_rnn_cell_15506_matmul_readvariableop_resourceKsimple_rnn_104_while_simple_rnn_cell_15506_matmul_readvariableop_resource_0"�
osimple_rnn_104_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_104_tensorarrayunstack_tensorlistfromtensorqsimple_rnn_104_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_104_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������P: : : : : 2�
Asimple_rnn_104/while/simple_rnn_cell_15506/BiasAdd/ReadVariableOpAsimple_rnn_104/while/simple_rnn_cell_15506/BiasAdd/ReadVariableOp2�
@simple_rnn_104/while/simple_rnn_cell_15506/MatMul/ReadVariableOp@simple_rnn_104/while/simple_rnn_cell_15506/MatMul/ReadVariableOp2�
Bsimple_rnn_104/while/simple_rnn_cell_15506/MatMul_1/ReadVariableOpBsimple_rnn_104/while/simple_rnn_cell_15506/MatMul_1/ReadVariableOp: 
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
:���������P:

_output_shapes
: :

_output_shapes
: 
�	
�
L__inference_sequential_104_layer_call_and_return_conditional_losses_38358967
simple_rnn_104_input)
simple_rnn_104_38358959:P%
simple_rnn_104_38358961:P)
simple_rnn_104_38358963:PP
identity��&simple_rnn_104/StatefulPartitionedCall�
&simple_rnn_104/StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_104_inputsimple_rnn_104_38358959simple_rnn_104_38358961simple_rnn_104_38358963*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������P*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_simple_rnn_104_layer_call_and_return_conditional_losses_38358892~
IdentityIdentity/simple_rnn_104/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������Po
NoOpNoOp'^simple_rnn_104/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:����������: : : 2P
&simple_rnn_104/StatefulPartitionedCall&simple_rnn_104/StatefulPartitionedCall:b ^
,
_output_shapes
:����������
.
_user_specified_namesimple_rnn_104_input
�
�
1__inference_sequential_104_layer_call_fn_38358945
simple_rnn_104_input
unknown:P
	unknown_0:P
	unknown_1:PP
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_104_inputunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������P*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_sequential_104_layer_call_and_return_conditional_losses_38358925o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������P`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:����������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:b ^
,
_output_shapes
:����������
.
_user_specified_namesimple_rnn_104_input
�L
�
L__inference_sequential_104_layer_call_and_return_conditional_losses_38359205

inputsU
Csimple_rnn_104_simple_rnn_cell_15506_matmul_readvariableop_resource:PR
Dsimple_rnn_104_simple_rnn_cell_15506_biasadd_readvariableop_resource:PW
Esimple_rnn_104_simple_rnn_cell_15506_matmul_1_readvariableop_resource:PP
identity��;simple_rnn_104/simple_rnn_cell_15506/BiasAdd/ReadVariableOp�:simple_rnn_104/simple_rnn_cell_15506/MatMul/ReadVariableOp�<simple_rnn_104/simple_rnn_cell_15506/MatMul_1/ReadVariableOp�simple_rnn_104/whileJ
simple_rnn_104/ShapeShapeinputs*
T0*
_output_shapes
:l
"simple_rnn_104/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_104/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_104/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_104/strided_sliceStridedSlicesimple_rnn_104/Shape:output:0+simple_rnn_104/strided_slice/stack:output:0-simple_rnn_104/strided_slice/stack_1:output:0-simple_rnn_104/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
simple_rnn_104/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :P�
simple_rnn_104/zeros/packedPack%simple_rnn_104/strided_slice:output:0&simple_rnn_104/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:_
simple_rnn_104/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
simple_rnn_104/zerosFill$simple_rnn_104/zeros/packed:output:0#simple_rnn_104/zeros/Const:output:0*
T0*'
_output_shapes
:���������Pr
simple_rnn_104/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_104/transpose	Transposeinputs&simple_rnn_104/transpose/perm:output:0*
T0*,
_output_shapes
:����������b
simple_rnn_104/Shape_1Shapesimple_rnn_104/transpose:y:0*
T0*
_output_shapes
:n
$simple_rnn_104/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&simple_rnn_104/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&simple_rnn_104/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_104/strided_slice_1StridedSlicesimple_rnn_104/Shape_1:output:0-simple_rnn_104/strided_slice_1/stack:output:0/simple_rnn_104/strided_slice_1/stack_1:output:0/simple_rnn_104/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
*simple_rnn_104/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
simple_rnn_104/TensorArrayV2TensorListReserve3simple_rnn_104/TensorArrayV2/element_shape:output:0'simple_rnn_104/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Dsimple_rnn_104/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
6simple_rnn_104/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_104/transpose:y:0Msimple_rnn_104/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���n
$simple_rnn_104/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&simple_rnn_104/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&simple_rnn_104/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_104/strided_slice_2StridedSlicesimple_rnn_104/transpose:y:0-simple_rnn_104/strided_slice_2/stack:output:0/simple_rnn_104/strided_slice_2/stack_1:output:0/simple_rnn_104/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
:simple_rnn_104/simple_rnn_cell_15506/MatMul/ReadVariableOpReadVariableOpCsimple_rnn_104_simple_rnn_cell_15506_matmul_readvariableop_resource*
_output_shapes

:P*
dtype0�
+simple_rnn_104/simple_rnn_cell_15506/MatMulMatMul'simple_rnn_104/strided_slice_2:output:0Bsimple_rnn_104/simple_rnn_cell_15506/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
;simple_rnn_104/simple_rnn_cell_15506/BiasAdd/ReadVariableOpReadVariableOpDsimple_rnn_104_simple_rnn_cell_15506_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0�
,simple_rnn_104/simple_rnn_cell_15506/BiasAddBiasAdd5simple_rnn_104/simple_rnn_cell_15506/MatMul:product:0Csimple_rnn_104/simple_rnn_cell_15506/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
<simple_rnn_104/simple_rnn_cell_15506/MatMul_1/ReadVariableOpReadVariableOpEsimple_rnn_104_simple_rnn_cell_15506_matmul_1_readvariableop_resource*
_output_shapes

:PP*
dtype0�
-simple_rnn_104/simple_rnn_cell_15506/MatMul_1MatMulsimple_rnn_104/zeros:output:0Dsimple_rnn_104/simple_rnn_cell_15506/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
(simple_rnn_104/simple_rnn_cell_15506/addAddV25simple_rnn_104/simple_rnn_cell_15506/BiasAdd:output:07simple_rnn_104/simple_rnn_cell_15506/MatMul_1:product:0*
T0*'
_output_shapes
:���������P�
)simple_rnn_104/simple_rnn_cell_15506/TanhTanh,simple_rnn_104/simple_rnn_cell_15506/add:z:0*
T0*'
_output_shapes
:���������P}
,simple_rnn_104/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����P   �
simple_rnn_104/TensorArrayV2_1TensorListReserve5simple_rnn_104/TensorArrayV2_1/element_shape:output:0'simple_rnn_104/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���U
simple_rnn_104/timeConst*
_output_shapes
: *
dtype0*
value	B : r
'simple_rnn_104/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������c
!simple_rnn_104/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
simple_rnn_104/whileWhile*simple_rnn_104/while/loop_counter:output:00simple_rnn_104/while/maximum_iterations:output:0simple_rnn_104/time:output:0'simple_rnn_104/TensorArrayV2_1:handle:0simple_rnn_104/zeros:output:0'simple_rnn_104/strided_slice_1:output:0Fsimple_rnn_104/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csimple_rnn_104_simple_rnn_cell_15506_matmul_readvariableop_resourceDsimple_rnn_104_simple_rnn_cell_15506_biasadd_readvariableop_resourceEsimple_rnn_104_simple_rnn_cell_15506_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������P: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *.
body&R$
"simple_rnn_104_while_body_38359139*.
cond&R$
"simple_rnn_104_while_cond_38359138*8
output_shapes'
%: : : : :���������P: : : : : *
parallel_iterations �
?simple_rnn_104/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����P   �
1simple_rnn_104/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_104/while:output:3Hsimple_rnn_104/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������P*
element_dtype0w
$simple_rnn_104/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������p
&simple_rnn_104/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: p
&simple_rnn_104/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_104/strided_slice_3StridedSlice:simple_rnn_104/TensorArrayV2Stack/TensorListStack:tensor:0-simple_rnn_104/strided_slice_3/stack:output:0/simple_rnn_104/strided_slice_3/stack_1:output:0/simple_rnn_104/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������P*
shrink_axis_maskt
simple_rnn_104/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_104/transpose_1	Transpose:simple_rnn_104/TensorArrayV2Stack/TensorListStack:tensor:0(simple_rnn_104/transpose_1/perm:output:0*
T0*,
_output_shapes
:����������Pv
IdentityIdentity'simple_rnn_104/strided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������P�
NoOpNoOp<^simple_rnn_104/simple_rnn_cell_15506/BiasAdd/ReadVariableOp;^simple_rnn_104/simple_rnn_cell_15506/MatMul/ReadVariableOp=^simple_rnn_104/simple_rnn_cell_15506/MatMul_1/ReadVariableOp^simple_rnn_104/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:����������: : : 2z
;simple_rnn_104/simple_rnn_cell_15506/BiasAdd/ReadVariableOp;simple_rnn_104/simple_rnn_cell_15506/BiasAdd/ReadVariableOp2x
:simple_rnn_104/simple_rnn_cell_15506/MatMul/ReadVariableOp:simple_rnn_104/simple_rnn_cell_15506/MatMul/ReadVariableOp2|
<simple_rnn_104/simple_rnn_cell_15506/MatMul_1/ReadVariableOp<simple_rnn_104/simple_rnn_cell_15506/MatMul_1/ReadVariableOp2,
simple_rnn_104/whilesimple_rnn_104/while:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
!__inference__traced_save_38359788
file_prefixJ
Fsavev2_simple_rnn_104_simple_rnn_cell_15506_kernel_read_readvariableopT
Psavev2_simple_rnn_104_simple_rnn_cell_15506_recurrent_kernel_read_readvariableopH
Dsavev2_simple_rnn_104_simple_rnn_cell_15506_bias_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHu
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Fsavev2_simple_rnn_104_simple_rnn_cell_15506_kernel_read_readvariableopPsavev2_simple_rnn_104_simple_rnn_cell_15506_recurrent_kernel_read_readvariableopDsavev2_simple_rnn_104_simple_rnn_cell_15506_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
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
: :P:PP:P: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:P:$ 

_output_shapes

:PP: 

_output_shapes
:P:

_output_shapes
: 
�-
�
while_body_38358826
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0N
<while_simple_rnn_cell_15506_matmul_readvariableop_resource_0:PK
=while_simple_rnn_cell_15506_biasadd_readvariableop_resource_0:PP
>while_simple_rnn_cell_15506_matmul_1_readvariableop_resource_0:PP
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorL
:while_simple_rnn_cell_15506_matmul_readvariableop_resource:PI
;while_simple_rnn_cell_15506_biasadd_readvariableop_resource:PN
<while_simple_rnn_cell_15506_matmul_1_readvariableop_resource:PP��2while/simple_rnn_cell_15506/BiasAdd/ReadVariableOp�1while/simple_rnn_cell_15506/MatMul/ReadVariableOp�3while/simple_rnn_cell_15506/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
1while/simple_rnn_cell_15506/MatMul/ReadVariableOpReadVariableOp<while_simple_rnn_cell_15506_matmul_readvariableop_resource_0*
_output_shapes

:P*
dtype0�
"while/simple_rnn_cell_15506/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:09while/simple_rnn_cell_15506/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
2while/simple_rnn_cell_15506/BiasAdd/ReadVariableOpReadVariableOp=while_simple_rnn_cell_15506_biasadd_readvariableop_resource_0*
_output_shapes
:P*
dtype0�
#while/simple_rnn_cell_15506/BiasAddBiasAdd,while/simple_rnn_cell_15506/MatMul:product:0:while/simple_rnn_cell_15506/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
3while/simple_rnn_cell_15506/MatMul_1/ReadVariableOpReadVariableOp>while_simple_rnn_cell_15506_matmul_1_readvariableop_resource_0*
_output_shapes

:PP*
dtype0�
$while/simple_rnn_cell_15506/MatMul_1MatMulwhile_placeholder_2;while/simple_rnn_cell_15506/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
while/simple_rnn_cell_15506/addAddV2,while/simple_rnn_cell_15506/BiasAdd:output:0.while/simple_rnn_cell_15506/MatMul_1:product:0*
T0*'
_output_shapes
:���������P
 while/simple_rnn_cell_15506/TanhTanh#while/simple_rnn_cell_15506/add:z:0*
T0*'
_output_shapes
:���������P�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder$while/simple_rnn_cell_15506/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :����
while/Identity_4Identity$while/simple_rnn_cell_15506/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:���������P�

while/NoOpNoOp3^while/simple_rnn_cell_15506/BiasAdd/ReadVariableOp2^while/simple_rnn_cell_15506/MatMul/ReadVariableOp4^while/simple_rnn_cell_15506/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"|
;while_simple_rnn_cell_15506_biasadd_readvariableop_resource=while_simple_rnn_cell_15506_biasadd_readvariableop_resource_0"~
<while_simple_rnn_cell_15506_matmul_1_readvariableop_resource>while_simple_rnn_cell_15506_matmul_1_readvariableop_resource_0"z
:while_simple_rnn_cell_15506_matmul_readvariableop_resource<while_simple_rnn_cell_15506_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������P: : : : : 2h
2while/simple_rnn_cell_15506/BiasAdd/ReadVariableOp2while/simple_rnn_cell_15506/BiasAdd/ReadVariableOp2f
1while/simple_rnn_cell_15506/MatMul/ReadVariableOp1while/simple_rnn_cell_15506/MatMul/ReadVariableOp2j
3while/simple_rnn_cell_15506/MatMul_1/ReadVariableOp3while/simple_rnn_cell_15506/MatMul_1/ReadVariableOp: 
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
:���������P:

_output_shapes
: :

_output_shapes
: 
�I
�
1sequential_104_simple_rnn_104_while_body_38358281X
Tsequential_104_simple_rnn_104_while_sequential_104_simple_rnn_104_while_loop_counter^
Zsequential_104_simple_rnn_104_while_sequential_104_simple_rnn_104_while_maximum_iterations3
/sequential_104_simple_rnn_104_while_placeholder5
1sequential_104_simple_rnn_104_while_placeholder_15
1sequential_104_simple_rnn_104_while_placeholder_2W
Ssequential_104_simple_rnn_104_while_sequential_104_simple_rnn_104_strided_slice_1_0�
�sequential_104_simple_rnn_104_while_tensorarrayv2read_tensorlistgetitem_sequential_104_simple_rnn_104_tensorarrayunstack_tensorlistfromtensor_0l
Zsequential_104_simple_rnn_104_while_simple_rnn_cell_15506_matmul_readvariableop_resource_0:Pi
[sequential_104_simple_rnn_104_while_simple_rnn_cell_15506_biasadd_readvariableop_resource_0:Pn
\sequential_104_simple_rnn_104_while_simple_rnn_cell_15506_matmul_1_readvariableop_resource_0:PP0
,sequential_104_simple_rnn_104_while_identity2
.sequential_104_simple_rnn_104_while_identity_12
.sequential_104_simple_rnn_104_while_identity_22
.sequential_104_simple_rnn_104_while_identity_32
.sequential_104_simple_rnn_104_while_identity_4U
Qsequential_104_simple_rnn_104_while_sequential_104_simple_rnn_104_strided_slice_1�
�sequential_104_simple_rnn_104_while_tensorarrayv2read_tensorlistgetitem_sequential_104_simple_rnn_104_tensorarrayunstack_tensorlistfromtensorj
Xsequential_104_simple_rnn_104_while_simple_rnn_cell_15506_matmul_readvariableop_resource:Pg
Ysequential_104_simple_rnn_104_while_simple_rnn_cell_15506_biasadd_readvariableop_resource:Pl
Zsequential_104_simple_rnn_104_while_simple_rnn_cell_15506_matmul_1_readvariableop_resource:PP��Psequential_104/simple_rnn_104/while/simple_rnn_cell_15506/BiasAdd/ReadVariableOp�Osequential_104/simple_rnn_104/while/simple_rnn_cell_15506/MatMul/ReadVariableOp�Qsequential_104/simple_rnn_104/while/simple_rnn_cell_15506/MatMul_1/ReadVariableOp�
Usequential_104/simple_rnn_104/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Gsequential_104/simple_rnn_104/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_104_simple_rnn_104_while_tensorarrayv2read_tensorlistgetitem_sequential_104_simple_rnn_104_tensorarrayunstack_tensorlistfromtensor_0/sequential_104_simple_rnn_104_while_placeholder^sequential_104/simple_rnn_104/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
Osequential_104/simple_rnn_104/while/simple_rnn_cell_15506/MatMul/ReadVariableOpReadVariableOpZsequential_104_simple_rnn_104_while_simple_rnn_cell_15506_matmul_readvariableop_resource_0*
_output_shapes

:P*
dtype0�
@sequential_104/simple_rnn_104/while/simple_rnn_cell_15506/MatMulMatMulNsequential_104/simple_rnn_104/while/TensorArrayV2Read/TensorListGetItem:item:0Wsequential_104/simple_rnn_104/while/simple_rnn_cell_15506/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
Psequential_104/simple_rnn_104/while/simple_rnn_cell_15506/BiasAdd/ReadVariableOpReadVariableOp[sequential_104_simple_rnn_104_while_simple_rnn_cell_15506_biasadd_readvariableop_resource_0*
_output_shapes
:P*
dtype0�
Asequential_104/simple_rnn_104/while/simple_rnn_cell_15506/BiasAddBiasAddJsequential_104/simple_rnn_104/while/simple_rnn_cell_15506/MatMul:product:0Xsequential_104/simple_rnn_104/while/simple_rnn_cell_15506/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
Qsequential_104/simple_rnn_104/while/simple_rnn_cell_15506/MatMul_1/ReadVariableOpReadVariableOp\sequential_104_simple_rnn_104_while_simple_rnn_cell_15506_matmul_1_readvariableop_resource_0*
_output_shapes

:PP*
dtype0�
Bsequential_104/simple_rnn_104/while/simple_rnn_cell_15506/MatMul_1MatMul1sequential_104_simple_rnn_104_while_placeholder_2Ysequential_104/simple_rnn_104/while/simple_rnn_cell_15506/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
=sequential_104/simple_rnn_104/while/simple_rnn_cell_15506/addAddV2Jsequential_104/simple_rnn_104/while/simple_rnn_cell_15506/BiasAdd:output:0Lsequential_104/simple_rnn_104/while/simple_rnn_cell_15506/MatMul_1:product:0*
T0*'
_output_shapes
:���������P�
>sequential_104/simple_rnn_104/while/simple_rnn_cell_15506/TanhTanhAsequential_104/simple_rnn_104/while/simple_rnn_cell_15506/add:z:0*
T0*'
_output_shapes
:���������P�
Hsequential_104/simple_rnn_104/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem1sequential_104_simple_rnn_104_while_placeholder_1/sequential_104_simple_rnn_104_while_placeholderBsequential_104/simple_rnn_104/while/simple_rnn_cell_15506/Tanh:y:0*
_output_shapes
: *
element_dtype0:���k
)sequential_104/simple_rnn_104/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
'sequential_104/simple_rnn_104/while/addAddV2/sequential_104_simple_rnn_104_while_placeholder2sequential_104/simple_rnn_104/while/add/y:output:0*
T0*
_output_shapes
: m
+sequential_104/simple_rnn_104/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
)sequential_104/simple_rnn_104/while/add_1AddV2Tsequential_104_simple_rnn_104_while_sequential_104_simple_rnn_104_while_loop_counter4sequential_104/simple_rnn_104/while/add_1/y:output:0*
T0*
_output_shapes
: �
,sequential_104/simple_rnn_104/while/IdentityIdentity-sequential_104/simple_rnn_104/while/add_1:z:0)^sequential_104/simple_rnn_104/while/NoOp*
T0*
_output_shapes
: �
.sequential_104/simple_rnn_104/while/Identity_1IdentityZsequential_104_simple_rnn_104_while_sequential_104_simple_rnn_104_while_maximum_iterations)^sequential_104/simple_rnn_104/while/NoOp*
T0*
_output_shapes
: �
.sequential_104/simple_rnn_104/while/Identity_2Identity+sequential_104/simple_rnn_104/while/add:z:0)^sequential_104/simple_rnn_104/while/NoOp*
T0*
_output_shapes
: �
.sequential_104/simple_rnn_104/while/Identity_3IdentityXsequential_104/simple_rnn_104/while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^sequential_104/simple_rnn_104/while/NoOp*
T0*
_output_shapes
: :����
.sequential_104/simple_rnn_104/while/Identity_4IdentityBsequential_104/simple_rnn_104/while/simple_rnn_cell_15506/Tanh:y:0)^sequential_104/simple_rnn_104/while/NoOp*
T0*'
_output_shapes
:���������P�
(sequential_104/simple_rnn_104/while/NoOpNoOpQ^sequential_104/simple_rnn_104/while/simple_rnn_cell_15506/BiasAdd/ReadVariableOpP^sequential_104/simple_rnn_104/while/simple_rnn_cell_15506/MatMul/ReadVariableOpR^sequential_104/simple_rnn_104/while/simple_rnn_cell_15506/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "e
,sequential_104_simple_rnn_104_while_identity5sequential_104/simple_rnn_104/while/Identity:output:0"i
.sequential_104_simple_rnn_104_while_identity_17sequential_104/simple_rnn_104/while/Identity_1:output:0"i
.sequential_104_simple_rnn_104_while_identity_27sequential_104/simple_rnn_104/while/Identity_2:output:0"i
.sequential_104_simple_rnn_104_while_identity_37sequential_104/simple_rnn_104/while/Identity_3:output:0"i
.sequential_104_simple_rnn_104_while_identity_47sequential_104/simple_rnn_104/while/Identity_4:output:0"�
Qsequential_104_simple_rnn_104_while_sequential_104_simple_rnn_104_strided_slice_1Ssequential_104_simple_rnn_104_while_sequential_104_simple_rnn_104_strided_slice_1_0"�
Ysequential_104_simple_rnn_104_while_simple_rnn_cell_15506_biasadd_readvariableop_resource[sequential_104_simple_rnn_104_while_simple_rnn_cell_15506_biasadd_readvariableop_resource_0"�
Zsequential_104_simple_rnn_104_while_simple_rnn_cell_15506_matmul_1_readvariableop_resource\sequential_104_simple_rnn_104_while_simple_rnn_cell_15506_matmul_1_readvariableop_resource_0"�
Xsequential_104_simple_rnn_104_while_simple_rnn_cell_15506_matmul_readvariableop_resourceZsequential_104_simple_rnn_104_while_simple_rnn_cell_15506_matmul_readvariableop_resource_0"�
�sequential_104_simple_rnn_104_while_tensorarrayv2read_tensorlistgetitem_sequential_104_simple_rnn_104_tensorarrayunstack_tensorlistfromtensor�sequential_104_simple_rnn_104_while_tensorarrayv2read_tensorlistgetitem_sequential_104_simple_rnn_104_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������P: : : : : 2�
Psequential_104/simple_rnn_104/while/simple_rnn_cell_15506/BiasAdd/ReadVariableOpPsequential_104/simple_rnn_104/while/simple_rnn_cell_15506/BiasAdd/ReadVariableOp2�
Osequential_104/simple_rnn_104/while/simple_rnn_cell_15506/MatMul/ReadVariableOpOsequential_104/simple_rnn_104/while/simple_rnn_cell_15506/MatMul/ReadVariableOp2�
Qsequential_104/simple_rnn_104/while/simple_rnn_cell_15506/MatMul_1/ReadVariableOpQsequential_104/simple_rnn_104/while/simple_rnn_cell_15506/MatMul_1/ReadVariableOp: 
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
:���������P:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_38359303
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_38359303___redundant_placeholder06
2while_while_cond_38359303___redundant_placeholder16
2while_while_cond_38359303___redundant_placeholder26
2while_while_cond_38359303___redundant_placeholder3
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
-: : : : :���������P: ::::: 
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
:���������P:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_38359627
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_38359627___redundant_placeholder06
2while_while_cond_38359627___redundant_placeholder16
2while_while_cond_38359627___redundant_placeholder26
2while_while_cond_38359627___redundant_placeholder3
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
-: : : : :���������P: ::::: 
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
:���������P:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_38358825
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_38358825___redundant_placeholder06
2while_while_cond_38358825___redundant_placeholder16
2while_while_cond_38358825___redundant_placeholder26
2while_while_cond_38358825___redundant_placeholder3
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
-: : : : :���������P: ::::: 
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
:���������P:

_output_shapes
: :

_output_shapes
:
�>
�
L__inference_simple_rnn_104_layer_call_and_return_conditional_losses_38358892

inputsF
4simple_rnn_cell_15506_matmul_readvariableop_resource:PC
5simple_rnn_cell_15506_biasadd_readvariableop_resource:PH
6simple_rnn_cell_15506_matmul_1_readvariableop_resource:PP
identity��,simple_rnn_cell_15506/BiasAdd/ReadVariableOp�+simple_rnn_cell_15506/MatMul/ReadVariableOp�-simple_rnn_cell_15506/MatMul_1/ReadVariableOp�while;
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
valueB:�
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
value	B :Ps
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
:���������Pc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:����������D
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
valueB:�
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
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
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
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
+simple_rnn_cell_15506/MatMul/ReadVariableOpReadVariableOp4simple_rnn_cell_15506_matmul_readvariableop_resource*
_output_shapes

:P*
dtype0�
simple_rnn_cell_15506/MatMulMatMulstrided_slice_2:output:03simple_rnn_cell_15506/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
,simple_rnn_cell_15506/BiasAdd/ReadVariableOpReadVariableOp5simple_rnn_cell_15506_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0�
simple_rnn_cell_15506/BiasAddBiasAdd&simple_rnn_cell_15506/MatMul:product:04simple_rnn_cell_15506/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
-simple_rnn_cell_15506/MatMul_1/ReadVariableOpReadVariableOp6simple_rnn_cell_15506_matmul_1_readvariableop_resource*
_output_shapes

:PP*
dtype0�
simple_rnn_cell_15506/MatMul_1MatMulzeros:output:05simple_rnn_cell_15506/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
simple_rnn_cell_15506/addAddV2&simple_rnn_cell_15506/BiasAdd:output:0(simple_rnn_cell_15506/MatMul_1:product:0*
T0*'
_output_shapes
:���������Ps
simple_rnn_cell_15506/TanhTanhsimple_rnn_cell_15506/add:z:0*
T0*'
_output_shapes
:���������Pn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����P   �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
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
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:04simple_rnn_cell_15506_matmul_readvariableop_resource5simple_rnn_cell_15506_biasadd_readvariableop_resource6simple_rnn_cell_15506_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������P: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_38358826*
condR
while_cond_38358825*8
output_shapes'
%: : : : :���������P: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����P   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������P*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������P*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:����������Pg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������P�
NoOpNoOp-^simple_rnn_cell_15506/BiasAdd/ReadVariableOp,^simple_rnn_cell_15506/MatMul/ReadVariableOp.^simple_rnn_cell_15506/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:����������: : : 2\
,simple_rnn_cell_15506/BiasAdd/ReadVariableOp,simple_rnn_cell_15506/BiasAdd/ReadVariableOp2Z
+simple_rnn_cell_15506/MatMul/ReadVariableOp+simple_rnn_cell_15506/MatMul/ReadVariableOp2^
-simple_rnn_cell_15506/MatMul_1/ReadVariableOp-simple_rnn_cell_15506/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�-
�
while_body_38359520
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0N
<while_simple_rnn_cell_15506_matmul_readvariableop_resource_0:PK
=while_simple_rnn_cell_15506_biasadd_readvariableop_resource_0:PP
>while_simple_rnn_cell_15506_matmul_1_readvariableop_resource_0:PP
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorL
:while_simple_rnn_cell_15506_matmul_readvariableop_resource:PI
;while_simple_rnn_cell_15506_biasadd_readvariableop_resource:PN
<while_simple_rnn_cell_15506_matmul_1_readvariableop_resource:PP��2while/simple_rnn_cell_15506/BiasAdd/ReadVariableOp�1while/simple_rnn_cell_15506/MatMul/ReadVariableOp�3while/simple_rnn_cell_15506/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
1while/simple_rnn_cell_15506/MatMul/ReadVariableOpReadVariableOp<while_simple_rnn_cell_15506_matmul_readvariableop_resource_0*
_output_shapes

:P*
dtype0�
"while/simple_rnn_cell_15506/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:09while/simple_rnn_cell_15506/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
2while/simple_rnn_cell_15506/BiasAdd/ReadVariableOpReadVariableOp=while_simple_rnn_cell_15506_biasadd_readvariableop_resource_0*
_output_shapes
:P*
dtype0�
#while/simple_rnn_cell_15506/BiasAddBiasAdd,while/simple_rnn_cell_15506/MatMul:product:0:while/simple_rnn_cell_15506/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
3while/simple_rnn_cell_15506/MatMul_1/ReadVariableOpReadVariableOp>while_simple_rnn_cell_15506_matmul_1_readvariableop_resource_0*
_output_shapes

:PP*
dtype0�
$while/simple_rnn_cell_15506/MatMul_1MatMulwhile_placeholder_2;while/simple_rnn_cell_15506/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
while/simple_rnn_cell_15506/addAddV2,while/simple_rnn_cell_15506/BiasAdd:output:0.while/simple_rnn_cell_15506/MatMul_1:product:0*
T0*'
_output_shapes
:���������P
 while/simple_rnn_cell_15506/TanhTanh#while/simple_rnn_cell_15506/add:z:0*
T0*'
_output_shapes
:���������P�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder$while/simple_rnn_cell_15506/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :����
while/Identity_4Identity$while/simple_rnn_cell_15506/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:���������P�

while/NoOpNoOp3^while/simple_rnn_cell_15506/BiasAdd/ReadVariableOp2^while/simple_rnn_cell_15506/MatMul/ReadVariableOp4^while/simple_rnn_cell_15506/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"|
;while_simple_rnn_cell_15506_biasadd_readvariableop_resource=while_simple_rnn_cell_15506_biasadd_readvariableop_resource_0"~
<while_simple_rnn_cell_15506_matmul_1_readvariableop_resource>while_simple_rnn_cell_15506_matmul_1_readvariableop_resource_0"z
:while_simple_rnn_cell_15506_matmul_readvariableop_resource<while_simple_rnn_cell_15506_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������P: : : : : 2h
2while/simple_rnn_cell_15506/BiasAdd/ReadVariableOp2while/simple_rnn_cell_15506/BiasAdd/ReadVariableOp2f
1while/simple_rnn_cell_15506/MatMul/ReadVariableOp1while/simple_rnn_cell_15506/MatMul/ReadVariableOp2j
3while/simple_rnn_cell_15506/MatMul_1/ReadVariableOp3while/simple_rnn_cell_15506/MatMul_1/ReadVariableOp: 
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
:���������P:

_output_shapes
: :

_output_shapes
: 
�
�
S__inference_simple_rnn_cell_15506_layer_call_and_return_conditional_losses_38358395

inputs

states0
matmul_readvariableop_resource:P-
biasadd_readvariableop_resource:P2
 matmul_1_readvariableop_resource:PP
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:P*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Pr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:P*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Px
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:PP*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Pd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:���������PG
TanhTanhadd:z:0*
T0*'
_output_shapes
:���������PW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������PY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������P�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������:���������P: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������P
 
_user_specified_namestates
�
�
S__inference_simple_rnn_cell_15506_layer_call_and_return_conditional_losses_38359756

inputs
states_00
matmul_readvariableop_resource:P-
biasadd_readvariableop_resource:P2
 matmul_1_readvariableop_resource:PP
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:P*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Pr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:P*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Px
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:PP*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Pd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:���������PG
TanhTanhadd:z:0*
T0*'
_output_shapes
:���������PW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������PY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������P�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������:���������P: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������P
"
_user_specified_name
states/0
�
�
while_cond_38358686
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_38358686___redundant_placeholder06
2while_while_cond_38358686___redundant_placeholder16
2while_while_cond_38358686___redundant_placeholder26
2while_while_cond_38358686___redundant_placeholder3
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
-: : : : :���������P: ::::: 
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
:���������P:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_38359519
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_38359519___redundant_placeholder06
2while_while_cond_38359519___redundant_placeholder16
2while_while_cond_38359519___redundant_placeholder26
2while_while_cond_38359519___redundant_placeholder3
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
-: : : : :���������P: ::::: 
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
:���������P:

_output_shapes
: :

_output_shapes
:
�	
�
L__inference_sequential_104_layer_call_and_return_conditional_losses_38358762

inputs)
simple_rnn_104_38358754:P%
simple_rnn_104_38358756:P)
simple_rnn_104_38358758:PP
identity��&simple_rnn_104/StatefulPartitionedCall�
&simple_rnn_104/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_104_38358754simple_rnn_104_38358756simple_rnn_104_38358758*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������P*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_simple_rnn_104_layer_call_and_return_conditional_losses_38358753~
IdentityIdentity/simple_rnn_104/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������Po
NoOpNoOp'^simple_rnn_104/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:����������: : : 2P
&simple_rnn_104/StatefulPartitionedCall&simple_rnn_104/StatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�;
�
"simple_rnn_104_while_body_38359139:
6simple_rnn_104_while_simple_rnn_104_while_loop_counter@
<simple_rnn_104_while_simple_rnn_104_while_maximum_iterations$
 simple_rnn_104_while_placeholder&
"simple_rnn_104_while_placeholder_1&
"simple_rnn_104_while_placeholder_29
5simple_rnn_104_while_simple_rnn_104_strided_slice_1_0u
qsimple_rnn_104_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_104_tensorarrayunstack_tensorlistfromtensor_0]
Ksimple_rnn_104_while_simple_rnn_cell_15506_matmul_readvariableop_resource_0:PZ
Lsimple_rnn_104_while_simple_rnn_cell_15506_biasadd_readvariableop_resource_0:P_
Msimple_rnn_104_while_simple_rnn_cell_15506_matmul_1_readvariableop_resource_0:PP!
simple_rnn_104_while_identity#
simple_rnn_104_while_identity_1#
simple_rnn_104_while_identity_2#
simple_rnn_104_while_identity_3#
simple_rnn_104_while_identity_47
3simple_rnn_104_while_simple_rnn_104_strided_slice_1s
osimple_rnn_104_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_104_tensorarrayunstack_tensorlistfromtensor[
Isimple_rnn_104_while_simple_rnn_cell_15506_matmul_readvariableop_resource:PX
Jsimple_rnn_104_while_simple_rnn_cell_15506_biasadd_readvariableop_resource:P]
Ksimple_rnn_104_while_simple_rnn_cell_15506_matmul_1_readvariableop_resource:PP��Asimple_rnn_104/while/simple_rnn_cell_15506/BiasAdd/ReadVariableOp�@simple_rnn_104/while/simple_rnn_cell_15506/MatMul/ReadVariableOp�Bsimple_rnn_104/while/simple_rnn_cell_15506/MatMul_1/ReadVariableOp�
Fsimple_rnn_104/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
8simple_rnn_104/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemqsimple_rnn_104_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_104_tensorarrayunstack_tensorlistfromtensor_0 simple_rnn_104_while_placeholderOsimple_rnn_104/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
@simple_rnn_104/while/simple_rnn_cell_15506/MatMul/ReadVariableOpReadVariableOpKsimple_rnn_104_while_simple_rnn_cell_15506_matmul_readvariableop_resource_0*
_output_shapes

:P*
dtype0�
1simple_rnn_104/while/simple_rnn_cell_15506/MatMulMatMul?simple_rnn_104/while/TensorArrayV2Read/TensorListGetItem:item:0Hsimple_rnn_104/while/simple_rnn_cell_15506/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
Asimple_rnn_104/while/simple_rnn_cell_15506/BiasAdd/ReadVariableOpReadVariableOpLsimple_rnn_104_while_simple_rnn_cell_15506_biasadd_readvariableop_resource_0*
_output_shapes
:P*
dtype0�
2simple_rnn_104/while/simple_rnn_cell_15506/BiasAddBiasAdd;simple_rnn_104/while/simple_rnn_cell_15506/MatMul:product:0Isimple_rnn_104/while/simple_rnn_cell_15506/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
Bsimple_rnn_104/while/simple_rnn_cell_15506/MatMul_1/ReadVariableOpReadVariableOpMsimple_rnn_104_while_simple_rnn_cell_15506_matmul_1_readvariableop_resource_0*
_output_shapes

:PP*
dtype0�
3simple_rnn_104/while/simple_rnn_cell_15506/MatMul_1MatMul"simple_rnn_104_while_placeholder_2Jsimple_rnn_104/while/simple_rnn_cell_15506/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
.simple_rnn_104/while/simple_rnn_cell_15506/addAddV2;simple_rnn_104/while/simple_rnn_cell_15506/BiasAdd:output:0=simple_rnn_104/while/simple_rnn_cell_15506/MatMul_1:product:0*
T0*'
_output_shapes
:���������P�
/simple_rnn_104/while/simple_rnn_cell_15506/TanhTanh2simple_rnn_104/while/simple_rnn_cell_15506/add:z:0*
T0*'
_output_shapes
:���������P�
9simple_rnn_104/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem"simple_rnn_104_while_placeholder_1 simple_rnn_104_while_placeholder3simple_rnn_104/while/simple_rnn_cell_15506/Tanh:y:0*
_output_shapes
: *
element_dtype0:���\
simple_rnn_104/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_104/while/addAddV2 simple_rnn_104_while_placeholder#simple_rnn_104/while/add/y:output:0*
T0*
_output_shapes
: ^
simple_rnn_104/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_104/while/add_1AddV26simple_rnn_104_while_simple_rnn_104_while_loop_counter%simple_rnn_104/while/add_1/y:output:0*
T0*
_output_shapes
: �
simple_rnn_104/while/IdentityIdentitysimple_rnn_104/while/add_1:z:0^simple_rnn_104/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_104/while/Identity_1Identity<simple_rnn_104_while_simple_rnn_104_while_maximum_iterations^simple_rnn_104/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_104/while/Identity_2Identitysimple_rnn_104/while/add:z:0^simple_rnn_104/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_104/while/Identity_3IdentityIsimple_rnn_104/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_104/while/NoOp*
T0*
_output_shapes
: :����
simple_rnn_104/while/Identity_4Identity3simple_rnn_104/while/simple_rnn_cell_15506/Tanh:y:0^simple_rnn_104/while/NoOp*
T0*'
_output_shapes
:���������P�
simple_rnn_104/while/NoOpNoOpB^simple_rnn_104/while/simple_rnn_cell_15506/BiasAdd/ReadVariableOpA^simple_rnn_104/while/simple_rnn_cell_15506/MatMul/ReadVariableOpC^simple_rnn_104/while/simple_rnn_cell_15506/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "G
simple_rnn_104_while_identity&simple_rnn_104/while/Identity:output:0"K
simple_rnn_104_while_identity_1(simple_rnn_104/while/Identity_1:output:0"K
simple_rnn_104_while_identity_2(simple_rnn_104/while/Identity_2:output:0"K
simple_rnn_104_while_identity_3(simple_rnn_104/while/Identity_3:output:0"K
simple_rnn_104_while_identity_4(simple_rnn_104/while/Identity_4:output:0"l
3simple_rnn_104_while_simple_rnn_104_strided_slice_15simple_rnn_104_while_simple_rnn_104_strided_slice_1_0"�
Jsimple_rnn_104_while_simple_rnn_cell_15506_biasadd_readvariableop_resourceLsimple_rnn_104_while_simple_rnn_cell_15506_biasadd_readvariableop_resource_0"�
Ksimple_rnn_104_while_simple_rnn_cell_15506_matmul_1_readvariableop_resourceMsimple_rnn_104_while_simple_rnn_cell_15506_matmul_1_readvariableop_resource_0"�
Isimple_rnn_104_while_simple_rnn_cell_15506_matmul_readvariableop_resourceKsimple_rnn_104_while_simple_rnn_cell_15506_matmul_readvariableop_resource_0"�
osimple_rnn_104_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_104_tensorarrayunstack_tensorlistfromtensorqsimple_rnn_104_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_104_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������P: : : : : 2�
Asimple_rnn_104/while/simple_rnn_cell_15506/BiasAdd/ReadVariableOpAsimple_rnn_104/while/simple_rnn_cell_15506/BiasAdd/ReadVariableOp2�
@simple_rnn_104/while/simple_rnn_cell_15506/MatMul/ReadVariableOp@simple_rnn_104/while/simple_rnn_cell_15506/MatMul/ReadVariableOp2�
Bsimple_rnn_104/while/simple_rnn_cell_15506/MatMul_1/ReadVariableOpBsimple_rnn_104/while/simple_rnn_cell_15506/MatMul_1/ReadVariableOp: 
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
:���������P:

_output_shapes
: :

_output_shapes
: 
�
�
S__inference_simple_rnn_cell_15506_layer_call_and_return_conditional_losses_38358515

inputs

states0
matmul_readvariableop_resource:P-
biasadd_readvariableop_resource:P2
 matmul_1_readvariableop_resource:PP
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:P*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Pr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:P*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Px
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:PP*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������Pd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:���������PG
TanhTanhadd:z:0*
T0*'
_output_shapes
:���������PW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������PY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������P�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������:���������P: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������P
 
_user_specified_namestates
�-
�
while_body_38358687
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0N
<while_simple_rnn_cell_15506_matmul_readvariableop_resource_0:PK
=while_simple_rnn_cell_15506_biasadd_readvariableop_resource_0:PP
>while_simple_rnn_cell_15506_matmul_1_readvariableop_resource_0:PP
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorL
:while_simple_rnn_cell_15506_matmul_readvariableop_resource:PI
;while_simple_rnn_cell_15506_biasadd_readvariableop_resource:PN
<while_simple_rnn_cell_15506_matmul_1_readvariableop_resource:PP��2while/simple_rnn_cell_15506/BiasAdd/ReadVariableOp�1while/simple_rnn_cell_15506/MatMul/ReadVariableOp�3while/simple_rnn_cell_15506/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
1while/simple_rnn_cell_15506/MatMul/ReadVariableOpReadVariableOp<while_simple_rnn_cell_15506_matmul_readvariableop_resource_0*
_output_shapes

:P*
dtype0�
"while/simple_rnn_cell_15506/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:09while/simple_rnn_cell_15506/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
2while/simple_rnn_cell_15506/BiasAdd/ReadVariableOpReadVariableOp=while_simple_rnn_cell_15506_biasadd_readvariableop_resource_0*
_output_shapes
:P*
dtype0�
#while/simple_rnn_cell_15506/BiasAddBiasAdd,while/simple_rnn_cell_15506/MatMul:product:0:while/simple_rnn_cell_15506/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
3while/simple_rnn_cell_15506/MatMul_1/ReadVariableOpReadVariableOp>while_simple_rnn_cell_15506_matmul_1_readvariableop_resource_0*
_output_shapes

:PP*
dtype0�
$while/simple_rnn_cell_15506/MatMul_1MatMulwhile_placeholder_2;while/simple_rnn_cell_15506/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P�
while/simple_rnn_cell_15506/addAddV2,while/simple_rnn_cell_15506/BiasAdd:output:0.while/simple_rnn_cell_15506/MatMul_1:product:0*
T0*'
_output_shapes
:���������P
 while/simple_rnn_cell_15506/TanhTanh#while/simple_rnn_cell_15506/add:z:0*
T0*'
_output_shapes
:���������P�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder$while/simple_rnn_cell_15506/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
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
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :����
while/Identity_4Identity$while/simple_rnn_cell_15506/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:���������P�

while/NoOpNoOp3^while/simple_rnn_cell_15506/BiasAdd/ReadVariableOp2^while/simple_rnn_cell_15506/MatMul/ReadVariableOp4^while/simple_rnn_cell_15506/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"|
;while_simple_rnn_cell_15506_biasadd_readvariableop_resource=while_simple_rnn_cell_15506_biasadd_readvariableop_resource_0"~
<while_simple_rnn_cell_15506_matmul_1_readvariableop_resource>while_simple_rnn_cell_15506_matmul_1_readvariableop_resource_0"z
:while_simple_rnn_cell_15506_matmul_readvariableop_resource<while_simple_rnn_cell_15506_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������P: : : : : 2h
2while/simple_rnn_cell_15506/BiasAdd/ReadVariableOp2while/simple_rnn_cell_15506/BiasAdd/ReadVariableOp2f
1while/simple_rnn_cell_15506/MatMul/ReadVariableOp1while/simple_rnn_cell_15506/MatMul/ReadVariableOp2j
3while/simple_rnn_cell_15506/MatMul_1/ReadVariableOp3while/simple_rnn_cell_15506/MatMul_1/ReadVariableOp: 
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
:���������P:

_output_shapes
: :

_output_shapes
: "�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
Z
simple_rnn_104_inputB
&serving_default_simple_rnn_104_input:0����������B
simple_rnn_1040
StatefulPartitionedCall:0���������Ptensorflow/serving/predict:�O
�
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
�
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
�
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
�2�
1__inference_sequential_104_layer_call_fn_38358771
1__inference_sequential_104_layer_call_fn_38358978
1__inference_sequential_104_layer_call_fn_38358989
1__inference_sequential_104_layer_call_fn_38358945�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
L__inference_sequential_104_layer_call_and_return_conditional_losses_38359097
L__inference_sequential_104_layer_call_and_return_conditional_losses_38359205
L__inference_sequential_104_layer_call_and_return_conditional_losses_38358956
L__inference_sequential_104_layer_call_and_return_conditional_losses_38358967�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
#__inference__wrapped_model_38358347simple_rnn_104_input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
,
serving_default"
signature_map
�

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
�

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
�2�
1__inference_simple_rnn_104_layer_call_fn_38359229
1__inference_simple_rnn_104_layer_call_fn_38359240
1__inference_simple_rnn_104_layer_call_fn_38359251
1__inference_simple_rnn_104_layer_call_fn_38359262�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
L__inference_simple_rnn_104_layer_call_and_return_conditional_losses_38359370
L__inference_simple_rnn_104_layer_call_and_return_conditional_losses_38359478
L__inference_simple_rnn_104_layer_call_and_return_conditional_losses_38359586
L__inference_simple_rnn_104_layer_call_and_return_conditional_losses_38359694�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
=:;P2+simple_rnn_104/simple_rnn_cell_15506/kernel
G:EPP25simple_rnn_104/simple_rnn_cell_15506/recurrent_kernel
7:5P2)simple_rnn_104/simple_rnn_cell_15506/bias
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
�B�
&__inference_signature_wrapper_38359218simple_rnn_104_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�
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
�2�
8__inference_simple_rnn_cell_15506_layer_call_fn_38359708
8__inference_simple_rnn_cell_15506_layer_call_fn_38359722�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
S__inference_simple_rnn_cell_15506_layer_call_and_return_conditional_losses_38359739
S__inference_simple_rnn_cell_15506_layer_call_and_return_conditional_losses_38359756�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
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
trackable_dict_wrapper�
#__inference__wrapped_model_38358347�B�?
8�5
3�0
simple_rnn_104_input����������
� "?�<
:
simple_rnn_104(�%
simple_rnn_104���������P�
L__inference_sequential_104_layer_call_and_return_conditional_losses_38358956xJ�G
@�=
3�0
simple_rnn_104_input����������
p 

 
� "%�"
�
0���������P
� �
L__inference_sequential_104_layer_call_and_return_conditional_losses_38358967xJ�G
@�=
3�0
simple_rnn_104_input����������
p

 
� "%�"
�
0���������P
� �
L__inference_sequential_104_layer_call_and_return_conditional_losses_38359097j<�9
2�/
%�"
inputs����������
p 

 
� "%�"
�
0���������P
� �
L__inference_sequential_104_layer_call_and_return_conditional_losses_38359205j<�9
2�/
%�"
inputs����������
p

 
� "%�"
�
0���������P
� �
1__inference_sequential_104_layer_call_fn_38358771kJ�G
@�=
3�0
simple_rnn_104_input����������
p 

 
� "����������P�
1__inference_sequential_104_layer_call_fn_38358945kJ�G
@�=
3�0
simple_rnn_104_input����������
p

 
� "����������P�
1__inference_sequential_104_layer_call_fn_38358978]<�9
2�/
%�"
inputs����������
p 

 
� "����������P�
1__inference_sequential_104_layer_call_fn_38358989]<�9
2�/
%�"
inputs����������
p

 
� "����������P�
&__inference_signature_wrapper_38359218�Z�W
� 
P�M
K
simple_rnn_104_input3�0
simple_rnn_104_input����������"?�<
:
simple_rnn_104(�%
simple_rnn_104���������P�
L__inference_simple_rnn_104_layer_call_and_return_conditional_losses_38359370}O�L
E�B
4�1
/�,
inputs/0������������������

 
p 

 
� "%�"
�
0���������P
� �
L__inference_simple_rnn_104_layer_call_and_return_conditional_losses_38359478}O�L
E�B
4�1
/�,
inputs/0������������������

 
p

 
� "%�"
�
0���������P
� �
L__inference_simple_rnn_104_layer_call_and_return_conditional_losses_38359586n@�=
6�3
%�"
inputs����������

 
p 

 
� "%�"
�
0���������P
� �
L__inference_simple_rnn_104_layer_call_and_return_conditional_losses_38359694n@�=
6�3
%�"
inputs����������

 
p

 
� "%�"
�
0���������P
� �
1__inference_simple_rnn_104_layer_call_fn_38359229pO�L
E�B
4�1
/�,
inputs/0������������������

 
p 

 
� "����������P�
1__inference_simple_rnn_104_layer_call_fn_38359240pO�L
E�B
4�1
/�,
inputs/0������������������

 
p

 
� "����������P�
1__inference_simple_rnn_104_layer_call_fn_38359251a@�=
6�3
%�"
inputs����������

 
p 

 
� "����������P�
1__inference_simple_rnn_104_layer_call_fn_38359262a@�=
6�3
%�"
inputs����������

 
p

 
� "����������P�
S__inference_simple_rnn_cell_15506_layer_call_and_return_conditional_losses_38359739�\�Y
R�O
 �
inputs���������
'�$
"�
states/0���������P
p 
� "R�O
H�E
�
0/0���������P
$�!
�
0/1/0���������P
� �
S__inference_simple_rnn_cell_15506_layer_call_and_return_conditional_losses_38359756�\�Y
R�O
 �
inputs���������
'�$
"�
states/0���������P
p
� "R�O
H�E
�
0/0���������P
$�!
�
0/1/0���������P
� �
8__inference_simple_rnn_cell_15506_layer_call_fn_38359708�\�Y
R�O
 �
inputs���������
'�$
"�
states/0���������P
p 
� "D�A
�
0���������P
"�
�
1/0���������P�
8__inference_simple_rnn_cell_15506_layer_call_fn_38359722�\�Y
R�O
 �
inputs���������
'�$
"�
states/0���������P
p
� "D�A
�
0���������P
"�
�
1/0���������P