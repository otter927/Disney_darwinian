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
%simple_rnn_6/simple_rnn_cell_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*6
shared_name'%simple_rnn_6/simple_rnn_cell_6/kernel
�
9simple_rnn_6/simple_rnn_cell_6/kernel/Read/ReadVariableOpReadVariableOp%simple_rnn_6/simple_rnn_cell_6/kernel*
_output_shapes

:*
dtype0
�
/simple_rnn_6/simple_rnn_cell_6/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*@
shared_name1/simple_rnn_6/simple_rnn_cell_6/recurrent_kernel
�
Csimple_rnn_6/simple_rnn_cell_6/recurrent_kernel/Read/ReadVariableOpReadVariableOp/simple_rnn_6/simple_rnn_cell_6/recurrent_kernel*
_output_shapes

:*
dtype0
�
#simple_rnn_6/simple_rnn_cell_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#simple_rnn_6/simple_rnn_cell_6/bias
�
7simple_rnn_6/simple_rnn_cell_6/bias/Read/ReadVariableOpReadVariableOp#simple_rnn_6/simple_rnn_cell_6/bias*
_output_shapes
:*
dtype0

NoOpNoOp
�
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B�
�
layer_with_weights-0
layer-0

signatures
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature*
�
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*

serving_default* 
* 

0
1
2*

0
1
2*
* 
�
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses*
* 
* 
* 
�

kernel
recurrent_kernel
bias
#_self_saveable_object_factories
	variables
trainable_variables
 regularization_losses
!	keras_api
"_random_generator
#__call__
*$&call_and_return_all_conditional_losses*
* 
* 

0
1
2*

0
1
2*
* 
�

%states
&non_trainable_variables

'layers
(metrics
)layer_regularization_losses
*layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
e_
VARIABLE_VALUE%simple_rnn_6/simple_rnn_cell_6/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE/simple_rnn_6/simple_rnn_cell_6/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE#simple_rnn_6/simple_rnn_cell_6/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
* 

0*
* 
* 
* 
* 

0
1
2*

0
1
2*
* 
�
+non_trainable_variables

,layers
-metrics
.layer_regularization_losses
/layer_metrics
	variables
trainable_variables
 regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
�
"serving_default_simple_rnn_6_inputPlaceholder*+
_output_shapes
:���������(*
dtype0* 
shape:���������(
�
StatefulPartitionedCallStatefulPartitionedCall"serving_default_simple_rnn_6_input%simple_rnn_6/simple_rnn_cell_6/kernel#simple_rnn_6/simple_rnn_cell_6/bias/simple_rnn_6/simple_rnn_cell_6/recurrent_kernel*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� */
f*R(
&__inference_signature_wrapper_72395704
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename9simple_rnn_6/simple_rnn_cell_6/kernel/Read/ReadVariableOpCsimple_rnn_6/simple_rnn_cell_6/recurrent_kernel/Read/ReadVariableOp7simple_rnn_6/simple_rnn_cell_6/bias/Read/ReadVariableOpConst*
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
!__inference__traced_save_72396274
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename%simple_rnn_6/simple_rnn_cell_6/kernel/simple_rnn_6/simple_rnn_cell_6/recurrent_kernel#simple_rnn_6/simple_rnn_cell_6/bias*
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
$__inference__traced_restore_72396293�
�>
�
J__inference_simple_rnn_6_layer_call_and_return_conditional_losses_72396180

inputsF
4simple_rnn_cell_35356_matmul_readvariableop_resource:C
5simple_rnn_cell_35356_biasadd_readvariableop_resource:H
6simple_rnn_cell_35356_matmul_1_readvariableop_resource:
identity��,simple_rnn_cell_35356/BiasAdd/ReadVariableOp�+simple_rnn_cell_35356/MatMul/ReadVariableOp�-simple_rnn_cell_35356/MatMul_1/ReadVariableOp�while;
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
:���������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:(���������D
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
+simple_rnn_cell_35356/MatMul/ReadVariableOpReadVariableOp4simple_rnn_cell_35356_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
simple_rnn_cell_35356/MatMulMatMulstrided_slice_2:output:03simple_rnn_cell_35356/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
,simple_rnn_cell_35356/BiasAdd/ReadVariableOpReadVariableOp5simple_rnn_cell_35356_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
simple_rnn_cell_35356/BiasAddBiasAdd&simple_rnn_cell_35356/MatMul:product:04simple_rnn_cell_35356/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-simple_rnn_cell_35356/MatMul_1/ReadVariableOpReadVariableOp6simple_rnn_cell_35356_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0�
simple_rnn_cell_35356/MatMul_1MatMulzeros:output:05simple_rnn_cell_35356/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
simple_rnn_cell_35356/addAddV2&simple_rnn_cell_35356/BiasAdd:output:0(simple_rnn_cell_35356/MatMul_1:product:0*
T0*'
_output_shapes
:���������s
simple_rnn_cell_35356/TanhTanhsimple_rnn_cell_35356/add:z:0*
T0*'
_output_shapes
:���������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:04simple_rnn_cell_35356_matmul_readvariableop_resource5simple_rnn_cell_35356_biasadd_readvariableop_resource6simple_rnn_cell_35356_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_72396114*
condR
while_cond_72396113*8
output_shapes'
%: : : : :���������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:(���������*
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
:���������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������(g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp-^simple_rnn_cell_35356/BiasAdd/ReadVariableOp,^simple_rnn_cell_35356/MatMul/ReadVariableOp.^simple_rnn_cell_35356/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 2\
,simple_rnn_cell_35356/BiasAdd/ReadVariableOp,simple_rnn_cell_35356/BiasAdd/ReadVariableOp2Z
+simple_rnn_cell_35356/MatMul/ReadVariableOp+simple_rnn_cell_35356/MatMul/ReadVariableOp2^
-simple_rnn_cell_35356/MatMul_1/ReadVariableOp-simple_rnn_cell_35356/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�W
�
#__inference__wrapped_model_72394833
simple_rnn_6_input`
Nsequential_6_simple_rnn_6_simple_rnn_cell_35356_matmul_readvariableop_resource:]
Osequential_6_simple_rnn_6_simple_rnn_cell_35356_biasadd_readvariableop_resource:b
Psequential_6_simple_rnn_6_simple_rnn_cell_35356_matmul_1_readvariableop_resource:
identity��Fsequential_6/simple_rnn_6/simple_rnn_cell_35356/BiasAdd/ReadVariableOp�Esequential_6/simple_rnn_6/simple_rnn_cell_35356/MatMul/ReadVariableOp�Gsequential_6/simple_rnn_6/simple_rnn_cell_35356/MatMul_1/ReadVariableOp�sequential_6/simple_rnn_6/whilea
sequential_6/simple_rnn_6/ShapeShapesimple_rnn_6_input*
T0*
_output_shapes
:w
-sequential_6/simple_rnn_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_6/simple_rnn_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_6/simple_rnn_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_6/simple_rnn_6/strided_sliceStridedSlice(sequential_6/simple_rnn_6/Shape:output:06sequential_6/simple_rnn_6/strided_slice/stack:output:08sequential_6/simple_rnn_6/strided_slice/stack_1:output:08sequential_6/simple_rnn_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
(sequential_6/simple_rnn_6/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
&sequential_6/simple_rnn_6/zeros/packedPack0sequential_6/simple_rnn_6/strided_slice:output:01sequential_6/simple_rnn_6/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_6/simple_rnn_6/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_6/simple_rnn_6/zerosFill/sequential_6/simple_rnn_6/zeros/packed:output:0.sequential_6/simple_rnn_6/zeros/Const:output:0*
T0*'
_output_shapes
:���������}
(sequential_6/simple_rnn_6/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
#sequential_6/simple_rnn_6/transpose	Transposesimple_rnn_6_input1sequential_6/simple_rnn_6/transpose/perm:output:0*
T0*+
_output_shapes
:(���������x
!sequential_6/simple_rnn_6/Shape_1Shape'sequential_6/simple_rnn_6/transpose:y:0*
T0*
_output_shapes
:y
/sequential_6/simple_rnn_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1sequential_6/simple_rnn_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1sequential_6/simple_rnn_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)sequential_6/simple_rnn_6/strided_slice_1StridedSlice*sequential_6/simple_rnn_6/Shape_1:output:08sequential_6/simple_rnn_6/strided_slice_1/stack:output:0:sequential_6/simple_rnn_6/strided_slice_1/stack_1:output:0:sequential_6/simple_rnn_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
5sequential_6/simple_rnn_6/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
'sequential_6/simple_rnn_6/TensorArrayV2TensorListReserve>sequential_6/simple_rnn_6/TensorArrayV2/element_shape:output:02sequential_6/simple_rnn_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Osequential_6/simple_rnn_6/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Asequential_6/simple_rnn_6/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor'sequential_6/simple_rnn_6/transpose:y:0Xsequential_6/simple_rnn_6/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���y
/sequential_6/simple_rnn_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1sequential_6/simple_rnn_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1sequential_6/simple_rnn_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)sequential_6/simple_rnn_6/strided_slice_2StridedSlice'sequential_6/simple_rnn_6/transpose:y:08sequential_6/simple_rnn_6/strided_slice_2/stack:output:0:sequential_6/simple_rnn_6/strided_slice_2/stack_1:output:0:sequential_6/simple_rnn_6/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
Esequential_6/simple_rnn_6/simple_rnn_cell_35356/MatMul/ReadVariableOpReadVariableOpNsequential_6_simple_rnn_6_simple_rnn_cell_35356_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
6sequential_6/simple_rnn_6/simple_rnn_cell_35356/MatMulMatMul2sequential_6/simple_rnn_6/strided_slice_2:output:0Msequential_6/simple_rnn_6/simple_rnn_cell_35356/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Fsequential_6/simple_rnn_6/simple_rnn_cell_35356/BiasAdd/ReadVariableOpReadVariableOpOsequential_6_simple_rnn_6_simple_rnn_cell_35356_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
7sequential_6/simple_rnn_6/simple_rnn_cell_35356/BiasAddBiasAdd@sequential_6/simple_rnn_6/simple_rnn_cell_35356/MatMul:product:0Nsequential_6/simple_rnn_6/simple_rnn_cell_35356/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Gsequential_6/simple_rnn_6/simple_rnn_cell_35356/MatMul_1/ReadVariableOpReadVariableOpPsequential_6_simple_rnn_6_simple_rnn_cell_35356_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0�
8sequential_6/simple_rnn_6/simple_rnn_cell_35356/MatMul_1MatMul(sequential_6/simple_rnn_6/zeros:output:0Osequential_6/simple_rnn_6/simple_rnn_cell_35356/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
3sequential_6/simple_rnn_6/simple_rnn_cell_35356/addAddV2@sequential_6/simple_rnn_6/simple_rnn_cell_35356/BiasAdd:output:0Bsequential_6/simple_rnn_6/simple_rnn_cell_35356/MatMul_1:product:0*
T0*'
_output_shapes
:����������
4sequential_6/simple_rnn_6/simple_rnn_cell_35356/TanhTanh7sequential_6/simple_rnn_6/simple_rnn_cell_35356/add:z:0*
T0*'
_output_shapes
:����������
7sequential_6/simple_rnn_6/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)sequential_6/simple_rnn_6/TensorArrayV2_1TensorListReserve@sequential_6/simple_rnn_6/TensorArrayV2_1/element_shape:output:02sequential_6/simple_rnn_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���`
sequential_6/simple_rnn_6/timeConst*
_output_shapes
: *
dtype0*
value	B : }
2sequential_6/simple_rnn_6/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������n
,sequential_6/simple_rnn_6/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_6/simple_rnn_6/whileWhile5sequential_6/simple_rnn_6/while/loop_counter:output:0;sequential_6/simple_rnn_6/while/maximum_iterations:output:0'sequential_6/simple_rnn_6/time:output:02sequential_6/simple_rnn_6/TensorArrayV2_1:handle:0(sequential_6/simple_rnn_6/zeros:output:02sequential_6/simple_rnn_6/strided_slice_1:output:0Qsequential_6/simple_rnn_6/TensorArrayUnstack/TensorListFromTensor:output_handle:0Nsequential_6_simple_rnn_6_simple_rnn_cell_35356_matmul_readvariableop_resourceOsequential_6_simple_rnn_6_simple_rnn_cell_35356_biasadd_readvariableop_resourcePsequential_6_simple_rnn_6_simple_rnn_cell_35356_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *9
body1R/
-sequential_6_simple_rnn_6_while_body_72394767*9
cond1R/
-sequential_6_simple_rnn_6_while_cond_72394766*8
output_shapes'
%: : : : :���������: : : : : *
parallel_iterations �
Jsequential_6/simple_rnn_6/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
<sequential_6/simple_rnn_6/TensorArrayV2Stack/TensorListStackTensorListStack(sequential_6/simple_rnn_6/while:output:3Ssequential_6/simple_rnn_6/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:(���������*
element_dtype0�
/sequential_6/simple_rnn_6/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������{
1sequential_6/simple_rnn_6/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: {
1sequential_6/simple_rnn_6/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)sequential_6/simple_rnn_6/strided_slice_3StridedSliceEsequential_6/simple_rnn_6/TensorArrayV2Stack/TensorListStack:tensor:08sequential_6/simple_rnn_6/strided_slice_3/stack:output:0:sequential_6/simple_rnn_6/strided_slice_3/stack_1:output:0:sequential_6/simple_rnn_6/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask
*sequential_6/simple_rnn_6/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
%sequential_6/simple_rnn_6/transpose_1	TransposeEsequential_6/simple_rnn_6/TensorArrayV2Stack/TensorListStack:tensor:03sequential_6/simple_rnn_6/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������(�
IdentityIdentity2sequential_6/simple_rnn_6/strided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOpG^sequential_6/simple_rnn_6/simple_rnn_cell_35356/BiasAdd/ReadVariableOpF^sequential_6/simple_rnn_6/simple_rnn_cell_35356/MatMul/ReadVariableOpH^sequential_6/simple_rnn_6/simple_rnn_cell_35356/MatMul_1/ReadVariableOp ^sequential_6/simple_rnn_6/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 2�
Fsequential_6/simple_rnn_6/simple_rnn_cell_35356/BiasAdd/ReadVariableOpFsequential_6/simple_rnn_6/simple_rnn_cell_35356/BiasAdd/ReadVariableOp2�
Esequential_6/simple_rnn_6/simple_rnn_cell_35356/MatMul/ReadVariableOpEsequential_6/simple_rnn_6/simple_rnn_cell_35356/MatMul/ReadVariableOp2�
Gsequential_6/simple_rnn_6/simple_rnn_cell_35356/MatMul_1/ReadVariableOpGsequential_6/simple_rnn_6/simple_rnn_cell_35356/MatMul_1/ReadVariableOp2B
sequential_6/simple_rnn_6/whilesequential_6/simple_rnn_6/while:_ [
+
_output_shapes
:���������(
,
_user_specified_namesimple_rnn_6_input
�4
�
J__inference_simple_rnn_6_layer_call_and_return_conditional_losses_72395116

inputs0
simple_rnn_cell_35356_72395041:,
simple_rnn_cell_35356_72395043:0
simple_rnn_cell_35356_72395045:
identity��-simple_rnn_cell_35356/StatefulPartitionedCall�while;
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
:���������c
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
-simple_rnn_cell_35356/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_35356_72395041simple_rnn_cell_35356_72395043simple_rnn_cell_35356_72395045*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_simple_rnn_cell_35356_layer_call_and_return_conditional_losses_72395001n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_35356_72395041simple_rnn_cell_35356_72395043simple_rnn_cell_35356_72395045*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_72395053*
condR
while_cond_72395052*8
output_shapes'
%: : : : :���������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������*
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
:���������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������~
NoOpNoOp.^simple_rnn_cell_35356/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2^
-simple_rnn_cell_35356/StatefulPartitionedCall-simple_rnn_cell_35356/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�>
�
J__inference_simple_rnn_6_layer_call_and_return_conditional_losses_72396072

inputsF
4simple_rnn_cell_35356_matmul_readvariableop_resource:C
5simple_rnn_cell_35356_biasadd_readvariableop_resource:H
6simple_rnn_cell_35356_matmul_1_readvariableop_resource:
identity��,simple_rnn_cell_35356/BiasAdd/ReadVariableOp�+simple_rnn_cell_35356/MatMul/ReadVariableOp�-simple_rnn_cell_35356/MatMul_1/ReadVariableOp�while;
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
:���������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:(���������D
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
+simple_rnn_cell_35356/MatMul/ReadVariableOpReadVariableOp4simple_rnn_cell_35356_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
simple_rnn_cell_35356/MatMulMatMulstrided_slice_2:output:03simple_rnn_cell_35356/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
,simple_rnn_cell_35356/BiasAdd/ReadVariableOpReadVariableOp5simple_rnn_cell_35356_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
simple_rnn_cell_35356/BiasAddBiasAdd&simple_rnn_cell_35356/MatMul:product:04simple_rnn_cell_35356/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-simple_rnn_cell_35356/MatMul_1/ReadVariableOpReadVariableOp6simple_rnn_cell_35356_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0�
simple_rnn_cell_35356/MatMul_1MatMulzeros:output:05simple_rnn_cell_35356/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
simple_rnn_cell_35356/addAddV2&simple_rnn_cell_35356/BiasAdd:output:0(simple_rnn_cell_35356/MatMul_1:product:0*
T0*'
_output_shapes
:���������s
simple_rnn_cell_35356/TanhTanhsimple_rnn_cell_35356/add:z:0*
T0*'
_output_shapes
:���������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:04simple_rnn_cell_35356_matmul_readvariableop_resource5simple_rnn_cell_35356_biasadd_readvariableop_resource6simple_rnn_cell_35356_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_72396006*
condR
while_cond_72396005*8
output_shapes'
%: : : : :���������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:(���������*
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
:���������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������(g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp-^simple_rnn_cell_35356/BiasAdd/ReadVariableOp,^simple_rnn_cell_35356/MatMul/ReadVariableOp.^simple_rnn_cell_35356/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 2\
,simple_rnn_cell_35356/BiasAdd/ReadVariableOp,simple_rnn_cell_35356/BiasAdd/ReadVariableOp2Z
+simple_rnn_cell_35356/MatMul/ReadVariableOp+simple_rnn_cell_35356/MatMul/ReadVariableOp2^
-simple_rnn_cell_35356/MatMul_1/ReadVariableOp-simple_rnn_cell_35356/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�	
�
J__inference_sequential_6_layer_call_and_return_conditional_losses_72395453
simple_rnn_6_input'
simple_rnn_6_72395445:#
simple_rnn_6_72395447:'
simple_rnn_6_72395449:
identity��$simple_rnn_6/StatefulPartitionedCall�
$simple_rnn_6/StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_6_inputsimple_rnn_6_72395445simple_rnn_6_72395447simple_rnn_6_72395449*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_simple_rnn_6_layer_call_and_return_conditional_losses_72395378|
IdentityIdentity-simple_rnn_6/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������m
NoOpNoOp%^simple_rnn_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 2L
$simple_rnn_6/StatefulPartitionedCall$simple_rnn_6/StatefulPartitionedCall:_ [
+
_output_shapes
:���������(
,
_user_specified_namesimple_rnn_6_input
�-
�
while_body_72395898
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0N
<while_simple_rnn_cell_35356_matmul_readvariableop_resource_0:K
=while_simple_rnn_cell_35356_biasadd_readvariableop_resource_0:P
>while_simple_rnn_cell_35356_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorL
:while_simple_rnn_cell_35356_matmul_readvariableop_resource:I
;while_simple_rnn_cell_35356_biasadd_readvariableop_resource:N
<while_simple_rnn_cell_35356_matmul_1_readvariableop_resource:��2while/simple_rnn_cell_35356/BiasAdd/ReadVariableOp�1while/simple_rnn_cell_35356/MatMul/ReadVariableOp�3while/simple_rnn_cell_35356/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
1while/simple_rnn_cell_35356/MatMul/ReadVariableOpReadVariableOp<while_simple_rnn_cell_35356_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0�
"while/simple_rnn_cell_35356/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:09while/simple_rnn_cell_35356/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
2while/simple_rnn_cell_35356/BiasAdd/ReadVariableOpReadVariableOp=while_simple_rnn_cell_35356_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0�
#while/simple_rnn_cell_35356/BiasAddBiasAdd,while/simple_rnn_cell_35356/MatMul:product:0:while/simple_rnn_cell_35356/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
3while/simple_rnn_cell_35356/MatMul_1/ReadVariableOpReadVariableOp>while_simple_rnn_cell_35356_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0�
$while/simple_rnn_cell_35356/MatMul_1MatMulwhile_placeholder_2;while/simple_rnn_cell_35356/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
while/simple_rnn_cell_35356/addAddV2,while/simple_rnn_cell_35356/BiasAdd:output:0.while/simple_rnn_cell_35356/MatMul_1:product:0*
T0*'
_output_shapes
:���������
 while/simple_rnn_cell_35356/TanhTanh#while/simple_rnn_cell_35356/add:z:0*
T0*'
_output_shapes
:����������
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder$while/simple_rnn_cell_35356/Tanh:y:0*
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
while/Identity_4Identity$while/simple_rnn_cell_35356/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:����������

while/NoOpNoOp3^while/simple_rnn_cell_35356/BiasAdd/ReadVariableOp2^while/simple_rnn_cell_35356/MatMul/ReadVariableOp4^while/simple_rnn_cell_35356/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"|
;while_simple_rnn_cell_35356_biasadd_readvariableop_resource=while_simple_rnn_cell_35356_biasadd_readvariableop_resource_0"~
<while_simple_rnn_cell_35356_matmul_1_readvariableop_resource>while_simple_rnn_cell_35356_matmul_1_readvariableop_resource_0"z
:while_simple_rnn_cell_35356_matmul_readvariableop_resource<while_simple_rnn_cell_35356_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������: : : : : 2h
2while/simple_rnn_cell_35356/BiasAdd/ReadVariableOp2while/simple_rnn_cell_35356/BiasAdd/ReadVariableOp2f
1while/simple_rnn_cell_35356/MatMul/ReadVariableOp1while/simple_rnn_cell_35356/MatMul/ReadVariableOp2j
3while/simple_rnn_cell_35356/MatMul_1/ReadVariableOp3while/simple_rnn_cell_35356/MatMul_1/ReadVariableOp: 
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
:���������:

_output_shapes
: :

_output_shapes
: 
�>
�
J__inference_simple_rnn_6_layer_call_and_return_conditional_losses_72395856
inputs_0F
4simple_rnn_cell_35356_matmul_readvariableop_resource:C
5simple_rnn_cell_35356_biasadd_readvariableop_resource:H
6simple_rnn_cell_35356_matmul_1_readvariableop_resource:
identity��,simple_rnn_cell_35356/BiasAdd/ReadVariableOp�+simple_rnn_cell_35356/MatMul/ReadVariableOp�-simple_rnn_cell_35356/MatMul_1/ReadVariableOp�while=
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
:���������c
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
+simple_rnn_cell_35356/MatMul/ReadVariableOpReadVariableOp4simple_rnn_cell_35356_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
simple_rnn_cell_35356/MatMulMatMulstrided_slice_2:output:03simple_rnn_cell_35356/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
,simple_rnn_cell_35356/BiasAdd/ReadVariableOpReadVariableOp5simple_rnn_cell_35356_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
simple_rnn_cell_35356/BiasAddBiasAdd&simple_rnn_cell_35356/MatMul:product:04simple_rnn_cell_35356/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-simple_rnn_cell_35356/MatMul_1/ReadVariableOpReadVariableOp6simple_rnn_cell_35356_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0�
simple_rnn_cell_35356/MatMul_1MatMulzeros:output:05simple_rnn_cell_35356/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
simple_rnn_cell_35356/addAddV2&simple_rnn_cell_35356/BiasAdd:output:0(simple_rnn_cell_35356/MatMul_1:product:0*
T0*'
_output_shapes
:���������s
simple_rnn_cell_35356/TanhTanhsimple_rnn_cell_35356/add:z:0*
T0*'
_output_shapes
:���������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:04simple_rnn_cell_35356_matmul_readvariableop_resource5simple_rnn_cell_35356_biasadd_readvariableop_resource6simple_rnn_cell_35356_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_72395790*
condR
while_cond_72395789*8
output_shapes'
%: : : : :���������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������*
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
:���������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp-^simple_rnn_cell_35356/BiasAdd/ReadVariableOp,^simple_rnn_cell_35356/MatMul/ReadVariableOp.^simple_rnn_cell_35356/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2\
,simple_rnn_cell_35356/BiasAdd/ReadVariableOp,simple_rnn_cell_35356/BiasAdd/ReadVariableOp2Z
+simple_rnn_cell_35356/MatMul/ReadVariableOp+simple_rnn_cell_35356/MatMul/ReadVariableOp2^
-simple_rnn_cell_35356/MatMul_1/ReadVariableOp-simple_rnn_cell_35356/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
/__inference_sequential_6_layer_call_fn_72395464

inputs
unknown:
	unknown_0:
	unknown_1:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_sequential_6_layer_call_and_return_conditional_losses_72395248o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�:
�
 simple_rnn_6_while_body_723955176
2simple_rnn_6_while_simple_rnn_6_while_loop_counter<
8simple_rnn_6_while_simple_rnn_6_while_maximum_iterations"
simple_rnn_6_while_placeholder$
 simple_rnn_6_while_placeholder_1$
 simple_rnn_6_while_placeholder_25
1simple_rnn_6_while_simple_rnn_6_strided_slice_1_0q
msimple_rnn_6_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_6_tensorarrayunstack_tensorlistfromtensor_0[
Isimple_rnn_6_while_simple_rnn_cell_35356_matmul_readvariableop_resource_0:X
Jsimple_rnn_6_while_simple_rnn_cell_35356_biasadd_readvariableop_resource_0:]
Ksimple_rnn_6_while_simple_rnn_cell_35356_matmul_1_readvariableop_resource_0:
simple_rnn_6_while_identity!
simple_rnn_6_while_identity_1!
simple_rnn_6_while_identity_2!
simple_rnn_6_while_identity_3!
simple_rnn_6_while_identity_43
/simple_rnn_6_while_simple_rnn_6_strided_slice_1o
ksimple_rnn_6_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_6_tensorarrayunstack_tensorlistfromtensorY
Gsimple_rnn_6_while_simple_rnn_cell_35356_matmul_readvariableop_resource:V
Hsimple_rnn_6_while_simple_rnn_cell_35356_biasadd_readvariableop_resource:[
Isimple_rnn_6_while_simple_rnn_cell_35356_matmul_1_readvariableop_resource:��?simple_rnn_6/while/simple_rnn_cell_35356/BiasAdd/ReadVariableOp�>simple_rnn_6/while/simple_rnn_cell_35356/MatMul/ReadVariableOp�@simple_rnn_6/while/simple_rnn_cell_35356/MatMul_1/ReadVariableOp�
Dsimple_rnn_6/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
6simple_rnn_6/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_6_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_6_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_6_while_placeholderMsimple_rnn_6/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
>simple_rnn_6/while/simple_rnn_cell_35356/MatMul/ReadVariableOpReadVariableOpIsimple_rnn_6_while_simple_rnn_cell_35356_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0�
/simple_rnn_6/while/simple_rnn_cell_35356/MatMulMatMul=simple_rnn_6/while/TensorArrayV2Read/TensorListGetItem:item:0Fsimple_rnn_6/while/simple_rnn_cell_35356/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
?simple_rnn_6/while/simple_rnn_cell_35356/BiasAdd/ReadVariableOpReadVariableOpJsimple_rnn_6_while_simple_rnn_cell_35356_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0�
0simple_rnn_6/while/simple_rnn_cell_35356/BiasAddBiasAdd9simple_rnn_6/while/simple_rnn_cell_35356/MatMul:product:0Gsimple_rnn_6/while/simple_rnn_cell_35356/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
@simple_rnn_6/while/simple_rnn_cell_35356/MatMul_1/ReadVariableOpReadVariableOpKsimple_rnn_6_while_simple_rnn_cell_35356_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0�
1simple_rnn_6/while/simple_rnn_cell_35356/MatMul_1MatMul simple_rnn_6_while_placeholder_2Hsimple_rnn_6/while/simple_rnn_cell_35356/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
,simple_rnn_6/while/simple_rnn_cell_35356/addAddV29simple_rnn_6/while/simple_rnn_cell_35356/BiasAdd:output:0;simple_rnn_6/while/simple_rnn_cell_35356/MatMul_1:product:0*
T0*'
_output_shapes
:����������
-simple_rnn_6/while/simple_rnn_cell_35356/TanhTanh0simple_rnn_6/while/simple_rnn_cell_35356/add:z:0*
T0*'
_output_shapes
:����������
7simple_rnn_6/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_6_while_placeholder_1simple_rnn_6_while_placeholder1simple_rnn_6/while/simple_rnn_cell_35356/Tanh:y:0*
_output_shapes
: *
element_dtype0:���Z
simple_rnn_6/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_6/while/addAddV2simple_rnn_6_while_placeholder!simple_rnn_6/while/add/y:output:0*
T0*
_output_shapes
: \
simple_rnn_6/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_6/while/add_1AddV22simple_rnn_6_while_simple_rnn_6_while_loop_counter#simple_rnn_6/while/add_1/y:output:0*
T0*
_output_shapes
: �
simple_rnn_6/while/IdentityIdentitysimple_rnn_6/while/add_1:z:0^simple_rnn_6/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_6/while/Identity_1Identity8simple_rnn_6_while_simple_rnn_6_while_maximum_iterations^simple_rnn_6/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_6/while/Identity_2Identitysimple_rnn_6/while/add:z:0^simple_rnn_6/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_6/while/Identity_3IdentityGsimple_rnn_6/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_6/while/NoOp*
T0*
_output_shapes
: :����
simple_rnn_6/while/Identity_4Identity1simple_rnn_6/while/simple_rnn_cell_35356/Tanh:y:0^simple_rnn_6/while/NoOp*
T0*'
_output_shapes
:����������
simple_rnn_6/while/NoOpNoOp@^simple_rnn_6/while/simple_rnn_cell_35356/BiasAdd/ReadVariableOp?^simple_rnn_6/while/simple_rnn_cell_35356/MatMul/ReadVariableOpA^simple_rnn_6/while/simple_rnn_cell_35356/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "C
simple_rnn_6_while_identity$simple_rnn_6/while/Identity:output:0"G
simple_rnn_6_while_identity_1&simple_rnn_6/while/Identity_1:output:0"G
simple_rnn_6_while_identity_2&simple_rnn_6/while/Identity_2:output:0"G
simple_rnn_6_while_identity_3&simple_rnn_6/while/Identity_3:output:0"G
simple_rnn_6_while_identity_4&simple_rnn_6/while/Identity_4:output:0"d
/simple_rnn_6_while_simple_rnn_6_strided_slice_11simple_rnn_6_while_simple_rnn_6_strided_slice_1_0"�
Hsimple_rnn_6_while_simple_rnn_cell_35356_biasadd_readvariableop_resourceJsimple_rnn_6_while_simple_rnn_cell_35356_biasadd_readvariableop_resource_0"�
Isimple_rnn_6_while_simple_rnn_cell_35356_matmul_1_readvariableop_resourceKsimple_rnn_6_while_simple_rnn_cell_35356_matmul_1_readvariableop_resource_0"�
Gsimple_rnn_6_while_simple_rnn_cell_35356_matmul_readvariableop_resourceIsimple_rnn_6_while_simple_rnn_cell_35356_matmul_readvariableop_resource_0"�
ksimple_rnn_6_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_6_tensorarrayunstack_tensorlistfromtensormsimple_rnn_6_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_6_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������: : : : : 2�
?simple_rnn_6/while/simple_rnn_cell_35356/BiasAdd/ReadVariableOp?simple_rnn_6/while/simple_rnn_cell_35356/BiasAdd/ReadVariableOp2�
>simple_rnn_6/while/simple_rnn_cell_35356/MatMul/ReadVariableOp>simple_rnn_6/while/simple_rnn_cell_35356/MatMul/ReadVariableOp2�
@simple_rnn_6/while/simple_rnn_cell_35356/MatMul_1/ReadVariableOp@simple_rnn_6/while/simple_rnn_cell_35356/MatMul_1/ReadVariableOp: 
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
:���������:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_72395052
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_72395052___redundant_placeholder06
2while_while_cond_72395052___redundant_placeholder16
2while_while_cond_72395052___redundant_placeholder26
2while_while_cond_72395052___redundant_placeholder3
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
-: : : : :���������: ::::: 
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
:���������:

_output_shapes
: :

_output_shapes
:
�:
�
 simple_rnn_6_while_body_723956256
2simple_rnn_6_while_simple_rnn_6_while_loop_counter<
8simple_rnn_6_while_simple_rnn_6_while_maximum_iterations"
simple_rnn_6_while_placeholder$
 simple_rnn_6_while_placeholder_1$
 simple_rnn_6_while_placeholder_25
1simple_rnn_6_while_simple_rnn_6_strided_slice_1_0q
msimple_rnn_6_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_6_tensorarrayunstack_tensorlistfromtensor_0[
Isimple_rnn_6_while_simple_rnn_cell_35356_matmul_readvariableop_resource_0:X
Jsimple_rnn_6_while_simple_rnn_cell_35356_biasadd_readvariableop_resource_0:]
Ksimple_rnn_6_while_simple_rnn_cell_35356_matmul_1_readvariableop_resource_0:
simple_rnn_6_while_identity!
simple_rnn_6_while_identity_1!
simple_rnn_6_while_identity_2!
simple_rnn_6_while_identity_3!
simple_rnn_6_while_identity_43
/simple_rnn_6_while_simple_rnn_6_strided_slice_1o
ksimple_rnn_6_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_6_tensorarrayunstack_tensorlistfromtensorY
Gsimple_rnn_6_while_simple_rnn_cell_35356_matmul_readvariableop_resource:V
Hsimple_rnn_6_while_simple_rnn_cell_35356_biasadd_readvariableop_resource:[
Isimple_rnn_6_while_simple_rnn_cell_35356_matmul_1_readvariableop_resource:��?simple_rnn_6/while/simple_rnn_cell_35356/BiasAdd/ReadVariableOp�>simple_rnn_6/while/simple_rnn_cell_35356/MatMul/ReadVariableOp�@simple_rnn_6/while/simple_rnn_cell_35356/MatMul_1/ReadVariableOp�
Dsimple_rnn_6/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
6simple_rnn_6/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_6_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_6_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_6_while_placeholderMsimple_rnn_6/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
>simple_rnn_6/while/simple_rnn_cell_35356/MatMul/ReadVariableOpReadVariableOpIsimple_rnn_6_while_simple_rnn_cell_35356_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0�
/simple_rnn_6/while/simple_rnn_cell_35356/MatMulMatMul=simple_rnn_6/while/TensorArrayV2Read/TensorListGetItem:item:0Fsimple_rnn_6/while/simple_rnn_cell_35356/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
?simple_rnn_6/while/simple_rnn_cell_35356/BiasAdd/ReadVariableOpReadVariableOpJsimple_rnn_6_while_simple_rnn_cell_35356_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0�
0simple_rnn_6/while/simple_rnn_cell_35356/BiasAddBiasAdd9simple_rnn_6/while/simple_rnn_cell_35356/MatMul:product:0Gsimple_rnn_6/while/simple_rnn_cell_35356/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
@simple_rnn_6/while/simple_rnn_cell_35356/MatMul_1/ReadVariableOpReadVariableOpKsimple_rnn_6_while_simple_rnn_cell_35356_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0�
1simple_rnn_6/while/simple_rnn_cell_35356/MatMul_1MatMul simple_rnn_6_while_placeholder_2Hsimple_rnn_6/while/simple_rnn_cell_35356/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
,simple_rnn_6/while/simple_rnn_cell_35356/addAddV29simple_rnn_6/while/simple_rnn_cell_35356/BiasAdd:output:0;simple_rnn_6/while/simple_rnn_cell_35356/MatMul_1:product:0*
T0*'
_output_shapes
:����������
-simple_rnn_6/while/simple_rnn_cell_35356/TanhTanh0simple_rnn_6/while/simple_rnn_cell_35356/add:z:0*
T0*'
_output_shapes
:����������
7simple_rnn_6/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_6_while_placeholder_1simple_rnn_6_while_placeholder1simple_rnn_6/while/simple_rnn_cell_35356/Tanh:y:0*
_output_shapes
: *
element_dtype0:���Z
simple_rnn_6/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_6/while/addAddV2simple_rnn_6_while_placeholder!simple_rnn_6/while/add/y:output:0*
T0*
_output_shapes
: \
simple_rnn_6/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_6/while/add_1AddV22simple_rnn_6_while_simple_rnn_6_while_loop_counter#simple_rnn_6/while/add_1/y:output:0*
T0*
_output_shapes
: �
simple_rnn_6/while/IdentityIdentitysimple_rnn_6/while/add_1:z:0^simple_rnn_6/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_6/while/Identity_1Identity8simple_rnn_6_while_simple_rnn_6_while_maximum_iterations^simple_rnn_6/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_6/while/Identity_2Identitysimple_rnn_6/while/add:z:0^simple_rnn_6/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_6/while/Identity_3IdentityGsimple_rnn_6/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_6/while/NoOp*
T0*
_output_shapes
: :����
simple_rnn_6/while/Identity_4Identity1simple_rnn_6/while/simple_rnn_cell_35356/Tanh:y:0^simple_rnn_6/while/NoOp*
T0*'
_output_shapes
:����������
simple_rnn_6/while/NoOpNoOp@^simple_rnn_6/while/simple_rnn_cell_35356/BiasAdd/ReadVariableOp?^simple_rnn_6/while/simple_rnn_cell_35356/MatMul/ReadVariableOpA^simple_rnn_6/while/simple_rnn_cell_35356/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "C
simple_rnn_6_while_identity$simple_rnn_6/while/Identity:output:0"G
simple_rnn_6_while_identity_1&simple_rnn_6/while/Identity_1:output:0"G
simple_rnn_6_while_identity_2&simple_rnn_6/while/Identity_2:output:0"G
simple_rnn_6_while_identity_3&simple_rnn_6/while/Identity_3:output:0"G
simple_rnn_6_while_identity_4&simple_rnn_6/while/Identity_4:output:0"d
/simple_rnn_6_while_simple_rnn_6_strided_slice_11simple_rnn_6_while_simple_rnn_6_strided_slice_1_0"�
Hsimple_rnn_6_while_simple_rnn_cell_35356_biasadd_readvariableop_resourceJsimple_rnn_6_while_simple_rnn_cell_35356_biasadd_readvariableop_resource_0"�
Isimple_rnn_6_while_simple_rnn_cell_35356_matmul_1_readvariableop_resourceKsimple_rnn_6_while_simple_rnn_cell_35356_matmul_1_readvariableop_resource_0"�
Gsimple_rnn_6_while_simple_rnn_cell_35356_matmul_readvariableop_resourceIsimple_rnn_6_while_simple_rnn_cell_35356_matmul_readvariableop_resource_0"�
ksimple_rnn_6_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_6_tensorarrayunstack_tensorlistfromtensormsimple_rnn_6_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_6_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������: : : : : 2�
?simple_rnn_6/while/simple_rnn_cell_35356/BiasAdd/ReadVariableOp?simple_rnn_6/while/simple_rnn_cell_35356/BiasAdd/ReadVariableOp2�
>simple_rnn_6/while/simple_rnn_cell_35356/MatMul/ReadVariableOp>simple_rnn_6/while/simple_rnn_cell_35356/MatMul/ReadVariableOp2�
@simple_rnn_6/while/simple_rnn_cell_35356/MatMul_1/ReadVariableOp@simple_rnn_6/while/simple_rnn_cell_35356/MatMul_1/ReadVariableOp: 
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
:���������:

_output_shapes
: :

_output_shapes
: 
�	
�
J__inference_sequential_6_layer_call_and_return_conditional_losses_72395411

inputs'
simple_rnn_6_72395403:#
simple_rnn_6_72395405:'
simple_rnn_6_72395407:
identity��$simple_rnn_6/StatefulPartitionedCall�
$simple_rnn_6/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_6_72395403simple_rnn_6_72395405simple_rnn_6_72395407*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_simple_rnn_6_layer_call_and_return_conditional_losses_72395378|
IdentityIdentity-simple_rnn_6/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������m
NoOpNoOp%^simple_rnn_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 2L
$simple_rnn_6/StatefulPartitionedCall$simple_rnn_6/StatefulPartitionedCall:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�
�
S__inference_simple_rnn_cell_35356_layer_call_and_return_conditional_losses_72396225

inputs
states_00
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:���������G
TanhTanhadd:z:0*
T0*'
_output_shapes
:���������W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������:���������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������
"
_user_specified_name
states/0
�
�
S__inference_simple_rnn_cell_35356_layer_call_and_return_conditional_losses_72396242

inputs
states_00
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:���������G
TanhTanhadd:z:0*
T0*'
_output_shapes
:���������W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������:���������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������
"
_user_specified_name
states/0
�
�
-sequential_6_simple_rnn_6_while_cond_72394766P
Lsequential_6_simple_rnn_6_while_sequential_6_simple_rnn_6_while_loop_counterV
Rsequential_6_simple_rnn_6_while_sequential_6_simple_rnn_6_while_maximum_iterations/
+sequential_6_simple_rnn_6_while_placeholder1
-sequential_6_simple_rnn_6_while_placeholder_11
-sequential_6_simple_rnn_6_while_placeholder_2R
Nsequential_6_simple_rnn_6_while_less_sequential_6_simple_rnn_6_strided_slice_1j
fsequential_6_simple_rnn_6_while_sequential_6_simple_rnn_6_while_cond_72394766___redundant_placeholder0j
fsequential_6_simple_rnn_6_while_sequential_6_simple_rnn_6_while_cond_72394766___redundant_placeholder1j
fsequential_6_simple_rnn_6_while_sequential_6_simple_rnn_6_while_cond_72394766___redundant_placeholder2j
fsequential_6_simple_rnn_6_while_sequential_6_simple_rnn_6_while_cond_72394766___redundant_placeholder3,
(sequential_6_simple_rnn_6_while_identity
�
$sequential_6/simple_rnn_6/while/LessLess+sequential_6_simple_rnn_6_while_placeholderNsequential_6_simple_rnn_6_while_less_sequential_6_simple_rnn_6_strided_slice_1*
T0*
_output_shapes
: 
(sequential_6/simple_rnn_6/while/IdentityIdentity(sequential_6/simple_rnn_6/while/Less:z:0*
T0
*
_output_shapes
: "]
(sequential_6_simple_rnn_6_while_identity1sequential_6/simple_rnn_6/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������: ::::: 
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
:���������:

_output_shapes
: :

_output_shapes
:
�

�
8__inference_simple_rnn_cell_35356_layer_call_fn_72396208

inputs
states_0
unknown:
	unknown_0:
	unknown_1:
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
&:���������:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_simple_rnn_cell_35356_layer_call_and_return_conditional_losses_72395001o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������
"
_user_specified_name
states/0
�
�
&__inference_signature_wrapper_72395704
simple_rnn_6_input
unknown:
	unknown_0:
	unknown_1:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_6_inputunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference__wrapped_model_72394833o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
+
_output_shapes
:���������(
,
_user_specified_namesimple_rnn_6_input
�
�
/__inference_simple_rnn_6_layer_call_fn_72395726
inputs_0
unknown:
	unknown_0:
	unknown_1:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_simple_rnn_6_layer_call_and_return_conditional_losses_72395116o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
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
�"
�
while_body_72395053
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_08
&while_simple_rnn_cell_35356_72395075_0:4
&while_simple_rnn_cell_35356_72395077_0:8
&while_simple_rnn_cell_35356_72395079_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor6
$while_simple_rnn_cell_35356_72395075:2
$while_simple_rnn_cell_35356_72395077:6
$while_simple_rnn_cell_35356_72395079:��3while/simple_rnn_cell_35356/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
3while/simple_rnn_cell_35356/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2&while_simple_rnn_cell_35356_72395075_0&while_simple_rnn_cell_35356_72395077_0&while_simple_rnn_cell_35356_72395079_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_simple_rnn_cell_35356_layer_call_and_return_conditional_losses_72395001�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder<while/simple_rnn_cell_35356/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity<while/simple_rnn_cell_35356/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:����������

while/NoOpNoOp4^while/simple_rnn_cell_35356/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"N
$while_simple_rnn_cell_35356_72395075&while_simple_rnn_cell_35356_72395075_0"N
$while_simple_rnn_cell_35356_72395077&while_simple_rnn_cell_35356_72395077_0"N
$while_simple_rnn_cell_35356_72395079&while_simple_rnn_cell_35356_72395079_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������: : : : : 2j
3while/simple_rnn_cell_35356/StatefulPartitionedCall3while/simple_rnn_cell_35356/StatefulPartitionedCall: 
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
:���������:

_output_shapes
: :

_output_shapes
: 
�
�
/__inference_sequential_6_layer_call_fn_72395257
simple_rnn_6_input
unknown:
	unknown_0:
	unknown_1:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_6_inputunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_sequential_6_layer_call_and_return_conditional_losses_72395248o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
+
_output_shapes
:���������(
,
_user_specified_namesimple_rnn_6_input
�	
�
J__inference_sequential_6_layer_call_and_return_conditional_losses_72395248

inputs'
simple_rnn_6_72395240:#
simple_rnn_6_72395242:'
simple_rnn_6_72395244:
identity��$simple_rnn_6/StatefulPartitionedCall�
$simple_rnn_6/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_6_72395240simple_rnn_6_72395242simple_rnn_6_72395244*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_simple_rnn_6_layer_call_and_return_conditional_losses_72395239|
IdentityIdentity-simple_rnn_6/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������m
NoOpNoOp%^simple_rnn_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 2L
$simple_rnn_6/StatefulPartitionedCall$simple_rnn_6/StatefulPartitionedCall:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�
�
$__inference__traced_restore_72396293
file_prefixH
6assignvariableop_simple_rnn_6_simple_rnn_cell_6_kernel:T
Bassignvariableop_1_simple_rnn_6_simple_rnn_cell_6_recurrent_kernel:D
6assignvariableop_2_simple_rnn_6_simple_rnn_cell_6_bias:

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
AssignVariableOpAssignVariableOp6assignvariableop_simple_rnn_6_simple_rnn_cell_6_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpBassignvariableop_1_simple_rnn_6_simple_rnn_cell_6_recurrent_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp6assignvariableop_2_simple_rnn_6_simple_rnn_cell_6_biasIdentity_2:output:0"/device:CPU:0*
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
�

�
8__inference_simple_rnn_cell_35356_layer_call_fn_72396194

inputs
states_0
unknown:
	unknown_0:
	unknown_1:
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
&:���������:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_simple_rnn_cell_35356_layer_call_and_return_conditional_losses_72394881o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:QM
'
_output_shapes
:���������
"
_user_specified_name
states/0
�
�
while_cond_72395311
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_72395311___redundant_placeholder06
2while_while_cond_72395311___redundant_placeholder16
2while_while_cond_72395311___redundant_placeholder26
2while_while_cond_72395311___redundant_placeholder3
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
-: : : : :���������: ::::: 
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
:���������:

_output_shapes
: :

_output_shapes
:
�
�
/__inference_simple_rnn_6_layer_call_fn_72395737

inputs
unknown:
	unknown_0:
	unknown_1:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_simple_rnn_6_layer_call_and_return_conditional_losses_72395239o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�
�
/__inference_sequential_6_layer_call_fn_72395475

inputs
unknown:
	unknown_0:
	unknown_1:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_sequential_6_layer_call_and_return_conditional_losses_72395411o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�-
�
while_body_72395790
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0N
<while_simple_rnn_cell_35356_matmul_readvariableop_resource_0:K
=while_simple_rnn_cell_35356_biasadd_readvariableop_resource_0:P
>while_simple_rnn_cell_35356_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorL
:while_simple_rnn_cell_35356_matmul_readvariableop_resource:I
;while_simple_rnn_cell_35356_biasadd_readvariableop_resource:N
<while_simple_rnn_cell_35356_matmul_1_readvariableop_resource:��2while/simple_rnn_cell_35356/BiasAdd/ReadVariableOp�1while/simple_rnn_cell_35356/MatMul/ReadVariableOp�3while/simple_rnn_cell_35356/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
1while/simple_rnn_cell_35356/MatMul/ReadVariableOpReadVariableOp<while_simple_rnn_cell_35356_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0�
"while/simple_rnn_cell_35356/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:09while/simple_rnn_cell_35356/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
2while/simple_rnn_cell_35356/BiasAdd/ReadVariableOpReadVariableOp=while_simple_rnn_cell_35356_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0�
#while/simple_rnn_cell_35356/BiasAddBiasAdd,while/simple_rnn_cell_35356/MatMul:product:0:while/simple_rnn_cell_35356/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
3while/simple_rnn_cell_35356/MatMul_1/ReadVariableOpReadVariableOp>while_simple_rnn_cell_35356_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0�
$while/simple_rnn_cell_35356/MatMul_1MatMulwhile_placeholder_2;while/simple_rnn_cell_35356/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
while/simple_rnn_cell_35356/addAddV2,while/simple_rnn_cell_35356/BiasAdd:output:0.while/simple_rnn_cell_35356/MatMul_1:product:0*
T0*'
_output_shapes
:���������
 while/simple_rnn_cell_35356/TanhTanh#while/simple_rnn_cell_35356/add:z:0*
T0*'
_output_shapes
:����������
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder$while/simple_rnn_cell_35356/Tanh:y:0*
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
while/Identity_4Identity$while/simple_rnn_cell_35356/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:����������

while/NoOpNoOp3^while/simple_rnn_cell_35356/BiasAdd/ReadVariableOp2^while/simple_rnn_cell_35356/MatMul/ReadVariableOp4^while/simple_rnn_cell_35356/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"|
;while_simple_rnn_cell_35356_biasadd_readvariableop_resource=while_simple_rnn_cell_35356_biasadd_readvariableop_resource_0"~
<while_simple_rnn_cell_35356_matmul_1_readvariableop_resource>while_simple_rnn_cell_35356_matmul_1_readvariableop_resource_0"z
:while_simple_rnn_cell_35356_matmul_readvariableop_resource<while_simple_rnn_cell_35356_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������: : : : : 2h
2while/simple_rnn_cell_35356/BiasAdd/ReadVariableOp2while/simple_rnn_cell_35356/BiasAdd/ReadVariableOp2f
1while/simple_rnn_cell_35356/MatMul/ReadVariableOp1while/simple_rnn_cell_35356/MatMul/ReadVariableOp2j
3while/simple_rnn_cell_35356/MatMul_1/ReadVariableOp3while/simple_rnn_cell_35356/MatMul_1/ReadVariableOp: 
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
:���������:

_output_shapes
: :

_output_shapes
: 
�

�
 simple_rnn_6_while_cond_723956246
2simple_rnn_6_while_simple_rnn_6_while_loop_counter<
8simple_rnn_6_while_simple_rnn_6_while_maximum_iterations"
simple_rnn_6_while_placeholder$
 simple_rnn_6_while_placeholder_1$
 simple_rnn_6_while_placeholder_28
4simple_rnn_6_while_less_simple_rnn_6_strided_slice_1P
Lsimple_rnn_6_while_simple_rnn_6_while_cond_72395624___redundant_placeholder0P
Lsimple_rnn_6_while_simple_rnn_6_while_cond_72395624___redundant_placeholder1P
Lsimple_rnn_6_while_simple_rnn_6_while_cond_72395624___redundant_placeholder2P
Lsimple_rnn_6_while_simple_rnn_6_while_cond_72395624___redundant_placeholder3
simple_rnn_6_while_identity
�
simple_rnn_6/while/LessLesssimple_rnn_6_while_placeholder4simple_rnn_6_while_less_simple_rnn_6_strided_slice_1*
T0*
_output_shapes
: e
simple_rnn_6/while/IdentityIdentitysimple_rnn_6/while/Less:z:0*
T0
*
_output_shapes
: "C
simple_rnn_6_while_identity$simple_rnn_6/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������: ::::: 
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
:���������:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_72395897
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_72395897___redundant_placeholder06
2while_while_cond_72395897___redundant_placeholder16
2while_while_cond_72395897___redundant_placeholder26
2while_while_cond_72395897___redundant_placeholder3
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
-: : : : :���������: ::::: 
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
:���������:

_output_shapes
: :

_output_shapes
:
�-
�
while_body_72395173
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0N
<while_simple_rnn_cell_35356_matmul_readvariableop_resource_0:K
=while_simple_rnn_cell_35356_biasadd_readvariableop_resource_0:P
>while_simple_rnn_cell_35356_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorL
:while_simple_rnn_cell_35356_matmul_readvariableop_resource:I
;while_simple_rnn_cell_35356_biasadd_readvariableop_resource:N
<while_simple_rnn_cell_35356_matmul_1_readvariableop_resource:��2while/simple_rnn_cell_35356/BiasAdd/ReadVariableOp�1while/simple_rnn_cell_35356/MatMul/ReadVariableOp�3while/simple_rnn_cell_35356/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
1while/simple_rnn_cell_35356/MatMul/ReadVariableOpReadVariableOp<while_simple_rnn_cell_35356_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0�
"while/simple_rnn_cell_35356/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:09while/simple_rnn_cell_35356/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
2while/simple_rnn_cell_35356/BiasAdd/ReadVariableOpReadVariableOp=while_simple_rnn_cell_35356_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0�
#while/simple_rnn_cell_35356/BiasAddBiasAdd,while/simple_rnn_cell_35356/MatMul:product:0:while/simple_rnn_cell_35356/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
3while/simple_rnn_cell_35356/MatMul_1/ReadVariableOpReadVariableOp>while_simple_rnn_cell_35356_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0�
$while/simple_rnn_cell_35356/MatMul_1MatMulwhile_placeholder_2;while/simple_rnn_cell_35356/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
while/simple_rnn_cell_35356/addAddV2,while/simple_rnn_cell_35356/BiasAdd:output:0.while/simple_rnn_cell_35356/MatMul_1:product:0*
T0*'
_output_shapes
:���������
 while/simple_rnn_cell_35356/TanhTanh#while/simple_rnn_cell_35356/add:z:0*
T0*'
_output_shapes
:����������
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder$while/simple_rnn_cell_35356/Tanh:y:0*
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
while/Identity_4Identity$while/simple_rnn_cell_35356/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:����������

while/NoOpNoOp3^while/simple_rnn_cell_35356/BiasAdd/ReadVariableOp2^while/simple_rnn_cell_35356/MatMul/ReadVariableOp4^while/simple_rnn_cell_35356/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"|
;while_simple_rnn_cell_35356_biasadd_readvariableop_resource=while_simple_rnn_cell_35356_biasadd_readvariableop_resource_0"~
<while_simple_rnn_cell_35356_matmul_1_readvariableop_resource>while_simple_rnn_cell_35356_matmul_1_readvariableop_resource_0"z
:while_simple_rnn_cell_35356_matmul_readvariableop_resource<while_simple_rnn_cell_35356_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������: : : : : 2h
2while/simple_rnn_cell_35356/BiasAdd/ReadVariableOp2while/simple_rnn_cell_35356/BiasAdd/ReadVariableOp2f
1while/simple_rnn_cell_35356/MatMul/ReadVariableOp1while/simple_rnn_cell_35356/MatMul/ReadVariableOp2j
3while/simple_rnn_cell_35356/MatMul_1/ReadVariableOp3while/simple_rnn_cell_35356/MatMul_1/ReadVariableOp: 
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
:���������:

_output_shapes
: :

_output_shapes
: 
�-
�
while_body_72396114
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0N
<while_simple_rnn_cell_35356_matmul_readvariableop_resource_0:K
=while_simple_rnn_cell_35356_biasadd_readvariableop_resource_0:P
>while_simple_rnn_cell_35356_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorL
:while_simple_rnn_cell_35356_matmul_readvariableop_resource:I
;while_simple_rnn_cell_35356_biasadd_readvariableop_resource:N
<while_simple_rnn_cell_35356_matmul_1_readvariableop_resource:��2while/simple_rnn_cell_35356/BiasAdd/ReadVariableOp�1while/simple_rnn_cell_35356/MatMul/ReadVariableOp�3while/simple_rnn_cell_35356/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
1while/simple_rnn_cell_35356/MatMul/ReadVariableOpReadVariableOp<while_simple_rnn_cell_35356_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0�
"while/simple_rnn_cell_35356/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:09while/simple_rnn_cell_35356/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
2while/simple_rnn_cell_35356/BiasAdd/ReadVariableOpReadVariableOp=while_simple_rnn_cell_35356_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0�
#while/simple_rnn_cell_35356/BiasAddBiasAdd,while/simple_rnn_cell_35356/MatMul:product:0:while/simple_rnn_cell_35356/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
3while/simple_rnn_cell_35356/MatMul_1/ReadVariableOpReadVariableOp>while_simple_rnn_cell_35356_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0�
$while/simple_rnn_cell_35356/MatMul_1MatMulwhile_placeholder_2;while/simple_rnn_cell_35356/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
while/simple_rnn_cell_35356/addAddV2,while/simple_rnn_cell_35356/BiasAdd:output:0.while/simple_rnn_cell_35356/MatMul_1:product:0*
T0*'
_output_shapes
:���������
 while/simple_rnn_cell_35356/TanhTanh#while/simple_rnn_cell_35356/add:z:0*
T0*'
_output_shapes
:����������
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder$while/simple_rnn_cell_35356/Tanh:y:0*
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
while/Identity_4Identity$while/simple_rnn_cell_35356/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:����������

while/NoOpNoOp3^while/simple_rnn_cell_35356/BiasAdd/ReadVariableOp2^while/simple_rnn_cell_35356/MatMul/ReadVariableOp4^while/simple_rnn_cell_35356/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"|
;while_simple_rnn_cell_35356_biasadd_readvariableop_resource=while_simple_rnn_cell_35356_biasadd_readvariableop_resource_0"~
<while_simple_rnn_cell_35356_matmul_1_readvariableop_resource>while_simple_rnn_cell_35356_matmul_1_readvariableop_resource_0"z
:while_simple_rnn_cell_35356_matmul_readvariableop_resource<while_simple_rnn_cell_35356_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������: : : : : 2h
2while/simple_rnn_cell_35356/BiasAdd/ReadVariableOp2while/simple_rnn_cell_35356/BiasAdd/ReadVariableOp2f
1while/simple_rnn_cell_35356/MatMul/ReadVariableOp1while/simple_rnn_cell_35356/MatMul/ReadVariableOp2j
3while/simple_rnn_cell_35356/MatMul_1/ReadVariableOp3while/simple_rnn_cell_35356/MatMul_1/ReadVariableOp: 
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
:���������:

_output_shapes
: :

_output_shapes
: 
�>
�
J__inference_simple_rnn_6_layer_call_and_return_conditional_losses_72395378

inputsF
4simple_rnn_cell_35356_matmul_readvariableop_resource:C
5simple_rnn_cell_35356_biasadd_readvariableop_resource:H
6simple_rnn_cell_35356_matmul_1_readvariableop_resource:
identity��,simple_rnn_cell_35356/BiasAdd/ReadVariableOp�+simple_rnn_cell_35356/MatMul/ReadVariableOp�-simple_rnn_cell_35356/MatMul_1/ReadVariableOp�while;
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
:���������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:(���������D
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
+simple_rnn_cell_35356/MatMul/ReadVariableOpReadVariableOp4simple_rnn_cell_35356_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
simple_rnn_cell_35356/MatMulMatMulstrided_slice_2:output:03simple_rnn_cell_35356/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
,simple_rnn_cell_35356/BiasAdd/ReadVariableOpReadVariableOp5simple_rnn_cell_35356_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
simple_rnn_cell_35356/BiasAddBiasAdd&simple_rnn_cell_35356/MatMul:product:04simple_rnn_cell_35356/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-simple_rnn_cell_35356/MatMul_1/ReadVariableOpReadVariableOp6simple_rnn_cell_35356_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0�
simple_rnn_cell_35356/MatMul_1MatMulzeros:output:05simple_rnn_cell_35356/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
simple_rnn_cell_35356/addAddV2&simple_rnn_cell_35356/BiasAdd:output:0(simple_rnn_cell_35356/MatMul_1:product:0*
T0*'
_output_shapes
:���������s
simple_rnn_cell_35356/TanhTanhsimple_rnn_cell_35356/add:z:0*
T0*'
_output_shapes
:���������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:04simple_rnn_cell_35356_matmul_readvariableop_resource5simple_rnn_cell_35356_biasadd_readvariableop_resource6simple_rnn_cell_35356_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_72395312*
condR
while_cond_72395311*8
output_shapes'
%: : : : :���������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:(���������*
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
:���������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������(g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp-^simple_rnn_cell_35356/BiasAdd/ReadVariableOp,^simple_rnn_cell_35356/MatMul/ReadVariableOp.^simple_rnn_cell_35356/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 2\
,simple_rnn_cell_35356/BiasAdd/ReadVariableOp,simple_rnn_cell_35356/BiasAdd/ReadVariableOp2Z
+simple_rnn_cell_35356/MatMul/ReadVariableOp+simple_rnn_cell_35356/MatMul/ReadVariableOp2^
-simple_rnn_cell_35356/MatMul_1/ReadVariableOp-simple_rnn_cell_35356/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�
�
while_cond_72396005
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_72396005___redundant_placeholder06
2while_while_cond_72396005___redundant_placeholder16
2while_while_cond_72396005___redundant_placeholder26
2while_while_cond_72396005___redundant_placeholder3
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
-: : : : :���������: ::::: 
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
:���������:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_72395789
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_72395789___redundant_placeholder06
2while_while_cond_72395789___redundant_placeholder16
2while_while_cond_72395789___redundant_placeholder26
2while_while_cond_72395789___redundant_placeholder3
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
-: : : : :���������: ::::: 
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
:���������:

_output_shapes
: :

_output_shapes
:
�
�
/__inference_sequential_6_layer_call_fn_72395431
simple_rnn_6_input
unknown:
	unknown_0:
	unknown_1:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_6_inputunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_sequential_6_layer_call_and_return_conditional_losses_72395411o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
+
_output_shapes
:���������(
,
_user_specified_namesimple_rnn_6_input
�
�
while_cond_72395172
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_72395172___redundant_placeholder06
2while_while_cond_72395172___redundant_placeholder16
2while_while_cond_72395172___redundant_placeholder26
2while_while_cond_72395172___redundant_placeholder3
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
-: : : : :���������: ::::: 
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
:���������:

_output_shapes
: :

_output_shapes
:
�
�
!__inference__traced_save_72396274
file_prefixD
@savev2_simple_rnn_6_simple_rnn_cell_6_kernel_read_readvariableopN
Jsavev2_simple_rnn_6_simple_rnn_cell_6_recurrent_kernel_read_readvariableopB
>savev2_simple_rnn_6_simple_rnn_cell_6_bias_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0@savev2_simple_rnn_6_simple_rnn_cell_6_kernel_read_readvariableopJsavev2_simple_rnn_6_simple_rnn_cell_6_recurrent_kernel_read_readvariableop>savev2_simple_rnn_6_simple_rnn_cell_6_bias_read_readvariableopsavev2_const"/device:CPU:0*
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
�	
�
J__inference_sequential_6_layer_call_and_return_conditional_losses_72395442
simple_rnn_6_input'
simple_rnn_6_72395434:#
simple_rnn_6_72395436:'
simple_rnn_6_72395438:
identity��$simple_rnn_6/StatefulPartitionedCall�
$simple_rnn_6/StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_6_inputsimple_rnn_6_72395434simple_rnn_6_72395436simple_rnn_6_72395438*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_simple_rnn_6_layer_call_and_return_conditional_losses_72395239|
IdentityIdentity-simple_rnn_6/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������m
NoOpNoOp%^simple_rnn_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 2L
$simple_rnn_6/StatefulPartitionedCall$simple_rnn_6/StatefulPartitionedCall:_ [
+
_output_shapes
:���������(
,
_user_specified_namesimple_rnn_6_input
�F
�
-sequential_6_simple_rnn_6_while_body_72394767P
Lsequential_6_simple_rnn_6_while_sequential_6_simple_rnn_6_while_loop_counterV
Rsequential_6_simple_rnn_6_while_sequential_6_simple_rnn_6_while_maximum_iterations/
+sequential_6_simple_rnn_6_while_placeholder1
-sequential_6_simple_rnn_6_while_placeholder_11
-sequential_6_simple_rnn_6_while_placeholder_2O
Ksequential_6_simple_rnn_6_while_sequential_6_simple_rnn_6_strided_slice_1_0�
�sequential_6_simple_rnn_6_while_tensorarrayv2read_tensorlistgetitem_sequential_6_simple_rnn_6_tensorarrayunstack_tensorlistfromtensor_0h
Vsequential_6_simple_rnn_6_while_simple_rnn_cell_35356_matmul_readvariableop_resource_0:e
Wsequential_6_simple_rnn_6_while_simple_rnn_cell_35356_biasadd_readvariableop_resource_0:j
Xsequential_6_simple_rnn_6_while_simple_rnn_cell_35356_matmul_1_readvariableop_resource_0:,
(sequential_6_simple_rnn_6_while_identity.
*sequential_6_simple_rnn_6_while_identity_1.
*sequential_6_simple_rnn_6_while_identity_2.
*sequential_6_simple_rnn_6_while_identity_3.
*sequential_6_simple_rnn_6_while_identity_4M
Isequential_6_simple_rnn_6_while_sequential_6_simple_rnn_6_strided_slice_1�
�sequential_6_simple_rnn_6_while_tensorarrayv2read_tensorlistgetitem_sequential_6_simple_rnn_6_tensorarrayunstack_tensorlistfromtensorf
Tsequential_6_simple_rnn_6_while_simple_rnn_cell_35356_matmul_readvariableop_resource:c
Usequential_6_simple_rnn_6_while_simple_rnn_cell_35356_biasadd_readvariableop_resource:h
Vsequential_6_simple_rnn_6_while_simple_rnn_cell_35356_matmul_1_readvariableop_resource:��Lsequential_6/simple_rnn_6/while/simple_rnn_cell_35356/BiasAdd/ReadVariableOp�Ksequential_6/simple_rnn_6/while/simple_rnn_cell_35356/MatMul/ReadVariableOp�Msequential_6/simple_rnn_6/while/simple_rnn_cell_35356/MatMul_1/ReadVariableOp�
Qsequential_6/simple_rnn_6/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Csequential_6/simple_rnn_6/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_6_simple_rnn_6_while_tensorarrayv2read_tensorlistgetitem_sequential_6_simple_rnn_6_tensorarrayunstack_tensorlistfromtensor_0+sequential_6_simple_rnn_6_while_placeholderZsequential_6/simple_rnn_6/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
Ksequential_6/simple_rnn_6/while/simple_rnn_cell_35356/MatMul/ReadVariableOpReadVariableOpVsequential_6_simple_rnn_6_while_simple_rnn_cell_35356_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0�
<sequential_6/simple_rnn_6/while/simple_rnn_cell_35356/MatMulMatMulJsequential_6/simple_rnn_6/while/TensorArrayV2Read/TensorListGetItem:item:0Ssequential_6/simple_rnn_6/while/simple_rnn_cell_35356/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Lsequential_6/simple_rnn_6/while/simple_rnn_cell_35356/BiasAdd/ReadVariableOpReadVariableOpWsequential_6_simple_rnn_6_while_simple_rnn_cell_35356_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0�
=sequential_6/simple_rnn_6/while/simple_rnn_cell_35356/BiasAddBiasAddFsequential_6/simple_rnn_6/while/simple_rnn_cell_35356/MatMul:product:0Tsequential_6/simple_rnn_6/while/simple_rnn_cell_35356/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Msequential_6/simple_rnn_6/while/simple_rnn_cell_35356/MatMul_1/ReadVariableOpReadVariableOpXsequential_6_simple_rnn_6_while_simple_rnn_cell_35356_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0�
>sequential_6/simple_rnn_6/while/simple_rnn_cell_35356/MatMul_1MatMul-sequential_6_simple_rnn_6_while_placeholder_2Usequential_6/simple_rnn_6/while/simple_rnn_cell_35356/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
9sequential_6/simple_rnn_6/while/simple_rnn_cell_35356/addAddV2Fsequential_6/simple_rnn_6/while/simple_rnn_cell_35356/BiasAdd:output:0Hsequential_6/simple_rnn_6/while/simple_rnn_cell_35356/MatMul_1:product:0*
T0*'
_output_shapes
:����������
:sequential_6/simple_rnn_6/while/simple_rnn_cell_35356/TanhTanh=sequential_6/simple_rnn_6/while/simple_rnn_cell_35356/add:z:0*
T0*'
_output_shapes
:����������
Dsequential_6/simple_rnn_6/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem-sequential_6_simple_rnn_6_while_placeholder_1+sequential_6_simple_rnn_6_while_placeholder>sequential_6/simple_rnn_6/while/simple_rnn_cell_35356/Tanh:y:0*
_output_shapes
: *
element_dtype0:���g
%sequential_6/simple_rnn_6/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
#sequential_6/simple_rnn_6/while/addAddV2+sequential_6_simple_rnn_6_while_placeholder.sequential_6/simple_rnn_6/while/add/y:output:0*
T0*
_output_shapes
: i
'sequential_6/simple_rnn_6/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
%sequential_6/simple_rnn_6/while/add_1AddV2Lsequential_6_simple_rnn_6_while_sequential_6_simple_rnn_6_while_loop_counter0sequential_6/simple_rnn_6/while/add_1/y:output:0*
T0*
_output_shapes
: �
(sequential_6/simple_rnn_6/while/IdentityIdentity)sequential_6/simple_rnn_6/while/add_1:z:0%^sequential_6/simple_rnn_6/while/NoOp*
T0*
_output_shapes
: �
*sequential_6/simple_rnn_6/while/Identity_1IdentityRsequential_6_simple_rnn_6_while_sequential_6_simple_rnn_6_while_maximum_iterations%^sequential_6/simple_rnn_6/while/NoOp*
T0*
_output_shapes
: �
*sequential_6/simple_rnn_6/while/Identity_2Identity'sequential_6/simple_rnn_6/while/add:z:0%^sequential_6/simple_rnn_6/while/NoOp*
T0*
_output_shapes
: �
*sequential_6/simple_rnn_6/while/Identity_3IdentityTsequential_6/simple_rnn_6/while/TensorArrayV2Write/TensorListSetItem:output_handle:0%^sequential_6/simple_rnn_6/while/NoOp*
T0*
_output_shapes
: :����
*sequential_6/simple_rnn_6/while/Identity_4Identity>sequential_6/simple_rnn_6/while/simple_rnn_cell_35356/Tanh:y:0%^sequential_6/simple_rnn_6/while/NoOp*
T0*'
_output_shapes
:����������
$sequential_6/simple_rnn_6/while/NoOpNoOpM^sequential_6/simple_rnn_6/while/simple_rnn_cell_35356/BiasAdd/ReadVariableOpL^sequential_6/simple_rnn_6/while/simple_rnn_cell_35356/MatMul/ReadVariableOpN^sequential_6/simple_rnn_6/while/simple_rnn_cell_35356/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "]
(sequential_6_simple_rnn_6_while_identity1sequential_6/simple_rnn_6/while/Identity:output:0"a
*sequential_6_simple_rnn_6_while_identity_13sequential_6/simple_rnn_6/while/Identity_1:output:0"a
*sequential_6_simple_rnn_6_while_identity_23sequential_6/simple_rnn_6/while/Identity_2:output:0"a
*sequential_6_simple_rnn_6_while_identity_33sequential_6/simple_rnn_6/while/Identity_3:output:0"a
*sequential_6_simple_rnn_6_while_identity_43sequential_6/simple_rnn_6/while/Identity_4:output:0"�
Isequential_6_simple_rnn_6_while_sequential_6_simple_rnn_6_strided_slice_1Ksequential_6_simple_rnn_6_while_sequential_6_simple_rnn_6_strided_slice_1_0"�
Usequential_6_simple_rnn_6_while_simple_rnn_cell_35356_biasadd_readvariableop_resourceWsequential_6_simple_rnn_6_while_simple_rnn_cell_35356_biasadd_readvariableop_resource_0"�
Vsequential_6_simple_rnn_6_while_simple_rnn_cell_35356_matmul_1_readvariableop_resourceXsequential_6_simple_rnn_6_while_simple_rnn_cell_35356_matmul_1_readvariableop_resource_0"�
Tsequential_6_simple_rnn_6_while_simple_rnn_cell_35356_matmul_readvariableop_resourceVsequential_6_simple_rnn_6_while_simple_rnn_cell_35356_matmul_readvariableop_resource_0"�
�sequential_6_simple_rnn_6_while_tensorarrayv2read_tensorlistgetitem_sequential_6_simple_rnn_6_tensorarrayunstack_tensorlistfromtensor�sequential_6_simple_rnn_6_while_tensorarrayv2read_tensorlistgetitem_sequential_6_simple_rnn_6_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������: : : : : 2�
Lsequential_6/simple_rnn_6/while/simple_rnn_cell_35356/BiasAdd/ReadVariableOpLsequential_6/simple_rnn_6/while/simple_rnn_cell_35356/BiasAdd/ReadVariableOp2�
Ksequential_6/simple_rnn_6/while/simple_rnn_cell_35356/MatMul/ReadVariableOpKsequential_6/simple_rnn_6/while/simple_rnn_cell_35356/MatMul/ReadVariableOp2�
Msequential_6/simple_rnn_6/while/simple_rnn_cell_35356/MatMul_1/ReadVariableOpMsequential_6/simple_rnn_6/while/simple_rnn_cell_35356/MatMul_1/ReadVariableOp: 
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
:���������:

_output_shapes
: :

_output_shapes
: 
�"
�
while_body_72394894
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_08
&while_simple_rnn_cell_35356_72394916_0:4
&while_simple_rnn_cell_35356_72394918_0:8
&while_simple_rnn_cell_35356_72394920_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor6
$while_simple_rnn_cell_35356_72394916:2
$while_simple_rnn_cell_35356_72394918:6
$while_simple_rnn_cell_35356_72394920:��3while/simple_rnn_cell_35356/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
3while/simple_rnn_cell_35356/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2&while_simple_rnn_cell_35356_72394916_0&while_simple_rnn_cell_35356_72394918_0&while_simple_rnn_cell_35356_72394920_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_simple_rnn_cell_35356_layer_call_and_return_conditional_losses_72394881�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder<while/simple_rnn_cell_35356/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity<while/simple_rnn_cell_35356/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:����������

while/NoOpNoOp4^while/simple_rnn_cell_35356/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"N
$while_simple_rnn_cell_35356_72394916&while_simple_rnn_cell_35356_72394916_0"N
$while_simple_rnn_cell_35356_72394918&while_simple_rnn_cell_35356_72394918_0"N
$while_simple_rnn_cell_35356_72394920&while_simple_rnn_cell_35356_72394920_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������: : : : : 2j
3while/simple_rnn_cell_35356/StatefulPartitionedCall3while/simple_rnn_cell_35356/StatefulPartitionedCall: 
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
:���������:

_output_shapes
: :

_output_shapes
: 
�>
�
J__inference_simple_rnn_6_layer_call_and_return_conditional_losses_72395964
inputs_0F
4simple_rnn_cell_35356_matmul_readvariableop_resource:C
5simple_rnn_cell_35356_biasadd_readvariableop_resource:H
6simple_rnn_cell_35356_matmul_1_readvariableop_resource:
identity��,simple_rnn_cell_35356/BiasAdd/ReadVariableOp�+simple_rnn_cell_35356/MatMul/ReadVariableOp�-simple_rnn_cell_35356/MatMul_1/ReadVariableOp�while=
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
:���������c
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
+simple_rnn_cell_35356/MatMul/ReadVariableOpReadVariableOp4simple_rnn_cell_35356_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
simple_rnn_cell_35356/MatMulMatMulstrided_slice_2:output:03simple_rnn_cell_35356/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
,simple_rnn_cell_35356/BiasAdd/ReadVariableOpReadVariableOp5simple_rnn_cell_35356_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
simple_rnn_cell_35356/BiasAddBiasAdd&simple_rnn_cell_35356/MatMul:product:04simple_rnn_cell_35356/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-simple_rnn_cell_35356/MatMul_1/ReadVariableOpReadVariableOp6simple_rnn_cell_35356_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0�
simple_rnn_cell_35356/MatMul_1MatMulzeros:output:05simple_rnn_cell_35356/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
simple_rnn_cell_35356/addAddV2&simple_rnn_cell_35356/BiasAdd:output:0(simple_rnn_cell_35356/MatMul_1:product:0*
T0*'
_output_shapes
:���������s
simple_rnn_cell_35356/TanhTanhsimple_rnn_cell_35356/add:z:0*
T0*'
_output_shapes
:���������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:04simple_rnn_cell_35356_matmul_readvariableop_resource5simple_rnn_cell_35356_biasadd_readvariableop_resource6simple_rnn_cell_35356_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_72395898*
condR
while_cond_72395897*8
output_shapes'
%: : : : :���������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������*
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
:���������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp-^simple_rnn_cell_35356/BiasAdd/ReadVariableOp,^simple_rnn_cell_35356/MatMul/ReadVariableOp.^simple_rnn_cell_35356/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2\
,simple_rnn_cell_35356/BiasAdd/ReadVariableOp,simple_rnn_cell_35356/BiasAdd/ReadVariableOp2Z
+simple_rnn_cell_35356/MatMul/ReadVariableOp+simple_rnn_cell_35356/MatMul/ReadVariableOp2^
-simple_rnn_cell_35356/MatMul_1/ReadVariableOp-simple_rnn_cell_35356/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
S__inference_simple_rnn_cell_35356_layer_call_and_return_conditional_losses_72394881

inputs

states0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:���������G
TanhTanhadd:z:0*
T0*'
_output_shapes
:���������W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������:���������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_namestates
�4
�
J__inference_simple_rnn_6_layer_call_and_return_conditional_losses_72394957

inputs0
simple_rnn_cell_35356_72394882:,
simple_rnn_cell_35356_72394884:0
simple_rnn_cell_35356_72394886:
identity��-simple_rnn_cell_35356/StatefulPartitionedCall�while;
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
:���������c
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
-simple_rnn_cell_35356/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_35356_72394882simple_rnn_cell_35356_72394884simple_rnn_cell_35356_72394886*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_simple_rnn_cell_35356_layer_call_and_return_conditional_losses_72394881n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_35356_72394882simple_rnn_cell_35356_72394884simple_rnn_cell_35356_72394886*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_72394894*
condR
while_cond_72394893*8
output_shapes'
%: : : : :���������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������*
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
:���������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������~
NoOpNoOp.^simple_rnn_cell_35356/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2^
-simple_rnn_cell_35356/StatefulPartitionedCall-simple_rnn_cell_35356/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�-
�
while_body_72396006
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0N
<while_simple_rnn_cell_35356_matmul_readvariableop_resource_0:K
=while_simple_rnn_cell_35356_biasadd_readvariableop_resource_0:P
>while_simple_rnn_cell_35356_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorL
:while_simple_rnn_cell_35356_matmul_readvariableop_resource:I
;while_simple_rnn_cell_35356_biasadd_readvariableop_resource:N
<while_simple_rnn_cell_35356_matmul_1_readvariableop_resource:��2while/simple_rnn_cell_35356/BiasAdd/ReadVariableOp�1while/simple_rnn_cell_35356/MatMul/ReadVariableOp�3while/simple_rnn_cell_35356/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
1while/simple_rnn_cell_35356/MatMul/ReadVariableOpReadVariableOp<while_simple_rnn_cell_35356_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0�
"while/simple_rnn_cell_35356/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:09while/simple_rnn_cell_35356/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
2while/simple_rnn_cell_35356/BiasAdd/ReadVariableOpReadVariableOp=while_simple_rnn_cell_35356_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0�
#while/simple_rnn_cell_35356/BiasAddBiasAdd,while/simple_rnn_cell_35356/MatMul:product:0:while/simple_rnn_cell_35356/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
3while/simple_rnn_cell_35356/MatMul_1/ReadVariableOpReadVariableOp>while_simple_rnn_cell_35356_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0�
$while/simple_rnn_cell_35356/MatMul_1MatMulwhile_placeholder_2;while/simple_rnn_cell_35356/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
while/simple_rnn_cell_35356/addAddV2,while/simple_rnn_cell_35356/BiasAdd:output:0.while/simple_rnn_cell_35356/MatMul_1:product:0*
T0*'
_output_shapes
:���������
 while/simple_rnn_cell_35356/TanhTanh#while/simple_rnn_cell_35356/add:z:0*
T0*'
_output_shapes
:����������
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder$while/simple_rnn_cell_35356/Tanh:y:0*
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
while/Identity_4Identity$while/simple_rnn_cell_35356/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:����������

while/NoOpNoOp3^while/simple_rnn_cell_35356/BiasAdd/ReadVariableOp2^while/simple_rnn_cell_35356/MatMul/ReadVariableOp4^while/simple_rnn_cell_35356/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"|
;while_simple_rnn_cell_35356_biasadd_readvariableop_resource=while_simple_rnn_cell_35356_biasadd_readvariableop_resource_0"~
<while_simple_rnn_cell_35356_matmul_1_readvariableop_resource>while_simple_rnn_cell_35356_matmul_1_readvariableop_resource_0"z
:while_simple_rnn_cell_35356_matmul_readvariableop_resource<while_simple_rnn_cell_35356_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������: : : : : 2h
2while/simple_rnn_cell_35356/BiasAdd/ReadVariableOp2while/simple_rnn_cell_35356/BiasAdd/ReadVariableOp2f
1while/simple_rnn_cell_35356/MatMul/ReadVariableOp1while/simple_rnn_cell_35356/MatMul/ReadVariableOp2j
3while/simple_rnn_cell_35356/MatMul_1/ReadVariableOp3while/simple_rnn_cell_35356/MatMul_1/ReadVariableOp: 
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
:���������:

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_72396113
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_72396113___redundant_placeholder06
2while_while_cond_72396113___redundant_placeholder16
2while_while_cond_72396113___redundant_placeholder26
2while_while_cond_72396113___redundant_placeholder3
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
-: : : : :���������: ::::: 
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
:���������:

_output_shapes
: :

_output_shapes
:
�
�
/__inference_simple_rnn_6_layer_call_fn_72395715
inputs_0
unknown:
	unknown_0:
	unknown_1:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_simple_rnn_6_layer_call_and_return_conditional_losses_72394957o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
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
J__inference_simple_rnn_6_layer_call_and_return_conditional_losses_72395239

inputsF
4simple_rnn_cell_35356_matmul_readvariableop_resource:C
5simple_rnn_cell_35356_biasadd_readvariableop_resource:H
6simple_rnn_cell_35356_matmul_1_readvariableop_resource:
identity��,simple_rnn_cell_35356/BiasAdd/ReadVariableOp�+simple_rnn_cell_35356/MatMul/ReadVariableOp�-simple_rnn_cell_35356/MatMul_1/ReadVariableOp�while;
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
:���������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:(���������D
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
+simple_rnn_cell_35356/MatMul/ReadVariableOpReadVariableOp4simple_rnn_cell_35356_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
simple_rnn_cell_35356/MatMulMatMulstrided_slice_2:output:03simple_rnn_cell_35356/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
,simple_rnn_cell_35356/BiasAdd/ReadVariableOpReadVariableOp5simple_rnn_cell_35356_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
simple_rnn_cell_35356/BiasAddBiasAdd&simple_rnn_cell_35356/MatMul:product:04simple_rnn_cell_35356/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-simple_rnn_cell_35356/MatMul_1/ReadVariableOpReadVariableOp6simple_rnn_cell_35356_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0�
simple_rnn_cell_35356/MatMul_1MatMulzeros:output:05simple_rnn_cell_35356/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
simple_rnn_cell_35356/addAddV2&simple_rnn_cell_35356/BiasAdd:output:0(simple_rnn_cell_35356/MatMul_1:product:0*
T0*'
_output_shapes
:���������s
simple_rnn_cell_35356/TanhTanhsimple_rnn_cell_35356/add:z:0*
T0*'
_output_shapes
:���������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:04simple_rnn_cell_35356_matmul_readvariableop_resource5simple_rnn_cell_35356_biasadd_readvariableop_resource6simple_rnn_cell_35356_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_72395173*
condR
while_cond_72395172*8
output_shapes'
%: : : : :���������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:(���������*
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
:���������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:���������(g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp-^simple_rnn_cell_35356/BiasAdd/ReadVariableOp,^simple_rnn_cell_35356/MatMul/ReadVariableOp.^simple_rnn_cell_35356/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 2\
,simple_rnn_cell_35356/BiasAdd/ReadVariableOp,simple_rnn_cell_35356/BiasAdd/ReadVariableOp2Z
+simple_rnn_cell_35356/MatMul/ReadVariableOp+simple_rnn_cell_35356/MatMul/ReadVariableOp2^
-simple_rnn_cell_35356/MatMul_1/ReadVariableOp-simple_rnn_cell_35356/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�
�
/__inference_simple_rnn_6_layer_call_fn_72395748

inputs
unknown:
	unknown_0:
	unknown_1:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_simple_rnn_6_layer_call_and_return_conditional_losses_72395378o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�

�
 simple_rnn_6_while_cond_723955166
2simple_rnn_6_while_simple_rnn_6_while_loop_counter<
8simple_rnn_6_while_simple_rnn_6_while_maximum_iterations"
simple_rnn_6_while_placeholder$
 simple_rnn_6_while_placeholder_1$
 simple_rnn_6_while_placeholder_28
4simple_rnn_6_while_less_simple_rnn_6_strided_slice_1P
Lsimple_rnn_6_while_simple_rnn_6_while_cond_72395516___redundant_placeholder0P
Lsimple_rnn_6_while_simple_rnn_6_while_cond_72395516___redundant_placeholder1P
Lsimple_rnn_6_while_simple_rnn_6_while_cond_72395516___redundant_placeholder2P
Lsimple_rnn_6_while_simple_rnn_6_while_cond_72395516___redundant_placeholder3
simple_rnn_6_while_identity
�
simple_rnn_6/while/LessLesssimple_rnn_6_while_placeholder4simple_rnn_6_while_less_simple_rnn_6_strided_slice_1*
T0*
_output_shapes
: e
simple_rnn_6/while/IdentityIdentitysimple_rnn_6/while/Less:z:0*
T0
*
_output_shapes
: "C
simple_rnn_6_while_identity$simple_rnn_6/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :���������: ::::: 
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
:���������:

_output_shapes
: :

_output_shapes
:
�J
�
J__inference_sequential_6_layer_call_and_return_conditional_losses_72395583

inputsS
Asimple_rnn_6_simple_rnn_cell_35356_matmul_readvariableop_resource:P
Bsimple_rnn_6_simple_rnn_cell_35356_biasadd_readvariableop_resource:U
Csimple_rnn_6_simple_rnn_cell_35356_matmul_1_readvariableop_resource:
identity��9simple_rnn_6/simple_rnn_cell_35356/BiasAdd/ReadVariableOp�8simple_rnn_6/simple_rnn_cell_35356/MatMul/ReadVariableOp�:simple_rnn_6/simple_rnn_cell_35356/MatMul_1/ReadVariableOp�simple_rnn_6/whileH
simple_rnn_6/ShapeShapeinputs*
T0*
_output_shapes
:j
 simple_rnn_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_6/strided_sliceStridedSlicesimple_rnn_6/Shape:output:0)simple_rnn_6/strided_slice/stack:output:0+simple_rnn_6/strided_slice/stack_1:output:0+simple_rnn_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
simple_rnn_6/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_6/zeros/packedPack#simple_rnn_6/strided_slice:output:0$simple_rnn_6/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
simple_rnn_6/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
simple_rnn_6/zerosFill"simple_rnn_6/zeros/packed:output:0!simple_rnn_6/zeros/Const:output:0*
T0*'
_output_shapes
:���������p
simple_rnn_6/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_6/transpose	Transposeinputs$simple_rnn_6/transpose/perm:output:0*
T0*+
_output_shapes
:(���������^
simple_rnn_6/Shape_1Shapesimple_rnn_6/transpose:y:0*
T0*
_output_shapes
:l
"simple_rnn_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_6/strided_slice_1StridedSlicesimple_rnn_6/Shape_1:output:0+simple_rnn_6/strided_slice_1/stack:output:0-simple_rnn_6/strided_slice_1/stack_1:output:0-simple_rnn_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(simple_rnn_6/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
simple_rnn_6/TensorArrayV2TensorListReserve1simple_rnn_6/TensorArrayV2/element_shape:output:0%simple_rnn_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Bsimple_rnn_6/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
4simple_rnn_6/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_6/transpose:y:0Ksimple_rnn_6/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���l
"simple_rnn_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_6/strided_slice_2StridedSlicesimple_rnn_6/transpose:y:0+simple_rnn_6/strided_slice_2/stack:output:0-simple_rnn_6/strided_slice_2/stack_1:output:0-simple_rnn_6/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
8simple_rnn_6/simple_rnn_cell_35356/MatMul/ReadVariableOpReadVariableOpAsimple_rnn_6_simple_rnn_cell_35356_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
)simple_rnn_6/simple_rnn_cell_35356/MatMulMatMul%simple_rnn_6/strided_slice_2:output:0@simple_rnn_6/simple_rnn_cell_35356/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
9simple_rnn_6/simple_rnn_cell_35356/BiasAdd/ReadVariableOpReadVariableOpBsimple_rnn_6_simple_rnn_cell_35356_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
*simple_rnn_6/simple_rnn_cell_35356/BiasAddBiasAdd3simple_rnn_6/simple_rnn_cell_35356/MatMul:product:0Asimple_rnn_6/simple_rnn_cell_35356/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
:simple_rnn_6/simple_rnn_cell_35356/MatMul_1/ReadVariableOpReadVariableOpCsimple_rnn_6_simple_rnn_cell_35356_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0�
+simple_rnn_6/simple_rnn_cell_35356/MatMul_1MatMulsimple_rnn_6/zeros:output:0Bsimple_rnn_6/simple_rnn_cell_35356/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
&simple_rnn_6/simple_rnn_cell_35356/addAddV23simple_rnn_6/simple_rnn_cell_35356/BiasAdd:output:05simple_rnn_6/simple_rnn_cell_35356/MatMul_1:product:0*
T0*'
_output_shapes
:����������
'simple_rnn_6/simple_rnn_cell_35356/TanhTanh*simple_rnn_6/simple_rnn_cell_35356/add:z:0*
T0*'
_output_shapes
:���������{
*simple_rnn_6/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
simple_rnn_6/TensorArrayV2_1TensorListReserve3simple_rnn_6/TensorArrayV2_1/element_shape:output:0%simple_rnn_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���S
simple_rnn_6/timeConst*
_output_shapes
: *
dtype0*
value	B : p
%simple_rnn_6/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������a
simple_rnn_6/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
simple_rnn_6/whileWhile(simple_rnn_6/while/loop_counter:output:0.simple_rnn_6/while/maximum_iterations:output:0simple_rnn_6/time:output:0%simple_rnn_6/TensorArrayV2_1:handle:0simple_rnn_6/zeros:output:0%simple_rnn_6/strided_slice_1:output:0Dsimple_rnn_6/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asimple_rnn_6_simple_rnn_cell_35356_matmul_readvariableop_resourceBsimple_rnn_6_simple_rnn_cell_35356_biasadd_readvariableop_resourceCsimple_rnn_6_simple_rnn_cell_35356_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *,
body$R"
 simple_rnn_6_while_body_72395517*,
cond$R"
 simple_rnn_6_while_cond_72395516*8
output_shapes'
%: : : : :���������: : : : : *
parallel_iterations �
=simple_rnn_6/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
/simple_rnn_6/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_6/while:output:3Fsimple_rnn_6/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:(���������*
element_dtype0u
"simple_rnn_6/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������n
$simple_rnn_6/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_6/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_6/strided_slice_3StridedSlice8simple_rnn_6/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_6/strided_slice_3/stack:output:0-simple_rnn_6/strided_slice_3/stack_1:output:0-simple_rnn_6/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_maskr
simple_rnn_6/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_6/transpose_1	Transpose8simple_rnn_6/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_6/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������(t
IdentityIdentity%simple_rnn_6/strided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp:^simple_rnn_6/simple_rnn_cell_35356/BiasAdd/ReadVariableOp9^simple_rnn_6/simple_rnn_cell_35356/MatMul/ReadVariableOp;^simple_rnn_6/simple_rnn_cell_35356/MatMul_1/ReadVariableOp^simple_rnn_6/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 2v
9simple_rnn_6/simple_rnn_cell_35356/BiasAdd/ReadVariableOp9simple_rnn_6/simple_rnn_cell_35356/BiasAdd/ReadVariableOp2t
8simple_rnn_6/simple_rnn_cell_35356/MatMul/ReadVariableOp8simple_rnn_6/simple_rnn_cell_35356/MatMul/ReadVariableOp2x
:simple_rnn_6/simple_rnn_cell_35356/MatMul_1/ReadVariableOp:simple_rnn_6/simple_rnn_cell_35356/MatMul_1/ReadVariableOp2(
simple_rnn_6/whilesimple_rnn_6/while:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�
�
S__inference_simple_rnn_cell_35356_layer_call_and_return_conditional_losses_72395001

inputs

states0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:2
 matmul_1_readvariableop_resource:
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:���������G
TanhTanhadd:z:0*
T0*'
_output_shapes
:���������W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������Y

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:���������:���������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_namestates
�-
�
while_body_72395312
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0N
<while_simple_rnn_cell_35356_matmul_readvariableop_resource_0:K
=while_simple_rnn_cell_35356_biasadd_readvariableop_resource_0:P
>while_simple_rnn_cell_35356_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorL
:while_simple_rnn_cell_35356_matmul_readvariableop_resource:I
;while_simple_rnn_cell_35356_biasadd_readvariableop_resource:N
<while_simple_rnn_cell_35356_matmul_1_readvariableop_resource:��2while/simple_rnn_cell_35356/BiasAdd/ReadVariableOp�1while/simple_rnn_cell_35356/MatMul/ReadVariableOp�3while/simple_rnn_cell_35356/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
1while/simple_rnn_cell_35356/MatMul/ReadVariableOpReadVariableOp<while_simple_rnn_cell_35356_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0�
"while/simple_rnn_cell_35356/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:09while/simple_rnn_cell_35356/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
2while/simple_rnn_cell_35356/BiasAdd/ReadVariableOpReadVariableOp=while_simple_rnn_cell_35356_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0�
#while/simple_rnn_cell_35356/BiasAddBiasAdd,while/simple_rnn_cell_35356/MatMul:product:0:while/simple_rnn_cell_35356/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
3while/simple_rnn_cell_35356/MatMul_1/ReadVariableOpReadVariableOp>while_simple_rnn_cell_35356_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0�
$while/simple_rnn_cell_35356/MatMul_1MatMulwhile_placeholder_2;while/simple_rnn_cell_35356/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
while/simple_rnn_cell_35356/addAddV2,while/simple_rnn_cell_35356/BiasAdd:output:0.while/simple_rnn_cell_35356/MatMul_1:product:0*
T0*'
_output_shapes
:���������
 while/simple_rnn_cell_35356/TanhTanh#while/simple_rnn_cell_35356/add:z:0*
T0*'
_output_shapes
:����������
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder$while/simple_rnn_cell_35356/Tanh:y:0*
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
while/Identity_4Identity$while/simple_rnn_cell_35356/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:����������

while/NoOpNoOp3^while/simple_rnn_cell_35356/BiasAdd/ReadVariableOp2^while/simple_rnn_cell_35356/MatMul/ReadVariableOp4^while/simple_rnn_cell_35356/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"|
;while_simple_rnn_cell_35356_biasadd_readvariableop_resource=while_simple_rnn_cell_35356_biasadd_readvariableop_resource_0"~
<while_simple_rnn_cell_35356_matmul_1_readvariableop_resource>while_simple_rnn_cell_35356_matmul_1_readvariableop_resource_0"z
:while_simple_rnn_cell_35356_matmul_readvariableop_resource<while_simple_rnn_cell_35356_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������: : : : : 2h
2while/simple_rnn_cell_35356/BiasAdd/ReadVariableOp2while/simple_rnn_cell_35356/BiasAdd/ReadVariableOp2f
1while/simple_rnn_cell_35356/MatMul/ReadVariableOp1while/simple_rnn_cell_35356/MatMul/ReadVariableOp2j
3while/simple_rnn_cell_35356/MatMul_1/ReadVariableOp3while/simple_rnn_cell_35356/MatMul_1/ReadVariableOp: 
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
:���������:

_output_shapes
: :

_output_shapes
: 
�J
�
J__inference_sequential_6_layer_call_and_return_conditional_losses_72395691

inputsS
Asimple_rnn_6_simple_rnn_cell_35356_matmul_readvariableop_resource:P
Bsimple_rnn_6_simple_rnn_cell_35356_biasadd_readvariableop_resource:U
Csimple_rnn_6_simple_rnn_cell_35356_matmul_1_readvariableop_resource:
identity��9simple_rnn_6/simple_rnn_cell_35356/BiasAdd/ReadVariableOp�8simple_rnn_6/simple_rnn_cell_35356/MatMul/ReadVariableOp�:simple_rnn_6/simple_rnn_cell_35356/MatMul_1/ReadVariableOp�simple_rnn_6/whileH
simple_rnn_6/ShapeShapeinputs*
T0*
_output_shapes
:j
 simple_rnn_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_6/strided_sliceStridedSlicesimple_rnn_6/Shape:output:0)simple_rnn_6/strided_slice/stack:output:0+simple_rnn_6/strided_slice/stack_1:output:0+simple_rnn_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
simple_rnn_6/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_6/zeros/packedPack#simple_rnn_6/strided_slice:output:0$simple_rnn_6/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
simple_rnn_6/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
simple_rnn_6/zerosFill"simple_rnn_6/zeros/packed:output:0!simple_rnn_6/zeros/Const:output:0*
T0*'
_output_shapes
:���������p
simple_rnn_6/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_6/transpose	Transposeinputs$simple_rnn_6/transpose/perm:output:0*
T0*+
_output_shapes
:(���������^
simple_rnn_6/Shape_1Shapesimple_rnn_6/transpose:y:0*
T0*
_output_shapes
:l
"simple_rnn_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_6/strided_slice_1StridedSlicesimple_rnn_6/Shape_1:output:0+simple_rnn_6/strided_slice_1/stack:output:0-simple_rnn_6/strided_slice_1/stack_1:output:0-simple_rnn_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(simple_rnn_6/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
simple_rnn_6/TensorArrayV2TensorListReserve1simple_rnn_6/TensorArrayV2/element_shape:output:0%simple_rnn_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Bsimple_rnn_6/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
4simple_rnn_6/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_6/transpose:y:0Ksimple_rnn_6/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���l
"simple_rnn_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_6/strided_slice_2StridedSlicesimple_rnn_6/transpose:y:0+simple_rnn_6/strided_slice_2/stack:output:0-simple_rnn_6/strided_slice_2/stack_1:output:0-simple_rnn_6/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
8simple_rnn_6/simple_rnn_cell_35356/MatMul/ReadVariableOpReadVariableOpAsimple_rnn_6_simple_rnn_cell_35356_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
)simple_rnn_6/simple_rnn_cell_35356/MatMulMatMul%simple_rnn_6/strided_slice_2:output:0@simple_rnn_6/simple_rnn_cell_35356/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
9simple_rnn_6/simple_rnn_cell_35356/BiasAdd/ReadVariableOpReadVariableOpBsimple_rnn_6_simple_rnn_cell_35356_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
*simple_rnn_6/simple_rnn_cell_35356/BiasAddBiasAdd3simple_rnn_6/simple_rnn_cell_35356/MatMul:product:0Asimple_rnn_6/simple_rnn_cell_35356/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
:simple_rnn_6/simple_rnn_cell_35356/MatMul_1/ReadVariableOpReadVariableOpCsimple_rnn_6_simple_rnn_cell_35356_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0�
+simple_rnn_6/simple_rnn_cell_35356/MatMul_1MatMulsimple_rnn_6/zeros:output:0Bsimple_rnn_6/simple_rnn_cell_35356/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
&simple_rnn_6/simple_rnn_cell_35356/addAddV23simple_rnn_6/simple_rnn_cell_35356/BiasAdd:output:05simple_rnn_6/simple_rnn_cell_35356/MatMul_1:product:0*
T0*'
_output_shapes
:����������
'simple_rnn_6/simple_rnn_cell_35356/TanhTanh*simple_rnn_6/simple_rnn_cell_35356/add:z:0*
T0*'
_output_shapes
:���������{
*simple_rnn_6/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
simple_rnn_6/TensorArrayV2_1TensorListReserve3simple_rnn_6/TensorArrayV2_1/element_shape:output:0%simple_rnn_6/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���S
simple_rnn_6/timeConst*
_output_shapes
: *
dtype0*
value	B : p
%simple_rnn_6/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������a
simple_rnn_6/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
simple_rnn_6/whileWhile(simple_rnn_6/while/loop_counter:output:0.simple_rnn_6/while/maximum_iterations:output:0simple_rnn_6/time:output:0%simple_rnn_6/TensorArrayV2_1:handle:0simple_rnn_6/zeros:output:0%simple_rnn_6/strided_slice_1:output:0Dsimple_rnn_6/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asimple_rnn_6_simple_rnn_cell_35356_matmul_readvariableop_resourceBsimple_rnn_6_simple_rnn_cell_35356_biasadd_readvariableop_resourceCsimple_rnn_6_simple_rnn_cell_35356_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :���������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *,
body$R"
 simple_rnn_6_while_body_72395625*,
cond$R"
 simple_rnn_6_while_cond_72395624*8
output_shapes'
%: : : : :���������: : : : : *
parallel_iterations �
=simple_rnn_6/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
/simple_rnn_6/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_6/while:output:3Fsimple_rnn_6/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:(���������*
element_dtype0u
"simple_rnn_6/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������n
$simple_rnn_6/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_6/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_6/strided_slice_3StridedSlice8simple_rnn_6/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_6/strided_slice_3/stack:output:0-simple_rnn_6/strided_slice_3/stack_1:output:0-simple_rnn_6/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_maskr
simple_rnn_6/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_6/transpose_1	Transpose8simple_rnn_6/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_6/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������(t
IdentityIdentity%simple_rnn_6/strided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp:^simple_rnn_6/simple_rnn_cell_35356/BiasAdd/ReadVariableOp9^simple_rnn_6/simple_rnn_cell_35356/MatMul/ReadVariableOp;^simple_rnn_6/simple_rnn_cell_35356/MatMul_1/ReadVariableOp^simple_rnn_6/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 2v
9simple_rnn_6/simple_rnn_cell_35356/BiasAdd/ReadVariableOp9simple_rnn_6/simple_rnn_cell_35356/BiasAdd/ReadVariableOp2t
8simple_rnn_6/simple_rnn_cell_35356/MatMul/ReadVariableOp8simple_rnn_6/simple_rnn_cell_35356/MatMul/ReadVariableOp2x
:simple_rnn_6/simple_rnn_cell_35356/MatMul_1/ReadVariableOp:simple_rnn_6/simple_rnn_cell_35356/MatMul_1/ReadVariableOp2(
simple_rnn_6/whilesimple_rnn_6/while:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�
�
while_cond_72394893
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_72394893___redundant_placeholder06
2while_while_cond_72394893___redundant_placeholder16
2while_while_cond_72394893___redundant_placeholder26
2while_while_cond_72394893___redundant_placeholder3
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
-: : : : :���������: ::::: 
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
:���������:

_output_shapes
: :

_output_shapes
:"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
U
simple_rnn_6_input?
$serving_default_simple_rnn_6_input:0���������(@
simple_rnn_60
StatefulPartitionedCall:0���������tensorflow/serving/predict:�P
�
layer_with_weights-0
layer-0

signatures
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature"
_tf_keras_sequential
�
cell

state_spec
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
,
serving_default"
signature_map
 "
trackable_dict_wrapper
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses"
_generic_user_object
�2�
/__inference_sequential_6_layer_call_fn_72395257
/__inference_sequential_6_layer_call_fn_72395464
/__inference_sequential_6_layer_call_fn_72395475
/__inference_sequential_6_layer_call_fn_72395431�
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
J__inference_sequential_6_layer_call_and_return_conditional_losses_72395583
J__inference_sequential_6_layer_call_and_return_conditional_losses_72395691
J__inference_sequential_6_layer_call_and_return_conditional_losses_72395442
J__inference_sequential_6_layer_call_and_return_conditional_losses_72395453�
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
#__inference__wrapped_model_72394833simple_rnn_6_input"�
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
�

kernel
recurrent_kernel
bias
#_self_saveable_object_factories
	variables
trainable_variables
 regularization_losses
!	keras_api
"_random_generator
#__call__
*$&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
�

%states
&non_trainable_variables

'layers
(metrics
)layer_regularization_losses
*layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�2�
/__inference_simple_rnn_6_layer_call_fn_72395715
/__inference_simple_rnn_6_layer_call_fn_72395726
/__inference_simple_rnn_6_layer_call_fn_72395737
/__inference_simple_rnn_6_layer_call_fn_72395748�
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
J__inference_simple_rnn_6_layer_call_and_return_conditional_losses_72395856
J__inference_simple_rnn_6_layer_call_and_return_conditional_losses_72395964
J__inference_simple_rnn_6_layer_call_and_return_conditional_losses_72396072
J__inference_simple_rnn_6_layer_call_and_return_conditional_losses_72396180�
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
�B�
&__inference_signature_wrapper_72395704simple_rnn_6_input"�
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
7:52%simple_rnn_6/simple_rnn_cell_6/kernel
A:?2/simple_rnn_6/simple_rnn_cell_6/recurrent_kernel
1:/2#simple_rnn_6/simple_rnn_cell_6/bias
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
 "
trackable_dict_wrapper
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
+non_trainable_variables

,layers
-metrics
.layer_regularization_losses
/layer_metrics
	variables
trainable_variables
 regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
�2�
8__inference_simple_rnn_cell_35356_layer_call_fn_72396194
8__inference_simple_rnn_cell_35356_layer_call_fn_72396208�
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
S__inference_simple_rnn_cell_35356_layer_call_and_return_conditional_losses_72396225
S__inference_simple_rnn_cell_35356_layer_call_and_return_conditional_losses_72396242�
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
0"
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
#__inference__wrapped_model_72394833�?�<
5�2
0�-
simple_rnn_6_input���������(
� ";�8
6
simple_rnn_6&�#
simple_rnn_6����������
J__inference_sequential_6_layer_call_and_return_conditional_losses_72395442uG�D
=�:
0�-
simple_rnn_6_input���������(
p 

 
� "%�"
�
0���������
� �
J__inference_sequential_6_layer_call_and_return_conditional_losses_72395453uG�D
=�:
0�-
simple_rnn_6_input���������(
p

 
� "%�"
�
0���������
� �
J__inference_sequential_6_layer_call_and_return_conditional_losses_72395583i;�8
1�.
$�!
inputs���������(
p 

 
� "%�"
�
0���������
� �
J__inference_sequential_6_layer_call_and_return_conditional_losses_72395691i;�8
1�.
$�!
inputs���������(
p

 
� "%�"
�
0���������
� �
/__inference_sequential_6_layer_call_fn_72395257hG�D
=�:
0�-
simple_rnn_6_input���������(
p 

 
� "�����������
/__inference_sequential_6_layer_call_fn_72395431hG�D
=�:
0�-
simple_rnn_6_input���������(
p

 
� "�����������
/__inference_sequential_6_layer_call_fn_72395464\;�8
1�.
$�!
inputs���������(
p 

 
� "�����������
/__inference_sequential_6_layer_call_fn_72395475\;�8
1�.
$�!
inputs���������(
p

 
� "�����������
&__inference_signature_wrapper_72395704�U�R
� 
K�H
F
simple_rnn_6_input0�-
simple_rnn_6_input���������(";�8
6
simple_rnn_6&�#
simple_rnn_6����������
J__inference_simple_rnn_6_layer_call_and_return_conditional_losses_72395856}O�L
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
0���������
� �
J__inference_simple_rnn_6_layer_call_and_return_conditional_losses_72395964}O�L
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
0���������
� �
J__inference_simple_rnn_6_layer_call_and_return_conditional_losses_72396072m?�<
5�2
$�!
inputs���������(

 
p 

 
� "%�"
�
0���������
� �
J__inference_simple_rnn_6_layer_call_and_return_conditional_losses_72396180m?�<
5�2
$�!
inputs���������(

 
p

 
� "%�"
�
0���������
� �
/__inference_simple_rnn_6_layer_call_fn_72395715pO�L
E�B
4�1
/�,
inputs/0������������������

 
p 

 
� "�����������
/__inference_simple_rnn_6_layer_call_fn_72395726pO�L
E�B
4�1
/�,
inputs/0������������������

 
p

 
� "�����������
/__inference_simple_rnn_6_layer_call_fn_72395737`?�<
5�2
$�!
inputs���������(

 
p 

 
� "�����������
/__inference_simple_rnn_6_layer_call_fn_72395748`?�<
5�2
$�!
inputs���������(

 
p

 
� "�����������
S__inference_simple_rnn_cell_35356_layer_call_and_return_conditional_losses_72396225�\�Y
R�O
 �
inputs���������
'�$
"�
states/0���������
p 
� "R�O
H�E
�
0/0���������
$�!
�
0/1/0���������
� �
S__inference_simple_rnn_cell_35356_layer_call_and_return_conditional_losses_72396242�\�Y
R�O
 �
inputs���������
'�$
"�
states/0���������
p
� "R�O
H�E
�
0/0���������
$�!
�
0/1/0���������
� �
8__inference_simple_rnn_cell_35356_layer_call_fn_72396194�\�Y
R�O
 �
inputs���������
'�$
"�
states/0���������
p 
� "D�A
�
0���������
"�
�
1/0����������
8__inference_simple_rnn_cell_35356_layer_call_fn_72396208�\�Y
R�O
 �
inputs���������
'�$
"�
states/0���������
p
� "D�A
�
0���������
"�
�
1/0���������