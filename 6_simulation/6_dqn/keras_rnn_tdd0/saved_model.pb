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
)simple_rnn_102/simple_rnn_cell_10403/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*:
shared_name+)simple_rnn_102/simple_rnn_cell_10403/bias
�
=simple_rnn_102/simple_rnn_cell_10403/bias/Read/ReadVariableOpReadVariableOp)simple_rnn_102/simple_rnn_cell_10403/bias*
_output_shapes
:*
dtype0
�
5simple_rnn_102/simple_rnn_cell_10403/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*F
shared_name75simple_rnn_102/simple_rnn_cell_10403/recurrent_kernel
�
Isimple_rnn_102/simple_rnn_cell_10403/recurrent_kernel/Read/ReadVariableOpReadVariableOp5simple_rnn_102/simple_rnn_cell_10403/recurrent_kernel*
_output_shapes

:*
dtype0
�
+simple_rnn_102/simple_rnn_cell_10403/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*<
shared_name-+simple_rnn_102/simple_rnn_cell_10403/kernel
�
?simple_rnn_102/simple_rnn_cell_10403/kernel/Read/ReadVariableOpReadVariableOp+simple_rnn_102/simple_rnn_cell_10403/kernel*
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
VARIABLE_VALUE+simple_rnn_102/simple_rnn_cell_10403/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE5simple_rnn_102/simple_rnn_cell_10403/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUE)simple_rnn_102/simple_rnn_cell_10403/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
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
$serving_default_simple_rnn_102_inputPlaceholder*+
_output_shapes
:���������(*
dtype0* 
shape:���������(
�
StatefulPartitionedCallStatefulPartitionedCall$serving_default_simple_rnn_102_input+simple_rnn_102/simple_rnn_cell_10403/kernel)simple_rnn_102/simple_rnn_cell_10403/bias5simple_rnn_102/simple_rnn_cell_10403/recurrent_kernel*
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
&__inference_signature_wrapper_21178574
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename?simple_rnn_102/simple_rnn_cell_10403/kernel/Read/ReadVariableOpIsimple_rnn_102/simple_rnn_cell_10403/recurrent_kernel/Read/ReadVariableOp=simple_rnn_102/simple_rnn_cell_10403/bias/Read/ReadVariableOpConst*
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
!__inference__traced_save_21179394
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename+simple_rnn_102/simple_rnn_cell_10403/kernel5simple_rnn_102/simple_rnn_cell_10403/recurrent_kernel)simple_rnn_102/simple_rnn_cell_10403/bias*
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
$__inference__traced_restore_21179413��
�
�
1__inference_simple_rnn_102_layer_call_fn_21178838
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
L__inference_simple_rnn_102_layer_call_and_return_conditional_losses_21178220o
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
�
�
1__inference_sequential_102_layer_call_fn_21178363
simple_rnn_102_input
unknown:
	unknown_0:
	unknown_1:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_102_inputunknown	unknown_0	unknown_1*
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
L__inference_sequential_102_layer_call_and_return_conditional_losses_21178354o
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
_user_specified_namesimple_rnn_102_input
�.
�
while_body_21179013
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0N
<while_simple_rnn_cell_10403_matmul_readvariableop_resource_0:K
=while_simple_rnn_cell_10403_biasadd_readvariableop_resource_0:P
>while_simple_rnn_cell_10403_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorL
:while_simple_rnn_cell_10403_matmul_readvariableop_resource:I
;while_simple_rnn_cell_10403_biasadd_readvariableop_resource:N
<while_simple_rnn_cell_10403_matmul_1_readvariableop_resource:��2while/simple_rnn_cell_10403/BiasAdd/ReadVariableOp�1while/simple_rnn_cell_10403/MatMul/ReadVariableOp�3while/simple_rnn_cell_10403/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
1while/simple_rnn_cell_10403/MatMul/ReadVariableOpReadVariableOp<while_simple_rnn_cell_10403_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0�
"while/simple_rnn_cell_10403/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:09while/simple_rnn_cell_10403/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
2while/simple_rnn_cell_10403/BiasAdd/ReadVariableOpReadVariableOp=while_simple_rnn_cell_10403_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0�
#while/simple_rnn_cell_10403/BiasAddBiasAdd,while/simple_rnn_cell_10403/MatMul:product:0:while/simple_rnn_cell_10403/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
3while/simple_rnn_cell_10403/MatMul_1/ReadVariableOpReadVariableOp>while_simple_rnn_cell_10403_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0�
$while/simple_rnn_cell_10403/MatMul_1MatMulwhile_placeholder_2;while/simple_rnn_cell_10403/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
while/simple_rnn_cell_10403/addAddV2,while/simple_rnn_cell_10403/BiasAdd:output:0.while/simple_rnn_cell_10403/MatMul_1:product:0*
T0*'
_output_shapes
:���������
 while/simple_rnn_cell_10403/TanhTanh#while/simple_rnn_cell_10403/add:z:0*
T0*'
_output_shapes
:���������r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0$while/simple_rnn_cell_10403/Tanh:y:0*
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
while/Identity_4Identity$while/simple_rnn_cell_10403/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:����������

while/NoOpNoOp3^while/simple_rnn_cell_10403/BiasAdd/ReadVariableOp2^while/simple_rnn_cell_10403/MatMul/ReadVariableOp4^while/simple_rnn_cell_10403/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"|
;while_simple_rnn_cell_10403_biasadd_readvariableop_resource=while_simple_rnn_cell_10403_biasadd_readvariableop_resource_0"~
<while_simple_rnn_cell_10403_matmul_1_readvariableop_resource>while_simple_rnn_cell_10403_matmul_1_readvariableop_resource_0"z
:while_simple_rnn_cell_10403_matmul_readvariableop_resource<while_simple_rnn_cell_10403_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������: : : : : 2h
2while/simple_rnn_cell_10403/BiasAdd/ReadVariableOp2while/simple_rnn_cell_10403/BiasAdd/ReadVariableOp2f
1while/simple_rnn_cell_10403/MatMul/ReadVariableOp1while/simple_rnn_cell_10403/MatMul/ReadVariableOp2j
3while/simple_rnn_cell_10403/MatMul_1/ReadVariableOp3while/simple_rnn_cell_10403/MatMul_1/ReadVariableOp: 
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
�M
�
L__inference_sequential_102_layer_call_and_return_conditional_losses_21178816

inputsU
Csimple_rnn_102_simple_rnn_cell_10403_matmul_readvariableop_resource:R
Dsimple_rnn_102_simple_rnn_cell_10403_biasadd_readvariableop_resource:W
Esimple_rnn_102_simple_rnn_cell_10403_matmul_1_readvariableop_resource:
identity��;simple_rnn_102/simple_rnn_cell_10403/BiasAdd/ReadVariableOp�:simple_rnn_102/simple_rnn_cell_10403/MatMul/ReadVariableOp�<simple_rnn_102/simple_rnn_cell_10403/MatMul_1/ReadVariableOp�simple_rnn_102/whileJ
simple_rnn_102/ShapeShapeinputs*
T0*
_output_shapes
:l
"simple_rnn_102/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_102/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_102/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_102/strided_sliceStridedSlicesimple_rnn_102/Shape:output:0+simple_rnn_102/strided_slice/stack:output:0-simple_rnn_102/strided_slice/stack_1:output:0-simple_rnn_102/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
simple_rnn_102/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_102/zeros/packedPack%simple_rnn_102/strided_slice:output:0&simple_rnn_102/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:_
simple_rnn_102/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
simple_rnn_102/zerosFill$simple_rnn_102/zeros/packed:output:0#simple_rnn_102/zeros/Const:output:0*
T0*'
_output_shapes
:���������r
simple_rnn_102/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_102/transpose	Transposeinputs&simple_rnn_102/transpose/perm:output:0*
T0*+
_output_shapes
:(���������b
simple_rnn_102/Shape_1Shapesimple_rnn_102/transpose:y:0*
T0*
_output_shapes
:n
$simple_rnn_102/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&simple_rnn_102/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&simple_rnn_102/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_102/strided_slice_1StridedSlicesimple_rnn_102/Shape_1:output:0-simple_rnn_102/strided_slice_1/stack:output:0/simple_rnn_102/strided_slice_1/stack_1:output:0/simple_rnn_102/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
*simple_rnn_102/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
simple_rnn_102/TensorArrayV2TensorListReserve3simple_rnn_102/TensorArrayV2/element_shape:output:0'simple_rnn_102/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Dsimple_rnn_102/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
6simple_rnn_102/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_102/transpose:y:0Msimple_rnn_102/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���n
$simple_rnn_102/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&simple_rnn_102/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&simple_rnn_102/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_102/strided_slice_2StridedSlicesimple_rnn_102/transpose:y:0-simple_rnn_102/strided_slice_2/stack:output:0/simple_rnn_102/strided_slice_2/stack_1:output:0/simple_rnn_102/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
:simple_rnn_102/simple_rnn_cell_10403/MatMul/ReadVariableOpReadVariableOpCsimple_rnn_102_simple_rnn_cell_10403_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
+simple_rnn_102/simple_rnn_cell_10403/MatMulMatMul'simple_rnn_102/strided_slice_2:output:0Bsimple_rnn_102/simple_rnn_cell_10403/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
;simple_rnn_102/simple_rnn_cell_10403/BiasAdd/ReadVariableOpReadVariableOpDsimple_rnn_102_simple_rnn_cell_10403_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
,simple_rnn_102/simple_rnn_cell_10403/BiasAddBiasAdd5simple_rnn_102/simple_rnn_cell_10403/MatMul:product:0Csimple_rnn_102/simple_rnn_cell_10403/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
<simple_rnn_102/simple_rnn_cell_10403/MatMul_1/ReadVariableOpReadVariableOpEsimple_rnn_102_simple_rnn_cell_10403_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0�
-simple_rnn_102/simple_rnn_cell_10403/MatMul_1MatMulsimple_rnn_102/zeros:output:0Dsimple_rnn_102/simple_rnn_cell_10403/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
(simple_rnn_102/simple_rnn_cell_10403/addAddV25simple_rnn_102/simple_rnn_cell_10403/BiasAdd:output:07simple_rnn_102/simple_rnn_cell_10403/MatMul_1:product:0*
T0*'
_output_shapes
:����������
)simple_rnn_102/simple_rnn_cell_10403/TanhTanh,simple_rnn_102/simple_rnn_cell_10403/add:z:0*
T0*'
_output_shapes
:���������}
,simple_rnn_102/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   m
+simple_rnn_102/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_102/TensorArrayV2_1TensorListReserve5simple_rnn_102/TensorArrayV2_1/element_shape:output:04simple_rnn_102/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���U
simple_rnn_102/timeConst*
_output_shapes
: *
dtype0*
value	B : r
'simple_rnn_102/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������c
!simple_rnn_102/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
simple_rnn_102/whileWhile*simple_rnn_102/while/loop_counter:output:00simple_rnn_102/while/maximum_iterations:output:0simple_rnn_102/time:output:0'simple_rnn_102/TensorArrayV2_1:handle:0simple_rnn_102/zeros:output:0'simple_rnn_102/strided_slice_1:output:0Fsimple_rnn_102/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csimple_rnn_102_simple_rnn_cell_10403_matmul_readvariableop_resourceDsimple_rnn_102_simple_rnn_cell_10403_biasadd_readvariableop_resourceEsimple_rnn_102_simple_rnn_cell_10403_matmul_1_readvariableop_resource*
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
"simple_rnn_102_while_body_21178749*.
cond&R$
"simple_rnn_102_while_cond_21178748*8
output_shapes'
%: : : : :���������: : : : : *
parallel_iterations �
?simple_rnn_102/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
1simple_rnn_102/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_102/while:output:3Hsimple_rnn_102/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������*
element_dtype0*
num_elementsw
$simple_rnn_102/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������p
&simple_rnn_102/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: p
&simple_rnn_102/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_102/strided_slice_3StridedSlice:simple_rnn_102/TensorArrayV2Stack/TensorListStack:tensor:0-simple_rnn_102/strided_slice_3/stack:output:0/simple_rnn_102/strided_slice_3/stack_1:output:0/simple_rnn_102/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_maskt
simple_rnn_102/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_102/transpose_1	Transpose:simple_rnn_102/TensorArrayV2Stack/TensorListStack:tensor:0(simple_rnn_102/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������v
IdentityIdentity'simple_rnn_102/strided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp<^simple_rnn_102/simple_rnn_cell_10403/BiasAdd/ReadVariableOp;^simple_rnn_102/simple_rnn_cell_10403/MatMul/ReadVariableOp=^simple_rnn_102/simple_rnn_cell_10403/MatMul_1/ReadVariableOp^simple_rnn_102/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 2z
;simple_rnn_102/simple_rnn_cell_10403/BiasAdd/ReadVariableOp;simple_rnn_102/simple_rnn_cell_10403/BiasAdd/ReadVariableOp2x
:simple_rnn_102/simple_rnn_cell_10403/MatMul/ReadVariableOp:simple_rnn_102/simple_rnn_cell_10403/MatMul/ReadVariableOp2|
<simple_rnn_102/simple_rnn_cell_10403/MatMul_1/ReadVariableOp<simple_rnn_102/simple_rnn_cell_10403/MatMul_1/ReadVariableOp2,
simple_rnn_102/whilesimple_rnn_102/while:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�#
�
while_body_21177995
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_08
&while_simple_rnn_cell_10403_21178017_0:4
&while_simple_rnn_cell_10403_21178019_0:8
&while_simple_rnn_cell_10403_21178021_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor6
$while_simple_rnn_cell_10403_21178017:2
$while_simple_rnn_cell_10403_21178019:6
$while_simple_rnn_cell_10403_21178021:��3while/simple_rnn_cell_10403/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
3while/simple_rnn_cell_10403/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2&while_simple_rnn_cell_10403_21178017_0&while_simple_rnn_cell_10403_21178019_0&while_simple_rnn_cell_10403_21178021_0*
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
S__inference_simple_rnn_cell_10403_layer_call_and_return_conditional_losses_21177981r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0<while/simple_rnn_cell_10403/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity<while/simple_rnn_cell_10403/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:����������

while/NoOpNoOp4^while/simple_rnn_cell_10403/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"N
$while_simple_rnn_cell_10403_21178017&while_simple_rnn_cell_10403_21178017_0"N
$while_simple_rnn_cell_10403_21178019&while_simple_rnn_cell_10403_21178019_0"N
$while_simple_rnn_cell_10403_21178021&while_simple_rnn_cell_10403_21178021_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������: : : : : 2j
3while/simple_rnn_cell_10403/StatefulPartitionedCall3while/simple_rnn_cell_10403/StatefulPartitionedCall: 
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
while_cond_21179122
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_21179122___redundant_placeholder06
2while_while_cond_21179122___redundant_placeholder16
2while_while_cond_21179122___redundant_placeholder26
2while_while_cond_21179122___redundant_placeholder3
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
�K
�
1sequential_102_simple_rnn_102_while_body_21177866X
Tsequential_102_simple_rnn_102_while_sequential_102_simple_rnn_102_while_loop_counter^
Zsequential_102_simple_rnn_102_while_sequential_102_simple_rnn_102_while_maximum_iterations3
/sequential_102_simple_rnn_102_while_placeholder5
1sequential_102_simple_rnn_102_while_placeholder_15
1sequential_102_simple_rnn_102_while_placeholder_2W
Ssequential_102_simple_rnn_102_while_sequential_102_simple_rnn_102_strided_slice_1_0�
�sequential_102_simple_rnn_102_while_tensorarrayv2read_tensorlistgetitem_sequential_102_simple_rnn_102_tensorarrayunstack_tensorlistfromtensor_0l
Zsequential_102_simple_rnn_102_while_simple_rnn_cell_10403_matmul_readvariableop_resource_0:i
[sequential_102_simple_rnn_102_while_simple_rnn_cell_10403_biasadd_readvariableop_resource_0:n
\sequential_102_simple_rnn_102_while_simple_rnn_cell_10403_matmul_1_readvariableop_resource_0:0
,sequential_102_simple_rnn_102_while_identity2
.sequential_102_simple_rnn_102_while_identity_12
.sequential_102_simple_rnn_102_while_identity_22
.sequential_102_simple_rnn_102_while_identity_32
.sequential_102_simple_rnn_102_while_identity_4U
Qsequential_102_simple_rnn_102_while_sequential_102_simple_rnn_102_strided_slice_1�
�sequential_102_simple_rnn_102_while_tensorarrayv2read_tensorlistgetitem_sequential_102_simple_rnn_102_tensorarrayunstack_tensorlistfromtensorj
Xsequential_102_simple_rnn_102_while_simple_rnn_cell_10403_matmul_readvariableop_resource:g
Ysequential_102_simple_rnn_102_while_simple_rnn_cell_10403_biasadd_readvariableop_resource:l
Zsequential_102_simple_rnn_102_while_simple_rnn_cell_10403_matmul_1_readvariableop_resource:��Psequential_102/simple_rnn_102/while/simple_rnn_cell_10403/BiasAdd/ReadVariableOp�Osequential_102/simple_rnn_102/while/simple_rnn_cell_10403/MatMul/ReadVariableOp�Qsequential_102/simple_rnn_102/while/simple_rnn_cell_10403/MatMul_1/ReadVariableOp�
Usequential_102/simple_rnn_102/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Gsequential_102/simple_rnn_102/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_102_simple_rnn_102_while_tensorarrayv2read_tensorlistgetitem_sequential_102_simple_rnn_102_tensorarrayunstack_tensorlistfromtensor_0/sequential_102_simple_rnn_102_while_placeholder^sequential_102/simple_rnn_102/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
Osequential_102/simple_rnn_102/while/simple_rnn_cell_10403/MatMul/ReadVariableOpReadVariableOpZsequential_102_simple_rnn_102_while_simple_rnn_cell_10403_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0�
@sequential_102/simple_rnn_102/while/simple_rnn_cell_10403/MatMulMatMulNsequential_102/simple_rnn_102/while/TensorArrayV2Read/TensorListGetItem:item:0Wsequential_102/simple_rnn_102/while/simple_rnn_cell_10403/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Psequential_102/simple_rnn_102/while/simple_rnn_cell_10403/BiasAdd/ReadVariableOpReadVariableOp[sequential_102_simple_rnn_102_while_simple_rnn_cell_10403_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0�
Asequential_102/simple_rnn_102/while/simple_rnn_cell_10403/BiasAddBiasAddJsequential_102/simple_rnn_102/while/simple_rnn_cell_10403/MatMul:product:0Xsequential_102/simple_rnn_102/while/simple_rnn_cell_10403/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Qsequential_102/simple_rnn_102/while/simple_rnn_cell_10403/MatMul_1/ReadVariableOpReadVariableOp\sequential_102_simple_rnn_102_while_simple_rnn_cell_10403_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0�
Bsequential_102/simple_rnn_102/while/simple_rnn_cell_10403/MatMul_1MatMul1sequential_102_simple_rnn_102_while_placeholder_2Ysequential_102/simple_rnn_102/while/simple_rnn_cell_10403/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
=sequential_102/simple_rnn_102/while/simple_rnn_cell_10403/addAddV2Jsequential_102/simple_rnn_102/while/simple_rnn_cell_10403/BiasAdd:output:0Lsequential_102/simple_rnn_102/while/simple_rnn_cell_10403/MatMul_1:product:0*
T0*'
_output_shapes
:����������
>sequential_102/simple_rnn_102/while/simple_rnn_cell_10403/TanhTanhAsequential_102/simple_rnn_102/while/simple_rnn_cell_10403/add:z:0*
T0*'
_output_shapes
:����������
Nsequential_102/simple_rnn_102/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
Hsequential_102/simple_rnn_102/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem1sequential_102_simple_rnn_102_while_placeholder_1Wsequential_102/simple_rnn_102/while/TensorArrayV2Write/TensorListSetItem/index:output:0Bsequential_102/simple_rnn_102/while/simple_rnn_cell_10403/Tanh:y:0*
_output_shapes
: *
element_dtype0:���k
)sequential_102/simple_rnn_102/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
'sequential_102/simple_rnn_102/while/addAddV2/sequential_102_simple_rnn_102_while_placeholder2sequential_102/simple_rnn_102/while/add/y:output:0*
T0*
_output_shapes
: m
+sequential_102/simple_rnn_102/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
)sequential_102/simple_rnn_102/while/add_1AddV2Tsequential_102_simple_rnn_102_while_sequential_102_simple_rnn_102_while_loop_counter4sequential_102/simple_rnn_102/while/add_1/y:output:0*
T0*
_output_shapes
: �
,sequential_102/simple_rnn_102/while/IdentityIdentity-sequential_102/simple_rnn_102/while/add_1:z:0)^sequential_102/simple_rnn_102/while/NoOp*
T0*
_output_shapes
: �
.sequential_102/simple_rnn_102/while/Identity_1IdentityZsequential_102_simple_rnn_102_while_sequential_102_simple_rnn_102_while_maximum_iterations)^sequential_102/simple_rnn_102/while/NoOp*
T0*
_output_shapes
: �
.sequential_102/simple_rnn_102/while/Identity_2Identity+sequential_102/simple_rnn_102/while/add:z:0)^sequential_102/simple_rnn_102/while/NoOp*
T0*
_output_shapes
: �
.sequential_102/simple_rnn_102/while/Identity_3IdentityXsequential_102/simple_rnn_102/while/TensorArrayV2Write/TensorListSetItem:output_handle:0)^sequential_102/simple_rnn_102/while/NoOp*
T0*
_output_shapes
: �
.sequential_102/simple_rnn_102/while/Identity_4IdentityBsequential_102/simple_rnn_102/while/simple_rnn_cell_10403/Tanh:y:0)^sequential_102/simple_rnn_102/while/NoOp*
T0*'
_output_shapes
:����������
(sequential_102/simple_rnn_102/while/NoOpNoOpQ^sequential_102/simple_rnn_102/while/simple_rnn_cell_10403/BiasAdd/ReadVariableOpP^sequential_102/simple_rnn_102/while/simple_rnn_cell_10403/MatMul/ReadVariableOpR^sequential_102/simple_rnn_102/while/simple_rnn_cell_10403/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "e
,sequential_102_simple_rnn_102_while_identity5sequential_102/simple_rnn_102/while/Identity:output:0"i
.sequential_102_simple_rnn_102_while_identity_17sequential_102/simple_rnn_102/while/Identity_1:output:0"i
.sequential_102_simple_rnn_102_while_identity_27sequential_102/simple_rnn_102/while/Identity_2:output:0"i
.sequential_102_simple_rnn_102_while_identity_37sequential_102/simple_rnn_102/while/Identity_3:output:0"i
.sequential_102_simple_rnn_102_while_identity_47sequential_102/simple_rnn_102/while/Identity_4:output:0"�
Qsequential_102_simple_rnn_102_while_sequential_102_simple_rnn_102_strided_slice_1Ssequential_102_simple_rnn_102_while_sequential_102_simple_rnn_102_strided_slice_1_0"�
Ysequential_102_simple_rnn_102_while_simple_rnn_cell_10403_biasadd_readvariableop_resource[sequential_102_simple_rnn_102_while_simple_rnn_cell_10403_biasadd_readvariableop_resource_0"�
Zsequential_102_simple_rnn_102_while_simple_rnn_cell_10403_matmul_1_readvariableop_resource\sequential_102_simple_rnn_102_while_simple_rnn_cell_10403_matmul_1_readvariableop_resource_0"�
Xsequential_102_simple_rnn_102_while_simple_rnn_cell_10403_matmul_readvariableop_resourceZsequential_102_simple_rnn_102_while_simple_rnn_cell_10403_matmul_readvariableop_resource_0"�
�sequential_102_simple_rnn_102_while_tensorarrayv2read_tensorlistgetitem_sequential_102_simple_rnn_102_tensorarrayunstack_tensorlistfromtensor�sequential_102_simple_rnn_102_while_tensorarrayv2read_tensorlistgetitem_sequential_102_simple_rnn_102_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������: : : : : 2�
Psequential_102/simple_rnn_102/while/simple_rnn_cell_10403/BiasAdd/ReadVariableOpPsequential_102/simple_rnn_102/while/simple_rnn_cell_10403/BiasAdd/ReadVariableOp2�
Osequential_102/simple_rnn_102/while/simple_rnn_cell_10403/MatMul/ReadVariableOpOsequential_102/simple_rnn_102/while/simple_rnn_cell_10403/MatMul/ReadVariableOp2�
Qsequential_102/simple_rnn_102/while/simple_rnn_cell_10403/MatMul_1/ReadVariableOpQsequential_102/simple_rnn_102/while/simple_rnn_cell_10403/MatMul_1/ReadVariableOp: 
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
while_cond_21178902
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_21178902___redundant_placeholder06
2while_while_cond_21178902___redundant_placeholder16
2while_while_cond_21178902___redundant_placeholder26
2while_while_cond_21178902___redundant_placeholder3
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
L__inference_sequential_102_layer_call_and_return_conditional_losses_21178550
simple_rnn_102_input)
simple_rnn_102_21178542:%
simple_rnn_102_21178544:)
simple_rnn_102_21178546:
identity��&simple_rnn_102/StatefulPartitionedCall�
&simple_rnn_102/StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_102_inputsimple_rnn_102_21178542simple_rnn_102_21178544simple_rnn_102_21178546*
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
L__inference_simple_rnn_102_layer_call_and_return_conditional_losses_21178345~
IdentityIdentity/simple_rnn_102/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������o
NoOpNoOp'^simple_rnn_102/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 2P
&simple_rnn_102/StatefulPartitionedCall&simple_rnn_102/StatefulPartitionedCall:a ]
+
_output_shapes
:���������(
.
_user_specified_namesimple_rnn_102_input
�.
�
while_body_21179123
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0N
<while_simple_rnn_cell_10403_matmul_readvariableop_resource_0:K
=while_simple_rnn_cell_10403_biasadd_readvariableop_resource_0:P
>while_simple_rnn_cell_10403_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorL
:while_simple_rnn_cell_10403_matmul_readvariableop_resource:I
;while_simple_rnn_cell_10403_biasadd_readvariableop_resource:N
<while_simple_rnn_cell_10403_matmul_1_readvariableop_resource:��2while/simple_rnn_cell_10403/BiasAdd/ReadVariableOp�1while/simple_rnn_cell_10403/MatMul/ReadVariableOp�3while/simple_rnn_cell_10403/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
1while/simple_rnn_cell_10403/MatMul/ReadVariableOpReadVariableOp<while_simple_rnn_cell_10403_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0�
"while/simple_rnn_cell_10403/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:09while/simple_rnn_cell_10403/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
2while/simple_rnn_cell_10403/BiasAdd/ReadVariableOpReadVariableOp=while_simple_rnn_cell_10403_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0�
#while/simple_rnn_cell_10403/BiasAddBiasAdd,while/simple_rnn_cell_10403/MatMul:product:0:while/simple_rnn_cell_10403/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
3while/simple_rnn_cell_10403/MatMul_1/ReadVariableOpReadVariableOp>while_simple_rnn_cell_10403_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0�
$while/simple_rnn_cell_10403/MatMul_1MatMulwhile_placeholder_2;while/simple_rnn_cell_10403/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
while/simple_rnn_cell_10403/addAddV2,while/simple_rnn_cell_10403/BiasAdd:output:0.while/simple_rnn_cell_10403/MatMul_1:product:0*
T0*'
_output_shapes
:���������
 while/simple_rnn_cell_10403/TanhTanh#while/simple_rnn_cell_10403/add:z:0*
T0*'
_output_shapes
:���������r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0$while/simple_rnn_cell_10403/Tanh:y:0*
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
while/Identity_4Identity$while/simple_rnn_cell_10403/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:����������

while/NoOpNoOp3^while/simple_rnn_cell_10403/BiasAdd/ReadVariableOp2^while/simple_rnn_cell_10403/MatMul/ReadVariableOp4^while/simple_rnn_cell_10403/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"|
;while_simple_rnn_cell_10403_biasadd_readvariableop_resource=while_simple_rnn_cell_10403_biasadd_readvariableop_resource_0"~
<while_simple_rnn_cell_10403_matmul_1_readvariableop_resource>while_simple_rnn_cell_10403_matmul_1_readvariableop_resource_0"z
:while_simple_rnn_cell_10403_matmul_readvariableop_resource<while_simple_rnn_cell_10403_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������: : : : : 2h
2while/simple_rnn_cell_10403/BiasAdd/ReadVariableOp2while/simple_rnn_cell_10403/BiasAdd/ReadVariableOp2f
1while/simple_rnn_cell_10403/MatMul/ReadVariableOp1while/simple_rnn_cell_10403/MatMul/ReadVariableOp2j
3while/simple_rnn_cell_10403/MatMul_1/ReadVariableOp3while/simple_rnn_cell_10403/MatMul_1/ReadVariableOp: 
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
�
�
!__inference__traced_save_21179394
file_prefixJ
Fsavev2_simple_rnn_102_simple_rnn_cell_10403_kernel_read_readvariableopT
Psavev2_simple_rnn_102_simple_rnn_cell_10403_recurrent_kernel_read_readvariableopH
Dsavev2_simple_rnn_102_simple_rnn_cell_10403_bias_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Fsavev2_simple_rnn_102_simple_rnn_cell_10403_kernel_read_readvariableopPsavev2_simple_rnn_102_simple_rnn_cell_10403_recurrent_kernel_read_readvariableopDsavev2_simple_rnn_102_simple_rnn_cell_10403_bias_read_readvariableopsavev2_const"/device:CPU:0*
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
while_cond_21179012
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_21179012___redundant_placeholder06
2while_while_cond_21179012___redundant_placeholder16
2while_while_cond_21179012___redundant_placeholder26
2while_while_cond_21179012___redundant_placeholder3
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
"simple_rnn_102_while_body_21178749:
6simple_rnn_102_while_simple_rnn_102_while_loop_counter@
<simple_rnn_102_while_simple_rnn_102_while_maximum_iterations$
 simple_rnn_102_while_placeholder&
"simple_rnn_102_while_placeholder_1&
"simple_rnn_102_while_placeholder_29
5simple_rnn_102_while_simple_rnn_102_strided_slice_1_0u
qsimple_rnn_102_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_102_tensorarrayunstack_tensorlistfromtensor_0]
Ksimple_rnn_102_while_simple_rnn_cell_10403_matmul_readvariableop_resource_0:Z
Lsimple_rnn_102_while_simple_rnn_cell_10403_biasadd_readvariableop_resource_0:_
Msimple_rnn_102_while_simple_rnn_cell_10403_matmul_1_readvariableop_resource_0:!
simple_rnn_102_while_identity#
simple_rnn_102_while_identity_1#
simple_rnn_102_while_identity_2#
simple_rnn_102_while_identity_3#
simple_rnn_102_while_identity_47
3simple_rnn_102_while_simple_rnn_102_strided_slice_1s
osimple_rnn_102_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_102_tensorarrayunstack_tensorlistfromtensor[
Isimple_rnn_102_while_simple_rnn_cell_10403_matmul_readvariableop_resource:X
Jsimple_rnn_102_while_simple_rnn_cell_10403_biasadd_readvariableop_resource:]
Ksimple_rnn_102_while_simple_rnn_cell_10403_matmul_1_readvariableop_resource:��Asimple_rnn_102/while/simple_rnn_cell_10403/BiasAdd/ReadVariableOp�@simple_rnn_102/while/simple_rnn_cell_10403/MatMul/ReadVariableOp�Bsimple_rnn_102/while/simple_rnn_cell_10403/MatMul_1/ReadVariableOp�
Fsimple_rnn_102/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
8simple_rnn_102/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemqsimple_rnn_102_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_102_tensorarrayunstack_tensorlistfromtensor_0 simple_rnn_102_while_placeholderOsimple_rnn_102/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
@simple_rnn_102/while/simple_rnn_cell_10403/MatMul/ReadVariableOpReadVariableOpKsimple_rnn_102_while_simple_rnn_cell_10403_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0�
1simple_rnn_102/while/simple_rnn_cell_10403/MatMulMatMul?simple_rnn_102/while/TensorArrayV2Read/TensorListGetItem:item:0Hsimple_rnn_102/while/simple_rnn_cell_10403/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Asimple_rnn_102/while/simple_rnn_cell_10403/BiasAdd/ReadVariableOpReadVariableOpLsimple_rnn_102_while_simple_rnn_cell_10403_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0�
2simple_rnn_102/while/simple_rnn_cell_10403/BiasAddBiasAdd;simple_rnn_102/while/simple_rnn_cell_10403/MatMul:product:0Isimple_rnn_102/while/simple_rnn_cell_10403/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Bsimple_rnn_102/while/simple_rnn_cell_10403/MatMul_1/ReadVariableOpReadVariableOpMsimple_rnn_102_while_simple_rnn_cell_10403_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0�
3simple_rnn_102/while/simple_rnn_cell_10403/MatMul_1MatMul"simple_rnn_102_while_placeholder_2Jsimple_rnn_102/while/simple_rnn_cell_10403/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
.simple_rnn_102/while/simple_rnn_cell_10403/addAddV2;simple_rnn_102/while/simple_rnn_cell_10403/BiasAdd:output:0=simple_rnn_102/while/simple_rnn_cell_10403/MatMul_1:product:0*
T0*'
_output_shapes
:����������
/simple_rnn_102/while/simple_rnn_cell_10403/TanhTanh2simple_rnn_102/while/simple_rnn_cell_10403/add:z:0*
T0*'
_output_shapes
:����������
?simple_rnn_102/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
9simple_rnn_102/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem"simple_rnn_102_while_placeholder_1Hsimple_rnn_102/while/TensorArrayV2Write/TensorListSetItem/index:output:03simple_rnn_102/while/simple_rnn_cell_10403/Tanh:y:0*
_output_shapes
: *
element_dtype0:���\
simple_rnn_102/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_102/while/addAddV2 simple_rnn_102_while_placeholder#simple_rnn_102/while/add/y:output:0*
T0*
_output_shapes
: ^
simple_rnn_102/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_102/while/add_1AddV26simple_rnn_102_while_simple_rnn_102_while_loop_counter%simple_rnn_102/while/add_1/y:output:0*
T0*
_output_shapes
: �
simple_rnn_102/while/IdentityIdentitysimple_rnn_102/while/add_1:z:0^simple_rnn_102/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_102/while/Identity_1Identity<simple_rnn_102_while_simple_rnn_102_while_maximum_iterations^simple_rnn_102/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_102/while/Identity_2Identitysimple_rnn_102/while/add:z:0^simple_rnn_102/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_102/while/Identity_3IdentityIsimple_rnn_102/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_102/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_102/while/Identity_4Identity3simple_rnn_102/while/simple_rnn_cell_10403/Tanh:y:0^simple_rnn_102/while/NoOp*
T0*'
_output_shapes
:����������
simple_rnn_102/while/NoOpNoOpB^simple_rnn_102/while/simple_rnn_cell_10403/BiasAdd/ReadVariableOpA^simple_rnn_102/while/simple_rnn_cell_10403/MatMul/ReadVariableOpC^simple_rnn_102/while/simple_rnn_cell_10403/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "G
simple_rnn_102_while_identity&simple_rnn_102/while/Identity:output:0"K
simple_rnn_102_while_identity_1(simple_rnn_102/while/Identity_1:output:0"K
simple_rnn_102_while_identity_2(simple_rnn_102/while/Identity_2:output:0"K
simple_rnn_102_while_identity_3(simple_rnn_102/while/Identity_3:output:0"K
simple_rnn_102_while_identity_4(simple_rnn_102/while/Identity_4:output:0"l
3simple_rnn_102_while_simple_rnn_102_strided_slice_15simple_rnn_102_while_simple_rnn_102_strided_slice_1_0"�
Jsimple_rnn_102_while_simple_rnn_cell_10403_biasadd_readvariableop_resourceLsimple_rnn_102_while_simple_rnn_cell_10403_biasadd_readvariableop_resource_0"�
Ksimple_rnn_102_while_simple_rnn_cell_10403_matmul_1_readvariableop_resourceMsimple_rnn_102_while_simple_rnn_cell_10403_matmul_1_readvariableop_resource_0"�
Isimple_rnn_102_while_simple_rnn_cell_10403_matmul_readvariableop_resourceKsimple_rnn_102_while_simple_rnn_cell_10403_matmul_readvariableop_resource_0"�
osimple_rnn_102_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_102_tensorarrayunstack_tensorlistfromtensorqsimple_rnn_102_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_102_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������: : : : : 2�
Asimple_rnn_102/while/simple_rnn_cell_10403/BiasAdd/ReadVariableOpAsimple_rnn_102/while/simple_rnn_cell_10403/BiasAdd/ReadVariableOp2�
@simple_rnn_102/while/simple_rnn_cell_10403/MatMul/ReadVariableOp@simple_rnn_102/while/simple_rnn_cell_10403/MatMul/ReadVariableOp2�
Bsimple_rnn_102/while/simple_rnn_cell_10403/MatMul_1/ReadVariableOpBsimple_rnn_102/while/simple_rnn_cell_10403/MatMul_1/ReadVariableOp: 
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
�=
�
"simple_rnn_102_while_body_21178639:
6simple_rnn_102_while_simple_rnn_102_while_loop_counter@
<simple_rnn_102_while_simple_rnn_102_while_maximum_iterations$
 simple_rnn_102_while_placeholder&
"simple_rnn_102_while_placeholder_1&
"simple_rnn_102_while_placeholder_29
5simple_rnn_102_while_simple_rnn_102_strided_slice_1_0u
qsimple_rnn_102_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_102_tensorarrayunstack_tensorlistfromtensor_0]
Ksimple_rnn_102_while_simple_rnn_cell_10403_matmul_readvariableop_resource_0:Z
Lsimple_rnn_102_while_simple_rnn_cell_10403_biasadd_readvariableop_resource_0:_
Msimple_rnn_102_while_simple_rnn_cell_10403_matmul_1_readvariableop_resource_0:!
simple_rnn_102_while_identity#
simple_rnn_102_while_identity_1#
simple_rnn_102_while_identity_2#
simple_rnn_102_while_identity_3#
simple_rnn_102_while_identity_47
3simple_rnn_102_while_simple_rnn_102_strided_slice_1s
osimple_rnn_102_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_102_tensorarrayunstack_tensorlistfromtensor[
Isimple_rnn_102_while_simple_rnn_cell_10403_matmul_readvariableop_resource:X
Jsimple_rnn_102_while_simple_rnn_cell_10403_biasadd_readvariableop_resource:]
Ksimple_rnn_102_while_simple_rnn_cell_10403_matmul_1_readvariableop_resource:��Asimple_rnn_102/while/simple_rnn_cell_10403/BiasAdd/ReadVariableOp�@simple_rnn_102/while/simple_rnn_cell_10403/MatMul/ReadVariableOp�Bsimple_rnn_102/while/simple_rnn_cell_10403/MatMul_1/ReadVariableOp�
Fsimple_rnn_102/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
8simple_rnn_102/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemqsimple_rnn_102_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_102_tensorarrayunstack_tensorlistfromtensor_0 simple_rnn_102_while_placeholderOsimple_rnn_102/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
@simple_rnn_102/while/simple_rnn_cell_10403/MatMul/ReadVariableOpReadVariableOpKsimple_rnn_102_while_simple_rnn_cell_10403_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0�
1simple_rnn_102/while/simple_rnn_cell_10403/MatMulMatMul?simple_rnn_102/while/TensorArrayV2Read/TensorListGetItem:item:0Hsimple_rnn_102/while/simple_rnn_cell_10403/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Asimple_rnn_102/while/simple_rnn_cell_10403/BiasAdd/ReadVariableOpReadVariableOpLsimple_rnn_102_while_simple_rnn_cell_10403_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0�
2simple_rnn_102/while/simple_rnn_cell_10403/BiasAddBiasAdd;simple_rnn_102/while/simple_rnn_cell_10403/MatMul:product:0Isimple_rnn_102/while/simple_rnn_cell_10403/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Bsimple_rnn_102/while/simple_rnn_cell_10403/MatMul_1/ReadVariableOpReadVariableOpMsimple_rnn_102_while_simple_rnn_cell_10403_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0�
3simple_rnn_102/while/simple_rnn_cell_10403/MatMul_1MatMul"simple_rnn_102_while_placeholder_2Jsimple_rnn_102/while/simple_rnn_cell_10403/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
.simple_rnn_102/while/simple_rnn_cell_10403/addAddV2;simple_rnn_102/while/simple_rnn_cell_10403/BiasAdd:output:0=simple_rnn_102/while/simple_rnn_cell_10403/MatMul_1:product:0*
T0*'
_output_shapes
:����������
/simple_rnn_102/while/simple_rnn_cell_10403/TanhTanh2simple_rnn_102/while/simple_rnn_cell_10403/add:z:0*
T0*'
_output_shapes
:����������
?simple_rnn_102/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
9simple_rnn_102/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem"simple_rnn_102_while_placeholder_1Hsimple_rnn_102/while/TensorArrayV2Write/TensorListSetItem/index:output:03simple_rnn_102/while/simple_rnn_cell_10403/Tanh:y:0*
_output_shapes
: *
element_dtype0:���\
simple_rnn_102/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_102/while/addAddV2 simple_rnn_102_while_placeholder#simple_rnn_102/while/add/y:output:0*
T0*
_output_shapes
: ^
simple_rnn_102/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_102/while/add_1AddV26simple_rnn_102_while_simple_rnn_102_while_loop_counter%simple_rnn_102/while/add_1/y:output:0*
T0*
_output_shapes
: �
simple_rnn_102/while/IdentityIdentitysimple_rnn_102/while/add_1:z:0^simple_rnn_102/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_102/while/Identity_1Identity<simple_rnn_102_while_simple_rnn_102_while_maximum_iterations^simple_rnn_102/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_102/while/Identity_2Identitysimple_rnn_102/while/add:z:0^simple_rnn_102/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_102/while/Identity_3IdentityIsimple_rnn_102/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_102/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_102/while/Identity_4Identity3simple_rnn_102/while/simple_rnn_cell_10403/Tanh:y:0^simple_rnn_102/while/NoOp*
T0*'
_output_shapes
:����������
simple_rnn_102/while/NoOpNoOpB^simple_rnn_102/while/simple_rnn_cell_10403/BiasAdd/ReadVariableOpA^simple_rnn_102/while/simple_rnn_cell_10403/MatMul/ReadVariableOpC^simple_rnn_102/while/simple_rnn_cell_10403/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "G
simple_rnn_102_while_identity&simple_rnn_102/while/Identity:output:0"K
simple_rnn_102_while_identity_1(simple_rnn_102/while/Identity_1:output:0"K
simple_rnn_102_while_identity_2(simple_rnn_102/while/Identity_2:output:0"K
simple_rnn_102_while_identity_3(simple_rnn_102/while/Identity_3:output:0"K
simple_rnn_102_while_identity_4(simple_rnn_102/while/Identity_4:output:0"l
3simple_rnn_102_while_simple_rnn_102_strided_slice_15simple_rnn_102_while_simple_rnn_102_strided_slice_1_0"�
Jsimple_rnn_102_while_simple_rnn_cell_10403_biasadd_readvariableop_resourceLsimple_rnn_102_while_simple_rnn_cell_10403_biasadd_readvariableop_resource_0"�
Ksimple_rnn_102_while_simple_rnn_cell_10403_matmul_1_readvariableop_resourceMsimple_rnn_102_while_simple_rnn_cell_10403_matmul_1_readvariableop_resource_0"�
Isimple_rnn_102_while_simple_rnn_cell_10403_matmul_readvariableop_resourceKsimple_rnn_102_while_simple_rnn_cell_10403_matmul_readvariableop_resource_0"�
osimple_rnn_102_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_102_tensorarrayunstack_tensorlistfromtensorqsimple_rnn_102_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_102_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������: : : : : 2�
Asimple_rnn_102/while/simple_rnn_cell_10403/BiasAdd/ReadVariableOpAsimple_rnn_102/while/simple_rnn_cell_10403/BiasAdd/ReadVariableOp2�
@simple_rnn_102/while/simple_rnn_cell_10403/MatMul/ReadVariableOp@simple_rnn_102/while/simple_rnn_cell_10403/MatMul/ReadVariableOp2�
Bsimple_rnn_102/while/simple_rnn_cell_10403/MatMul_1/ReadVariableOpBsimple_rnn_102/while/simple_rnn_cell_10403/MatMul_1/ReadVariableOp: 
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
"simple_rnn_102_while_cond_21178748:
6simple_rnn_102_while_simple_rnn_102_while_loop_counter@
<simple_rnn_102_while_simple_rnn_102_while_maximum_iterations$
 simple_rnn_102_while_placeholder&
"simple_rnn_102_while_placeholder_1&
"simple_rnn_102_while_placeholder_2<
8simple_rnn_102_while_less_simple_rnn_102_strided_slice_1T
Psimple_rnn_102_while_simple_rnn_102_while_cond_21178748___redundant_placeholder0T
Psimple_rnn_102_while_simple_rnn_102_while_cond_21178748___redundant_placeholder1T
Psimple_rnn_102_while_simple_rnn_102_while_cond_21178748___redundant_placeholder2T
Psimple_rnn_102_while_simple_rnn_102_while_cond_21178748___redundant_placeholder3!
simple_rnn_102_while_identity
�
simple_rnn_102/while/LessLess simple_rnn_102_while_placeholder8simple_rnn_102_while_less_simple_rnn_102_strided_slice_1*
T0*
_output_shapes
: i
simple_rnn_102/while/IdentityIdentitysimple_rnn_102/while/Less:z:0*
T0
*
_output_shapes
: "G
simple_rnn_102_while_identity&simple_rnn_102/while/Identity:output:0*(
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
L__inference_simple_rnn_102_layer_call_and_return_conditional_losses_21178486

inputsF
4simple_rnn_cell_10403_matmul_readvariableop_resource:C
5simple_rnn_cell_10403_biasadd_readvariableop_resource:H
6simple_rnn_cell_10403_matmul_1_readvariableop_resource:
identity��,simple_rnn_cell_10403/BiasAdd/ReadVariableOp�+simple_rnn_cell_10403/MatMul/ReadVariableOp�-simple_rnn_cell_10403/MatMul_1/ReadVariableOp�while;
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
+simple_rnn_cell_10403/MatMul/ReadVariableOpReadVariableOp4simple_rnn_cell_10403_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
simple_rnn_cell_10403/MatMulMatMulstrided_slice_2:output:03simple_rnn_cell_10403/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
,simple_rnn_cell_10403/BiasAdd/ReadVariableOpReadVariableOp5simple_rnn_cell_10403_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
simple_rnn_cell_10403/BiasAddBiasAdd&simple_rnn_cell_10403/MatMul:product:04simple_rnn_cell_10403/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-simple_rnn_cell_10403/MatMul_1/ReadVariableOpReadVariableOp6simple_rnn_cell_10403_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0�
simple_rnn_cell_10403/MatMul_1MatMulzeros:output:05simple_rnn_cell_10403/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
simple_rnn_cell_10403/addAddV2&simple_rnn_cell_10403/BiasAdd:output:0(simple_rnn_cell_10403/MatMul_1:product:0*
T0*'
_output_shapes
:���������s
simple_rnn_cell_10403/TanhTanhsimple_rnn_cell_10403/add:z:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:04simple_rnn_cell_10403_matmul_readvariableop_resource5simple_rnn_cell_10403_biasadd_readvariableop_resource6simple_rnn_cell_10403_matmul_1_readvariableop_resource*
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
while_body_21178419*
condR
while_cond_21178418*8
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
NoOpNoOp-^simple_rnn_cell_10403/BiasAdd/ReadVariableOp,^simple_rnn_cell_10403/MatMul/ReadVariableOp.^simple_rnn_cell_10403/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 2\
,simple_rnn_cell_10403/BiasAdd/ReadVariableOp,simple_rnn_cell_10403/BiasAdd/ReadVariableOp2Z
+simple_rnn_cell_10403/MatMul/ReadVariableOp+simple_rnn_cell_10403/MatMul/ReadVariableOp2^
-simple_rnn_cell_10403/MatMul_1/ReadVariableOp-simple_rnn_cell_10403/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�
�
1__inference_simple_rnn_102_layer_call_fn_21178827
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
L__inference_simple_rnn_102_layer_call_and_return_conditional_losses_21178059o
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
S__inference_simple_rnn_cell_10403_layer_call_and_return_conditional_losses_21179345

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
�?
�
L__inference_simple_rnn_102_layer_call_and_return_conditional_losses_21178970
inputs_0F
4simple_rnn_cell_10403_matmul_readvariableop_resource:C
5simple_rnn_cell_10403_biasadd_readvariableop_resource:H
6simple_rnn_cell_10403_matmul_1_readvariableop_resource:
identity��,simple_rnn_cell_10403/BiasAdd/ReadVariableOp�+simple_rnn_cell_10403/MatMul/ReadVariableOp�-simple_rnn_cell_10403/MatMul_1/ReadVariableOp�while=
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
+simple_rnn_cell_10403/MatMul/ReadVariableOpReadVariableOp4simple_rnn_cell_10403_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
simple_rnn_cell_10403/MatMulMatMulstrided_slice_2:output:03simple_rnn_cell_10403/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
,simple_rnn_cell_10403/BiasAdd/ReadVariableOpReadVariableOp5simple_rnn_cell_10403_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
simple_rnn_cell_10403/BiasAddBiasAdd&simple_rnn_cell_10403/MatMul:product:04simple_rnn_cell_10403/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-simple_rnn_cell_10403/MatMul_1/ReadVariableOpReadVariableOp6simple_rnn_cell_10403_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0�
simple_rnn_cell_10403/MatMul_1MatMulzeros:output:05simple_rnn_cell_10403/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
simple_rnn_cell_10403/addAddV2&simple_rnn_cell_10403/BiasAdd:output:0(simple_rnn_cell_10403/MatMul_1:product:0*
T0*'
_output_shapes
:���������s
simple_rnn_cell_10403/TanhTanhsimple_rnn_cell_10403/add:z:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:04simple_rnn_cell_10403_matmul_readvariableop_resource5simple_rnn_cell_10403_biasadd_readvariableop_resource6simple_rnn_cell_10403_matmul_1_readvariableop_resource*
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
while_body_21178903*
condR
while_cond_21178902*8
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
NoOpNoOp-^simple_rnn_cell_10403/BiasAdd/ReadVariableOp,^simple_rnn_cell_10403/MatMul/ReadVariableOp.^simple_rnn_cell_10403/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2\
,simple_rnn_cell_10403/BiasAdd/ReadVariableOp,simple_rnn_cell_10403/BiasAdd/ReadVariableOp2Z
+simple_rnn_cell_10403/MatMul/ReadVariableOp+simple_rnn_cell_10403/MatMul/ReadVariableOp2^
-simple_rnn_cell_10403/MatMul_1/ReadVariableOp-simple_rnn_cell_10403/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�?
�
L__inference_simple_rnn_102_layer_call_and_return_conditional_losses_21178345

inputsF
4simple_rnn_cell_10403_matmul_readvariableop_resource:C
5simple_rnn_cell_10403_biasadd_readvariableop_resource:H
6simple_rnn_cell_10403_matmul_1_readvariableop_resource:
identity��,simple_rnn_cell_10403/BiasAdd/ReadVariableOp�+simple_rnn_cell_10403/MatMul/ReadVariableOp�-simple_rnn_cell_10403/MatMul_1/ReadVariableOp�while;
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
+simple_rnn_cell_10403/MatMul/ReadVariableOpReadVariableOp4simple_rnn_cell_10403_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
simple_rnn_cell_10403/MatMulMatMulstrided_slice_2:output:03simple_rnn_cell_10403/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
,simple_rnn_cell_10403/BiasAdd/ReadVariableOpReadVariableOp5simple_rnn_cell_10403_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
simple_rnn_cell_10403/BiasAddBiasAdd&simple_rnn_cell_10403/MatMul:product:04simple_rnn_cell_10403/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-simple_rnn_cell_10403/MatMul_1/ReadVariableOpReadVariableOp6simple_rnn_cell_10403_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0�
simple_rnn_cell_10403/MatMul_1MatMulzeros:output:05simple_rnn_cell_10403/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
simple_rnn_cell_10403/addAddV2&simple_rnn_cell_10403/BiasAdd:output:0(simple_rnn_cell_10403/MatMul_1:product:0*
T0*'
_output_shapes
:���������s
simple_rnn_cell_10403/TanhTanhsimple_rnn_cell_10403/add:z:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:04simple_rnn_cell_10403_matmul_readvariableop_resource5simple_rnn_cell_10403_biasadd_readvariableop_resource6simple_rnn_cell_10403_matmul_1_readvariableop_resource*
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
while_body_21178278*
condR
while_cond_21178277*8
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
NoOpNoOp-^simple_rnn_cell_10403/BiasAdd/ReadVariableOp,^simple_rnn_cell_10403/MatMul/ReadVariableOp.^simple_rnn_cell_10403/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 2\
,simple_rnn_cell_10403/BiasAdd/ReadVariableOp,simple_rnn_cell_10403/BiasAdd/ReadVariableOp2Z
+simple_rnn_cell_10403/MatMul/ReadVariableOp+simple_rnn_cell_10403/MatMul/ReadVariableOp2^
-simple_rnn_cell_10403/MatMul_1/ReadVariableOp-simple_rnn_cell_10403/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�\
�
#__inference__wrapped_model_21177933
simple_rnn_102_inputd
Rsequential_102_simple_rnn_102_simple_rnn_cell_10403_matmul_readvariableop_resource:a
Ssequential_102_simple_rnn_102_simple_rnn_cell_10403_biasadd_readvariableop_resource:f
Tsequential_102_simple_rnn_102_simple_rnn_cell_10403_matmul_1_readvariableop_resource:
identity��Jsequential_102/simple_rnn_102/simple_rnn_cell_10403/BiasAdd/ReadVariableOp�Isequential_102/simple_rnn_102/simple_rnn_cell_10403/MatMul/ReadVariableOp�Ksequential_102/simple_rnn_102/simple_rnn_cell_10403/MatMul_1/ReadVariableOp�#sequential_102/simple_rnn_102/whileg
#sequential_102/simple_rnn_102/ShapeShapesimple_rnn_102_input*
T0*
_output_shapes
:{
1sequential_102/simple_rnn_102/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3sequential_102/simple_rnn_102/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3sequential_102/simple_rnn_102/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+sequential_102/simple_rnn_102/strided_sliceStridedSlice,sequential_102/simple_rnn_102/Shape:output:0:sequential_102/simple_rnn_102/strided_slice/stack:output:0<sequential_102/simple_rnn_102/strided_slice/stack_1:output:0<sequential_102/simple_rnn_102/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
,sequential_102/simple_rnn_102/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
*sequential_102/simple_rnn_102/zeros/packedPack4sequential_102/simple_rnn_102/strided_slice:output:05sequential_102/simple_rnn_102/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:n
)sequential_102/simple_rnn_102/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
#sequential_102/simple_rnn_102/zerosFill3sequential_102/simple_rnn_102/zeros/packed:output:02sequential_102/simple_rnn_102/zeros/Const:output:0*
T0*'
_output_shapes
:����������
,sequential_102/simple_rnn_102/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
'sequential_102/simple_rnn_102/transpose	Transposesimple_rnn_102_input5sequential_102/simple_rnn_102/transpose/perm:output:0*
T0*+
_output_shapes
:(����������
%sequential_102/simple_rnn_102/Shape_1Shape+sequential_102/simple_rnn_102/transpose:y:0*
T0*
_output_shapes
:}
3sequential_102/simple_rnn_102/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5sequential_102/simple_rnn_102/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5sequential_102/simple_rnn_102/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
-sequential_102/simple_rnn_102/strided_slice_1StridedSlice.sequential_102/simple_rnn_102/Shape_1:output:0<sequential_102/simple_rnn_102/strided_slice_1/stack:output:0>sequential_102/simple_rnn_102/strided_slice_1/stack_1:output:0>sequential_102/simple_rnn_102/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
9sequential_102/simple_rnn_102/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
+sequential_102/simple_rnn_102/TensorArrayV2TensorListReserveBsequential_102/simple_rnn_102/TensorArrayV2/element_shape:output:06sequential_102/simple_rnn_102/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Ssequential_102/simple_rnn_102/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Esequential_102/simple_rnn_102/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor+sequential_102/simple_rnn_102/transpose:y:0\sequential_102/simple_rnn_102/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���}
3sequential_102/simple_rnn_102/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5sequential_102/simple_rnn_102/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5sequential_102/simple_rnn_102/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
-sequential_102/simple_rnn_102/strided_slice_2StridedSlice+sequential_102/simple_rnn_102/transpose:y:0<sequential_102/simple_rnn_102/strided_slice_2/stack:output:0>sequential_102/simple_rnn_102/strided_slice_2/stack_1:output:0>sequential_102/simple_rnn_102/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
Isequential_102/simple_rnn_102/simple_rnn_cell_10403/MatMul/ReadVariableOpReadVariableOpRsequential_102_simple_rnn_102_simple_rnn_cell_10403_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
:sequential_102/simple_rnn_102/simple_rnn_cell_10403/MatMulMatMul6sequential_102/simple_rnn_102/strided_slice_2:output:0Qsequential_102/simple_rnn_102/simple_rnn_cell_10403/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Jsequential_102/simple_rnn_102/simple_rnn_cell_10403/BiasAdd/ReadVariableOpReadVariableOpSsequential_102_simple_rnn_102_simple_rnn_cell_10403_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
;sequential_102/simple_rnn_102/simple_rnn_cell_10403/BiasAddBiasAddDsequential_102/simple_rnn_102/simple_rnn_cell_10403/MatMul:product:0Rsequential_102/simple_rnn_102/simple_rnn_cell_10403/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Ksequential_102/simple_rnn_102/simple_rnn_cell_10403/MatMul_1/ReadVariableOpReadVariableOpTsequential_102_simple_rnn_102_simple_rnn_cell_10403_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0�
<sequential_102/simple_rnn_102/simple_rnn_cell_10403/MatMul_1MatMul,sequential_102/simple_rnn_102/zeros:output:0Ssequential_102/simple_rnn_102/simple_rnn_cell_10403/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
7sequential_102/simple_rnn_102/simple_rnn_cell_10403/addAddV2Dsequential_102/simple_rnn_102/simple_rnn_cell_10403/BiasAdd:output:0Fsequential_102/simple_rnn_102/simple_rnn_cell_10403/MatMul_1:product:0*
T0*'
_output_shapes
:����������
8sequential_102/simple_rnn_102/simple_rnn_cell_10403/TanhTanh;sequential_102/simple_rnn_102/simple_rnn_cell_10403/add:z:0*
T0*'
_output_shapes
:����������
;sequential_102/simple_rnn_102/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   |
:sequential_102/simple_rnn_102/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
-sequential_102/simple_rnn_102/TensorArrayV2_1TensorListReserveDsequential_102/simple_rnn_102/TensorArrayV2_1/element_shape:output:0Csequential_102/simple_rnn_102/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���d
"sequential_102/simple_rnn_102/timeConst*
_output_shapes
: *
dtype0*
value	B : �
6sequential_102/simple_rnn_102/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������r
0sequential_102/simple_rnn_102/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
#sequential_102/simple_rnn_102/whileWhile9sequential_102/simple_rnn_102/while/loop_counter:output:0?sequential_102/simple_rnn_102/while/maximum_iterations:output:0+sequential_102/simple_rnn_102/time:output:06sequential_102/simple_rnn_102/TensorArrayV2_1:handle:0,sequential_102/simple_rnn_102/zeros:output:06sequential_102/simple_rnn_102/strided_slice_1:output:0Usequential_102/simple_rnn_102/TensorArrayUnstack/TensorListFromTensor:output_handle:0Rsequential_102_simple_rnn_102_simple_rnn_cell_10403_matmul_readvariableop_resourceSsequential_102_simple_rnn_102_simple_rnn_cell_10403_biasadd_readvariableop_resourceTsequential_102_simple_rnn_102_simple_rnn_cell_10403_matmul_1_readvariableop_resource*
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
1sequential_102_simple_rnn_102_while_body_21177866*=
cond5R3
1sequential_102_simple_rnn_102_while_cond_21177865*8
output_shapes'
%: : : : :���������: : : : : *
parallel_iterations �
Nsequential_102/simple_rnn_102/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
@sequential_102/simple_rnn_102/TensorArrayV2Stack/TensorListStackTensorListStack,sequential_102/simple_rnn_102/while:output:3Wsequential_102/simple_rnn_102/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������*
element_dtype0*
num_elements�
3sequential_102/simple_rnn_102/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������
5sequential_102/simple_rnn_102/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
5sequential_102/simple_rnn_102/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
-sequential_102/simple_rnn_102/strided_slice_3StridedSliceIsequential_102/simple_rnn_102/TensorArrayV2Stack/TensorListStack:tensor:0<sequential_102/simple_rnn_102/strided_slice_3/stack:output:0>sequential_102/simple_rnn_102/strided_slice_3/stack_1:output:0>sequential_102/simple_rnn_102/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
.sequential_102/simple_rnn_102/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
)sequential_102/simple_rnn_102/transpose_1	TransposeIsequential_102/simple_rnn_102/TensorArrayV2Stack/TensorListStack:tensor:07sequential_102/simple_rnn_102/transpose_1/perm:output:0*
T0*+
_output_shapes
:����������
IdentityIdentity6sequential_102/simple_rnn_102/strided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOpK^sequential_102/simple_rnn_102/simple_rnn_cell_10403/BiasAdd/ReadVariableOpJ^sequential_102/simple_rnn_102/simple_rnn_cell_10403/MatMul/ReadVariableOpL^sequential_102/simple_rnn_102/simple_rnn_cell_10403/MatMul_1/ReadVariableOp$^sequential_102/simple_rnn_102/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 2�
Jsequential_102/simple_rnn_102/simple_rnn_cell_10403/BiasAdd/ReadVariableOpJsequential_102/simple_rnn_102/simple_rnn_cell_10403/BiasAdd/ReadVariableOp2�
Isequential_102/simple_rnn_102/simple_rnn_cell_10403/MatMul/ReadVariableOpIsequential_102/simple_rnn_102/simple_rnn_cell_10403/MatMul/ReadVariableOp2�
Ksequential_102/simple_rnn_102/simple_rnn_cell_10403/MatMul_1/ReadVariableOpKsequential_102/simple_rnn_102/simple_rnn_cell_10403/MatMul_1/ReadVariableOp2J
#sequential_102/simple_rnn_102/while#sequential_102/simple_rnn_102/while:a ]
+
_output_shapes
:���������(
.
_user_specified_namesimple_rnn_102_input
�
�
1sequential_102_simple_rnn_102_while_cond_21177865X
Tsequential_102_simple_rnn_102_while_sequential_102_simple_rnn_102_while_loop_counter^
Zsequential_102_simple_rnn_102_while_sequential_102_simple_rnn_102_while_maximum_iterations3
/sequential_102_simple_rnn_102_while_placeholder5
1sequential_102_simple_rnn_102_while_placeholder_15
1sequential_102_simple_rnn_102_while_placeholder_2Z
Vsequential_102_simple_rnn_102_while_less_sequential_102_simple_rnn_102_strided_slice_1r
nsequential_102_simple_rnn_102_while_sequential_102_simple_rnn_102_while_cond_21177865___redundant_placeholder0r
nsequential_102_simple_rnn_102_while_sequential_102_simple_rnn_102_while_cond_21177865___redundant_placeholder1r
nsequential_102_simple_rnn_102_while_sequential_102_simple_rnn_102_while_cond_21177865___redundant_placeholder2r
nsequential_102_simple_rnn_102_while_sequential_102_simple_rnn_102_while_cond_21177865___redundant_placeholder30
,sequential_102_simple_rnn_102_while_identity
�
(sequential_102/simple_rnn_102/while/LessLess/sequential_102_simple_rnn_102_while_placeholderVsequential_102_simple_rnn_102_while_less_sequential_102_simple_rnn_102_strided_slice_1*
T0*
_output_shapes
: �
,sequential_102/simple_rnn_102/while/IdentityIdentity,sequential_102/simple_rnn_102/while/Less:z:0*
T0
*
_output_shapes
: "e
,sequential_102_simple_rnn_102_while_identity5sequential_102/simple_rnn_102/while/Identity:output:0*(
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
L__inference_sequential_102_layer_call_and_return_conditional_losses_21178561
simple_rnn_102_input)
simple_rnn_102_21178553:%
simple_rnn_102_21178555:)
simple_rnn_102_21178557:
identity��&simple_rnn_102/StatefulPartitionedCall�
&simple_rnn_102/StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_102_inputsimple_rnn_102_21178553simple_rnn_102_21178555simple_rnn_102_21178557*
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
L__inference_simple_rnn_102_layer_call_and_return_conditional_losses_21178486~
IdentityIdentity/simple_rnn_102/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������o
NoOpNoOp'^simple_rnn_102/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 2P
&simple_rnn_102/StatefulPartitionedCall&simple_rnn_102/StatefulPartitionedCall:a ]
+
_output_shapes
:���������(
.
_user_specified_namesimple_rnn_102_input
�5
�
L__inference_simple_rnn_102_layer_call_and_return_conditional_losses_21178059

inputs0
simple_rnn_cell_10403_21177982:,
simple_rnn_cell_10403_21177984:0
simple_rnn_cell_10403_21177986:
identity��-simple_rnn_cell_10403/StatefulPartitionedCall�while;
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
-simple_rnn_cell_10403/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_10403_21177982simple_rnn_cell_10403_21177984simple_rnn_cell_10403_21177986*
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
S__inference_simple_rnn_cell_10403_layer_call_and_return_conditional_losses_21177981n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_10403_21177982simple_rnn_cell_10403_21177984simple_rnn_cell_10403_21177986*
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
while_body_21177995*
condR
while_cond_21177994*8
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
NoOpNoOp.^simple_rnn_cell_10403/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2^
-simple_rnn_cell_10403/StatefulPartitionedCall-simple_rnn_cell_10403/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�
�
1__inference_simple_rnn_102_layer_call_fn_21178860

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
L__inference_simple_rnn_102_layer_call_and_return_conditional_losses_21178486o
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
�
�
$__inference__traced_restore_21179413
file_prefixN
<assignvariableop_simple_rnn_102_simple_rnn_cell_10403_kernel:Z
Hassignvariableop_1_simple_rnn_102_simple_rnn_cell_10403_recurrent_kernel:J
<assignvariableop_2_simple_rnn_102_simple_rnn_cell_10403_bias:

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
AssignVariableOpAssignVariableOp<assignvariableop_simple_rnn_102_simple_rnn_cell_10403_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpHassignvariableop_1_simple_rnn_102_simple_rnn_cell_10403_recurrent_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp<assignvariableop_2_simple_rnn_102_simple_rnn_cell_10403_biasIdentity_2:output:0"/device:CPU:0*
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
�
L__inference_sequential_102_layer_call_and_return_conditional_losses_21178519

inputs)
simple_rnn_102_21178511:%
simple_rnn_102_21178513:)
simple_rnn_102_21178515:
identity��&simple_rnn_102/StatefulPartitionedCall�
&simple_rnn_102/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_102_21178511simple_rnn_102_21178513simple_rnn_102_21178515*
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
L__inference_simple_rnn_102_layer_call_and_return_conditional_losses_21178486~
IdentityIdentity/simple_rnn_102/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������o
NoOpNoOp'^simple_rnn_102/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 2P
&simple_rnn_102/StatefulPartitionedCall&simple_rnn_102/StatefulPartitionedCall:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�
�
while_cond_21178277
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_21178277___redundant_placeholder06
2while_while_cond_21178277___redundant_placeholder16
2while_while_cond_21178277___redundant_placeholder26
2while_while_cond_21178277___redundant_placeholder3
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
�
�
S__inference_simple_rnn_cell_10403_layer_call_and_return_conditional_losses_21177981

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
�

�
"simple_rnn_102_while_cond_21178638:
6simple_rnn_102_while_simple_rnn_102_while_loop_counter@
<simple_rnn_102_while_simple_rnn_102_while_maximum_iterations$
 simple_rnn_102_while_placeholder&
"simple_rnn_102_while_placeholder_1&
"simple_rnn_102_while_placeholder_2<
8simple_rnn_102_while_less_simple_rnn_102_strided_slice_1T
Psimple_rnn_102_while_simple_rnn_102_while_cond_21178638___redundant_placeholder0T
Psimple_rnn_102_while_simple_rnn_102_while_cond_21178638___redundant_placeholder1T
Psimple_rnn_102_while_simple_rnn_102_while_cond_21178638___redundant_placeholder2T
Psimple_rnn_102_while_simple_rnn_102_while_cond_21178638___redundant_placeholder3!
simple_rnn_102_while_identity
�
simple_rnn_102/while/LessLess simple_rnn_102_while_placeholder8simple_rnn_102_while_less_simple_rnn_102_strided_slice_1*
T0*
_output_shapes
: i
simple_rnn_102/while/IdentityIdentitysimple_rnn_102/while/Less:z:0*
T0
*
_output_shapes
: "G
simple_rnn_102_while_identity&simple_rnn_102/while/Identity:output:0*(
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
1__inference_sequential_102_layer_call_fn_21178585

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
L__inference_sequential_102_layer_call_and_return_conditional_losses_21178354o
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
while_body_21178903
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0N
<while_simple_rnn_cell_10403_matmul_readvariableop_resource_0:K
=while_simple_rnn_cell_10403_biasadd_readvariableop_resource_0:P
>while_simple_rnn_cell_10403_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorL
:while_simple_rnn_cell_10403_matmul_readvariableop_resource:I
;while_simple_rnn_cell_10403_biasadd_readvariableop_resource:N
<while_simple_rnn_cell_10403_matmul_1_readvariableop_resource:��2while/simple_rnn_cell_10403/BiasAdd/ReadVariableOp�1while/simple_rnn_cell_10403/MatMul/ReadVariableOp�3while/simple_rnn_cell_10403/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
1while/simple_rnn_cell_10403/MatMul/ReadVariableOpReadVariableOp<while_simple_rnn_cell_10403_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0�
"while/simple_rnn_cell_10403/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:09while/simple_rnn_cell_10403/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
2while/simple_rnn_cell_10403/BiasAdd/ReadVariableOpReadVariableOp=while_simple_rnn_cell_10403_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0�
#while/simple_rnn_cell_10403/BiasAddBiasAdd,while/simple_rnn_cell_10403/MatMul:product:0:while/simple_rnn_cell_10403/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
3while/simple_rnn_cell_10403/MatMul_1/ReadVariableOpReadVariableOp>while_simple_rnn_cell_10403_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0�
$while/simple_rnn_cell_10403/MatMul_1MatMulwhile_placeholder_2;while/simple_rnn_cell_10403/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
while/simple_rnn_cell_10403/addAddV2,while/simple_rnn_cell_10403/BiasAdd:output:0.while/simple_rnn_cell_10403/MatMul_1:product:0*
T0*'
_output_shapes
:���������
 while/simple_rnn_cell_10403/TanhTanh#while/simple_rnn_cell_10403/add:z:0*
T0*'
_output_shapes
:���������r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0$while/simple_rnn_cell_10403/Tanh:y:0*
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
while/Identity_4Identity$while/simple_rnn_cell_10403/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:����������

while/NoOpNoOp3^while/simple_rnn_cell_10403/BiasAdd/ReadVariableOp2^while/simple_rnn_cell_10403/MatMul/ReadVariableOp4^while/simple_rnn_cell_10403/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"|
;while_simple_rnn_cell_10403_biasadd_readvariableop_resource=while_simple_rnn_cell_10403_biasadd_readvariableop_resource_0"~
<while_simple_rnn_cell_10403_matmul_1_readvariableop_resource>while_simple_rnn_cell_10403_matmul_1_readvariableop_resource_0"z
:while_simple_rnn_cell_10403_matmul_readvariableop_resource<while_simple_rnn_cell_10403_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������: : : : : 2h
2while/simple_rnn_cell_10403/BiasAdd/ReadVariableOp2while/simple_rnn_cell_10403/BiasAdd/ReadVariableOp2f
1while/simple_rnn_cell_10403/MatMul/ReadVariableOp1while/simple_rnn_cell_10403/MatMul/ReadVariableOp2j
3while/simple_rnn_cell_10403/MatMul_1/ReadVariableOp3while/simple_rnn_cell_10403/MatMul_1/ReadVariableOp: 
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
L__inference_simple_rnn_102_layer_call_and_return_conditional_losses_21179080
inputs_0F
4simple_rnn_cell_10403_matmul_readvariableop_resource:C
5simple_rnn_cell_10403_biasadd_readvariableop_resource:H
6simple_rnn_cell_10403_matmul_1_readvariableop_resource:
identity��,simple_rnn_cell_10403/BiasAdd/ReadVariableOp�+simple_rnn_cell_10403/MatMul/ReadVariableOp�-simple_rnn_cell_10403/MatMul_1/ReadVariableOp�while=
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
+simple_rnn_cell_10403/MatMul/ReadVariableOpReadVariableOp4simple_rnn_cell_10403_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
simple_rnn_cell_10403/MatMulMatMulstrided_slice_2:output:03simple_rnn_cell_10403/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
,simple_rnn_cell_10403/BiasAdd/ReadVariableOpReadVariableOp5simple_rnn_cell_10403_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
simple_rnn_cell_10403/BiasAddBiasAdd&simple_rnn_cell_10403/MatMul:product:04simple_rnn_cell_10403/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-simple_rnn_cell_10403/MatMul_1/ReadVariableOpReadVariableOp6simple_rnn_cell_10403_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0�
simple_rnn_cell_10403/MatMul_1MatMulzeros:output:05simple_rnn_cell_10403/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
simple_rnn_cell_10403/addAddV2&simple_rnn_cell_10403/BiasAdd:output:0(simple_rnn_cell_10403/MatMul_1:product:0*
T0*'
_output_shapes
:���������s
simple_rnn_cell_10403/TanhTanhsimple_rnn_cell_10403/add:z:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:04simple_rnn_cell_10403_matmul_readvariableop_resource5simple_rnn_cell_10403_biasadd_readvariableop_resource6simple_rnn_cell_10403_matmul_1_readvariableop_resource*
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
while_body_21179013*
condR
while_cond_21179012*8
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
NoOpNoOp-^simple_rnn_cell_10403/BiasAdd/ReadVariableOp,^simple_rnn_cell_10403/MatMul/ReadVariableOp.^simple_rnn_cell_10403/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2\
,simple_rnn_cell_10403/BiasAdd/ReadVariableOp,simple_rnn_cell_10403/BiasAdd/ReadVariableOp2Z
+simple_rnn_cell_10403/MatMul/ReadVariableOp+simple_rnn_cell_10403/MatMul/ReadVariableOp2^
-simple_rnn_cell_10403/MatMul_1/ReadVariableOp-simple_rnn_cell_10403/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs/0
�
�
&__inference_signature_wrapper_21178574
simple_rnn_102_input
unknown:
	unknown_0:
	unknown_1:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_102_inputunknown	unknown_0	unknown_1*
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
#__inference__wrapped_model_21177933o
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
_user_specified_namesimple_rnn_102_input
�
�
while_cond_21179232
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_21179232___redundant_placeholder06
2while_while_cond_21179232___redundant_placeholder16
2while_while_cond_21179232___redundant_placeholder26
2while_while_cond_21179232___redundant_placeholder3
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
L__inference_simple_rnn_102_layer_call_and_return_conditional_losses_21179300

inputsF
4simple_rnn_cell_10403_matmul_readvariableop_resource:C
5simple_rnn_cell_10403_biasadd_readvariableop_resource:H
6simple_rnn_cell_10403_matmul_1_readvariableop_resource:
identity��,simple_rnn_cell_10403/BiasAdd/ReadVariableOp�+simple_rnn_cell_10403/MatMul/ReadVariableOp�-simple_rnn_cell_10403/MatMul_1/ReadVariableOp�while;
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
+simple_rnn_cell_10403/MatMul/ReadVariableOpReadVariableOp4simple_rnn_cell_10403_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
simple_rnn_cell_10403/MatMulMatMulstrided_slice_2:output:03simple_rnn_cell_10403/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
,simple_rnn_cell_10403/BiasAdd/ReadVariableOpReadVariableOp5simple_rnn_cell_10403_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
simple_rnn_cell_10403/BiasAddBiasAdd&simple_rnn_cell_10403/MatMul:product:04simple_rnn_cell_10403/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-simple_rnn_cell_10403/MatMul_1/ReadVariableOpReadVariableOp6simple_rnn_cell_10403_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0�
simple_rnn_cell_10403/MatMul_1MatMulzeros:output:05simple_rnn_cell_10403/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
simple_rnn_cell_10403/addAddV2&simple_rnn_cell_10403/BiasAdd:output:0(simple_rnn_cell_10403/MatMul_1:product:0*
T0*'
_output_shapes
:���������s
simple_rnn_cell_10403/TanhTanhsimple_rnn_cell_10403/add:z:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:04simple_rnn_cell_10403_matmul_readvariableop_resource5simple_rnn_cell_10403_biasadd_readvariableop_resource6simple_rnn_cell_10403_matmul_1_readvariableop_resource*
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
while_body_21179233*
condR
while_cond_21179232*8
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
NoOpNoOp-^simple_rnn_cell_10403/BiasAdd/ReadVariableOp,^simple_rnn_cell_10403/MatMul/ReadVariableOp.^simple_rnn_cell_10403/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 2\
,simple_rnn_cell_10403/BiasAdd/ReadVariableOp,simple_rnn_cell_10403/BiasAdd/ReadVariableOp2Z
+simple_rnn_cell_10403/MatMul/ReadVariableOp+simple_rnn_cell_10403/MatMul/ReadVariableOp2^
-simple_rnn_cell_10403/MatMul_1/ReadVariableOp-simple_rnn_cell_10403/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�
�
1__inference_sequential_102_layer_call_fn_21178596

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
L__inference_sequential_102_layer_call_and_return_conditional_losses_21178519o
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
S__inference_simple_rnn_cell_10403_layer_call_and_return_conditional_losses_21179362

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

�
8__inference_simple_rnn_cell_10403_layer_call_fn_21179314

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
S__inference_simple_rnn_cell_10403_layer_call_and_return_conditional_losses_21177981o
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
L__inference_sequential_102_layer_call_and_return_conditional_losses_21178706

inputsU
Csimple_rnn_102_simple_rnn_cell_10403_matmul_readvariableop_resource:R
Dsimple_rnn_102_simple_rnn_cell_10403_biasadd_readvariableop_resource:W
Esimple_rnn_102_simple_rnn_cell_10403_matmul_1_readvariableop_resource:
identity��;simple_rnn_102/simple_rnn_cell_10403/BiasAdd/ReadVariableOp�:simple_rnn_102/simple_rnn_cell_10403/MatMul/ReadVariableOp�<simple_rnn_102/simple_rnn_cell_10403/MatMul_1/ReadVariableOp�simple_rnn_102/whileJ
simple_rnn_102/ShapeShapeinputs*
T0*
_output_shapes
:l
"simple_rnn_102/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_102/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_102/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_102/strided_sliceStridedSlicesimple_rnn_102/Shape:output:0+simple_rnn_102/strided_slice/stack:output:0-simple_rnn_102/strided_slice/stack_1:output:0-simple_rnn_102/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
simple_rnn_102/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_102/zeros/packedPack%simple_rnn_102/strided_slice:output:0&simple_rnn_102/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:_
simple_rnn_102/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
simple_rnn_102/zerosFill$simple_rnn_102/zeros/packed:output:0#simple_rnn_102/zeros/Const:output:0*
T0*'
_output_shapes
:���������r
simple_rnn_102/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_102/transpose	Transposeinputs&simple_rnn_102/transpose/perm:output:0*
T0*+
_output_shapes
:(���������b
simple_rnn_102/Shape_1Shapesimple_rnn_102/transpose:y:0*
T0*
_output_shapes
:n
$simple_rnn_102/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&simple_rnn_102/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&simple_rnn_102/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_102/strided_slice_1StridedSlicesimple_rnn_102/Shape_1:output:0-simple_rnn_102/strided_slice_1/stack:output:0/simple_rnn_102/strided_slice_1/stack_1:output:0/simple_rnn_102/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
*simple_rnn_102/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
simple_rnn_102/TensorArrayV2TensorListReserve3simple_rnn_102/TensorArrayV2/element_shape:output:0'simple_rnn_102/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Dsimple_rnn_102/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
6simple_rnn_102/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_102/transpose:y:0Msimple_rnn_102/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���n
$simple_rnn_102/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&simple_rnn_102/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&simple_rnn_102/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_102/strided_slice_2StridedSlicesimple_rnn_102/transpose:y:0-simple_rnn_102/strided_slice_2/stack:output:0/simple_rnn_102/strided_slice_2/stack_1:output:0/simple_rnn_102/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
:simple_rnn_102/simple_rnn_cell_10403/MatMul/ReadVariableOpReadVariableOpCsimple_rnn_102_simple_rnn_cell_10403_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
+simple_rnn_102/simple_rnn_cell_10403/MatMulMatMul'simple_rnn_102/strided_slice_2:output:0Bsimple_rnn_102/simple_rnn_cell_10403/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
;simple_rnn_102/simple_rnn_cell_10403/BiasAdd/ReadVariableOpReadVariableOpDsimple_rnn_102_simple_rnn_cell_10403_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
,simple_rnn_102/simple_rnn_cell_10403/BiasAddBiasAdd5simple_rnn_102/simple_rnn_cell_10403/MatMul:product:0Csimple_rnn_102/simple_rnn_cell_10403/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
<simple_rnn_102/simple_rnn_cell_10403/MatMul_1/ReadVariableOpReadVariableOpEsimple_rnn_102_simple_rnn_cell_10403_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0�
-simple_rnn_102/simple_rnn_cell_10403/MatMul_1MatMulsimple_rnn_102/zeros:output:0Dsimple_rnn_102/simple_rnn_cell_10403/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
(simple_rnn_102/simple_rnn_cell_10403/addAddV25simple_rnn_102/simple_rnn_cell_10403/BiasAdd:output:07simple_rnn_102/simple_rnn_cell_10403/MatMul_1:product:0*
T0*'
_output_shapes
:����������
)simple_rnn_102/simple_rnn_cell_10403/TanhTanh,simple_rnn_102/simple_rnn_cell_10403/add:z:0*
T0*'
_output_shapes
:���������}
,simple_rnn_102/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   m
+simple_rnn_102/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_102/TensorArrayV2_1TensorListReserve5simple_rnn_102/TensorArrayV2_1/element_shape:output:04simple_rnn_102/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���U
simple_rnn_102/timeConst*
_output_shapes
: *
dtype0*
value	B : r
'simple_rnn_102/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������c
!simple_rnn_102/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
simple_rnn_102/whileWhile*simple_rnn_102/while/loop_counter:output:00simple_rnn_102/while/maximum_iterations:output:0simple_rnn_102/time:output:0'simple_rnn_102/TensorArrayV2_1:handle:0simple_rnn_102/zeros:output:0'simple_rnn_102/strided_slice_1:output:0Fsimple_rnn_102/TensorArrayUnstack/TensorListFromTensor:output_handle:0Csimple_rnn_102_simple_rnn_cell_10403_matmul_readvariableop_resourceDsimple_rnn_102_simple_rnn_cell_10403_biasadd_readvariableop_resourceEsimple_rnn_102_simple_rnn_cell_10403_matmul_1_readvariableop_resource*
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
"simple_rnn_102_while_body_21178639*.
cond&R$
"simple_rnn_102_while_cond_21178638*8
output_shapes'
%: : : : :���������: : : : : *
parallel_iterations �
?simple_rnn_102/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
1simple_rnn_102/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_102/while:output:3Hsimple_rnn_102/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:���������*
element_dtype0*
num_elementsw
$simple_rnn_102/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������p
&simple_rnn_102/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: p
&simple_rnn_102/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_102/strided_slice_3StridedSlice:simple_rnn_102/TensorArrayV2Stack/TensorListStack:tensor:0-simple_rnn_102/strided_slice_3/stack:output:0/simple_rnn_102/strided_slice_3/stack_1:output:0/simple_rnn_102/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_maskt
simple_rnn_102/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_102/transpose_1	Transpose:simple_rnn_102/TensorArrayV2Stack/TensorListStack:tensor:0(simple_rnn_102/transpose_1/perm:output:0*
T0*+
_output_shapes
:���������v
IdentityIdentity'simple_rnn_102/strided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp<^simple_rnn_102/simple_rnn_cell_10403/BiasAdd/ReadVariableOp;^simple_rnn_102/simple_rnn_cell_10403/MatMul/ReadVariableOp=^simple_rnn_102/simple_rnn_cell_10403/MatMul_1/ReadVariableOp^simple_rnn_102/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 2z
;simple_rnn_102/simple_rnn_cell_10403/BiasAdd/ReadVariableOp;simple_rnn_102/simple_rnn_cell_10403/BiasAdd/ReadVariableOp2x
:simple_rnn_102/simple_rnn_cell_10403/MatMul/ReadVariableOp:simple_rnn_102/simple_rnn_cell_10403/MatMul/ReadVariableOp2|
<simple_rnn_102/simple_rnn_cell_10403/MatMul_1/ReadVariableOp<simple_rnn_102/simple_rnn_cell_10403/MatMul_1/ReadVariableOp2,
simple_rnn_102/whilesimple_rnn_102/while:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�
�
while_cond_21178155
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_21178155___redundant_placeholder06
2while_while_cond_21178155___redundant_placeholder16
2while_while_cond_21178155___redundant_placeholder26
2while_while_cond_21178155___redundant_placeholder3
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
�5
�
L__inference_simple_rnn_102_layer_call_and_return_conditional_losses_21178220

inputs0
simple_rnn_cell_10403_21178143:,
simple_rnn_cell_10403_21178145:0
simple_rnn_cell_10403_21178147:
identity��-simple_rnn_cell_10403/StatefulPartitionedCall�while;
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
-simple_rnn_cell_10403/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_10403_21178143simple_rnn_cell_10403_21178145simple_rnn_cell_10403_21178147*
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
S__inference_simple_rnn_cell_10403_layer_call_and_return_conditional_losses_21178103n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_10403_21178143simple_rnn_cell_10403_21178145simple_rnn_cell_10403_21178147*
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
while_body_21178156*
condR
while_cond_21178155*8
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
NoOpNoOp.^simple_rnn_cell_10403/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2^
-simple_rnn_cell_10403/StatefulPartitionedCall-simple_rnn_cell_10403/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs
�.
�
while_body_21179233
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0N
<while_simple_rnn_cell_10403_matmul_readvariableop_resource_0:K
=while_simple_rnn_cell_10403_biasadd_readvariableop_resource_0:P
>while_simple_rnn_cell_10403_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorL
:while_simple_rnn_cell_10403_matmul_readvariableop_resource:I
;while_simple_rnn_cell_10403_biasadd_readvariableop_resource:N
<while_simple_rnn_cell_10403_matmul_1_readvariableop_resource:��2while/simple_rnn_cell_10403/BiasAdd/ReadVariableOp�1while/simple_rnn_cell_10403/MatMul/ReadVariableOp�3while/simple_rnn_cell_10403/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
1while/simple_rnn_cell_10403/MatMul/ReadVariableOpReadVariableOp<while_simple_rnn_cell_10403_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0�
"while/simple_rnn_cell_10403/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:09while/simple_rnn_cell_10403/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
2while/simple_rnn_cell_10403/BiasAdd/ReadVariableOpReadVariableOp=while_simple_rnn_cell_10403_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0�
#while/simple_rnn_cell_10403/BiasAddBiasAdd,while/simple_rnn_cell_10403/MatMul:product:0:while/simple_rnn_cell_10403/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
3while/simple_rnn_cell_10403/MatMul_1/ReadVariableOpReadVariableOp>while_simple_rnn_cell_10403_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0�
$while/simple_rnn_cell_10403/MatMul_1MatMulwhile_placeholder_2;while/simple_rnn_cell_10403/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
while/simple_rnn_cell_10403/addAddV2,while/simple_rnn_cell_10403/BiasAdd:output:0.while/simple_rnn_cell_10403/MatMul_1:product:0*
T0*'
_output_shapes
:���������
 while/simple_rnn_cell_10403/TanhTanh#while/simple_rnn_cell_10403/add:z:0*
T0*'
_output_shapes
:���������r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0$while/simple_rnn_cell_10403/Tanh:y:0*
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
while/Identity_4Identity$while/simple_rnn_cell_10403/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:����������

while/NoOpNoOp3^while/simple_rnn_cell_10403/BiasAdd/ReadVariableOp2^while/simple_rnn_cell_10403/MatMul/ReadVariableOp4^while/simple_rnn_cell_10403/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"|
;while_simple_rnn_cell_10403_biasadd_readvariableop_resource=while_simple_rnn_cell_10403_biasadd_readvariableop_resource_0"~
<while_simple_rnn_cell_10403_matmul_1_readvariableop_resource>while_simple_rnn_cell_10403_matmul_1_readvariableop_resource_0"z
:while_simple_rnn_cell_10403_matmul_readvariableop_resource<while_simple_rnn_cell_10403_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������: : : : : 2h
2while/simple_rnn_cell_10403/BiasAdd/ReadVariableOp2while/simple_rnn_cell_10403/BiasAdd/ReadVariableOp2f
1while/simple_rnn_cell_10403/MatMul/ReadVariableOp1while/simple_rnn_cell_10403/MatMul/ReadVariableOp2j
3while/simple_rnn_cell_10403/MatMul_1/ReadVariableOp3while/simple_rnn_cell_10403/MatMul_1/ReadVariableOp: 
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
while_body_21178419
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0N
<while_simple_rnn_cell_10403_matmul_readvariableop_resource_0:K
=while_simple_rnn_cell_10403_biasadd_readvariableop_resource_0:P
>while_simple_rnn_cell_10403_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorL
:while_simple_rnn_cell_10403_matmul_readvariableop_resource:I
;while_simple_rnn_cell_10403_biasadd_readvariableop_resource:N
<while_simple_rnn_cell_10403_matmul_1_readvariableop_resource:��2while/simple_rnn_cell_10403/BiasAdd/ReadVariableOp�1while/simple_rnn_cell_10403/MatMul/ReadVariableOp�3while/simple_rnn_cell_10403/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
1while/simple_rnn_cell_10403/MatMul/ReadVariableOpReadVariableOp<while_simple_rnn_cell_10403_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0�
"while/simple_rnn_cell_10403/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:09while/simple_rnn_cell_10403/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
2while/simple_rnn_cell_10403/BiasAdd/ReadVariableOpReadVariableOp=while_simple_rnn_cell_10403_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0�
#while/simple_rnn_cell_10403/BiasAddBiasAdd,while/simple_rnn_cell_10403/MatMul:product:0:while/simple_rnn_cell_10403/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
3while/simple_rnn_cell_10403/MatMul_1/ReadVariableOpReadVariableOp>while_simple_rnn_cell_10403_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0�
$while/simple_rnn_cell_10403/MatMul_1MatMulwhile_placeholder_2;while/simple_rnn_cell_10403/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
while/simple_rnn_cell_10403/addAddV2,while/simple_rnn_cell_10403/BiasAdd:output:0.while/simple_rnn_cell_10403/MatMul_1:product:0*
T0*'
_output_shapes
:���������
 while/simple_rnn_cell_10403/TanhTanh#while/simple_rnn_cell_10403/add:z:0*
T0*'
_output_shapes
:���������r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0$while/simple_rnn_cell_10403/Tanh:y:0*
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
while/Identity_4Identity$while/simple_rnn_cell_10403/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:����������

while/NoOpNoOp3^while/simple_rnn_cell_10403/BiasAdd/ReadVariableOp2^while/simple_rnn_cell_10403/MatMul/ReadVariableOp4^while/simple_rnn_cell_10403/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"|
;while_simple_rnn_cell_10403_biasadd_readvariableop_resource=while_simple_rnn_cell_10403_biasadd_readvariableop_resource_0"~
<while_simple_rnn_cell_10403_matmul_1_readvariableop_resource>while_simple_rnn_cell_10403_matmul_1_readvariableop_resource_0"z
:while_simple_rnn_cell_10403_matmul_readvariableop_resource<while_simple_rnn_cell_10403_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������: : : : : 2h
2while/simple_rnn_cell_10403/BiasAdd/ReadVariableOp2while/simple_rnn_cell_10403/BiasAdd/ReadVariableOp2f
1while/simple_rnn_cell_10403/MatMul/ReadVariableOp1while/simple_rnn_cell_10403/MatMul/ReadVariableOp2j
3while/simple_rnn_cell_10403/MatMul_1/ReadVariableOp3while/simple_rnn_cell_10403/MatMul_1/ReadVariableOp: 
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
1__inference_sequential_102_layer_call_fn_21178539
simple_rnn_102_input
unknown:
	unknown_0:
	unknown_1:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_102_inputunknown	unknown_0	unknown_1*
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
L__inference_sequential_102_layer_call_and_return_conditional_losses_21178519o
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
_user_specified_namesimple_rnn_102_input
�?
�
L__inference_simple_rnn_102_layer_call_and_return_conditional_losses_21179190

inputsF
4simple_rnn_cell_10403_matmul_readvariableop_resource:C
5simple_rnn_cell_10403_biasadd_readvariableop_resource:H
6simple_rnn_cell_10403_matmul_1_readvariableop_resource:
identity��,simple_rnn_cell_10403/BiasAdd/ReadVariableOp�+simple_rnn_cell_10403/MatMul/ReadVariableOp�-simple_rnn_cell_10403/MatMul_1/ReadVariableOp�while;
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
+simple_rnn_cell_10403/MatMul/ReadVariableOpReadVariableOp4simple_rnn_cell_10403_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
simple_rnn_cell_10403/MatMulMatMulstrided_slice_2:output:03simple_rnn_cell_10403/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
,simple_rnn_cell_10403/BiasAdd/ReadVariableOpReadVariableOp5simple_rnn_cell_10403_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
simple_rnn_cell_10403/BiasAddBiasAdd&simple_rnn_cell_10403/MatMul:product:04simple_rnn_cell_10403/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-simple_rnn_cell_10403/MatMul_1/ReadVariableOpReadVariableOp6simple_rnn_cell_10403_matmul_1_readvariableop_resource*
_output_shapes

:*
dtype0�
simple_rnn_cell_10403/MatMul_1MatMulzeros:output:05simple_rnn_cell_10403/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
simple_rnn_cell_10403/addAddV2&simple_rnn_cell_10403/BiasAdd:output:0(simple_rnn_cell_10403/MatMul_1:product:0*
T0*'
_output_shapes
:���������s
simple_rnn_cell_10403/TanhTanhsimple_rnn_cell_10403/add:z:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:04simple_rnn_cell_10403_matmul_readvariableop_resource5simple_rnn_cell_10403_biasadd_readvariableop_resource6simple_rnn_cell_10403_matmul_1_readvariableop_resource*
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
while_body_21179123*
condR
while_cond_21179122*8
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
NoOpNoOp-^simple_rnn_cell_10403/BiasAdd/ReadVariableOp,^simple_rnn_cell_10403/MatMul/ReadVariableOp.^simple_rnn_cell_10403/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 2\
,simple_rnn_cell_10403/BiasAdd/ReadVariableOp,simple_rnn_cell_10403/BiasAdd/ReadVariableOp2Z
+simple_rnn_cell_10403/MatMul/ReadVariableOp+simple_rnn_cell_10403/MatMul/ReadVariableOp2^
-simple_rnn_cell_10403/MatMul_1/ReadVariableOp-simple_rnn_cell_10403/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�	
�
L__inference_sequential_102_layer_call_and_return_conditional_losses_21178354

inputs)
simple_rnn_102_21178346:%
simple_rnn_102_21178348:)
simple_rnn_102_21178350:
identity��&simple_rnn_102/StatefulPartitionedCall�
&simple_rnn_102/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_102_21178346simple_rnn_102_21178348simple_rnn_102_21178350*
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
L__inference_simple_rnn_102_layer_call_and_return_conditional_losses_21178345~
IdentityIdentity/simple_rnn_102/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������o
NoOpNoOp'^simple_rnn_102/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������(: : : 2P
&simple_rnn_102/StatefulPartitionedCall&simple_rnn_102/StatefulPartitionedCall:S O
+
_output_shapes
:���������(
 
_user_specified_nameinputs
�.
�
while_body_21178278
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0N
<while_simple_rnn_cell_10403_matmul_readvariableop_resource_0:K
=while_simple_rnn_cell_10403_biasadd_readvariableop_resource_0:P
>while_simple_rnn_cell_10403_matmul_1_readvariableop_resource_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorL
:while_simple_rnn_cell_10403_matmul_readvariableop_resource:I
;while_simple_rnn_cell_10403_biasadd_readvariableop_resource:N
<while_simple_rnn_cell_10403_matmul_1_readvariableop_resource:��2while/simple_rnn_cell_10403/BiasAdd/ReadVariableOp�1while/simple_rnn_cell_10403/MatMul/ReadVariableOp�3while/simple_rnn_cell_10403/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
1while/simple_rnn_cell_10403/MatMul/ReadVariableOpReadVariableOp<while_simple_rnn_cell_10403_matmul_readvariableop_resource_0*
_output_shapes

:*
dtype0�
"while/simple_rnn_cell_10403/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:09while/simple_rnn_cell_10403/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
2while/simple_rnn_cell_10403/BiasAdd/ReadVariableOpReadVariableOp=while_simple_rnn_cell_10403_biasadd_readvariableop_resource_0*
_output_shapes
:*
dtype0�
#while/simple_rnn_cell_10403/BiasAddBiasAdd,while/simple_rnn_cell_10403/MatMul:product:0:while/simple_rnn_cell_10403/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
3while/simple_rnn_cell_10403/MatMul_1/ReadVariableOpReadVariableOp>while_simple_rnn_cell_10403_matmul_1_readvariableop_resource_0*
_output_shapes

:*
dtype0�
$while/simple_rnn_cell_10403/MatMul_1MatMulwhile_placeholder_2;while/simple_rnn_cell_10403/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
while/simple_rnn_cell_10403/addAddV2,while/simple_rnn_cell_10403/BiasAdd:output:0.while/simple_rnn_cell_10403/MatMul_1:product:0*
T0*'
_output_shapes
:���������
 while/simple_rnn_cell_10403/TanhTanh#while/simple_rnn_cell_10403/add:z:0*
T0*'
_output_shapes
:���������r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0$while/simple_rnn_cell_10403/Tanh:y:0*
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
while/Identity_4Identity$while/simple_rnn_cell_10403/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:����������

while/NoOpNoOp3^while/simple_rnn_cell_10403/BiasAdd/ReadVariableOp2^while/simple_rnn_cell_10403/MatMul/ReadVariableOp4^while/simple_rnn_cell_10403/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"|
;while_simple_rnn_cell_10403_biasadd_readvariableop_resource=while_simple_rnn_cell_10403_biasadd_readvariableop_resource_0"~
<while_simple_rnn_cell_10403_matmul_1_readvariableop_resource>while_simple_rnn_cell_10403_matmul_1_readvariableop_resource_0"z
:while_simple_rnn_cell_10403_matmul_readvariableop_resource<while_simple_rnn_cell_10403_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������: : : : : 2h
2while/simple_rnn_cell_10403/BiasAdd/ReadVariableOp2while/simple_rnn_cell_10403/BiasAdd/ReadVariableOp2f
1while/simple_rnn_cell_10403/MatMul/ReadVariableOp1while/simple_rnn_cell_10403/MatMul/ReadVariableOp2j
3while/simple_rnn_cell_10403/MatMul_1/ReadVariableOp3while/simple_rnn_cell_10403/MatMul_1/ReadVariableOp: 
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
while_cond_21177994
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_21177994___redundant_placeholder06
2while_while_cond_21177994___redundant_placeholder16
2while_while_cond_21177994___redundant_placeholder26
2while_while_cond_21177994___redundant_placeholder3
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
8__inference_simple_rnn_cell_10403_layer_call_fn_21179328

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
S__inference_simple_rnn_cell_10403_layer_call_and_return_conditional_losses_21178103o
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
�
�
1__inference_simple_rnn_102_layer_call_fn_21178849

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
L__inference_simple_rnn_102_layer_call_and_return_conditional_losses_21178345o
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
�#
�
while_body_21178156
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_08
&while_simple_rnn_cell_10403_21178178_0:4
&while_simple_rnn_cell_10403_21178180_0:8
&while_simple_rnn_cell_10403_21178182_0:
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor6
$while_simple_rnn_cell_10403_21178178:2
$while_simple_rnn_cell_10403_21178180:6
$while_simple_rnn_cell_10403_21178182:��3while/simple_rnn_cell_10403/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
3while/simple_rnn_cell_10403/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2&while_simple_rnn_cell_10403_21178178_0&while_simple_rnn_cell_10403_21178180_0&while_simple_rnn_cell_10403_21178182_0*
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
S__inference_simple_rnn_cell_10403_layer_call_and_return_conditional_losses_21178103r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0<while/simple_rnn_cell_10403/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity<while/simple_rnn_cell_10403/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:����������

while/NoOpNoOp4^while/simple_rnn_cell_10403/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"N
$while_simple_rnn_cell_10403_21178178&while_simple_rnn_cell_10403_21178178_0"N
$while_simple_rnn_cell_10403_21178180&while_simple_rnn_cell_10403_21178180_0"N
$while_simple_rnn_cell_10403_21178182&while_simple_rnn_cell_10403_21178182_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :���������: : : : : 2j
3while/simple_rnn_cell_10403/StatefulPartitionedCall3while/simple_rnn_cell_10403/StatefulPartitionedCall: 
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
while_cond_21178418
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_21178418___redundant_placeholder06
2while_while_cond_21178418___redundant_placeholder16
2while_while_cond_21178418___redundant_placeholder26
2while_while_cond_21178418___redundant_placeholder3
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
�
�
S__inference_simple_rnn_cell_10403_layer_call_and_return_conditional_losses_21178103

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
 
_user_specified_namestates"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
Y
simple_rnn_102_inputA
&serving_default_simple_rnn_102_input:0���������(B
simple_rnn_1020
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
1__inference_sequential_102_layer_call_fn_21178363
1__inference_sequential_102_layer_call_fn_21178585
1__inference_sequential_102_layer_call_fn_21178596
1__inference_sequential_102_layer_call_fn_21178539�
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
L__inference_sequential_102_layer_call_and_return_conditional_losses_21178706
L__inference_sequential_102_layer_call_and_return_conditional_losses_21178816
L__inference_sequential_102_layer_call_and_return_conditional_losses_21178550
L__inference_sequential_102_layer_call_and_return_conditional_losses_21178561�
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
#__inference__wrapped_model_21177933simple_rnn_102_input"�
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
1__inference_simple_rnn_102_layer_call_fn_21178827
1__inference_simple_rnn_102_layer_call_fn_21178838
1__inference_simple_rnn_102_layer_call_fn_21178849
1__inference_simple_rnn_102_layer_call_fn_21178860�
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
L__inference_simple_rnn_102_layer_call_and_return_conditional_losses_21178970
L__inference_simple_rnn_102_layer_call_and_return_conditional_losses_21179080
L__inference_simple_rnn_102_layer_call_and_return_conditional_losses_21179190
L__inference_simple_rnn_102_layer_call_and_return_conditional_losses_21179300�
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
=:;2+simple_rnn_102/simple_rnn_cell_10403/kernel
G:E25simple_rnn_102/simple_rnn_cell_10403/recurrent_kernel
7:52)simple_rnn_102/simple_rnn_cell_10403/bias
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
1__inference_sequential_102_layer_call_fn_21178363simple_rnn_102_input"�
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
1__inference_sequential_102_layer_call_fn_21178585inputs"�
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
1__inference_sequential_102_layer_call_fn_21178596inputs"�
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
1__inference_sequential_102_layer_call_fn_21178539simple_rnn_102_input"�
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
L__inference_sequential_102_layer_call_and_return_conditional_losses_21178706inputs"�
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
L__inference_sequential_102_layer_call_and_return_conditional_losses_21178816inputs"�
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
L__inference_sequential_102_layer_call_and_return_conditional_losses_21178550simple_rnn_102_input"�
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
L__inference_sequential_102_layer_call_and_return_conditional_losses_21178561simple_rnn_102_input"�
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
&__inference_signature_wrapper_21178574simple_rnn_102_input"�
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
1__inference_simple_rnn_102_layer_call_fn_21178827inputs/0"�
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
1__inference_simple_rnn_102_layer_call_fn_21178838inputs/0"�
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
1__inference_simple_rnn_102_layer_call_fn_21178849inputs"�
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
1__inference_simple_rnn_102_layer_call_fn_21178860inputs"�
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
L__inference_simple_rnn_102_layer_call_and_return_conditional_losses_21178970inputs/0"�
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
L__inference_simple_rnn_102_layer_call_and_return_conditional_losses_21179080inputs/0"�
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
L__inference_simple_rnn_102_layer_call_and_return_conditional_losses_21179190inputs"�
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
L__inference_simple_rnn_102_layer_call_and_return_conditional_losses_21179300inputs"�
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
8__inference_simple_rnn_cell_10403_layer_call_fn_21179314
8__inference_simple_rnn_cell_10403_layer_call_fn_21179328�
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
S__inference_simple_rnn_cell_10403_layer_call_and_return_conditional_losses_21179345
S__inference_simple_rnn_cell_10403_layer_call_and_return_conditional_losses_21179362�
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
8__inference_simple_rnn_cell_10403_layer_call_fn_21179314inputsstates/0"�
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
8__inference_simple_rnn_cell_10403_layer_call_fn_21179328inputsstates/0"�
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
S__inference_simple_rnn_cell_10403_layer_call_and_return_conditional_losses_21179345inputsstates/0"�
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
S__inference_simple_rnn_cell_10403_layer_call_and_return_conditional_losses_21179362inputsstates/0"�
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
#__inference__wrapped_model_21177933�A�>
7�4
2�/
simple_rnn_102_input���������(
� "?�<
:
simple_rnn_102(�%
simple_rnn_102����������
L__inference_sequential_102_layer_call_and_return_conditional_losses_21178550wI�F
?�<
2�/
simple_rnn_102_input���������(
p 

 
� "%�"
�
0���������
� �
L__inference_sequential_102_layer_call_and_return_conditional_losses_21178561wI�F
?�<
2�/
simple_rnn_102_input���������(
p

 
� "%�"
�
0���������
� �
L__inference_sequential_102_layer_call_and_return_conditional_losses_21178706i;�8
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
L__inference_sequential_102_layer_call_and_return_conditional_losses_21178816i;�8
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
1__inference_sequential_102_layer_call_fn_21178363jI�F
?�<
2�/
simple_rnn_102_input���������(
p 

 
� "�����������
1__inference_sequential_102_layer_call_fn_21178539jI�F
?�<
2�/
simple_rnn_102_input���������(
p

 
� "�����������
1__inference_sequential_102_layer_call_fn_21178585\;�8
1�.
$�!
inputs���������(
p 

 
� "�����������
1__inference_sequential_102_layer_call_fn_21178596\;�8
1�.
$�!
inputs���������(
p

 
� "�����������
&__inference_signature_wrapper_21178574�Y�V
� 
O�L
J
simple_rnn_102_input2�/
simple_rnn_102_input���������("?�<
:
simple_rnn_102(�%
simple_rnn_102����������
L__inference_simple_rnn_102_layer_call_and_return_conditional_losses_21178970}O�L
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
L__inference_simple_rnn_102_layer_call_and_return_conditional_losses_21179080}O�L
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
L__inference_simple_rnn_102_layer_call_and_return_conditional_losses_21179190m?�<
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
L__inference_simple_rnn_102_layer_call_and_return_conditional_losses_21179300m?�<
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
1__inference_simple_rnn_102_layer_call_fn_21178827pO�L
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
1__inference_simple_rnn_102_layer_call_fn_21178838pO�L
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
1__inference_simple_rnn_102_layer_call_fn_21178849`?�<
5�2
$�!
inputs���������(

 
p 

 
� "�����������
1__inference_simple_rnn_102_layer_call_fn_21178860`?�<
5�2
$�!
inputs���������(

 
p

 
� "�����������
S__inference_simple_rnn_cell_10403_layer_call_and_return_conditional_losses_21179345�\�Y
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
S__inference_simple_rnn_cell_10403_layer_call_and_return_conditional_losses_21179362�\�Y
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
8__inference_simple_rnn_cell_10403_layer_call_fn_21179314�\�Y
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
8__inference_simple_rnn_cell_10403_layer_call_fn_21179328�\�Y
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