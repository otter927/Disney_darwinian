єЩ
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
"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68вр
А
*simple_rnn_90/simple_rnn_cell_13378/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:PP*;
shared_name,*simple_rnn_90/simple_rnn_cell_13378/kernel
Љ
>simple_rnn_90/simple_rnn_cell_13378/kernel/Read/ReadVariableOpReadVariableOp*simple_rnn_90/simple_rnn_cell_13378/kernel*
_output_shapes

:PP*
dtype0
Ф
4simple_rnn_90/simple_rnn_cell_13378/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:PP*E
shared_name64simple_rnn_90/simple_rnn_cell_13378/recurrent_kernel
Н
Hsimple_rnn_90/simple_rnn_cell_13378/recurrent_kernel/Read/ReadVariableOpReadVariableOp4simple_rnn_90/simple_rnn_cell_13378/recurrent_kernel*
_output_shapes

:PP*
dtype0
Ј
(simple_rnn_90/simple_rnn_cell_13378/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:P*9
shared_name*(simple_rnn_90/simple_rnn_cell_13378/bias
Ё
<simple_rnn_90/simple_rnn_cell_13378/bias/Read/ReadVariableOpReadVariableOp(simple_rnn_90/simple_rnn_cell_13378/bias*
_output_shapes
:P*
dtype0

NoOpNoOp
Л
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*і
valueьBщ Bт
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
jd
VARIABLE_VALUE*simple_rnn_90/simple_rnn_cell_13378/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE4simple_rnn_90/simple_rnn_cell_13378/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUE(simple_rnn_90/simple_rnn_cell_13378/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
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

#serving_default_simple_rnn_90_inputPlaceholder*,
_output_shapes
:џџџџџџџџџДP*
dtype0*!
shape:џџџџџџџџџДP
в
StatefulPartitionedCallStatefulPartitionedCall#serving_default_simple_rnn_90_input*simple_rnn_90/simple_rnn_cell_13378/kernel(simple_rnn_90/simple_rnn_cell_13378/bias4simple_rnn_90/simple_rnn_cell_13378/recurrent_kernel*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџP*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 */
f*R(
&__inference_signature_wrapper_32769175
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ш
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename>simple_rnn_90/simple_rnn_cell_13378/kernel/Read/ReadVariableOpHsimple_rnn_90/simple_rnn_cell_13378/recurrent_kernel/Read/ReadVariableOp<simple_rnn_90/simple_rnn_cell_13378/bias/Read/ReadVariableOpConst*
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
!__inference__traced_save_32769745
Ї
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename*simple_rnn_90/simple_rnn_cell_13378/kernel4simple_rnn_90/simple_rnn_cell_13378/recurrent_kernel(simple_rnn_90/simple_rnn_cell_13378/bias*
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
$__inference__traced_restore_32769764јЙ
п

О
!simple_rnn_90_while_cond_327690958
4simple_rnn_90_while_simple_rnn_90_while_loop_counter>
:simple_rnn_90_while_simple_rnn_90_while_maximum_iterations#
simple_rnn_90_while_placeholder%
!simple_rnn_90_while_placeholder_1%
!simple_rnn_90_while_placeholder_2:
6simple_rnn_90_while_less_simple_rnn_90_strided_slice_1R
Nsimple_rnn_90_while_simple_rnn_90_while_cond_32769095___redundant_placeholder0R
Nsimple_rnn_90_while_simple_rnn_90_while_cond_32769095___redundant_placeholder1R
Nsimple_rnn_90_while_simple_rnn_90_while_cond_32769095___redundant_placeholder2R
Nsimple_rnn_90_while_simple_rnn_90_while_cond_32769095___redundant_placeholder3 
simple_rnn_90_while_identity

simple_rnn_90/while/LessLesssimple_rnn_90_while_placeholder6simple_rnn_90_while_less_simple_rnn_90_strided_slice_1*
T0*
_output_shapes
: g
simple_rnn_90/while/IdentityIdentitysimple_rnn_90/while/Less:z:0*
T0
*
_output_shapes
: "E
simple_rnn_90_while_identity%simple_rnn_90/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџP: ::::: 
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
:џџџџџџџџџP:

_output_shapes
: :

_output_shapes
:
п

О
!simple_rnn_90_while_cond_327689878
4simple_rnn_90_while_simple_rnn_90_while_loop_counter>
:simple_rnn_90_while_simple_rnn_90_while_maximum_iterations#
simple_rnn_90_while_placeholder%
!simple_rnn_90_while_placeholder_1%
!simple_rnn_90_while_placeholder_2:
6simple_rnn_90_while_less_simple_rnn_90_strided_slice_1R
Nsimple_rnn_90_while_simple_rnn_90_while_cond_32768987___redundant_placeholder0R
Nsimple_rnn_90_while_simple_rnn_90_while_cond_32768987___redundant_placeholder1R
Nsimple_rnn_90_while_simple_rnn_90_while_cond_32768987___redundant_placeholder2R
Nsimple_rnn_90_while_simple_rnn_90_while_cond_32768987___redundant_placeholder3 
simple_rnn_90_while_identity

simple_rnn_90/while/LessLesssimple_rnn_90_while_placeholder6simple_rnn_90_while_less_simple_rnn_90_strided_slice_1*
T0*
_output_shapes
: g
simple_rnn_90/while/IdentityIdentitysimple_rnn_90/while/Less:z:0*
T0
*
_output_shapes
: "E
simple_rnn_90_while_identity%simple_rnn_90/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџP: ::::: 
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
:џџџџџџџџџP:

_output_shapes
: :

_output_shapes
:
"
ћ
while_body_32768524
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_08
&while_simple_rnn_cell_13378_32768546_0:PP4
&while_simple_rnn_cell_13378_32768548_0:P8
&while_simple_rnn_cell_13378_32768550_0:PP
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor6
$while_simple_rnn_cell_13378_32768546:PP2
$while_simple_rnn_cell_13378_32768548:P6
$while_simple_rnn_cell_13378_32768550:PPЂ3while/simple_rnn_cell_13378/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџP   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџP*
element_dtype0О
3while/simple_rnn_cell_13378/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2&while_simple_rnn_cell_13378_32768546_0&while_simple_rnn_cell_13378_32768548_0&while_simple_rnn_cell_13378_32768550_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџP:џџџџџџџџџP*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *\
fWRU
S__inference_simple_rnn_cell_13378_layer_call_and_return_conditional_losses_32768472х
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder<while/simple_rnn_cell_13378/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity<while/simple_rnn_cell_13378/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџP

while/NoOpNoOp4^while/simple_rnn_cell_13378/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"N
$while_simple_rnn_cell_13378_32768546&while_simple_rnn_cell_13378_32768546_0"N
$while_simple_rnn_cell_13378_32768548&while_simple_rnn_cell_13378_32768548_0"N
$while_simple_rnn_cell_13378_32768550&while_simple_rnn_cell_13378_32768550_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџP: : : : : 2j
3while/simple_rnn_cell_13378/StatefulPartitionedCall3while/simple_rnn_cell_13378/StatefulPartitionedCall: 
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
:џџџџџџџџџP:

_output_shapes
: :

_output_shapes
: 
№-
ю
while_body_32769261
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0N
<while_simple_rnn_cell_13378_matmul_readvariableop_resource_0:PPK
=while_simple_rnn_cell_13378_biasadd_readvariableop_resource_0:PP
>while_simple_rnn_cell_13378_matmul_1_readvariableop_resource_0:PP
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorL
:while_simple_rnn_cell_13378_matmul_readvariableop_resource:PPI
;while_simple_rnn_cell_13378_biasadd_readvariableop_resource:PN
<while_simple_rnn_cell_13378_matmul_1_readvariableop_resource:PPЂ2while/simple_rnn_cell_13378/BiasAdd/ReadVariableOpЂ1while/simple_rnn_cell_13378/MatMul/ReadVariableOpЂ3while/simple_rnn_cell_13378/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџP   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџP*
element_dtype0Ў
1while/simple_rnn_cell_13378/MatMul/ReadVariableOpReadVariableOp<while_simple_rnn_cell_13378_matmul_readvariableop_resource_0*
_output_shapes

:PP*
dtype0Ы
"while/simple_rnn_cell_13378/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:09while/simple_rnn_cell_13378/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPЌ
2while/simple_rnn_cell_13378/BiasAdd/ReadVariableOpReadVariableOp=while_simple_rnn_cell_13378_biasadd_readvariableop_resource_0*
_output_shapes
:P*
dtype0Ъ
#while/simple_rnn_cell_13378/BiasAddBiasAdd,while/simple_rnn_cell_13378/MatMul:product:0:while/simple_rnn_cell_13378/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPВ
3while/simple_rnn_cell_13378/MatMul_1/ReadVariableOpReadVariableOp>while_simple_rnn_cell_13378_matmul_1_readvariableop_resource_0*
_output_shapes

:PP*
dtype0В
$while/simple_rnn_cell_13378/MatMul_1MatMulwhile_placeholder_2;while/simple_rnn_cell_13378/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPИ
while/simple_rnn_cell_13378/addAddV2,while/simple_rnn_cell_13378/BiasAdd:output:0.while/simple_rnn_cell_13378/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџP
 while/simple_rnn_cell_13378/TanhTanh#while/simple_rnn_cell_13378/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџPЭ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder$while/simple_rnn_cell_13378/Tanh:y:0*
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
while/Identity_4Identity$while/simple_rnn_cell_13378/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџPы

while/NoOpNoOp3^while/simple_rnn_cell_13378/BiasAdd/ReadVariableOp2^while/simple_rnn_cell_13378/MatMul/ReadVariableOp4^while/simple_rnn_cell_13378/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"|
;while_simple_rnn_cell_13378_biasadd_readvariableop_resource=while_simple_rnn_cell_13378_biasadd_readvariableop_resource_0"~
<while_simple_rnn_cell_13378_matmul_1_readvariableop_resource>while_simple_rnn_cell_13378_matmul_1_readvariableop_resource_0"z
:while_simple_rnn_cell_13378_matmul_readvariableop_resource<while_simple_rnn_cell_13378_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџP: : : : : 2h
2while/simple_rnn_cell_13378/BiasAdd/ReadVariableOp2while/simple_rnn_cell_13378/BiasAdd/ReadVariableOp2f
1while/simple_rnn_cell_13378/MatMul/ReadVariableOp1while/simple_rnn_cell_13378/MatMul/ReadVariableOp2j
3while/simple_rnn_cell_13378/MatMul_1/ReadVariableOp3while/simple_rnn_cell_13378/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџP:

_output_shapes
: :

_output_shapes
: 
ф
Д
while_cond_32769476
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_32769476___redundant_placeholder06
2while_while_cond_32769476___redundant_placeholder16
2while_while_cond_32769476___redundant_placeholder26
2while_while_cond_32769476___redundant_placeholder3
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
-: : : : :џџџџџџџџџP: ::::: 
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
:џџџџџџџџџP:

_output_shapes
: :

_output_shapes
:
№-
ю
while_body_32769369
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0N
<while_simple_rnn_cell_13378_matmul_readvariableop_resource_0:PPK
=while_simple_rnn_cell_13378_biasadd_readvariableop_resource_0:PP
>while_simple_rnn_cell_13378_matmul_1_readvariableop_resource_0:PP
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorL
:while_simple_rnn_cell_13378_matmul_readvariableop_resource:PPI
;while_simple_rnn_cell_13378_biasadd_readvariableop_resource:PN
<while_simple_rnn_cell_13378_matmul_1_readvariableop_resource:PPЂ2while/simple_rnn_cell_13378/BiasAdd/ReadVariableOpЂ1while/simple_rnn_cell_13378/MatMul/ReadVariableOpЂ3while/simple_rnn_cell_13378/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџP   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџP*
element_dtype0Ў
1while/simple_rnn_cell_13378/MatMul/ReadVariableOpReadVariableOp<while_simple_rnn_cell_13378_matmul_readvariableop_resource_0*
_output_shapes

:PP*
dtype0Ы
"while/simple_rnn_cell_13378/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:09while/simple_rnn_cell_13378/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPЌ
2while/simple_rnn_cell_13378/BiasAdd/ReadVariableOpReadVariableOp=while_simple_rnn_cell_13378_biasadd_readvariableop_resource_0*
_output_shapes
:P*
dtype0Ъ
#while/simple_rnn_cell_13378/BiasAddBiasAdd,while/simple_rnn_cell_13378/MatMul:product:0:while/simple_rnn_cell_13378/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPВ
3while/simple_rnn_cell_13378/MatMul_1/ReadVariableOpReadVariableOp>while_simple_rnn_cell_13378_matmul_1_readvariableop_resource_0*
_output_shapes

:PP*
dtype0В
$while/simple_rnn_cell_13378/MatMul_1MatMulwhile_placeholder_2;while/simple_rnn_cell_13378/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPИ
while/simple_rnn_cell_13378/addAddV2,while/simple_rnn_cell_13378/BiasAdd:output:0.while/simple_rnn_cell_13378/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџP
 while/simple_rnn_cell_13378/TanhTanh#while/simple_rnn_cell_13378/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџPЭ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder$while/simple_rnn_cell_13378/Tanh:y:0*
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
while/Identity_4Identity$while/simple_rnn_cell_13378/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџPы

while/NoOpNoOp3^while/simple_rnn_cell_13378/BiasAdd/ReadVariableOp2^while/simple_rnn_cell_13378/MatMul/ReadVariableOp4^while/simple_rnn_cell_13378/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"|
;while_simple_rnn_cell_13378_biasadd_readvariableop_resource=while_simple_rnn_cell_13378_biasadd_readvariableop_resource_0"~
<while_simple_rnn_cell_13378_matmul_1_readvariableop_resource>while_simple_rnn_cell_13378_matmul_1_readvariableop_resource_0"z
:while_simple_rnn_cell_13378_matmul_readvariableop_resource<while_simple_rnn_cell_13378_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџP: : : : : 2h
2while/simple_rnn_cell_13378/BiasAdd/ReadVariableOp2while/simple_rnn_cell_13378/BiasAdd/ReadVariableOp2f
1while/simple_rnn_cell_13378/MatMul/ReadVariableOp1while/simple_rnn_cell_13378/MatMul/ReadVariableOp2j
3while/simple_rnn_cell_13378/MatMul_1/ReadVariableOp3while/simple_rnn_cell_13378/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџP:

_output_shapes
: :

_output_shapes
: 
ф
Д
while_cond_32768782
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_32768782___redundant_placeholder06
2while_while_cond_32768782___redundant_placeholder16
2while_while_cond_32768782___redundant_placeholder26
2while_while_cond_32768782___redundant_placeholder3
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
-: : : : :џџџџџџџџџP: ::::: 
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
:џџџџџџџџџP:

_output_shapes
: :

_output_shapes
:

ю
S__inference_simple_rnn_cell_13378_layer_call_and_return_conditional_losses_32768352

inputs

states0
matmul_readvariableop_resource:PP-
biasadd_readvariableop_resource:P2
 matmul_1_readvariableop_resource:PP
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:PP*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:P*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:PP*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџPG
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџPW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџPY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџP
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџP:џџџџџџџџџP: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџP
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџP
 
_user_specified_namestates
ф
Д
while_cond_32769584
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_32769584___redundant_placeholder06
2while_while_cond_32769584___redundant_placeholder16
2while_while_cond_32769584___redundant_placeholder26
2while_while_cond_32769584___redundant_placeholder3
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
-: : : : :џџџџџџџџџP: ::::: 
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
:џџџџџџџџџP:

_output_shapes
: :

_output_shapes
:

М
0__inference_simple_rnn_90_layer_call_fn_32769197
inputs_0
unknown:PP
	unknown_0:P
	unknown_1:PP
identityЂStatefulPartitionedCallя
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџP*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_simple_rnn_90_layer_call_and_return_conditional_losses_32768587o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџP`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџP: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџP
"
_user_specified_name
inputs/0

ю
S__inference_simple_rnn_cell_13378_layer_call_and_return_conditional_losses_32768472

inputs

states0
matmul_readvariableop_resource:PP-
biasadd_readvariableop_resource:P2
 matmul_1_readvariableop_resource:PP
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:PP*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:P*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:PP*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџPG
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџPW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџPY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџP
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџP:џџџџџџџџџP: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџP
 
_user_specified_nameinputs:OK
'
_output_shapes
:џџџџџџџџџP
 
_user_specified_namestates
ю	

K__inference_sequential_90_layer_call_and_return_conditional_losses_32768924
simple_rnn_90_input(
simple_rnn_90_32768916:PP$
simple_rnn_90_32768918:P(
simple_rnn_90_32768920:PP
identityЂ%simple_rnn_90/StatefulPartitionedCallБ
%simple_rnn_90/StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_90_inputsimple_rnn_90_32768916simple_rnn_90_32768918simple_rnn_90_32768920*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџP*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_simple_rnn_90_layer_call_and_return_conditional_losses_32768849}
IdentityIdentity.simple_rnn_90/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџPn
NoOpNoOp&^simple_rnn_90/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџДP: : : 2N
%simple_rnn_90/StatefulPartitionedCall%simple_rnn_90/StatefulPartitionedCall:a ]
,
_output_shapes
:џџџџџџџџџДP
-
_user_specified_namesimple_rnn_90_input
ф
Д
while_cond_32768364
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_32768364___redundant_placeholder06
2while_while_cond_32768364___redundant_placeholder16
2while_while_cond_32768364___redundant_placeholder26
2while_while_cond_32768364___redundant_placeholder3
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
-: : : : :џџџџџџџџџP: ::::: 
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
:џџџџџџџџџP:

_output_shapes
: :

_output_shapes
:
ў:

!simple_rnn_90_while_body_327689888
4simple_rnn_90_while_simple_rnn_90_while_loop_counter>
:simple_rnn_90_while_simple_rnn_90_while_maximum_iterations#
simple_rnn_90_while_placeholder%
!simple_rnn_90_while_placeholder_1%
!simple_rnn_90_while_placeholder_27
3simple_rnn_90_while_simple_rnn_90_strided_slice_1_0s
osimple_rnn_90_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_90_tensorarrayunstack_tensorlistfromtensor_0\
Jsimple_rnn_90_while_simple_rnn_cell_13378_matmul_readvariableop_resource_0:PPY
Ksimple_rnn_90_while_simple_rnn_cell_13378_biasadd_readvariableop_resource_0:P^
Lsimple_rnn_90_while_simple_rnn_cell_13378_matmul_1_readvariableop_resource_0:PP 
simple_rnn_90_while_identity"
simple_rnn_90_while_identity_1"
simple_rnn_90_while_identity_2"
simple_rnn_90_while_identity_3"
simple_rnn_90_while_identity_45
1simple_rnn_90_while_simple_rnn_90_strided_slice_1q
msimple_rnn_90_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_90_tensorarrayunstack_tensorlistfromtensorZ
Hsimple_rnn_90_while_simple_rnn_cell_13378_matmul_readvariableop_resource:PPW
Isimple_rnn_90_while_simple_rnn_cell_13378_biasadd_readvariableop_resource:P\
Jsimple_rnn_90_while_simple_rnn_cell_13378_matmul_1_readvariableop_resource:PPЂ@simple_rnn_90/while/simple_rnn_cell_13378/BiasAdd/ReadVariableOpЂ?simple_rnn_90/while/simple_rnn_cell_13378/MatMul/ReadVariableOpЂAsimple_rnn_90/while/simple_rnn_cell_13378/MatMul_1/ReadVariableOp
Esimple_rnn_90/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџP   ь
7simple_rnn_90/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemosimple_rnn_90_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_90_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_90_while_placeholderNsimple_rnn_90/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџP*
element_dtype0Ъ
?simple_rnn_90/while/simple_rnn_cell_13378/MatMul/ReadVariableOpReadVariableOpJsimple_rnn_90_while_simple_rnn_cell_13378_matmul_readvariableop_resource_0*
_output_shapes

:PP*
dtype0ѕ
0simple_rnn_90/while/simple_rnn_cell_13378/MatMulMatMul>simple_rnn_90/while/TensorArrayV2Read/TensorListGetItem:item:0Gsimple_rnn_90/while/simple_rnn_cell_13378/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPШ
@simple_rnn_90/while/simple_rnn_cell_13378/BiasAdd/ReadVariableOpReadVariableOpKsimple_rnn_90_while_simple_rnn_cell_13378_biasadd_readvariableop_resource_0*
_output_shapes
:P*
dtype0є
1simple_rnn_90/while/simple_rnn_cell_13378/BiasAddBiasAdd:simple_rnn_90/while/simple_rnn_cell_13378/MatMul:product:0Hsimple_rnn_90/while/simple_rnn_cell_13378/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPЮ
Asimple_rnn_90/while/simple_rnn_cell_13378/MatMul_1/ReadVariableOpReadVariableOpLsimple_rnn_90_while_simple_rnn_cell_13378_matmul_1_readvariableop_resource_0*
_output_shapes

:PP*
dtype0м
2simple_rnn_90/while/simple_rnn_cell_13378/MatMul_1MatMul!simple_rnn_90_while_placeholder_2Isimple_rnn_90/while/simple_rnn_cell_13378/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPт
-simple_rnn_90/while/simple_rnn_cell_13378/addAddV2:simple_rnn_90/while/simple_rnn_cell_13378/BiasAdd:output:0<simple_rnn_90/while/simple_rnn_cell_13378/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџP
.simple_rnn_90/while/simple_rnn_cell_13378/TanhTanh1simple_rnn_90/while/simple_rnn_cell_13378/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџP
8simple_rnn_90/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!simple_rnn_90_while_placeholder_1simple_rnn_90_while_placeholder2simple_rnn_90/while/simple_rnn_cell_13378/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшв[
simple_rnn_90/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_90/while/addAddV2simple_rnn_90_while_placeholder"simple_rnn_90/while/add/y:output:0*
T0*
_output_shapes
: ]
simple_rnn_90/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_90/while/add_1AddV24simple_rnn_90_while_simple_rnn_90_while_loop_counter$simple_rnn_90/while/add_1/y:output:0*
T0*
_output_shapes
: 
simple_rnn_90/while/IdentityIdentitysimple_rnn_90/while/add_1:z:0^simple_rnn_90/while/NoOp*
T0*
_output_shapes
: Ђ
simple_rnn_90/while/Identity_1Identity:simple_rnn_90_while_simple_rnn_90_while_maximum_iterations^simple_rnn_90/while/NoOp*
T0*
_output_shapes
: 
simple_rnn_90/while/Identity_2Identitysimple_rnn_90/while/add:z:0^simple_rnn_90/while/NoOp*
T0*
_output_shapes
: У
simple_rnn_90/while/Identity_3IdentityHsimple_rnn_90/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_90/while/NoOp*
T0*
_output_shapes
: :щшвЋ
simple_rnn_90/while/Identity_4Identity2simple_rnn_90/while/simple_rnn_cell_13378/Tanh:y:0^simple_rnn_90/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџPЃ
simple_rnn_90/while/NoOpNoOpA^simple_rnn_90/while/simple_rnn_cell_13378/BiasAdd/ReadVariableOp@^simple_rnn_90/while/simple_rnn_cell_13378/MatMul/ReadVariableOpB^simple_rnn_90/while/simple_rnn_cell_13378/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "E
simple_rnn_90_while_identity%simple_rnn_90/while/Identity:output:0"I
simple_rnn_90_while_identity_1'simple_rnn_90/while/Identity_1:output:0"I
simple_rnn_90_while_identity_2'simple_rnn_90/while/Identity_2:output:0"I
simple_rnn_90_while_identity_3'simple_rnn_90/while/Identity_3:output:0"I
simple_rnn_90_while_identity_4'simple_rnn_90/while/Identity_4:output:0"h
1simple_rnn_90_while_simple_rnn_90_strided_slice_13simple_rnn_90_while_simple_rnn_90_strided_slice_1_0"
Isimple_rnn_90_while_simple_rnn_cell_13378_biasadd_readvariableop_resourceKsimple_rnn_90_while_simple_rnn_cell_13378_biasadd_readvariableop_resource_0"
Jsimple_rnn_90_while_simple_rnn_cell_13378_matmul_1_readvariableop_resourceLsimple_rnn_90_while_simple_rnn_cell_13378_matmul_1_readvariableop_resource_0"
Hsimple_rnn_90_while_simple_rnn_cell_13378_matmul_readvariableop_resourceJsimple_rnn_90_while_simple_rnn_cell_13378_matmul_readvariableop_resource_0"р
msimple_rnn_90_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_90_tensorarrayunstack_tensorlistfromtensorosimple_rnn_90_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_90_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџP: : : : : 2
@simple_rnn_90/while/simple_rnn_cell_13378/BiasAdd/ReadVariableOp@simple_rnn_90/while/simple_rnn_cell_13378/BiasAdd/ReadVariableOp2
?simple_rnn_90/while/simple_rnn_cell_13378/MatMul/ReadVariableOp?simple_rnn_90/while/simple_rnn_cell_13378/MatMul/ReadVariableOp2
Asimple_rnn_90/while/simple_rnn_cell_13378/MatMul_1/ReadVariableOpAsimple_rnn_90/while/simple_rnn_cell_13378/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџP:

_output_shapes
: :

_output_shapes
: 
ѓ>
и
K__inference_simple_rnn_90_layer_call_and_return_conditional_losses_32769435
inputs_0F
4simple_rnn_cell_13378_matmul_readvariableop_resource:PPC
5simple_rnn_cell_13378_biasadd_readvariableop_resource:PH
6simple_rnn_cell_13378_matmul_1_readvariableop_resource:PP
identityЂ,simple_rnn_cell_13378/BiasAdd/ReadVariableOpЂ+simple_rnn_cell_13378/MatMul/ReadVariableOpЂ-simple_rnn_cell_13378/MatMul_1/ReadVariableOpЂwhile=
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
:џџџџџџџџџPc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџPD
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
valueB"џџџџP   р
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
:џџџџџџџџџP*
shrink_axis_mask 
+simple_rnn_cell_13378/MatMul/ReadVariableOpReadVariableOp4simple_rnn_cell_13378_matmul_readvariableop_resource*
_output_shapes

:PP*
dtype0Ї
simple_rnn_cell_13378/MatMulMatMulstrided_slice_2:output:03simple_rnn_cell_13378/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџP
,simple_rnn_cell_13378/BiasAdd/ReadVariableOpReadVariableOp5simple_rnn_cell_13378_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0И
simple_rnn_cell_13378/BiasAddBiasAdd&simple_rnn_cell_13378/MatMul:product:04simple_rnn_cell_13378/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPЄ
-simple_rnn_cell_13378/MatMul_1/ReadVariableOpReadVariableOp6simple_rnn_cell_13378_matmul_1_readvariableop_resource*
_output_shapes

:PP*
dtype0Ё
simple_rnn_cell_13378/MatMul_1MatMulzeros:output:05simple_rnn_cell_13378/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPІ
simple_rnn_cell_13378/addAddV2&simple_rnn_cell_13378/BiasAdd:output:0(simple_rnn_cell_13378/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџPs
simple_rnn_cell_13378/TanhTanhsimple_rnn_cell_13378/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџPn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџP   И
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:04simple_rnn_cell_13378_matmul_readvariableop_resource5simple_rnn_cell_13378_biasadd_readvariableop_resource6simple_rnn_cell_13378_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџP: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_32769369*
condR
while_cond_32769368*8
output_shapes'
%: : : : :џџџџџџџџџP: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџP   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџP*
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
:џџџџџџџџџP*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџPg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџPл
NoOpNoOp-^simple_rnn_cell_13378/BiasAdd/ReadVariableOp,^simple_rnn_cell_13378/MatMul/ReadVariableOp.^simple_rnn_cell_13378/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџP: : : 2\
,simple_rnn_cell_13378/BiasAdd/ReadVariableOp,simple_rnn_cell_13378/BiasAdd/ReadVariableOp2Z
+simple_rnn_cell_13378/MatMul/ReadVariableOp+simple_rnn_cell_13378/MatMul/ReadVariableOp2^
-simple_rnn_cell_13378/MatMul_1/ReadVariableOp-simple_rnn_cell_13378/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџP
"
_user_specified_name
inputs/0
Х

р
8__inference_simple_rnn_cell_13378_layer_call_fn_32769679

inputs
states_0
unknown:PP
	unknown_0:P
	unknown_1:PP
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
&:џџџџџџџџџP:џџџџџџџџџP*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *\
fWRU
S__inference_simple_rnn_cell_13378_layer_call_and_return_conditional_losses_32768472o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџPq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџP`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџP:џџџџџџџџџP: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџP
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџP
"
_user_specified_name
states/0
У>
ж
K__inference_simple_rnn_90_layer_call_and_return_conditional_losses_32768849

inputsF
4simple_rnn_cell_13378_matmul_readvariableop_resource:PPC
5simple_rnn_cell_13378_biasadd_readvariableop_resource:PH
6simple_rnn_cell_13378_matmul_1_readvariableop_resource:PP
identityЂ,simple_rnn_cell_13378/BiasAdd/ReadVariableOpЂ+simple_rnn_cell_13378/MatMul/ReadVariableOpЂ-simple_rnn_cell_13378/MatMul_1/ReadVariableOpЂwhile;
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
:џџџџџџџџџPc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ДџџџџџџџџџPD
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
valueB"џџџџP   р
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
:џџџџџџџџџP*
shrink_axis_mask 
+simple_rnn_cell_13378/MatMul/ReadVariableOpReadVariableOp4simple_rnn_cell_13378_matmul_readvariableop_resource*
_output_shapes

:PP*
dtype0Ї
simple_rnn_cell_13378/MatMulMatMulstrided_slice_2:output:03simple_rnn_cell_13378/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџP
,simple_rnn_cell_13378/BiasAdd/ReadVariableOpReadVariableOp5simple_rnn_cell_13378_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0И
simple_rnn_cell_13378/BiasAddBiasAdd&simple_rnn_cell_13378/MatMul:product:04simple_rnn_cell_13378/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPЄ
-simple_rnn_cell_13378/MatMul_1/ReadVariableOpReadVariableOp6simple_rnn_cell_13378_matmul_1_readvariableop_resource*
_output_shapes

:PP*
dtype0Ё
simple_rnn_cell_13378/MatMul_1MatMulzeros:output:05simple_rnn_cell_13378/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPІ
simple_rnn_cell_13378/addAddV2&simple_rnn_cell_13378/BiasAdd:output:0(simple_rnn_cell_13378/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџPs
simple_rnn_cell_13378/TanhTanhsimple_rnn_cell_13378/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџPn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџP   И
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:04simple_rnn_cell_13378_matmul_readvariableop_resource5simple_rnn_cell_13378_biasadd_readvariableop_resource6simple_rnn_cell_13378_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџP: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_32768783*
condR
while_cond_32768782*8
output_shapes'
%: : : : :џџџџџџџџџP: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџP   У
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ДџџџџџџџџџP*
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
:џџџџџџџџџP*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџДPg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџPл
NoOpNoOp-^simple_rnn_cell_13378/BiasAdd/ReadVariableOp,^simple_rnn_cell_13378/MatMul/ReadVariableOp.^simple_rnn_cell_13378/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџДP: : : 2\
,simple_rnn_cell_13378/BiasAdd/ReadVariableOp,simple_rnn_cell_13378/BiasAdd/ReadVariableOp2Z
+simple_rnn_cell_13378/MatMul/ReadVariableOp+simple_rnn_cell_13378/MatMul/ReadVariableOp2^
-simple_rnn_cell_13378/MatMul_1/ReadVariableOp-simple_rnn_cell_13378/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:џџџџџџџџџДP
 
_user_specified_nameinputs
H
К
/sequential_90_simple_rnn_90_while_body_32768238T
Psequential_90_simple_rnn_90_while_sequential_90_simple_rnn_90_while_loop_counterZ
Vsequential_90_simple_rnn_90_while_sequential_90_simple_rnn_90_while_maximum_iterations1
-sequential_90_simple_rnn_90_while_placeholder3
/sequential_90_simple_rnn_90_while_placeholder_13
/sequential_90_simple_rnn_90_while_placeholder_2S
Osequential_90_simple_rnn_90_while_sequential_90_simple_rnn_90_strided_slice_1_0
sequential_90_simple_rnn_90_while_tensorarrayv2read_tensorlistgetitem_sequential_90_simple_rnn_90_tensorarrayunstack_tensorlistfromtensor_0j
Xsequential_90_simple_rnn_90_while_simple_rnn_cell_13378_matmul_readvariableop_resource_0:PPg
Ysequential_90_simple_rnn_90_while_simple_rnn_cell_13378_biasadd_readvariableop_resource_0:Pl
Zsequential_90_simple_rnn_90_while_simple_rnn_cell_13378_matmul_1_readvariableop_resource_0:PP.
*sequential_90_simple_rnn_90_while_identity0
,sequential_90_simple_rnn_90_while_identity_10
,sequential_90_simple_rnn_90_while_identity_20
,sequential_90_simple_rnn_90_while_identity_30
,sequential_90_simple_rnn_90_while_identity_4Q
Msequential_90_simple_rnn_90_while_sequential_90_simple_rnn_90_strided_slice_1
sequential_90_simple_rnn_90_while_tensorarrayv2read_tensorlistgetitem_sequential_90_simple_rnn_90_tensorarrayunstack_tensorlistfromtensorh
Vsequential_90_simple_rnn_90_while_simple_rnn_cell_13378_matmul_readvariableop_resource:PPe
Wsequential_90_simple_rnn_90_while_simple_rnn_cell_13378_biasadd_readvariableop_resource:Pj
Xsequential_90_simple_rnn_90_while_simple_rnn_cell_13378_matmul_1_readvariableop_resource:PPЂNsequential_90/simple_rnn_90/while/simple_rnn_cell_13378/BiasAdd/ReadVariableOpЂMsequential_90/simple_rnn_90/while/simple_rnn_cell_13378/MatMul/ReadVariableOpЂOsequential_90/simple_rnn_90/while/simple_rnn_cell_13378/MatMul_1/ReadVariableOpЄ
Ssequential_90/simple_rnn_90/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџP   Г
Esequential_90/simple_rnn_90/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_90_simple_rnn_90_while_tensorarrayv2read_tensorlistgetitem_sequential_90_simple_rnn_90_tensorarrayunstack_tensorlistfromtensor_0-sequential_90_simple_rnn_90_while_placeholder\sequential_90/simple_rnn_90/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџP*
element_dtype0ц
Msequential_90/simple_rnn_90/while/simple_rnn_cell_13378/MatMul/ReadVariableOpReadVariableOpXsequential_90_simple_rnn_90_while_simple_rnn_cell_13378_matmul_readvariableop_resource_0*
_output_shapes

:PP*
dtype0
>sequential_90/simple_rnn_90/while/simple_rnn_cell_13378/MatMulMatMulLsequential_90/simple_rnn_90/while/TensorArrayV2Read/TensorListGetItem:item:0Usequential_90/simple_rnn_90/while/simple_rnn_cell_13378/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPф
Nsequential_90/simple_rnn_90/while/simple_rnn_cell_13378/BiasAdd/ReadVariableOpReadVariableOpYsequential_90_simple_rnn_90_while_simple_rnn_cell_13378_biasadd_readvariableop_resource_0*
_output_shapes
:P*
dtype0
?sequential_90/simple_rnn_90/while/simple_rnn_cell_13378/BiasAddBiasAddHsequential_90/simple_rnn_90/while/simple_rnn_cell_13378/MatMul:product:0Vsequential_90/simple_rnn_90/while/simple_rnn_cell_13378/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPъ
Osequential_90/simple_rnn_90/while/simple_rnn_cell_13378/MatMul_1/ReadVariableOpReadVariableOpZsequential_90_simple_rnn_90_while_simple_rnn_cell_13378_matmul_1_readvariableop_resource_0*
_output_shapes

:PP*
dtype0
@sequential_90/simple_rnn_90/while/simple_rnn_cell_13378/MatMul_1MatMul/sequential_90_simple_rnn_90_while_placeholder_2Wsequential_90/simple_rnn_90/while/simple_rnn_cell_13378/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџP
;sequential_90/simple_rnn_90/while/simple_rnn_cell_13378/addAddV2Hsequential_90/simple_rnn_90/while/simple_rnn_cell_13378/BiasAdd:output:0Jsequential_90/simple_rnn_90/while/simple_rnn_cell_13378/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџPЗ
<sequential_90/simple_rnn_90/while/simple_rnn_cell_13378/TanhTanh?sequential_90/simple_rnn_90/while/simple_rnn_cell_13378/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџPН
Fsequential_90/simple_rnn_90/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem/sequential_90_simple_rnn_90_while_placeholder_1-sequential_90_simple_rnn_90_while_placeholder@sequential_90/simple_rnn_90/while/simple_rnn_cell_13378/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшвi
'sequential_90/simple_rnn_90/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :А
%sequential_90/simple_rnn_90/while/addAddV2-sequential_90_simple_rnn_90_while_placeholder0sequential_90/simple_rnn_90/while/add/y:output:0*
T0*
_output_shapes
: k
)sequential_90/simple_rnn_90/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :з
'sequential_90/simple_rnn_90/while/add_1AddV2Psequential_90_simple_rnn_90_while_sequential_90_simple_rnn_90_while_loop_counter2sequential_90/simple_rnn_90/while/add_1/y:output:0*
T0*
_output_shapes
: ­
*sequential_90/simple_rnn_90/while/IdentityIdentity+sequential_90/simple_rnn_90/while/add_1:z:0'^sequential_90/simple_rnn_90/while/NoOp*
T0*
_output_shapes
: к
,sequential_90/simple_rnn_90/while/Identity_1IdentityVsequential_90_simple_rnn_90_while_sequential_90_simple_rnn_90_while_maximum_iterations'^sequential_90/simple_rnn_90/while/NoOp*
T0*
_output_shapes
: ­
,sequential_90/simple_rnn_90/while/Identity_2Identity)sequential_90/simple_rnn_90/while/add:z:0'^sequential_90/simple_rnn_90/while/NoOp*
T0*
_output_shapes
: э
,sequential_90/simple_rnn_90/while/Identity_3IdentityVsequential_90/simple_rnn_90/while/TensorArrayV2Write/TensorListSetItem:output_handle:0'^sequential_90/simple_rnn_90/while/NoOp*
T0*
_output_shapes
: :щшве
,sequential_90/simple_rnn_90/while/Identity_4Identity@sequential_90/simple_rnn_90/while/simple_rnn_cell_13378/Tanh:y:0'^sequential_90/simple_rnn_90/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџPл
&sequential_90/simple_rnn_90/while/NoOpNoOpO^sequential_90/simple_rnn_90/while/simple_rnn_cell_13378/BiasAdd/ReadVariableOpN^sequential_90/simple_rnn_90/while/simple_rnn_cell_13378/MatMul/ReadVariableOpP^sequential_90/simple_rnn_90/while/simple_rnn_cell_13378/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "a
*sequential_90_simple_rnn_90_while_identity3sequential_90/simple_rnn_90/while/Identity:output:0"e
,sequential_90_simple_rnn_90_while_identity_15sequential_90/simple_rnn_90/while/Identity_1:output:0"e
,sequential_90_simple_rnn_90_while_identity_25sequential_90/simple_rnn_90/while/Identity_2:output:0"e
,sequential_90_simple_rnn_90_while_identity_35sequential_90/simple_rnn_90/while/Identity_3:output:0"e
,sequential_90_simple_rnn_90_while_identity_45sequential_90/simple_rnn_90/while/Identity_4:output:0" 
Msequential_90_simple_rnn_90_while_sequential_90_simple_rnn_90_strided_slice_1Osequential_90_simple_rnn_90_while_sequential_90_simple_rnn_90_strided_slice_1_0"Д
Wsequential_90_simple_rnn_90_while_simple_rnn_cell_13378_biasadd_readvariableop_resourceYsequential_90_simple_rnn_90_while_simple_rnn_cell_13378_biasadd_readvariableop_resource_0"Ж
Xsequential_90_simple_rnn_90_while_simple_rnn_cell_13378_matmul_1_readvariableop_resourceZsequential_90_simple_rnn_90_while_simple_rnn_cell_13378_matmul_1_readvariableop_resource_0"В
Vsequential_90_simple_rnn_90_while_simple_rnn_cell_13378_matmul_readvariableop_resourceXsequential_90_simple_rnn_90_while_simple_rnn_cell_13378_matmul_readvariableop_resource_0"
sequential_90_simple_rnn_90_while_tensorarrayv2read_tensorlistgetitem_sequential_90_simple_rnn_90_tensorarrayunstack_tensorlistfromtensorsequential_90_simple_rnn_90_while_tensorarrayv2read_tensorlistgetitem_sequential_90_simple_rnn_90_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџP: : : : : 2 
Nsequential_90/simple_rnn_90/while/simple_rnn_cell_13378/BiasAdd/ReadVariableOpNsequential_90/simple_rnn_90/while/simple_rnn_cell_13378/BiasAdd/ReadVariableOp2
Msequential_90/simple_rnn_90/while/simple_rnn_cell_13378/MatMul/ReadVariableOpMsequential_90/simple_rnn_90/while/simple_rnn_cell_13378/MatMul/ReadVariableOp2Ђ
Osequential_90/simple_rnn_90/while/simple_rnn_cell_13378/MatMul_1/ReadVariableOpOsequential_90/simple_rnn_90/while/simple_rnn_cell_13378/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџP:

_output_shapes
: :

_output_shapes
: 
ф
Д
while_cond_32769260
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_32769260___redundant_placeholder06
2while_while_cond_32769260___redundant_placeholder16
2while_while_cond_32769260___redundant_placeholder26
2while_while_cond_32769260___redundant_placeholder3
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
-: : : : :џџџџџџџџџP: ::::: 
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
:џџџџџџџџџP:

_output_shapes
: :

_output_shapes
:
У>
ж
K__inference_simple_rnn_90_layer_call_and_return_conditional_losses_32768710

inputsF
4simple_rnn_cell_13378_matmul_readvariableop_resource:PPC
5simple_rnn_cell_13378_biasadd_readvariableop_resource:PH
6simple_rnn_cell_13378_matmul_1_readvariableop_resource:PP
identityЂ,simple_rnn_cell_13378/BiasAdd/ReadVariableOpЂ+simple_rnn_cell_13378/MatMul/ReadVariableOpЂ-simple_rnn_cell_13378/MatMul_1/ReadVariableOpЂwhile;
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
:џџџџџџџџџPc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ДџџџџџџџџџPD
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
valueB"џџџџP   р
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
:џџџџџџџџџP*
shrink_axis_mask 
+simple_rnn_cell_13378/MatMul/ReadVariableOpReadVariableOp4simple_rnn_cell_13378_matmul_readvariableop_resource*
_output_shapes

:PP*
dtype0Ї
simple_rnn_cell_13378/MatMulMatMulstrided_slice_2:output:03simple_rnn_cell_13378/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџP
,simple_rnn_cell_13378/BiasAdd/ReadVariableOpReadVariableOp5simple_rnn_cell_13378_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0И
simple_rnn_cell_13378/BiasAddBiasAdd&simple_rnn_cell_13378/MatMul:product:04simple_rnn_cell_13378/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPЄ
-simple_rnn_cell_13378/MatMul_1/ReadVariableOpReadVariableOp6simple_rnn_cell_13378_matmul_1_readvariableop_resource*
_output_shapes

:PP*
dtype0Ё
simple_rnn_cell_13378/MatMul_1MatMulzeros:output:05simple_rnn_cell_13378/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPІ
simple_rnn_cell_13378/addAddV2&simple_rnn_cell_13378/BiasAdd:output:0(simple_rnn_cell_13378/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџPs
simple_rnn_cell_13378/TanhTanhsimple_rnn_cell_13378/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџPn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџP   И
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:04simple_rnn_cell_13378_matmul_readvariableop_resource5simple_rnn_cell_13378_biasadd_readvariableop_resource6simple_rnn_cell_13378_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџP: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_32768644*
condR
while_cond_32768643*8
output_shapes'
%: : : : :џџџџџџџџџP: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџP   У
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ДџџџџџџџџџP*
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
:џџџџџџџџџP*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџДPg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџPл
NoOpNoOp-^simple_rnn_cell_13378/BiasAdd/ReadVariableOp,^simple_rnn_cell_13378/MatMul/ReadVariableOp.^simple_rnn_cell_13378/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџДP: : : 2\
,simple_rnn_cell_13378/BiasAdd/ReadVariableOp,simple_rnn_cell_13378/BiasAdd/ReadVariableOp2Z
+simple_rnn_cell_13378/MatMul/ReadVariableOp+simple_rnn_cell_13378/MatMul/ReadVariableOp2^
-simple_rnn_cell_13378/MatMul_1/ReadVariableOp-simple_rnn_cell_13378/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:џџџџџџџџџДP
 
_user_specified_nameinputs
Ч	

K__inference_sequential_90_layer_call_and_return_conditional_losses_32768882

inputs(
simple_rnn_90_32768874:PP$
simple_rnn_90_32768876:P(
simple_rnn_90_32768878:PP
identityЂ%simple_rnn_90/StatefulPartitionedCallЄ
%simple_rnn_90/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_90_32768874simple_rnn_90_32768876simple_rnn_90_32768878*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџP*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_simple_rnn_90_layer_call_and_return_conditional_losses_32768849}
IdentityIdentity.simple_rnn_90/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџPn
NoOpNoOp&^simple_rnn_90/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџДP: : : 2N
%simple_rnn_90/StatefulPartitionedCall%simple_rnn_90/StatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџДP
 
_user_specified_nameinputs
№-
ю
while_body_32769477
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0N
<while_simple_rnn_cell_13378_matmul_readvariableop_resource_0:PPK
=while_simple_rnn_cell_13378_biasadd_readvariableop_resource_0:PP
>while_simple_rnn_cell_13378_matmul_1_readvariableop_resource_0:PP
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorL
:while_simple_rnn_cell_13378_matmul_readvariableop_resource:PPI
;while_simple_rnn_cell_13378_biasadd_readvariableop_resource:PN
<while_simple_rnn_cell_13378_matmul_1_readvariableop_resource:PPЂ2while/simple_rnn_cell_13378/BiasAdd/ReadVariableOpЂ1while/simple_rnn_cell_13378/MatMul/ReadVariableOpЂ3while/simple_rnn_cell_13378/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџP   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџP*
element_dtype0Ў
1while/simple_rnn_cell_13378/MatMul/ReadVariableOpReadVariableOp<while_simple_rnn_cell_13378_matmul_readvariableop_resource_0*
_output_shapes

:PP*
dtype0Ы
"while/simple_rnn_cell_13378/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:09while/simple_rnn_cell_13378/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPЌ
2while/simple_rnn_cell_13378/BiasAdd/ReadVariableOpReadVariableOp=while_simple_rnn_cell_13378_biasadd_readvariableop_resource_0*
_output_shapes
:P*
dtype0Ъ
#while/simple_rnn_cell_13378/BiasAddBiasAdd,while/simple_rnn_cell_13378/MatMul:product:0:while/simple_rnn_cell_13378/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPВ
3while/simple_rnn_cell_13378/MatMul_1/ReadVariableOpReadVariableOp>while_simple_rnn_cell_13378_matmul_1_readvariableop_resource_0*
_output_shapes

:PP*
dtype0В
$while/simple_rnn_cell_13378/MatMul_1MatMulwhile_placeholder_2;while/simple_rnn_cell_13378/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPИ
while/simple_rnn_cell_13378/addAddV2,while/simple_rnn_cell_13378/BiasAdd:output:0.while/simple_rnn_cell_13378/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџP
 while/simple_rnn_cell_13378/TanhTanh#while/simple_rnn_cell_13378/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџPЭ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder$while/simple_rnn_cell_13378/Tanh:y:0*
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
while/Identity_4Identity$while/simple_rnn_cell_13378/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџPы

while/NoOpNoOp3^while/simple_rnn_cell_13378/BiasAdd/ReadVariableOp2^while/simple_rnn_cell_13378/MatMul/ReadVariableOp4^while/simple_rnn_cell_13378/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"|
;while_simple_rnn_cell_13378_biasadd_readvariableop_resource=while_simple_rnn_cell_13378_biasadd_readvariableop_resource_0"~
<while_simple_rnn_cell_13378_matmul_1_readvariableop_resource>while_simple_rnn_cell_13378_matmul_1_readvariableop_resource_0"z
:while_simple_rnn_cell_13378_matmul_readvariableop_resource<while_simple_rnn_cell_13378_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџP: : : : : 2h
2while/simple_rnn_cell_13378/BiasAdd/ReadVariableOp2while/simple_rnn_cell_13378/BiasAdd/ReadVariableOp2f
1while/simple_rnn_cell_13378/MatMul/ReadVariableOp1while/simple_rnn_cell_13378/MatMul/ReadVariableOp2j
3while/simple_rnn_cell_13378/MatMul_1/ReadVariableOp3while/simple_rnn_cell_13378/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџP:

_output_shapes
: :

_output_shapes
: 
У>
ж
K__inference_simple_rnn_90_layer_call_and_return_conditional_losses_32769651

inputsF
4simple_rnn_cell_13378_matmul_readvariableop_resource:PPC
5simple_rnn_cell_13378_biasadd_readvariableop_resource:PH
6simple_rnn_cell_13378_matmul_1_readvariableop_resource:PP
identityЂ,simple_rnn_cell_13378/BiasAdd/ReadVariableOpЂ+simple_rnn_cell_13378/MatMul/ReadVariableOpЂ-simple_rnn_cell_13378/MatMul_1/ReadVariableOpЂwhile;
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
:џџџџџџџџџPc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ДџџџџџџџџџPD
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
valueB"џџџџP   р
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
:џџџџџџџџџP*
shrink_axis_mask 
+simple_rnn_cell_13378/MatMul/ReadVariableOpReadVariableOp4simple_rnn_cell_13378_matmul_readvariableop_resource*
_output_shapes

:PP*
dtype0Ї
simple_rnn_cell_13378/MatMulMatMulstrided_slice_2:output:03simple_rnn_cell_13378/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџP
,simple_rnn_cell_13378/BiasAdd/ReadVariableOpReadVariableOp5simple_rnn_cell_13378_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0И
simple_rnn_cell_13378/BiasAddBiasAdd&simple_rnn_cell_13378/MatMul:product:04simple_rnn_cell_13378/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPЄ
-simple_rnn_cell_13378/MatMul_1/ReadVariableOpReadVariableOp6simple_rnn_cell_13378_matmul_1_readvariableop_resource*
_output_shapes

:PP*
dtype0Ё
simple_rnn_cell_13378/MatMul_1MatMulzeros:output:05simple_rnn_cell_13378/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPІ
simple_rnn_cell_13378/addAddV2&simple_rnn_cell_13378/BiasAdd:output:0(simple_rnn_cell_13378/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџPs
simple_rnn_cell_13378/TanhTanhsimple_rnn_cell_13378/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџPn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџP   И
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:04simple_rnn_cell_13378_matmul_readvariableop_resource5simple_rnn_cell_13378_biasadd_readvariableop_resource6simple_rnn_cell_13378_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџP: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_32769585*
condR
while_cond_32769584*8
output_shapes'
%: : : : :џџџџџџџџџP: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџP   У
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ДџџџџџџџџџP*
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
:џџџџџџџџџP*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџДPg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџPл
NoOpNoOp-^simple_rnn_cell_13378/BiasAdd/ReadVariableOp,^simple_rnn_cell_13378/MatMul/ReadVariableOp.^simple_rnn_cell_13378/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџДP: : : 2\
,simple_rnn_cell_13378/BiasAdd/ReadVariableOp,simple_rnn_cell_13378/BiasAdd/ReadVariableOp2Z
+simple_rnn_cell_13378/MatMul/ReadVariableOp+simple_rnn_cell_13378/MatMul/ReadVariableOp2^
-simple_rnn_cell_13378/MatMul_1/ReadVariableOp-simple_rnn_cell_13378/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:џџџџџџџџџДP
 
_user_specified_nameinputs
к
Ш
/sequential_90_simple_rnn_90_while_cond_32768237T
Psequential_90_simple_rnn_90_while_sequential_90_simple_rnn_90_while_loop_counterZ
Vsequential_90_simple_rnn_90_while_sequential_90_simple_rnn_90_while_maximum_iterations1
-sequential_90_simple_rnn_90_while_placeholder3
/sequential_90_simple_rnn_90_while_placeholder_13
/sequential_90_simple_rnn_90_while_placeholder_2V
Rsequential_90_simple_rnn_90_while_less_sequential_90_simple_rnn_90_strided_slice_1n
jsequential_90_simple_rnn_90_while_sequential_90_simple_rnn_90_while_cond_32768237___redundant_placeholder0n
jsequential_90_simple_rnn_90_while_sequential_90_simple_rnn_90_while_cond_32768237___redundant_placeholder1n
jsequential_90_simple_rnn_90_while_sequential_90_simple_rnn_90_while_cond_32768237___redundant_placeholder2n
jsequential_90_simple_rnn_90_while_sequential_90_simple_rnn_90_while_cond_32768237___redundant_placeholder3.
*sequential_90_simple_rnn_90_while_identity
в
&sequential_90/simple_rnn_90/while/LessLess-sequential_90_simple_rnn_90_while_placeholderRsequential_90_simple_rnn_90_while_less_sequential_90_simple_rnn_90_strided_slice_1*
T0*
_output_shapes
: 
*sequential_90/simple_rnn_90/while/IdentityIdentity*sequential_90/simple_rnn_90/while/Less:z:0*
T0
*
_output_shapes
: "a
*sequential_90_simple_rnn_90_while_identity3sequential_90/simple_rnn_90/while/Identity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-: : : : :џџџџџџџџџP: ::::: 
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
:џџџџџџџџџP:

_output_shapes
: :

_output_shapes
:

К
0__inference_sequential_90_layer_call_fn_32768946

inputs
unknown:PP
	unknown_0:P
	unknown_1:PP
identityЂStatefulPartitionedCallэ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџP*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_sequential_90_layer_call_and_return_conditional_losses_32768882o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџP`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџДP: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџДP
 
_user_specified_nameinputs
у
з
!__inference__traced_save_32769745
file_prefixI
Esavev2_simple_rnn_90_simple_rnn_cell_13378_kernel_read_readvariableopS
Osavev2_simple_rnn_90_simple_rnn_cell_13378_recurrent_kernel_read_readvariableopG
Csavev2_simple_rnn_90_simple_rnn_cell_13378_bias_read_readvariableop
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
valueBB B B B 
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Esavev2_simple_rnn_90_simple_rnn_cell_13378_kernel_read_readvariableopOsavev2_simple_rnn_90_simple_rnn_cell_13378_recurrent_kernel_read_readvariableopCsavev2_simple_rnn_90_simple_rnn_cell_13378_bias_read_readvariableopsavev2_const"/device:CPU:0*
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
: :PP:PP:P: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:PP:$ 

_output_shapes

:PP: 

_output_shapes
:P:

_output_shapes
: 
­
Ч
0__inference_sequential_90_layer_call_fn_32768902
simple_rnn_90_input
unknown:PP
	unknown_0:P
	unknown_1:PP
identityЂStatefulPartitionedCallњ
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_90_inputunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџP*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_sequential_90_layer_call_and_return_conditional_losses_32768882o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџP`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџДP: : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
,
_output_shapes
:џџџџџџџџџДP
-
_user_specified_namesimple_rnn_90_input

ќ
$__inference__traced_restore_32769764
file_prefixM
;assignvariableop_simple_rnn_90_simple_rnn_cell_13378_kernel:PPY
Gassignvariableop_1_simple_rnn_90_simple_rnn_cell_13378_recurrent_kernel:PPI
;assignvariableop_2_simple_rnn_90_simple_rnn_cell_13378_bias:P

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
:І
AssignVariableOpAssignVariableOp;assignvariableop_simple_rnn_90_simple_rnn_cell_13378_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Ж
AssignVariableOp_1AssignVariableOpGassignvariableop_1_simple_rnn_90_simple_rnn_cell_13378_recurrent_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Њ
AssignVariableOp_2AssignVariableOp;assignvariableop_2_simple_rnn_90_simple_rnn_cell_13378_biasIdentity_2:output:0"/device:CPU:0*
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
ў:

!simple_rnn_90_while_body_327690968
4simple_rnn_90_while_simple_rnn_90_while_loop_counter>
:simple_rnn_90_while_simple_rnn_90_while_maximum_iterations#
simple_rnn_90_while_placeholder%
!simple_rnn_90_while_placeholder_1%
!simple_rnn_90_while_placeholder_27
3simple_rnn_90_while_simple_rnn_90_strided_slice_1_0s
osimple_rnn_90_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_90_tensorarrayunstack_tensorlistfromtensor_0\
Jsimple_rnn_90_while_simple_rnn_cell_13378_matmul_readvariableop_resource_0:PPY
Ksimple_rnn_90_while_simple_rnn_cell_13378_biasadd_readvariableop_resource_0:P^
Lsimple_rnn_90_while_simple_rnn_cell_13378_matmul_1_readvariableop_resource_0:PP 
simple_rnn_90_while_identity"
simple_rnn_90_while_identity_1"
simple_rnn_90_while_identity_2"
simple_rnn_90_while_identity_3"
simple_rnn_90_while_identity_45
1simple_rnn_90_while_simple_rnn_90_strided_slice_1q
msimple_rnn_90_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_90_tensorarrayunstack_tensorlistfromtensorZ
Hsimple_rnn_90_while_simple_rnn_cell_13378_matmul_readvariableop_resource:PPW
Isimple_rnn_90_while_simple_rnn_cell_13378_biasadd_readvariableop_resource:P\
Jsimple_rnn_90_while_simple_rnn_cell_13378_matmul_1_readvariableop_resource:PPЂ@simple_rnn_90/while/simple_rnn_cell_13378/BiasAdd/ReadVariableOpЂ?simple_rnn_90/while/simple_rnn_cell_13378/MatMul/ReadVariableOpЂAsimple_rnn_90/while/simple_rnn_cell_13378/MatMul_1/ReadVariableOp
Esimple_rnn_90/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџP   ь
7simple_rnn_90/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemosimple_rnn_90_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_90_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_90_while_placeholderNsimple_rnn_90/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџP*
element_dtype0Ъ
?simple_rnn_90/while/simple_rnn_cell_13378/MatMul/ReadVariableOpReadVariableOpJsimple_rnn_90_while_simple_rnn_cell_13378_matmul_readvariableop_resource_0*
_output_shapes

:PP*
dtype0ѕ
0simple_rnn_90/while/simple_rnn_cell_13378/MatMulMatMul>simple_rnn_90/while/TensorArrayV2Read/TensorListGetItem:item:0Gsimple_rnn_90/while/simple_rnn_cell_13378/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPШ
@simple_rnn_90/while/simple_rnn_cell_13378/BiasAdd/ReadVariableOpReadVariableOpKsimple_rnn_90_while_simple_rnn_cell_13378_biasadd_readvariableop_resource_0*
_output_shapes
:P*
dtype0є
1simple_rnn_90/while/simple_rnn_cell_13378/BiasAddBiasAdd:simple_rnn_90/while/simple_rnn_cell_13378/MatMul:product:0Hsimple_rnn_90/while/simple_rnn_cell_13378/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPЮ
Asimple_rnn_90/while/simple_rnn_cell_13378/MatMul_1/ReadVariableOpReadVariableOpLsimple_rnn_90_while_simple_rnn_cell_13378_matmul_1_readvariableop_resource_0*
_output_shapes

:PP*
dtype0м
2simple_rnn_90/while/simple_rnn_cell_13378/MatMul_1MatMul!simple_rnn_90_while_placeholder_2Isimple_rnn_90/while/simple_rnn_cell_13378/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPт
-simple_rnn_90/while/simple_rnn_cell_13378/addAddV2:simple_rnn_90/while/simple_rnn_cell_13378/BiasAdd:output:0<simple_rnn_90/while/simple_rnn_cell_13378/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџP
.simple_rnn_90/while/simple_rnn_cell_13378/TanhTanh1simple_rnn_90/while/simple_rnn_cell_13378/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџP
8simple_rnn_90/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem!simple_rnn_90_while_placeholder_1simple_rnn_90_while_placeholder2simple_rnn_90/while/simple_rnn_cell_13378/Tanh:y:0*
_output_shapes
: *
element_dtype0:щшв[
simple_rnn_90/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_90/while/addAddV2simple_rnn_90_while_placeholder"simple_rnn_90/while/add/y:output:0*
T0*
_output_shapes
: ]
simple_rnn_90/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
simple_rnn_90/while/add_1AddV24simple_rnn_90_while_simple_rnn_90_while_loop_counter$simple_rnn_90/while/add_1/y:output:0*
T0*
_output_shapes
: 
simple_rnn_90/while/IdentityIdentitysimple_rnn_90/while/add_1:z:0^simple_rnn_90/while/NoOp*
T0*
_output_shapes
: Ђ
simple_rnn_90/while/Identity_1Identity:simple_rnn_90_while_simple_rnn_90_while_maximum_iterations^simple_rnn_90/while/NoOp*
T0*
_output_shapes
: 
simple_rnn_90/while/Identity_2Identitysimple_rnn_90/while/add:z:0^simple_rnn_90/while/NoOp*
T0*
_output_shapes
: У
simple_rnn_90/while/Identity_3IdentityHsimple_rnn_90/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_90/while/NoOp*
T0*
_output_shapes
: :щшвЋ
simple_rnn_90/while/Identity_4Identity2simple_rnn_90/while/simple_rnn_cell_13378/Tanh:y:0^simple_rnn_90/while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџPЃ
simple_rnn_90/while/NoOpNoOpA^simple_rnn_90/while/simple_rnn_cell_13378/BiasAdd/ReadVariableOp@^simple_rnn_90/while/simple_rnn_cell_13378/MatMul/ReadVariableOpB^simple_rnn_90/while/simple_rnn_cell_13378/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "E
simple_rnn_90_while_identity%simple_rnn_90/while/Identity:output:0"I
simple_rnn_90_while_identity_1'simple_rnn_90/while/Identity_1:output:0"I
simple_rnn_90_while_identity_2'simple_rnn_90/while/Identity_2:output:0"I
simple_rnn_90_while_identity_3'simple_rnn_90/while/Identity_3:output:0"I
simple_rnn_90_while_identity_4'simple_rnn_90/while/Identity_4:output:0"h
1simple_rnn_90_while_simple_rnn_90_strided_slice_13simple_rnn_90_while_simple_rnn_90_strided_slice_1_0"
Isimple_rnn_90_while_simple_rnn_cell_13378_biasadd_readvariableop_resourceKsimple_rnn_90_while_simple_rnn_cell_13378_biasadd_readvariableop_resource_0"
Jsimple_rnn_90_while_simple_rnn_cell_13378_matmul_1_readvariableop_resourceLsimple_rnn_90_while_simple_rnn_cell_13378_matmul_1_readvariableop_resource_0"
Hsimple_rnn_90_while_simple_rnn_cell_13378_matmul_readvariableop_resourceJsimple_rnn_90_while_simple_rnn_cell_13378_matmul_readvariableop_resource_0"р
msimple_rnn_90_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_90_tensorarrayunstack_tensorlistfromtensorosimple_rnn_90_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_90_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџP: : : : : 2
@simple_rnn_90/while/simple_rnn_cell_13378/BiasAdd/ReadVariableOp@simple_rnn_90/while/simple_rnn_cell_13378/BiasAdd/ReadVariableOp2
?simple_rnn_90/while/simple_rnn_cell_13378/MatMul/ReadVariableOp?simple_rnn_90/while/simple_rnn_cell_13378/MatMul/ReadVariableOp2
Asimple_rnn_90/while/simple_rnn_cell_13378/MatMul_1/ReadVariableOpAsimple_rnn_90/while/simple_rnn_cell_13378/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџP:

_output_shapes
: :

_output_shapes
: 

№
S__inference_simple_rnn_cell_13378_layer_call_and_return_conditional_losses_32769713

inputs
states_00
matmul_readvariableop_resource:PP-
biasadd_readvariableop_resource:P2
 matmul_1_readvariableop_resource:PP
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:PP*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:P*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:PP*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџPG
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџPW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџPY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџP
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџP:џџџџџџџџџP: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџP
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџP
"
_user_specified_name
states/0
ф
Д
while_cond_32768523
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_32768523___redundant_placeholder06
2while_while_cond_32768523___redundant_placeholder16
2while_while_cond_32768523___redundant_placeholder26
2while_while_cond_32768523___redundant_placeholder3
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
-: : : : :џџџџџџџџџP: ::::: 
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
:џџџџџџџџџP:

_output_shapes
: :

_output_shapes
:

К
0__inference_sequential_90_layer_call_fn_32768935

inputs
unknown:PP
	unknown_0:P
	unknown_1:PP
identityЂStatefulPartitionedCallэ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџP*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_sequential_90_layer_call_and_return_conditional_losses_32768719o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџP`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџДP: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџДP
 
_user_specified_nameinputs
ю	

K__inference_sequential_90_layer_call_and_return_conditional_losses_32768913
simple_rnn_90_input(
simple_rnn_90_32768905:PP$
simple_rnn_90_32768907:P(
simple_rnn_90_32768909:PP
identityЂ%simple_rnn_90/StatefulPartitionedCallБ
%simple_rnn_90/StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_90_inputsimple_rnn_90_32768905simple_rnn_90_32768907simple_rnn_90_32768909*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџP*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_simple_rnn_90_layer_call_and_return_conditional_losses_32768710}
IdentityIdentity.simple_rnn_90/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџPn
NoOpNoOp&^simple_rnn_90/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџДP: : : 2N
%simple_rnn_90/StatefulPartitionedCall%simple_rnn_90/StatefulPartitionedCall:a ]
,
_output_shapes
:џџџџџџџџџДP
-
_user_specified_namesimple_rnn_90_input

К
0__inference_simple_rnn_90_layer_call_fn_32769219

inputs
unknown:PP
	unknown_0:P
	unknown_1:PP
identityЂStatefulPartitionedCallэ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџP*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_simple_rnn_90_layer_call_and_return_conditional_losses_32768849o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџP`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџДP: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџДP
 
_user_specified_nameinputs
ф
Д
while_cond_32769368
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_32769368___redundant_placeholder06
2while_while_cond_32769368___redundant_placeholder16
2while_while_cond_32769368___redundant_placeholder26
2while_while_cond_32769368___redundant_placeholder3
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
-: : : : :џџџџџџџџџP: ::::: 
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
:џџџџџџџџџP:

_output_shapes
: :

_output_shapes
:

№
S__inference_simple_rnn_cell_13378_layer_call_and_return_conditional_losses_32769696

inputs
states_00
matmul_readvariableop_resource:PP-
biasadd_readvariableop_resource:P2
 matmul_1_readvariableop_resource:PP
identity

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:PP*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:P*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPx
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:PP*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPd
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџPG
TanhTanhadd:z:0*
T0*'
_output_shapes
:џџџџџџџџџPW
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџPY

Identity_1IdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџP
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџP:џџџџџџџџџP: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџP
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџP
"
_user_specified_name
states/0
№-
ю
while_body_32768644
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0N
<while_simple_rnn_cell_13378_matmul_readvariableop_resource_0:PPK
=while_simple_rnn_cell_13378_biasadd_readvariableop_resource_0:PP
>while_simple_rnn_cell_13378_matmul_1_readvariableop_resource_0:PP
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorL
:while_simple_rnn_cell_13378_matmul_readvariableop_resource:PPI
;while_simple_rnn_cell_13378_biasadd_readvariableop_resource:PN
<while_simple_rnn_cell_13378_matmul_1_readvariableop_resource:PPЂ2while/simple_rnn_cell_13378/BiasAdd/ReadVariableOpЂ1while/simple_rnn_cell_13378/MatMul/ReadVariableOpЂ3while/simple_rnn_cell_13378/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџP   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџP*
element_dtype0Ў
1while/simple_rnn_cell_13378/MatMul/ReadVariableOpReadVariableOp<while_simple_rnn_cell_13378_matmul_readvariableop_resource_0*
_output_shapes

:PP*
dtype0Ы
"while/simple_rnn_cell_13378/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:09while/simple_rnn_cell_13378/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPЌ
2while/simple_rnn_cell_13378/BiasAdd/ReadVariableOpReadVariableOp=while_simple_rnn_cell_13378_biasadd_readvariableop_resource_0*
_output_shapes
:P*
dtype0Ъ
#while/simple_rnn_cell_13378/BiasAddBiasAdd,while/simple_rnn_cell_13378/MatMul:product:0:while/simple_rnn_cell_13378/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPВ
3while/simple_rnn_cell_13378/MatMul_1/ReadVariableOpReadVariableOp>while_simple_rnn_cell_13378_matmul_1_readvariableop_resource_0*
_output_shapes

:PP*
dtype0В
$while/simple_rnn_cell_13378/MatMul_1MatMulwhile_placeholder_2;while/simple_rnn_cell_13378/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPИ
while/simple_rnn_cell_13378/addAddV2,while/simple_rnn_cell_13378/BiasAdd:output:0.while/simple_rnn_cell_13378/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџP
 while/simple_rnn_cell_13378/TanhTanh#while/simple_rnn_cell_13378/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџPЭ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder$while/simple_rnn_cell_13378/Tanh:y:0*
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
while/Identity_4Identity$while/simple_rnn_cell_13378/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџPы

while/NoOpNoOp3^while/simple_rnn_cell_13378/BiasAdd/ReadVariableOp2^while/simple_rnn_cell_13378/MatMul/ReadVariableOp4^while/simple_rnn_cell_13378/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"|
;while_simple_rnn_cell_13378_biasadd_readvariableop_resource=while_simple_rnn_cell_13378_biasadd_readvariableop_resource_0"~
<while_simple_rnn_cell_13378_matmul_1_readvariableop_resource>while_simple_rnn_cell_13378_matmul_1_readvariableop_resource_0"z
:while_simple_rnn_cell_13378_matmul_readvariableop_resource<while_simple_rnn_cell_13378_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџP: : : : : 2h
2while/simple_rnn_cell_13378/BiasAdd/ReadVariableOp2while/simple_rnn_cell_13378/BiasAdd/ReadVariableOp2f
1while/simple_rnn_cell_13378/MatMul/ReadVariableOp1while/simple_rnn_cell_13378/MatMul/ReadVariableOp2j
3while/simple_rnn_cell_13378/MatMul_1/ReadVariableOp3while/simple_rnn_cell_13378/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџP:

_output_shapes
: :

_output_shapes
: 
ѓK
И
K__inference_sequential_90_layer_call_and_return_conditional_losses_32769054

inputsT
Bsimple_rnn_90_simple_rnn_cell_13378_matmul_readvariableop_resource:PPQ
Csimple_rnn_90_simple_rnn_cell_13378_biasadd_readvariableop_resource:PV
Dsimple_rnn_90_simple_rnn_cell_13378_matmul_1_readvariableop_resource:PP
identityЂ:simple_rnn_90/simple_rnn_cell_13378/BiasAdd/ReadVariableOpЂ9simple_rnn_90/simple_rnn_cell_13378/MatMul/ReadVariableOpЂ;simple_rnn_90/simple_rnn_cell_13378/MatMul_1/ReadVariableOpЂsimple_rnn_90/whileI
simple_rnn_90/ShapeShapeinputs*
T0*
_output_shapes
:k
!simple_rnn_90/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#simple_rnn_90/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#simple_rnn_90/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
simple_rnn_90/strided_sliceStridedSlicesimple_rnn_90/Shape:output:0*simple_rnn_90/strided_slice/stack:output:0,simple_rnn_90/strided_slice/stack_1:output:0,simple_rnn_90/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
simple_rnn_90/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :P
simple_rnn_90/zeros/packedPack$simple_rnn_90/strided_slice:output:0%simple_rnn_90/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:^
simple_rnn_90/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
simple_rnn_90/zerosFill#simple_rnn_90/zeros/packed:output:0"simple_rnn_90/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџPq
simple_rnn_90/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
simple_rnn_90/transpose	Transposeinputs%simple_rnn_90/transpose/perm:output:0*
T0*,
_output_shapes
:ДџџџџџџџџџP`
simple_rnn_90/Shape_1Shapesimple_rnn_90/transpose:y:0*
T0*
_output_shapes
:m
#simple_rnn_90/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_90/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%simple_rnn_90/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ё
simple_rnn_90/strided_slice_1StridedSlicesimple_rnn_90/Shape_1:output:0,simple_rnn_90/strided_slice_1/stack:output:0.simple_rnn_90/strided_slice_1/stack_1:output:0.simple_rnn_90/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
)simple_rnn_90/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџо
simple_rnn_90/TensorArrayV2TensorListReserve2simple_rnn_90/TensorArrayV2/element_shape:output:0&simple_rnn_90/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Csimple_rnn_90/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџP   
5simple_rnn_90/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_90/transpose:y:0Lsimple_rnn_90/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвm
#simple_rnn_90/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_90/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%simple_rnn_90/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Џ
simple_rnn_90/strided_slice_2StridedSlicesimple_rnn_90/transpose:y:0,simple_rnn_90/strided_slice_2/stack:output:0.simple_rnn_90/strided_slice_2/stack_1:output:0.simple_rnn_90/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџP*
shrink_axis_maskМ
9simple_rnn_90/simple_rnn_cell_13378/MatMul/ReadVariableOpReadVariableOpBsimple_rnn_90_simple_rnn_cell_13378_matmul_readvariableop_resource*
_output_shapes

:PP*
dtype0б
*simple_rnn_90/simple_rnn_cell_13378/MatMulMatMul&simple_rnn_90/strided_slice_2:output:0Asimple_rnn_90/simple_rnn_cell_13378/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPК
:simple_rnn_90/simple_rnn_cell_13378/BiasAdd/ReadVariableOpReadVariableOpCsimple_rnn_90_simple_rnn_cell_13378_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0т
+simple_rnn_90/simple_rnn_cell_13378/BiasAddBiasAdd4simple_rnn_90/simple_rnn_cell_13378/MatMul:product:0Bsimple_rnn_90/simple_rnn_cell_13378/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPР
;simple_rnn_90/simple_rnn_cell_13378/MatMul_1/ReadVariableOpReadVariableOpDsimple_rnn_90_simple_rnn_cell_13378_matmul_1_readvariableop_resource*
_output_shapes

:PP*
dtype0Ы
,simple_rnn_90/simple_rnn_cell_13378/MatMul_1MatMulsimple_rnn_90/zeros:output:0Csimple_rnn_90/simple_rnn_cell_13378/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPа
'simple_rnn_90/simple_rnn_cell_13378/addAddV24simple_rnn_90/simple_rnn_cell_13378/BiasAdd:output:06simple_rnn_90/simple_rnn_cell_13378/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџP
(simple_rnn_90/simple_rnn_cell_13378/TanhTanh+simple_rnn_90/simple_rnn_cell_13378/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџP|
+simple_rnn_90/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџP   т
simple_rnn_90/TensorArrayV2_1TensorListReserve4simple_rnn_90/TensorArrayV2_1/element_shape:output:0&simple_rnn_90/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвT
simple_rnn_90/timeConst*
_output_shapes
: *
dtype0*
value	B : q
&simple_rnn_90/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџb
 simple_rnn_90/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
simple_rnn_90/whileWhile)simple_rnn_90/while/loop_counter:output:0/simple_rnn_90/while/maximum_iterations:output:0simple_rnn_90/time:output:0&simple_rnn_90/TensorArrayV2_1:handle:0simple_rnn_90/zeros:output:0&simple_rnn_90/strided_slice_1:output:0Esimple_rnn_90/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsimple_rnn_90_simple_rnn_cell_13378_matmul_readvariableop_resourceCsimple_rnn_90_simple_rnn_cell_13378_biasadd_readvariableop_resourceDsimple_rnn_90_simple_rnn_cell_13378_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџP: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *-
body%R#
!simple_rnn_90_while_body_32768988*-
cond%R#
!simple_rnn_90_while_cond_32768987*8
output_shapes'
%: : : : :џџџџџџџџџP: : : : : *
parallel_iterations 
>simple_rnn_90/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџP   э
0simple_rnn_90/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_90/while:output:3Gsimple_rnn_90/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ДџџџџџџџџџP*
element_dtype0v
#simple_rnn_90/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџo
%simple_rnn_90/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_90/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Э
simple_rnn_90/strided_slice_3StridedSlice9simple_rnn_90/TensorArrayV2Stack/TensorListStack:tensor:0,simple_rnn_90/strided_slice_3/stack:output:0.simple_rnn_90/strided_slice_3/stack_1:output:0.simple_rnn_90/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџP*
shrink_axis_masks
simple_rnn_90/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          С
simple_rnn_90/transpose_1	Transpose9simple_rnn_90/TensorArrayV2Stack/TensorListStack:tensor:0'simple_rnn_90/transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџДPu
IdentityIdentity&simple_rnn_90/strided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџP
NoOpNoOp;^simple_rnn_90/simple_rnn_cell_13378/BiasAdd/ReadVariableOp:^simple_rnn_90/simple_rnn_cell_13378/MatMul/ReadVariableOp<^simple_rnn_90/simple_rnn_cell_13378/MatMul_1/ReadVariableOp^simple_rnn_90/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџДP: : : 2x
:simple_rnn_90/simple_rnn_cell_13378/BiasAdd/ReadVariableOp:simple_rnn_90/simple_rnn_cell_13378/BiasAdd/ReadVariableOp2v
9simple_rnn_90/simple_rnn_cell_13378/MatMul/ReadVariableOp9simple_rnn_90/simple_rnn_cell_13378/MatMul/ReadVariableOp2z
;simple_rnn_90/simple_rnn_cell_13378/MatMul_1/ReadVariableOp;simple_rnn_90/simple_rnn_cell_13378/MatMul_1/ReadVariableOp2*
simple_rnn_90/whilesimple_rnn_90/while:T P
,
_output_shapes
:џџџџџџџџџДP
 
_user_specified_nameinputs
ѓK
И
K__inference_sequential_90_layer_call_and_return_conditional_losses_32769162

inputsT
Bsimple_rnn_90_simple_rnn_cell_13378_matmul_readvariableop_resource:PPQ
Csimple_rnn_90_simple_rnn_cell_13378_biasadd_readvariableop_resource:PV
Dsimple_rnn_90_simple_rnn_cell_13378_matmul_1_readvariableop_resource:PP
identityЂ:simple_rnn_90/simple_rnn_cell_13378/BiasAdd/ReadVariableOpЂ9simple_rnn_90/simple_rnn_cell_13378/MatMul/ReadVariableOpЂ;simple_rnn_90/simple_rnn_cell_13378/MatMul_1/ReadVariableOpЂsimple_rnn_90/whileI
simple_rnn_90/ShapeShapeinputs*
T0*
_output_shapes
:k
!simple_rnn_90/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#simple_rnn_90/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#simple_rnn_90/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
simple_rnn_90/strided_sliceStridedSlicesimple_rnn_90/Shape:output:0*simple_rnn_90/strided_slice/stack:output:0,simple_rnn_90/strided_slice/stack_1:output:0,simple_rnn_90/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
simple_rnn_90/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :P
simple_rnn_90/zeros/packedPack$simple_rnn_90/strided_slice:output:0%simple_rnn_90/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:^
simple_rnn_90/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
simple_rnn_90/zerosFill#simple_rnn_90/zeros/packed:output:0"simple_rnn_90/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџPq
simple_rnn_90/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
simple_rnn_90/transpose	Transposeinputs%simple_rnn_90/transpose/perm:output:0*
T0*,
_output_shapes
:ДџџџџџџџџџP`
simple_rnn_90/Shape_1Shapesimple_rnn_90/transpose:y:0*
T0*
_output_shapes
:m
#simple_rnn_90/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_90/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%simple_rnn_90/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ё
simple_rnn_90/strided_slice_1StridedSlicesimple_rnn_90/Shape_1:output:0,simple_rnn_90/strided_slice_1/stack:output:0.simple_rnn_90/strided_slice_1/stack_1:output:0.simple_rnn_90/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
)simple_rnn_90/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџо
simple_rnn_90/TensorArrayV2TensorListReserve2simple_rnn_90/TensorArrayV2/element_shape:output:0&simple_rnn_90/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
Csimple_rnn_90/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџP   
5simple_rnn_90/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_90/transpose:y:0Lsimple_rnn_90/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвm
#simple_rnn_90/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_90/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%simple_rnn_90/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Џ
simple_rnn_90/strided_slice_2StridedSlicesimple_rnn_90/transpose:y:0,simple_rnn_90/strided_slice_2/stack:output:0.simple_rnn_90/strided_slice_2/stack_1:output:0.simple_rnn_90/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџP*
shrink_axis_maskМ
9simple_rnn_90/simple_rnn_cell_13378/MatMul/ReadVariableOpReadVariableOpBsimple_rnn_90_simple_rnn_cell_13378_matmul_readvariableop_resource*
_output_shapes

:PP*
dtype0б
*simple_rnn_90/simple_rnn_cell_13378/MatMulMatMul&simple_rnn_90/strided_slice_2:output:0Asimple_rnn_90/simple_rnn_cell_13378/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPК
:simple_rnn_90/simple_rnn_cell_13378/BiasAdd/ReadVariableOpReadVariableOpCsimple_rnn_90_simple_rnn_cell_13378_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0т
+simple_rnn_90/simple_rnn_cell_13378/BiasAddBiasAdd4simple_rnn_90/simple_rnn_cell_13378/MatMul:product:0Bsimple_rnn_90/simple_rnn_cell_13378/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPР
;simple_rnn_90/simple_rnn_cell_13378/MatMul_1/ReadVariableOpReadVariableOpDsimple_rnn_90_simple_rnn_cell_13378_matmul_1_readvariableop_resource*
_output_shapes

:PP*
dtype0Ы
,simple_rnn_90/simple_rnn_cell_13378/MatMul_1MatMulsimple_rnn_90/zeros:output:0Csimple_rnn_90/simple_rnn_cell_13378/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPа
'simple_rnn_90/simple_rnn_cell_13378/addAddV24simple_rnn_90/simple_rnn_cell_13378/BiasAdd:output:06simple_rnn_90/simple_rnn_cell_13378/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџP
(simple_rnn_90/simple_rnn_cell_13378/TanhTanh+simple_rnn_90/simple_rnn_cell_13378/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџP|
+simple_rnn_90/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџP   т
simple_rnn_90/TensorArrayV2_1TensorListReserve4simple_rnn_90/TensorArrayV2_1/element_shape:output:0&simple_rnn_90/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвT
simple_rnn_90/timeConst*
_output_shapes
: *
dtype0*
value	B : q
&simple_rnn_90/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџb
 simple_rnn_90/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
simple_rnn_90/whileWhile)simple_rnn_90/while/loop_counter:output:0/simple_rnn_90/while/maximum_iterations:output:0simple_rnn_90/time:output:0&simple_rnn_90/TensorArrayV2_1:handle:0simple_rnn_90/zeros:output:0&simple_rnn_90/strided_slice_1:output:0Esimple_rnn_90/TensorArrayUnstack/TensorListFromTensor:output_handle:0Bsimple_rnn_90_simple_rnn_cell_13378_matmul_readvariableop_resourceCsimple_rnn_90_simple_rnn_cell_13378_biasadd_readvariableop_resourceDsimple_rnn_90_simple_rnn_cell_13378_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџP: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *-
body%R#
!simple_rnn_90_while_body_32769096*-
cond%R#
!simple_rnn_90_while_cond_32769095*8
output_shapes'
%: : : : :џџџџџџџџџP: : : : : *
parallel_iterations 
>simple_rnn_90/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџP   э
0simple_rnn_90/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_90/while:output:3Gsimple_rnn_90/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ДџџџџџџџџџP*
element_dtype0v
#simple_rnn_90/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџo
%simple_rnn_90/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: o
%simple_rnn_90/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Э
simple_rnn_90/strided_slice_3StridedSlice9simple_rnn_90/TensorArrayV2Stack/TensorListStack:tensor:0,simple_rnn_90/strided_slice_3/stack:output:0.simple_rnn_90/strided_slice_3/stack_1:output:0.simple_rnn_90/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџP*
shrink_axis_masks
simple_rnn_90/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          С
simple_rnn_90/transpose_1	Transpose9simple_rnn_90/TensorArrayV2Stack/TensorListStack:tensor:0'simple_rnn_90/transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџДPu
IdentityIdentity&simple_rnn_90/strided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџP
NoOpNoOp;^simple_rnn_90/simple_rnn_cell_13378/BiasAdd/ReadVariableOp:^simple_rnn_90/simple_rnn_cell_13378/MatMul/ReadVariableOp<^simple_rnn_90/simple_rnn_cell_13378/MatMul_1/ReadVariableOp^simple_rnn_90/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџДP: : : 2x
:simple_rnn_90/simple_rnn_cell_13378/BiasAdd/ReadVariableOp:simple_rnn_90/simple_rnn_cell_13378/BiasAdd/ReadVariableOp2v
9simple_rnn_90/simple_rnn_cell_13378/MatMul/ReadVariableOp9simple_rnn_90/simple_rnn_cell_13378/MatMul/ReadVariableOp2z
;simple_rnn_90/simple_rnn_cell_13378/MatMul_1/ReadVariableOp;simple_rnn_90/simple_rnn_cell_13378/MatMul_1/ReadVariableOp2*
simple_rnn_90/whilesimple_rnn_90/while:T P
,
_output_shapes
:џџџџџџџџџДP
 
_user_specified_nameinputs
Х

р
8__inference_simple_rnn_cell_13378_layer_call_fn_32769665

inputs
states_0
unknown:PP
	unknown_0:P
	unknown_1:PP
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
&:џџџџџџџџџP:џџџџџџџџџP*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *\
fWRU
S__inference_simple_rnn_cell_13378_layer_call_and_return_conditional_losses_32768352o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџPq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџP`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:џџџџџџџџџP:џџџџџџџџџP: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџP
 
_user_specified_nameinputs:QM
'
_output_shapes
:џџџџџџџџџP
"
_user_specified_name
states/0
ф
Д
while_cond_32768643
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_16
2while_while_cond_32768643___redundant_placeholder06
2while_while_cond_32768643___redundant_placeholder16
2while_while_cond_32768643___redundant_placeholder26
2while_while_cond_32768643___redundant_placeholder3
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
-: : : : :џџџџџџџџџP: ::::: 
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
:џџџџџџџџџP:

_output_shapes
: :

_output_shapes
:
р4
Д
K__inference_simple_rnn_90_layer_call_and_return_conditional_losses_32768428

inputs0
simple_rnn_cell_13378_32768353:PP,
simple_rnn_cell_13378_32768355:P0
simple_rnn_cell_13378_32768357:PP
identityЂ-simple_rnn_cell_13378/StatefulPartitionedCallЂwhile;
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
:џџџџџџџџџPc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџPD
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
valueB"џџџџP   р
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
:џџџџџџџџџP*
shrink_axis_mask
-simple_rnn_cell_13378/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_13378_32768353simple_rnn_cell_13378_32768355simple_rnn_cell_13378_32768357*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџP:џџџџџџџџџP*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *\
fWRU
S__inference_simple_rnn_cell_13378_layer_call_and_return_conditional_losses_32768352n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџP   И
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_13378_32768353simple_rnn_cell_13378_32768355simple_rnn_cell_13378_32768357*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџP: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_32768365*
condR
while_cond_32768364*8
output_shapes'
%: : : : :џџџџџџџџџP: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџP   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџP*
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
:џџџџџџџџџP*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџPg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџP~
NoOpNoOp.^simple_rnn_cell_13378/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџP: : : 2^
-simple_rnn_cell_13378/StatefulPartitionedCall-simple_rnn_cell_13378/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџP
 
_user_specified_nameinputs
Ч	

K__inference_sequential_90_layer_call_and_return_conditional_losses_32768719

inputs(
simple_rnn_90_32768711:PP$
simple_rnn_90_32768713:P(
simple_rnn_90_32768715:PP
identityЂ%simple_rnn_90/StatefulPartitionedCallЄ
%simple_rnn_90/StatefulPartitionedCallStatefulPartitionedCallinputssimple_rnn_90_32768711simple_rnn_90_32768713simple_rnn_90_32768715*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџP*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_simple_rnn_90_layer_call_and_return_conditional_losses_32768710}
IdentityIdentity.simple_rnn_90/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџPn
NoOpNoOp&^simple_rnn_90/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџДP: : : 2N
%simple_rnn_90/StatefulPartitionedCall%simple_rnn_90/StatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџДP
 
_user_specified_nameinputs
У>
ж
K__inference_simple_rnn_90_layer_call_and_return_conditional_losses_32769543

inputsF
4simple_rnn_cell_13378_matmul_readvariableop_resource:PPC
5simple_rnn_cell_13378_biasadd_readvariableop_resource:PH
6simple_rnn_cell_13378_matmul_1_readvariableop_resource:PP
identityЂ,simple_rnn_cell_13378/BiasAdd/ReadVariableOpЂ+simple_rnn_cell_13378/MatMul/ReadVariableOpЂ-simple_rnn_cell_13378/MatMul_1/ReadVariableOpЂwhile;
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
:џџџџџџџџџPc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ДџџџџџџџџџPD
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
valueB"џџџџP   р
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
:џџџџџџџџџP*
shrink_axis_mask 
+simple_rnn_cell_13378/MatMul/ReadVariableOpReadVariableOp4simple_rnn_cell_13378_matmul_readvariableop_resource*
_output_shapes

:PP*
dtype0Ї
simple_rnn_cell_13378/MatMulMatMulstrided_slice_2:output:03simple_rnn_cell_13378/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџP
,simple_rnn_cell_13378/BiasAdd/ReadVariableOpReadVariableOp5simple_rnn_cell_13378_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0И
simple_rnn_cell_13378/BiasAddBiasAdd&simple_rnn_cell_13378/MatMul:product:04simple_rnn_cell_13378/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPЄ
-simple_rnn_cell_13378/MatMul_1/ReadVariableOpReadVariableOp6simple_rnn_cell_13378_matmul_1_readvariableop_resource*
_output_shapes

:PP*
dtype0Ё
simple_rnn_cell_13378/MatMul_1MatMulzeros:output:05simple_rnn_cell_13378/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPІ
simple_rnn_cell_13378/addAddV2&simple_rnn_cell_13378/BiasAdd:output:0(simple_rnn_cell_13378/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџPs
simple_rnn_cell_13378/TanhTanhsimple_rnn_cell_13378/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџPn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџP   И
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:04simple_rnn_cell_13378_matmul_readvariableop_resource5simple_rnn_cell_13378_biasadd_readvariableop_resource6simple_rnn_cell_13378_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџP: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_32769477*
condR
while_cond_32769476*8
output_shapes'
%: : : : :џџџџџџџџџP: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџP   У
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ДџџџџџџџџџP*
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
:џџџџџџџџџP*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџДPg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџPл
NoOpNoOp-^simple_rnn_cell_13378/BiasAdd/ReadVariableOp,^simple_rnn_cell_13378/MatMul/ReadVariableOp.^simple_rnn_cell_13378/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџДP: : : 2\
,simple_rnn_cell_13378/BiasAdd/ReadVariableOp,simple_rnn_cell_13378/BiasAdd/ReadVariableOp2Z
+simple_rnn_cell_13378/MatMul/ReadVariableOp+simple_rnn_cell_13378/MatMul/ReadVariableOp2^
-simple_rnn_cell_13378/MatMul_1/ReadVariableOp-simple_rnn_cell_13378/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:џџџџџџџџџДP
 
_user_specified_nameinputs
№-
ю
while_body_32769585
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0N
<while_simple_rnn_cell_13378_matmul_readvariableop_resource_0:PPK
=while_simple_rnn_cell_13378_biasadd_readvariableop_resource_0:PP
>while_simple_rnn_cell_13378_matmul_1_readvariableop_resource_0:PP
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorL
:while_simple_rnn_cell_13378_matmul_readvariableop_resource:PPI
;while_simple_rnn_cell_13378_biasadd_readvariableop_resource:PN
<while_simple_rnn_cell_13378_matmul_1_readvariableop_resource:PPЂ2while/simple_rnn_cell_13378/BiasAdd/ReadVariableOpЂ1while/simple_rnn_cell_13378/MatMul/ReadVariableOpЂ3while/simple_rnn_cell_13378/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџP   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџP*
element_dtype0Ў
1while/simple_rnn_cell_13378/MatMul/ReadVariableOpReadVariableOp<while_simple_rnn_cell_13378_matmul_readvariableop_resource_0*
_output_shapes

:PP*
dtype0Ы
"while/simple_rnn_cell_13378/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:09while/simple_rnn_cell_13378/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPЌ
2while/simple_rnn_cell_13378/BiasAdd/ReadVariableOpReadVariableOp=while_simple_rnn_cell_13378_biasadd_readvariableop_resource_0*
_output_shapes
:P*
dtype0Ъ
#while/simple_rnn_cell_13378/BiasAddBiasAdd,while/simple_rnn_cell_13378/MatMul:product:0:while/simple_rnn_cell_13378/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPВ
3while/simple_rnn_cell_13378/MatMul_1/ReadVariableOpReadVariableOp>while_simple_rnn_cell_13378_matmul_1_readvariableop_resource_0*
_output_shapes

:PP*
dtype0В
$while/simple_rnn_cell_13378/MatMul_1MatMulwhile_placeholder_2;while/simple_rnn_cell_13378/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPИ
while/simple_rnn_cell_13378/addAddV2,while/simple_rnn_cell_13378/BiasAdd:output:0.while/simple_rnn_cell_13378/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџP
 while/simple_rnn_cell_13378/TanhTanh#while/simple_rnn_cell_13378/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџPЭ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder$while/simple_rnn_cell_13378/Tanh:y:0*
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
while/Identity_4Identity$while/simple_rnn_cell_13378/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџPы

while/NoOpNoOp3^while/simple_rnn_cell_13378/BiasAdd/ReadVariableOp2^while/simple_rnn_cell_13378/MatMul/ReadVariableOp4^while/simple_rnn_cell_13378/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"|
;while_simple_rnn_cell_13378_biasadd_readvariableop_resource=while_simple_rnn_cell_13378_biasadd_readvariableop_resource_0"~
<while_simple_rnn_cell_13378_matmul_1_readvariableop_resource>while_simple_rnn_cell_13378_matmul_1_readvariableop_resource_0"z
:while_simple_rnn_cell_13378_matmul_readvariableop_resource<while_simple_rnn_cell_13378_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџP: : : : : 2h
2while/simple_rnn_cell_13378/BiasAdd/ReadVariableOp2while/simple_rnn_cell_13378/BiasAdd/ReadVariableOp2f
1while/simple_rnn_cell_13378/MatMul/ReadVariableOp1while/simple_rnn_cell_13378/MatMul/ReadVariableOp2j
3while/simple_rnn_cell_13378/MatMul_1/ReadVariableOp3while/simple_rnn_cell_13378/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџP:

_output_shapes
: :

_output_shapes
: 
"
ћ
while_body_32768365
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_08
&while_simple_rnn_cell_13378_32768387_0:PP4
&while_simple_rnn_cell_13378_32768389_0:P8
&while_simple_rnn_cell_13378_32768391_0:PP
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor6
$while_simple_rnn_cell_13378_32768387:PP2
$while_simple_rnn_cell_13378_32768389:P6
$while_simple_rnn_cell_13378_32768391:PPЂ3while/simple_rnn_cell_13378/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџP   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџP*
element_dtype0О
3while/simple_rnn_cell_13378/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2&while_simple_rnn_cell_13378_32768387_0&while_simple_rnn_cell_13378_32768389_0&while_simple_rnn_cell_13378_32768391_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџP:џџџџџџџџџP*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *\
fWRU
S__inference_simple_rnn_cell_13378_layer_call_and_return_conditional_losses_32768352х
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder<while/simple_rnn_cell_13378/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity<while/simple_rnn_cell_13378/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџP

while/NoOpNoOp4^while/simple_rnn_cell_13378/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"N
$while_simple_rnn_cell_13378_32768387&while_simple_rnn_cell_13378_32768387_0"N
$while_simple_rnn_cell_13378_32768389&while_simple_rnn_cell_13378_32768389_0"N
$while_simple_rnn_cell_13378_32768391&while_simple_rnn_cell_13378_32768391_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџP: : : : : 2j
3while/simple_rnn_cell_13378/StatefulPartitionedCall3while/simple_rnn_cell_13378/StatefulPartitionedCall: 
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
:џџџџџџџџџP:

_output_shapes
: :

_output_shapes
: 

М
0__inference_simple_rnn_90_layer_call_fn_32769186
inputs_0
unknown:PP
	unknown_0:P
	unknown_1:PP
identityЂStatefulPartitionedCallя
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџP*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_simple_rnn_90_layer_call_and_return_conditional_losses_32768428o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџP`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџP: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџP
"
_user_specified_name
inputs/0
ГY
џ
#__inference__wrapped_model_32768304
simple_rnn_90_inputb
Psequential_90_simple_rnn_90_simple_rnn_cell_13378_matmul_readvariableop_resource:PP_
Qsequential_90_simple_rnn_90_simple_rnn_cell_13378_biasadd_readvariableop_resource:Pd
Rsequential_90_simple_rnn_90_simple_rnn_cell_13378_matmul_1_readvariableop_resource:PP
identityЂHsequential_90/simple_rnn_90/simple_rnn_cell_13378/BiasAdd/ReadVariableOpЂGsequential_90/simple_rnn_90/simple_rnn_cell_13378/MatMul/ReadVariableOpЂIsequential_90/simple_rnn_90/simple_rnn_cell_13378/MatMul_1/ReadVariableOpЂ!sequential_90/simple_rnn_90/whiled
!sequential_90/simple_rnn_90/ShapeShapesimple_rnn_90_input*
T0*
_output_shapes
:y
/sequential_90/simple_rnn_90/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1sequential_90/simple_rnn_90/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1sequential_90/simple_rnn_90/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:н
)sequential_90/simple_rnn_90/strided_sliceStridedSlice*sequential_90/simple_rnn_90/Shape:output:08sequential_90/simple_rnn_90/strided_slice/stack:output:0:sequential_90/simple_rnn_90/strided_slice/stack_1:output:0:sequential_90/simple_rnn_90/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*sequential_90/simple_rnn_90/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :PЧ
(sequential_90/simple_rnn_90/zeros/packedPack2sequential_90/simple_rnn_90/strided_slice:output:03sequential_90/simple_rnn_90/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:l
'sequential_90/simple_rnn_90/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Р
!sequential_90/simple_rnn_90/zerosFill1sequential_90/simple_rnn_90/zeros/packed:output:00sequential_90/simple_rnn_90/zeros/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџP
*sequential_90/simple_rnn_90/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Г
%sequential_90/simple_rnn_90/transpose	Transposesimple_rnn_90_input3sequential_90/simple_rnn_90/transpose/perm:output:0*
T0*,
_output_shapes
:ДџџџџџџџџџP|
#sequential_90/simple_rnn_90/Shape_1Shape)sequential_90/simple_rnn_90/transpose:y:0*
T0*
_output_shapes
:{
1sequential_90/simple_rnn_90/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3sequential_90/simple_rnn_90/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3sequential_90/simple_rnn_90/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ч
+sequential_90/simple_rnn_90/strided_slice_1StridedSlice,sequential_90/simple_rnn_90/Shape_1:output:0:sequential_90/simple_rnn_90/strided_slice_1/stack:output:0<sequential_90/simple_rnn_90/strided_slice_1/stack_1:output:0<sequential_90/simple_rnn_90/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
7sequential_90/simple_rnn_90/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџ
)sequential_90/simple_rnn_90/TensorArrayV2TensorListReserve@sequential_90/simple_rnn_90/TensorArrayV2/element_shape:output:04sequential_90/simple_rnn_90/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвЂ
Qsequential_90/simple_rnn_90/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџP   Д
Csequential_90/simple_rnn_90/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor)sequential_90/simple_rnn_90/transpose:y:0Zsequential_90/simple_rnn_90/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв{
1sequential_90/simple_rnn_90/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3sequential_90/simple_rnn_90/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3sequential_90/simple_rnn_90/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
+sequential_90/simple_rnn_90/strided_slice_2StridedSlice)sequential_90/simple_rnn_90/transpose:y:0:sequential_90/simple_rnn_90/strided_slice_2/stack:output:0<sequential_90/simple_rnn_90/strided_slice_2/stack_1:output:0<sequential_90/simple_rnn_90/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџP*
shrink_axis_maskи
Gsequential_90/simple_rnn_90/simple_rnn_cell_13378/MatMul/ReadVariableOpReadVariableOpPsequential_90_simple_rnn_90_simple_rnn_cell_13378_matmul_readvariableop_resource*
_output_shapes

:PP*
dtype0ћ
8sequential_90/simple_rnn_90/simple_rnn_cell_13378/MatMulMatMul4sequential_90/simple_rnn_90/strided_slice_2:output:0Osequential_90/simple_rnn_90/simple_rnn_cell_13378/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPж
Hsequential_90/simple_rnn_90/simple_rnn_cell_13378/BiasAdd/ReadVariableOpReadVariableOpQsequential_90_simple_rnn_90_simple_rnn_cell_13378_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0
9sequential_90/simple_rnn_90/simple_rnn_cell_13378/BiasAddBiasAddBsequential_90/simple_rnn_90/simple_rnn_cell_13378/MatMul:product:0Psequential_90/simple_rnn_90/simple_rnn_cell_13378/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPм
Isequential_90/simple_rnn_90/simple_rnn_cell_13378/MatMul_1/ReadVariableOpReadVariableOpRsequential_90_simple_rnn_90_simple_rnn_cell_13378_matmul_1_readvariableop_resource*
_output_shapes

:PP*
dtype0ѕ
:sequential_90/simple_rnn_90/simple_rnn_cell_13378/MatMul_1MatMul*sequential_90/simple_rnn_90/zeros:output:0Qsequential_90/simple_rnn_90/simple_rnn_cell_13378/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPњ
5sequential_90/simple_rnn_90/simple_rnn_cell_13378/addAddV2Bsequential_90/simple_rnn_90/simple_rnn_cell_13378/BiasAdd:output:0Dsequential_90/simple_rnn_90/simple_rnn_cell_13378/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџPЋ
6sequential_90/simple_rnn_90/simple_rnn_cell_13378/TanhTanh9sequential_90/simple_rnn_90/simple_rnn_cell_13378/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџP
9sequential_90/simple_rnn_90/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџP   
+sequential_90/simple_rnn_90/TensorArrayV2_1TensorListReserveBsequential_90/simple_rnn_90/TensorArrayV2_1/element_shape:output:04sequential_90/simple_rnn_90/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвb
 sequential_90/simple_rnn_90/timeConst*
_output_shapes
: *
dtype0*
value	B : 
4sequential_90/simple_rnn_90/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџp
.sequential_90/simple_rnn_90/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : д
!sequential_90/simple_rnn_90/whileWhile7sequential_90/simple_rnn_90/while/loop_counter:output:0=sequential_90/simple_rnn_90/while/maximum_iterations:output:0)sequential_90/simple_rnn_90/time:output:04sequential_90/simple_rnn_90/TensorArrayV2_1:handle:0*sequential_90/simple_rnn_90/zeros:output:04sequential_90/simple_rnn_90/strided_slice_1:output:0Ssequential_90/simple_rnn_90/TensorArrayUnstack/TensorListFromTensor:output_handle:0Psequential_90_simple_rnn_90_simple_rnn_cell_13378_matmul_readvariableop_resourceQsequential_90_simple_rnn_90_simple_rnn_cell_13378_biasadd_readvariableop_resourceRsequential_90_simple_rnn_90_simple_rnn_cell_13378_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџP: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *;
body3R1
/sequential_90_simple_rnn_90_while_body_32768238*;
cond3R1
/sequential_90_simple_rnn_90_while_cond_32768237*8
output_shapes'
%: : : : :џџџџџџџџџP: : : : : *
parallel_iterations 
Lsequential_90/simple_rnn_90/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџP   
>sequential_90/simple_rnn_90/TensorArrayV2Stack/TensorListStackTensorListStack*sequential_90/simple_rnn_90/while:output:3Usequential_90/simple_rnn_90/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ДџџџџџџџџџP*
element_dtype0
1sequential_90/simple_rnn_90/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ}
3sequential_90/simple_rnn_90/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: }
3sequential_90/simple_rnn_90/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
+sequential_90/simple_rnn_90/strided_slice_3StridedSliceGsequential_90/simple_rnn_90/TensorArrayV2Stack/TensorListStack:tensor:0:sequential_90/simple_rnn_90/strided_slice_3/stack:output:0<sequential_90/simple_rnn_90/strided_slice_3/stack_1:output:0<sequential_90/simple_rnn_90/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџP*
shrink_axis_mask
,sequential_90/simple_rnn_90/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ы
'sequential_90/simple_rnn_90/transpose_1	TransposeGsequential_90/simple_rnn_90/TensorArrayV2Stack/TensorListStack:tensor:05sequential_90/simple_rnn_90/transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџДP
IdentityIdentity4sequential_90/simple_rnn_90/strided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџPЫ
NoOpNoOpI^sequential_90/simple_rnn_90/simple_rnn_cell_13378/BiasAdd/ReadVariableOpH^sequential_90/simple_rnn_90/simple_rnn_cell_13378/MatMul/ReadVariableOpJ^sequential_90/simple_rnn_90/simple_rnn_cell_13378/MatMul_1/ReadVariableOp"^sequential_90/simple_rnn_90/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџДP: : : 2
Hsequential_90/simple_rnn_90/simple_rnn_cell_13378/BiasAdd/ReadVariableOpHsequential_90/simple_rnn_90/simple_rnn_cell_13378/BiasAdd/ReadVariableOp2
Gsequential_90/simple_rnn_90/simple_rnn_cell_13378/MatMul/ReadVariableOpGsequential_90/simple_rnn_90/simple_rnn_cell_13378/MatMul/ReadVariableOp2
Isequential_90/simple_rnn_90/simple_rnn_cell_13378/MatMul_1/ReadVariableOpIsequential_90/simple_rnn_90/simple_rnn_cell_13378/MatMul_1/ReadVariableOp2F
!sequential_90/simple_rnn_90/while!sequential_90/simple_rnn_90/while:a ]
,
_output_shapes
:џџџџџџџџџДP
-
_user_specified_namesimple_rnn_90_input
ѓ>
и
K__inference_simple_rnn_90_layer_call_and_return_conditional_losses_32769327
inputs_0F
4simple_rnn_cell_13378_matmul_readvariableop_resource:PPC
5simple_rnn_cell_13378_biasadd_readvariableop_resource:PH
6simple_rnn_cell_13378_matmul_1_readvariableop_resource:PP
identityЂ,simple_rnn_cell_13378/BiasAdd/ReadVariableOpЂ+simple_rnn_cell_13378/MatMul/ReadVariableOpЂ-simple_rnn_cell_13378/MatMul_1/ReadVariableOpЂwhile=
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
:џџџџџџџџџPc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџPD
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
valueB"џџџџP   р
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
:џџџџџџџџџP*
shrink_axis_mask 
+simple_rnn_cell_13378/MatMul/ReadVariableOpReadVariableOp4simple_rnn_cell_13378_matmul_readvariableop_resource*
_output_shapes

:PP*
dtype0Ї
simple_rnn_cell_13378/MatMulMatMulstrided_slice_2:output:03simple_rnn_cell_13378/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџP
,simple_rnn_cell_13378/BiasAdd/ReadVariableOpReadVariableOp5simple_rnn_cell_13378_biasadd_readvariableop_resource*
_output_shapes
:P*
dtype0И
simple_rnn_cell_13378/BiasAddBiasAdd&simple_rnn_cell_13378/MatMul:product:04simple_rnn_cell_13378/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPЄ
-simple_rnn_cell_13378/MatMul_1/ReadVariableOpReadVariableOp6simple_rnn_cell_13378_matmul_1_readvariableop_resource*
_output_shapes

:PP*
dtype0Ё
simple_rnn_cell_13378/MatMul_1MatMulzeros:output:05simple_rnn_cell_13378/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPІ
simple_rnn_cell_13378/addAddV2&simple_rnn_cell_13378/BiasAdd:output:0(simple_rnn_cell_13378/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџPs
simple_rnn_cell_13378/TanhTanhsimple_rnn_cell_13378/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџPn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџP   И
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:04simple_rnn_cell_13378_matmul_readvariableop_resource5simple_rnn_cell_13378_biasadd_readvariableop_resource6simple_rnn_cell_13378_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџP: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_32769261*
condR
while_cond_32769260*8
output_shapes'
%: : : : :џџџџџџџџџP: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџP   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџP*
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
:џџџџџџџџџP*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџPg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџPл
NoOpNoOp-^simple_rnn_cell_13378/BiasAdd/ReadVariableOp,^simple_rnn_cell_13378/MatMul/ReadVariableOp.^simple_rnn_cell_13378/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџP: : : 2\
,simple_rnn_cell_13378/BiasAdd/ReadVariableOp,simple_rnn_cell_13378/BiasAdd/ReadVariableOp2Z
+simple_rnn_cell_13378/MatMul/ReadVariableOp+simple_rnn_cell_13378/MatMul/ReadVariableOp2^
-simple_rnn_cell_13378/MatMul_1/ReadVariableOp-simple_rnn_cell_13378/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџP
"
_user_specified_name
inputs/0
р4
Д
K__inference_simple_rnn_90_layer_call_and_return_conditional_losses_32768587

inputs0
simple_rnn_cell_13378_32768512:PP,
simple_rnn_cell_13378_32768514:P0
simple_rnn_cell_13378_32768516:PP
identityЂ-simple_rnn_cell_13378/StatefulPartitionedCallЂwhile;
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
:џџџџџџџџџPc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџPD
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
valueB"џџџџP   р
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
:џџџџџџџџџP*
shrink_axis_mask
-simple_rnn_cell_13378/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_13378_32768512simple_rnn_cell_13378_32768514simple_rnn_cell_13378_32768516*
Tin	
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:џџџџџџџџџP:џџџџџџџџџP*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *\
fWRU
S__inference_simple_rnn_cell_13378_layer_call_and_return_conditional_losses_32768472n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџP   И
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_13378_32768512simple_rnn_cell_13378_32768514simple_rnn_cell_13378_32768516*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*9
_output_shapes'
%: : : : :џџџџџџџџџP: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_32768524*
condR
while_cond_32768523*8
output_shapes'
%: : : : :џџџџџџџџџP: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџP   Ы
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџP*
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
:џџџџџџџџџP*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџPg
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџP~
NoOpNoOp.^simple_rnn_cell_13378/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџP: : : 2^
-simple_rnn_cell_13378/StatefulPartitionedCall-simple_rnn_cell_13378/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџP
 
_user_specified_nameinputs
­
Ч
0__inference_sequential_90_layer_call_fn_32768728
simple_rnn_90_input
unknown:PP
	unknown_0:P
	unknown_1:PP
identityЂStatefulPartitionedCallњ
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_90_inputunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџP*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_sequential_90_layer_call_and_return_conditional_losses_32768719o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџP`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџДP: : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
,
_output_shapes
:џџџџџџџџџДP
-
_user_specified_namesimple_rnn_90_input
ћ
Н
&__inference_signature_wrapper_32769175
simple_rnn_90_input
unknown:PP
	unknown_0:P
	unknown_1:PP
identityЂStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallsimple_rnn_90_inputunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџP*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference__wrapped_model_32768304o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџP`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџДP: : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
,
_output_shapes
:џџџџџџџџџДP
-
_user_specified_namesimple_rnn_90_input
№-
ю
while_body_32768783
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0N
<while_simple_rnn_cell_13378_matmul_readvariableop_resource_0:PPK
=while_simple_rnn_cell_13378_biasadd_readvariableop_resource_0:PP
>while_simple_rnn_cell_13378_matmul_1_readvariableop_resource_0:PP
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorL
:while_simple_rnn_cell_13378_matmul_readvariableop_resource:PPI
;while_simple_rnn_cell_13378_biasadd_readvariableop_resource:PN
<while_simple_rnn_cell_13378_matmul_1_readvariableop_resource:PPЂ2while/simple_rnn_cell_13378/BiasAdd/ReadVariableOpЂ1while/simple_rnn_cell_13378/MatMul/ReadVariableOpЂ3while/simple_rnn_cell_13378/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџP   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџP*
element_dtype0Ў
1while/simple_rnn_cell_13378/MatMul/ReadVariableOpReadVariableOp<while_simple_rnn_cell_13378_matmul_readvariableop_resource_0*
_output_shapes

:PP*
dtype0Ы
"while/simple_rnn_cell_13378/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:09while/simple_rnn_cell_13378/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPЌ
2while/simple_rnn_cell_13378/BiasAdd/ReadVariableOpReadVariableOp=while_simple_rnn_cell_13378_biasadd_readvariableop_resource_0*
_output_shapes
:P*
dtype0Ъ
#while/simple_rnn_cell_13378/BiasAddBiasAdd,while/simple_rnn_cell_13378/MatMul:product:0:while/simple_rnn_cell_13378/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPВ
3while/simple_rnn_cell_13378/MatMul_1/ReadVariableOpReadVariableOp>while_simple_rnn_cell_13378_matmul_1_readvariableop_resource_0*
_output_shapes

:PP*
dtype0В
$while/simple_rnn_cell_13378/MatMul_1MatMulwhile_placeholder_2;while/simple_rnn_cell_13378/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџPИ
while/simple_rnn_cell_13378/addAddV2,while/simple_rnn_cell_13378/BiasAdd:output:0.while/simple_rnn_cell_13378/MatMul_1:product:0*
T0*'
_output_shapes
:џџџџџџџџџP
 while/simple_rnn_cell_13378/TanhTanh#while/simple_rnn_cell_13378/add:z:0*
T0*'
_output_shapes
:џџџџџџџџџPЭ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder$while/simple_rnn_cell_13378/Tanh:y:0*
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
while/Identity_4Identity$while/simple_rnn_cell_13378/Tanh:y:0^while/NoOp*
T0*'
_output_shapes
:џџџџџџџџџPы

while/NoOpNoOp3^while/simple_rnn_cell_13378/BiasAdd/ReadVariableOp2^while/simple_rnn_cell_13378/MatMul/ReadVariableOp4^while/simple_rnn_cell_13378/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"|
;while_simple_rnn_cell_13378_biasadd_readvariableop_resource=while_simple_rnn_cell_13378_biasadd_readvariableop_resource_0"~
<while_simple_rnn_cell_13378_matmul_1_readvariableop_resource>while_simple_rnn_cell_13378_matmul_1_readvariableop_resource_0"z
:while_simple_rnn_cell_13378_matmul_readvariableop_resource<while_simple_rnn_cell_13378_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%: : : : :џџџџџџџџџP: : : : : 2h
2while/simple_rnn_cell_13378/BiasAdd/ReadVariableOp2while/simple_rnn_cell_13378/BiasAdd/ReadVariableOp2f
1while/simple_rnn_cell_13378/MatMul/ReadVariableOp1while/simple_rnn_cell_13378/MatMul/ReadVariableOp2j
3while/simple_rnn_cell_13378/MatMul_1/ReadVariableOp3while/simple_rnn_cell_13378/MatMul_1/ReadVariableOp: 
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
:џџџџџџџџџP:

_output_shapes
: :

_output_shapes
: 

К
0__inference_simple_rnn_90_layer_call_fn_32769208

inputs
unknown:PP
	unknown_0:P
	unknown_1:PP
identityЂStatefulPartitionedCallэ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџP*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_simple_rnn_90_layer_call_and_return_conditional_losses_32768710o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџP`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџДP: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџДP
 
_user_specified_nameinputs"лL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Э
serving_defaultЙ
X
simple_rnn_90_inputA
%serving_default_simple_rnn_90_input:0џџџџџџџџџДPA
simple_rnn_900
StatefulPartitionedCall:0џџџџџџџџџPtensorflow/serving/predict:ІO
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
2
0__inference_sequential_90_layer_call_fn_32768728
0__inference_sequential_90_layer_call_fn_32768935
0__inference_sequential_90_layer_call_fn_32768946
0__inference_sequential_90_layer_call_fn_32768902Р
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
њ2ї
K__inference_sequential_90_layer_call_and_return_conditional_losses_32769054
K__inference_sequential_90_layer_call_and_return_conditional_losses_32769162
K__inference_sequential_90_layer_call_and_return_conditional_losses_32768913
K__inference_sequential_90_layer_call_and_return_conditional_losses_32768924Р
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
кBз
#__inference__wrapped_model_32768304simple_rnn_90_input"
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
Ѓ2 
0__inference_simple_rnn_90_layer_call_fn_32769186
0__inference_simple_rnn_90_layer_call_fn_32769197
0__inference_simple_rnn_90_layer_call_fn_32769208
0__inference_simple_rnn_90_layer_call_fn_32769219е
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
2
K__inference_simple_rnn_90_layer_call_and_return_conditional_losses_32769327
K__inference_simple_rnn_90_layer_call_and_return_conditional_losses_32769435
K__inference_simple_rnn_90_layer_call_and_return_conditional_losses_32769543
K__inference_simple_rnn_90_layer_call_and_return_conditional_losses_32769651е
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
<::PP2*simple_rnn_90/simple_rnn_cell_13378/kernel
F:DPP24simple_rnn_90/simple_rnn_cell_13378/recurrent_kernel
6:4P2(simple_rnn_90/simple_rnn_cell_13378/bias
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
йBж
&__inference_signature_wrapper_32769175simple_rnn_90_input"
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
8__inference_simple_rnn_cell_13378_layer_call_fn_32769665
8__inference_simple_rnn_cell_13378_layer_call_fn_32769679О
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
S__inference_simple_rnn_cell_13378_layer_call_and_return_conditional_losses_32769696
S__inference_simple_rnn_cell_13378_layer_call_and_return_conditional_losses_32769713О
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
trackable_dict_wrapperЏ
#__inference__wrapped_model_32768304AЂ>
7Ђ4
2/
simple_rnn_90_inputџџџџџџџџџДP
Њ "=Њ:
8
simple_rnn_90'$
simple_rnn_90џџџџџџџџџPЦ
K__inference_sequential_90_layer_call_and_return_conditional_losses_32768913wIЂF
?Ђ<
2/
simple_rnn_90_inputџџџџџџџџџДP
p 

 
Њ "%Ђ"

0џџџџџџџџџP
 Ц
K__inference_sequential_90_layer_call_and_return_conditional_losses_32768924wIЂF
?Ђ<
2/
simple_rnn_90_inputџџџџџџџџџДP
p

 
Њ "%Ђ"

0џџџџџџџџџP
 Й
K__inference_sequential_90_layer_call_and_return_conditional_losses_32769054j<Ђ9
2Ђ/
%"
inputsџџџџџџџџџДP
p 

 
Њ "%Ђ"

0џџџџџџџџџP
 Й
K__inference_sequential_90_layer_call_and_return_conditional_losses_32769162j<Ђ9
2Ђ/
%"
inputsџџџџџџџџџДP
p

 
Њ "%Ђ"

0џџџџџџџџџP
 
0__inference_sequential_90_layer_call_fn_32768728jIЂF
?Ђ<
2/
simple_rnn_90_inputџџџџџџџџџДP
p 

 
Њ "џџџџџџџџџP
0__inference_sequential_90_layer_call_fn_32768902jIЂF
?Ђ<
2/
simple_rnn_90_inputџџџџџџџџџДP
p

 
Њ "џџџџџџџџџP
0__inference_sequential_90_layer_call_fn_32768935]<Ђ9
2Ђ/
%"
inputsџџџџџџџџџДP
p 

 
Њ "џџџџџџџџџP
0__inference_sequential_90_layer_call_fn_32768946]<Ђ9
2Ђ/
%"
inputsџџџџџџџџџДP
p

 
Њ "џџџџџџџџџPЩ
&__inference_signature_wrapper_32769175XЂU
Ђ 
NЊK
I
simple_rnn_90_input2/
simple_rnn_90_inputџџџџџџџџџДP"=Њ:
8
simple_rnn_90'$
simple_rnn_90џџџџџџџџџPЬ
K__inference_simple_rnn_90_layer_call_and_return_conditional_losses_32769327}OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџP

 
p 

 
Њ "%Ђ"

0џџџџџџџџџP
 Ь
K__inference_simple_rnn_90_layer_call_and_return_conditional_losses_32769435}OЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџP

 
p

 
Њ "%Ђ"

0џџџџџџџџџP
 Н
K__inference_simple_rnn_90_layer_call_and_return_conditional_losses_32769543n@Ђ=
6Ђ3
%"
inputsџџџџџџџџџДP

 
p 

 
Њ "%Ђ"

0џџџџџџџџџP
 Н
K__inference_simple_rnn_90_layer_call_and_return_conditional_losses_32769651n@Ђ=
6Ђ3
%"
inputsџџџџџџџџџДP

 
p

 
Њ "%Ђ"

0џџџџџџџџџP
 Є
0__inference_simple_rnn_90_layer_call_fn_32769186pOЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџP

 
p 

 
Њ "џџџџџџџџџPЄ
0__inference_simple_rnn_90_layer_call_fn_32769197pOЂL
EЂB
41
/,
inputs/0џџџџџџџџџџџџџџџџџџP

 
p

 
Њ "џџџџџџџџџP
0__inference_simple_rnn_90_layer_call_fn_32769208a@Ђ=
6Ђ3
%"
inputsџџџџџџџџџДP

 
p 

 
Њ "џџџџџџџџџP
0__inference_simple_rnn_90_layer_call_fn_32769219a@Ђ=
6Ђ3
%"
inputsџџџџџџџџџДP

 
p

 
Њ "џџџџџџџџџP
S__inference_simple_rnn_cell_13378_layer_call_and_return_conditional_losses_32769696З\ЂY
RЂO
 
inputsџџџџџџџџџP
'Ђ$
"
states/0џџџџџџџџџP
p 
Њ "RЂO
HЂE

0/0џџџџџџџџџP
$!

0/1/0џџџџџџџџџP
 
S__inference_simple_rnn_cell_13378_layer_call_and_return_conditional_losses_32769713З\ЂY
RЂO
 
inputsџџџџџџџџџP
'Ђ$
"
states/0џџџџџџџџџP
p
Њ "RЂO
HЂE

0/0џџџџџџџџџP
$!

0/1/0џџџџџџџџџP
 ц
8__inference_simple_rnn_cell_13378_layer_call_fn_32769665Љ\ЂY
RЂO
 
inputsџџџџџџџџџP
'Ђ$
"
states/0џџџџџџџџџP
p 
Њ "DЂA

0џџџџџџџџџP
"

1/0џџџџџџџџџPц
8__inference_simple_rnn_cell_13378_layer_call_fn_32769679Љ\ЂY
RЂO
 
inputsџџџџџџџџџP
'Ђ$
"
states/0џџџџџџџџџP
p
Њ "DЂA

0џџџџџџџџџP
"

1/0џџџџџџџџџP