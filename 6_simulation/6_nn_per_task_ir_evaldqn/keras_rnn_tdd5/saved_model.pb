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
%simple_rnn_5/simple_rnn_cell_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*6
shared_name'%simple_rnn_5/simple_rnn_cell_5/kernel
�
9simple_rnn_5/simple_rnn_cell_5/kernel/Read/ReadVariableOpReadVariableOp%simple_rnn_5/simple_rnn_cell_5/kernel*
_output_shapes

:*
dtype0
�
/simple_rnn_5/simple_rnn_cell_5/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*@
shared_name1/simple_rnn_5/simple_rnn_cell_5/recurrent_kernel
�
Csimple_rnn_5/simple_rnn_cell_5/recurrent_kernel/Read/ReadVariableOpReadVariableOp/simple_rnn_5/simple_rnn_cell_5/recurrent_kernel*
_output_shapes

:*
dtype0
�
#simple_rnn_5/simple_rnn_cell_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#simple_rnn_5/simple_rnn_cell_5/bias
�
7simple_rnn_5/simple_rnn_cell_5/bias/Read/ReadVariableOpReadVariableOp#simple_rnn_5/simple_rnn_cell_5/bias*
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
VARIABLE_VALUE%simple_rnn_5/simple_rnn_cell_5/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE/simple_rnn_5/simple_rnn_cell_5/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE#simple_rnn_5/simple_rnn_cell_5/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
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
"serving_default_simple_rnn_5_inputPlaceholder*+
_output_shapes
:���������(*
dtype0* 
shape:���������(
�
StatefulPartitionedCallStatefulPartitionedCall"serving_default_simple_rnn_5_input%simple_rnn_5/simple_rnn_cell_5/kernel#simple_rnn_5/simple_rnn_cell_5/bias/simple_rnn_5/simple_rnn_cell_5/recurrent_kernel*
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
&__inference_signature_wrapper_72366827
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename9simple_rnn_5/simple_rnn_cell_5/kernel/Read/ReadVariableOpCsimple_rnn_5/simple_rnn_cell_5/recurrent_kernel/Read/ReadVariableOp7simple_rnn_5/simple_rnn_cell_5/bias/Read/ReadVariableOpConst*
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
!__inference__traced_save_72367397
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename%simple_rnn_5/simple_rnn_cell_5/kernel/simple_rnn_5/simple_rnn_cell_5/recurrent_kernel#simple_rnn_5/simple_rnn_cell_5/bias*
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
$__inference__traced_restore_72367416�
�
�
while_cond_72366295
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_72366295___redundant_placeholder06
2while_while_cond_72366295___redundant_placeholder16
2while_while_cond_72366295___redundant_placeholder26
2while_while_cond_72366295___redundant_placeholder3
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
/__inference_sequential_5_layer_call_fn_72366587

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
J__inference_sequential_5_layer_call_and_return_conditional_losses_72366371o
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
�
�
S__inference_simple_rnn_cell_35355_layer_call_and_return_conditional_losses_72367365

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
�
J__inference_sequential_5_layer_call_and_return_conditional_losses_72366371

inputs'
simple_rnn_5_72366363:#
simple_rnn_5_72366365:'
simple_rnn_5_72366367:
identity��$simple_rnn_5/StatefulPartitionedCall�
$simple_rnn_5/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_5_72366363simple_rnn_5_72366365simple_rnn_5_72366367*
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
J__inference_simple_rnn_5_layer_call_and_return_conditional_losses_72366362|
IdentityIdentity-simple_rnn_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������m
NoOpNoOp%^simple_rnn_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 2L
$simple_rnn_5/StatefulPartitionedCall$simple_rnn_5/StatefulPartitionedCall:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�-
�
while_body_72367021
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0N
<while_simple_rnn_cell_35355_matmul_readvariableop_resource_0:K
=while_simple_rnn_cell_35355_biasadd_readvariableop_resource_0:P
>while_simple_rnn_cell_35355_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorL
:while_simple_rnn_cell_35355_matmul_readvariableop_resource:I
;while_simple_rnn_cell_35355_biasadd_readvariableop_resource:N
<while_simple_rnn_cell_35355_matmul_1_readvariableop_resource:��2while/simple_rnn_cell_35355/BiasAdd/ReadVariableOp�1while/simple_rnn_cell_35355/MatMul/ReadVariableOp�3while/simple_rnn_cell_35355/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
1while/simple_rnn_cell_35355/MatMul/ReadVariableOpReadVariableOp<while_simple_rnn_cell_35355_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0�
"while/simple_rnn_cell_35355/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:09while/simple_rnn_cell_35355/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
2while/simple_rnn_cell_35355/BiasAdd/ReadVariableOpReadVariableOp=while_simple_rnn_cell_35355_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0�
#while/simple_rnn_cell_35355/BiasAddBiasAdd,while/simple_rnn_cell_35355/MatMul:product:0:while/simple_rnn_cell_35355/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
3while/simple_rnn_cell_35355/MatMul_1/ReadVariableOpReadVariableOp>while_simple_rnn_cell_35355_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0�
$while/simple_rnn_cell_35355/MatMul_1MatMulwhile_placeholder_2;while/simple_rnn_cell_35355/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
while/simple_rnn_cell_35355/addAddV2,while/simple_rnn_cell_35355/BiasAdd:output:0.while/simple_rnn_cell_35355/MatMul_1:product:0*
T0*'
_output_shapes
:���������
 while/simple_rnn_cell_35355/TanhTanh#while/simple_rnn_cell_35355/add:z:0*
T0*'
_output_shapes
:����������
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder$while/simple_rnn_cell_35355/Tanh:y:0*
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
while/Identity_4Identity$while/simple_rnn_cell_35355/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:����������

while/NoOpNoOp3^while/simple_rnn_cell_35355/BiasAdd/ReadVariableOp2^while/simple_rnn_cell_35355/MatMul/ReadVariableOp4^while/simple_rnn_cell_35355/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"|
;while_simple_rnn_cell_35355_biasadd_readvariableop_resource=while_simple_rnn_cell_35355_biasadd_readvariableop_resource_0"~
<while_simple_rnn_cell_35355_matmul_1_readvariableop_resource>while_simple_rnn_cell_35355_matmul_1_readvariableop_resource_0"z
:while_simple_rnn_cell_35355_matmul_readvariableop_resource<while_simple_rnn_cell_35355_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������: : : : : 2h
2while/simple_rnn_cell_35355/BiasAdd/ReadVariableOp2while/simple_rnn_cell_35355/BiasAdd/ReadVariableOp2f
1while/simple_rnn_cell_35355/MatMul/ReadVariableOp1while/simple_rnn_cell_35355/MatMul/ReadVariableOp2j
3while/simple_rnn_cell_35355/MatMul_1/ReadVariableOp3while/simple_rnn_cell_35355/MatMul_1/ReadVariableOp: 
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
J__inference_simple_rnn_5_layer_call_and_return_conditional_losses_72367303

inputsF
4simple_rnn_cell_35355_matmul_readvariableop_resource:C
5simple_rnn_cell_35355_biasadd_readvariableop_resource:H
6simple_rnn_cell_35355_matmul_1_readvariableop_resource:
identity��,simple_rnn_cell_35355/BiasAdd/ReadVariableOp�+simple_rnn_cell_35355/MatMul/ReadVariableOp�-simple_rnn_cell_35355/MatMul_1/ReadVariableOp�while;
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
+simple_rnn_cell_35355/MatMul/ReadVariableOpReadVariableOp4simple_rnn_cell_35355_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
simple_rnn_cell_35355/MatMulMatMulstrided_slice_2:output:03simple_rnn_cell_35355/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
,simple_rnn_cell_35355/BiasAdd/ReadVariableOpReadVariableOp5simple_rnn_cell_35355_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
simple_rnn_cell_35355/BiasAddBiasAdd&simple_rnn_cell_35355/MatMul:product:04simple_rnn_cell_35355/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-simple_rnn_cell_35355/MatMul_1/ReadVariableOpReadVariableOp6simple_rnn_cell_35355_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0�
simple_rnn_cell_35355/MatMul_1MatMulzeros:output:05simple_rnn_cell_35355/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
simple_rnn_cell_35355/addAddV2&simple_rnn_cell_35355/BiasAdd:output:0(simple_rnn_cell_35355/MatMul_1:product:0*
T0*'
_output_shapes
:���������s
simple_rnn_cell_35355/TanhTanhsimple_rnn_cell_35355/add:z:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:04simple_rnn_cell_35355_matmul_readvariableop_resource5simple_rnn_cell_35355_biasadd_readvariableop_resource6simple_rnn_cell_35355_matmul_1_readvariableop_resource*
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
while_body_72367237*
condR
while_cond_72367236*8
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
NoOpNoOp-^simple_rnn_cell_35355/BiasAdd/ReadVariableOp,^simple_rnn_cell_35355/MatMul/ReadVariableOp.^simple_rnn_cell_35355/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 2\
,simple_rnn_cell_35355/BiasAdd/ReadVariableOp,simple_rnn_cell_35355/BiasAdd/ReadVariableOp2Z
+simple_rnn_cell_35355/MatMul/ReadVariableOp+simple_rnn_cell_35355/MatMul/ReadVariableOp2^
-simple_rnn_cell_35355/MatMul_1/ReadVariableOp-simple_rnn_cell_35355/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�
�
while_cond_72366175
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_72366175___redundant_placeholder06
2while_while_cond_72366175___redundant_placeholder16
2while_while_cond_72366175___redundant_placeholder26
2while_while_cond_72366175___redundant_placeholder3
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
�4
�
J__inference_simple_rnn_5_layer_call_and_return_conditional_losses_72366239

inputs0
simple_rnn_cell_35355_72366164:,
simple_rnn_cell_35355_72366166:0
simple_rnn_cell_35355_72366168:
identity��-simple_rnn_cell_35355/StatefulPartitionedCall�while;
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
-simple_rnn_cell_35355/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_35355_72366164simple_rnn_cell_35355_72366166simple_rnn_cell_35355_72366168*
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
S__inference_simple_rnn_cell_35355_layer_call_and_return_conditional_losses_72366124n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_35355_72366164simple_rnn_cell_35355_72366166simple_rnn_cell_35355_72366168*
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
while_body_72366176*
condR
while_cond_72366175*8
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
NoOpNoOp.^simple_rnn_cell_35355/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2^
-simple_rnn_cell_35355/StatefulPartitionedCall-simple_rnn_cell_35355/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
while_cond_72367128
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_72367128___redundant_placeholder06
2while_while_cond_72367128___redundant_placeholder16
2while_while_cond_72367128___redundant_placeholder26
2while_while_cond_72367128___redundant_placeholder3
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
while_cond_72367236
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_72367236___redundant_placeholder06
2while_while_cond_72367236___redundant_placeholder16
2while_while_cond_72367236___redundant_placeholder26
2while_while_cond_72367236___redundant_placeholder3
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
while_body_72367237
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0N
<while_simple_rnn_cell_35355_matmul_readvariableop_resource_0:K
=while_simple_rnn_cell_35355_biasadd_readvariableop_resource_0:P
>while_simple_rnn_cell_35355_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorL
:while_simple_rnn_cell_35355_matmul_readvariableop_resource:I
;while_simple_rnn_cell_35355_biasadd_readvariableop_resource:N
<while_simple_rnn_cell_35355_matmul_1_readvariableop_resource:��2while/simple_rnn_cell_35355/BiasAdd/ReadVariableOp�1while/simple_rnn_cell_35355/MatMul/ReadVariableOp�3while/simple_rnn_cell_35355/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
1while/simple_rnn_cell_35355/MatMul/ReadVariableOpReadVariableOp<while_simple_rnn_cell_35355_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0�
"while/simple_rnn_cell_35355/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:09while/simple_rnn_cell_35355/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
2while/simple_rnn_cell_35355/BiasAdd/ReadVariableOpReadVariableOp=while_simple_rnn_cell_35355_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0�
#while/simple_rnn_cell_35355/BiasAddBiasAdd,while/simple_rnn_cell_35355/MatMul:product:0:while/simple_rnn_cell_35355/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
3while/simple_rnn_cell_35355/MatMul_1/ReadVariableOpReadVariableOp>while_simple_rnn_cell_35355_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0�
$while/simple_rnn_cell_35355/MatMul_1MatMulwhile_placeholder_2;while/simple_rnn_cell_35355/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
while/simple_rnn_cell_35355/addAddV2,while/simple_rnn_cell_35355/BiasAdd:output:0.while/simple_rnn_cell_35355/MatMul_1:product:0*
T0*'
_output_shapes
:���������
 while/simple_rnn_cell_35355/TanhTanh#while/simple_rnn_cell_35355/add:z:0*
T0*'
_output_shapes
:����������
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder$while/simple_rnn_cell_35355/Tanh:y:0*
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
while/Identity_4Identity$while/simple_rnn_cell_35355/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:����������

while/NoOpNoOp3^while/simple_rnn_cell_35355/BiasAdd/ReadVariableOp2^while/simple_rnn_cell_35355/MatMul/ReadVariableOp4^while/simple_rnn_cell_35355/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"|
;while_simple_rnn_cell_35355_biasadd_readvariableop_resource=while_simple_rnn_cell_35355_biasadd_readvariableop_resource_0"~
<while_simple_rnn_cell_35355_matmul_1_readvariableop_resource>while_simple_rnn_cell_35355_matmul_1_readvariableop_resource_0"z
:while_simple_rnn_cell_35355_matmul_readvariableop_resource<while_simple_rnn_cell_35355_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������: : : : : 2h
2while/simple_rnn_cell_35355/BiasAdd/ReadVariableOp2while/simple_rnn_cell_35355/BiasAdd/ReadVariableOp2f
1while/simple_rnn_cell_35355/MatMul/ReadVariableOp1while/simple_rnn_cell_35355/MatMul/ReadVariableOp2j
3while/simple_rnn_cell_35355/MatMul_1/ReadVariableOp3while/simple_rnn_cell_35355/MatMul_1/ReadVariableOp: 
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
J__inference_sequential_5_layer_call_and_return_conditional_losses_72366576
simple_rnn_5_input'
simple_rnn_5_72366568:#
simple_rnn_5_72366570:'
simple_rnn_5_72366572:
identity��$simple_rnn_5/StatefulPartitionedCall�
$simple_rnn_5/StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_5_inputsimple_rnn_5_72366568simple_rnn_5_72366570simple_rnn_5_72366572*
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
J__inference_simple_rnn_5_layer_call_and_return_conditional_losses_72366501|
IdentityIdentity-simple_rnn_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������m
NoOpNoOp%^simple_rnn_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 2L
$simple_rnn_5/StatefulPartitionedCall$simple_rnn_5/StatefulPartitionedCall:_ [
+
_output_shapes
:���������(
,
_user_specified_namesimple_rnn_5_input
�>
�
J__inference_simple_rnn_5_layer_call_and_return_conditional_losses_72367087
inputs_0F
4simple_rnn_cell_35355_matmul_readvariableop_resource:C
5simple_rnn_cell_35355_biasadd_readvariableop_resource:H
6simple_rnn_cell_35355_matmul_1_readvariableop_resource:
identity��,simple_rnn_cell_35355/BiasAdd/ReadVariableOp�+simple_rnn_cell_35355/MatMul/ReadVariableOp�-simple_rnn_cell_35355/MatMul_1/ReadVariableOp�while=
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
+simple_rnn_cell_35355/MatMul/ReadVariableOpReadVariableOp4simple_rnn_cell_35355_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
simple_rnn_cell_35355/MatMulMatMulstrided_slice_2:output:03simple_rnn_cell_35355/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
,simple_rnn_cell_35355/BiasAdd/ReadVariableOpReadVariableOp5simple_rnn_cell_35355_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
simple_rnn_cell_35355/BiasAddBiasAdd&simple_rnn_cell_35355/MatMul:product:04simple_rnn_cell_35355/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-simple_rnn_cell_35355/MatMul_1/ReadVariableOpReadVariableOp6simple_rnn_cell_35355_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0�
simple_rnn_cell_35355/MatMul_1MatMulzeros:output:05simple_rnn_cell_35355/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
simple_rnn_cell_35355/addAddV2&simple_rnn_cell_35355/BiasAdd:output:0(simple_rnn_cell_35355/MatMul_1:product:0*
T0*'
_output_shapes
:���������s
simple_rnn_cell_35355/TanhTanhsimple_rnn_cell_35355/add:z:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:04simple_rnn_cell_35355_matmul_readvariableop_resource5simple_rnn_cell_35355_biasadd_readvariableop_resource6simple_rnn_cell_35355_matmul_1_readvariableop_resource*
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
while_body_72367021*
condR
while_cond_72367020*8
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
NoOpNoOp-^simple_rnn_cell_35355/BiasAdd/ReadVariableOp,^simple_rnn_cell_35355/MatMul/ReadVariableOp.^simple_rnn_cell_35355/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2\
,simple_rnn_cell_35355/BiasAdd/ReadVariableOp,simple_rnn_cell_35355/BiasAdd/ReadVariableOp2Z
+simple_rnn_cell_35355/MatMul/ReadVariableOp+simple_rnn_cell_35355/MatMul/ReadVariableOp2^
-simple_rnn_cell_35355/MatMul_1/ReadVariableOp-simple_rnn_cell_35355/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�-
�
while_body_72366435
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0N
<while_simple_rnn_cell_35355_matmul_readvariableop_resource_0:K
=while_simple_rnn_cell_35355_biasadd_readvariableop_resource_0:P
>while_simple_rnn_cell_35355_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorL
:while_simple_rnn_cell_35355_matmul_readvariableop_resource:I
;while_simple_rnn_cell_35355_biasadd_readvariableop_resource:N
<while_simple_rnn_cell_35355_matmul_1_readvariableop_resource:��2while/simple_rnn_cell_35355/BiasAdd/ReadVariableOp�1while/simple_rnn_cell_35355/MatMul/ReadVariableOp�3while/simple_rnn_cell_35355/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
1while/simple_rnn_cell_35355/MatMul/ReadVariableOpReadVariableOp<while_simple_rnn_cell_35355_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0�
"while/simple_rnn_cell_35355/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:09while/simple_rnn_cell_35355/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
2while/simple_rnn_cell_35355/BiasAdd/ReadVariableOpReadVariableOp=while_simple_rnn_cell_35355_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0�
#while/simple_rnn_cell_35355/BiasAddBiasAdd,while/simple_rnn_cell_35355/MatMul:product:0:while/simple_rnn_cell_35355/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
3while/simple_rnn_cell_35355/MatMul_1/ReadVariableOpReadVariableOp>while_simple_rnn_cell_35355_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0�
$while/simple_rnn_cell_35355/MatMul_1MatMulwhile_placeholder_2;while/simple_rnn_cell_35355/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
while/simple_rnn_cell_35355/addAddV2,while/simple_rnn_cell_35355/BiasAdd:output:0.while/simple_rnn_cell_35355/MatMul_1:product:0*
T0*'
_output_shapes
:���������
 while/simple_rnn_cell_35355/TanhTanh#while/simple_rnn_cell_35355/add:z:0*
T0*'
_output_shapes
:����������
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder$while/simple_rnn_cell_35355/Tanh:y:0*
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
while/Identity_4Identity$while/simple_rnn_cell_35355/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:����������

while/NoOpNoOp3^while/simple_rnn_cell_35355/BiasAdd/ReadVariableOp2^while/simple_rnn_cell_35355/MatMul/ReadVariableOp4^while/simple_rnn_cell_35355/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"|
;while_simple_rnn_cell_35355_biasadd_readvariableop_resource=while_simple_rnn_cell_35355_biasadd_readvariableop_resource_0"~
<while_simple_rnn_cell_35355_matmul_1_readvariableop_resource>while_simple_rnn_cell_35355_matmul_1_readvariableop_resource_0"z
:while_simple_rnn_cell_35355_matmul_readvariableop_resource<while_simple_rnn_cell_35355_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������: : : : : 2h
2while/simple_rnn_cell_35355/BiasAdd/ReadVariableOp2while/simple_rnn_cell_35355/BiasAdd/ReadVariableOp2f
1while/simple_rnn_cell_35355/MatMul/ReadVariableOp1while/simple_rnn_cell_35355/MatMul/ReadVariableOp2j
3while/simple_rnn_cell_35355/MatMul_1/ReadVariableOp3while/simple_rnn_cell_35355/MatMul_1/ReadVariableOp: 
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
/__inference_sequential_5_layer_call_fn_72366598

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
J__inference_sequential_5_layer_call_and_return_conditional_losses_72366534o
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
�F
�
-sequential_5_simple_rnn_5_while_body_72365890P
Lsequential_5_simple_rnn_5_while_sequential_5_simple_rnn_5_while_loop_counterV
Rsequential_5_simple_rnn_5_while_sequential_5_simple_rnn_5_while_maximum_iterations/
+sequential_5_simple_rnn_5_while_placeholder1
-sequential_5_simple_rnn_5_while_placeholder_11
-sequential_5_simple_rnn_5_while_placeholder_2O
Ksequential_5_simple_rnn_5_while_sequential_5_simple_rnn_5_strided_slice_1_0�
�sequential_5_simple_rnn_5_while_tensorarrayv2read_tensorlistgetitem_sequential_5_simple_rnn_5_tensorarrayunstack_tensorlistfromtensor_0h
Vsequential_5_simple_rnn_5_while_simple_rnn_cell_35355_matmul_readvariableop_resource_0:e
Wsequential_5_simple_rnn_5_while_simple_rnn_cell_35355_biasadd_readvariableop_resource_0:j
Xsequential_5_simple_rnn_5_while_simple_rnn_cell_35355_matmul_1_readvariableop_resource_0:,
(sequential_5_simple_rnn_5_while_identity.
*sequential_5_simple_rnn_5_while_identity_1.
*sequential_5_simple_rnn_5_while_identity_2.
*sequential_5_simple_rnn_5_while_identity_3.
*sequential_5_simple_rnn_5_while_identity_4M
Isequential_5_simple_rnn_5_while_sequential_5_simple_rnn_5_strided_slice_1�
�sequential_5_simple_rnn_5_while_tensorarrayv2read_tensorlistgetitem_sequential_5_simple_rnn_5_tensorarrayunstack_tensorlistfromtensorf
Tsequential_5_simple_rnn_5_while_simple_rnn_cell_35355_matmul_readvariableop_resource:c
Usequential_5_simple_rnn_5_while_simple_rnn_cell_35355_biasadd_readvariableop_resource:h
Vsequential_5_simple_rnn_5_while_simple_rnn_cell_35355_matmul_1_readvariableop_resource:��Lsequential_5/simple_rnn_5/while/simple_rnn_cell_35355/BiasAdd/ReadVariableOp�Ksequential_5/simple_rnn_5/while/simple_rnn_cell_35355/MatMul/ReadVariableOp�Msequential_5/simple_rnn_5/while/simple_rnn_cell_35355/MatMul_1/ReadVariableOp�
Qsequential_5/simple_rnn_5/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Csequential_5/simple_rnn_5/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_5_simple_rnn_5_while_tensorarrayv2read_tensorlistgetitem_sequential_5_simple_rnn_5_tensorarrayunstack_tensorlistfromtensor_0+sequential_5_simple_rnn_5_while_placeholderZsequential_5/simple_rnn_5/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
Ksequential_5/simple_rnn_5/while/simple_rnn_cell_35355/MatMul/ReadVariableOpReadVariableOpVsequential_5_simple_rnn_5_while_simple_rnn_cell_35355_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0�
<sequential_5/simple_rnn_5/while/simple_rnn_cell_35355/MatMulMatMulJsequential_5/simple_rnn_5/while/TensorArrayV2Read/TensorListGetItem:item:0Ssequential_5/simple_rnn_5/while/simple_rnn_cell_35355/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Lsequential_5/simple_rnn_5/while/simple_rnn_cell_35355/BiasAdd/ReadVariableOpReadVariableOpWsequential_5_simple_rnn_5_while_simple_rnn_cell_35355_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0�
=sequential_5/simple_rnn_5/while/simple_rnn_cell_35355/BiasAddBiasAddFsequential_5/simple_rnn_5/while/simple_rnn_cell_35355/MatMul:product:0Tsequential_5/simple_rnn_5/while/simple_rnn_cell_35355/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Msequential_5/simple_rnn_5/while/simple_rnn_cell_35355/MatMul_1/ReadVariableOpReadVariableOpXsequential_5_simple_rnn_5_while_simple_rnn_cell_35355_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0�
>sequential_5/simple_rnn_5/while/simple_rnn_cell_35355/MatMul_1MatMul-sequential_5_simple_rnn_5_while_placeholder_2Usequential_5/simple_rnn_5/while/simple_rnn_cell_35355/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
9sequential_5/simple_rnn_5/while/simple_rnn_cell_35355/addAddV2Fsequential_5/simple_rnn_5/while/simple_rnn_cell_35355/BiasAdd:output:0Hsequential_5/simple_rnn_5/while/simple_rnn_cell_35355/MatMul_1:product:0*
T0*'
_output_shapes
:����������
:sequential_5/simple_rnn_5/while/simple_rnn_cell_35355/TanhTanh=sequential_5/simple_rnn_5/while/simple_rnn_cell_35355/add:z:0*
T0*'
_output_shapes
:����������
Dsequential_5/simple_rnn_5/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem-sequential_5_simple_rnn_5_while_placeholder_1+sequential_5_simple_rnn_5_while_placeholder>sequential_5/simple_rnn_5/while/simple_rnn_cell_35355/Tanh:y:0*
_output_shapes
: *
element_dtype0:���g
%sequential_5/simple_rnn_5/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
#sequential_5/simple_rnn_5/while/addAddV2+sequential_5_simple_rnn_5_while_placeholder.sequential_5/simple_rnn_5/while/add/y:output:0*
T0*
_output_shapes
: i
'sequential_5/simple_rnn_5/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
%sequential_5/simple_rnn_5/while/add_1AddV2Lsequential_5_simple_rnn_5_while_sequential_5_simple_rnn_5_while_loop_counter0sequential_5/simple_rnn_5/while/add_1/y:output:0*
T0*
_output_shapes
: �
(sequential_5/simple_rnn_5/while/IdentityIdentity)sequential_5/simple_rnn_5/while/add_1:z:0%^sequential_5/simple_rnn_5/while/NoOp*
T0*
_output_shapes
: �
*sequential_5/simple_rnn_5/while/Identity_1IdentityRsequential_5_simple_rnn_5_while_sequential_5_simple_rnn_5_while_maximum_iterations%^sequential_5/simple_rnn_5/while/NoOp*
T0*
_output_shapes
: �
*sequential_5/simple_rnn_5/while/Identity_2Identity'sequential_5/simple_rnn_5/while/add:z:0%^sequential_5/simple_rnn_5/while/NoOp*
T0*
_output_shapes
: �
*sequential_5/simple_rnn_5/while/Identity_3IdentityTsequential_5/simple_rnn_5/while/TensorArrayV2Write/TensorListSetItem:output_handle:0%^sequential_5/simple_rnn_5/while/NoOp*
T0*
_output_shapes
: :����
*sequential_5/simple_rnn_5/while/Identity_4Identity>sequential_5/simple_rnn_5/while/simple_rnn_cell_35355/Tanh:y:0%^sequential_5/simple_rnn_5/while/NoOp*
T0*'
_output_shapes
:����������
$sequential_5/simple_rnn_5/while/NoOpNoOpM^sequential_5/simple_rnn_5/while/simple_rnn_cell_35355/BiasAdd/ReadVariableOpL^sequential_5/simple_rnn_5/while/simple_rnn_cell_35355/MatMul/ReadVariableOpN^sequential_5/simple_rnn_5/while/simple_rnn_cell_35355/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "]
(sequential_5_simple_rnn_5_while_identity1sequential_5/simple_rnn_5/while/Identity:output:0"a
*sequential_5_simple_rnn_5_while_identity_13sequential_5/simple_rnn_5/while/Identity_1:output:0"a
*sequential_5_simple_rnn_5_while_identity_23sequential_5/simple_rnn_5/while/Identity_2:output:0"a
*sequential_5_simple_rnn_5_while_identity_33sequential_5/simple_rnn_5/while/Identity_3:output:0"a
*sequential_5_simple_rnn_5_while_identity_43sequential_5/simple_rnn_5/while/Identity_4:output:0"�
Isequential_5_simple_rnn_5_while_sequential_5_simple_rnn_5_strided_slice_1Ksequential_5_simple_rnn_5_while_sequential_5_simple_rnn_5_strided_slice_1_0"�
Usequential_5_simple_rnn_5_while_simple_rnn_cell_35355_biasadd_readvariableop_resourceWsequential_5_simple_rnn_5_while_simple_rnn_cell_35355_biasadd_readvariableop_resource_0"�
Vsequential_5_simple_rnn_5_while_simple_rnn_cell_35355_matmul_1_readvariableop_resourceXsequential_5_simple_rnn_5_while_simple_rnn_cell_35355_matmul_1_readvariableop_resource_0"�
Tsequential_5_simple_rnn_5_while_simple_rnn_cell_35355_matmul_readvariableop_resourceVsequential_5_simple_rnn_5_while_simple_rnn_cell_35355_matmul_readvariableop_resource_0"�
�sequential_5_simple_rnn_5_while_tensorarrayv2read_tensorlistgetitem_sequential_5_simple_rnn_5_tensorarrayunstack_tensorlistfromtensor�sequential_5_simple_rnn_5_while_tensorarrayv2read_tensorlistgetitem_sequential_5_simple_rnn_5_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������: : : : : 2�
Lsequential_5/simple_rnn_5/while/simple_rnn_cell_35355/BiasAdd/ReadVariableOpLsequential_5/simple_rnn_5/while/simple_rnn_cell_35355/BiasAdd/ReadVariableOp2�
Ksequential_5/simple_rnn_5/while/simple_rnn_cell_35355/MatMul/ReadVariableOpKsequential_5/simple_rnn_5/while/simple_rnn_cell_35355/MatMul/ReadVariableOp2�
Msequential_5/simple_rnn_5/while/simple_rnn_cell_35355/MatMul_1/ReadVariableOpMsequential_5/simple_rnn_5/while/simple_rnn_cell_35355/MatMul_1/ReadVariableOp: 
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
J__inference_sequential_5_layer_call_and_return_conditional_losses_72366814

inputsS
Asimple_rnn_5_simple_rnn_cell_35355_matmul_readvariableop_resource:P
Bsimple_rnn_5_simple_rnn_cell_35355_biasadd_readvariableop_resource:U
Csimple_rnn_5_simple_rnn_cell_35355_matmul_1_readvariableop_resource:
identity��9simple_rnn_5/simple_rnn_cell_35355/BiasAdd/ReadVariableOp�8simple_rnn_5/simple_rnn_cell_35355/MatMul/ReadVariableOp�:simple_rnn_5/simple_rnn_cell_35355/MatMul_1/ReadVariableOp�simple_rnn_5/whileH
simple_rnn_5/ShapeShapeinputs*
T0*
_output_shapes
:j
 simple_rnn_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_5/strided_sliceStridedSlicesimple_rnn_5/Shape:output:0)simple_rnn_5/strided_slice/stack:output:0+simple_rnn_5/strided_slice/stack_1:output:0+simple_rnn_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
simple_rnn_5/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_5/zeros/packedPack#simple_rnn_5/strided_slice:output:0$simple_rnn_5/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
simple_rnn_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
simple_rnn_5/zerosFill"simple_rnn_5/zeros/packed:output:0!simple_rnn_5/zeros/Const:output:0*
T0*'
_output_shapes
:���������p
simple_rnn_5/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_5/transpose	Transposeinputs$simple_rnn_5/transpose/perm:output:0*
T0*+
_output_shapes
:(���������^
simple_rnn_5/Shape_1Shapesimple_rnn_5/transpose:y:0*
T0*
_output_shapes
:l
"simple_rnn_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_5/strided_slice_1StridedSlicesimple_rnn_5/Shape_1:output:0+simple_rnn_5/strided_slice_1/stack:output:0-simple_rnn_5/strided_slice_1/stack_1:output:0-simple_rnn_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(simple_rnn_5/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
simple_rnn_5/TensorArrayV2TensorListReserve1simple_rnn_5/TensorArrayV2/element_shape:output:0%simple_rnn_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Bsimple_rnn_5/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
4simple_rnn_5/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_5/transpose:y:0Ksimple_rnn_5/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���l
"simple_rnn_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_5/strided_slice_2StridedSlicesimple_rnn_5/transpose:y:0+simple_rnn_5/strided_slice_2/stack:output:0-simple_rnn_5/strided_slice_2/stack_1:output:0-simple_rnn_5/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
8simple_rnn_5/simple_rnn_cell_35355/MatMul/ReadVariableOpReadVariableOpAsimple_rnn_5_simple_rnn_cell_35355_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
)simple_rnn_5/simple_rnn_cell_35355/MatMulMatMul%simple_rnn_5/strided_slice_2:output:0@simple_rnn_5/simple_rnn_cell_35355/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
9simple_rnn_5/simple_rnn_cell_35355/BiasAdd/ReadVariableOpReadVariableOpBsimple_rnn_5_simple_rnn_cell_35355_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
*simple_rnn_5/simple_rnn_cell_35355/BiasAddBiasAdd3simple_rnn_5/simple_rnn_cell_35355/MatMul:product:0Asimple_rnn_5/simple_rnn_cell_35355/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
:simple_rnn_5/simple_rnn_cell_35355/MatMul_1/ReadVariableOpReadVariableOpCsimple_rnn_5_simple_rnn_cell_35355_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0�
+simple_rnn_5/simple_rnn_cell_35355/MatMul_1MatMulsimple_rnn_5/zeros:output:0Bsimple_rnn_5/simple_rnn_cell_35355/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
&simple_rnn_5/simple_rnn_cell_35355/addAddV23simple_rnn_5/simple_rnn_cell_35355/BiasAdd:output:05simple_rnn_5/simple_rnn_cell_35355/MatMul_1:product:0*
T0*'
_output_shapes
:����������
'simple_rnn_5/simple_rnn_cell_35355/TanhTanh*simple_rnn_5/simple_rnn_cell_35355/add:z:0*
T0*'
_output_shapes
:���������{
*simple_rnn_5/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
simple_rnn_5/TensorArrayV2_1TensorListReserve3simple_rnn_5/TensorArrayV2_1/element_shape:output:0%simple_rnn_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���S
simple_rnn_5/timeConst*
_output_shapes
: *
dtype0*
value	B : p
%simple_rnn_5/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������a
simple_rnn_5/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
simple_rnn_5/whileWhile(simple_rnn_5/while/loop_counter:output:0.simple_rnn_5/while/maximum_iterations:output:0simple_rnn_5/time:output:0%simple_rnn_5/TensorArrayV2_1:handle:0simple_rnn_5/zeros:output:0%simple_rnn_5/strided_slice_1:output:0Dsimple_rnn_5/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asimple_rnn_5_simple_rnn_cell_35355_matmul_readvariableop_resourceBsimple_rnn_5_simple_rnn_cell_35355_biasadd_readvariableop_resourceCsimple_rnn_5_simple_rnn_cell_35355_matmul_1_readvariableop_resource*
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
 simple_rnn_5_while_body_72366748*,
cond$R"
 simple_rnn_5_while_cond_72366747*8
output_shapes'
%: : : : :���������: : : : : *
parallel_iterations �
=simple_rnn_5/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
/simple_rnn_5/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_5/while:output:3Fsimple_rnn_5/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:(���������*
element_dtype0u
"simple_rnn_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������n
$simple_rnn_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_5/strided_slice_3StridedSlice8simple_rnn_5/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_5/strided_slice_3/stack:output:0-simple_rnn_5/strided_slice_3/stack_1:output:0-simple_rnn_5/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_maskr
simple_rnn_5/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_5/transpose_1	Transpose8simple_rnn_5/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_5/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������(t
IdentityIdentity%simple_rnn_5/strided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp:^simple_rnn_5/simple_rnn_cell_35355/BiasAdd/ReadVariableOp9^simple_rnn_5/simple_rnn_cell_35355/MatMul/ReadVariableOp;^simple_rnn_5/simple_rnn_cell_35355/MatMul_1/ReadVariableOp^simple_rnn_5/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 2v
9simple_rnn_5/simple_rnn_cell_35355/BiasAdd/ReadVariableOp9simple_rnn_5/simple_rnn_cell_35355/BiasAdd/ReadVariableOp2t
8simple_rnn_5/simple_rnn_cell_35355/MatMul/ReadVariableOp8simple_rnn_5/simple_rnn_cell_35355/MatMul/ReadVariableOp2x
:simple_rnn_5/simple_rnn_cell_35355/MatMul_1/ReadVariableOp:simple_rnn_5/simple_rnn_cell_35355/MatMul_1/ReadVariableOp2(
simple_rnn_5/whilesimple_rnn_5/while:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�
�
/__inference_simple_rnn_5_layer_call_fn_72366838
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
J__inference_simple_rnn_5_layer_call_and_return_conditional_losses_72366080o
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
�
�
S__inference_simple_rnn_cell_35355_layer_call_and_return_conditional_losses_72366004

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
/__inference_simple_rnn_5_layer_call_fn_72366871

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
J__inference_simple_rnn_5_layer_call_and_return_conditional_losses_72366501o
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
�
�
while_cond_72366016
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_72366016___redundant_placeholder06
2while_while_cond_72366016___redundant_placeholder16
2while_while_cond_72366016___redundant_placeholder26
2while_while_cond_72366016___redundant_placeholder3
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
while_body_72366913
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0N
<while_simple_rnn_cell_35355_matmul_readvariableop_resource_0:K
=while_simple_rnn_cell_35355_biasadd_readvariableop_resource_0:P
>while_simple_rnn_cell_35355_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorL
:while_simple_rnn_cell_35355_matmul_readvariableop_resource:I
;while_simple_rnn_cell_35355_biasadd_readvariableop_resource:N
<while_simple_rnn_cell_35355_matmul_1_readvariableop_resource:��2while/simple_rnn_cell_35355/BiasAdd/ReadVariableOp�1while/simple_rnn_cell_35355/MatMul/ReadVariableOp�3while/simple_rnn_cell_35355/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
1while/simple_rnn_cell_35355/MatMul/ReadVariableOpReadVariableOp<while_simple_rnn_cell_35355_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0�
"while/simple_rnn_cell_35355/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:09while/simple_rnn_cell_35355/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
2while/simple_rnn_cell_35355/BiasAdd/ReadVariableOpReadVariableOp=while_simple_rnn_cell_35355_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0�
#while/simple_rnn_cell_35355/BiasAddBiasAdd,while/simple_rnn_cell_35355/MatMul:product:0:while/simple_rnn_cell_35355/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
3while/simple_rnn_cell_35355/MatMul_1/ReadVariableOpReadVariableOp>while_simple_rnn_cell_35355_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0�
$while/simple_rnn_cell_35355/MatMul_1MatMulwhile_placeholder_2;while/simple_rnn_cell_35355/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
while/simple_rnn_cell_35355/addAddV2,while/simple_rnn_cell_35355/BiasAdd:output:0.while/simple_rnn_cell_35355/MatMul_1:product:0*
T0*'
_output_shapes
:���������
 while/simple_rnn_cell_35355/TanhTanh#while/simple_rnn_cell_35355/add:z:0*
T0*'
_output_shapes
:����������
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder$while/simple_rnn_cell_35355/Tanh:y:0*
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
while/Identity_4Identity$while/simple_rnn_cell_35355/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:����������

while/NoOpNoOp3^while/simple_rnn_cell_35355/BiasAdd/ReadVariableOp2^while/simple_rnn_cell_35355/MatMul/ReadVariableOp4^while/simple_rnn_cell_35355/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"|
;while_simple_rnn_cell_35355_biasadd_readvariableop_resource=while_simple_rnn_cell_35355_biasadd_readvariableop_resource_0"~
<while_simple_rnn_cell_35355_matmul_1_readvariableop_resource>while_simple_rnn_cell_35355_matmul_1_readvariableop_resource_0"z
:while_simple_rnn_cell_35355_matmul_readvariableop_resource<while_simple_rnn_cell_35355_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������: : : : : 2h
2while/simple_rnn_cell_35355/BiasAdd/ReadVariableOp2while/simple_rnn_cell_35355/BiasAdd/ReadVariableOp2f
1while/simple_rnn_cell_35355/MatMul/ReadVariableOp1while/simple_rnn_cell_35355/MatMul/ReadVariableOp2j
3while/simple_rnn_cell_35355/MatMul_1/ReadVariableOp3while/simple_rnn_cell_35355/MatMul_1/ReadVariableOp: 
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
J__inference_sequential_5_layer_call_and_return_conditional_losses_72366534

inputs'
simple_rnn_5_72366526:#
simple_rnn_5_72366528:'
simple_rnn_5_72366530:
identity��$simple_rnn_5/StatefulPartitionedCall�
$simple_rnn_5/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_5_72366526simple_rnn_5_72366528simple_rnn_5_72366530*
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
J__inference_simple_rnn_5_layer_call_and_return_conditional_losses_72366501|
IdentityIdentity-simple_rnn_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������m
NoOpNoOp%^simple_rnn_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 2L
$simple_rnn_5/StatefulPartitionedCall$simple_rnn_5/StatefulPartitionedCall:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�
�
S__inference_simple_rnn_cell_35355_layer_call_and_return_conditional_losses_72366124

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
while_body_72367129
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0N
<while_simple_rnn_cell_35355_matmul_readvariableop_resource_0:K
=while_simple_rnn_cell_35355_biasadd_readvariableop_resource_0:P
>while_simple_rnn_cell_35355_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorL
:while_simple_rnn_cell_35355_matmul_readvariableop_resource:I
;while_simple_rnn_cell_35355_biasadd_readvariableop_resource:N
<while_simple_rnn_cell_35355_matmul_1_readvariableop_resource:��2while/simple_rnn_cell_35355/BiasAdd/ReadVariableOp�1while/simple_rnn_cell_35355/MatMul/ReadVariableOp�3while/simple_rnn_cell_35355/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
1while/simple_rnn_cell_35355/MatMul/ReadVariableOpReadVariableOp<while_simple_rnn_cell_35355_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0�
"while/simple_rnn_cell_35355/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:09while/simple_rnn_cell_35355/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
2while/simple_rnn_cell_35355/BiasAdd/ReadVariableOpReadVariableOp=while_simple_rnn_cell_35355_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0�
#while/simple_rnn_cell_35355/BiasAddBiasAdd,while/simple_rnn_cell_35355/MatMul:product:0:while/simple_rnn_cell_35355/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
3while/simple_rnn_cell_35355/MatMul_1/ReadVariableOpReadVariableOp>while_simple_rnn_cell_35355_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0�
$while/simple_rnn_cell_35355/MatMul_1MatMulwhile_placeholder_2;while/simple_rnn_cell_35355/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
while/simple_rnn_cell_35355/addAddV2,while/simple_rnn_cell_35355/BiasAdd:output:0.while/simple_rnn_cell_35355/MatMul_1:product:0*
T0*'
_output_shapes
:���������
 while/simple_rnn_cell_35355/TanhTanh#while/simple_rnn_cell_35355/add:z:0*
T0*'
_output_shapes
:����������
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder$while/simple_rnn_cell_35355/Tanh:y:0*
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
while/Identity_4Identity$while/simple_rnn_cell_35355/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:����������

while/NoOpNoOp3^while/simple_rnn_cell_35355/BiasAdd/ReadVariableOp2^while/simple_rnn_cell_35355/MatMul/ReadVariableOp4^while/simple_rnn_cell_35355/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"|
;while_simple_rnn_cell_35355_biasadd_readvariableop_resource=while_simple_rnn_cell_35355_biasadd_readvariableop_resource_0"~
<while_simple_rnn_cell_35355_matmul_1_readvariableop_resource>while_simple_rnn_cell_35355_matmul_1_readvariableop_resource_0"z
:while_simple_rnn_cell_35355_matmul_readvariableop_resource<while_simple_rnn_cell_35355_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������: : : : : 2h
2while/simple_rnn_cell_35355/BiasAdd/ReadVariableOp2while/simple_rnn_cell_35355/BiasAdd/ReadVariableOp2f
1while/simple_rnn_cell_35355/MatMul/ReadVariableOp1while/simple_rnn_cell_35355/MatMul/ReadVariableOp2j
3while/simple_rnn_cell_35355/MatMul_1/ReadVariableOp3while/simple_rnn_cell_35355/MatMul_1/ReadVariableOp: 
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

�
8__inference_simple_rnn_cell_35355_layer_call_fn_72367331

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
S__inference_simple_rnn_cell_35355_layer_call_and_return_conditional_losses_72366124o
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
while_cond_72366912
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_72366912___redundant_placeholder06
2while_while_cond_72366912___redundant_placeholder16
2while_while_cond_72366912___redundant_placeholder26
2while_while_cond_72366912___redundant_placeholder3
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
/__inference_sequential_5_layer_call_fn_72366554
simple_rnn_5_input
unknown:
	unknown_0:
	unknown_1:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_5_inputunknown	unknown_0	unknown_1*
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
J__inference_sequential_5_layer_call_and_return_conditional_losses_72366534o
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
_user_specified_namesimple_rnn_5_input
�J
�
J__inference_sequential_5_layer_call_and_return_conditional_losses_72366706

inputsS
Asimple_rnn_5_simple_rnn_cell_35355_matmul_readvariableop_resource:P
Bsimple_rnn_5_simple_rnn_cell_35355_biasadd_readvariableop_resource:U
Csimple_rnn_5_simple_rnn_cell_35355_matmul_1_readvariableop_resource:
identity��9simple_rnn_5/simple_rnn_cell_35355/BiasAdd/ReadVariableOp�8simple_rnn_5/simple_rnn_cell_35355/MatMul/ReadVariableOp�:simple_rnn_5/simple_rnn_cell_35355/MatMul_1/ReadVariableOp�simple_rnn_5/whileH
simple_rnn_5/ShapeShapeinputs*
T0*
_output_shapes
:j
 simple_rnn_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_5/strided_sliceStridedSlicesimple_rnn_5/Shape:output:0)simple_rnn_5/strided_slice/stack:output:0+simple_rnn_5/strided_slice/stack_1:output:0+simple_rnn_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
simple_rnn_5/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_5/zeros/packedPack#simple_rnn_5/strided_slice:output:0$simple_rnn_5/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
simple_rnn_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
simple_rnn_5/zerosFill"simple_rnn_5/zeros/packed:output:0!simple_rnn_5/zeros/Const:output:0*
T0*'
_output_shapes
:���������p
simple_rnn_5/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_5/transpose	Transposeinputs$simple_rnn_5/transpose/perm:output:0*
T0*+
_output_shapes
:(���������^
simple_rnn_5/Shape_1Shapesimple_rnn_5/transpose:y:0*
T0*
_output_shapes
:l
"simple_rnn_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_5/strided_slice_1StridedSlicesimple_rnn_5/Shape_1:output:0+simple_rnn_5/strided_slice_1/stack:output:0-simple_rnn_5/strided_slice_1/stack_1:output:0-simple_rnn_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(simple_rnn_5/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
simple_rnn_5/TensorArrayV2TensorListReserve1simple_rnn_5/TensorArrayV2/element_shape:output:0%simple_rnn_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Bsimple_rnn_5/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
4simple_rnn_5/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_5/transpose:y:0Ksimple_rnn_5/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���l
"simple_rnn_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_5/strided_slice_2StridedSlicesimple_rnn_5/transpose:y:0+simple_rnn_5/strided_slice_2/stack:output:0-simple_rnn_5/strided_slice_2/stack_1:output:0-simple_rnn_5/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
8simple_rnn_5/simple_rnn_cell_35355/MatMul/ReadVariableOpReadVariableOpAsimple_rnn_5_simple_rnn_cell_35355_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
)simple_rnn_5/simple_rnn_cell_35355/MatMulMatMul%simple_rnn_5/strided_slice_2:output:0@simple_rnn_5/simple_rnn_cell_35355/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
9simple_rnn_5/simple_rnn_cell_35355/BiasAdd/ReadVariableOpReadVariableOpBsimple_rnn_5_simple_rnn_cell_35355_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
*simple_rnn_5/simple_rnn_cell_35355/BiasAddBiasAdd3simple_rnn_5/simple_rnn_cell_35355/MatMul:product:0Asimple_rnn_5/simple_rnn_cell_35355/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
:simple_rnn_5/simple_rnn_cell_35355/MatMul_1/ReadVariableOpReadVariableOpCsimple_rnn_5_simple_rnn_cell_35355_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0�
+simple_rnn_5/simple_rnn_cell_35355/MatMul_1MatMulsimple_rnn_5/zeros:output:0Bsimple_rnn_5/simple_rnn_cell_35355/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
&simple_rnn_5/simple_rnn_cell_35355/addAddV23simple_rnn_5/simple_rnn_cell_35355/BiasAdd:output:05simple_rnn_5/simple_rnn_cell_35355/MatMul_1:product:0*
T0*'
_output_shapes
:����������
'simple_rnn_5/simple_rnn_cell_35355/TanhTanh*simple_rnn_5/simple_rnn_cell_35355/add:z:0*
T0*'
_output_shapes
:���������{
*simple_rnn_5/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
simple_rnn_5/TensorArrayV2_1TensorListReserve3simple_rnn_5/TensorArrayV2_1/element_shape:output:0%simple_rnn_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���S
simple_rnn_5/timeConst*
_output_shapes
: *
dtype0*
value	B : p
%simple_rnn_5/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������a
simple_rnn_5/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
simple_rnn_5/whileWhile(simple_rnn_5/while/loop_counter:output:0.simple_rnn_5/while/maximum_iterations:output:0simple_rnn_5/time:output:0%simple_rnn_5/TensorArrayV2_1:handle:0simple_rnn_5/zeros:output:0%simple_rnn_5/strided_slice_1:output:0Dsimple_rnn_5/TensorArrayUnstack/TensorListFromTensor:output_handle:0Asimple_rnn_5_simple_rnn_cell_35355_matmul_readvariableop_resourceBsimple_rnn_5_simple_rnn_cell_35355_biasadd_readvariableop_resourceCsimple_rnn_5_simple_rnn_cell_35355_matmul_1_readvariableop_resource*
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
 simple_rnn_5_while_body_72366640*,
cond$R"
 simple_rnn_5_while_cond_72366639*8
output_shapes'
%: : : : :���������: : : : : *
parallel_iterations �
=simple_rnn_5/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
/simple_rnn_5/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_5/while:output:3Fsimple_rnn_5/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:(���������*
element_dtype0u
"simple_rnn_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������n
$simple_rnn_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_5/strided_slice_3StridedSlice8simple_rnn_5/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_5/strided_slice_3/stack:output:0-simple_rnn_5/strided_slice_3/stack_1:output:0-simple_rnn_5/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_maskr
simple_rnn_5/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_5/transpose_1	Transpose8simple_rnn_5/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_5/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������(t
IdentityIdentity%simple_rnn_5/strided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp:^simple_rnn_5/simple_rnn_cell_35355/BiasAdd/ReadVariableOp9^simple_rnn_5/simple_rnn_cell_35355/MatMul/ReadVariableOp;^simple_rnn_5/simple_rnn_cell_35355/MatMul_1/ReadVariableOp^simple_rnn_5/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 2v
9simple_rnn_5/simple_rnn_cell_35355/BiasAdd/ReadVariableOp9simple_rnn_5/simple_rnn_cell_35355/BiasAdd/ReadVariableOp2t
8simple_rnn_5/simple_rnn_cell_35355/MatMul/ReadVariableOp8simple_rnn_5/simple_rnn_cell_35355/MatMul/ReadVariableOp2x
:simple_rnn_5/simple_rnn_cell_35355/MatMul_1/ReadVariableOp:simple_rnn_5/simple_rnn_cell_35355/MatMul_1/ReadVariableOp2(
simple_rnn_5/whilesimple_rnn_5/while:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�4
�
J__inference_simple_rnn_5_layer_call_and_return_conditional_losses_72366080

inputs0
simple_rnn_cell_35355_72366005:,
simple_rnn_cell_35355_72366007:0
simple_rnn_cell_35355_72366009:
identity��-simple_rnn_cell_35355/StatefulPartitionedCall�while;
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
-simple_rnn_cell_35355/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_35355_72366005simple_rnn_cell_35355_72366007simple_rnn_cell_35355_72366009*
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
S__inference_simple_rnn_cell_35355_layer_call_and_return_conditional_losses_72366004n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_35355_72366005simple_rnn_cell_35355_72366007simple_rnn_cell_35355_72366009*
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
while_body_72366017*
condR
while_cond_72366016*8
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
NoOpNoOp.^simple_rnn_cell_35355/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2^
-simple_rnn_cell_35355/StatefulPartitionedCall-simple_rnn_cell_35355/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
-sequential_5_simple_rnn_5_while_cond_72365889P
Lsequential_5_simple_rnn_5_while_sequential_5_simple_rnn_5_while_loop_counterV
Rsequential_5_simple_rnn_5_while_sequential_5_simple_rnn_5_while_maximum_iterations/
+sequential_5_simple_rnn_5_while_placeholder1
-sequential_5_simple_rnn_5_while_placeholder_11
-sequential_5_simple_rnn_5_while_placeholder_2R
Nsequential_5_simple_rnn_5_while_less_sequential_5_simple_rnn_5_strided_slice_1j
fsequential_5_simple_rnn_5_while_sequential_5_simple_rnn_5_while_cond_72365889___redundant_placeholder0j
fsequential_5_simple_rnn_5_while_sequential_5_simple_rnn_5_while_cond_72365889___redundant_placeholder1j
fsequential_5_simple_rnn_5_while_sequential_5_simple_rnn_5_while_cond_72365889___redundant_placeholder2j
fsequential_5_simple_rnn_5_while_sequential_5_simple_rnn_5_while_cond_72365889___redundant_placeholder3,
(sequential_5_simple_rnn_5_while_identity
�
$sequential_5/simple_rnn_5/while/LessLess+sequential_5_simple_rnn_5_while_placeholderNsequential_5_simple_rnn_5_while_less_sequential_5_simple_rnn_5_strided_slice_1*
T0*
_output_shapes
: 
(sequential_5/simple_rnn_5/while/IdentityIdentity(sequential_5/simple_rnn_5/while/Less:z:0*
T0
*
_output_shapes
: "]
(sequential_5_simple_rnn_5_while_identity1sequential_5/simple_rnn_5/while/Identity:output:0*(
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
J__inference_sequential_5_layer_call_and_return_conditional_losses_72366565
simple_rnn_5_input'
simple_rnn_5_72366557:#
simple_rnn_5_72366559:'
simple_rnn_5_72366561:
identity��$simple_rnn_5/StatefulPartitionedCall�
$simple_rnn_5/StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_5_inputsimple_rnn_5_72366557simple_rnn_5_72366559simple_rnn_5_72366561*
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
J__inference_simple_rnn_5_layer_call_and_return_conditional_losses_72366362|
IdentityIdentity-simple_rnn_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������m
NoOpNoOp%^simple_rnn_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 2L
$simple_rnn_5/StatefulPartitionedCall$simple_rnn_5/StatefulPartitionedCall:_ [
+
_output_shapes
:���������(
,
_user_specified_namesimple_rnn_5_input
�
�
/__inference_simple_rnn_5_layer_call_fn_72366860

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
J__inference_simple_rnn_5_layer_call_and_return_conditional_losses_72366362o
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
�>
�
J__inference_simple_rnn_5_layer_call_and_return_conditional_losses_72366362

inputsF
4simple_rnn_cell_35355_matmul_readvariableop_resource:C
5simple_rnn_cell_35355_biasadd_readvariableop_resource:H
6simple_rnn_cell_35355_matmul_1_readvariableop_resource:
identity��,simple_rnn_cell_35355/BiasAdd/ReadVariableOp�+simple_rnn_cell_35355/MatMul/ReadVariableOp�-simple_rnn_cell_35355/MatMul_1/ReadVariableOp�while;
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
+simple_rnn_cell_35355/MatMul/ReadVariableOpReadVariableOp4simple_rnn_cell_35355_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
simple_rnn_cell_35355/MatMulMatMulstrided_slice_2:output:03simple_rnn_cell_35355/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
,simple_rnn_cell_35355/BiasAdd/ReadVariableOpReadVariableOp5simple_rnn_cell_35355_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
simple_rnn_cell_35355/BiasAddBiasAdd&simple_rnn_cell_35355/MatMul:product:04simple_rnn_cell_35355/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-simple_rnn_cell_35355/MatMul_1/ReadVariableOpReadVariableOp6simple_rnn_cell_35355_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0�
simple_rnn_cell_35355/MatMul_1MatMulzeros:output:05simple_rnn_cell_35355/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
simple_rnn_cell_35355/addAddV2&simple_rnn_cell_35355/BiasAdd:output:0(simple_rnn_cell_35355/MatMul_1:product:0*
T0*'
_output_shapes
:���������s
simple_rnn_cell_35355/TanhTanhsimple_rnn_cell_35355/add:z:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:04simple_rnn_cell_35355_matmul_readvariableop_resource5simple_rnn_cell_35355_biasadd_readvariableop_resource6simple_rnn_cell_35355_matmul_1_readvariableop_resource*
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
while_body_72366296*
condR
while_cond_72366295*8
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
NoOpNoOp-^simple_rnn_cell_35355/BiasAdd/ReadVariableOp,^simple_rnn_cell_35355/MatMul/ReadVariableOp.^simple_rnn_cell_35355/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 2\
,simple_rnn_cell_35355/BiasAdd/ReadVariableOp,simple_rnn_cell_35355/BiasAdd/ReadVariableOp2Z
+simple_rnn_cell_35355/MatMul/ReadVariableOp+simple_rnn_cell_35355/MatMul/ReadVariableOp2^
-simple_rnn_cell_35355/MatMul_1/ReadVariableOp-simple_rnn_cell_35355/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�>
�
J__inference_simple_rnn_5_layer_call_and_return_conditional_losses_72367195

inputsF
4simple_rnn_cell_35355_matmul_readvariableop_resource:C
5simple_rnn_cell_35355_biasadd_readvariableop_resource:H
6simple_rnn_cell_35355_matmul_1_readvariableop_resource:
identity��,simple_rnn_cell_35355/BiasAdd/ReadVariableOp�+simple_rnn_cell_35355/MatMul/ReadVariableOp�-simple_rnn_cell_35355/MatMul_1/ReadVariableOp�while;
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
+simple_rnn_cell_35355/MatMul/ReadVariableOpReadVariableOp4simple_rnn_cell_35355_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
simple_rnn_cell_35355/MatMulMatMulstrided_slice_2:output:03simple_rnn_cell_35355/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
,simple_rnn_cell_35355/BiasAdd/ReadVariableOpReadVariableOp5simple_rnn_cell_35355_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
simple_rnn_cell_35355/BiasAddBiasAdd&simple_rnn_cell_35355/MatMul:product:04simple_rnn_cell_35355/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-simple_rnn_cell_35355/MatMul_1/ReadVariableOpReadVariableOp6simple_rnn_cell_35355_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0�
simple_rnn_cell_35355/MatMul_1MatMulzeros:output:05simple_rnn_cell_35355/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
simple_rnn_cell_35355/addAddV2&simple_rnn_cell_35355/BiasAdd:output:0(simple_rnn_cell_35355/MatMul_1:product:0*
T0*'
_output_shapes
:���������s
simple_rnn_cell_35355/TanhTanhsimple_rnn_cell_35355/add:z:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:04simple_rnn_cell_35355_matmul_readvariableop_resource5simple_rnn_cell_35355_biasadd_readvariableop_resource6simple_rnn_cell_35355_matmul_1_readvariableop_resource*
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
while_body_72367129*
condR
while_cond_72367128*8
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
NoOpNoOp-^simple_rnn_cell_35355/BiasAdd/ReadVariableOp,^simple_rnn_cell_35355/MatMul/ReadVariableOp.^simple_rnn_cell_35355/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 2\
,simple_rnn_cell_35355/BiasAdd/ReadVariableOp,simple_rnn_cell_35355/BiasAdd/ReadVariableOp2Z
+simple_rnn_cell_35355/MatMul/ReadVariableOp+simple_rnn_cell_35355/MatMul/ReadVariableOp2^
-simple_rnn_cell_35355/MatMul_1/ReadVariableOp-simple_rnn_cell_35355/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�
�
/__inference_simple_rnn_5_layer_call_fn_72366849
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
J__inference_simple_rnn_5_layer_call_and_return_conditional_losses_72366239o
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
�:
�
 simple_rnn_5_while_body_723666406
2simple_rnn_5_while_simple_rnn_5_while_loop_counter<
8simple_rnn_5_while_simple_rnn_5_while_maximum_iterations"
simple_rnn_5_while_placeholder$
 simple_rnn_5_while_placeholder_1$
 simple_rnn_5_while_placeholder_25
1simple_rnn_5_while_simple_rnn_5_strided_slice_1_0q
msimple_rnn_5_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_5_tensorarrayunstack_tensorlistfromtensor_0[
Isimple_rnn_5_while_simple_rnn_cell_35355_matmul_readvariableop_resource_0:X
Jsimple_rnn_5_while_simple_rnn_cell_35355_biasadd_readvariableop_resource_0:]
Ksimple_rnn_5_while_simple_rnn_cell_35355_matmul_1_readvariableop_resource_0:
simple_rnn_5_while_identity!
simple_rnn_5_while_identity_1!
simple_rnn_5_while_identity_2!
simple_rnn_5_while_identity_3!
simple_rnn_5_while_identity_43
/simple_rnn_5_while_simple_rnn_5_strided_slice_1o
ksimple_rnn_5_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_5_tensorarrayunstack_tensorlistfromtensorY
Gsimple_rnn_5_while_simple_rnn_cell_35355_matmul_readvariableop_resource:V
Hsimple_rnn_5_while_simple_rnn_cell_35355_biasadd_readvariableop_resource:[
Isimple_rnn_5_while_simple_rnn_cell_35355_matmul_1_readvariableop_resource:��?simple_rnn_5/while/simple_rnn_cell_35355/BiasAdd/ReadVariableOp�>simple_rnn_5/while/simple_rnn_cell_35355/MatMul/ReadVariableOp�@simple_rnn_5/while/simple_rnn_cell_35355/MatMul_1/ReadVariableOp�
Dsimple_rnn_5/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
6simple_rnn_5/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_5_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_5_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_5_while_placeholderMsimple_rnn_5/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
>simple_rnn_5/while/simple_rnn_cell_35355/MatMul/ReadVariableOpReadVariableOpIsimple_rnn_5_while_simple_rnn_cell_35355_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0�
/simple_rnn_5/while/simple_rnn_cell_35355/MatMulMatMul=simple_rnn_5/while/TensorArrayV2Read/TensorListGetItem:item:0Fsimple_rnn_5/while/simple_rnn_cell_35355/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
?simple_rnn_5/while/simple_rnn_cell_35355/BiasAdd/ReadVariableOpReadVariableOpJsimple_rnn_5_while_simple_rnn_cell_35355_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0�
0simple_rnn_5/while/simple_rnn_cell_35355/BiasAddBiasAdd9simple_rnn_5/while/simple_rnn_cell_35355/MatMul:product:0Gsimple_rnn_5/while/simple_rnn_cell_35355/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
@simple_rnn_5/while/simple_rnn_cell_35355/MatMul_1/ReadVariableOpReadVariableOpKsimple_rnn_5_while_simple_rnn_cell_35355_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0�
1simple_rnn_5/while/simple_rnn_cell_35355/MatMul_1MatMul simple_rnn_5_while_placeholder_2Hsimple_rnn_5/while/simple_rnn_cell_35355/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
,simple_rnn_5/while/simple_rnn_cell_35355/addAddV29simple_rnn_5/while/simple_rnn_cell_35355/BiasAdd:output:0;simple_rnn_5/while/simple_rnn_cell_35355/MatMul_1:product:0*
T0*'
_output_shapes
:����������
-simple_rnn_5/while/simple_rnn_cell_35355/TanhTanh0simple_rnn_5/while/simple_rnn_cell_35355/add:z:0*
T0*'
_output_shapes
:����������
7simple_rnn_5/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_5_while_placeholder_1simple_rnn_5_while_placeholder1simple_rnn_5/while/simple_rnn_cell_35355/Tanh:y:0*
_output_shapes
: *
element_dtype0:���Z
simple_rnn_5/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_5/while/addAddV2simple_rnn_5_while_placeholder!simple_rnn_5/while/add/y:output:0*
T0*
_output_shapes
: \
simple_rnn_5/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_5/while/add_1AddV22simple_rnn_5_while_simple_rnn_5_while_loop_counter#simple_rnn_5/while/add_1/y:output:0*
T0*
_output_shapes
: �
simple_rnn_5/while/IdentityIdentitysimple_rnn_5/while/add_1:z:0^simple_rnn_5/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_5/while/Identity_1Identity8simple_rnn_5_while_simple_rnn_5_while_maximum_iterations^simple_rnn_5/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_5/while/Identity_2Identitysimple_rnn_5/while/add:z:0^simple_rnn_5/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_5/while/Identity_3IdentityGsimple_rnn_5/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_5/while/NoOp*
T0*
_output_shapes
: :����
simple_rnn_5/while/Identity_4Identity1simple_rnn_5/while/simple_rnn_cell_35355/Tanh:y:0^simple_rnn_5/while/NoOp*
T0*'
_output_shapes
:����������
simple_rnn_5/while/NoOpNoOp@^simple_rnn_5/while/simple_rnn_cell_35355/BiasAdd/ReadVariableOp?^simple_rnn_5/while/simple_rnn_cell_35355/MatMul/ReadVariableOpA^simple_rnn_5/while/simple_rnn_cell_35355/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "C
simple_rnn_5_while_identity$simple_rnn_5/while/Identity:output:0"G
simple_rnn_5_while_identity_1&simple_rnn_5/while/Identity_1:output:0"G
simple_rnn_5_while_identity_2&simple_rnn_5/while/Identity_2:output:0"G
simple_rnn_5_while_identity_3&simple_rnn_5/while/Identity_3:output:0"G
simple_rnn_5_while_identity_4&simple_rnn_5/while/Identity_4:output:0"d
/simple_rnn_5_while_simple_rnn_5_strided_slice_11simple_rnn_5_while_simple_rnn_5_strided_slice_1_0"�
Hsimple_rnn_5_while_simple_rnn_cell_35355_biasadd_readvariableop_resourceJsimple_rnn_5_while_simple_rnn_cell_35355_biasadd_readvariableop_resource_0"�
Isimple_rnn_5_while_simple_rnn_cell_35355_matmul_1_readvariableop_resourceKsimple_rnn_5_while_simple_rnn_cell_35355_matmul_1_readvariableop_resource_0"�
Gsimple_rnn_5_while_simple_rnn_cell_35355_matmul_readvariableop_resourceIsimple_rnn_5_while_simple_rnn_cell_35355_matmul_readvariableop_resource_0"�
ksimple_rnn_5_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_5_tensorarrayunstack_tensorlistfromtensormsimple_rnn_5_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_5_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������: : : : : 2�
?simple_rnn_5/while/simple_rnn_cell_35355/BiasAdd/ReadVariableOp?simple_rnn_5/while/simple_rnn_cell_35355/BiasAdd/ReadVariableOp2�
>simple_rnn_5/while/simple_rnn_cell_35355/MatMul/ReadVariableOp>simple_rnn_5/while/simple_rnn_cell_35355/MatMul/ReadVariableOp2�
@simple_rnn_5/while/simple_rnn_cell_35355/MatMul_1/ReadVariableOp@simple_rnn_5/while/simple_rnn_cell_35355/MatMul_1/ReadVariableOp: 
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
while_body_72366296
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0N
<while_simple_rnn_cell_35355_matmul_readvariableop_resource_0:K
=while_simple_rnn_cell_35355_biasadd_readvariableop_resource_0:P
>while_simple_rnn_cell_35355_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorL
:while_simple_rnn_cell_35355_matmul_readvariableop_resource:I
;while_simple_rnn_cell_35355_biasadd_readvariableop_resource:N
<while_simple_rnn_cell_35355_matmul_1_readvariableop_resource:��2while/simple_rnn_cell_35355/BiasAdd/ReadVariableOp�1while/simple_rnn_cell_35355/MatMul/ReadVariableOp�3while/simple_rnn_cell_35355/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
1while/simple_rnn_cell_35355/MatMul/ReadVariableOpReadVariableOp<while_simple_rnn_cell_35355_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0�
"while/simple_rnn_cell_35355/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:09while/simple_rnn_cell_35355/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
2while/simple_rnn_cell_35355/BiasAdd/ReadVariableOpReadVariableOp=while_simple_rnn_cell_35355_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0�
#while/simple_rnn_cell_35355/BiasAddBiasAdd,while/simple_rnn_cell_35355/MatMul:product:0:while/simple_rnn_cell_35355/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
3while/simple_rnn_cell_35355/MatMul_1/ReadVariableOpReadVariableOp>while_simple_rnn_cell_35355_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0�
$while/simple_rnn_cell_35355/MatMul_1MatMulwhile_placeholder_2;while/simple_rnn_cell_35355/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
while/simple_rnn_cell_35355/addAddV2,while/simple_rnn_cell_35355/BiasAdd:output:0.while/simple_rnn_cell_35355/MatMul_1:product:0*
T0*'
_output_shapes
:���������
 while/simple_rnn_cell_35355/TanhTanh#while/simple_rnn_cell_35355/add:z:0*
T0*'
_output_shapes
:����������
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder$while/simple_rnn_cell_35355/Tanh:y:0*
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
while/Identity_4Identity$while/simple_rnn_cell_35355/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:����������

while/NoOpNoOp3^while/simple_rnn_cell_35355/BiasAdd/ReadVariableOp2^while/simple_rnn_cell_35355/MatMul/ReadVariableOp4^while/simple_rnn_cell_35355/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"|
;while_simple_rnn_cell_35355_biasadd_readvariableop_resource=while_simple_rnn_cell_35355_biasadd_readvariableop_resource_0"~
<while_simple_rnn_cell_35355_matmul_1_readvariableop_resource>while_simple_rnn_cell_35355_matmul_1_readvariableop_resource_0"z
:while_simple_rnn_cell_35355_matmul_readvariableop_resource<while_simple_rnn_cell_35355_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������: : : : : 2h
2while/simple_rnn_cell_35355/BiasAdd/ReadVariableOp2while/simple_rnn_cell_35355/BiasAdd/ReadVariableOp2f
1while/simple_rnn_cell_35355/MatMul/ReadVariableOp1while/simple_rnn_cell_35355/MatMul/ReadVariableOp2j
3while/simple_rnn_cell_35355/MatMul_1/ReadVariableOp3while/simple_rnn_cell_35355/MatMul_1/ReadVariableOp: 
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
 simple_rnn_5_while_cond_723666396
2simple_rnn_5_while_simple_rnn_5_while_loop_counter<
8simple_rnn_5_while_simple_rnn_5_while_maximum_iterations"
simple_rnn_5_while_placeholder$
 simple_rnn_5_while_placeholder_1$
 simple_rnn_5_while_placeholder_28
4simple_rnn_5_while_less_simple_rnn_5_strided_slice_1P
Lsimple_rnn_5_while_simple_rnn_5_while_cond_72366639___redundant_placeholder0P
Lsimple_rnn_5_while_simple_rnn_5_while_cond_72366639___redundant_placeholder1P
Lsimple_rnn_5_while_simple_rnn_5_while_cond_72366639___redundant_placeholder2P
Lsimple_rnn_5_while_simple_rnn_5_while_cond_72366639___redundant_placeholder3
simple_rnn_5_while_identity
�
simple_rnn_5/while/LessLesssimple_rnn_5_while_placeholder4simple_rnn_5_while_less_simple_rnn_5_strided_slice_1*
T0*
_output_shapes
: e
simple_rnn_5/while/IdentityIdentitysimple_rnn_5/while/Less:z:0*
T0
*
_output_shapes
: "C
simple_rnn_5_while_identity$simple_rnn_5/while/Identity:output:0*(
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
�>
�
J__inference_simple_rnn_5_layer_call_and_return_conditional_losses_72366979
inputs_0F
4simple_rnn_cell_35355_matmul_readvariableop_resource:C
5simple_rnn_cell_35355_biasadd_readvariableop_resource:H
6simple_rnn_cell_35355_matmul_1_readvariableop_resource:
identity��,simple_rnn_cell_35355/BiasAdd/ReadVariableOp�+simple_rnn_cell_35355/MatMul/ReadVariableOp�-simple_rnn_cell_35355/MatMul_1/ReadVariableOp�while=
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
+simple_rnn_cell_35355/MatMul/ReadVariableOpReadVariableOp4simple_rnn_cell_35355_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
simple_rnn_cell_35355/MatMulMatMulstrided_slice_2:output:03simple_rnn_cell_35355/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
,simple_rnn_cell_35355/BiasAdd/ReadVariableOpReadVariableOp5simple_rnn_cell_35355_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
simple_rnn_cell_35355/BiasAddBiasAdd&simple_rnn_cell_35355/MatMul:product:04simple_rnn_cell_35355/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-simple_rnn_cell_35355/MatMul_1/ReadVariableOpReadVariableOp6simple_rnn_cell_35355_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0�
simple_rnn_cell_35355/MatMul_1MatMulzeros:output:05simple_rnn_cell_35355/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
simple_rnn_cell_35355/addAddV2&simple_rnn_cell_35355/BiasAdd:output:0(simple_rnn_cell_35355/MatMul_1:product:0*
T0*'
_output_shapes
:���������s
simple_rnn_cell_35355/TanhTanhsimple_rnn_cell_35355/add:z:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:04simple_rnn_cell_35355_matmul_readvariableop_resource5simple_rnn_cell_35355_biasadd_readvariableop_resource6simple_rnn_cell_35355_matmul_1_readvariableop_resource*
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
while_body_72366913*
condR
while_cond_72366912*8
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
NoOpNoOp-^simple_rnn_cell_35355/BiasAdd/ReadVariableOp,^simple_rnn_cell_35355/MatMul/ReadVariableOp.^simple_rnn_cell_35355/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2\
,simple_rnn_cell_35355/BiasAdd/ReadVariableOp,simple_rnn_cell_35355/BiasAdd/ReadVariableOp2Z
+simple_rnn_cell_35355/MatMul/ReadVariableOp+simple_rnn_cell_35355/MatMul/ReadVariableOp2^
-simple_rnn_cell_35355/MatMul_1/ReadVariableOp-simple_rnn_cell_35355/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
while_cond_72367020
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_72367020___redundant_placeholder06
2while_while_cond_72367020___redundant_placeholder16
2while_while_cond_72367020___redundant_placeholder26
2while_while_cond_72367020___redundant_placeholder3
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
�
&__inference_signature_wrapper_72366827
simple_rnn_5_input
unknown:
	unknown_0:
	unknown_1:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_5_inputunknown	unknown_0	unknown_1*
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
#__inference__wrapped_model_72365956o
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
_user_specified_namesimple_rnn_5_input
�>
�
J__inference_simple_rnn_5_layer_call_and_return_conditional_losses_72366501

inputsF
4simple_rnn_cell_35355_matmul_readvariableop_resource:C
5simple_rnn_cell_35355_biasadd_readvariableop_resource:H
6simple_rnn_cell_35355_matmul_1_readvariableop_resource:
identity��,simple_rnn_cell_35355/BiasAdd/ReadVariableOp�+simple_rnn_cell_35355/MatMul/ReadVariableOp�-simple_rnn_cell_35355/MatMul_1/ReadVariableOp�while;
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
+simple_rnn_cell_35355/MatMul/ReadVariableOpReadVariableOp4simple_rnn_cell_35355_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
simple_rnn_cell_35355/MatMulMatMulstrided_slice_2:output:03simple_rnn_cell_35355/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
,simple_rnn_cell_35355/BiasAdd/ReadVariableOpReadVariableOp5simple_rnn_cell_35355_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
simple_rnn_cell_35355/BiasAddBiasAdd&simple_rnn_cell_35355/MatMul:product:04simple_rnn_cell_35355/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-simple_rnn_cell_35355/MatMul_1/ReadVariableOpReadVariableOp6simple_rnn_cell_35355_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0�
simple_rnn_cell_35355/MatMul_1MatMulzeros:output:05simple_rnn_cell_35355/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
simple_rnn_cell_35355/addAddV2&simple_rnn_cell_35355/BiasAdd:output:0(simple_rnn_cell_35355/MatMul_1:product:0*
T0*'
_output_shapes
:���������s
simple_rnn_cell_35355/TanhTanhsimple_rnn_cell_35355/add:z:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:04simple_rnn_cell_35355_matmul_readvariableop_resource5simple_rnn_cell_35355_biasadd_readvariableop_resource6simple_rnn_cell_35355_matmul_1_readvariableop_resource*
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
while_body_72366435*
condR
while_cond_72366434*8
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
NoOpNoOp-^simple_rnn_cell_35355/BiasAdd/ReadVariableOp,^simple_rnn_cell_35355/MatMul/ReadVariableOp.^simple_rnn_cell_35355/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 2\
,simple_rnn_cell_35355/BiasAdd/ReadVariableOp,simple_rnn_cell_35355/BiasAdd/ReadVariableOp2Z
+simple_rnn_cell_35355/MatMul/ReadVariableOp+simple_rnn_cell_35355/MatMul/ReadVariableOp2^
-simple_rnn_cell_35355/MatMul_1/ReadVariableOp-simple_rnn_cell_35355/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�
�
$__inference__traced_restore_72367416
file_prefixH
6assignvariableop_simple_rnn_5_simple_rnn_cell_5_kernel:T
Bassignvariableop_1_simple_rnn_5_simple_rnn_cell_5_recurrent_kernel:D
6assignvariableop_2_simple_rnn_5_simple_rnn_cell_5_bias:

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
AssignVariableOpAssignVariableOp6assignvariableop_simple_rnn_5_simple_rnn_cell_5_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpBassignvariableop_1_simple_rnn_5_simple_rnn_cell_5_recurrent_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp6assignvariableop_2_simple_rnn_5_simple_rnn_cell_5_biasIdentity_2:output:0"/device:CPU:0*
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

�
 simple_rnn_5_while_cond_723667476
2simple_rnn_5_while_simple_rnn_5_while_loop_counter<
8simple_rnn_5_while_simple_rnn_5_while_maximum_iterations"
simple_rnn_5_while_placeholder$
 simple_rnn_5_while_placeholder_1$
 simple_rnn_5_while_placeholder_28
4simple_rnn_5_while_less_simple_rnn_5_strided_slice_1P
Lsimple_rnn_5_while_simple_rnn_5_while_cond_72366747___redundant_placeholder0P
Lsimple_rnn_5_while_simple_rnn_5_while_cond_72366747___redundant_placeholder1P
Lsimple_rnn_5_while_simple_rnn_5_while_cond_72366747___redundant_placeholder2P
Lsimple_rnn_5_while_simple_rnn_5_while_cond_72366747___redundant_placeholder3
simple_rnn_5_while_identity
�
simple_rnn_5/while/LessLesssimple_rnn_5_while_placeholder4simple_rnn_5_while_less_simple_rnn_5_strided_slice_1*
T0*
_output_shapes
: e
simple_rnn_5/while/IdentityIdentitysimple_rnn_5/while/Less:z:0*
T0
*
_output_shapes
: "C
simple_rnn_5_while_identity$simple_rnn_5/while/Identity:output:0*(
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
/__inference_sequential_5_layer_call_fn_72366380
simple_rnn_5_input
unknown:
	unknown_0:
	unknown_1:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_5_inputunknown	unknown_0	unknown_1*
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
J__inference_sequential_5_layer_call_and_return_conditional_losses_72366371o
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
_user_specified_namesimple_rnn_5_input
�"
�
while_body_72366017
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_08
&while_simple_rnn_cell_35355_72366039_0:4
&while_simple_rnn_cell_35355_72366041_0:8
&while_simple_rnn_cell_35355_72366043_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor6
$while_simple_rnn_cell_35355_72366039:2
$while_simple_rnn_cell_35355_72366041:6
$while_simple_rnn_cell_35355_72366043:��3while/simple_rnn_cell_35355/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
3while/simple_rnn_cell_35355/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2&while_simple_rnn_cell_35355_72366039_0&while_simple_rnn_cell_35355_72366041_0&while_simple_rnn_cell_35355_72366043_0*
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
S__inference_simple_rnn_cell_35355_layer_call_and_return_conditional_losses_72366004�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder<while/simple_rnn_cell_35355/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity<while/simple_rnn_cell_35355/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:����������

while/NoOpNoOp4^while/simple_rnn_cell_35355/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"N
$while_simple_rnn_cell_35355_72366039&while_simple_rnn_cell_35355_72366039_0"N
$while_simple_rnn_cell_35355_72366041&while_simple_rnn_cell_35355_72366041_0"N
$while_simple_rnn_cell_35355_72366043&while_simple_rnn_cell_35355_72366043_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������: : : : : 2j
3while/simple_rnn_cell_35355/StatefulPartitionedCall3while/simple_rnn_cell_35355/StatefulPartitionedCall: 
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
S__inference_simple_rnn_cell_35355_layer_call_and_return_conditional_losses_72367348

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
�
�
!__inference__traced_save_72367397
file_prefixD
@savev2_simple_rnn_5_simple_rnn_cell_5_kernel_read_readvariableopN
Jsavev2_simple_rnn_5_simple_rnn_cell_5_recurrent_kernel_read_readvariableopB
>savev2_simple_rnn_5_simple_rnn_cell_5_bias_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0@savev2_simple_rnn_5_simple_rnn_cell_5_kernel_read_readvariableopJsavev2_simple_rnn_5_simple_rnn_cell_5_recurrent_kernel_read_readvariableop>savev2_simple_rnn_5_simple_rnn_cell_5_bias_read_readvariableopsavev2_const"/device:CPU:0*
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
�
�
while_cond_72366434
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_72366434___redundant_placeholder06
2while_while_cond_72366434___redundant_placeholder16
2while_while_cond_72366434___redundant_placeholder26
2while_while_cond_72366434___redundant_placeholder3
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

�
8__inference_simple_rnn_cell_35355_layer_call_fn_72367317

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
S__inference_simple_rnn_cell_35355_layer_call_and_return_conditional_losses_72366004o
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
�W
�
#__inference__wrapped_model_72365956
simple_rnn_5_input`
Nsequential_5_simple_rnn_5_simple_rnn_cell_35355_matmul_readvariableop_resource:]
Osequential_5_simple_rnn_5_simple_rnn_cell_35355_biasadd_readvariableop_resource:b
Psequential_5_simple_rnn_5_simple_rnn_cell_35355_matmul_1_readvariableop_resource:
identity��Fsequential_5/simple_rnn_5/simple_rnn_cell_35355/BiasAdd/ReadVariableOp�Esequential_5/simple_rnn_5/simple_rnn_cell_35355/MatMul/ReadVariableOp�Gsequential_5/simple_rnn_5/simple_rnn_cell_35355/MatMul_1/ReadVariableOp�sequential_5/simple_rnn_5/whilea
sequential_5/simple_rnn_5/ShapeShapesimple_rnn_5_input*
T0*
_output_shapes
:w
-sequential_5/simple_rnn_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/sequential_5/simple_rnn_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/sequential_5/simple_rnn_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'sequential_5/simple_rnn_5/strided_sliceStridedSlice(sequential_5/simple_rnn_5/Shape:output:06sequential_5/simple_rnn_5/strided_slice/stack:output:08sequential_5/simple_rnn_5/strided_slice/stack_1:output:08sequential_5/simple_rnn_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
(sequential_5/simple_rnn_5/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
&sequential_5/simple_rnn_5/zeros/packedPack0sequential_5/simple_rnn_5/strided_slice:output:01sequential_5/simple_rnn_5/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:j
%sequential_5/simple_rnn_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_5/simple_rnn_5/zerosFill/sequential_5/simple_rnn_5/zeros/packed:output:0.sequential_5/simple_rnn_5/zeros/Const:output:0*
T0*'
_output_shapes
:���������}
(sequential_5/simple_rnn_5/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
#sequential_5/simple_rnn_5/transpose	Transposesimple_rnn_5_input1sequential_5/simple_rnn_5/transpose/perm:output:0*
T0*+
_output_shapes
:(���������x
!sequential_5/simple_rnn_5/Shape_1Shape'sequential_5/simple_rnn_5/transpose:y:0*
T0*
_output_shapes
:y
/sequential_5/simple_rnn_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1sequential_5/simple_rnn_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1sequential_5/simple_rnn_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)sequential_5/simple_rnn_5/strided_slice_1StridedSlice*sequential_5/simple_rnn_5/Shape_1:output:08sequential_5/simple_rnn_5/strided_slice_1/stack:output:0:sequential_5/simple_rnn_5/strided_slice_1/stack_1:output:0:sequential_5/simple_rnn_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
5sequential_5/simple_rnn_5/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
'sequential_5/simple_rnn_5/TensorArrayV2TensorListReserve>sequential_5/simple_rnn_5/TensorArrayV2/element_shape:output:02sequential_5/simple_rnn_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Osequential_5/simple_rnn_5/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Asequential_5/simple_rnn_5/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor'sequential_5/simple_rnn_5/transpose:y:0Xsequential_5/simple_rnn_5/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���y
/sequential_5/simple_rnn_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1sequential_5/simple_rnn_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1sequential_5/simple_rnn_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)sequential_5/simple_rnn_5/strided_slice_2StridedSlice'sequential_5/simple_rnn_5/transpose:y:08sequential_5/simple_rnn_5/strided_slice_2/stack:output:0:sequential_5/simple_rnn_5/strided_slice_2/stack_1:output:0:sequential_5/simple_rnn_5/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
Esequential_5/simple_rnn_5/simple_rnn_cell_35355/MatMul/ReadVariableOpReadVariableOpNsequential_5_simple_rnn_5_simple_rnn_cell_35355_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
6sequential_5/simple_rnn_5/simple_rnn_cell_35355/MatMulMatMul2sequential_5/simple_rnn_5/strided_slice_2:output:0Msequential_5/simple_rnn_5/simple_rnn_cell_35355/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Fsequential_5/simple_rnn_5/simple_rnn_cell_35355/BiasAdd/ReadVariableOpReadVariableOpOsequential_5_simple_rnn_5_simple_rnn_cell_35355_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
7sequential_5/simple_rnn_5/simple_rnn_cell_35355/BiasAddBiasAdd@sequential_5/simple_rnn_5/simple_rnn_cell_35355/MatMul:product:0Nsequential_5/simple_rnn_5/simple_rnn_cell_35355/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Gsequential_5/simple_rnn_5/simple_rnn_cell_35355/MatMul_1/ReadVariableOpReadVariableOpPsequential_5_simple_rnn_5_simple_rnn_cell_35355_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0�
8sequential_5/simple_rnn_5/simple_rnn_cell_35355/MatMul_1MatMul(sequential_5/simple_rnn_5/zeros:output:0Osequential_5/simple_rnn_5/simple_rnn_cell_35355/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
3sequential_5/simple_rnn_5/simple_rnn_cell_35355/addAddV2@sequential_5/simple_rnn_5/simple_rnn_cell_35355/BiasAdd:output:0Bsequential_5/simple_rnn_5/simple_rnn_cell_35355/MatMul_1:product:0*
T0*'
_output_shapes
:����������
4sequential_5/simple_rnn_5/simple_rnn_cell_35355/TanhTanh7sequential_5/simple_rnn_5/simple_rnn_cell_35355/add:z:0*
T0*'
_output_shapes
:����������
7sequential_5/simple_rnn_5/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)sequential_5/simple_rnn_5/TensorArrayV2_1TensorListReserve@sequential_5/simple_rnn_5/TensorArrayV2_1/element_shape:output:02sequential_5/simple_rnn_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���`
sequential_5/simple_rnn_5/timeConst*
_output_shapes
: *
dtype0*
value	B : }
2sequential_5/simple_rnn_5/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������n
,sequential_5/simple_rnn_5/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
sequential_5/simple_rnn_5/whileWhile5sequential_5/simple_rnn_5/while/loop_counter:output:0;sequential_5/simple_rnn_5/while/maximum_iterations:output:0'sequential_5/simple_rnn_5/time:output:02sequential_5/simple_rnn_5/TensorArrayV2_1:handle:0(sequential_5/simple_rnn_5/zeros:output:02sequential_5/simple_rnn_5/strided_slice_1:output:0Qsequential_5/simple_rnn_5/TensorArrayUnstack/TensorListFromTensor:output_handle:0Nsequential_5_simple_rnn_5_simple_rnn_cell_35355_matmul_readvariableop_resourceOsequential_5_simple_rnn_5_simple_rnn_cell_35355_biasadd_readvariableop_resourcePsequential_5_simple_rnn_5_simple_rnn_cell_35355_matmul_1_readvariableop_resource*
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
-sequential_5_simple_rnn_5_while_body_72365890*9
cond1R/
-sequential_5_simple_rnn_5_while_cond_72365889*8
output_shapes'
%: : : : :���������: : : : : *
parallel_iterations �
Jsequential_5/simple_rnn_5/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
<sequential_5/simple_rnn_5/TensorArrayV2Stack/TensorListStackTensorListStack(sequential_5/simple_rnn_5/while:output:3Ssequential_5/simple_rnn_5/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:(���������*
element_dtype0�
/sequential_5/simple_rnn_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������{
1sequential_5/simple_rnn_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: {
1sequential_5/simple_rnn_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)sequential_5/simple_rnn_5/strided_slice_3StridedSliceEsequential_5/simple_rnn_5/TensorArrayV2Stack/TensorListStack:tensor:08sequential_5/simple_rnn_5/strided_slice_3/stack:output:0:sequential_5/simple_rnn_5/strided_slice_3/stack_1:output:0:sequential_5/simple_rnn_5/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask
*sequential_5/simple_rnn_5/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
%sequential_5/simple_rnn_5/transpose_1	TransposeEsequential_5/simple_rnn_5/TensorArrayV2Stack/TensorListStack:tensor:03sequential_5/simple_rnn_5/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������(�
IdentityIdentity2sequential_5/simple_rnn_5/strided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOpG^sequential_5/simple_rnn_5/simple_rnn_cell_35355/BiasAdd/ReadVariableOpF^sequential_5/simple_rnn_5/simple_rnn_cell_35355/MatMul/ReadVariableOpH^sequential_5/simple_rnn_5/simple_rnn_cell_35355/MatMul_1/ReadVariableOp ^sequential_5/simple_rnn_5/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 2�
Fsequential_5/simple_rnn_5/simple_rnn_cell_35355/BiasAdd/ReadVariableOpFsequential_5/simple_rnn_5/simple_rnn_cell_35355/BiasAdd/ReadVariableOp2�
Esequential_5/simple_rnn_5/simple_rnn_cell_35355/MatMul/ReadVariableOpEsequential_5/simple_rnn_5/simple_rnn_cell_35355/MatMul/ReadVariableOp2�
Gsequential_5/simple_rnn_5/simple_rnn_cell_35355/MatMul_1/ReadVariableOpGsequential_5/simple_rnn_5/simple_rnn_cell_35355/MatMul_1/ReadVariableOp2B
sequential_5/simple_rnn_5/whilesequential_5/simple_rnn_5/while:_ [
+
_output_shapes
:���������(
,
_user_specified_namesimple_rnn_5_input
�"
�
while_body_72366176
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_08
&while_simple_rnn_cell_35355_72366198_0:4
&while_simple_rnn_cell_35355_72366200_0:8
&while_simple_rnn_cell_35355_72366202_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor6
$while_simple_rnn_cell_35355_72366198:2
$while_simple_rnn_cell_35355_72366200:6
$while_simple_rnn_cell_35355_72366202:��3while/simple_rnn_cell_35355/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
3while/simple_rnn_cell_35355/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2&while_simple_rnn_cell_35355_72366198_0&while_simple_rnn_cell_35355_72366200_0&while_simple_rnn_cell_35355_72366202_0*
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
S__inference_simple_rnn_cell_35355_layer_call_and_return_conditional_losses_72366124�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder<while/simple_rnn_cell_35355/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity<while/simple_rnn_cell_35355/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:����������

while/NoOpNoOp4^while/simple_rnn_cell_35355/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"N
$while_simple_rnn_cell_35355_72366198&while_simple_rnn_cell_35355_72366198_0"N
$while_simple_rnn_cell_35355_72366200&while_simple_rnn_cell_35355_72366200_0"N
$while_simple_rnn_cell_35355_72366202&while_simple_rnn_cell_35355_72366202_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������: : : : : 2j
3while/simple_rnn_cell_35355/StatefulPartitionedCall3while/simple_rnn_cell_35355/StatefulPartitionedCall: 
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
�:
�
 simple_rnn_5_while_body_723667486
2simple_rnn_5_while_simple_rnn_5_while_loop_counter<
8simple_rnn_5_while_simple_rnn_5_while_maximum_iterations"
simple_rnn_5_while_placeholder$
 simple_rnn_5_while_placeholder_1$
 simple_rnn_5_while_placeholder_25
1simple_rnn_5_while_simple_rnn_5_strided_slice_1_0q
msimple_rnn_5_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_5_tensorarrayunstack_tensorlistfromtensor_0[
Isimple_rnn_5_while_simple_rnn_cell_35355_matmul_readvariableop_resource_0:X
Jsimple_rnn_5_while_simple_rnn_cell_35355_biasadd_readvariableop_resource_0:]
Ksimple_rnn_5_while_simple_rnn_cell_35355_matmul_1_readvariableop_resource_0:
simple_rnn_5_while_identity!
simple_rnn_5_while_identity_1!
simple_rnn_5_while_identity_2!
simple_rnn_5_while_identity_3!
simple_rnn_5_while_identity_43
/simple_rnn_5_while_simple_rnn_5_strided_slice_1o
ksimple_rnn_5_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_5_tensorarrayunstack_tensorlistfromtensorY
Gsimple_rnn_5_while_simple_rnn_cell_35355_matmul_readvariableop_resource:V
Hsimple_rnn_5_while_simple_rnn_cell_35355_biasadd_readvariableop_resource:[
Isimple_rnn_5_while_simple_rnn_cell_35355_matmul_1_readvariableop_resource:��?simple_rnn_5/while/simple_rnn_cell_35355/BiasAdd/ReadVariableOp�>simple_rnn_5/while/simple_rnn_cell_35355/MatMul/ReadVariableOp�@simple_rnn_5/while/simple_rnn_cell_35355/MatMul_1/ReadVariableOp�
Dsimple_rnn_5/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
6simple_rnn_5/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_5_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_5_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_5_while_placeholderMsimple_rnn_5/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
>simple_rnn_5/while/simple_rnn_cell_35355/MatMul/ReadVariableOpReadVariableOpIsimple_rnn_5_while_simple_rnn_cell_35355_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0�
/simple_rnn_5/while/simple_rnn_cell_35355/MatMulMatMul=simple_rnn_5/while/TensorArrayV2Read/TensorListGetItem:item:0Fsimple_rnn_5/while/simple_rnn_cell_35355/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
?simple_rnn_5/while/simple_rnn_cell_35355/BiasAdd/ReadVariableOpReadVariableOpJsimple_rnn_5_while_simple_rnn_cell_35355_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0�
0simple_rnn_5/while/simple_rnn_cell_35355/BiasAddBiasAdd9simple_rnn_5/while/simple_rnn_cell_35355/MatMul:product:0Gsimple_rnn_5/while/simple_rnn_cell_35355/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
@simple_rnn_5/while/simple_rnn_cell_35355/MatMul_1/ReadVariableOpReadVariableOpKsimple_rnn_5_while_simple_rnn_cell_35355_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0�
1simple_rnn_5/while/simple_rnn_cell_35355/MatMul_1MatMul simple_rnn_5_while_placeholder_2Hsimple_rnn_5/while/simple_rnn_cell_35355/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
,simple_rnn_5/while/simple_rnn_cell_35355/addAddV29simple_rnn_5/while/simple_rnn_cell_35355/BiasAdd:output:0;simple_rnn_5/while/simple_rnn_cell_35355/MatMul_1:product:0*
T0*'
_output_shapes
:����������
-simple_rnn_5/while/simple_rnn_cell_35355/TanhTanh0simple_rnn_5/while/simple_rnn_cell_35355/add:z:0*
T0*'
_output_shapes
:����������
7simple_rnn_5/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_5_while_placeholder_1simple_rnn_5_while_placeholder1simple_rnn_5/while/simple_rnn_cell_35355/Tanh:y:0*
_output_shapes
: *
element_dtype0:���Z
simple_rnn_5/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_5/while/addAddV2simple_rnn_5_while_placeholder!simple_rnn_5/while/add/y:output:0*
T0*
_output_shapes
: \
simple_rnn_5/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_5/while/add_1AddV22simple_rnn_5_while_simple_rnn_5_while_loop_counter#simple_rnn_5/while/add_1/y:output:0*
T0*
_output_shapes
: �
simple_rnn_5/while/IdentityIdentitysimple_rnn_5/while/add_1:z:0^simple_rnn_5/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_5/while/Identity_1Identity8simple_rnn_5_while_simple_rnn_5_while_maximum_iterations^simple_rnn_5/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_5/while/Identity_2Identitysimple_rnn_5/while/add:z:0^simple_rnn_5/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_5/while/Identity_3IdentityGsimple_rnn_5/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_5/while/NoOp*
T0*
_output_shapes
: :����
simple_rnn_5/while/Identity_4Identity1simple_rnn_5/while/simple_rnn_cell_35355/Tanh:y:0^simple_rnn_5/while/NoOp*
T0*'
_output_shapes
:����������
simple_rnn_5/while/NoOpNoOp@^simple_rnn_5/while/simple_rnn_cell_35355/BiasAdd/ReadVariableOp?^simple_rnn_5/while/simple_rnn_cell_35355/MatMul/ReadVariableOpA^simple_rnn_5/while/simple_rnn_cell_35355/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "C
simple_rnn_5_while_identity$simple_rnn_5/while/Identity:output:0"G
simple_rnn_5_while_identity_1&simple_rnn_5/while/Identity_1:output:0"G
simple_rnn_5_while_identity_2&simple_rnn_5/while/Identity_2:output:0"G
simple_rnn_5_while_identity_3&simple_rnn_5/while/Identity_3:output:0"G
simple_rnn_5_while_identity_4&simple_rnn_5/while/Identity_4:output:0"d
/simple_rnn_5_while_simple_rnn_5_strided_slice_11simple_rnn_5_while_simple_rnn_5_strided_slice_1_0"�
Hsimple_rnn_5_while_simple_rnn_cell_35355_biasadd_readvariableop_resourceJsimple_rnn_5_while_simple_rnn_cell_35355_biasadd_readvariableop_resource_0"�
Isimple_rnn_5_while_simple_rnn_cell_35355_matmul_1_readvariableop_resourceKsimple_rnn_5_while_simple_rnn_cell_35355_matmul_1_readvariableop_resource_0"�
Gsimple_rnn_5_while_simple_rnn_cell_35355_matmul_readvariableop_resourceIsimple_rnn_5_while_simple_rnn_cell_35355_matmul_readvariableop_resource_0"�
ksimple_rnn_5_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_5_tensorarrayunstack_tensorlistfromtensormsimple_rnn_5_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_5_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������: : : : : 2�
?simple_rnn_5/while/simple_rnn_cell_35355/BiasAdd/ReadVariableOp?simple_rnn_5/while/simple_rnn_cell_35355/BiasAdd/ReadVariableOp2�
>simple_rnn_5/while/simple_rnn_cell_35355/MatMul/ReadVariableOp>simple_rnn_5/while/simple_rnn_cell_35355/MatMul/ReadVariableOp2�
@simple_rnn_5/while/simple_rnn_cell_35355/MatMul_1/ReadVariableOp@simple_rnn_5/while/simple_rnn_cell_35355/MatMul_1/ReadVariableOp: 
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
: "�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
U
simple_rnn_5_input?
$serving_default_simple_rnn_5_input:0���������(@
simple_rnn_50
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
/__inference_sequential_5_layer_call_fn_72366380
/__inference_sequential_5_layer_call_fn_72366587
/__inference_sequential_5_layer_call_fn_72366598
/__inference_sequential_5_layer_call_fn_72366554�
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
J__inference_sequential_5_layer_call_and_return_conditional_losses_72366706
J__inference_sequential_5_layer_call_and_return_conditional_losses_72366814
J__inference_sequential_5_layer_call_and_return_conditional_losses_72366565
J__inference_sequential_5_layer_call_and_return_conditional_losses_72366576�
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
#__inference__wrapped_model_72365956simple_rnn_5_input"�
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
/__inference_simple_rnn_5_layer_call_fn_72366838
/__inference_simple_rnn_5_layer_call_fn_72366849
/__inference_simple_rnn_5_layer_call_fn_72366860
/__inference_simple_rnn_5_layer_call_fn_72366871�
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
J__inference_simple_rnn_5_layer_call_and_return_conditional_losses_72366979
J__inference_simple_rnn_5_layer_call_and_return_conditional_losses_72367087
J__inference_simple_rnn_5_layer_call_and_return_conditional_losses_72367195
J__inference_simple_rnn_5_layer_call_and_return_conditional_losses_72367303�
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
&__inference_signature_wrapper_72366827simple_rnn_5_input"�
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
7:52%simple_rnn_5/simple_rnn_cell_5/kernel
A:?2/simple_rnn_5/simple_rnn_cell_5/recurrent_kernel
1:/2#simple_rnn_5/simple_rnn_cell_5/bias
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
8__inference_simple_rnn_cell_35355_layer_call_fn_72367317
8__inference_simple_rnn_cell_35355_layer_call_fn_72367331�
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
S__inference_simple_rnn_cell_35355_layer_call_and_return_conditional_losses_72367348
S__inference_simple_rnn_cell_35355_layer_call_and_return_conditional_losses_72367365�
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
#__inference__wrapped_model_72365956�?�<
5�2
0�-
simple_rnn_5_input���������(
� ";�8
6
simple_rnn_5&�#
simple_rnn_5����������
J__inference_sequential_5_layer_call_and_return_conditional_losses_72366565uG�D
=�:
0�-
simple_rnn_5_input���������(
p 

 
� "%�"
�
0���������
� �
J__inference_sequential_5_layer_call_and_return_conditional_losses_72366576uG�D
=�:
0�-
simple_rnn_5_input���������(
p

 
� "%�"
�
0���������
� �
J__inference_sequential_5_layer_call_and_return_conditional_losses_72366706i;�8
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
J__inference_sequential_5_layer_call_and_return_conditional_losses_72366814i;�8
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
/__inference_sequential_5_layer_call_fn_72366380hG�D
=�:
0�-
simple_rnn_5_input���������(
p 

 
� "�����������
/__inference_sequential_5_layer_call_fn_72366554hG�D
=�:
0�-
simple_rnn_5_input���������(
p

 
� "�����������
/__inference_sequential_5_layer_call_fn_72366587\;�8
1�.
$�!
inputs���������(
p 

 
� "�����������
/__inference_sequential_5_layer_call_fn_72366598\;�8
1�.
$�!
inputs���������(
p

 
� "�����������
&__inference_signature_wrapper_72366827�U�R
� 
K�H
F
simple_rnn_5_input0�-
simple_rnn_5_input���������(";�8
6
simple_rnn_5&�#
simple_rnn_5����������
J__inference_simple_rnn_5_layer_call_and_return_conditional_losses_72366979}O�L
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
J__inference_simple_rnn_5_layer_call_and_return_conditional_losses_72367087}O�L
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
J__inference_simple_rnn_5_layer_call_and_return_conditional_losses_72367195m?�<
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
J__inference_simple_rnn_5_layer_call_and_return_conditional_losses_72367303m?�<
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
/__inference_simple_rnn_5_layer_call_fn_72366838pO�L
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
/__inference_simple_rnn_5_layer_call_fn_72366849pO�L
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
/__inference_simple_rnn_5_layer_call_fn_72366860`?�<
5�2
$�!
inputs���������(

 
p 

 
� "�����������
/__inference_simple_rnn_5_layer_call_fn_72366871`?�<
5�2
$�!
inputs���������(

 
p

 
� "�����������
S__inference_simple_rnn_cell_35355_layer_call_and_return_conditional_losses_72367348�\�Y
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
S__inference_simple_rnn_cell_35355_layer_call_and_return_conditional_losses_72367365�\�Y
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
8__inference_simple_rnn_cell_35355_layer_call_fn_72367317�\�Y
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
8__inference_simple_rnn_cell_35355_layer_call_fn_72367331�\�Y
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