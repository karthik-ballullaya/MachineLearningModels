Ê¾
Ë
B
AssignVariableOp
resource
value"dtype"
dtypetype
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
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
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
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
¾
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
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718È

Hidden_Layer_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
¬*&
shared_nameHidden_Layer_1/kernel

)Hidden_Layer_1/kernel/Read/ReadVariableOpReadVariableOpHidden_Layer_1/kernel* 
_output_shapes
:
¬*
dtype0

Hidden_Layer_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:¬*$
shared_nameHidden_Layer_1/bias
x
'Hidden_Layer_1/bias/Read/ReadVariableOpReadVariableOpHidden_Layer_1/bias*
_output_shapes	
:¬*
dtype0

Hidden_Layer_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	¬d*&
shared_nameHidden_Layer_2/kernel

)Hidden_Layer_2/kernel/Read/ReadVariableOpReadVariableOpHidden_Layer_2/kernel*
_output_shapes
:	¬d*
dtype0
~
Hidden_Layer_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*$
shared_nameHidden_Layer_2/bias
w
'Hidden_Layer_2/bias/Read/ReadVariableOpReadVariableOpHidden_Layer_2/bias*
_output_shapes
:d*
dtype0

Output_Layer/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d
*$
shared_nameOutput_Layer/kernel
{
'Output_Layer/kernel/Read/ReadVariableOpReadVariableOpOutput_Layer/kernel*
_output_shapes

:d
*
dtype0
z
Output_Layer/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*"
shared_nameOutput_Layer/bias
s
%Output_Layer/bias/Read/ReadVariableOpReadVariableOpOutput_Layer/bias*
_output_shapes
:
*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

Adam/Hidden_Layer_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
¬*-
shared_nameAdam/Hidden_Layer_1/kernel/m

0Adam/Hidden_Layer_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Hidden_Layer_1/kernel/m* 
_output_shapes
:
¬*
dtype0

Adam/Hidden_Layer_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:¬*+
shared_nameAdam/Hidden_Layer_1/bias/m

.Adam/Hidden_Layer_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/Hidden_Layer_1/bias/m*
_output_shapes	
:¬*
dtype0

Adam/Hidden_Layer_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	¬d*-
shared_nameAdam/Hidden_Layer_2/kernel/m

0Adam/Hidden_Layer_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Hidden_Layer_2/kernel/m*
_output_shapes
:	¬d*
dtype0

Adam/Hidden_Layer_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*+
shared_nameAdam/Hidden_Layer_2/bias/m

.Adam/Hidden_Layer_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/Hidden_Layer_2/bias/m*
_output_shapes
:d*
dtype0

Adam/Output_Layer/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d
*+
shared_nameAdam/Output_Layer/kernel/m

.Adam/Output_Layer/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Output_Layer/kernel/m*
_output_shapes

:d
*
dtype0

Adam/Output_Layer/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*)
shared_nameAdam/Output_Layer/bias/m

,Adam/Output_Layer/bias/m/Read/ReadVariableOpReadVariableOpAdam/Output_Layer/bias/m*
_output_shapes
:
*
dtype0

Adam/Hidden_Layer_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
¬*-
shared_nameAdam/Hidden_Layer_1/kernel/v

0Adam/Hidden_Layer_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Hidden_Layer_1/kernel/v* 
_output_shapes
:
¬*
dtype0

Adam/Hidden_Layer_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:¬*+
shared_nameAdam/Hidden_Layer_1/bias/v

.Adam/Hidden_Layer_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/Hidden_Layer_1/bias/v*
_output_shapes	
:¬*
dtype0

Adam/Hidden_Layer_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	¬d*-
shared_nameAdam/Hidden_Layer_2/kernel/v

0Adam/Hidden_Layer_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Hidden_Layer_2/kernel/v*
_output_shapes
:	¬d*
dtype0

Adam/Hidden_Layer_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*+
shared_nameAdam/Hidden_Layer_2/bias/v

.Adam/Hidden_Layer_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/Hidden_Layer_2/bias/v*
_output_shapes
:d*
dtype0

Adam/Output_Layer/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d
*+
shared_nameAdam/Output_Layer/kernel/v

.Adam/Output_Layer/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Output_Layer/kernel/v*
_output_shapes

:d
*
dtype0

Adam/Output_Layer/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*)
shared_nameAdam/Output_Layer/bias/v

,Adam/Output_Layer/bias/v/Read/ReadVariableOpReadVariableOpAdam/Output_Layer/bias/v*
_output_shapes
:
*
dtype0

NoOpNoOp
´(
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ï'
valueå'Bâ' BÛ'
ó
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	optimizer
trainable_variables
regularization_losses
	variables
		keras_api


signatures
R
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
 	keras_api
¬
!iter

"beta_1

#beta_2
	$decay
%learning_ratemJmKmLmMmNmOvPvQvRvSvTvU
*
0
1
2
3
4
5
 
*
0
1
2
3
4
5
­
&non_trainable_variables

'layers
trainable_variables
(metrics
regularization_losses
	variables
)layer_metrics
*layer_regularization_losses
 
 
 
 
­
+non_trainable_variables

,layers
trainable_variables
-metrics
regularization_losses
	variables
.layer_metrics
/layer_regularization_losses
a_
VARIABLE_VALUEHidden_Layer_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEHidden_Layer_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
­
0non_trainable_variables

1layers
trainable_variables
2metrics
regularization_losses
	variables
3layer_metrics
4layer_regularization_losses
a_
VARIABLE_VALUEHidden_Layer_2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEHidden_Layer_2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
­
5non_trainable_variables

6layers
trainable_variables
7metrics
regularization_losses
	variables
8layer_metrics
9layer_regularization_losses
_]
VARIABLE_VALUEOutput_Layer/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEOutput_Layer/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
­
:non_trainable_variables

;layers
trainable_variables
<metrics
regularization_losses
	variables
=layer_metrics
>layer_regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
2
3

?0
@1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	Atotal
	Bcount
C	variables
D	keras_api
D
	Etotal
	Fcount
G
_fn_kwargs
H	variables
I	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

A0
B1

C	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

E0
F1

H	variables

VARIABLE_VALUEAdam/Hidden_Layer_1/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/Hidden_Layer_1/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/Hidden_Layer_2/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/Hidden_Layer_2/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/Output_Layer/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/Output_Layer/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/Hidden_Layer_1/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/Hidden_Layer_1/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/Hidden_Layer_2/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUEAdam/Hidden_Layer_2/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/Output_Layer/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/Output_Layer/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

!serving_default_Input_layer_inputPlaceholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ
Ç
StatefulPartitionedCallStatefulPartitionedCall!serving_default_Input_layer_inputHidden_Layer_1/kernelHidden_Layer_1/biasHidden_Layer_2/kernelHidden_Layer_2/biasOutput_Layer/kernelOutput_Layer/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference_signature_wrapper_46161
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename)Hidden_Layer_1/kernel/Read/ReadVariableOp'Hidden_Layer_1/bias/Read/ReadVariableOp)Hidden_Layer_2/kernel/Read/ReadVariableOp'Hidden_Layer_2/bias/Read/ReadVariableOp'Output_Layer/kernel/Read/ReadVariableOp%Output_Layer/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp0Adam/Hidden_Layer_1/kernel/m/Read/ReadVariableOp.Adam/Hidden_Layer_1/bias/m/Read/ReadVariableOp0Adam/Hidden_Layer_2/kernel/m/Read/ReadVariableOp.Adam/Hidden_Layer_2/bias/m/Read/ReadVariableOp.Adam/Output_Layer/kernel/m/Read/ReadVariableOp,Adam/Output_Layer/bias/m/Read/ReadVariableOp0Adam/Hidden_Layer_1/kernel/v/Read/ReadVariableOp.Adam/Hidden_Layer_1/bias/v/Read/ReadVariableOp0Adam/Hidden_Layer_2/kernel/v/Read/ReadVariableOp.Adam/Hidden_Layer_2/bias/v/Read/ReadVariableOp.Adam/Output_Layer/kernel/v/Read/ReadVariableOp,Adam/Output_Layer/bias/v/Read/ReadVariableOpConst*(
Tin!
2	*
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
GPU 2J 8 *'
f"R 
__inference__traced_save_46424
é
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameHidden_Layer_1/kernelHidden_Layer_1/biasHidden_Layer_2/kernelHidden_Layer_2/biasOutput_Layer/kernelOutput_Layer/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/Hidden_Layer_1/kernel/mAdam/Hidden_Layer_1/bias/mAdam/Hidden_Layer_2/kernel/mAdam/Hidden_Layer_2/bias/mAdam/Output_Layer/kernel/mAdam/Output_Layer/bias/mAdam/Hidden_Layer_1/kernel/vAdam/Hidden_Layer_1/bias/vAdam/Hidden_Layer_2/kernel/vAdam/Hidden_Layer_2/bias/vAdam/Output_Layer/kernel/vAdam/Output_Layer/bias/v*'
Tin 
2*
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
!__inference__traced_restore_46515Õ

Ì
E__inference_sequential_layer_call_and_return_conditional_losses_46116
input_layer_input(
hidden_layer_1_46100:
¬#
hidden_layer_1_46102:	¬'
hidden_layer_2_46105:	¬d"
hidden_layer_2_46107:d$
output_layer_46110:d
 
output_layer_46112:

identity¢&Hidden_Layer_1/StatefulPartitionedCall¢&Hidden_Layer_2/StatefulPartitionedCall¢$Output_Layer/StatefulPartitionedCallè
Input_layer/PartitionedCallPartitionedCallinput_layer_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_Input_layer_layer_call_and_return_conditional_losses_459202
Input_layer/PartitionedCallÎ
&Hidden_Layer_1/StatefulPartitionedCallStatefulPartitionedCall$Input_layer/PartitionedCall:output:0hidden_layer_1_46100hidden_layer_1_46102*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_Hidden_Layer_1_layer_call_and_return_conditional_losses_459332(
&Hidden_Layer_1/StatefulPartitionedCallØ
&Hidden_Layer_2/StatefulPartitionedCallStatefulPartitionedCall/Hidden_Layer_1/StatefulPartitionedCall:output:0hidden_layer_2_46105hidden_layer_2_46107*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_Hidden_Layer_2_layer_call_and_return_conditional_losses_459502(
&Hidden_Layer_2/StatefulPartitionedCallÎ
$Output_Layer/StatefulPartitionedCallStatefulPartitionedCall/Hidden_Layer_2/StatefulPartitionedCall:output:0output_layer_46110output_layer_46112*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_Output_Layer_layer_call_and_return_conditional_losses_459672&
$Output_Layer/StatefulPartitionedCallú
IdentityIdentity-Output_Layer/StatefulPartitionedCall:output:0'^Hidden_Layer_1/StatefulPartitionedCall'^Hidden_Layer_2/StatefulPartitionedCall%^Output_Layer/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : 2P
&Hidden_Layer_1/StatefulPartitionedCall&Hidden_Layer_1/StatefulPartitionedCall2P
&Hidden_Layer_2/StatefulPartitionedCall&Hidden_Layer_2/StatefulPartitionedCall2L
$Output_Layer/StatefulPartitionedCall$Output_Layer/StatefulPartitionedCall:^ Z
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameInput_layer_input
Ñ

*__inference_sequential_layer_call_fn_46195

inputs
unknown:
¬
	unknown_0:	¬
	unknown_1:	¬d
	unknown_2:d
	unknown_3:d

	unknown_4:

identity¢StatefulPartitionedCall©
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_460642
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¨

.__inference_Hidden_Layer_2_layer_call_fn_46289

inputs
unknown:	¬d
	unknown_0:d
identity¢StatefulPartitionedCallù
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_Hidden_Layer_2_layer_call_and_return_conditional_losses_459502
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¬: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
 
_user_specified_nameinputs
à
b
F__inference_Input_layer_layer_call_and_return_conditional_losses_45920

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¬

.__inference_Hidden_Layer_1_layer_call_fn_46269

inputs
unknown:
¬
	unknown_0:	¬
identity¢StatefulPartitionedCallú
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_Hidden_Layer_1_layer_call_and_return_conditional_losses_459332
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
æ
Á
E__inference_sequential_layer_call_and_return_conditional_losses_45974

inputs(
hidden_layer_1_45934:
¬#
hidden_layer_1_45936:	¬'
hidden_layer_2_45951:	¬d"
hidden_layer_2_45953:d$
output_layer_45968:d
 
output_layer_45970:

identity¢&Hidden_Layer_1/StatefulPartitionedCall¢&Hidden_Layer_2/StatefulPartitionedCall¢$Output_Layer/StatefulPartitionedCallÝ
Input_layer/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_Input_layer_layer_call_and_return_conditional_losses_459202
Input_layer/PartitionedCallÎ
&Hidden_Layer_1/StatefulPartitionedCallStatefulPartitionedCall$Input_layer/PartitionedCall:output:0hidden_layer_1_45934hidden_layer_1_45936*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_Hidden_Layer_1_layer_call_and_return_conditional_losses_459332(
&Hidden_Layer_1/StatefulPartitionedCallØ
&Hidden_Layer_2/StatefulPartitionedCallStatefulPartitionedCall/Hidden_Layer_1/StatefulPartitionedCall:output:0hidden_layer_2_45951hidden_layer_2_45953*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_Hidden_Layer_2_layer_call_and_return_conditional_losses_459502(
&Hidden_Layer_2/StatefulPartitionedCallÎ
$Output_Layer/StatefulPartitionedCallStatefulPartitionedCall/Hidden_Layer_2/StatefulPartitionedCall:output:0output_layer_45968output_layer_45970*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_Output_Layer_layer_call_and_return_conditional_losses_459672&
$Output_Layer/StatefulPartitionedCallú
IdentityIdentity-Output_Layer/StatefulPartitionedCall:output:0'^Hidden_Layer_1/StatefulPartitionedCall'^Hidden_Layer_2/StatefulPartitionedCall%^Output_Layer/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : 2P
&Hidden_Layer_1/StatefulPartitionedCall&Hidden_Layer_1/StatefulPartitionedCall2P
&Hidden_Layer_2/StatefulPartitionedCall&Hidden_Layer_2/StatefulPartitionedCall2L
$Output_Layer/StatefulPartitionedCall$Output_Layer/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ã$
Ê
E__inference_sequential_layer_call_and_return_conditional_losses_46222

inputsA
-hidden_layer_1_matmul_readvariableop_resource:
¬=
.hidden_layer_1_biasadd_readvariableop_resource:	¬@
-hidden_layer_2_matmul_readvariableop_resource:	¬d<
.hidden_layer_2_biasadd_readvariableop_resource:d=
+output_layer_matmul_readvariableop_resource:d
:
,output_layer_biasadd_readvariableop_resource:

identity¢%Hidden_Layer_1/BiasAdd/ReadVariableOp¢$Hidden_Layer_1/MatMul/ReadVariableOp¢%Hidden_Layer_2/BiasAdd/ReadVariableOp¢$Hidden_Layer_2/MatMul/ReadVariableOp¢#Output_Layer/BiasAdd/ReadVariableOp¢"Output_Layer/MatMul/ReadVariableOpw
Input_layer/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  2
Input_layer/Const
Input_layer/ReshapeReshapeinputsInput_layer/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Input_layer/Reshape¼
$Hidden_Layer_1/MatMul/ReadVariableOpReadVariableOp-hidden_layer_1_matmul_readvariableop_resource* 
_output_shapes
:
¬*
dtype02&
$Hidden_Layer_1/MatMul/ReadVariableOp·
Hidden_Layer_1/MatMulMatMulInput_layer/Reshape:output:0,Hidden_Layer_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
Hidden_Layer_1/MatMulº
%Hidden_Layer_1/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer_1_biasadd_readvariableop_resource*
_output_shapes	
:¬*
dtype02'
%Hidden_Layer_1/BiasAdd/ReadVariableOp¾
Hidden_Layer_1/BiasAddBiasAddHidden_Layer_1/MatMul:product:0-Hidden_Layer_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
Hidden_Layer_1/BiasAdd
Hidden_Layer_1/ReluReluHidden_Layer_1/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
Hidden_Layer_1/Relu»
$Hidden_Layer_2/MatMul/ReadVariableOpReadVariableOp-hidden_layer_2_matmul_readvariableop_resource*
_output_shapes
:	¬d*
dtype02&
$Hidden_Layer_2/MatMul/ReadVariableOp»
Hidden_Layer_2/MatMulMatMul!Hidden_Layer_1/Relu:activations:0,Hidden_Layer_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
Hidden_Layer_2/MatMul¹
%Hidden_Layer_2/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer_2_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02'
%Hidden_Layer_2/BiasAdd/ReadVariableOp½
Hidden_Layer_2/BiasAddBiasAddHidden_Layer_2/MatMul:product:0-Hidden_Layer_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
Hidden_Layer_2/BiasAdd
Hidden_Layer_2/ReluReluHidden_Layer_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
Hidden_Layer_2/Relu´
"Output_Layer/MatMul/ReadVariableOpReadVariableOp+output_layer_matmul_readvariableop_resource*
_output_shapes

:d
*
dtype02$
"Output_Layer/MatMul/ReadVariableOpµ
Output_Layer/MatMulMatMul!Hidden_Layer_2/Relu:activations:0*Output_Layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
Output_Layer/MatMul³
#Output_Layer/BiasAdd/ReadVariableOpReadVariableOp,output_layer_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02%
#Output_Layer/BiasAdd/ReadVariableOpµ
Output_Layer/BiasAddBiasAddOutput_Layer/MatMul:product:0+Output_Layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
Output_Layer/BiasAdd
Output_Layer/SoftmaxSoftmaxOutput_Layer/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
Output_Layer/SoftmaxÛ
IdentityIdentityOutput_Layer/Softmax:softmax:0&^Hidden_Layer_1/BiasAdd/ReadVariableOp%^Hidden_Layer_1/MatMul/ReadVariableOp&^Hidden_Layer_2/BiasAdd/ReadVariableOp%^Hidden_Layer_2/MatMul/ReadVariableOp$^Output_Layer/BiasAdd/ReadVariableOp#^Output_Layer/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : 2N
%Hidden_Layer_1/BiasAdd/ReadVariableOp%Hidden_Layer_1/BiasAdd/ReadVariableOp2L
$Hidden_Layer_1/MatMul/ReadVariableOp$Hidden_Layer_1/MatMul/ReadVariableOp2N
%Hidden_Layer_2/BiasAdd/ReadVariableOp%Hidden_Layer_2/BiasAdd/ReadVariableOp2L
$Hidden_Layer_2/MatMul/ReadVariableOp$Hidden_Layer_2/MatMul/ReadVariableOp2J
#Output_Layer/BiasAdd/ReadVariableOp#Output_Layer/BiasAdd/ReadVariableOp2H
"Output_Layer/MatMul/ReadVariableOp"Output_Layer/MatMul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
æ
Á
E__inference_sequential_layer_call_and_return_conditional_losses_46064

inputs(
hidden_layer_1_46048:
¬#
hidden_layer_1_46050:	¬'
hidden_layer_2_46053:	¬d"
hidden_layer_2_46055:d$
output_layer_46058:d
 
output_layer_46060:

identity¢&Hidden_Layer_1/StatefulPartitionedCall¢&Hidden_Layer_2/StatefulPartitionedCall¢$Output_Layer/StatefulPartitionedCallÝ
Input_layer/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_Input_layer_layer_call_and_return_conditional_losses_459202
Input_layer/PartitionedCallÎ
&Hidden_Layer_1/StatefulPartitionedCallStatefulPartitionedCall$Input_layer/PartitionedCall:output:0hidden_layer_1_46048hidden_layer_1_46050*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_Hidden_Layer_1_layer_call_and_return_conditional_losses_459332(
&Hidden_Layer_1/StatefulPartitionedCallØ
&Hidden_Layer_2/StatefulPartitionedCallStatefulPartitionedCall/Hidden_Layer_1/StatefulPartitionedCall:output:0hidden_layer_2_46053hidden_layer_2_46055*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_Hidden_Layer_2_layer_call_and_return_conditional_losses_459502(
&Hidden_Layer_2/StatefulPartitionedCallÎ
$Output_Layer/StatefulPartitionedCallStatefulPartitionedCall/Hidden_Layer_2/StatefulPartitionedCall:output:0output_layer_46058output_layer_46060*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_Output_Layer_layer_call_and_return_conditional_losses_459672&
$Output_Layer/StatefulPartitionedCallú
IdentityIdentity-Output_Layer/StatefulPartitionedCall:output:0'^Hidden_Layer_1/StatefulPartitionedCall'^Hidden_Layer_2/StatefulPartitionedCall%^Output_Layer/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : 2P
&Hidden_Layer_1/StatefulPartitionedCall&Hidden_Layer_1/StatefulPartitionedCall2P
&Hidden_Layer_2/StatefulPartitionedCall&Hidden_Layer_2/StatefulPartitionedCall2L
$Output_Layer/StatefulPartitionedCall$Output_Layer/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ò

*__inference_sequential_layer_call_fn_46096
input_layer_input
unknown:
¬
	unknown_0:	¬
	unknown_1:	¬d
	unknown_2:d
	unknown_3:d

	unknown_4:

identity¢StatefulPartitionedCall´
StatefulPartitionedCallStatefulPartitionedCallinput_layer_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_460642
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameInput_layer_input
·

ø
G__inference_Output_Layer_layer_call_and_return_conditional_losses_46320

inputs0
matmul_readvariableop_resource:d
-
biasadd_readvariableop_resource:

identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
Æ

#__inference_signature_wrapper_46161
input_layer_input
unknown:
¬
	unknown_0:	¬
	unknown_1:	¬d
	unknown_2:d
	unknown_3:d

	unknown_4:

identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_layer_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__wrapped_model_459072
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameInput_layer_input
½

ý
I__inference_Hidden_Layer_1_layer_call_and_return_conditional_losses_46280

inputs2
matmul_readvariableop_resource:
¬.
biasadd_readvariableop_resource:	¬
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
¬*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:¬*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

Ì
E__inference_sequential_layer_call_and_return_conditional_losses_46136
input_layer_input(
hidden_layer_1_46120:
¬#
hidden_layer_1_46122:	¬'
hidden_layer_2_46125:	¬d"
hidden_layer_2_46127:d$
output_layer_46130:d
 
output_layer_46132:

identity¢&Hidden_Layer_1/StatefulPartitionedCall¢&Hidden_Layer_2/StatefulPartitionedCall¢$Output_Layer/StatefulPartitionedCallè
Input_layer/PartitionedCallPartitionedCallinput_layer_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_Input_layer_layer_call_and_return_conditional_losses_459202
Input_layer/PartitionedCallÎ
&Hidden_Layer_1/StatefulPartitionedCallStatefulPartitionedCall$Input_layer/PartitionedCall:output:0hidden_layer_1_46120hidden_layer_1_46122*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_Hidden_Layer_1_layer_call_and_return_conditional_losses_459332(
&Hidden_Layer_1/StatefulPartitionedCallØ
&Hidden_Layer_2/StatefulPartitionedCallStatefulPartitionedCall/Hidden_Layer_1/StatefulPartitionedCall:output:0hidden_layer_2_46125hidden_layer_2_46127*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_Hidden_Layer_2_layer_call_and_return_conditional_losses_459502(
&Hidden_Layer_2/StatefulPartitionedCallÎ
$Output_Layer/StatefulPartitionedCallStatefulPartitionedCall/Hidden_Layer_2/StatefulPartitionedCall:output:0output_layer_46130output_layer_46132*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_Output_Layer_layer_call_and_return_conditional_losses_459672&
$Output_Layer/StatefulPartitionedCallú
IdentityIdentity-Output_Layer/StatefulPartitionedCall:output:0'^Hidden_Layer_1/StatefulPartitionedCall'^Hidden_Layer_2/StatefulPartitionedCall%^Output_Layer/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : 2P
&Hidden_Layer_1/StatefulPartitionedCall&Hidden_Layer_1/StatefulPartitionedCall2P
&Hidden_Layer_2/StatefulPartitionedCall&Hidden_Layer_2/StatefulPartitionedCall2L
$Output_Layer/StatefulPartitionedCall$Output_Layer/StatefulPartitionedCall:^ Z
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameInput_layer_input
½

ý
I__inference_Hidden_Layer_1_layer_call_and_return_conditional_losses_45933

inputs2
matmul_readvariableop_resource:
¬.
biasadd_readvariableop_resource:	¬
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
¬*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:¬*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ã$
Ê
E__inference_sequential_layer_call_and_return_conditional_losses_46249

inputsA
-hidden_layer_1_matmul_readvariableop_resource:
¬=
.hidden_layer_1_biasadd_readvariableop_resource:	¬@
-hidden_layer_2_matmul_readvariableop_resource:	¬d<
.hidden_layer_2_biasadd_readvariableop_resource:d=
+output_layer_matmul_readvariableop_resource:d
:
,output_layer_biasadd_readvariableop_resource:

identity¢%Hidden_Layer_1/BiasAdd/ReadVariableOp¢$Hidden_Layer_1/MatMul/ReadVariableOp¢%Hidden_Layer_2/BiasAdd/ReadVariableOp¢$Hidden_Layer_2/MatMul/ReadVariableOp¢#Output_Layer/BiasAdd/ReadVariableOp¢"Output_Layer/MatMul/ReadVariableOpw
Input_layer/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  2
Input_layer/Const
Input_layer/ReshapeReshapeinputsInput_layer/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Input_layer/Reshape¼
$Hidden_Layer_1/MatMul/ReadVariableOpReadVariableOp-hidden_layer_1_matmul_readvariableop_resource* 
_output_shapes
:
¬*
dtype02&
$Hidden_Layer_1/MatMul/ReadVariableOp·
Hidden_Layer_1/MatMulMatMulInput_layer/Reshape:output:0,Hidden_Layer_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
Hidden_Layer_1/MatMulº
%Hidden_Layer_1/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer_1_biasadd_readvariableop_resource*
_output_shapes	
:¬*
dtype02'
%Hidden_Layer_1/BiasAdd/ReadVariableOp¾
Hidden_Layer_1/BiasAddBiasAddHidden_Layer_1/MatMul:product:0-Hidden_Layer_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
Hidden_Layer_1/BiasAdd
Hidden_Layer_1/ReluReluHidden_Layer_1/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
Hidden_Layer_1/Relu»
$Hidden_Layer_2/MatMul/ReadVariableOpReadVariableOp-hidden_layer_2_matmul_readvariableop_resource*
_output_shapes
:	¬d*
dtype02&
$Hidden_Layer_2/MatMul/ReadVariableOp»
Hidden_Layer_2/MatMulMatMul!Hidden_Layer_1/Relu:activations:0,Hidden_Layer_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
Hidden_Layer_2/MatMul¹
%Hidden_Layer_2/BiasAdd/ReadVariableOpReadVariableOp.hidden_layer_2_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02'
%Hidden_Layer_2/BiasAdd/ReadVariableOp½
Hidden_Layer_2/BiasAddBiasAddHidden_Layer_2/MatMul:product:0-Hidden_Layer_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
Hidden_Layer_2/BiasAdd
Hidden_Layer_2/ReluReluHidden_Layer_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
Hidden_Layer_2/Relu´
"Output_Layer/MatMul/ReadVariableOpReadVariableOp+output_layer_matmul_readvariableop_resource*
_output_shapes

:d
*
dtype02$
"Output_Layer/MatMul/ReadVariableOpµ
Output_Layer/MatMulMatMul!Hidden_Layer_2/Relu:activations:0*Output_Layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
Output_Layer/MatMul³
#Output_Layer/BiasAdd/ReadVariableOpReadVariableOp,output_layer_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02%
#Output_Layer/BiasAdd/ReadVariableOpµ
Output_Layer/BiasAddBiasAddOutput_Layer/MatMul:product:0+Output_Layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
Output_Layer/BiasAdd
Output_Layer/SoftmaxSoftmaxOutput_Layer/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
Output_Layer/SoftmaxÛ
IdentityIdentityOutput_Layer/Softmax:softmax:0&^Hidden_Layer_1/BiasAdd/ReadVariableOp%^Hidden_Layer_1/MatMul/ReadVariableOp&^Hidden_Layer_2/BiasAdd/ReadVariableOp%^Hidden_Layer_2/MatMul/ReadVariableOp$^Output_Layer/BiasAdd/ReadVariableOp#^Output_Layer/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : 2N
%Hidden_Layer_1/BiasAdd/ReadVariableOp%Hidden_Layer_1/BiasAdd/ReadVariableOp2L
$Hidden_Layer_1/MatMul/ReadVariableOp$Hidden_Layer_1/MatMul/ReadVariableOp2N
%Hidden_Layer_2/BiasAdd/ReadVariableOp%Hidden_Layer_2/BiasAdd/ReadVariableOp2L
$Hidden_Layer_2/MatMul/ReadVariableOp$Hidden_Layer_2/MatMul/ReadVariableOp2J
#Output_Layer/BiasAdd/ReadVariableOp#Output_Layer/BiasAdd/ReadVariableOp2H
"Output_Layer/MatMul/ReadVariableOp"Output_Layer/MatMul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ý+
´
 __inference__wrapped_model_45907
input_layer_inputL
8sequential_hidden_layer_1_matmul_readvariableop_resource:
¬H
9sequential_hidden_layer_1_biasadd_readvariableop_resource:	¬K
8sequential_hidden_layer_2_matmul_readvariableop_resource:	¬dG
9sequential_hidden_layer_2_biasadd_readvariableop_resource:dH
6sequential_output_layer_matmul_readvariableop_resource:d
E
7sequential_output_layer_biasadd_readvariableop_resource:

identity¢0sequential/Hidden_Layer_1/BiasAdd/ReadVariableOp¢/sequential/Hidden_Layer_1/MatMul/ReadVariableOp¢0sequential/Hidden_Layer_2/BiasAdd/ReadVariableOp¢/sequential/Hidden_Layer_2/MatMul/ReadVariableOp¢.sequential/Output_Layer/BiasAdd/ReadVariableOp¢-sequential/Output_Layer/MatMul/ReadVariableOp
sequential/Input_layer/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  2
sequential/Input_layer/Const¸
sequential/Input_layer/ReshapeReshapeinput_layer_input%sequential/Input_layer/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential/Input_layer/ReshapeÝ
/sequential/Hidden_Layer_1/MatMul/ReadVariableOpReadVariableOp8sequential_hidden_layer_1_matmul_readvariableop_resource* 
_output_shapes
:
¬*
dtype021
/sequential/Hidden_Layer_1/MatMul/ReadVariableOpã
 sequential/Hidden_Layer_1/MatMulMatMul'sequential/Input_layer/Reshape:output:07sequential/Hidden_Layer_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2"
 sequential/Hidden_Layer_1/MatMulÛ
0sequential/Hidden_Layer_1/BiasAdd/ReadVariableOpReadVariableOp9sequential_hidden_layer_1_biasadd_readvariableop_resource*
_output_shapes	
:¬*
dtype022
0sequential/Hidden_Layer_1/BiasAdd/ReadVariableOpê
!sequential/Hidden_Layer_1/BiasAddBiasAdd*sequential/Hidden_Layer_1/MatMul:product:08sequential/Hidden_Layer_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2#
!sequential/Hidden_Layer_1/BiasAdd§
sequential/Hidden_Layer_1/ReluRelu*sequential/Hidden_Layer_1/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2 
sequential/Hidden_Layer_1/ReluÜ
/sequential/Hidden_Layer_2/MatMul/ReadVariableOpReadVariableOp8sequential_hidden_layer_2_matmul_readvariableop_resource*
_output_shapes
:	¬d*
dtype021
/sequential/Hidden_Layer_2/MatMul/ReadVariableOpç
 sequential/Hidden_Layer_2/MatMulMatMul,sequential/Hidden_Layer_1/Relu:activations:07sequential/Hidden_Layer_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2"
 sequential/Hidden_Layer_2/MatMulÚ
0sequential/Hidden_Layer_2/BiasAdd/ReadVariableOpReadVariableOp9sequential_hidden_layer_2_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype022
0sequential/Hidden_Layer_2/BiasAdd/ReadVariableOpé
!sequential/Hidden_Layer_2/BiasAddBiasAdd*sequential/Hidden_Layer_2/MatMul:product:08sequential/Hidden_Layer_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2#
!sequential/Hidden_Layer_2/BiasAdd¦
sequential/Hidden_Layer_2/ReluRelu*sequential/Hidden_Layer_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2 
sequential/Hidden_Layer_2/ReluÕ
-sequential/Output_Layer/MatMul/ReadVariableOpReadVariableOp6sequential_output_layer_matmul_readvariableop_resource*
_output_shapes

:d
*
dtype02/
-sequential/Output_Layer/MatMul/ReadVariableOpá
sequential/Output_Layer/MatMulMatMul,sequential/Hidden_Layer_2/Relu:activations:05sequential/Output_Layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2 
sequential/Output_Layer/MatMulÔ
.sequential/Output_Layer/BiasAdd/ReadVariableOpReadVariableOp7sequential_output_layer_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype020
.sequential/Output_Layer/BiasAdd/ReadVariableOpá
sequential/Output_Layer/BiasAddBiasAdd(sequential/Output_Layer/MatMul:product:06sequential/Output_Layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2!
sequential/Output_Layer/BiasAdd©
sequential/Output_Layer/SoftmaxSoftmax(sequential/Output_Layer/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2!
sequential/Output_Layer/Softmax¨
IdentityIdentity)sequential/Output_Layer/Softmax:softmax:01^sequential/Hidden_Layer_1/BiasAdd/ReadVariableOp0^sequential/Hidden_Layer_1/MatMul/ReadVariableOp1^sequential/Hidden_Layer_2/BiasAdd/ReadVariableOp0^sequential/Hidden_Layer_2/MatMul/ReadVariableOp/^sequential/Output_Layer/BiasAdd/ReadVariableOp.^sequential/Output_Layer/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : 2d
0sequential/Hidden_Layer_1/BiasAdd/ReadVariableOp0sequential/Hidden_Layer_1/BiasAdd/ReadVariableOp2b
/sequential/Hidden_Layer_1/MatMul/ReadVariableOp/sequential/Hidden_Layer_1/MatMul/ReadVariableOp2d
0sequential/Hidden_Layer_2/BiasAdd/ReadVariableOp0sequential/Hidden_Layer_2/BiasAdd/ReadVariableOp2b
/sequential/Hidden_Layer_2/MatMul/ReadVariableOp/sequential/Hidden_Layer_2/MatMul/ReadVariableOp2`
.sequential/Output_Layer/BiasAdd/ReadVariableOp.sequential/Output_Layer/BiasAdd/ReadVariableOp2^
-sequential/Output_Layer/MatMul/ReadVariableOp-sequential/Output_Layer/MatMul/ReadVariableOp:^ Z
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameInput_layer_input
µ

û
I__inference_Hidden_Layer_2_layer_call_and_return_conditional_losses_45950

inputs1
matmul_readvariableop_resource:	¬d-
biasadd_readvariableop_resource:d
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	¬d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¬: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
 
_user_specified_nameinputs
¡

,__inference_Output_Layer_layer_call_fn_46309

inputs
unknown:d

	unknown_0:

identity¢StatefulPartitionedCall÷
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_Output_Layer_layer_call_and_return_conditional_losses_459672
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
÷>
é
__inference__traced_save_46424
file_prefix4
0savev2_hidden_layer_1_kernel_read_readvariableop2
.savev2_hidden_layer_1_bias_read_readvariableop4
0savev2_hidden_layer_2_kernel_read_readvariableop2
.savev2_hidden_layer_2_bias_read_readvariableop2
.savev2_output_layer_kernel_read_readvariableop0
,savev2_output_layer_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop;
7savev2_adam_hidden_layer_1_kernel_m_read_readvariableop9
5savev2_adam_hidden_layer_1_bias_m_read_readvariableop;
7savev2_adam_hidden_layer_2_kernel_m_read_readvariableop9
5savev2_adam_hidden_layer_2_bias_m_read_readvariableop9
5savev2_adam_output_layer_kernel_m_read_readvariableop7
3savev2_adam_output_layer_bias_m_read_readvariableop;
7savev2_adam_hidden_layer_1_kernel_v_read_readvariableop9
5savev2_adam_hidden_layer_1_bias_v_read_readvariableop;
7savev2_adam_hidden_layer_2_kernel_v_read_readvariableop9
5savev2_adam_hidden_layer_2_bias_v_read_readvariableop9
5savev2_adam_output_layer_kernel_v_read_readvariableop7
3savev2_adam_output_layer_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesÀ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesç
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:00savev2_hidden_layer_1_kernel_read_readvariableop.savev2_hidden_layer_1_bias_read_readvariableop0savev2_hidden_layer_2_kernel_read_readvariableop.savev2_hidden_layer_2_bias_read_readvariableop.savev2_output_layer_kernel_read_readvariableop,savev2_output_layer_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop7savev2_adam_hidden_layer_1_kernel_m_read_readvariableop5savev2_adam_hidden_layer_1_bias_m_read_readvariableop7savev2_adam_hidden_layer_2_kernel_m_read_readvariableop5savev2_adam_hidden_layer_2_bias_m_read_readvariableop5savev2_adam_output_layer_kernel_m_read_readvariableop3savev2_adam_output_layer_bias_m_read_readvariableop7savev2_adam_hidden_layer_1_kernel_v_read_readvariableop5savev2_adam_hidden_layer_1_bias_v_read_readvariableop7savev2_adam_hidden_layer_2_kernel_v_read_readvariableop5savev2_adam_hidden_layer_2_bias_v_read_readvariableop5savev2_adam_output_layer_kernel_v_read_readvariableop3savev2_adam_output_layer_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 **
dtypes 
2	2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*Ç
_input_shapesµ
²: :
¬:¬:	¬d:d:d
:
: : : : : : : : : :
¬:¬:	¬d:d:d
:
:
¬:¬:	¬d:d:d
:
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
¬:!

_output_shapes	
:¬:%!

_output_shapes
:	¬d: 

_output_shapes
:d:$ 

_output_shapes

:d
: 

_output_shapes
:
:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
¬:!

_output_shapes	
:¬:%!

_output_shapes
:	¬d: 

_output_shapes
:d:$ 

_output_shapes

:d
: 

_output_shapes
:
:&"
 
_output_shapes
:
¬:!

_output_shapes	
:¬:%!

_output_shapes
:	¬d: 

_output_shapes
:d:$ 

_output_shapes

:d
: 

_output_shapes
:
:

_output_shapes
: 
µ

û
I__inference_Hidden_Layer_2_layer_call_and_return_conditional_losses_46300

inputs1
matmul_readvariableop_resource:	¬d-
biasadd_readvariableop_resource:d
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	¬d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¬: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
 
_user_specified_nameinputs
Ñ

*__inference_sequential_layer_call_fn_46178

inputs
unknown:
¬
	unknown_0:	¬
	unknown_1:	¬d
	unknown_2:d
	unknown_3:d

	unknown_4:

identity¢StatefulPartitionedCall©
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_459742
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
·

ø
G__inference_Output_Layer_layer_call_and_return_conditional_losses_45967

inputs0
matmul_readvariableop_resource:d
-
biasadd_readvariableop_resource:

identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
à
b
F__inference_Input_layer_layer_call_and_return_conditional_losses_46260

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
v
Ý
!__inference__traced_restore_46515
file_prefix:
&assignvariableop_hidden_layer_1_kernel:
¬5
&assignvariableop_1_hidden_layer_1_bias:	¬;
(assignvariableop_2_hidden_layer_2_kernel:	¬d4
&assignvariableop_3_hidden_layer_2_bias:d8
&assignvariableop_4_output_layer_kernel:d
2
$assignvariableop_5_output_layer_bias:
&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: #
assignvariableop_11_total: #
assignvariableop_12_count: %
assignvariableop_13_total_1: %
assignvariableop_14_count_1: D
0assignvariableop_15_adam_hidden_layer_1_kernel_m:
¬=
.assignvariableop_16_adam_hidden_layer_1_bias_m:	¬C
0assignvariableop_17_adam_hidden_layer_2_kernel_m:	¬d<
.assignvariableop_18_adam_hidden_layer_2_bias_m:d@
.assignvariableop_19_adam_output_layer_kernel_m:d
:
,assignvariableop_20_adam_output_layer_bias_m:
D
0assignvariableop_21_adam_hidden_layer_1_kernel_v:
¬=
.assignvariableop_22_adam_hidden_layer_1_bias_v:	¬C
0assignvariableop_23_adam_hidden_layer_2_kernel_v:	¬d<
.assignvariableop_24_adam_hidden_layer_2_bias_v:d@
.assignvariableop_25_adam_output_layer_kernel_v:d
:
,assignvariableop_26_adam_output_layer_bias_v:

identity_28¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesÆ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices¸
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapesr
p::::::::::::::::::::::::::::**
dtypes 
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity¥
AssignVariableOpAssignVariableOp&assignvariableop_hidden_layer_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1«
AssignVariableOp_1AssignVariableOp&assignvariableop_1_hidden_layer_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2­
AssignVariableOp_2AssignVariableOp(assignvariableop_2_hidden_layer_2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3«
AssignVariableOp_3AssignVariableOp&assignvariableop_3_hidden_layer_2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4«
AssignVariableOp_4AssignVariableOp&assignvariableop_4_output_layer_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5©
AssignVariableOp_5AssignVariableOp$assignvariableop_5_output_layer_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_6¡
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7£
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8£
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9¢
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10®
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11¡
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12¡
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13£
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14£
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15¸
AssignVariableOp_15AssignVariableOp0assignvariableop_15_adam_hidden_layer_1_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16¶
AssignVariableOp_16AssignVariableOp.assignvariableop_16_adam_hidden_layer_1_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17¸
AssignVariableOp_17AssignVariableOp0assignvariableop_17_adam_hidden_layer_2_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18¶
AssignVariableOp_18AssignVariableOp.assignvariableop_18_adam_hidden_layer_2_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19¶
AssignVariableOp_19AssignVariableOp.assignvariableop_19_adam_output_layer_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20´
AssignVariableOp_20AssignVariableOp,assignvariableop_20_adam_output_layer_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21¸
AssignVariableOp_21AssignVariableOp0assignvariableop_21_adam_hidden_layer_1_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22¶
AssignVariableOp_22AssignVariableOp.assignvariableop_22_adam_hidden_layer_1_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23¸
AssignVariableOp_23AssignVariableOp0assignvariableop_23_adam_hidden_layer_2_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24¶
AssignVariableOp_24AssignVariableOp.assignvariableop_24_adam_hidden_layer_2_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25¶
AssignVariableOp_25AssignVariableOp.assignvariableop_25_adam_output_layer_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26´
AssignVariableOp_26AssignVariableOp,assignvariableop_26_adam_output_layer_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_269
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp°
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_27£
Identity_28IdentityIdentity_27:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_28"#
identity_28Identity_28:output:0*K
_input_shapes:
8: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ò

*__inference_sequential_layer_call_fn_45989
input_layer_input
unknown:
¬
	unknown_0:	¬
	unknown_1:	¬d
	unknown_2:d
	unknown_3:d

	unknown_4:

identity¢StatefulPartitionedCall´
StatefulPartitionedCallStatefulPartitionedCallinput_layer_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_459742
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+
_user_specified_nameInput_layer_input
Ê
G
+__inference_Input_layer_layer_call_fn_46254

inputs
identityÅ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_Input_layer_layer_call_and_return_conditional_losses_459202
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"ÌL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ç
serving_default³
S
Input_layer_input>
#serving_default_Input_layer_input:0ÿÿÿÿÿÿÿÿÿ@
Output_Layer0
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿ
tensorflow/serving/predict:³¢
ý*
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	optimizer
trainable_variables
regularization_losses
	variables
		keras_api


signatures
V_default_save_signature
W__call__
*X&call_and_return_all_conditional_losses"°(
_tf_keras_sequential({"name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "Input_layer_input"}}, {"class_name": "Flatten", "config": {"name": "Input_layer", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28]}, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "Hidden_Layer_1", "trainable": true, "dtype": "float32", "units": 300, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "Hidden_Layer_2", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "Output_Layer", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 12}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 28, 28]}, "float32", "Input_layer_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "Input_layer_input"}, "shared_object_id": 0}, {"class_name": "Flatten", "config": {"name": "Input_layer", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28]}, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 1}, {"class_name": "Dense", "config": {"name": "Hidden_Layer_1", "trainable": true, "dtype": "float32", "units": 300, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 4}, {"class_name": "Dense", "config": {"name": "Hidden_Layer_2", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 7}, {"class_name": "Dense", "config": {"name": "Output_Layer", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 10}]}}, "training_config": {"loss": {"class_name": "SparseCategoricalCrossentropy", "config": {"reduction": "auto", "name": "sparse_categorical_crossentropy", "from_logits": false}, "shared_object_id": 13}, "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 14}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}

trainable_variables
regularization_losses
	variables
	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses"
_tf_keras_layerë{"name": "Input_layer", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28]}, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "Input_layer", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28]}, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 1, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 12}}
Þ

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
[__call__
*\&call_and_return_all_conditional_losses"¹
_tf_keras_layer{"name": "Hidden_Layer_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "Hidden_Layer_1", "trainable": true, "dtype": "float32", "units": 300, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 4, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 784}}, "shared_object_id": 15}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 784]}}
Þ

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
]__call__
*^&call_and_return_all_conditional_losses"¹
_tf_keras_layer{"name": "Hidden_Layer_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "Hidden_Layer_2", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 7, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 300}}, "shared_object_id": 16}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 300]}}
Ý

kernel
bias
trainable_variables
regularization_losses
	variables
 	keras_api
___call__
*`&call_and_return_all_conditional_losses"¸
_tf_keras_layer{"name": "Output_Layer", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "Output_Layer", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 10, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}, "shared_object_id": 17}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
¿
!iter

"beta_1

#beta_2
	$decay
%learning_ratemJmKmLmMmNmOvPvQvRvSvTvU"
	optimizer
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
Ê
&non_trainable_variables

'layers
trainable_variables
(metrics
regularization_losses
	variables
)layer_metrics
*layer_regularization_losses
W__call__
V_default_save_signature
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
,
aserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
+non_trainable_variables

,layers
trainable_variables
-metrics
regularization_losses
	variables
.layer_metrics
/layer_regularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
):'
¬2Hidden_Layer_1/kernel
": ¬2Hidden_Layer_1/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­
0non_trainable_variables

1layers
trainable_variables
2metrics
regularization_losses
	variables
3layer_metrics
4layer_regularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
(:&	¬d2Hidden_Layer_2/kernel
!:d2Hidden_Layer_2/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­
5non_trainable_variables

6layers
trainable_variables
7metrics
regularization_losses
	variables
8layer_metrics
9layer_regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
%:#d
2Output_Layer/kernel
:
2Output_Layer/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­
:non_trainable_variables

;layers
trainable_variables
<metrics
regularization_losses
	variables
=layer_metrics
>layer_regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
.
?0
@1"
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
trackable_dict_wrapper
 "
trackable_list_wrapper
Ô
	Atotal
	Bcount
C	variables
D	keras_api"
_tf_keras_metric{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 18}

	Etotal
	Fcount
G
_fn_kwargs
H	variables
I	keras_api"×
_tf_keras_metric¼{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 14}
:  (2total
:  (2count
.
A0
B1"
trackable_list_wrapper
-
C	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
E0
F1"
trackable_list_wrapper
-
H	variables"
_generic_user_object
.:,
¬2Adam/Hidden_Layer_1/kernel/m
':%¬2Adam/Hidden_Layer_1/bias/m
-:+	¬d2Adam/Hidden_Layer_2/kernel/m
&:$d2Adam/Hidden_Layer_2/bias/m
*:(d
2Adam/Output_Layer/kernel/m
$:"
2Adam/Output_Layer/bias/m
.:,
¬2Adam/Hidden_Layer_1/kernel/v
':%¬2Adam/Hidden_Layer_1/bias/v
-:+	¬d2Adam/Hidden_Layer_2/kernel/v
&:$d2Adam/Hidden_Layer_2/bias/v
*:(d
2Adam/Output_Layer/kernel/v
$:"
2Adam/Output_Layer/bias/v
ì2é
 __inference__wrapped_model_45907Ä
²
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *4¢1
/,
Input_layer_inputÿÿÿÿÿÿÿÿÿ
ö2ó
*__inference_sequential_layer_call_fn_45989
*__inference_sequential_layer_call_fn_46178
*__inference_sequential_layer_call_fn_46195
*__inference_sequential_layer_call_fn_46096À
·²³
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
kwonlydefaultsª 
annotationsª *
 
â2ß
E__inference_sequential_layer_call_and_return_conditional_losses_46222
E__inference_sequential_layer_call_and_return_conditional_losses_46249
E__inference_sequential_layer_call_and_return_conditional_losses_46116
E__inference_sequential_layer_call_and_return_conditional_losses_46136À
·²³
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
kwonlydefaultsª 
annotationsª *
 
Õ2Ò
+__inference_Input_layer_layer_call_fn_46254¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_Input_layer_layer_call_and_return_conditional_losses_46260¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ø2Õ
.__inference_Hidden_Layer_1_layer_call_fn_46269¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ó2ð
I__inference_Hidden_Layer_1_layer_call_and_return_conditional_losses_46280¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ø2Õ
.__inference_Hidden_Layer_2_layer_call_fn_46289¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ó2ð
I__inference_Hidden_Layer_2_layer_call_and_return_conditional_losses_46300¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ö2Ó
,__inference_Output_Layer_layer_call_fn_46309¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ñ2î
G__inference_Output_Layer_layer_call_and_return_conditional_losses_46320¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÔBÑ
#__inference_signature_wrapper_46161Input_layer_input"
²
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
annotationsª *
 «
I__inference_Hidden_Layer_1_layer_call_and_return_conditional_losses_46280^0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ¬
 
.__inference_Hidden_Layer_1_layer_call_fn_46269Q0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¬ª
I__inference_Hidden_Layer_2_layer_call_and_return_conditional_losses_46300]0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ¬
ª "%¢"

0ÿÿÿÿÿÿÿÿÿd
 
.__inference_Hidden_Layer_2_layer_call_fn_46289P0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ¬
ª "ÿÿÿÿÿÿÿÿÿd§
F__inference_Input_layer_layer_call_and_return_conditional_losses_46260]3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_Input_layer_layer_call_fn_46254P3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ§
G__inference_Output_Layer_layer_call_and_return_conditional_losses_46320\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿd
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 
,__inference_Output_Layer_layer_call_fn_46309O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿd
ª "ÿÿÿÿÿÿÿÿÿ
ª
 __inference__wrapped_model_45907>¢;
4¢1
/,
Input_layer_inputÿÿÿÿÿÿÿÿÿ
ª ";ª8
6
Output_Layer&#
Output_Layerÿÿÿÿÿÿÿÿÿ
À
E__inference_sequential_layer_call_and_return_conditional_losses_46116wF¢C
<¢9
/,
Input_layer_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 À
E__inference_sequential_layer_call_and_return_conditional_losses_46136wF¢C
<¢9
/,
Input_layer_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 µ
E__inference_sequential_layer_call_and_return_conditional_losses_46222l;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 µ
E__inference_sequential_layer_call_and_return_conditional_losses_46249l;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 
*__inference_sequential_layer_call_fn_45989jF¢C
<¢9
/,
Input_layer_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ

*__inference_sequential_layer_call_fn_46096jF¢C
<¢9
/,
Input_layer_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ

*__inference_sequential_layer_call_fn_46178_;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ

*__inference_sequential_layer_call_fn_46195_;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
Â
#__inference_signature_wrapper_46161S¢P
¢ 
IªF
D
Input_layer_input/,
Input_layer_inputÿÿÿÿÿÿÿÿÿ";ª8
6
Output_Layer&#
Output_Layerÿÿÿÿÿÿÿÿÿ
