��
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
Ttype"
Indextype:
2	"

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
�"serve*2.9.12v2.9.0-18-gd8ce9f9c3018ʃ
�
)simple_rnn_103/simple_rnn_cell_10405/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*:
shared_name+)simple_rnn_103/simple_rnn_cell_10405/bias
�
=simple_rnn_103/simple_rnn_cell_10405/bias/Read/ReadVariableOpReadVariableOp)simple_rnn_103/simple_rnn_cell_10405/bias*
_output_shapes
:*
dtype0
�
5simple_rnn_103/simple_rnn_cell_10405/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*F
shared_name75simple_rnn_103/simple_rnn_cell_10405/recurrent_kernel
�
Isimple_rnn_103/simple_rnn_cell_10405/recurrent_kernel/Read/ReadVariableOpReadVariableOp5simple_rnn_103/simple_rnn_cell_10405/recurrent_kernel*
_output_shapes

:*
dtype0
�
+simple_rnn_103/simple_rnn_cell_10405/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*<
shared_name-+simple_rnn_103/simple_rnn_cell_10405/kernel
�
?simple_rnn_103/simple_rnn_cell_10405/kernel/Read/ReadVariableOpReadVariableOp+simple_rnn_103/simple_rnn_cell_10405/kernel*
_output_shapes

:*
dtype0

NoOpNoOp
�
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B�
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

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
cell

state_spec*
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
6
trace_0
trace_1
trace_2
trace_3* 
6
trace_0
trace_1
 trace_2
!trace_3* 
* 

"serving_default* 
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

#states
$non_trainable_variables

%layers
&metrics
'layer_regularization_losses
(layer_metrics

	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
)trace_0
*trace_1
+trace_2
,trace_3* 
6
-trace_0
.trace_1
/trace_2
0trace_3* 
�
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses
7_random_generator

kernel
recurrent_kernel
bias*
* 
ke
VARIABLE_VALUE+simple_rnn_103/simple_rnn_cell_10405/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE5simple_rnn_103/simple_rnn_cell_10405/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUE)simple_rnn_103/simple_rnn_cell_10405/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
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
8non_trainable_variables

9layers
:metrics
;layer_regularization_losses
<layer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses*

=trace_0
>trace_1* 

?trace_0
@trace_1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
�
$serving_default_simple_rnn_103_inputPlaceholder*+
_output_shapes
:���������(*
dtype0* 
shape:���������(
�
StatefulPartitionedCallStatefulPartitionedCall$serving_default_simple_rnn_103_input+simple_rnn_103/simple_rnn_cell_10405/kernel)simple_rnn_103/simple_rnn_cell_10405/bias5simple_rnn_103/simple_rnn_cell_10405/recurrent_kernel*
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
&__inference_signature_wrapper_21205297
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename?simple_rnn_103/simple_rnn_cell_10405/kernel/Read/ReadVariableOpIsimple_rnn_103/simple_rnn_cell_10405/recurrent_kernel/Read/ReadVariableOp=simple_rnn_103/simple_rnn_cell_10405/bias/Read/ReadVariableOpConst*
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
!__inference__traced_save_21206117
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename+simple_rnn_103/simple_rnn_cell_10405/kernel5simple_rnn_103/simple_rnn_cell_10405/recurrent_kernel)simple_rnn_103/simple_rnn_cell_10405/bias*
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
$__inference__traced_restore_21206136��
�?
�
L__inference_simple_rnn_103_layer_call_and_return_conditional_losses_21205803
inputs_0F
4simple_rnn_cell_10405_matmul_readvariableop_resource:C
5simple_rnn_cell_10405_biasadd_readvariableop_resource:H
6simple_rnn_cell_10405_matmul_1_readvariableop_resource:
identity��,simple_rnn_cell_10405/BiasAdd/ReadVariableOp�+simple_rnn_cell_10405/MatMul/ReadVariableOp�-simple_rnn_cell_10405/MatMul_1/ReadVariableOp�while=
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
+simple_rnn_cell_10405/MatMul/ReadVariableOpReadVariableOp4simple_rnn_cell_10405_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
simple_rnn_cell_10405/MatMulMatMulstrided_slice_2:output:03simple_rnn_cell_10405/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
,simple_rnn_cell_10405/BiasAdd/ReadVariableOpReadVariableOp5simple_rnn_cell_10405_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
simple_rnn_cell_10405/BiasAddBiasAdd&simple_rnn_cell_10405/MatMul:product:04simple_rnn_cell_10405/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-simple_rnn_cell_10405/MatMul_1/ReadVariableOpReadVariableOp6simple_rnn_cell_10405_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0�
simple_rnn_cell_10405/MatMul_1MatMulzeros:output:05simple_rnn_cell_10405/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
simple_rnn_cell_10405/addAddV2&simple_rnn_cell_10405/BiasAdd:output:0(simple_rnn_cell_10405/MatMul_1:product:0*
T0*'
_output_shapes
:���������s
simple_rnn_cell_10405/TanhTanhsimple_rnn_cell_10405/add:z:0*
T0*'
_output_shapes
:���������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:04simple_rnn_cell_10405_matmul_readvariableop_resource5simple_rnn_cell_10405_biasadd_readvariableop_resource6simple_rnn_cell_10405_matmul_1_readvariableop_resource*
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
while_body_21205736*
condR
while_cond_21205735*8
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
:���������*
element_dtype0*
num_elementsh
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
:���������g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp-^simple_rnn_cell_10405/BiasAdd/ReadVariableOp,^simple_rnn_cell_10405/MatMul/ReadVariableOp.^simple_rnn_cell_10405/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2\
,simple_rnn_cell_10405/BiasAdd/ReadVariableOp,simple_rnn_cell_10405/BiasAdd/ReadVariableOp2Z
+simple_rnn_cell_10405/MatMul/ReadVariableOp+simple_rnn_cell_10405/MatMul/ReadVariableOp2^
-simple_rnn_cell_10405/MatMul_1/ReadVariableOp-simple_rnn_cell_10405/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�5
�
L__inference_simple_rnn_103_layer_call_and_return_conditional_losses_21204943

inputs0
simple_rnn_cell_10405_21204866:,
simple_rnn_cell_10405_21204868:0
simple_rnn_cell_10405_21204870:
identity��-simple_rnn_cell_10405/StatefulPartitionedCall�while;
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
-simple_rnn_cell_10405/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_10405_21204866simple_rnn_cell_10405_21204868simple_rnn_cell_10405_21204870*
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
S__inference_simple_rnn_cell_10405_layer_call_and_return_conditional_losses_21204826n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_10405_21204866simple_rnn_cell_10405_21204868simple_rnn_cell_10405_21204870*
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
while_body_21204879*
condR
while_cond_21204878*8
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
:���������*
element_dtype0*
num_elementsh
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
:���������g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������~
NoOpNoOp.^simple_rnn_cell_10405/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2^
-simple_rnn_cell_10405/StatefulPartitionedCall-simple_rnn_cell_10405/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
while_cond_21204717
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_21204717___redundant_placeholder06
2while_while_cond_21204717___redundant_placeholder16
2while_while_cond_21204717___redundant_placeholder26
2while_while_cond_21204717___redundant_placeholder3
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
�M
�
L__inference_sequential_103_layer_call_and_return_conditional_losses_21205429

inputsU
Csimple_rnn_103_simple_rnn_cell_10405_matmul_readvariableop_resource:R
Dsimple_rnn_103_simple_rnn_cell_10405_biasadd_readvariableop_resource:W
Esimple_rnn_103_simple_rnn_cell_10405_matmul_1_readvariableop_resource:
identity��;simple_rnn_103/simple_rnn_cell_10405/BiasAdd/ReadVariableOp�:simple_rnn_103/simple_rnn_cell_10405/MatMul/ReadVariableOp�<simple_rnn_103/simple_rnn_cell_10405/MatMul_1/ReadVariableOp�simple_rnn_103/whileJ
simple_rnn_103/ShapeShapeinputs*
T0*
_output_shapes
:l
"simple_rnn_103/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_103/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_103/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_103/strided_sliceStridedSlicesimple_rnn_103/Shape:output:0+simple_rnn_103/strided_slice/stack:output:0-simple_rnn_103/strided_slice/stack_1:output:0-simple_rnn_103/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
simple_rnn_103/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_103/zeros/packedPack%simple_rnn_103/strided_slice:output:0&simple_rnn_103/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:_
simple_rnn_103/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
simple_rnn_103/zerosFill$simple_rnn_103/zeros/packed:output:0#simple_rnn_103/zeros/Const:output:0*
T0*'
_output_shapes
:���������r
simple_rnn_103/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_103/transpose	Transposeinputs&simple_rnn_103/transpose/perm:output:0*
T0*+
_output_shapes
:(���������b
simple_rnn_103/Shape_1Shapesimple_rnn_103/transpose:y:0*
T0*
_output_shapes
:n
$simple_rnn_103/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&simple_rnn_103/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&simple_rnn_103/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_103/strided_slice_1StridedSlicesimple_rnn_103/Shape_1:output:0-simple_rnn_103/strided_slice_1/stack:output:0/simple_rnn_103/strided_slice_1/stack_1:output:0/simple_rnn_103/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
*simple_rnn_103/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
simple_rnn_103/TensorArrayV2TensorListReserve3simple_rnn_103/TensorArrayV2/element_shape:output:0'simple_rnn_103/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Dsimple_rnn_103/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
6simple_rnn_103/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_103/transpose:y:0Msimple_rnn_103/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���n
$simple_rnn_103/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&simple_rnn_103/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&simple_rnn_103/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_103/strided_slice_2StridedSlicesimple_rnn_103/transpose:y:0-simple_rnn_103/strided_slice_2/stack:output:0/simple_rnn_103/strided_slice_2/stack_1:output:0/simple_rnn_103/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
:simple_rnn_103/simple_rnn_cell_10405/MatMul/ReadVariableOpReadVariableOpCsimple_rnn_103_simple_rnn_cell_10405_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
+simple_rnn_103/simple_rnn_cell_10405/MatMulMatMul'simple_rnn_103/strided_slice_2:output:0Bsimple_rnn_103/simple_rnn_cell_10405/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
;simple_rnn_103/simple_rnn_cell_10405/BiasAdd/ReadVariableOpReadVariableOpDsimple_rnn_103_simple_rnn_cell_10405_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
,simple_rnn_103/simple_rnn_cell_10405/BiasAddBiasAdd5simple_rnn_103/simple_rnn_cell_10405/MatMul:product:0Csimple_rnn_103/simple_rnn_cell_10405/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
<simple_rnn_103/simple_rnn_cell_10405/MatMul_1/ReadVariableOpReadVariableOpEsimple_rnn_103_simple_rnn_cell_10405_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0�
-simple_rnn_103/simple_rnn_cell_10405/MatMul_1MatMulsimple_rnn_103/zeros:output:0Dsimple_rnn_103/simple_rnn_cell_10405/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
(simple_rnn_103/simple_rnn_cell_10405/addAddV25simple_rnn_103/simple_rnn_cell_10405/BiasAdd:output:07simple_rnn_103/simple_rnn_cell_10405/MatMul_1:product:0*
T0*'
_output_shapes
:����������
)simple_rnn_103/simple_rnn_cell_10405/TanhTanh,simple_rnn_103/simple_rnn_cell_10405/add:z:0*
T0*'
_output_shapes
:���������}
,simple_rnn_103/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   m
+simple_rnn_103/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_103/TensorArrayV2_1TensorListReserve5simple_rnn_103/TensorArrayV2_1/element_shape:output:04simple_rnn_103/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���U
simple_rnn_103/timeConst*
_output_shapes
: *
dtype0*
value	B : r
'simple_rnn_103/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������c
!simple_rnn_103/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
simple_rnn_103/whileWhile*simple_rnn_103/while/loop_counter:output:00simple_rnn_103/while/maximum_iterations:output:0simple_rnn_103/time:output:0'simple_rnn_103/TensorArrayV2_1:handle:0simple_rnn_103/zeros:output:0'simple_rnn_103/strided_slice_1:output:0Fsimple_rnn_103/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csimple_rnn_103_simple_rnn_cell_10405_matmul_readvariableop_resourceDsimple_rnn_103_simple_rnn_cell_10405_biasadd_readvariableop_resourceEsimple_rnn_103_simple_rnn_cell_10405_matmul_1_readvariableop_resource*
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
_stateful_parallelism( *.
body&R$
"simple_rnn_103_while_body_21205362*.
cond&R$
"simple_rnn_103_while_cond_21205361*8
output_shapes'
%: : : : :���������: : : : : *
parallel_iterations �
?simple_rnn_103/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
1simple_rnn_103/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_103/while:output:3Hsimple_rnn_103/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������*
element_dtype0*
num_elementsw
$simple_rnn_103/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������p
&simple_rnn_103/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: p
&simple_rnn_103/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_103/strided_slice_3StridedSlice:simple_rnn_103/TensorArrayV2Stack/TensorListStack:tensor:0-simple_rnn_103/strided_slice_3/stack:output:0/simple_rnn_103/strided_slice_3/stack_1:output:0/simple_rnn_103/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_maskt
simple_rnn_103/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_103/transpose_1	Transpose:simple_rnn_103/TensorArrayV2Stack/TensorListStack:tensor:0(simple_rnn_103/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������v
IdentityIdentity'simple_rnn_103/strided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp<^simple_rnn_103/simple_rnn_cell_10405/BiasAdd/ReadVariableOp;^simple_rnn_103/simple_rnn_cell_10405/MatMul/ReadVariableOp=^simple_rnn_103/simple_rnn_cell_10405/MatMul_1/ReadVariableOp^simple_rnn_103/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 2z
;simple_rnn_103/simple_rnn_cell_10405/BiasAdd/ReadVariableOp;simple_rnn_103/simple_rnn_cell_10405/BiasAdd/ReadVariableOp2x
:simple_rnn_103/simple_rnn_cell_10405/MatMul/ReadVariableOp:simple_rnn_103/simple_rnn_cell_10405/MatMul/ReadVariableOp2|
<simple_rnn_103/simple_rnn_cell_10405/MatMul_1/ReadVariableOp<simple_rnn_103/simple_rnn_cell_10405/MatMul_1/ReadVariableOp2,
simple_rnn_103/whilesimple_rnn_103/while:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�
�
1__inference_sequential_103_layer_call_fn_21205308

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
GPU 2J 8� *U
fPRN
L__inference_sequential_103_layer_call_and_return_conditional_losses_21205077o
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
�.
�
while_body_21205846
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0N
<while_simple_rnn_cell_10405_matmul_readvariableop_resource_0:K
=while_simple_rnn_cell_10405_biasadd_readvariableop_resource_0:P
>while_simple_rnn_cell_10405_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorL
:while_simple_rnn_cell_10405_matmul_readvariableop_resource:I
;while_simple_rnn_cell_10405_biasadd_readvariableop_resource:N
<while_simple_rnn_cell_10405_matmul_1_readvariableop_resource:��2while/simple_rnn_cell_10405/BiasAdd/ReadVariableOp�1while/simple_rnn_cell_10405/MatMul/ReadVariableOp�3while/simple_rnn_cell_10405/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
1while/simple_rnn_cell_10405/MatMul/ReadVariableOpReadVariableOp<while_simple_rnn_cell_10405_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0�
"while/simple_rnn_cell_10405/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:09while/simple_rnn_cell_10405/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
2while/simple_rnn_cell_10405/BiasAdd/ReadVariableOpReadVariableOp=while_simple_rnn_cell_10405_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0�
#while/simple_rnn_cell_10405/BiasAddBiasAdd,while/simple_rnn_cell_10405/MatMul:product:0:while/simple_rnn_cell_10405/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
3while/simple_rnn_cell_10405/MatMul_1/ReadVariableOpReadVariableOp>while_simple_rnn_cell_10405_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0�
$while/simple_rnn_cell_10405/MatMul_1MatMulwhile_placeholder_2;while/simple_rnn_cell_10405/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
while/simple_rnn_cell_10405/addAddV2,while/simple_rnn_cell_10405/BiasAdd:output:0.while/simple_rnn_cell_10405/MatMul_1:product:0*
T0*'
_output_shapes
:���������
 while/simple_rnn_cell_10405/TanhTanh#while/simple_rnn_cell_10405/add:z:0*
T0*'
_output_shapes
:���������r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0$while/simple_rnn_cell_10405/Tanh:y:0*
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
: �
while/Identity_4Identity$while/simple_rnn_cell_10405/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:����������

while/NoOpNoOp3^while/simple_rnn_cell_10405/BiasAdd/ReadVariableOp2^while/simple_rnn_cell_10405/MatMul/ReadVariableOp4^while/simple_rnn_cell_10405/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"|
;while_simple_rnn_cell_10405_biasadd_readvariableop_resource=while_simple_rnn_cell_10405_biasadd_readvariableop_resource_0"~
<while_simple_rnn_cell_10405_matmul_1_readvariableop_resource>while_simple_rnn_cell_10405_matmul_1_readvariableop_resource_0"z
:while_simple_rnn_cell_10405_matmul_readvariableop_resource<while_simple_rnn_cell_10405_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������: : : : : 2h
2while/simple_rnn_cell_10405/BiasAdd/ReadVariableOp2while/simple_rnn_cell_10405/BiasAdd/ReadVariableOp2f
1while/simple_rnn_cell_10405/MatMul/ReadVariableOp1while/simple_rnn_cell_10405/MatMul/ReadVariableOp2j
3while/simple_rnn_cell_10405/MatMul_1/ReadVariableOp3while/simple_rnn_cell_10405/MatMul_1/ReadVariableOp: 
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
while_cond_21205141
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_21205141___redundant_placeholder06
2while_while_cond_21205141___redundant_placeholder16
2while_while_cond_21205141___redundant_placeholder26
2while_while_cond_21205141___redundant_placeholder3
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
1__inference_simple_rnn_103_layer_call_fn_21205583

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
GPU 2J 8� *U
fPRN
L__inference_simple_rnn_103_layer_call_and_return_conditional_losses_21205209o
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
�=
�
"simple_rnn_103_while_body_21205362:
6simple_rnn_103_while_simple_rnn_103_while_loop_counter@
<simple_rnn_103_while_simple_rnn_103_while_maximum_iterations$
 simple_rnn_103_while_placeholder&
"simple_rnn_103_while_placeholder_1&
"simple_rnn_103_while_placeholder_29
5simple_rnn_103_while_simple_rnn_103_strided_slice_1_0u
qsimple_rnn_103_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_103_tensorarrayunstack_tensorlistfromtensor_0]
Ksimple_rnn_103_while_simple_rnn_cell_10405_matmul_readvariableop_resource_0:Z
Lsimple_rnn_103_while_simple_rnn_cell_10405_biasadd_readvariableop_resource_0:_
Msimple_rnn_103_while_simple_rnn_cell_10405_matmul_1_readvariableop_resource_0:!
simple_rnn_103_while_identity#
simple_rnn_103_while_identity_1#
simple_rnn_103_while_identity_2#
simple_rnn_103_while_identity_3#
simple_rnn_103_while_identity_47
3simple_rnn_103_while_simple_rnn_103_strided_slice_1s
osimple_rnn_103_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_103_tensorarrayunstack_tensorlistfromtensor[
Isimple_rnn_103_while_simple_rnn_cell_10405_matmul_readvariableop_resource:X
Jsimple_rnn_103_while_simple_rnn_cell_10405_biasadd_readvariableop_resource:]
Ksimple_rnn_103_while_simple_rnn_cell_10405_matmul_1_readvariableop_resource:��Asimple_rnn_103/while/simple_rnn_cell_10405/BiasAdd/ReadVariableOp�@simple_rnn_103/while/simple_rnn_cell_10405/MatMul/ReadVariableOp�Bsimple_rnn_103/while/simple_rnn_cell_10405/MatMul_1/ReadVariableOp�
Fsimple_rnn_103/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
8simple_rnn_103/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemqsimple_rnn_103_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_103_tensorarrayunstack_tensorlistfromtensor_0 simple_rnn_103_while_placeholderOsimple_rnn_103/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
@simple_rnn_103/while/simple_rnn_cell_10405/MatMul/ReadVariableOpReadVariableOpKsimple_rnn_103_while_simple_rnn_cell_10405_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0�
1simple_rnn_103/while/simple_rnn_cell_10405/MatMulMatMul?simple_rnn_103/while/TensorArrayV2Read/TensorListGetItem:item:0Hsimple_rnn_103/while/simple_rnn_cell_10405/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Asimple_rnn_103/while/simple_rnn_cell_10405/BiasAdd/ReadVariableOpReadVariableOpLsimple_rnn_103_while_simple_rnn_cell_10405_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0�
2simple_rnn_103/while/simple_rnn_cell_10405/BiasAddBiasAdd;simple_rnn_103/while/simple_rnn_cell_10405/MatMul:product:0Isimple_rnn_103/while/simple_rnn_cell_10405/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Bsimple_rnn_103/while/simple_rnn_cell_10405/MatMul_1/ReadVariableOpReadVariableOpMsimple_rnn_103_while_simple_rnn_cell_10405_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0�
3simple_rnn_103/while/simple_rnn_cell_10405/MatMul_1MatMul"simple_rnn_103_while_placeholder_2Jsimple_rnn_103/while/simple_rnn_cell_10405/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
.simple_rnn_103/while/simple_rnn_cell_10405/addAddV2;simple_rnn_103/while/simple_rnn_cell_10405/BiasAdd:output:0=simple_rnn_103/while/simple_rnn_cell_10405/MatMul_1:product:0*
T0*'
_output_shapes
:����������
/simple_rnn_103/while/simple_rnn_cell_10405/TanhTanh2simple_rnn_103/while/simple_rnn_cell_10405/add:z:0*
T0*'
_output_shapes
:����������
?simple_rnn_103/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
9simple_rnn_103/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem"simple_rnn_103_while_placeholder_1Hsimple_rnn_103/while/TensorArrayV2Write/TensorListSetItem/index:output:03simple_rnn_103/while/simple_rnn_cell_10405/Tanh:y:0*
_output_shapes
: *
element_dtype0:���\
simple_rnn_103/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_103/while/addAddV2 simple_rnn_103_while_placeholder#simple_rnn_103/while/add/y:output:0*
T0*
_output_shapes
: ^
simple_rnn_103/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_103/while/add_1AddV26simple_rnn_103_while_simple_rnn_103_while_loop_counter%simple_rnn_103/while/add_1/y:output:0*
T0*
_output_shapes
: �
simple_rnn_103/while/IdentityIdentitysimple_rnn_103/while/add_1:z:0^simple_rnn_103/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_103/while/Identity_1Identity<simple_rnn_103_while_simple_rnn_103_while_maximum_iterations^simple_rnn_103/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_103/while/Identity_2Identitysimple_rnn_103/while/add:z:0^simple_rnn_103/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_103/while/Identity_3IdentityIsimple_rnn_103/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_103/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_103/while/Identity_4Identity3simple_rnn_103/while/simple_rnn_cell_10405/Tanh:y:0^simple_rnn_103/while/NoOp*
T0*'
_output_shapes
:����������
simple_rnn_103/while/NoOpNoOpB^simple_rnn_103/while/simple_rnn_cell_10405/BiasAdd/ReadVariableOpA^simple_rnn_103/while/simple_rnn_cell_10405/MatMul/ReadVariableOpC^simple_rnn_103/while/simple_rnn_cell_10405/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "G
simple_rnn_103_while_identity&simple_rnn_103/while/Identity:output:0"K
simple_rnn_103_while_identity_1(simple_rnn_103/while/Identity_1:output:0"K
simple_rnn_103_while_identity_2(simple_rnn_103/while/Identity_2:output:0"K
simple_rnn_103_while_identity_3(simple_rnn_103/while/Identity_3:output:0"K
simple_rnn_103_while_identity_4(simple_rnn_103/while/Identity_4:output:0"l
3simple_rnn_103_while_simple_rnn_103_strided_slice_15simple_rnn_103_while_simple_rnn_103_strided_slice_1_0"�
Jsimple_rnn_103_while_simple_rnn_cell_10405_biasadd_readvariableop_resourceLsimple_rnn_103_while_simple_rnn_cell_10405_biasadd_readvariableop_resource_0"�
Ksimple_rnn_103_while_simple_rnn_cell_10405_matmul_1_readvariableop_resourceMsimple_rnn_103_while_simple_rnn_cell_10405_matmul_1_readvariableop_resource_0"�
Isimple_rnn_103_while_simple_rnn_cell_10405_matmul_readvariableop_resourceKsimple_rnn_103_while_simple_rnn_cell_10405_matmul_readvariableop_resource_0"�
osimple_rnn_103_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_103_tensorarrayunstack_tensorlistfromtensorqsimple_rnn_103_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_103_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������: : : : : 2�
Asimple_rnn_103/while/simple_rnn_cell_10405/BiasAdd/ReadVariableOpAsimple_rnn_103/while/simple_rnn_cell_10405/BiasAdd/ReadVariableOp2�
@simple_rnn_103/while/simple_rnn_cell_10405/MatMul/ReadVariableOp@simple_rnn_103/while/simple_rnn_cell_10405/MatMul/ReadVariableOp2�
Bsimple_rnn_103/while/simple_rnn_cell_10405/MatMul_1/ReadVariableOpBsimple_rnn_103/while/simple_rnn_cell_10405/MatMul_1/ReadVariableOp: 
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
�
�
S__inference_simple_rnn_cell_10405_layer_call_and_return_conditional_losses_21206085

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
�
�
$__inference__traced_restore_21206136
file_prefixN
<assignvariableop_simple_rnn_103_simple_rnn_cell_10405_kernel:Z
Hassignvariableop_1_simple_rnn_103_simple_rnn_cell_10405_recurrent_kernel:J
<assignvariableop_2_simple_rnn_103_simple_rnn_cell_10405_bias:

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
AssignVariableOpAssignVariableOp<assignvariableop_simple_rnn_103_simple_rnn_cell_10405_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpHassignvariableop_1_simple_rnn_103_simple_rnn_cell_10405_recurrent_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp<assignvariableop_2_simple_rnn_103_simple_rnn_cell_10405_biasIdentity_2:output:0"/device:CPU:0*
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
�.
�
while_body_21205736
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0N
<while_simple_rnn_cell_10405_matmul_readvariableop_resource_0:K
=while_simple_rnn_cell_10405_biasadd_readvariableop_resource_0:P
>while_simple_rnn_cell_10405_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorL
:while_simple_rnn_cell_10405_matmul_readvariableop_resource:I
;while_simple_rnn_cell_10405_biasadd_readvariableop_resource:N
<while_simple_rnn_cell_10405_matmul_1_readvariableop_resource:��2while/simple_rnn_cell_10405/BiasAdd/ReadVariableOp�1while/simple_rnn_cell_10405/MatMul/ReadVariableOp�3while/simple_rnn_cell_10405/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
1while/simple_rnn_cell_10405/MatMul/ReadVariableOpReadVariableOp<while_simple_rnn_cell_10405_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0�
"while/simple_rnn_cell_10405/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:09while/simple_rnn_cell_10405/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
2while/simple_rnn_cell_10405/BiasAdd/ReadVariableOpReadVariableOp=while_simple_rnn_cell_10405_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0�
#while/simple_rnn_cell_10405/BiasAddBiasAdd,while/simple_rnn_cell_10405/MatMul:product:0:while/simple_rnn_cell_10405/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
3while/simple_rnn_cell_10405/MatMul_1/ReadVariableOpReadVariableOp>while_simple_rnn_cell_10405_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0�
$while/simple_rnn_cell_10405/MatMul_1MatMulwhile_placeholder_2;while/simple_rnn_cell_10405/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
while/simple_rnn_cell_10405/addAddV2,while/simple_rnn_cell_10405/BiasAdd:output:0.while/simple_rnn_cell_10405/MatMul_1:product:0*
T0*'
_output_shapes
:���������
 while/simple_rnn_cell_10405/TanhTanh#while/simple_rnn_cell_10405/add:z:0*
T0*'
_output_shapes
:���������r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0$while/simple_rnn_cell_10405/Tanh:y:0*
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
: �
while/Identity_4Identity$while/simple_rnn_cell_10405/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:����������

while/NoOpNoOp3^while/simple_rnn_cell_10405/BiasAdd/ReadVariableOp2^while/simple_rnn_cell_10405/MatMul/ReadVariableOp4^while/simple_rnn_cell_10405/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"|
;while_simple_rnn_cell_10405_biasadd_readvariableop_resource=while_simple_rnn_cell_10405_biasadd_readvariableop_resource_0"~
<while_simple_rnn_cell_10405_matmul_1_readvariableop_resource>while_simple_rnn_cell_10405_matmul_1_readvariableop_resource_0"z
:while_simple_rnn_cell_10405_matmul_readvariableop_resource<while_simple_rnn_cell_10405_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������: : : : : 2h
2while/simple_rnn_cell_10405/BiasAdd/ReadVariableOp2while/simple_rnn_cell_10405/BiasAdd/ReadVariableOp2f
1while/simple_rnn_cell_10405/MatMul/ReadVariableOp1while/simple_rnn_cell_10405/MatMul/ReadVariableOp2j
3while/simple_rnn_cell_10405/MatMul_1/ReadVariableOp3while/simple_rnn_cell_10405/MatMul_1/ReadVariableOp: 
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
�
�
S__inference_simple_rnn_cell_10405_layer_call_and_return_conditional_losses_21204826

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
�
�
1__inference_simple_rnn_103_layer_call_fn_21205550
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
GPU 2J 8� *U
fPRN
L__inference_simple_rnn_103_layer_call_and_return_conditional_losses_21204782o
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
�
�
1sequential_103_simple_rnn_103_while_cond_21204588X
Tsequential_103_simple_rnn_103_while_sequential_103_simple_rnn_103_while_loop_counter^
Zsequential_103_simple_rnn_103_while_sequential_103_simple_rnn_103_while_maximum_iterations3
/sequential_103_simple_rnn_103_while_placeholder5
1sequential_103_simple_rnn_103_while_placeholder_15
1sequential_103_simple_rnn_103_while_placeholder_2Z
Vsequential_103_simple_rnn_103_while_less_sequential_103_simple_rnn_103_strided_slice_1r
nsequential_103_simple_rnn_103_while_sequential_103_simple_rnn_103_while_cond_21204588___redundant_placeholder0r
nsequential_103_simple_rnn_103_while_sequential_103_simple_rnn_103_while_cond_21204588___redundant_placeholder1r
nsequential_103_simple_rnn_103_while_sequential_103_simple_rnn_103_while_cond_21204588___redundant_placeholder2r
nsequential_103_simple_rnn_103_while_sequential_103_simple_rnn_103_while_cond_21204588___redundant_placeholder30
,sequential_103_simple_rnn_103_while_identity
�
(sequential_103/simple_rnn_103/while/LessLess/sequential_103_simple_rnn_103_while_placeholderVsequential_103_simple_rnn_103_while_less_sequential_103_simple_rnn_103_strided_slice_1*
T0*
_output_shapes
: �
,sequential_103/simple_rnn_103/while/IdentityIdentity,sequential_103/simple_rnn_103/while/Less:z:0*
T0
*
_output_shapes
: "e
,sequential_103_simple_rnn_103_while_identity5sequential_103/simple_rnn_103/while/Identity:output:0*(
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
1__inference_sequential_103_layer_call_fn_21205086
simple_rnn_103_input
unknown:
	unknown_0:
	unknown_1:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_103_inputunknown	unknown_0	unknown_1*
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
GPU 2J 8� *U
fPRN
L__inference_sequential_103_layer_call_and_return_conditional_losses_21205077o
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
StatefulPartitionedCallStatefulPartitionedCall:a ]
+
_output_shapes
:���������(
.
_user_specified_namesimple_rnn_103_input
�K
�
1sequential_103_simple_rnn_103_while_body_21204589X
Tsequential_103_simple_rnn_103_while_sequential_103_simple_rnn_103_while_loop_counter^
Zsequential_103_simple_rnn_103_while_sequential_103_simple_rnn_103_while_maximum_iterations3
/sequential_103_simple_rnn_103_while_placeholder5
1sequential_103_simple_rnn_103_while_placeholder_15
1sequential_103_simple_rnn_103_while_placeholder_2W
Ssequential_103_simple_rnn_103_while_sequential_103_simple_rnn_103_strided_slice_1_0�
�sequential_103_simple_rnn_103_while_tensorarrayv2read_tensorlistgetitem_sequential_103_simple_rnn_103_tensorarrayunstack_tensorlistfromtensor_0l
Zsequential_103_simple_rnn_103_while_simple_rnn_cell_10405_matmul_readvariableop_resource_0:i
[sequential_103_simple_rnn_103_while_simple_rnn_cell_10405_biasadd_readvariableop_resource_0:n
\sequential_103_simple_rnn_103_while_simple_rnn_cell_10405_matmul_1_readvariableop_resource_0:0
,sequential_103_simple_rnn_103_while_identity2
.sequential_103_simple_rnn_103_while_identity_12
.sequential_103_simple_rnn_103_while_identity_22
.sequential_103_simple_rnn_103_while_identity_32
.sequential_103_simple_rnn_103_while_identity_4U
Qsequential_103_simple_rnn_103_while_sequential_103_simple_rnn_103_strided_slice_1�
�sequential_103_simple_rnn_103_while_tensorarrayv2read_tensorlistgetitem_sequential_103_simple_rnn_103_tensorarrayunstack_tensorlistfromtensorj
Xsequential_103_simple_rnn_103_while_simple_rnn_cell_10405_matmul_readvariableop_resource:g
Ysequential_103_simple_rnn_103_while_simple_rnn_cell_10405_biasadd_readvariableop_resource:l
Zsequential_103_simple_rnn_103_while_simple_rnn_cell_10405_matmul_1_readvariableop_resource:��Psequential_103/simple_rnn_103/while/simple_rnn_cell_10405/BiasAdd/ReadVariableOp�Osequential_103/simple_rnn_103/while/simple_rnn_cell_10405/MatMul/ReadVariableOp�Qsequential_103/simple_rnn_103/while/simple_rnn_cell_10405/MatMul_1/ReadVariableOp�
Usequential_103/simple_rnn_103/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Gsequential_103/simple_rnn_103/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_103_simple_rnn_103_while_tensorarrayv2read_tensorlistgetitem_sequential_103_simple_rnn_103_tensorarrayunstack_tensorlistfromtensor_0/sequential_103_simple_rnn_103_while_placeholder^sequential_103/simple_rnn_103/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
Osequential_103/simple_rnn_103/while/simple_rnn_cell_10405/MatMul/ReadVariableOpReadVariableOpZsequential_103_simple_rnn_103_while_simple_rnn_cell_10405_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0�
@sequential_103/simple_rnn_103/while/simple_rnn_cell_10405/MatMulMatMulNsequential_103/simple_rnn_103/while/TensorArrayV2Read/TensorListGetItem:item:0Wsequential_103/simple_rnn_103/while/simple_rnn_cell_10405/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Psequential_103/simple_rnn_103/while/simple_rnn_cell_10405/BiasAdd/ReadVariableOpReadVariableOp[sequential_103_simple_rnn_103_while_simple_rnn_cell_10405_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0�
Asequential_103/simple_rnn_103/while/simple_rnn_cell_10405/BiasAddBiasAddJsequential_103/simple_rnn_103/while/simple_rnn_cell_10405/MatMul:product:0Xsequential_103/simple_rnn_103/while/simple_rnn_cell_10405/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Qsequential_103/simple_rnn_103/while/simple_rnn_cell_10405/MatMul_1/ReadVariableOpReadVariableOp\sequential_103_simple_rnn_103_while_simple_rnn_cell_10405_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0�
Bsequential_103/simple_rnn_103/while/simple_rnn_cell_10405/MatMul_1MatMul1sequential_103_simple_rnn_103_while_placeholder_2Ysequential_103/simple_rnn_103/while/simple_rnn_cell_10405/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
=sequential_103/simple_rnn_103/while/simple_rnn_cell_10405/addAddV2Jsequential_103/simple_rnn_103/while/simple_rnn_cell_10405/BiasAdd:output:0Lsequential_103/simple_rnn_103/while/simple_rnn_cell_10405/MatMul_1:product:0*
T0*'
_output_shapes
:����������
>sequential_103/simple_rnn_103/while/simple_rnn_cell_10405/TanhTanhAsequential_103/simple_rnn_103/while/simple_rnn_cell_10405/add:z:0*
T0*'
_output_shapes
:����������
Nsequential_103/simple_rnn_103/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
Hsequential_103/simple_rnn_103/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem1sequential_103_simple_rnn_103_while_placeholder_1Wsequential_103/simple_rnn_103/while/TensorArrayV2Write/TensorListSetItem/index:output:0Bsequential_103/simple_rnn_103/while/simple_rnn_cell_10405/Tanh:y:0*
_output_shapes
: *
element_dtype0:���k
)sequential_103/simple_rnn_103/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
'sequential_103/simple_rnn_103/while/addAddV2/sequential_103_simple_rnn_103_while_placeholder2sequential_103/simple_rnn_103/while/add/y:output:0*
T0*
_output_shapes
: m
+sequential_103/simple_rnn_103/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
)sequential_103/simple_rnn_103/while/add_1AddV2Tsequential_103_simple_rnn_103_while_sequential_103_simple_rnn_103_while_loop_counter4sequential_103/simple_rnn_103/while/add_1/y:output:0*
T0*
_output_shapes
: �
,sequential_103/simple_rnn_103/while/IdentityIdentity-sequential_103/simple_rnn_103/while/add_1:z:0)^sequential_103/simple_rnn_103/while/NoOp*
T0*
_output_shapes
: �
.sequential_103/simple_rnn_103/while/Identity_1IdentityZsequential_103_simple_rnn_103_while_sequential_103_simple_rnn_103_while_maximum_iterations)^sequential_103/simple_rnn_103/while/NoOp*
T0*
_output_shapes
: �
.sequential_103/simple_rnn_103/while/Identity_2Identity+sequential_103/simple_rnn_103/while/add:z:0)^sequential_103/simple_rnn_103/while/NoOp*
T0*
_output_shapes
: �
.sequential_103/simple_rnn_103/while/Identity_3IdentityXsequential_103/simple_rnn_103/while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^sequential_103/simple_rnn_103/while/NoOp*
T0*
_output_shapes
: �
.sequential_103/simple_rnn_103/while/Identity_4IdentityBsequential_103/simple_rnn_103/while/simple_rnn_cell_10405/Tanh:y:0)^sequential_103/simple_rnn_103/while/NoOp*
T0*'
_output_shapes
:����������
(sequential_103/simple_rnn_103/while/NoOpNoOpQ^sequential_103/simple_rnn_103/while/simple_rnn_cell_10405/BiasAdd/ReadVariableOpP^sequential_103/simple_rnn_103/while/simple_rnn_cell_10405/MatMul/ReadVariableOpR^sequential_103/simple_rnn_103/while/simple_rnn_cell_10405/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "e
,sequential_103_simple_rnn_103_while_identity5sequential_103/simple_rnn_103/while/Identity:output:0"i
.sequential_103_simple_rnn_103_while_identity_17sequential_103/simple_rnn_103/while/Identity_1:output:0"i
.sequential_103_simple_rnn_103_while_identity_27sequential_103/simple_rnn_103/while/Identity_2:output:0"i
.sequential_103_simple_rnn_103_while_identity_37sequential_103/simple_rnn_103/while/Identity_3:output:0"i
.sequential_103_simple_rnn_103_while_identity_47sequential_103/simple_rnn_103/while/Identity_4:output:0"�
Qsequential_103_simple_rnn_103_while_sequential_103_simple_rnn_103_strided_slice_1Ssequential_103_simple_rnn_103_while_sequential_103_simple_rnn_103_strided_slice_1_0"�
Ysequential_103_simple_rnn_103_while_simple_rnn_cell_10405_biasadd_readvariableop_resource[sequential_103_simple_rnn_103_while_simple_rnn_cell_10405_biasadd_readvariableop_resource_0"�
Zsequential_103_simple_rnn_103_while_simple_rnn_cell_10405_matmul_1_readvariableop_resource\sequential_103_simple_rnn_103_while_simple_rnn_cell_10405_matmul_1_readvariableop_resource_0"�
Xsequential_103_simple_rnn_103_while_simple_rnn_cell_10405_matmul_readvariableop_resourceZsequential_103_simple_rnn_103_while_simple_rnn_cell_10405_matmul_readvariableop_resource_0"�
�sequential_103_simple_rnn_103_while_tensorarrayv2read_tensorlistgetitem_sequential_103_simple_rnn_103_tensorarrayunstack_tensorlistfromtensor�sequential_103_simple_rnn_103_while_tensorarrayv2read_tensorlistgetitem_sequential_103_simple_rnn_103_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������: : : : : 2�
Psequential_103/simple_rnn_103/while/simple_rnn_cell_10405/BiasAdd/ReadVariableOpPsequential_103/simple_rnn_103/while/simple_rnn_cell_10405/BiasAdd/ReadVariableOp2�
Osequential_103/simple_rnn_103/while/simple_rnn_cell_10405/MatMul/ReadVariableOpOsequential_103/simple_rnn_103/while/simple_rnn_cell_10405/MatMul/ReadVariableOp2�
Qsequential_103/simple_rnn_103/while/simple_rnn_cell_10405/MatMul_1/ReadVariableOpQsequential_103/simple_rnn_103/while/simple_rnn_cell_10405/MatMul_1/ReadVariableOp: 
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
L__inference_sequential_103_layer_call_and_return_conditional_losses_21205077

inputs)
simple_rnn_103_21205069:%
simple_rnn_103_21205071:)
simple_rnn_103_21205073:
identity��&simple_rnn_103/StatefulPartitionedCall�
&simple_rnn_103/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_103_21205069simple_rnn_103_21205071simple_rnn_103_21205073*
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
GPU 2J 8� *U
fPRN
L__inference_simple_rnn_103_layer_call_and_return_conditional_losses_21205068~
IdentityIdentity/simple_rnn_103/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������o
NoOpNoOp'^simple_rnn_103/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 2P
&simple_rnn_103/StatefulPartitionedCall&simple_rnn_103/StatefulPartitionedCall:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�#
�
while_body_21204718
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_08
&while_simple_rnn_cell_10405_21204740_0:4
&while_simple_rnn_cell_10405_21204742_0:8
&while_simple_rnn_cell_10405_21204744_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor6
$while_simple_rnn_cell_10405_21204740:2
$while_simple_rnn_cell_10405_21204742:6
$while_simple_rnn_cell_10405_21204744:��3while/simple_rnn_cell_10405/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
3while/simple_rnn_cell_10405/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2&while_simple_rnn_cell_10405_21204740_0&while_simple_rnn_cell_10405_21204742_0&while_simple_rnn_cell_10405_21204744_0*
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
S__inference_simple_rnn_cell_10405_layer_call_and_return_conditional_losses_21204704r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0<while/simple_rnn_cell_10405/StatefulPartitionedCall:output:0*
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
: �
while/Identity_4Identity<while/simple_rnn_cell_10405/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:����������

while/NoOpNoOp4^while/simple_rnn_cell_10405/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"N
$while_simple_rnn_cell_10405_21204740&while_simple_rnn_cell_10405_21204740_0"N
$while_simple_rnn_cell_10405_21204742&while_simple_rnn_cell_10405_21204742_0"N
$while_simple_rnn_cell_10405_21204744&while_simple_rnn_cell_10405_21204744_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������: : : : : 2j
3while/simple_rnn_cell_10405/StatefulPartitionedCall3while/simple_rnn_cell_10405/StatefulPartitionedCall: 
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
1__inference_simple_rnn_103_layer_call_fn_21205572

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
GPU 2J 8� *U
fPRN
L__inference_simple_rnn_103_layer_call_and_return_conditional_losses_21205068o
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

�
8__inference_simple_rnn_cell_10405_layer_call_fn_21206051

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
S__inference_simple_rnn_cell_10405_layer_call_and_return_conditional_losses_21204826o
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
&__inference_signature_wrapper_21205297
simple_rnn_103_input
unknown:
	unknown_0:
	unknown_1:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_103_inputunknown	unknown_0	unknown_1*
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
#__inference__wrapped_model_21204656o
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
StatefulPartitionedCallStatefulPartitionedCall:a ]
+
_output_shapes
:���������(
.
_user_specified_namesimple_rnn_103_input
�?
�
L__inference_simple_rnn_103_layer_call_and_return_conditional_losses_21206023

inputsF
4simple_rnn_cell_10405_matmul_readvariableop_resource:C
5simple_rnn_cell_10405_biasadd_readvariableop_resource:H
6simple_rnn_cell_10405_matmul_1_readvariableop_resource:
identity��,simple_rnn_cell_10405/BiasAdd/ReadVariableOp�+simple_rnn_cell_10405/MatMul/ReadVariableOp�-simple_rnn_cell_10405/MatMul_1/ReadVariableOp�while;
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
+simple_rnn_cell_10405/MatMul/ReadVariableOpReadVariableOp4simple_rnn_cell_10405_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
simple_rnn_cell_10405/MatMulMatMulstrided_slice_2:output:03simple_rnn_cell_10405/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
,simple_rnn_cell_10405/BiasAdd/ReadVariableOpReadVariableOp5simple_rnn_cell_10405_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
simple_rnn_cell_10405/BiasAddBiasAdd&simple_rnn_cell_10405/MatMul:product:04simple_rnn_cell_10405/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-simple_rnn_cell_10405/MatMul_1/ReadVariableOpReadVariableOp6simple_rnn_cell_10405_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0�
simple_rnn_cell_10405/MatMul_1MatMulzeros:output:05simple_rnn_cell_10405/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
simple_rnn_cell_10405/addAddV2&simple_rnn_cell_10405/BiasAdd:output:0(simple_rnn_cell_10405/MatMul_1:product:0*
T0*'
_output_shapes
:���������s
simple_rnn_cell_10405/TanhTanhsimple_rnn_cell_10405/add:z:0*
T0*'
_output_shapes
:���������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:04simple_rnn_cell_10405_matmul_readvariableop_resource5simple_rnn_cell_10405_biasadd_readvariableop_resource6simple_rnn_cell_10405_matmul_1_readvariableop_resource*
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
while_body_21205956*
condR
while_cond_21205955*8
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
:���������*
element_dtype0*
num_elementsh
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
:���������g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp-^simple_rnn_cell_10405/BiasAdd/ReadVariableOp,^simple_rnn_cell_10405/MatMul/ReadVariableOp.^simple_rnn_cell_10405/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 2\
,simple_rnn_cell_10405/BiasAdd/ReadVariableOp,simple_rnn_cell_10405/BiasAdd/ReadVariableOp2Z
+simple_rnn_cell_10405/MatMul/ReadVariableOp+simple_rnn_cell_10405/MatMul/ReadVariableOp2^
-simple_rnn_cell_10405/MatMul_1/ReadVariableOp-simple_rnn_cell_10405/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�?
�
L__inference_simple_rnn_103_layer_call_and_return_conditional_losses_21205068

inputsF
4simple_rnn_cell_10405_matmul_readvariableop_resource:C
5simple_rnn_cell_10405_biasadd_readvariableop_resource:H
6simple_rnn_cell_10405_matmul_1_readvariableop_resource:
identity��,simple_rnn_cell_10405/BiasAdd/ReadVariableOp�+simple_rnn_cell_10405/MatMul/ReadVariableOp�-simple_rnn_cell_10405/MatMul_1/ReadVariableOp�while;
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
+simple_rnn_cell_10405/MatMul/ReadVariableOpReadVariableOp4simple_rnn_cell_10405_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
simple_rnn_cell_10405/MatMulMatMulstrided_slice_2:output:03simple_rnn_cell_10405/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
,simple_rnn_cell_10405/BiasAdd/ReadVariableOpReadVariableOp5simple_rnn_cell_10405_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
simple_rnn_cell_10405/BiasAddBiasAdd&simple_rnn_cell_10405/MatMul:product:04simple_rnn_cell_10405/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-simple_rnn_cell_10405/MatMul_1/ReadVariableOpReadVariableOp6simple_rnn_cell_10405_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0�
simple_rnn_cell_10405/MatMul_1MatMulzeros:output:05simple_rnn_cell_10405/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
simple_rnn_cell_10405/addAddV2&simple_rnn_cell_10405/BiasAdd:output:0(simple_rnn_cell_10405/MatMul_1:product:0*
T0*'
_output_shapes
:���������s
simple_rnn_cell_10405/TanhTanhsimple_rnn_cell_10405/add:z:0*
T0*'
_output_shapes
:���������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:04simple_rnn_cell_10405_matmul_readvariableop_resource5simple_rnn_cell_10405_biasadd_readvariableop_resource6simple_rnn_cell_10405_matmul_1_readvariableop_resource*
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
while_body_21205001*
condR
while_cond_21205000*8
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
:���������*
element_dtype0*
num_elementsh
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
:���������g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp-^simple_rnn_cell_10405/BiasAdd/ReadVariableOp,^simple_rnn_cell_10405/MatMul/ReadVariableOp.^simple_rnn_cell_10405/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 2\
,simple_rnn_cell_10405/BiasAdd/ReadVariableOp,simple_rnn_cell_10405/BiasAdd/ReadVariableOp2Z
+simple_rnn_cell_10405/MatMul/ReadVariableOp+simple_rnn_cell_10405/MatMul/ReadVariableOp2^
-simple_rnn_cell_10405/MatMul_1/ReadVariableOp-simple_rnn_cell_10405/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�?
�
L__inference_simple_rnn_103_layer_call_and_return_conditional_losses_21205913

inputsF
4simple_rnn_cell_10405_matmul_readvariableop_resource:C
5simple_rnn_cell_10405_biasadd_readvariableop_resource:H
6simple_rnn_cell_10405_matmul_1_readvariableop_resource:
identity��,simple_rnn_cell_10405/BiasAdd/ReadVariableOp�+simple_rnn_cell_10405/MatMul/ReadVariableOp�-simple_rnn_cell_10405/MatMul_1/ReadVariableOp�while;
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
+simple_rnn_cell_10405/MatMul/ReadVariableOpReadVariableOp4simple_rnn_cell_10405_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
simple_rnn_cell_10405/MatMulMatMulstrided_slice_2:output:03simple_rnn_cell_10405/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
,simple_rnn_cell_10405/BiasAdd/ReadVariableOpReadVariableOp5simple_rnn_cell_10405_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
simple_rnn_cell_10405/BiasAddBiasAdd&simple_rnn_cell_10405/MatMul:product:04simple_rnn_cell_10405/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-simple_rnn_cell_10405/MatMul_1/ReadVariableOpReadVariableOp6simple_rnn_cell_10405_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0�
simple_rnn_cell_10405/MatMul_1MatMulzeros:output:05simple_rnn_cell_10405/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
simple_rnn_cell_10405/addAddV2&simple_rnn_cell_10405/BiasAdd:output:0(simple_rnn_cell_10405/MatMul_1:product:0*
T0*'
_output_shapes
:���������s
simple_rnn_cell_10405/TanhTanhsimple_rnn_cell_10405/add:z:0*
T0*'
_output_shapes
:���������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:04simple_rnn_cell_10405_matmul_readvariableop_resource5simple_rnn_cell_10405_biasadd_readvariableop_resource6simple_rnn_cell_10405_matmul_1_readvariableop_resource*
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
while_body_21205846*
condR
while_cond_21205845*8
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
:���������*
element_dtype0*
num_elementsh
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
:���������g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp-^simple_rnn_cell_10405/BiasAdd/ReadVariableOp,^simple_rnn_cell_10405/MatMul/ReadVariableOp.^simple_rnn_cell_10405/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 2\
,simple_rnn_cell_10405/BiasAdd/ReadVariableOp,simple_rnn_cell_10405/BiasAdd/ReadVariableOp2Z
+simple_rnn_cell_10405/MatMul/ReadVariableOp+simple_rnn_cell_10405/MatMul/ReadVariableOp2^
-simple_rnn_cell_10405/MatMul_1/ReadVariableOp-simple_rnn_cell_10405/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�	
�
L__inference_sequential_103_layer_call_and_return_conditional_losses_21205284
simple_rnn_103_input)
simple_rnn_103_21205276:%
simple_rnn_103_21205278:)
simple_rnn_103_21205280:
identity��&simple_rnn_103/StatefulPartitionedCall�
&simple_rnn_103/StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_103_inputsimple_rnn_103_21205276simple_rnn_103_21205278simple_rnn_103_21205280*
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
GPU 2J 8� *U
fPRN
L__inference_simple_rnn_103_layer_call_and_return_conditional_losses_21205209~
IdentityIdentity/simple_rnn_103/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������o
NoOpNoOp'^simple_rnn_103/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 2P
&simple_rnn_103/StatefulPartitionedCall&simple_rnn_103/StatefulPartitionedCall:a ]
+
_output_shapes
:���������(
.
_user_specified_namesimple_rnn_103_input
�
�
1__inference_sequential_103_layer_call_fn_21205319

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
GPU 2J 8� *U
fPRN
L__inference_sequential_103_layer_call_and_return_conditional_losses_21205242o
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
�5
�
L__inference_simple_rnn_103_layer_call_and_return_conditional_losses_21204782

inputs0
simple_rnn_cell_10405_21204705:,
simple_rnn_cell_10405_21204707:0
simple_rnn_cell_10405_21204709:
identity��-simple_rnn_cell_10405/StatefulPartitionedCall�while;
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
-simple_rnn_cell_10405/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_10405_21204705simple_rnn_cell_10405_21204707simple_rnn_cell_10405_21204709*
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
S__inference_simple_rnn_cell_10405_layer_call_and_return_conditional_losses_21204704n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_10405_21204705simple_rnn_cell_10405_21204707simple_rnn_cell_10405_21204709*
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
while_body_21204718*
condR
while_cond_21204717*8
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
:���������*
element_dtype0*
num_elementsh
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
:���������g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:���������~
NoOpNoOp.^simple_rnn_cell_10405/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2^
-simple_rnn_cell_10405/StatefulPartitionedCall-simple_rnn_cell_10405/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�.
�
while_body_21205142
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0N
<while_simple_rnn_cell_10405_matmul_readvariableop_resource_0:K
=while_simple_rnn_cell_10405_biasadd_readvariableop_resource_0:P
>while_simple_rnn_cell_10405_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorL
:while_simple_rnn_cell_10405_matmul_readvariableop_resource:I
;while_simple_rnn_cell_10405_biasadd_readvariableop_resource:N
<while_simple_rnn_cell_10405_matmul_1_readvariableop_resource:��2while/simple_rnn_cell_10405/BiasAdd/ReadVariableOp�1while/simple_rnn_cell_10405/MatMul/ReadVariableOp�3while/simple_rnn_cell_10405/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
1while/simple_rnn_cell_10405/MatMul/ReadVariableOpReadVariableOp<while_simple_rnn_cell_10405_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0�
"while/simple_rnn_cell_10405/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:09while/simple_rnn_cell_10405/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
2while/simple_rnn_cell_10405/BiasAdd/ReadVariableOpReadVariableOp=while_simple_rnn_cell_10405_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0�
#while/simple_rnn_cell_10405/BiasAddBiasAdd,while/simple_rnn_cell_10405/MatMul:product:0:while/simple_rnn_cell_10405/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
3while/simple_rnn_cell_10405/MatMul_1/ReadVariableOpReadVariableOp>while_simple_rnn_cell_10405_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0�
$while/simple_rnn_cell_10405/MatMul_1MatMulwhile_placeholder_2;while/simple_rnn_cell_10405/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
while/simple_rnn_cell_10405/addAddV2,while/simple_rnn_cell_10405/BiasAdd:output:0.while/simple_rnn_cell_10405/MatMul_1:product:0*
T0*'
_output_shapes
:���������
 while/simple_rnn_cell_10405/TanhTanh#while/simple_rnn_cell_10405/add:z:0*
T0*'
_output_shapes
:���������r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0$while/simple_rnn_cell_10405/Tanh:y:0*
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
: �
while/Identity_4Identity$while/simple_rnn_cell_10405/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:����������

while/NoOpNoOp3^while/simple_rnn_cell_10405/BiasAdd/ReadVariableOp2^while/simple_rnn_cell_10405/MatMul/ReadVariableOp4^while/simple_rnn_cell_10405/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"|
;while_simple_rnn_cell_10405_biasadd_readvariableop_resource=while_simple_rnn_cell_10405_biasadd_readvariableop_resource_0"~
<while_simple_rnn_cell_10405_matmul_1_readvariableop_resource>while_simple_rnn_cell_10405_matmul_1_readvariableop_resource_0"z
:while_simple_rnn_cell_10405_matmul_readvariableop_resource<while_simple_rnn_cell_10405_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������: : : : : 2h
2while/simple_rnn_cell_10405/BiasAdd/ReadVariableOp2while/simple_rnn_cell_10405/BiasAdd/ReadVariableOp2f
1while/simple_rnn_cell_10405/MatMul/ReadVariableOp1while/simple_rnn_cell_10405/MatMul/ReadVariableOp2j
3while/simple_rnn_cell_10405/MatMul_1/ReadVariableOp3while/simple_rnn_cell_10405/MatMul_1/ReadVariableOp: 
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
�.
�
while_body_21205626
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0N
<while_simple_rnn_cell_10405_matmul_readvariableop_resource_0:K
=while_simple_rnn_cell_10405_biasadd_readvariableop_resource_0:P
>while_simple_rnn_cell_10405_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorL
:while_simple_rnn_cell_10405_matmul_readvariableop_resource:I
;while_simple_rnn_cell_10405_biasadd_readvariableop_resource:N
<while_simple_rnn_cell_10405_matmul_1_readvariableop_resource:��2while/simple_rnn_cell_10405/BiasAdd/ReadVariableOp�1while/simple_rnn_cell_10405/MatMul/ReadVariableOp�3while/simple_rnn_cell_10405/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
1while/simple_rnn_cell_10405/MatMul/ReadVariableOpReadVariableOp<while_simple_rnn_cell_10405_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0�
"while/simple_rnn_cell_10405/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:09while/simple_rnn_cell_10405/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
2while/simple_rnn_cell_10405/BiasAdd/ReadVariableOpReadVariableOp=while_simple_rnn_cell_10405_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0�
#while/simple_rnn_cell_10405/BiasAddBiasAdd,while/simple_rnn_cell_10405/MatMul:product:0:while/simple_rnn_cell_10405/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
3while/simple_rnn_cell_10405/MatMul_1/ReadVariableOpReadVariableOp>while_simple_rnn_cell_10405_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0�
$while/simple_rnn_cell_10405/MatMul_1MatMulwhile_placeholder_2;while/simple_rnn_cell_10405/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
while/simple_rnn_cell_10405/addAddV2,while/simple_rnn_cell_10405/BiasAdd:output:0.while/simple_rnn_cell_10405/MatMul_1:product:0*
T0*'
_output_shapes
:���������
 while/simple_rnn_cell_10405/TanhTanh#while/simple_rnn_cell_10405/add:z:0*
T0*'
_output_shapes
:���������r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0$while/simple_rnn_cell_10405/Tanh:y:0*
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
: �
while/Identity_4Identity$while/simple_rnn_cell_10405/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:����������

while/NoOpNoOp3^while/simple_rnn_cell_10405/BiasAdd/ReadVariableOp2^while/simple_rnn_cell_10405/MatMul/ReadVariableOp4^while/simple_rnn_cell_10405/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"|
;while_simple_rnn_cell_10405_biasadd_readvariableop_resource=while_simple_rnn_cell_10405_biasadd_readvariableop_resource_0"~
<while_simple_rnn_cell_10405_matmul_1_readvariableop_resource>while_simple_rnn_cell_10405_matmul_1_readvariableop_resource_0"z
:while_simple_rnn_cell_10405_matmul_readvariableop_resource<while_simple_rnn_cell_10405_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������: : : : : 2h
2while/simple_rnn_cell_10405/BiasAdd/ReadVariableOp2while/simple_rnn_cell_10405/BiasAdd/ReadVariableOp2f
1while/simple_rnn_cell_10405/MatMul/ReadVariableOp1while/simple_rnn_cell_10405/MatMul/ReadVariableOp2j
3while/simple_rnn_cell_10405/MatMul_1/ReadVariableOp3while/simple_rnn_cell_10405/MatMul_1/ReadVariableOp: 
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
while_cond_21205735
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_21205735___redundant_placeholder06
2while_while_cond_21205735___redundant_placeholder16
2while_while_cond_21205735___redundant_placeholder26
2while_while_cond_21205735___redundant_placeholder3
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
while_cond_21205955
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_21205955___redundant_placeholder06
2while_while_cond_21205955___redundant_placeholder16
2while_while_cond_21205955___redundant_placeholder26
2while_while_cond_21205955___redundant_placeholder3
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
!__inference__traced_save_21206117
file_prefixJ
Fsavev2_simple_rnn_103_simple_rnn_cell_10405_kernel_read_readvariableopT
Psavev2_simple_rnn_103_simple_rnn_cell_10405_recurrent_kernel_read_readvariableopH
Dsavev2_simple_rnn_103_simple_rnn_cell_10405_bias_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Fsavev2_simple_rnn_103_simple_rnn_cell_10405_kernel_read_readvariableopPsavev2_simple_rnn_103_simple_rnn_cell_10405_recurrent_kernel_read_readvariableopDsavev2_simple_rnn_103_simple_rnn_cell_10405_bias_read_readvariableopsavev2_const"/device:CPU:0*
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
L__inference_sequential_103_layer_call_and_return_conditional_losses_21205242

inputs)
simple_rnn_103_21205234:%
simple_rnn_103_21205236:)
simple_rnn_103_21205238:
identity��&simple_rnn_103/StatefulPartitionedCall�
&simple_rnn_103/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_103_21205234simple_rnn_103_21205236simple_rnn_103_21205238*
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
GPU 2J 8� *U
fPRN
L__inference_simple_rnn_103_layer_call_and_return_conditional_losses_21205209~
IdentityIdentity/simple_rnn_103/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������o
NoOpNoOp'^simple_rnn_103/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 2P
&simple_rnn_103/StatefulPartitionedCall&simple_rnn_103/StatefulPartitionedCall:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�
�
1__inference_simple_rnn_103_layer_call_fn_21205561
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
GPU 2J 8� *U
fPRN
L__inference_simple_rnn_103_layer_call_and_return_conditional_losses_21204943o
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
�#
�
while_body_21204879
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_08
&while_simple_rnn_cell_10405_21204901_0:4
&while_simple_rnn_cell_10405_21204903_0:8
&while_simple_rnn_cell_10405_21204905_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor6
$while_simple_rnn_cell_10405_21204901:2
$while_simple_rnn_cell_10405_21204903:6
$while_simple_rnn_cell_10405_21204905:��3while/simple_rnn_cell_10405/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
3while/simple_rnn_cell_10405/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2&while_simple_rnn_cell_10405_21204901_0&while_simple_rnn_cell_10405_21204903_0&while_simple_rnn_cell_10405_21204905_0*
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
S__inference_simple_rnn_cell_10405_layer_call_and_return_conditional_losses_21204826r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0<while/simple_rnn_cell_10405/StatefulPartitionedCall:output:0*
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
: �
while/Identity_4Identity<while/simple_rnn_cell_10405/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:����������

while/NoOpNoOp4^while/simple_rnn_cell_10405/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"N
$while_simple_rnn_cell_10405_21204901&while_simple_rnn_cell_10405_21204901_0"N
$while_simple_rnn_cell_10405_21204903&while_simple_rnn_cell_10405_21204903_0"N
$while_simple_rnn_cell_10405_21204905&while_simple_rnn_cell_10405_21204905_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������: : : : : 2j
3while/simple_rnn_cell_10405/StatefulPartitionedCall3while/simple_rnn_cell_10405/StatefulPartitionedCall: 
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
�?
�
L__inference_simple_rnn_103_layer_call_and_return_conditional_losses_21205209

inputsF
4simple_rnn_cell_10405_matmul_readvariableop_resource:C
5simple_rnn_cell_10405_biasadd_readvariableop_resource:H
6simple_rnn_cell_10405_matmul_1_readvariableop_resource:
identity��,simple_rnn_cell_10405/BiasAdd/ReadVariableOp�+simple_rnn_cell_10405/MatMul/ReadVariableOp�-simple_rnn_cell_10405/MatMul_1/ReadVariableOp�while;
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
+simple_rnn_cell_10405/MatMul/ReadVariableOpReadVariableOp4simple_rnn_cell_10405_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
simple_rnn_cell_10405/MatMulMatMulstrided_slice_2:output:03simple_rnn_cell_10405/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
,simple_rnn_cell_10405/BiasAdd/ReadVariableOpReadVariableOp5simple_rnn_cell_10405_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
simple_rnn_cell_10405/BiasAddBiasAdd&simple_rnn_cell_10405/MatMul:product:04simple_rnn_cell_10405/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-simple_rnn_cell_10405/MatMul_1/ReadVariableOpReadVariableOp6simple_rnn_cell_10405_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0�
simple_rnn_cell_10405/MatMul_1MatMulzeros:output:05simple_rnn_cell_10405/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
simple_rnn_cell_10405/addAddV2&simple_rnn_cell_10405/BiasAdd:output:0(simple_rnn_cell_10405/MatMul_1:product:0*
T0*'
_output_shapes
:���������s
simple_rnn_cell_10405/TanhTanhsimple_rnn_cell_10405/add:z:0*
T0*'
_output_shapes
:���������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:04simple_rnn_cell_10405_matmul_readvariableop_resource5simple_rnn_cell_10405_biasadd_readvariableop_resource6simple_rnn_cell_10405_matmul_1_readvariableop_resource*
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
while_body_21205142*
condR
while_cond_21205141*8
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
:���������*
element_dtype0*
num_elementsh
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
:���������g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp-^simple_rnn_cell_10405/BiasAdd/ReadVariableOp,^simple_rnn_cell_10405/MatMul/ReadVariableOp.^simple_rnn_cell_10405/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 2\
,simple_rnn_cell_10405/BiasAdd/ReadVariableOp,simple_rnn_cell_10405/BiasAdd/ReadVariableOp2Z
+simple_rnn_cell_10405/MatMul/ReadVariableOp+simple_rnn_cell_10405/MatMul/ReadVariableOp2^
-simple_rnn_cell_10405/MatMul_1/ReadVariableOp-simple_rnn_cell_10405/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�

�
"simple_rnn_103_while_cond_21205471:
6simple_rnn_103_while_simple_rnn_103_while_loop_counter@
<simple_rnn_103_while_simple_rnn_103_while_maximum_iterations$
 simple_rnn_103_while_placeholder&
"simple_rnn_103_while_placeholder_1&
"simple_rnn_103_while_placeholder_2<
8simple_rnn_103_while_less_simple_rnn_103_strided_slice_1T
Psimple_rnn_103_while_simple_rnn_103_while_cond_21205471___redundant_placeholder0T
Psimple_rnn_103_while_simple_rnn_103_while_cond_21205471___redundant_placeholder1T
Psimple_rnn_103_while_simple_rnn_103_while_cond_21205471___redundant_placeholder2T
Psimple_rnn_103_while_simple_rnn_103_while_cond_21205471___redundant_placeholder3!
simple_rnn_103_while_identity
�
simple_rnn_103/while/LessLess simple_rnn_103_while_placeholder8simple_rnn_103_while_less_simple_rnn_103_strided_slice_1*
T0*
_output_shapes
: i
simple_rnn_103/while/IdentityIdentitysimple_rnn_103/while/Less:z:0*
T0
*
_output_shapes
: "G
simple_rnn_103_while_identity&simple_rnn_103/while/Identity:output:0*(
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
�
�
S__inference_simple_rnn_cell_10405_layer_call_and_return_conditional_losses_21206068

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
�.
�
while_body_21205956
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0N
<while_simple_rnn_cell_10405_matmul_readvariableop_resource_0:K
=while_simple_rnn_cell_10405_biasadd_readvariableop_resource_0:P
>while_simple_rnn_cell_10405_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorL
:while_simple_rnn_cell_10405_matmul_readvariableop_resource:I
;while_simple_rnn_cell_10405_biasadd_readvariableop_resource:N
<while_simple_rnn_cell_10405_matmul_1_readvariableop_resource:��2while/simple_rnn_cell_10405/BiasAdd/ReadVariableOp�1while/simple_rnn_cell_10405/MatMul/ReadVariableOp�3while/simple_rnn_cell_10405/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
1while/simple_rnn_cell_10405/MatMul/ReadVariableOpReadVariableOp<while_simple_rnn_cell_10405_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0�
"while/simple_rnn_cell_10405/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:09while/simple_rnn_cell_10405/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
2while/simple_rnn_cell_10405/BiasAdd/ReadVariableOpReadVariableOp=while_simple_rnn_cell_10405_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0�
#while/simple_rnn_cell_10405/BiasAddBiasAdd,while/simple_rnn_cell_10405/MatMul:product:0:while/simple_rnn_cell_10405/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
3while/simple_rnn_cell_10405/MatMul_1/ReadVariableOpReadVariableOp>while_simple_rnn_cell_10405_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0�
$while/simple_rnn_cell_10405/MatMul_1MatMulwhile_placeholder_2;while/simple_rnn_cell_10405/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
while/simple_rnn_cell_10405/addAddV2,while/simple_rnn_cell_10405/BiasAdd:output:0.while/simple_rnn_cell_10405/MatMul_1:product:0*
T0*'
_output_shapes
:���������
 while/simple_rnn_cell_10405/TanhTanh#while/simple_rnn_cell_10405/add:z:0*
T0*'
_output_shapes
:���������r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0$while/simple_rnn_cell_10405/Tanh:y:0*
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
: �
while/Identity_4Identity$while/simple_rnn_cell_10405/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:����������

while/NoOpNoOp3^while/simple_rnn_cell_10405/BiasAdd/ReadVariableOp2^while/simple_rnn_cell_10405/MatMul/ReadVariableOp4^while/simple_rnn_cell_10405/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"|
;while_simple_rnn_cell_10405_biasadd_readvariableop_resource=while_simple_rnn_cell_10405_biasadd_readvariableop_resource_0"~
<while_simple_rnn_cell_10405_matmul_1_readvariableop_resource>while_simple_rnn_cell_10405_matmul_1_readvariableop_resource_0"z
:while_simple_rnn_cell_10405_matmul_readvariableop_resource<while_simple_rnn_cell_10405_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������: : : : : 2h
2while/simple_rnn_cell_10405/BiasAdd/ReadVariableOp2while/simple_rnn_cell_10405/BiasAdd/ReadVariableOp2f
1while/simple_rnn_cell_10405/MatMul/ReadVariableOp1while/simple_rnn_cell_10405/MatMul/ReadVariableOp2j
3while/simple_rnn_cell_10405/MatMul_1/ReadVariableOp3while/simple_rnn_cell_10405/MatMul_1/ReadVariableOp: 
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
�\
�
#__inference__wrapped_model_21204656
simple_rnn_103_inputd
Rsequential_103_simple_rnn_103_simple_rnn_cell_10405_matmul_readvariableop_resource:a
Ssequential_103_simple_rnn_103_simple_rnn_cell_10405_biasadd_readvariableop_resource:f
Tsequential_103_simple_rnn_103_simple_rnn_cell_10405_matmul_1_readvariableop_resource:
identity��Jsequential_103/simple_rnn_103/simple_rnn_cell_10405/BiasAdd/ReadVariableOp�Isequential_103/simple_rnn_103/simple_rnn_cell_10405/MatMul/ReadVariableOp�Ksequential_103/simple_rnn_103/simple_rnn_cell_10405/MatMul_1/ReadVariableOp�#sequential_103/simple_rnn_103/whileg
#sequential_103/simple_rnn_103/ShapeShapesimple_rnn_103_input*
T0*
_output_shapes
:{
1sequential_103/simple_rnn_103/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3sequential_103/simple_rnn_103/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3sequential_103/simple_rnn_103/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+sequential_103/simple_rnn_103/strided_sliceStridedSlice,sequential_103/simple_rnn_103/Shape:output:0:sequential_103/simple_rnn_103/strided_slice/stack:output:0<sequential_103/simple_rnn_103/strided_slice/stack_1:output:0<sequential_103/simple_rnn_103/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
,sequential_103/simple_rnn_103/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
*sequential_103/simple_rnn_103/zeros/packedPack4sequential_103/simple_rnn_103/strided_slice:output:05sequential_103/simple_rnn_103/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:n
)sequential_103/simple_rnn_103/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
#sequential_103/simple_rnn_103/zerosFill3sequential_103/simple_rnn_103/zeros/packed:output:02sequential_103/simple_rnn_103/zeros/Const:output:0*
T0*'
_output_shapes
:����������
,sequential_103/simple_rnn_103/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
'sequential_103/simple_rnn_103/transpose	Transposesimple_rnn_103_input5sequential_103/simple_rnn_103/transpose/perm:output:0*
T0*+
_output_shapes
:(����������
%sequential_103/simple_rnn_103/Shape_1Shape+sequential_103/simple_rnn_103/transpose:y:0*
T0*
_output_shapes
:}
3sequential_103/simple_rnn_103/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5sequential_103/simple_rnn_103/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5sequential_103/simple_rnn_103/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
-sequential_103/simple_rnn_103/strided_slice_1StridedSlice.sequential_103/simple_rnn_103/Shape_1:output:0<sequential_103/simple_rnn_103/strided_slice_1/stack:output:0>sequential_103/simple_rnn_103/strided_slice_1/stack_1:output:0>sequential_103/simple_rnn_103/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
9sequential_103/simple_rnn_103/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
+sequential_103/simple_rnn_103/TensorArrayV2TensorListReserveBsequential_103/simple_rnn_103/TensorArrayV2/element_shape:output:06sequential_103/simple_rnn_103/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Ssequential_103/simple_rnn_103/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Esequential_103/simple_rnn_103/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor+sequential_103/simple_rnn_103/transpose:y:0\sequential_103/simple_rnn_103/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���}
3sequential_103/simple_rnn_103/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5sequential_103/simple_rnn_103/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5sequential_103/simple_rnn_103/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
-sequential_103/simple_rnn_103/strided_slice_2StridedSlice+sequential_103/simple_rnn_103/transpose:y:0<sequential_103/simple_rnn_103/strided_slice_2/stack:output:0>sequential_103/simple_rnn_103/strided_slice_2/stack_1:output:0>sequential_103/simple_rnn_103/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
Isequential_103/simple_rnn_103/simple_rnn_cell_10405/MatMul/ReadVariableOpReadVariableOpRsequential_103_simple_rnn_103_simple_rnn_cell_10405_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
:sequential_103/simple_rnn_103/simple_rnn_cell_10405/MatMulMatMul6sequential_103/simple_rnn_103/strided_slice_2:output:0Qsequential_103/simple_rnn_103/simple_rnn_cell_10405/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Jsequential_103/simple_rnn_103/simple_rnn_cell_10405/BiasAdd/ReadVariableOpReadVariableOpSsequential_103_simple_rnn_103_simple_rnn_cell_10405_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
;sequential_103/simple_rnn_103/simple_rnn_cell_10405/BiasAddBiasAddDsequential_103/simple_rnn_103/simple_rnn_cell_10405/MatMul:product:0Rsequential_103/simple_rnn_103/simple_rnn_cell_10405/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Ksequential_103/simple_rnn_103/simple_rnn_cell_10405/MatMul_1/ReadVariableOpReadVariableOpTsequential_103_simple_rnn_103_simple_rnn_cell_10405_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0�
<sequential_103/simple_rnn_103/simple_rnn_cell_10405/MatMul_1MatMul,sequential_103/simple_rnn_103/zeros:output:0Ssequential_103/simple_rnn_103/simple_rnn_cell_10405/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
7sequential_103/simple_rnn_103/simple_rnn_cell_10405/addAddV2Dsequential_103/simple_rnn_103/simple_rnn_cell_10405/BiasAdd:output:0Fsequential_103/simple_rnn_103/simple_rnn_cell_10405/MatMul_1:product:0*
T0*'
_output_shapes
:����������
8sequential_103/simple_rnn_103/simple_rnn_cell_10405/TanhTanh;sequential_103/simple_rnn_103/simple_rnn_cell_10405/add:z:0*
T0*'
_output_shapes
:����������
;sequential_103/simple_rnn_103/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   |
:sequential_103/simple_rnn_103/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
-sequential_103/simple_rnn_103/TensorArrayV2_1TensorListReserveDsequential_103/simple_rnn_103/TensorArrayV2_1/element_shape:output:0Csequential_103/simple_rnn_103/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���d
"sequential_103/simple_rnn_103/timeConst*
_output_shapes
: *
dtype0*
value	B : �
6sequential_103/simple_rnn_103/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������r
0sequential_103/simple_rnn_103/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
#sequential_103/simple_rnn_103/whileWhile9sequential_103/simple_rnn_103/while/loop_counter:output:0?sequential_103/simple_rnn_103/while/maximum_iterations:output:0+sequential_103/simple_rnn_103/time:output:06sequential_103/simple_rnn_103/TensorArrayV2_1:handle:0,sequential_103/simple_rnn_103/zeros:output:06sequential_103/simple_rnn_103/strided_slice_1:output:0Usequential_103/simple_rnn_103/TensorArrayUnstack/TensorListFromTensor:output_handle:0Rsequential_103_simple_rnn_103_simple_rnn_cell_10405_matmul_readvariableop_resourceSsequential_103_simple_rnn_103_simple_rnn_cell_10405_biasadd_readvariableop_resourceTsequential_103_simple_rnn_103_simple_rnn_cell_10405_matmul_1_readvariableop_resource*
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
_stateful_parallelism( *=
body5R3
1sequential_103_simple_rnn_103_while_body_21204589*=
cond5R3
1sequential_103_simple_rnn_103_while_cond_21204588*8
output_shapes'
%: : : : :���������: : : : : *
parallel_iterations �
Nsequential_103/simple_rnn_103/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
@sequential_103/simple_rnn_103/TensorArrayV2Stack/TensorListStackTensorListStack,sequential_103/simple_rnn_103/while:output:3Wsequential_103/simple_rnn_103/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������*
element_dtype0*
num_elements�
3sequential_103/simple_rnn_103/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������
5sequential_103/simple_rnn_103/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
5sequential_103/simple_rnn_103/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
-sequential_103/simple_rnn_103/strided_slice_3StridedSliceIsequential_103/simple_rnn_103/TensorArrayV2Stack/TensorListStack:tensor:0<sequential_103/simple_rnn_103/strided_slice_3/stack:output:0>sequential_103/simple_rnn_103/strided_slice_3/stack_1:output:0>sequential_103/simple_rnn_103/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
.sequential_103/simple_rnn_103/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
)sequential_103/simple_rnn_103/transpose_1	TransposeIsequential_103/simple_rnn_103/TensorArrayV2Stack/TensorListStack:tensor:07sequential_103/simple_rnn_103/transpose_1/perm:output:0*
T0*+
_output_shapes
:����������
IdentityIdentity6sequential_103/simple_rnn_103/strided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOpK^sequential_103/simple_rnn_103/simple_rnn_cell_10405/BiasAdd/ReadVariableOpJ^sequential_103/simple_rnn_103/simple_rnn_cell_10405/MatMul/ReadVariableOpL^sequential_103/simple_rnn_103/simple_rnn_cell_10405/MatMul_1/ReadVariableOp$^sequential_103/simple_rnn_103/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 2�
Jsequential_103/simple_rnn_103/simple_rnn_cell_10405/BiasAdd/ReadVariableOpJsequential_103/simple_rnn_103/simple_rnn_cell_10405/BiasAdd/ReadVariableOp2�
Isequential_103/simple_rnn_103/simple_rnn_cell_10405/MatMul/ReadVariableOpIsequential_103/simple_rnn_103/simple_rnn_cell_10405/MatMul/ReadVariableOp2�
Ksequential_103/simple_rnn_103/simple_rnn_cell_10405/MatMul_1/ReadVariableOpKsequential_103/simple_rnn_103/simple_rnn_cell_10405/MatMul_1/ReadVariableOp2J
#sequential_103/simple_rnn_103/while#sequential_103/simple_rnn_103/while:a ]
+
_output_shapes
:���������(
.
_user_specified_namesimple_rnn_103_input
�
�
while_cond_21205845
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_21205845___redundant_placeholder06
2while_while_cond_21205845___redundant_placeholder16
2while_while_cond_21205845___redundant_placeholder26
2while_while_cond_21205845___redundant_placeholder3
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
�?
�
L__inference_simple_rnn_103_layer_call_and_return_conditional_losses_21205693
inputs_0F
4simple_rnn_cell_10405_matmul_readvariableop_resource:C
5simple_rnn_cell_10405_biasadd_readvariableop_resource:H
6simple_rnn_cell_10405_matmul_1_readvariableop_resource:
identity��,simple_rnn_cell_10405/BiasAdd/ReadVariableOp�+simple_rnn_cell_10405/MatMul/ReadVariableOp�-simple_rnn_cell_10405/MatMul_1/ReadVariableOp�while=
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
+simple_rnn_cell_10405/MatMul/ReadVariableOpReadVariableOp4simple_rnn_cell_10405_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
simple_rnn_cell_10405/MatMulMatMulstrided_slice_2:output:03simple_rnn_cell_10405/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
,simple_rnn_cell_10405/BiasAdd/ReadVariableOpReadVariableOp5simple_rnn_cell_10405_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
simple_rnn_cell_10405/BiasAddBiasAdd&simple_rnn_cell_10405/MatMul:product:04simple_rnn_cell_10405/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-simple_rnn_cell_10405/MatMul_1/ReadVariableOpReadVariableOp6simple_rnn_cell_10405_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0�
simple_rnn_cell_10405/MatMul_1MatMulzeros:output:05simple_rnn_cell_10405/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
simple_rnn_cell_10405/addAddV2&simple_rnn_cell_10405/BiasAdd:output:0(simple_rnn_cell_10405/MatMul_1:product:0*
T0*'
_output_shapes
:���������s
simple_rnn_cell_10405/TanhTanhsimple_rnn_cell_10405/add:z:0*
T0*'
_output_shapes
:���������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:04simple_rnn_cell_10405_matmul_readvariableop_resource5simple_rnn_cell_10405_biasadd_readvariableop_resource6simple_rnn_cell_10405_matmul_1_readvariableop_resource*
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
while_body_21205626*
condR
while_cond_21205625*8
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
:���������*
element_dtype0*
num_elementsh
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
:���������g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp-^simple_rnn_cell_10405/BiasAdd/ReadVariableOp,^simple_rnn_cell_10405/MatMul/ReadVariableOp.^simple_rnn_cell_10405/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2\
,simple_rnn_cell_10405/BiasAdd/ReadVariableOp,simple_rnn_cell_10405/BiasAdd/ReadVariableOp2Z
+simple_rnn_cell_10405/MatMul/ReadVariableOp+simple_rnn_cell_10405/MatMul/ReadVariableOp2^
-simple_rnn_cell_10405/MatMul_1/ReadVariableOp-simple_rnn_cell_10405/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
while_cond_21205000
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_21205000___redundant_placeholder06
2while_while_cond_21205000___redundant_placeholder16
2while_while_cond_21205000___redundant_placeholder26
2while_while_cond_21205000___redundant_placeholder3
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
�=
�
"simple_rnn_103_while_body_21205472:
6simple_rnn_103_while_simple_rnn_103_while_loop_counter@
<simple_rnn_103_while_simple_rnn_103_while_maximum_iterations$
 simple_rnn_103_while_placeholder&
"simple_rnn_103_while_placeholder_1&
"simple_rnn_103_while_placeholder_29
5simple_rnn_103_while_simple_rnn_103_strided_slice_1_0u
qsimple_rnn_103_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_103_tensorarrayunstack_tensorlistfromtensor_0]
Ksimple_rnn_103_while_simple_rnn_cell_10405_matmul_readvariableop_resource_0:Z
Lsimple_rnn_103_while_simple_rnn_cell_10405_biasadd_readvariableop_resource_0:_
Msimple_rnn_103_while_simple_rnn_cell_10405_matmul_1_readvariableop_resource_0:!
simple_rnn_103_while_identity#
simple_rnn_103_while_identity_1#
simple_rnn_103_while_identity_2#
simple_rnn_103_while_identity_3#
simple_rnn_103_while_identity_47
3simple_rnn_103_while_simple_rnn_103_strided_slice_1s
osimple_rnn_103_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_103_tensorarrayunstack_tensorlistfromtensor[
Isimple_rnn_103_while_simple_rnn_cell_10405_matmul_readvariableop_resource:X
Jsimple_rnn_103_while_simple_rnn_cell_10405_biasadd_readvariableop_resource:]
Ksimple_rnn_103_while_simple_rnn_cell_10405_matmul_1_readvariableop_resource:��Asimple_rnn_103/while/simple_rnn_cell_10405/BiasAdd/ReadVariableOp�@simple_rnn_103/while/simple_rnn_cell_10405/MatMul/ReadVariableOp�Bsimple_rnn_103/while/simple_rnn_cell_10405/MatMul_1/ReadVariableOp�
Fsimple_rnn_103/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
8simple_rnn_103/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemqsimple_rnn_103_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_103_tensorarrayunstack_tensorlistfromtensor_0 simple_rnn_103_while_placeholderOsimple_rnn_103/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
@simple_rnn_103/while/simple_rnn_cell_10405/MatMul/ReadVariableOpReadVariableOpKsimple_rnn_103_while_simple_rnn_cell_10405_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0�
1simple_rnn_103/while/simple_rnn_cell_10405/MatMulMatMul?simple_rnn_103/while/TensorArrayV2Read/TensorListGetItem:item:0Hsimple_rnn_103/while/simple_rnn_cell_10405/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Asimple_rnn_103/while/simple_rnn_cell_10405/BiasAdd/ReadVariableOpReadVariableOpLsimple_rnn_103_while_simple_rnn_cell_10405_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0�
2simple_rnn_103/while/simple_rnn_cell_10405/BiasAddBiasAdd;simple_rnn_103/while/simple_rnn_cell_10405/MatMul:product:0Isimple_rnn_103/while/simple_rnn_cell_10405/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Bsimple_rnn_103/while/simple_rnn_cell_10405/MatMul_1/ReadVariableOpReadVariableOpMsimple_rnn_103_while_simple_rnn_cell_10405_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0�
3simple_rnn_103/while/simple_rnn_cell_10405/MatMul_1MatMul"simple_rnn_103_while_placeholder_2Jsimple_rnn_103/while/simple_rnn_cell_10405/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
.simple_rnn_103/while/simple_rnn_cell_10405/addAddV2;simple_rnn_103/while/simple_rnn_cell_10405/BiasAdd:output:0=simple_rnn_103/while/simple_rnn_cell_10405/MatMul_1:product:0*
T0*'
_output_shapes
:����������
/simple_rnn_103/while/simple_rnn_cell_10405/TanhTanh2simple_rnn_103/while/simple_rnn_cell_10405/add:z:0*
T0*'
_output_shapes
:����������
?simple_rnn_103/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
9simple_rnn_103/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem"simple_rnn_103_while_placeholder_1Hsimple_rnn_103/while/TensorArrayV2Write/TensorListSetItem/index:output:03simple_rnn_103/while/simple_rnn_cell_10405/Tanh:y:0*
_output_shapes
: *
element_dtype0:���\
simple_rnn_103/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_103/while/addAddV2 simple_rnn_103_while_placeholder#simple_rnn_103/while/add/y:output:0*
T0*
_output_shapes
: ^
simple_rnn_103/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_103/while/add_1AddV26simple_rnn_103_while_simple_rnn_103_while_loop_counter%simple_rnn_103/while/add_1/y:output:0*
T0*
_output_shapes
: �
simple_rnn_103/while/IdentityIdentitysimple_rnn_103/while/add_1:z:0^simple_rnn_103/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_103/while/Identity_1Identity<simple_rnn_103_while_simple_rnn_103_while_maximum_iterations^simple_rnn_103/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_103/while/Identity_2Identitysimple_rnn_103/while/add:z:0^simple_rnn_103/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_103/while/Identity_3IdentityIsimple_rnn_103/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_103/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_103/while/Identity_4Identity3simple_rnn_103/while/simple_rnn_cell_10405/Tanh:y:0^simple_rnn_103/while/NoOp*
T0*'
_output_shapes
:����������
simple_rnn_103/while/NoOpNoOpB^simple_rnn_103/while/simple_rnn_cell_10405/BiasAdd/ReadVariableOpA^simple_rnn_103/while/simple_rnn_cell_10405/MatMul/ReadVariableOpC^simple_rnn_103/while/simple_rnn_cell_10405/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "G
simple_rnn_103_while_identity&simple_rnn_103/while/Identity:output:0"K
simple_rnn_103_while_identity_1(simple_rnn_103/while/Identity_1:output:0"K
simple_rnn_103_while_identity_2(simple_rnn_103/while/Identity_2:output:0"K
simple_rnn_103_while_identity_3(simple_rnn_103/while/Identity_3:output:0"K
simple_rnn_103_while_identity_4(simple_rnn_103/while/Identity_4:output:0"l
3simple_rnn_103_while_simple_rnn_103_strided_slice_15simple_rnn_103_while_simple_rnn_103_strided_slice_1_0"�
Jsimple_rnn_103_while_simple_rnn_cell_10405_biasadd_readvariableop_resourceLsimple_rnn_103_while_simple_rnn_cell_10405_biasadd_readvariableop_resource_0"�
Ksimple_rnn_103_while_simple_rnn_cell_10405_matmul_1_readvariableop_resourceMsimple_rnn_103_while_simple_rnn_cell_10405_matmul_1_readvariableop_resource_0"�
Isimple_rnn_103_while_simple_rnn_cell_10405_matmul_readvariableop_resourceKsimple_rnn_103_while_simple_rnn_cell_10405_matmul_readvariableop_resource_0"�
osimple_rnn_103_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_103_tensorarrayunstack_tensorlistfromtensorqsimple_rnn_103_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_103_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������: : : : : 2�
Asimple_rnn_103/while/simple_rnn_cell_10405/BiasAdd/ReadVariableOpAsimple_rnn_103/while/simple_rnn_cell_10405/BiasAdd/ReadVariableOp2�
@simple_rnn_103/while/simple_rnn_cell_10405/MatMul/ReadVariableOp@simple_rnn_103/while/simple_rnn_cell_10405/MatMul/ReadVariableOp2�
Bsimple_rnn_103/while/simple_rnn_cell_10405/MatMul_1/ReadVariableOpBsimple_rnn_103/while/simple_rnn_cell_10405/MatMul_1/ReadVariableOp: 
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
�
�
S__inference_simple_rnn_cell_10405_layer_call_and_return_conditional_losses_21204704

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
�.
�
while_body_21205001
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0N
<while_simple_rnn_cell_10405_matmul_readvariableop_resource_0:K
=while_simple_rnn_cell_10405_biasadd_readvariableop_resource_0:P
>while_simple_rnn_cell_10405_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorL
:while_simple_rnn_cell_10405_matmul_readvariableop_resource:I
;while_simple_rnn_cell_10405_biasadd_readvariableop_resource:N
<while_simple_rnn_cell_10405_matmul_1_readvariableop_resource:��2while/simple_rnn_cell_10405/BiasAdd/ReadVariableOp�1while/simple_rnn_cell_10405/MatMul/ReadVariableOp�3while/simple_rnn_cell_10405/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
1while/simple_rnn_cell_10405/MatMul/ReadVariableOpReadVariableOp<while_simple_rnn_cell_10405_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0�
"while/simple_rnn_cell_10405/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:09while/simple_rnn_cell_10405/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
2while/simple_rnn_cell_10405/BiasAdd/ReadVariableOpReadVariableOp=while_simple_rnn_cell_10405_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0�
#while/simple_rnn_cell_10405/BiasAddBiasAdd,while/simple_rnn_cell_10405/MatMul:product:0:while/simple_rnn_cell_10405/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
3while/simple_rnn_cell_10405/MatMul_1/ReadVariableOpReadVariableOp>while_simple_rnn_cell_10405_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0�
$while/simple_rnn_cell_10405/MatMul_1MatMulwhile_placeholder_2;while/simple_rnn_cell_10405/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
while/simple_rnn_cell_10405/addAddV2,while/simple_rnn_cell_10405/BiasAdd:output:0.while/simple_rnn_cell_10405/MatMul_1:product:0*
T0*'
_output_shapes
:���������
 while/simple_rnn_cell_10405/TanhTanh#while/simple_rnn_cell_10405/add:z:0*
T0*'
_output_shapes
:���������r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0$while/simple_rnn_cell_10405/Tanh:y:0*
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
: �
while/Identity_4Identity$while/simple_rnn_cell_10405/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:����������

while/NoOpNoOp3^while/simple_rnn_cell_10405/BiasAdd/ReadVariableOp2^while/simple_rnn_cell_10405/MatMul/ReadVariableOp4^while/simple_rnn_cell_10405/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"|
;while_simple_rnn_cell_10405_biasadd_readvariableop_resource=while_simple_rnn_cell_10405_biasadd_readvariableop_resource_0"~
<while_simple_rnn_cell_10405_matmul_1_readvariableop_resource>while_simple_rnn_cell_10405_matmul_1_readvariableop_resource_0"z
:while_simple_rnn_cell_10405_matmul_readvariableop_resource<while_simple_rnn_cell_10405_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������: : : : : 2h
2while/simple_rnn_cell_10405/BiasAdd/ReadVariableOp2while/simple_rnn_cell_10405/BiasAdd/ReadVariableOp2f
1while/simple_rnn_cell_10405/MatMul/ReadVariableOp1while/simple_rnn_cell_10405/MatMul/ReadVariableOp2j
3while/simple_rnn_cell_10405/MatMul_1/ReadVariableOp3while/simple_rnn_cell_10405/MatMul_1/ReadVariableOp: 
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
while_cond_21205625
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_21205625___redundant_placeholder06
2while_while_cond_21205625___redundant_placeholder16
2while_while_cond_21205625___redundant_placeholder26
2while_while_cond_21205625___redundant_placeholder3
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
�	
�
L__inference_sequential_103_layer_call_and_return_conditional_losses_21205273
simple_rnn_103_input)
simple_rnn_103_21205265:%
simple_rnn_103_21205267:)
simple_rnn_103_21205269:
identity��&simple_rnn_103/StatefulPartitionedCall�
&simple_rnn_103/StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_103_inputsimple_rnn_103_21205265simple_rnn_103_21205267simple_rnn_103_21205269*
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
GPU 2J 8� *U
fPRN
L__inference_simple_rnn_103_layer_call_and_return_conditional_losses_21205068~
IdentityIdentity/simple_rnn_103/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������o
NoOpNoOp'^simple_rnn_103/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 2P
&simple_rnn_103/StatefulPartitionedCall&simple_rnn_103/StatefulPartitionedCall:a ]
+
_output_shapes
:���������(
.
_user_specified_namesimple_rnn_103_input
�
�
1__inference_sequential_103_layer_call_fn_21205262
simple_rnn_103_input
unknown:
	unknown_0:
	unknown_1:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_103_inputunknown	unknown_0	unknown_1*
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
GPU 2J 8� *U
fPRN
L__inference_sequential_103_layer_call_and_return_conditional_losses_21205242o
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
StatefulPartitionedCallStatefulPartitionedCall:a ]
+
_output_shapes
:���������(
.
_user_specified_namesimple_rnn_103_input
�

�
8__inference_simple_rnn_cell_10405_layer_call_fn_21206037

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
S__inference_simple_rnn_cell_10405_layer_call_and_return_conditional_losses_21204704o
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
�M
�
L__inference_sequential_103_layer_call_and_return_conditional_losses_21205539

inputsU
Csimple_rnn_103_simple_rnn_cell_10405_matmul_readvariableop_resource:R
Dsimple_rnn_103_simple_rnn_cell_10405_biasadd_readvariableop_resource:W
Esimple_rnn_103_simple_rnn_cell_10405_matmul_1_readvariableop_resource:
identity��;simple_rnn_103/simple_rnn_cell_10405/BiasAdd/ReadVariableOp�:simple_rnn_103/simple_rnn_cell_10405/MatMul/ReadVariableOp�<simple_rnn_103/simple_rnn_cell_10405/MatMul_1/ReadVariableOp�simple_rnn_103/whileJ
simple_rnn_103/ShapeShapeinputs*
T0*
_output_shapes
:l
"simple_rnn_103/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_103/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_103/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_103/strided_sliceStridedSlicesimple_rnn_103/Shape:output:0+simple_rnn_103/strided_slice/stack:output:0-simple_rnn_103/strided_slice/stack_1:output:0-simple_rnn_103/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
simple_rnn_103/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_103/zeros/packedPack%simple_rnn_103/strided_slice:output:0&simple_rnn_103/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:_
simple_rnn_103/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
simple_rnn_103/zerosFill$simple_rnn_103/zeros/packed:output:0#simple_rnn_103/zeros/Const:output:0*
T0*'
_output_shapes
:���������r
simple_rnn_103/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_103/transpose	Transposeinputs&simple_rnn_103/transpose/perm:output:0*
T0*+
_output_shapes
:(���������b
simple_rnn_103/Shape_1Shapesimple_rnn_103/transpose:y:0*
T0*
_output_shapes
:n
$simple_rnn_103/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&simple_rnn_103/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&simple_rnn_103/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_103/strided_slice_1StridedSlicesimple_rnn_103/Shape_1:output:0-simple_rnn_103/strided_slice_1/stack:output:0/simple_rnn_103/strided_slice_1/stack_1:output:0/simple_rnn_103/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
*simple_rnn_103/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
simple_rnn_103/TensorArrayV2TensorListReserve3simple_rnn_103/TensorArrayV2/element_shape:output:0'simple_rnn_103/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Dsimple_rnn_103/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
6simple_rnn_103/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_103/transpose:y:0Msimple_rnn_103/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���n
$simple_rnn_103/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&simple_rnn_103/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&simple_rnn_103/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_103/strided_slice_2StridedSlicesimple_rnn_103/transpose:y:0-simple_rnn_103/strided_slice_2/stack:output:0/simple_rnn_103/strided_slice_2/stack_1:output:0/simple_rnn_103/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
:simple_rnn_103/simple_rnn_cell_10405/MatMul/ReadVariableOpReadVariableOpCsimple_rnn_103_simple_rnn_cell_10405_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
+simple_rnn_103/simple_rnn_cell_10405/MatMulMatMul'simple_rnn_103/strided_slice_2:output:0Bsimple_rnn_103/simple_rnn_cell_10405/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
;simple_rnn_103/simple_rnn_cell_10405/BiasAdd/ReadVariableOpReadVariableOpDsimple_rnn_103_simple_rnn_cell_10405_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
,simple_rnn_103/simple_rnn_cell_10405/BiasAddBiasAdd5simple_rnn_103/simple_rnn_cell_10405/MatMul:product:0Csimple_rnn_103/simple_rnn_cell_10405/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
<simple_rnn_103/simple_rnn_cell_10405/MatMul_1/ReadVariableOpReadVariableOpEsimple_rnn_103_simple_rnn_cell_10405_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0�
-simple_rnn_103/simple_rnn_cell_10405/MatMul_1MatMulsimple_rnn_103/zeros:output:0Dsimple_rnn_103/simple_rnn_cell_10405/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
(simple_rnn_103/simple_rnn_cell_10405/addAddV25simple_rnn_103/simple_rnn_cell_10405/BiasAdd:output:07simple_rnn_103/simple_rnn_cell_10405/MatMul_1:product:0*
T0*'
_output_shapes
:����������
)simple_rnn_103/simple_rnn_cell_10405/TanhTanh,simple_rnn_103/simple_rnn_cell_10405/add:z:0*
T0*'
_output_shapes
:���������}
,simple_rnn_103/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   m
+simple_rnn_103/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_103/TensorArrayV2_1TensorListReserve5simple_rnn_103/TensorArrayV2_1/element_shape:output:04simple_rnn_103/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���U
simple_rnn_103/timeConst*
_output_shapes
: *
dtype0*
value	B : r
'simple_rnn_103/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������c
!simple_rnn_103/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
simple_rnn_103/whileWhile*simple_rnn_103/while/loop_counter:output:00simple_rnn_103/while/maximum_iterations:output:0simple_rnn_103/time:output:0'simple_rnn_103/TensorArrayV2_1:handle:0simple_rnn_103/zeros:output:0'simple_rnn_103/strided_slice_1:output:0Fsimple_rnn_103/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csimple_rnn_103_simple_rnn_cell_10405_matmul_readvariableop_resourceDsimple_rnn_103_simple_rnn_cell_10405_biasadd_readvariableop_resourceEsimple_rnn_103_simple_rnn_cell_10405_matmul_1_readvariableop_resource*
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
_stateful_parallelism( *.
body&R$
"simple_rnn_103_while_body_21205472*.
cond&R$
"simple_rnn_103_while_cond_21205471*8
output_shapes'
%: : : : :���������: : : : : *
parallel_iterations �
?simple_rnn_103/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
1simple_rnn_103/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_103/while:output:3Hsimple_rnn_103/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������*
element_dtype0*
num_elementsw
$simple_rnn_103/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������p
&simple_rnn_103/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: p
&simple_rnn_103/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_103/strided_slice_3StridedSlice:simple_rnn_103/TensorArrayV2Stack/TensorListStack:tensor:0-simple_rnn_103/strided_slice_3/stack:output:0/simple_rnn_103/strided_slice_3/stack_1:output:0/simple_rnn_103/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_maskt
simple_rnn_103/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_103/transpose_1	Transpose:simple_rnn_103/TensorArrayV2Stack/TensorListStack:tensor:0(simple_rnn_103/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������v
IdentityIdentity'simple_rnn_103/strided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp<^simple_rnn_103/simple_rnn_cell_10405/BiasAdd/ReadVariableOp;^simple_rnn_103/simple_rnn_cell_10405/MatMul/ReadVariableOp=^simple_rnn_103/simple_rnn_cell_10405/MatMul_1/ReadVariableOp^simple_rnn_103/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 2z
;simple_rnn_103/simple_rnn_cell_10405/BiasAdd/ReadVariableOp;simple_rnn_103/simple_rnn_cell_10405/BiasAdd/ReadVariableOp2x
:simple_rnn_103/simple_rnn_cell_10405/MatMul/ReadVariableOp:simple_rnn_103/simple_rnn_cell_10405/MatMul/ReadVariableOp2|
<simple_rnn_103/simple_rnn_cell_10405/MatMul_1/ReadVariableOp<simple_rnn_103/simple_rnn_cell_10405/MatMul_1/ReadVariableOp2,
simple_rnn_103/whilesimple_rnn_103/while:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�

�
"simple_rnn_103_while_cond_21205361:
6simple_rnn_103_while_simple_rnn_103_while_loop_counter@
<simple_rnn_103_while_simple_rnn_103_while_maximum_iterations$
 simple_rnn_103_while_placeholder&
"simple_rnn_103_while_placeholder_1&
"simple_rnn_103_while_placeholder_2<
8simple_rnn_103_while_less_simple_rnn_103_strided_slice_1T
Psimple_rnn_103_while_simple_rnn_103_while_cond_21205361___redundant_placeholder0T
Psimple_rnn_103_while_simple_rnn_103_while_cond_21205361___redundant_placeholder1T
Psimple_rnn_103_while_simple_rnn_103_while_cond_21205361___redundant_placeholder2T
Psimple_rnn_103_while_simple_rnn_103_while_cond_21205361___redundant_placeholder3!
simple_rnn_103_while_identity
�
simple_rnn_103/while/LessLess simple_rnn_103_while_placeholder8simple_rnn_103_while_less_simple_rnn_103_strided_slice_1*
T0*
_output_shapes
: i
simple_rnn_103/while/IdentityIdentitysimple_rnn_103/while/Less:z:0*
T0
*
_output_shapes
: "G
simple_rnn_103_while_identity&simple_rnn_103/while/Identity:output:0*(
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
while_cond_21204878
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_21204878___redundant_placeholder06
2while_while_cond_21204878___redundant_placeholder16
2while_while_cond_21204878___redundant_placeholder26
2while_while_cond_21204878___redundant_placeholder3
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
:"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
Y
simple_rnn_103_inputA
&serving_default_simple_rnn_103_input:0���������(B
simple_rnn_1030
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
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

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
cell

state_spec"
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
�
trace_0
trace_1
trace_2
trace_32�
1__inference_sequential_103_layer_call_fn_21205086
1__inference_sequential_103_layer_call_fn_21205308
1__inference_sequential_103_layer_call_fn_21205319
1__inference_sequential_103_layer_call_fn_21205262�
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
 ztrace_0ztrace_1ztrace_2ztrace_3
�
trace_0
trace_1
 trace_2
!trace_32�
L__inference_sequential_103_layer_call_and_return_conditional_losses_21205429
L__inference_sequential_103_layer_call_and_return_conditional_losses_21205539
L__inference_sequential_103_layer_call_and_return_conditional_losses_21205273
L__inference_sequential_103_layer_call_and_return_conditional_losses_21205284�
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
 ztrace_0ztrace_1z trace_2z!trace_3
�B�
#__inference__wrapped_model_21204656simple_rnn_103_input"�
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
"serving_default"
signature_map
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

#states
$non_trainable_variables

%layers
&metrics
'layer_regularization_losses
(layer_metrics

	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
)trace_0
*trace_1
+trace_2
,trace_32�
1__inference_simple_rnn_103_layer_call_fn_21205550
1__inference_simple_rnn_103_layer_call_fn_21205561
1__inference_simple_rnn_103_layer_call_fn_21205572
1__inference_simple_rnn_103_layer_call_fn_21205583�
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
 z)trace_0z*trace_1z+trace_2z,trace_3
�
-trace_0
.trace_1
/trace_2
0trace_32�
L__inference_simple_rnn_103_layer_call_and_return_conditional_losses_21205693
L__inference_simple_rnn_103_layer_call_and_return_conditional_losses_21205803
L__inference_simple_rnn_103_layer_call_and_return_conditional_losses_21205913
L__inference_simple_rnn_103_layer_call_and_return_conditional_losses_21206023�
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
 z-trace_0z.trace_1z/trace_2z0trace_3
�
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses
7_random_generator

kernel
recurrent_kernel
bias"
_tf_keras_layer
 "
trackable_list_wrapper
=:;2+simple_rnn_103/simple_rnn_cell_10405/kernel
G:E25simple_rnn_103/simple_rnn_cell_10405/recurrent_kernel
7:52)simple_rnn_103/simple_rnn_cell_10405/bias
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
�B�
1__inference_sequential_103_layer_call_fn_21205086simple_rnn_103_input"�
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
�B�
1__inference_sequential_103_layer_call_fn_21205308inputs"�
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
�B�
1__inference_sequential_103_layer_call_fn_21205319inputs"�
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
�B�
1__inference_sequential_103_layer_call_fn_21205262simple_rnn_103_input"�
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
�B�
L__inference_sequential_103_layer_call_and_return_conditional_losses_21205429inputs"�
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
�B�
L__inference_sequential_103_layer_call_and_return_conditional_losses_21205539inputs"�
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
�B�
L__inference_sequential_103_layer_call_and_return_conditional_losses_21205273simple_rnn_103_input"�
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
�B�
L__inference_sequential_103_layer_call_and_return_conditional_losses_21205284simple_rnn_103_input"�
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
&__inference_signature_wrapper_21205297simple_rnn_103_input"�
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
1__inference_simple_rnn_103_layer_call_fn_21205550inputs/0"�
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
�B�
1__inference_simple_rnn_103_layer_call_fn_21205561inputs/0"�
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
�B�
1__inference_simple_rnn_103_layer_call_fn_21205572inputs"�
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
�B�
1__inference_simple_rnn_103_layer_call_fn_21205583inputs"�
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
�B�
L__inference_simple_rnn_103_layer_call_and_return_conditional_losses_21205693inputs/0"�
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
�B�
L__inference_simple_rnn_103_layer_call_and_return_conditional_losses_21205803inputs/0"�
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
�B�
L__inference_simple_rnn_103_layer_call_and_return_conditional_losses_21205913inputs"�
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
�B�
L__inference_simple_rnn_103_layer_call_and_return_conditional_losses_21206023inputs"�
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
8non_trainable_variables

9layers
:metrics
;layer_regularization_losses
<layer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
�
=trace_0
>trace_12�
8__inference_simple_rnn_cell_10405_layer_call_fn_21206037
8__inference_simple_rnn_cell_10405_layer_call_fn_21206051�
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
 z=trace_0z>trace_1
�
?trace_0
@trace_12�
S__inference_simple_rnn_cell_10405_layer_call_and_return_conditional_losses_21206068
S__inference_simple_rnn_cell_10405_layer_call_and_return_conditional_losses_21206085�
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
 z?trace_0z@trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
8__inference_simple_rnn_cell_10405_layer_call_fn_21206037inputsstates/0"�
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
�B�
8__inference_simple_rnn_cell_10405_layer_call_fn_21206051inputsstates/0"�
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
�B�
S__inference_simple_rnn_cell_10405_layer_call_and_return_conditional_losses_21206068inputsstates/0"�
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
�B�
S__inference_simple_rnn_cell_10405_layer_call_and_return_conditional_losses_21206085inputsstates/0"�
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
 �
#__inference__wrapped_model_21204656�A�>
7�4
2�/
simple_rnn_103_input���������(
� "?�<
:
simple_rnn_103(�%
simple_rnn_103����������
L__inference_sequential_103_layer_call_and_return_conditional_losses_21205273wI�F
?�<
2�/
simple_rnn_103_input���������(
p 

 
� "%�"
�
0���������
� �
L__inference_sequential_103_layer_call_and_return_conditional_losses_21205284wI�F
?�<
2�/
simple_rnn_103_input���������(
p

 
� "%�"
�
0���������
� �
L__inference_sequential_103_layer_call_and_return_conditional_losses_21205429i;�8
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
L__inference_sequential_103_layer_call_and_return_conditional_losses_21205539i;�8
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
1__inference_sequential_103_layer_call_fn_21205086jI�F
?�<
2�/
simple_rnn_103_input���������(
p 

 
� "�����������
1__inference_sequential_103_layer_call_fn_21205262jI�F
?�<
2�/
simple_rnn_103_input���������(
p

 
� "�����������
1__inference_sequential_103_layer_call_fn_21205308\;�8
1�.
$�!
inputs���������(
p 

 
� "�����������
1__inference_sequential_103_layer_call_fn_21205319\;�8
1�.
$�!
inputs���������(
p

 
� "�����������
&__inference_signature_wrapper_21205297�Y�V
� 
O�L
J
simple_rnn_103_input2�/
simple_rnn_103_input���������("?�<
:
simple_rnn_103(�%
simple_rnn_103����������
L__inference_simple_rnn_103_layer_call_and_return_conditional_losses_21205693}O�L
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
L__inference_simple_rnn_103_layer_call_and_return_conditional_losses_21205803}O�L
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
L__inference_simple_rnn_103_layer_call_and_return_conditional_losses_21205913m?�<
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
L__inference_simple_rnn_103_layer_call_and_return_conditional_losses_21206023m?�<
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
1__inference_simple_rnn_103_layer_call_fn_21205550pO�L
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
1__inference_simple_rnn_103_layer_call_fn_21205561pO�L
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
1__inference_simple_rnn_103_layer_call_fn_21205572`?�<
5�2
$�!
inputs���������(

 
p 

 
� "�����������
1__inference_simple_rnn_103_layer_call_fn_21205583`?�<
5�2
$�!
inputs���������(

 
p

 
� "�����������
S__inference_simple_rnn_cell_10405_layer_call_and_return_conditional_losses_21206068�\�Y
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
S__inference_simple_rnn_cell_10405_layer_call_and_return_conditional_losses_21206085�\�Y
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
8__inference_simple_rnn_cell_10405_layer_call_fn_21206037�\�Y
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
8__inference_simple_rnn_cell_10405_layer_call_fn_21206051�\�Y
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