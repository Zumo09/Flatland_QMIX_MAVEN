��	
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
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
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
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
E
Relu
features"T
activations"T"
Ttype:
2	
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
executor_typestring �
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718��
y
dense_0/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?�*
shared_namedense_0/kernel
r
"dense_0/kernel/Read/ReadVariableOpReadVariableOpdense_0/kernel*
_output_shapes
:	?�*
dtype0
q
dense_0/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_0/bias
j
 dense_0/bias/Read/ReadVariableOpReadVariableOpdense_0/bias*
_output_shapes	
:�*
dtype0
y
val_0_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*
shared_nameval_0_3/kernel
r
"val_0_3/kernel/Read/ReadVariableOpReadVariableOpval_0_3/kernel*
_output_shapes
:	�@*
dtype0
p
val_0_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameval_0_3/bias
i
 val_0_3/bias/Read/ReadVariableOpReadVariableOpval_0_3/bias*
_output_shapes
:@*
dtype0
y
adv_0_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*
shared_nameadv_0_3/kernel
r
"adv_0_3/kernel/Read/ReadVariableOpReadVariableOpadv_0_3/kernel*
_output_shapes
:	�@*
dtype0
p
adv_0_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameadv_0_3/bias
i
 adv_0_3/bias/Read/ReadVariableOpReadVariableOpadv_0_3/bias*
_output_shapes
:@*
dtype0
x
val_1_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *
shared_nameval_1_3/kernel
q
"val_1_3/kernel/Read/ReadVariableOpReadVariableOpval_1_3/kernel*
_output_shapes

:@ *
dtype0
p
val_1_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameval_1_3/bias
i
 val_1_3/bias/Read/ReadVariableOpReadVariableOpval_1_3/bias*
_output_shapes
: *
dtype0
x
adv_1_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *
shared_nameadv_1_3/kernel
q
"adv_1_3/kernel/Read/ReadVariableOpReadVariableOpadv_1_3/kernel*
_output_shapes

:@ *
dtype0
p
adv_1_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameadv_1_3/bias
i
 adv_1_3/bias/Read/ReadVariableOpReadVariableOpadv_1_3/bias*
_output_shapes
: *
dtype0
x
val_2_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_nameval_2_3/kernel
q
"val_2_3/kernel/Read/ReadVariableOpReadVariableOpval_2_3/kernel*
_output_shapes

: *
dtype0
p
val_2_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameval_2_3/bias
i
 val_2_3/bias/Read/ReadVariableOpReadVariableOpval_2_3/bias*
_output_shapes
:*
dtype0
x
adv_2_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_nameadv_2_3/kernel
q
"adv_2_3/kernel/Read/ReadVariableOpReadVariableOpadv_2_3/kernel*
_output_shapes

: *
dtype0
p
adv_2_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameadv_2_3/bias
i
 adv_2_3/bias/Read/ReadVariableOpReadVariableOpadv_2_3/bias*
_output_shapes
:*
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

NoOpNoOp
�&
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�%
value�%B�% B�%
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
layer_with_weights-6
layer-7
	layer-8

layer-9
layer-10
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api

signatures
 
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
 trainable_variables
!regularization_losses
"	variables
#	keras_api
h

$kernel
%bias
&trainable_variables
'regularization_losses
(	variables
)	keras_api
h

*kernel
+bias
,trainable_variables
-regularization_losses
.	variables
/	keras_api
h

0kernel
1bias
2trainable_variables
3regularization_losses
4	variables
5	keras_api
h

6kernel
7bias
8trainable_variables
9regularization_losses
:	variables
;	keras_api

<	keras_api

=	keras_api

>	keras_api
 
f
0
1
2
3
4
5
$6
%7
*8
+9
010
111
612
713
 
f
0
1
2
3
4
5
$6
%7
*8
+9
010
111
612
713
�
trainable_variables
regularization_losses
?non_trainable_variables
@metrics

Alayers
Blayer_metrics
	variables
Clayer_regularization_losses
 
ZX
VARIABLE_VALUEdense_0/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_0/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
�
trainable_variables
regularization_losses
Dnon_trainable_variables
Emetrics

Flayers
Glayer_metrics
	variables
Hlayer_regularization_losses
ZX
VARIABLE_VALUEval_0_3/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEval_0_3/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
�
trainable_variables
regularization_losses
Inon_trainable_variables
Jmetrics

Klayers
Llayer_metrics
	variables
Mlayer_regularization_losses
ZX
VARIABLE_VALUEadv_0_3/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEadv_0_3/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
�
 trainable_variables
!regularization_losses
Nnon_trainable_variables
Ometrics

Players
Qlayer_metrics
"	variables
Rlayer_regularization_losses
ZX
VARIABLE_VALUEval_1_3/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEval_1_3/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

$0
%1
 

$0
%1
�
&trainable_variables
'regularization_losses
Snon_trainable_variables
Tmetrics

Ulayers
Vlayer_metrics
(	variables
Wlayer_regularization_losses
ZX
VARIABLE_VALUEadv_1_3/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEadv_1_3/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

*0
+1
 

*0
+1
�
,trainable_variables
-regularization_losses
Xnon_trainable_variables
Ymetrics

Zlayers
[layer_metrics
.	variables
\layer_regularization_losses
ZX
VARIABLE_VALUEval_2_3/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEval_2_3/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

00
11
 

00
11
�
2trainable_variables
3regularization_losses
]non_trainable_variables
^metrics

_layers
`layer_metrics
4	variables
alayer_regularization_losses
ZX
VARIABLE_VALUEadv_2_3/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEadv_2_3/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

60
71
 

60
71
�
8trainable_variables
9regularization_losses
bnon_trainable_variables
cmetrics

dlayers
elayer_metrics
:	variables
flayer_regularization_losses
 
 
 
 

g0
N
0
1
2
3
4
5
6
7
	8

9
10
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
	htotal
	icount
j	variables
k	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

h0
i1

j	variables
~
serving_default_observationPlaceholder*'
_output_shapes
:���������?*
dtype0*
shape:���������?
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_observationdense_0/kerneldense_0/biasadv_0_3/kerneladv_0_3/biasval_0_3/kernelval_0_3/biasadv_1_3/kerneladv_1_3/biasval_1_3/kernelval_1_3/biasadv_2_3/kerneladv_2_3/biasval_2_3/kernelval_2_3/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *0
f+R)
'__inference_signature_wrapper_263226013
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
z
StaticRegexFullMatchStaticRegexFullMatchsaver_filename"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*
\
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part
a
Const_2Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
h
SelectSelectStaticRegexFullMatchConst_1Const_2"/device:CPU:**
T0*
_output_shapes
: 
`

StringJoin
StringJoinsaver_filenameSelect"/device:CPU:**
N*
_output_shapes
: 
L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
x
ShardedFilenameShardedFilename
StringJoinShardedFilename/shard
num_shards"/device:CPU:0*
_output_shapes
: 
�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B 
�
SaveV2SaveV2ShardedFilenameSaveV2/tensor_namesSaveV2/shape_and_slices"dense_0/kernel/Read/ReadVariableOp dense_0/bias/Read/ReadVariableOp"val_0_3/kernel/Read/ReadVariableOp val_0_3/bias/Read/ReadVariableOp"adv_0_3/kernel/Read/ReadVariableOp adv_0_3/bias/Read/ReadVariableOp"val_1_3/kernel/Read/ReadVariableOp val_1_3/bias/Read/ReadVariableOp"adv_1_3/kernel/Read/ReadVariableOp adv_1_3/bias/Read/ReadVariableOp"val_2_3/kernel/Read/ReadVariableOp val_2_3/bias/Read/ReadVariableOp"adv_2_3/kernel/Read/ReadVariableOp adv_2_3/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst"/device:CPU:0*
dtypes
2
�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
o
MergeV2CheckpointsMergeV2Checkpoints&MergeV2Checkpoints/checkpoint_prefixessaver_filename"/device:CPU:0
i
IdentityIdentitysaver_filename^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 
�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B 
�
	RestoreV2	RestoreV2saver_filenameRestoreV2/tensor_namesRestoreV2/shape_and_slices"/device:CPU:0*X
_output_shapesF
D:::::::::::::::::*
dtypes
2
S

Identity_1Identity	RestoreV2"/device:CPU:0*
T0*
_output_shapes
:
\
AssignVariableOpAssignVariableOpdense_0/kernel
Identity_1"/device:CPU:0*
dtype0
U

Identity_2IdentityRestoreV2:1"/device:CPU:0*
T0*
_output_shapes
:
\
AssignVariableOp_1AssignVariableOpdense_0/bias
Identity_2"/device:CPU:0*
dtype0
U

Identity_3IdentityRestoreV2:2"/device:CPU:0*
T0*
_output_shapes
:
^
AssignVariableOp_2AssignVariableOpval_0_3/kernel
Identity_3"/device:CPU:0*
dtype0
U

Identity_4IdentityRestoreV2:3"/device:CPU:0*
T0*
_output_shapes
:
\
AssignVariableOp_3AssignVariableOpval_0_3/bias
Identity_4"/device:CPU:0*
dtype0
U

Identity_5IdentityRestoreV2:4"/device:CPU:0*
T0*
_output_shapes
:
^
AssignVariableOp_4AssignVariableOpadv_0_3/kernel
Identity_5"/device:CPU:0*
dtype0
U

Identity_6IdentityRestoreV2:5"/device:CPU:0*
T0*
_output_shapes
:
\
AssignVariableOp_5AssignVariableOpadv_0_3/bias
Identity_6"/device:CPU:0*
dtype0
U

Identity_7IdentityRestoreV2:6"/device:CPU:0*
T0*
_output_shapes
:
^
AssignVariableOp_6AssignVariableOpval_1_3/kernel
Identity_7"/device:CPU:0*
dtype0
U

Identity_8IdentityRestoreV2:7"/device:CPU:0*
T0*
_output_shapes
:
\
AssignVariableOp_7AssignVariableOpval_1_3/bias
Identity_8"/device:CPU:0*
dtype0
U

Identity_9IdentityRestoreV2:8"/device:CPU:0*
T0*
_output_shapes
:
^
AssignVariableOp_8AssignVariableOpadv_1_3/kernel
Identity_9"/device:CPU:0*
dtype0
V
Identity_10IdentityRestoreV2:9"/device:CPU:0*
T0*
_output_shapes
:
]
AssignVariableOp_9AssignVariableOpadv_1_3/biasIdentity_10"/device:CPU:0*
dtype0
W
Identity_11IdentityRestoreV2:10"/device:CPU:0*
T0*
_output_shapes
:
`
AssignVariableOp_10AssignVariableOpval_2_3/kernelIdentity_11"/device:CPU:0*
dtype0
W
Identity_12IdentityRestoreV2:11"/device:CPU:0*
T0*
_output_shapes
:
^
AssignVariableOp_11AssignVariableOpval_2_3/biasIdentity_12"/device:CPU:0*
dtype0
W
Identity_13IdentityRestoreV2:12"/device:CPU:0*
T0*
_output_shapes
:
`
AssignVariableOp_12AssignVariableOpadv_2_3/kernelIdentity_13"/device:CPU:0*
dtype0
W
Identity_14IdentityRestoreV2:13"/device:CPU:0*
T0*
_output_shapes
:
^
AssignVariableOp_13AssignVariableOpadv_2_3/biasIdentity_14"/device:CPU:0*
dtype0
W
Identity_15IdentityRestoreV2:14"/device:CPU:0*
T0*
_output_shapes
:
W
AssignVariableOp_14AssignVariableOptotalIdentity_15"/device:CPU:0*
dtype0
W
Identity_16IdentityRestoreV2:15"/device:CPU:0*
T0*
_output_shapes
:
W
AssignVariableOp_15AssignVariableOpcountIdentity_16"/device:CPU:0*
dtype0

NoOp_1NoOp"/device:CPU:0
�
Identity_17Identitysaver_filename^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp_1"/device:CPU:0*
T0*
_output_shapes
: ��
�

�
F__inference_adv_1_3_layer_call_and_return_conditional_losses_263226332

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:��������� 2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�	
�
F__inference_adv_2_3_layer_call_and_return_conditional_losses_263226373

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�	
�
+__inference_adv_2_3_layer_call_fn_263226383

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�F
�

\__inference_bootstrapped_ddqn_head_3_of_4_layer_call_and_return_conditional_losses_263225978
observation9
&dense_0_matmul_readvariableop_resource:	?�6
'dense_0_biasadd_readvariableop_resource:	�9
&adv_0_3_matmul_readvariableop_resource:	�@5
'adv_0_3_biasadd_readvariableop_resource:@9
&val_0_3_matmul_readvariableop_resource:	�@5
'val_0_3_biasadd_readvariableop_resource:@8
&adv_1_3_matmul_readvariableop_resource:@ 5
'adv_1_3_biasadd_readvariableop_resource: 8
&val_1_3_matmul_readvariableop_resource:@ 5
'val_1_3_biasadd_readvariableop_resource: 8
&adv_2_3_matmul_readvariableop_resource: 5
'adv_2_3_biasadd_readvariableop_resource:8
&val_2_3_matmul_readvariableop_resource: 5
'val_2_3_biasadd_readvariableop_resource:
identity��adv_0_3/BiasAdd/ReadVariableOp�adv_0_3/MatMul/ReadVariableOp�adv_1_3/BiasAdd/ReadVariableOp�adv_1_3/MatMul/ReadVariableOp�adv_2_3/BiasAdd/ReadVariableOp�adv_2_3/MatMul/ReadVariableOp�dense_0/BiasAdd/ReadVariableOp�dense_0/MatMul/ReadVariableOp�val_0_3/BiasAdd/ReadVariableOp�val_0_3/MatMul/ReadVariableOp�val_1_3/BiasAdd/ReadVariableOp�val_1_3/MatMul/ReadVariableOp�val_2_3/BiasAdd/ReadVariableOp�val_2_3/MatMul/ReadVariableOp�
dense_0/MatMul/ReadVariableOpReadVariableOp&dense_0_matmul_readvariableop_resource*
_output_shapes
:	?�*
dtype02
dense_0/MatMul/ReadVariableOp�
dense_0/MatMulMatMulobservation%dense_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_0/MatMul�
dense_0/BiasAdd/ReadVariableOpReadVariableOp'dense_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02 
dense_0/BiasAdd/ReadVariableOp�
dense_0/BiasAddBiasAdddense_0/MatMul:product:0&dense_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_0/BiasAddq
dense_0/ReluReludense_0/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
dense_0/Relu�
adv_0_3/MatMul/ReadVariableOpReadVariableOp&adv_0_3_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype02
adv_0_3/MatMul/ReadVariableOp�
adv_0_3/MatMulMatMuldense_0/Relu:activations:0%adv_0_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
adv_0_3/MatMul�
adv_0_3/BiasAdd/ReadVariableOpReadVariableOp'adv_0_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
adv_0_3/BiasAdd/ReadVariableOp�
adv_0_3/BiasAddBiasAddadv_0_3/MatMul:product:0&adv_0_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
adv_0_3/BiasAddp
adv_0_3/ReluReluadv_0_3/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
adv_0_3/Relu�
val_0_3/MatMul/ReadVariableOpReadVariableOp&val_0_3_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype02
val_0_3/MatMul/ReadVariableOp�
val_0_3/MatMulMatMuldense_0/Relu:activations:0%val_0_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
val_0_3/MatMul�
val_0_3/BiasAdd/ReadVariableOpReadVariableOp'val_0_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
val_0_3/BiasAdd/ReadVariableOp�
val_0_3/BiasAddBiasAddval_0_3/MatMul:product:0&val_0_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
val_0_3/BiasAddp
val_0_3/ReluReluval_0_3/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
val_0_3/Relu�
adv_1_3/MatMul/ReadVariableOpReadVariableOp&adv_1_3_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
adv_1_3/MatMul/ReadVariableOp�
adv_1_3/MatMulMatMuladv_0_3/Relu:activations:0%adv_1_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
adv_1_3/MatMul�
adv_1_3/BiasAdd/ReadVariableOpReadVariableOp'adv_1_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
adv_1_3/BiasAdd/ReadVariableOp�
adv_1_3/BiasAddBiasAddadv_1_3/MatMul:product:0&adv_1_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
adv_1_3/BiasAddp
adv_1_3/ReluReluadv_1_3/BiasAdd:output:0*
T0*'
_output_shapes
:��������� 2
adv_1_3/Relu�
val_1_3/MatMul/ReadVariableOpReadVariableOp&val_1_3_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
val_1_3/MatMul/ReadVariableOp�
val_1_3/MatMulMatMulval_0_3/Relu:activations:0%val_1_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
val_1_3/MatMul�
val_1_3/BiasAdd/ReadVariableOpReadVariableOp'val_1_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
val_1_3/BiasAdd/ReadVariableOp�
val_1_3/BiasAddBiasAddval_1_3/MatMul:product:0&val_1_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
val_1_3/BiasAddp
val_1_3/ReluReluval_1_3/BiasAdd:output:0*
T0*'
_output_shapes
:��������� 2
val_1_3/Relu�
adv_2_3/MatMul/ReadVariableOpReadVariableOp&adv_2_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
adv_2_3/MatMul/ReadVariableOp�
adv_2_3/MatMulMatMuladv_1_3/Relu:activations:0%adv_2_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
adv_2_3/MatMul�
adv_2_3/BiasAdd/ReadVariableOpReadVariableOp'adv_2_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
adv_2_3/BiasAdd/ReadVariableOp�
adv_2_3/BiasAddBiasAddadv_2_3/MatMul:product:0&adv_2_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
adv_2_3/BiasAdd�
val_2_3/MatMul/ReadVariableOpReadVariableOp&val_2_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
val_2_3/MatMul/ReadVariableOp�
val_2_3/MatMulMatMulval_1_3/Relu:activations:0%val_2_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
val_2_3/MatMul�
val_2_3/BiasAdd/ReadVariableOpReadVariableOp'val_2_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
val_2_3/BiasAdd/ReadVariableOp�
val_2_3/BiasAddBiasAddval_2_3/MatMul:product:0&val_2_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
val_2_3/BiasAdd�
tf.__operators__.add_7/AddV2AddV2val_2_3/BiasAdd:output:0adv_2_3/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
tf.__operators__.add_7/AddV2�
,tf.math.reduce_mean_7/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2.
,tf.math.reduce_mean_7/Mean/reduction_indices�
tf.math.reduce_mean_7/MeanMeanadv_2_3/BiasAdd:output:05tf.math.reduce_mean_7/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2
tf.math.reduce_mean_7/Mean�
tf.math.subtract_7/SubSub tf.__operators__.add_7/AddV2:z:0#tf.math.reduce_mean_7/Mean:output:0*
T0*'
_output_shapes
:���������2
tf.math.subtract_7/Sub�
IdentityIdentitytf.math.subtract_7/Sub:z:0^adv_0_3/BiasAdd/ReadVariableOp^adv_0_3/MatMul/ReadVariableOp^adv_1_3/BiasAdd/ReadVariableOp^adv_1_3/MatMul/ReadVariableOp^adv_2_3/BiasAdd/ReadVariableOp^adv_2_3/MatMul/ReadVariableOp^dense_0/BiasAdd/ReadVariableOp^dense_0/MatMul/ReadVariableOp^val_0_3/BiasAdd/ReadVariableOp^val_0_3/MatMul/ReadVariableOp^val_1_3/BiasAdd/ReadVariableOp^val_1_3/MatMul/ReadVariableOp^val_2_3/BiasAdd/ReadVariableOp^val_2_3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������?: : : : : : : : : : : : : : 2@
adv_0_3/BiasAdd/ReadVariableOpadv_0_3/BiasAdd/ReadVariableOp2>
adv_0_3/MatMul/ReadVariableOpadv_0_3/MatMul/ReadVariableOp2@
adv_1_3/BiasAdd/ReadVariableOpadv_1_3/BiasAdd/ReadVariableOp2>
adv_1_3/MatMul/ReadVariableOpadv_1_3/MatMul/ReadVariableOp2@
adv_2_3/BiasAdd/ReadVariableOpadv_2_3/BiasAdd/ReadVariableOp2>
adv_2_3/MatMul/ReadVariableOpadv_2_3/MatMul/ReadVariableOp2@
dense_0/BiasAdd/ReadVariableOpdense_0/BiasAdd/ReadVariableOp2>
dense_0/MatMul/ReadVariableOpdense_0/MatMul/ReadVariableOp2@
val_0_3/BiasAdd/ReadVariableOpval_0_3/BiasAdd/ReadVariableOp2>
val_0_3/MatMul/ReadVariableOpval_0_3/MatMul/ReadVariableOp2@
val_1_3/BiasAdd/ReadVariableOpval_1_3/BiasAdd/ReadVariableOp2>
val_1_3/MatMul/ReadVariableOpval_1_3/MatMul/ReadVariableOp2@
val_2_3/BiasAdd/ReadVariableOpval_2_3/BiasAdd/ReadVariableOp2>
val_2_3/MatMul/ReadVariableOpval_2_3/MatMul/ReadVariableOp:T P
'
_output_shapes
:���������?
%
_user_specified_nameobservation
�

�
+__inference_val_0_3_layer_call_fn_263226277

inputs1
matmul_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�t
�
$__inference__wrapped_model_263225372
observationW
Dbootstrapped_ddqn_head_3_of_4_dense_0_matmul_readvariableop_resource:	?�T
Ebootstrapped_ddqn_head_3_of_4_dense_0_biasadd_readvariableop_resource:	�W
Dbootstrapped_ddqn_head_3_of_4_adv_0_3_matmul_readvariableop_resource:	�@S
Ebootstrapped_ddqn_head_3_of_4_adv_0_3_biasadd_readvariableop_resource:@W
Dbootstrapped_ddqn_head_3_of_4_val_0_3_matmul_readvariableop_resource:	�@S
Ebootstrapped_ddqn_head_3_of_4_val_0_3_biasadd_readvariableop_resource:@V
Dbootstrapped_ddqn_head_3_of_4_adv_1_3_matmul_readvariableop_resource:@ S
Ebootstrapped_ddqn_head_3_of_4_adv_1_3_biasadd_readvariableop_resource: V
Dbootstrapped_ddqn_head_3_of_4_val_1_3_matmul_readvariableop_resource:@ S
Ebootstrapped_ddqn_head_3_of_4_val_1_3_biasadd_readvariableop_resource: V
Dbootstrapped_ddqn_head_3_of_4_adv_2_3_matmul_readvariableop_resource: S
Ebootstrapped_ddqn_head_3_of_4_adv_2_3_biasadd_readvariableop_resource:V
Dbootstrapped_ddqn_head_3_of_4_val_2_3_matmul_readvariableop_resource: S
Ebootstrapped_ddqn_head_3_of_4_val_2_3_biasadd_readvariableop_resource:
identity��<bootstrapped_ddqn_head_3_of_4/adv_0_3/BiasAdd/ReadVariableOp�;bootstrapped_ddqn_head_3_of_4/adv_0_3/MatMul/ReadVariableOp�<bootstrapped_ddqn_head_3_of_4/adv_1_3/BiasAdd/ReadVariableOp�;bootstrapped_ddqn_head_3_of_4/adv_1_3/MatMul/ReadVariableOp�<bootstrapped_ddqn_head_3_of_4/adv_2_3/BiasAdd/ReadVariableOp�;bootstrapped_ddqn_head_3_of_4/adv_2_3/MatMul/ReadVariableOp�<bootstrapped_ddqn_head_3_of_4/dense_0/BiasAdd/ReadVariableOp�;bootstrapped_ddqn_head_3_of_4/dense_0/MatMul/ReadVariableOp�<bootstrapped_ddqn_head_3_of_4/val_0_3/BiasAdd/ReadVariableOp�;bootstrapped_ddqn_head_3_of_4/val_0_3/MatMul/ReadVariableOp�<bootstrapped_ddqn_head_3_of_4/val_1_3/BiasAdd/ReadVariableOp�;bootstrapped_ddqn_head_3_of_4/val_1_3/MatMul/ReadVariableOp�<bootstrapped_ddqn_head_3_of_4/val_2_3/BiasAdd/ReadVariableOp�;bootstrapped_ddqn_head_3_of_4/val_2_3/MatMul/ReadVariableOp�
;bootstrapped_ddqn_head_3_of_4/dense_0/MatMul/ReadVariableOpReadVariableOpDbootstrapped_ddqn_head_3_of_4_dense_0_matmul_readvariableop_resource*
_output_shapes
:	?�*
dtype02=
;bootstrapped_ddqn_head_3_of_4/dense_0/MatMul/ReadVariableOp�
,bootstrapped_ddqn_head_3_of_4/dense_0/MatMulMatMulobservationCbootstrapped_ddqn_head_3_of_4/dense_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2.
,bootstrapped_ddqn_head_3_of_4/dense_0/MatMul�
<bootstrapped_ddqn_head_3_of_4/dense_0/BiasAdd/ReadVariableOpReadVariableOpEbootstrapped_ddqn_head_3_of_4_dense_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02>
<bootstrapped_ddqn_head_3_of_4/dense_0/BiasAdd/ReadVariableOp�
-bootstrapped_ddqn_head_3_of_4/dense_0/BiasAddBiasAdd6bootstrapped_ddqn_head_3_of_4/dense_0/MatMul:product:0Dbootstrapped_ddqn_head_3_of_4/dense_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2/
-bootstrapped_ddqn_head_3_of_4/dense_0/BiasAdd�
*bootstrapped_ddqn_head_3_of_4/dense_0/ReluRelu6bootstrapped_ddqn_head_3_of_4/dense_0/BiasAdd:output:0*
T0*(
_output_shapes
:����������2,
*bootstrapped_ddqn_head_3_of_4/dense_0/Relu�
;bootstrapped_ddqn_head_3_of_4/adv_0_3/MatMul/ReadVariableOpReadVariableOpDbootstrapped_ddqn_head_3_of_4_adv_0_3_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype02=
;bootstrapped_ddqn_head_3_of_4/adv_0_3/MatMul/ReadVariableOp�
,bootstrapped_ddqn_head_3_of_4/adv_0_3/MatMulMatMul8bootstrapped_ddqn_head_3_of_4/dense_0/Relu:activations:0Cbootstrapped_ddqn_head_3_of_4/adv_0_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2.
,bootstrapped_ddqn_head_3_of_4/adv_0_3/MatMul�
<bootstrapped_ddqn_head_3_of_4/adv_0_3/BiasAdd/ReadVariableOpReadVariableOpEbootstrapped_ddqn_head_3_of_4_adv_0_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02>
<bootstrapped_ddqn_head_3_of_4/adv_0_3/BiasAdd/ReadVariableOp�
-bootstrapped_ddqn_head_3_of_4/adv_0_3/BiasAddBiasAdd6bootstrapped_ddqn_head_3_of_4/adv_0_3/MatMul:product:0Dbootstrapped_ddqn_head_3_of_4/adv_0_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2/
-bootstrapped_ddqn_head_3_of_4/adv_0_3/BiasAdd�
*bootstrapped_ddqn_head_3_of_4/adv_0_3/ReluRelu6bootstrapped_ddqn_head_3_of_4/adv_0_3/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2,
*bootstrapped_ddqn_head_3_of_4/adv_0_3/Relu�
;bootstrapped_ddqn_head_3_of_4/val_0_3/MatMul/ReadVariableOpReadVariableOpDbootstrapped_ddqn_head_3_of_4_val_0_3_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype02=
;bootstrapped_ddqn_head_3_of_4/val_0_3/MatMul/ReadVariableOp�
,bootstrapped_ddqn_head_3_of_4/val_0_3/MatMulMatMul8bootstrapped_ddqn_head_3_of_4/dense_0/Relu:activations:0Cbootstrapped_ddqn_head_3_of_4/val_0_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2.
,bootstrapped_ddqn_head_3_of_4/val_0_3/MatMul�
<bootstrapped_ddqn_head_3_of_4/val_0_3/BiasAdd/ReadVariableOpReadVariableOpEbootstrapped_ddqn_head_3_of_4_val_0_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02>
<bootstrapped_ddqn_head_3_of_4/val_0_3/BiasAdd/ReadVariableOp�
-bootstrapped_ddqn_head_3_of_4/val_0_3/BiasAddBiasAdd6bootstrapped_ddqn_head_3_of_4/val_0_3/MatMul:product:0Dbootstrapped_ddqn_head_3_of_4/val_0_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2/
-bootstrapped_ddqn_head_3_of_4/val_0_3/BiasAdd�
*bootstrapped_ddqn_head_3_of_4/val_0_3/ReluRelu6bootstrapped_ddqn_head_3_of_4/val_0_3/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2,
*bootstrapped_ddqn_head_3_of_4/val_0_3/Relu�
;bootstrapped_ddqn_head_3_of_4/adv_1_3/MatMul/ReadVariableOpReadVariableOpDbootstrapped_ddqn_head_3_of_4_adv_1_3_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02=
;bootstrapped_ddqn_head_3_of_4/adv_1_3/MatMul/ReadVariableOp�
,bootstrapped_ddqn_head_3_of_4/adv_1_3/MatMulMatMul8bootstrapped_ddqn_head_3_of_4/adv_0_3/Relu:activations:0Cbootstrapped_ddqn_head_3_of_4/adv_1_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2.
,bootstrapped_ddqn_head_3_of_4/adv_1_3/MatMul�
<bootstrapped_ddqn_head_3_of_4/adv_1_3/BiasAdd/ReadVariableOpReadVariableOpEbootstrapped_ddqn_head_3_of_4_adv_1_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02>
<bootstrapped_ddqn_head_3_of_4/adv_1_3/BiasAdd/ReadVariableOp�
-bootstrapped_ddqn_head_3_of_4/adv_1_3/BiasAddBiasAdd6bootstrapped_ddqn_head_3_of_4/adv_1_3/MatMul:product:0Dbootstrapped_ddqn_head_3_of_4/adv_1_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2/
-bootstrapped_ddqn_head_3_of_4/adv_1_3/BiasAdd�
*bootstrapped_ddqn_head_3_of_4/adv_1_3/ReluRelu6bootstrapped_ddqn_head_3_of_4/adv_1_3/BiasAdd:output:0*
T0*'
_output_shapes
:��������� 2,
*bootstrapped_ddqn_head_3_of_4/adv_1_3/Relu�
;bootstrapped_ddqn_head_3_of_4/val_1_3/MatMul/ReadVariableOpReadVariableOpDbootstrapped_ddqn_head_3_of_4_val_1_3_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02=
;bootstrapped_ddqn_head_3_of_4/val_1_3/MatMul/ReadVariableOp�
,bootstrapped_ddqn_head_3_of_4/val_1_3/MatMulMatMul8bootstrapped_ddqn_head_3_of_4/val_0_3/Relu:activations:0Cbootstrapped_ddqn_head_3_of_4/val_1_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2.
,bootstrapped_ddqn_head_3_of_4/val_1_3/MatMul�
<bootstrapped_ddqn_head_3_of_4/val_1_3/BiasAdd/ReadVariableOpReadVariableOpEbootstrapped_ddqn_head_3_of_4_val_1_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02>
<bootstrapped_ddqn_head_3_of_4/val_1_3/BiasAdd/ReadVariableOp�
-bootstrapped_ddqn_head_3_of_4/val_1_3/BiasAddBiasAdd6bootstrapped_ddqn_head_3_of_4/val_1_3/MatMul:product:0Dbootstrapped_ddqn_head_3_of_4/val_1_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2/
-bootstrapped_ddqn_head_3_of_4/val_1_3/BiasAdd�
*bootstrapped_ddqn_head_3_of_4/val_1_3/ReluRelu6bootstrapped_ddqn_head_3_of_4/val_1_3/BiasAdd:output:0*
T0*'
_output_shapes
:��������� 2,
*bootstrapped_ddqn_head_3_of_4/val_1_3/Relu�
;bootstrapped_ddqn_head_3_of_4/adv_2_3/MatMul/ReadVariableOpReadVariableOpDbootstrapped_ddqn_head_3_of_4_adv_2_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02=
;bootstrapped_ddqn_head_3_of_4/adv_2_3/MatMul/ReadVariableOp�
,bootstrapped_ddqn_head_3_of_4/adv_2_3/MatMulMatMul8bootstrapped_ddqn_head_3_of_4/adv_1_3/Relu:activations:0Cbootstrapped_ddqn_head_3_of_4/adv_2_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2.
,bootstrapped_ddqn_head_3_of_4/adv_2_3/MatMul�
<bootstrapped_ddqn_head_3_of_4/adv_2_3/BiasAdd/ReadVariableOpReadVariableOpEbootstrapped_ddqn_head_3_of_4_adv_2_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02>
<bootstrapped_ddqn_head_3_of_4/adv_2_3/BiasAdd/ReadVariableOp�
-bootstrapped_ddqn_head_3_of_4/adv_2_3/BiasAddBiasAdd6bootstrapped_ddqn_head_3_of_4/adv_2_3/MatMul:product:0Dbootstrapped_ddqn_head_3_of_4/adv_2_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2/
-bootstrapped_ddqn_head_3_of_4/adv_2_3/BiasAdd�
;bootstrapped_ddqn_head_3_of_4/val_2_3/MatMul/ReadVariableOpReadVariableOpDbootstrapped_ddqn_head_3_of_4_val_2_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02=
;bootstrapped_ddqn_head_3_of_4/val_2_3/MatMul/ReadVariableOp�
,bootstrapped_ddqn_head_3_of_4/val_2_3/MatMulMatMul8bootstrapped_ddqn_head_3_of_4/val_1_3/Relu:activations:0Cbootstrapped_ddqn_head_3_of_4/val_2_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2.
,bootstrapped_ddqn_head_3_of_4/val_2_3/MatMul�
<bootstrapped_ddqn_head_3_of_4/val_2_3/BiasAdd/ReadVariableOpReadVariableOpEbootstrapped_ddqn_head_3_of_4_val_2_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02>
<bootstrapped_ddqn_head_3_of_4/val_2_3/BiasAdd/ReadVariableOp�
-bootstrapped_ddqn_head_3_of_4/val_2_3/BiasAddBiasAdd6bootstrapped_ddqn_head_3_of_4/val_2_3/MatMul:product:0Dbootstrapped_ddqn_head_3_of_4/val_2_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2/
-bootstrapped_ddqn_head_3_of_4/val_2_3/BiasAdd�
:bootstrapped_ddqn_head_3_of_4/tf.__operators__.add_7/AddV2AddV26bootstrapped_ddqn_head_3_of_4/val_2_3/BiasAdd:output:06bootstrapped_ddqn_head_3_of_4/adv_2_3/BiasAdd:output:0*
T0*'
_output_shapes
:���������2<
:bootstrapped_ddqn_head_3_of_4/tf.__operators__.add_7/AddV2�
Jbootstrapped_ddqn_head_3_of_4/tf.math.reduce_mean_7/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2L
Jbootstrapped_ddqn_head_3_of_4/tf.math.reduce_mean_7/Mean/reduction_indices�
8bootstrapped_ddqn_head_3_of_4/tf.math.reduce_mean_7/MeanMean6bootstrapped_ddqn_head_3_of_4/adv_2_3/BiasAdd:output:0Sbootstrapped_ddqn_head_3_of_4/tf.math.reduce_mean_7/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2:
8bootstrapped_ddqn_head_3_of_4/tf.math.reduce_mean_7/Mean�
4bootstrapped_ddqn_head_3_of_4/tf.math.subtract_7/SubSub>bootstrapped_ddqn_head_3_of_4/tf.__operators__.add_7/AddV2:z:0Abootstrapped_ddqn_head_3_of_4/tf.math.reduce_mean_7/Mean:output:0*
T0*'
_output_shapes
:���������26
4bootstrapped_ddqn_head_3_of_4/tf.math.subtract_7/Sub�
IdentityIdentity8bootstrapped_ddqn_head_3_of_4/tf.math.subtract_7/Sub:z:0=^bootstrapped_ddqn_head_3_of_4/adv_0_3/BiasAdd/ReadVariableOp<^bootstrapped_ddqn_head_3_of_4/adv_0_3/MatMul/ReadVariableOp=^bootstrapped_ddqn_head_3_of_4/adv_1_3/BiasAdd/ReadVariableOp<^bootstrapped_ddqn_head_3_of_4/adv_1_3/MatMul/ReadVariableOp=^bootstrapped_ddqn_head_3_of_4/adv_2_3/BiasAdd/ReadVariableOp<^bootstrapped_ddqn_head_3_of_4/adv_2_3/MatMul/ReadVariableOp=^bootstrapped_ddqn_head_3_of_4/dense_0/BiasAdd/ReadVariableOp<^bootstrapped_ddqn_head_3_of_4/dense_0/MatMul/ReadVariableOp=^bootstrapped_ddqn_head_3_of_4/val_0_3/BiasAdd/ReadVariableOp<^bootstrapped_ddqn_head_3_of_4/val_0_3/MatMul/ReadVariableOp=^bootstrapped_ddqn_head_3_of_4/val_1_3/BiasAdd/ReadVariableOp<^bootstrapped_ddqn_head_3_of_4/val_1_3/MatMul/ReadVariableOp=^bootstrapped_ddqn_head_3_of_4/val_2_3/BiasAdd/ReadVariableOp<^bootstrapped_ddqn_head_3_of_4/val_2_3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������?: : : : : : : : : : : : : : 2|
<bootstrapped_ddqn_head_3_of_4/adv_0_3/BiasAdd/ReadVariableOp<bootstrapped_ddqn_head_3_of_4/adv_0_3/BiasAdd/ReadVariableOp2z
;bootstrapped_ddqn_head_3_of_4/adv_0_3/MatMul/ReadVariableOp;bootstrapped_ddqn_head_3_of_4/adv_0_3/MatMul/ReadVariableOp2|
<bootstrapped_ddqn_head_3_of_4/adv_1_3/BiasAdd/ReadVariableOp<bootstrapped_ddqn_head_3_of_4/adv_1_3/BiasAdd/ReadVariableOp2z
;bootstrapped_ddqn_head_3_of_4/adv_1_3/MatMul/ReadVariableOp;bootstrapped_ddqn_head_3_of_4/adv_1_3/MatMul/ReadVariableOp2|
<bootstrapped_ddqn_head_3_of_4/adv_2_3/BiasAdd/ReadVariableOp<bootstrapped_ddqn_head_3_of_4/adv_2_3/BiasAdd/ReadVariableOp2z
;bootstrapped_ddqn_head_3_of_4/adv_2_3/MatMul/ReadVariableOp;bootstrapped_ddqn_head_3_of_4/adv_2_3/MatMul/ReadVariableOp2|
<bootstrapped_ddqn_head_3_of_4/dense_0/BiasAdd/ReadVariableOp<bootstrapped_ddqn_head_3_of_4/dense_0/BiasAdd/ReadVariableOp2z
;bootstrapped_ddqn_head_3_of_4/dense_0/MatMul/ReadVariableOp;bootstrapped_ddqn_head_3_of_4/dense_0/MatMul/ReadVariableOp2|
<bootstrapped_ddqn_head_3_of_4/val_0_3/BiasAdd/ReadVariableOp<bootstrapped_ddqn_head_3_of_4/val_0_3/BiasAdd/ReadVariableOp2z
;bootstrapped_ddqn_head_3_of_4/val_0_3/MatMul/ReadVariableOp;bootstrapped_ddqn_head_3_of_4/val_0_3/MatMul/ReadVariableOp2|
<bootstrapped_ddqn_head_3_of_4/val_1_3/BiasAdd/ReadVariableOp<bootstrapped_ddqn_head_3_of_4/val_1_3/BiasAdd/ReadVariableOp2z
;bootstrapped_ddqn_head_3_of_4/val_1_3/MatMul/ReadVariableOp;bootstrapped_ddqn_head_3_of_4/val_1_3/MatMul/ReadVariableOp2|
<bootstrapped_ddqn_head_3_of_4/val_2_3/BiasAdd/ReadVariableOp<bootstrapped_ddqn_head_3_of_4/val_2_3/BiasAdd/ReadVariableOp2z
;bootstrapped_ddqn_head_3_of_4/val_2_3/MatMul/ReadVariableOp;bootstrapped_ddqn_head_3_of_4/val_2_3/MatMul/ReadVariableOp:T P
'
_output_shapes
:���������?
%
_user_specified_nameobservation
�F
�

\__inference_bootstrapped_ddqn_head_3_of_4_layer_call_and_return_conditional_losses_263225923
observation9
&dense_0_matmul_readvariableop_resource:	?�6
'dense_0_biasadd_readvariableop_resource:	�9
&adv_0_3_matmul_readvariableop_resource:	�@5
'adv_0_3_biasadd_readvariableop_resource:@9
&val_0_3_matmul_readvariableop_resource:	�@5
'val_0_3_biasadd_readvariableop_resource:@8
&adv_1_3_matmul_readvariableop_resource:@ 5
'adv_1_3_biasadd_readvariableop_resource: 8
&val_1_3_matmul_readvariableop_resource:@ 5
'val_1_3_biasadd_readvariableop_resource: 8
&adv_2_3_matmul_readvariableop_resource: 5
'adv_2_3_biasadd_readvariableop_resource:8
&val_2_3_matmul_readvariableop_resource: 5
'val_2_3_biasadd_readvariableop_resource:
identity��adv_0_3/BiasAdd/ReadVariableOp�adv_0_3/MatMul/ReadVariableOp�adv_1_3/BiasAdd/ReadVariableOp�adv_1_3/MatMul/ReadVariableOp�adv_2_3/BiasAdd/ReadVariableOp�adv_2_3/MatMul/ReadVariableOp�dense_0/BiasAdd/ReadVariableOp�dense_0/MatMul/ReadVariableOp�val_0_3/BiasAdd/ReadVariableOp�val_0_3/MatMul/ReadVariableOp�val_1_3/BiasAdd/ReadVariableOp�val_1_3/MatMul/ReadVariableOp�val_2_3/BiasAdd/ReadVariableOp�val_2_3/MatMul/ReadVariableOp�
dense_0/MatMul/ReadVariableOpReadVariableOp&dense_0_matmul_readvariableop_resource*
_output_shapes
:	?�*
dtype02
dense_0/MatMul/ReadVariableOp�
dense_0/MatMulMatMulobservation%dense_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_0/MatMul�
dense_0/BiasAdd/ReadVariableOpReadVariableOp'dense_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02 
dense_0/BiasAdd/ReadVariableOp�
dense_0/BiasAddBiasAdddense_0/MatMul:product:0&dense_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_0/BiasAddq
dense_0/ReluReludense_0/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
dense_0/Relu�
adv_0_3/MatMul/ReadVariableOpReadVariableOp&adv_0_3_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype02
adv_0_3/MatMul/ReadVariableOp�
adv_0_3/MatMulMatMuldense_0/Relu:activations:0%adv_0_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
adv_0_3/MatMul�
adv_0_3/BiasAdd/ReadVariableOpReadVariableOp'adv_0_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
adv_0_3/BiasAdd/ReadVariableOp�
adv_0_3/BiasAddBiasAddadv_0_3/MatMul:product:0&adv_0_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
adv_0_3/BiasAddp
adv_0_3/ReluReluadv_0_3/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
adv_0_3/Relu�
val_0_3/MatMul/ReadVariableOpReadVariableOp&val_0_3_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype02
val_0_3/MatMul/ReadVariableOp�
val_0_3/MatMulMatMuldense_0/Relu:activations:0%val_0_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
val_0_3/MatMul�
val_0_3/BiasAdd/ReadVariableOpReadVariableOp'val_0_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
val_0_3/BiasAdd/ReadVariableOp�
val_0_3/BiasAddBiasAddval_0_3/MatMul:product:0&val_0_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
val_0_3/BiasAddp
val_0_3/ReluReluval_0_3/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
val_0_3/Relu�
adv_1_3/MatMul/ReadVariableOpReadVariableOp&adv_1_3_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
adv_1_3/MatMul/ReadVariableOp�
adv_1_3/MatMulMatMuladv_0_3/Relu:activations:0%adv_1_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
adv_1_3/MatMul�
adv_1_3/BiasAdd/ReadVariableOpReadVariableOp'adv_1_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
adv_1_3/BiasAdd/ReadVariableOp�
adv_1_3/BiasAddBiasAddadv_1_3/MatMul:product:0&adv_1_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
adv_1_3/BiasAddp
adv_1_3/ReluReluadv_1_3/BiasAdd:output:0*
T0*'
_output_shapes
:��������� 2
adv_1_3/Relu�
val_1_3/MatMul/ReadVariableOpReadVariableOp&val_1_3_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
val_1_3/MatMul/ReadVariableOp�
val_1_3/MatMulMatMulval_0_3/Relu:activations:0%val_1_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
val_1_3/MatMul�
val_1_3/BiasAdd/ReadVariableOpReadVariableOp'val_1_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
val_1_3/BiasAdd/ReadVariableOp�
val_1_3/BiasAddBiasAddval_1_3/MatMul:product:0&val_1_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
val_1_3/BiasAddp
val_1_3/ReluReluval_1_3/BiasAdd:output:0*
T0*'
_output_shapes
:��������� 2
val_1_3/Relu�
adv_2_3/MatMul/ReadVariableOpReadVariableOp&adv_2_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
adv_2_3/MatMul/ReadVariableOp�
adv_2_3/MatMulMatMuladv_1_3/Relu:activations:0%adv_2_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
adv_2_3/MatMul�
adv_2_3/BiasAdd/ReadVariableOpReadVariableOp'adv_2_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
adv_2_3/BiasAdd/ReadVariableOp�
adv_2_3/BiasAddBiasAddadv_2_3/MatMul:product:0&adv_2_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
adv_2_3/BiasAdd�
val_2_3/MatMul/ReadVariableOpReadVariableOp&val_2_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
val_2_3/MatMul/ReadVariableOp�
val_2_3/MatMulMatMulval_1_3/Relu:activations:0%val_2_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
val_2_3/MatMul�
val_2_3/BiasAdd/ReadVariableOpReadVariableOp'val_2_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
val_2_3/BiasAdd/ReadVariableOp�
val_2_3/BiasAddBiasAddval_2_3/MatMul:product:0&val_2_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
val_2_3/BiasAdd�
tf.__operators__.add_7/AddV2AddV2val_2_3/BiasAdd:output:0adv_2_3/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
tf.__operators__.add_7/AddV2�
,tf.math.reduce_mean_7/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2.
,tf.math.reduce_mean_7/Mean/reduction_indices�
tf.math.reduce_mean_7/MeanMeanadv_2_3/BiasAdd:output:05tf.math.reduce_mean_7/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2
tf.math.reduce_mean_7/Mean�
tf.math.subtract_7/SubSub tf.__operators__.add_7/AddV2:z:0#tf.math.reduce_mean_7/Mean:output:0*
T0*'
_output_shapes
:���������2
tf.math.subtract_7/Sub�
IdentityIdentitytf.math.subtract_7/Sub:z:0^adv_0_3/BiasAdd/ReadVariableOp^adv_0_3/MatMul/ReadVariableOp^adv_1_3/BiasAdd/ReadVariableOp^adv_1_3/MatMul/ReadVariableOp^adv_2_3/BiasAdd/ReadVariableOp^adv_2_3/MatMul/ReadVariableOp^dense_0/BiasAdd/ReadVariableOp^dense_0/MatMul/ReadVariableOp^val_0_3/BiasAdd/ReadVariableOp^val_0_3/MatMul/ReadVariableOp^val_1_3/BiasAdd/ReadVariableOp^val_1_3/MatMul/ReadVariableOp^val_2_3/BiasAdd/ReadVariableOp^val_2_3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������?: : : : : : : : : : : : : : 2@
adv_0_3/BiasAdd/ReadVariableOpadv_0_3/BiasAdd/ReadVariableOp2>
adv_0_3/MatMul/ReadVariableOpadv_0_3/MatMul/ReadVariableOp2@
adv_1_3/BiasAdd/ReadVariableOpadv_1_3/BiasAdd/ReadVariableOp2>
adv_1_3/MatMul/ReadVariableOpadv_1_3/MatMul/ReadVariableOp2@
adv_2_3/BiasAdd/ReadVariableOpadv_2_3/BiasAdd/ReadVariableOp2>
adv_2_3/MatMul/ReadVariableOpadv_2_3/MatMul/ReadVariableOp2@
dense_0/BiasAdd/ReadVariableOpdense_0/BiasAdd/ReadVariableOp2>
dense_0/MatMul/ReadVariableOpdense_0/MatMul/ReadVariableOp2@
val_0_3/BiasAdd/ReadVariableOpval_0_3/BiasAdd/ReadVariableOp2>
val_0_3/MatMul/ReadVariableOpval_0_3/MatMul/ReadVariableOp2@
val_1_3/BiasAdd/ReadVariableOpval_1_3/BiasAdd/ReadVariableOp2>
val_1_3/MatMul/ReadVariableOpval_1_3/MatMul/ReadVariableOp2@
val_2_3/BiasAdd/ReadVariableOpval_2_3/BiasAdd/ReadVariableOp2>
val_2_3/MatMul/ReadVariableOpval_2_3/MatMul/ReadVariableOp:T P
'
_output_shapes
:���������?
%
_user_specified_nameobservation
�

�
F__inference_dense_0_layer_call_and_return_conditional_losses_263226244

inputs1
matmul_readvariableop_resource:	?�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������?
 
_user_specified_nameinputs
�	
�
F__inference_val_2_3_layer_call_and_return_conditional_losses_263226353

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�

�
+__inference_dense_0_layer_call_fn_263226255

inputs1
matmul_readvariableop_resource:	?�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?�*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������?
 
_user_specified_nameinputs
�
�
'__inference_signature_wrapper_263226013
observation
unknown:	?�
	unknown_0:	�
	unknown_1:	�@
	unknown_2:@
	unknown_3:	�@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7:@ 
	unknown_8: 
	unknown_9: 

unknown_10:

unknown_11: 

unknown_12:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallobservationunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *-
f(R&
$__inference__wrapped_model_2632253722
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������?: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:���������?
%
_user_specified_nameobservation
�

�
+__inference_adv_1_3_layer_call_fn_263226343

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:��������� 2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�F
�

A__inference_bootstrapped_ddqn_head_3_of_4_layer_call_fn_263226233

inputs9
&dense_0_matmul_readvariableop_resource:	?�6
'dense_0_biasadd_readvariableop_resource:	�9
&adv_0_3_matmul_readvariableop_resource:	�@5
'adv_0_3_biasadd_readvariableop_resource:@9
&val_0_3_matmul_readvariableop_resource:	�@5
'val_0_3_biasadd_readvariableop_resource:@8
&adv_1_3_matmul_readvariableop_resource:@ 5
'adv_1_3_biasadd_readvariableop_resource: 8
&val_1_3_matmul_readvariableop_resource:@ 5
'val_1_3_biasadd_readvariableop_resource: 8
&adv_2_3_matmul_readvariableop_resource: 5
'adv_2_3_biasadd_readvariableop_resource:8
&val_2_3_matmul_readvariableop_resource: 5
'val_2_3_biasadd_readvariableop_resource:
identity��adv_0_3/BiasAdd/ReadVariableOp�adv_0_3/MatMul/ReadVariableOp�adv_1_3/BiasAdd/ReadVariableOp�adv_1_3/MatMul/ReadVariableOp�adv_2_3/BiasAdd/ReadVariableOp�adv_2_3/MatMul/ReadVariableOp�dense_0/BiasAdd/ReadVariableOp�dense_0/MatMul/ReadVariableOp�val_0_3/BiasAdd/ReadVariableOp�val_0_3/MatMul/ReadVariableOp�val_1_3/BiasAdd/ReadVariableOp�val_1_3/MatMul/ReadVariableOp�val_2_3/BiasAdd/ReadVariableOp�val_2_3/MatMul/ReadVariableOp�
dense_0/MatMul/ReadVariableOpReadVariableOp&dense_0_matmul_readvariableop_resource*
_output_shapes
:	?�*
dtype02
dense_0/MatMul/ReadVariableOp�
dense_0/MatMulMatMulinputs%dense_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_0/MatMul�
dense_0/BiasAdd/ReadVariableOpReadVariableOp'dense_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02 
dense_0/BiasAdd/ReadVariableOp�
dense_0/BiasAddBiasAdddense_0/MatMul:product:0&dense_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_0/BiasAddq
dense_0/ReluReludense_0/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
dense_0/Relu�
adv_0_3/MatMul/ReadVariableOpReadVariableOp&adv_0_3_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype02
adv_0_3/MatMul/ReadVariableOp�
adv_0_3/MatMulMatMuldense_0/Relu:activations:0%adv_0_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
adv_0_3/MatMul�
adv_0_3/BiasAdd/ReadVariableOpReadVariableOp'adv_0_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
adv_0_3/BiasAdd/ReadVariableOp�
adv_0_3/BiasAddBiasAddadv_0_3/MatMul:product:0&adv_0_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
adv_0_3/BiasAddp
adv_0_3/ReluReluadv_0_3/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
adv_0_3/Relu�
val_0_3/MatMul/ReadVariableOpReadVariableOp&val_0_3_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype02
val_0_3/MatMul/ReadVariableOp�
val_0_3/MatMulMatMuldense_0/Relu:activations:0%val_0_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
val_0_3/MatMul�
val_0_3/BiasAdd/ReadVariableOpReadVariableOp'val_0_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
val_0_3/BiasAdd/ReadVariableOp�
val_0_3/BiasAddBiasAddval_0_3/MatMul:product:0&val_0_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
val_0_3/BiasAddp
val_0_3/ReluReluval_0_3/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
val_0_3/Relu�
adv_1_3/MatMul/ReadVariableOpReadVariableOp&adv_1_3_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
adv_1_3/MatMul/ReadVariableOp�
adv_1_3/MatMulMatMuladv_0_3/Relu:activations:0%adv_1_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
adv_1_3/MatMul�
adv_1_3/BiasAdd/ReadVariableOpReadVariableOp'adv_1_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
adv_1_3/BiasAdd/ReadVariableOp�
adv_1_3/BiasAddBiasAddadv_1_3/MatMul:product:0&adv_1_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
adv_1_3/BiasAddp
adv_1_3/ReluReluadv_1_3/BiasAdd:output:0*
T0*'
_output_shapes
:��������� 2
adv_1_3/Relu�
val_1_3/MatMul/ReadVariableOpReadVariableOp&val_1_3_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
val_1_3/MatMul/ReadVariableOp�
val_1_3/MatMulMatMulval_0_3/Relu:activations:0%val_1_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
val_1_3/MatMul�
val_1_3/BiasAdd/ReadVariableOpReadVariableOp'val_1_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
val_1_3/BiasAdd/ReadVariableOp�
val_1_3/BiasAddBiasAddval_1_3/MatMul:product:0&val_1_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
val_1_3/BiasAddp
val_1_3/ReluReluval_1_3/BiasAdd:output:0*
T0*'
_output_shapes
:��������� 2
val_1_3/Relu�
adv_2_3/MatMul/ReadVariableOpReadVariableOp&adv_2_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
adv_2_3/MatMul/ReadVariableOp�
adv_2_3/MatMulMatMuladv_1_3/Relu:activations:0%adv_2_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
adv_2_3/MatMul�
adv_2_3/BiasAdd/ReadVariableOpReadVariableOp'adv_2_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
adv_2_3/BiasAdd/ReadVariableOp�
adv_2_3/BiasAddBiasAddadv_2_3/MatMul:product:0&adv_2_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
adv_2_3/BiasAdd�
val_2_3/MatMul/ReadVariableOpReadVariableOp&val_2_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
val_2_3/MatMul/ReadVariableOp�
val_2_3/MatMulMatMulval_1_3/Relu:activations:0%val_2_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
val_2_3/MatMul�
val_2_3/BiasAdd/ReadVariableOpReadVariableOp'val_2_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
val_2_3/BiasAdd/ReadVariableOp�
val_2_3/BiasAddBiasAddval_2_3/MatMul:product:0&val_2_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
val_2_3/BiasAdd�
tf.__operators__.add_7/AddV2AddV2val_2_3/BiasAdd:output:0adv_2_3/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
tf.__operators__.add_7/AddV2�
,tf.math.reduce_mean_7/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2.
,tf.math.reduce_mean_7/Mean/reduction_indices�
tf.math.reduce_mean_7/MeanMeanadv_2_3/BiasAdd:output:05tf.math.reduce_mean_7/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2
tf.math.reduce_mean_7/Mean�
tf.math.subtract_7/SubSub tf.__operators__.add_7/AddV2:z:0#tf.math.reduce_mean_7/Mean:output:0*
T0*'
_output_shapes
:���������2
tf.math.subtract_7/Sub�
IdentityIdentitytf.math.subtract_7/Sub:z:0^adv_0_3/BiasAdd/ReadVariableOp^adv_0_3/MatMul/ReadVariableOp^adv_1_3/BiasAdd/ReadVariableOp^adv_1_3/MatMul/ReadVariableOp^adv_2_3/BiasAdd/ReadVariableOp^adv_2_3/MatMul/ReadVariableOp^dense_0/BiasAdd/ReadVariableOp^dense_0/MatMul/ReadVariableOp^val_0_3/BiasAdd/ReadVariableOp^val_0_3/MatMul/ReadVariableOp^val_1_3/BiasAdd/ReadVariableOp^val_1_3/MatMul/ReadVariableOp^val_2_3/BiasAdd/ReadVariableOp^val_2_3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������?: : : : : : : : : : : : : : 2@
adv_0_3/BiasAdd/ReadVariableOpadv_0_3/BiasAdd/ReadVariableOp2>
adv_0_3/MatMul/ReadVariableOpadv_0_3/MatMul/ReadVariableOp2@
adv_1_3/BiasAdd/ReadVariableOpadv_1_3/BiasAdd/ReadVariableOp2>
adv_1_3/MatMul/ReadVariableOpadv_1_3/MatMul/ReadVariableOp2@
adv_2_3/BiasAdd/ReadVariableOpadv_2_3/BiasAdd/ReadVariableOp2>
adv_2_3/MatMul/ReadVariableOpadv_2_3/MatMul/ReadVariableOp2@
dense_0/BiasAdd/ReadVariableOpdense_0/BiasAdd/ReadVariableOp2>
dense_0/MatMul/ReadVariableOpdense_0/MatMul/ReadVariableOp2@
val_0_3/BiasAdd/ReadVariableOpval_0_3/BiasAdd/ReadVariableOp2>
val_0_3/MatMul/ReadVariableOpval_0_3/MatMul/ReadVariableOp2@
val_1_3/BiasAdd/ReadVariableOpval_1_3/BiasAdd/ReadVariableOp2>
val_1_3/MatMul/ReadVariableOpval_1_3/MatMul/ReadVariableOp2@
val_2_3/BiasAdd/ReadVariableOpval_2_3/BiasAdd/ReadVariableOp2>
val_2_3/MatMul/ReadVariableOpval_2_3/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������?
 
_user_specified_nameinputs
�

�
F__inference_val_0_3_layer_call_and_return_conditional_losses_263226266

inputs1
matmul_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�F
�

A__inference_bootstrapped_ddqn_head_3_of_4_layer_call_fn_263226178

inputs9
&dense_0_matmul_readvariableop_resource:	?�6
'dense_0_biasadd_readvariableop_resource:	�9
&adv_0_3_matmul_readvariableop_resource:	�@5
'adv_0_3_biasadd_readvariableop_resource:@9
&val_0_3_matmul_readvariableop_resource:	�@5
'val_0_3_biasadd_readvariableop_resource:@8
&adv_1_3_matmul_readvariableop_resource:@ 5
'adv_1_3_biasadd_readvariableop_resource: 8
&val_1_3_matmul_readvariableop_resource:@ 5
'val_1_3_biasadd_readvariableop_resource: 8
&adv_2_3_matmul_readvariableop_resource: 5
'adv_2_3_biasadd_readvariableop_resource:8
&val_2_3_matmul_readvariableop_resource: 5
'val_2_3_biasadd_readvariableop_resource:
identity��adv_0_3/BiasAdd/ReadVariableOp�adv_0_3/MatMul/ReadVariableOp�adv_1_3/BiasAdd/ReadVariableOp�adv_1_3/MatMul/ReadVariableOp�adv_2_3/BiasAdd/ReadVariableOp�adv_2_3/MatMul/ReadVariableOp�dense_0/BiasAdd/ReadVariableOp�dense_0/MatMul/ReadVariableOp�val_0_3/BiasAdd/ReadVariableOp�val_0_3/MatMul/ReadVariableOp�val_1_3/BiasAdd/ReadVariableOp�val_1_3/MatMul/ReadVariableOp�val_2_3/BiasAdd/ReadVariableOp�val_2_3/MatMul/ReadVariableOp�
dense_0/MatMul/ReadVariableOpReadVariableOp&dense_0_matmul_readvariableop_resource*
_output_shapes
:	?�*
dtype02
dense_0/MatMul/ReadVariableOp�
dense_0/MatMulMatMulinputs%dense_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_0/MatMul�
dense_0/BiasAdd/ReadVariableOpReadVariableOp'dense_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02 
dense_0/BiasAdd/ReadVariableOp�
dense_0/BiasAddBiasAdddense_0/MatMul:product:0&dense_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_0/BiasAddq
dense_0/ReluReludense_0/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
dense_0/Relu�
adv_0_3/MatMul/ReadVariableOpReadVariableOp&adv_0_3_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype02
adv_0_3/MatMul/ReadVariableOp�
adv_0_3/MatMulMatMuldense_0/Relu:activations:0%adv_0_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
adv_0_3/MatMul�
adv_0_3/BiasAdd/ReadVariableOpReadVariableOp'adv_0_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
adv_0_3/BiasAdd/ReadVariableOp�
adv_0_3/BiasAddBiasAddadv_0_3/MatMul:product:0&adv_0_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
adv_0_3/BiasAddp
adv_0_3/ReluReluadv_0_3/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
adv_0_3/Relu�
val_0_3/MatMul/ReadVariableOpReadVariableOp&val_0_3_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype02
val_0_3/MatMul/ReadVariableOp�
val_0_3/MatMulMatMuldense_0/Relu:activations:0%val_0_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
val_0_3/MatMul�
val_0_3/BiasAdd/ReadVariableOpReadVariableOp'val_0_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
val_0_3/BiasAdd/ReadVariableOp�
val_0_3/BiasAddBiasAddval_0_3/MatMul:product:0&val_0_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
val_0_3/BiasAddp
val_0_3/ReluReluval_0_3/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
val_0_3/Relu�
adv_1_3/MatMul/ReadVariableOpReadVariableOp&adv_1_3_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
adv_1_3/MatMul/ReadVariableOp�
adv_1_3/MatMulMatMuladv_0_3/Relu:activations:0%adv_1_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
adv_1_3/MatMul�
adv_1_3/BiasAdd/ReadVariableOpReadVariableOp'adv_1_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
adv_1_3/BiasAdd/ReadVariableOp�
adv_1_3/BiasAddBiasAddadv_1_3/MatMul:product:0&adv_1_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
adv_1_3/BiasAddp
adv_1_3/ReluReluadv_1_3/BiasAdd:output:0*
T0*'
_output_shapes
:��������� 2
adv_1_3/Relu�
val_1_3/MatMul/ReadVariableOpReadVariableOp&val_1_3_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
val_1_3/MatMul/ReadVariableOp�
val_1_3/MatMulMatMulval_0_3/Relu:activations:0%val_1_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
val_1_3/MatMul�
val_1_3/BiasAdd/ReadVariableOpReadVariableOp'val_1_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
val_1_3/BiasAdd/ReadVariableOp�
val_1_3/BiasAddBiasAddval_1_3/MatMul:product:0&val_1_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
val_1_3/BiasAddp
val_1_3/ReluReluval_1_3/BiasAdd:output:0*
T0*'
_output_shapes
:��������� 2
val_1_3/Relu�
adv_2_3/MatMul/ReadVariableOpReadVariableOp&adv_2_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
adv_2_3/MatMul/ReadVariableOp�
adv_2_3/MatMulMatMuladv_1_3/Relu:activations:0%adv_2_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
adv_2_3/MatMul�
adv_2_3/BiasAdd/ReadVariableOpReadVariableOp'adv_2_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
adv_2_3/BiasAdd/ReadVariableOp�
adv_2_3/BiasAddBiasAddadv_2_3/MatMul:product:0&adv_2_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
adv_2_3/BiasAdd�
val_2_3/MatMul/ReadVariableOpReadVariableOp&val_2_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
val_2_3/MatMul/ReadVariableOp�
val_2_3/MatMulMatMulval_1_3/Relu:activations:0%val_2_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
val_2_3/MatMul�
val_2_3/BiasAdd/ReadVariableOpReadVariableOp'val_2_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
val_2_3/BiasAdd/ReadVariableOp�
val_2_3/BiasAddBiasAddval_2_3/MatMul:product:0&val_2_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
val_2_3/BiasAdd�
tf.__operators__.add_7/AddV2AddV2val_2_3/BiasAdd:output:0adv_2_3/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
tf.__operators__.add_7/AddV2�
,tf.math.reduce_mean_7/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2.
,tf.math.reduce_mean_7/Mean/reduction_indices�
tf.math.reduce_mean_7/MeanMeanadv_2_3/BiasAdd:output:05tf.math.reduce_mean_7/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2
tf.math.reduce_mean_7/Mean�
tf.math.subtract_7/SubSub tf.__operators__.add_7/AddV2:z:0#tf.math.reduce_mean_7/Mean:output:0*
T0*'
_output_shapes
:���������2
tf.math.subtract_7/Sub�
IdentityIdentitytf.math.subtract_7/Sub:z:0^adv_0_3/BiasAdd/ReadVariableOp^adv_0_3/MatMul/ReadVariableOp^adv_1_3/BiasAdd/ReadVariableOp^adv_1_3/MatMul/ReadVariableOp^adv_2_3/BiasAdd/ReadVariableOp^adv_2_3/MatMul/ReadVariableOp^dense_0/BiasAdd/ReadVariableOp^dense_0/MatMul/ReadVariableOp^val_0_3/BiasAdd/ReadVariableOp^val_0_3/MatMul/ReadVariableOp^val_1_3/BiasAdd/ReadVariableOp^val_1_3/MatMul/ReadVariableOp^val_2_3/BiasAdd/ReadVariableOp^val_2_3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������?: : : : : : : : : : : : : : 2@
adv_0_3/BiasAdd/ReadVariableOpadv_0_3/BiasAdd/ReadVariableOp2>
adv_0_3/MatMul/ReadVariableOpadv_0_3/MatMul/ReadVariableOp2@
adv_1_3/BiasAdd/ReadVariableOpadv_1_3/BiasAdd/ReadVariableOp2>
adv_1_3/MatMul/ReadVariableOpadv_1_3/MatMul/ReadVariableOp2@
adv_2_3/BiasAdd/ReadVariableOpadv_2_3/BiasAdd/ReadVariableOp2>
adv_2_3/MatMul/ReadVariableOpadv_2_3/MatMul/ReadVariableOp2@
dense_0/BiasAdd/ReadVariableOpdense_0/BiasAdd/ReadVariableOp2>
dense_0/MatMul/ReadVariableOpdense_0/MatMul/ReadVariableOp2@
val_0_3/BiasAdd/ReadVariableOpval_0_3/BiasAdd/ReadVariableOp2>
val_0_3/MatMul/ReadVariableOpval_0_3/MatMul/ReadVariableOp2@
val_1_3/BiasAdd/ReadVariableOpval_1_3/BiasAdd/ReadVariableOp2>
val_1_3/MatMul/ReadVariableOpval_1_3/MatMul/ReadVariableOp2@
val_2_3/BiasAdd/ReadVariableOpval_2_3/BiasAdd/ReadVariableOp2>
val_2_3/MatMul/ReadVariableOpval_2_3/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������?
 
_user_specified_nameinputs
�

�
F__inference_adv_0_3_layer_call_and_return_conditional_losses_263226288

inputs1
matmul_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
+__inference_val_2_3_layer_call_fn_263226363

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�F
�

A__inference_bootstrapped_ddqn_head_3_of_4_layer_call_fn_263225868
observation9
&dense_0_matmul_readvariableop_resource:	?�6
'dense_0_biasadd_readvariableop_resource:	�9
&adv_0_3_matmul_readvariableop_resource:	�@5
'adv_0_3_biasadd_readvariableop_resource:@9
&val_0_3_matmul_readvariableop_resource:	�@5
'val_0_3_biasadd_readvariableop_resource:@8
&adv_1_3_matmul_readvariableop_resource:@ 5
'adv_1_3_biasadd_readvariableop_resource: 8
&val_1_3_matmul_readvariableop_resource:@ 5
'val_1_3_biasadd_readvariableop_resource: 8
&adv_2_3_matmul_readvariableop_resource: 5
'adv_2_3_biasadd_readvariableop_resource:8
&val_2_3_matmul_readvariableop_resource: 5
'val_2_3_biasadd_readvariableop_resource:
identity��adv_0_3/BiasAdd/ReadVariableOp�adv_0_3/MatMul/ReadVariableOp�adv_1_3/BiasAdd/ReadVariableOp�adv_1_3/MatMul/ReadVariableOp�adv_2_3/BiasAdd/ReadVariableOp�adv_2_3/MatMul/ReadVariableOp�dense_0/BiasAdd/ReadVariableOp�dense_0/MatMul/ReadVariableOp�val_0_3/BiasAdd/ReadVariableOp�val_0_3/MatMul/ReadVariableOp�val_1_3/BiasAdd/ReadVariableOp�val_1_3/MatMul/ReadVariableOp�val_2_3/BiasAdd/ReadVariableOp�val_2_3/MatMul/ReadVariableOp�
dense_0/MatMul/ReadVariableOpReadVariableOp&dense_0_matmul_readvariableop_resource*
_output_shapes
:	?�*
dtype02
dense_0/MatMul/ReadVariableOp�
dense_0/MatMulMatMulobservation%dense_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_0/MatMul�
dense_0/BiasAdd/ReadVariableOpReadVariableOp'dense_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02 
dense_0/BiasAdd/ReadVariableOp�
dense_0/BiasAddBiasAdddense_0/MatMul:product:0&dense_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_0/BiasAddq
dense_0/ReluReludense_0/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
dense_0/Relu�
adv_0_3/MatMul/ReadVariableOpReadVariableOp&adv_0_3_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype02
adv_0_3/MatMul/ReadVariableOp�
adv_0_3/MatMulMatMuldense_0/Relu:activations:0%adv_0_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
adv_0_3/MatMul�
adv_0_3/BiasAdd/ReadVariableOpReadVariableOp'adv_0_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
adv_0_3/BiasAdd/ReadVariableOp�
adv_0_3/BiasAddBiasAddadv_0_3/MatMul:product:0&adv_0_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
adv_0_3/BiasAddp
adv_0_3/ReluReluadv_0_3/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
adv_0_3/Relu�
val_0_3/MatMul/ReadVariableOpReadVariableOp&val_0_3_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype02
val_0_3/MatMul/ReadVariableOp�
val_0_3/MatMulMatMuldense_0/Relu:activations:0%val_0_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
val_0_3/MatMul�
val_0_3/BiasAdd/ReadVariableOpReadVariableOp'val_0_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
val_0_3/BiasAdd/ReadVariableOp�
val_0_3/BiasAddBiasAddval_0_3/MatMul:product:0&val_0_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
val_0_3/BiasAddp
val_0_3/ReluReluval_0_3/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
val_0_3/Relu�
adv_1_3/MatMul/ReadVariableOpReadVariableOp&adv_1_3_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
adv_1_3/MatMul/ReadVariableOp�
adv_1_3/MatMulMatMuladv_0_3/Relu:activations:0%adv_1_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
adv_1_3/MatMul�
adv_1_3/BiasAdd/ReadVariableOpReadVariableOp'adv_1_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
adv_1_3/BiasAdd/ReadVariableOp�
adv_1_3/BiasAddBiasAddadv_1_3/MatMul:product:0&adv_1_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
adv_1_3/BiasAddp
adv_1_3/ReluReluadv_1_3/BiasAdd:output:0*
T0*'
_output_shapes
:��������� 2
adv_1_3/Relu�
val_1_3/MatMul/ReadVariableOpReadVariableOp&val_1_3_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
val_1_3/MatMul/ReadVariableOp�
val_1_3/MatMulMatMulval_0_3/Relu:activations:0%val_1_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
val_1_3/MatMul�
val_1_3/BiasAdd/ReadVariableOpReadVariableOp'val_1_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
val_1_3/BiasAdd/ReadVariableOp�
val_1_3/BiasAddBiasAddval_1_3/MatMul:product:0&val_1_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
val_1_3/BiasAddp
val_1_3/ReluReluval_1_3/BiasAdd:output:0*
T0*'
_output_shapes
:��������� 2
val_1_3/Relu�
adv_2_3/MatMul/ReadVariableOpReadVariableOp&adv_2_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
adv_2_3/MatMul/ReadVariableOp�
adv_2_3/MatMulMatMuladv_1_3/Relu:activations:0%adv_2_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
adv_2_3/MatMul�
adv_2_3/BiasAdd/ReadVariableOpReadVariableOp'adv_2_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
adv_2_3/BiasAdd/ReadVariableOp�
adv_2_3/BiasAddBiasAddadv_2_3/MatMul:product:0&adv_2_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
adv_2_3/BiasAdd�
val_2_3/MatMul/ReadVariableOpReadVariableOp&val_2_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
val_2_3/MatMul/ReadVariableOp�
val_2_3/MatMulMatMulval_1_3/Relu:activations:0%val_2_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
val_2_3/MatMul�
val_2_3/BiasAdd/ReadVariableOpReadVariableOp'val_2_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
val_2_3/BiasAdd/ReadVariableOp�
val_2_3/BiasAddBiasAddval_2_3/MatMul:product:0&val_2_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
val_2_3/BiasAdd�
tf.__operators__.add_7/AddV2AddV2val_2_3/BiasAdd:output:0adv_2_3/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
tf.__operators__.add_7/AddV2�
,tf.math.reduce_mean_7/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2.
,tf.math.reduce_mean_7/Mean/reduction_indices�
tf.math.reduce_mean_7/MeanMeanadv_2_3/BiasAdd:output:05tf.math.reduce_mean_7/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2
tf.math.reduce_mean_7/Mean�
tf.math.subtract_7/SubSub tf.__operators__.add_7/AddV2:z:0#tf.math.reduce_mean_7/Mean:output:0*
T0*'
_output_shapes
:���������2
tf.math.subtract_7/Sub�
IdentityIdentitytf.math.subtract_7/Sub:z:0^adv_0_3/BiasAdd/ReadVariableOp^adv_0_3/MatMul/ReadVariableOp^adv_1_3/BiasAdd/ReadVariableOp^adv_1_3/MatMul/ReadVariableOp^adv_2_3/BiasAdd/ReadVariableOp^adv_2_3/MatMul/ReadVariableOp^dense_0/BiasAdd/ReadVariableOp^dense_0/MatMul/ReadVariableOp^val_0_3/BiasAdd/ReadVariableOp^val_0_3/MatMul/ReadVariableOp^val_1_3/BiasAdd/ReadVariableOp^val_1_3/MatMul/ReadVariableOp^val_2_3/BiasAdd/ReadVariableOp^val_2_3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������?: : : : : : : : : : : : : : 2@
adv_0_3/BiasAdd/ReadVariableOpadv_0_3/BiasAdd/ReadVariableOp2>
adv_0_3/MatMul/ReadVariableOpadv_0_3/MatMul/ReadVariableOp2@
adv_1_3/BiasAdd/ReadVariableOpadv_1_3/BiasAdd/ReadVariableOp2>
adv_1_3/MatMul/ReadVariableOpadv_1_3/MatMul/ReadVariableOp2@
adv_2_3/BiasAdd/ReadVariableOpadv_2_3/BiasAdd/ReadVariableOp2>
adv_2_3/MatMul/ReadVariableOpadv_2_3/MatMul/ReadVariableOp2@
dense_0/BiasAdd/ReadVariableOpdense_0/BiasAdd/ReadVariableOp2>
dense_0/MatMul/ReadVariableOpdense_0/MatMul/ReadVariableOp2@
val_0_3/BiasAdd/ReadVariableOpval_0_3/BiasAdd/ReadVariableOp2>
val_0_3/MatMul/ReadVariableOpval_0_3/MatMul/ReadVariableOp2@
val_1_3/BiasAdd/ReadVariableOpval_1_3/BiasAdd/ReadVariableOp2>
val_1_3/MatMul/ReadVariableOpval_1_3/MatMul/ReadVariableOp2@
val_2_3/BiasAdd/ReadVariableOpval_2_3/BiasAdd/ReadVariableOp2>
val_2_3/MatMul/ReadVariableOpval_2_3/MatMul/ReadVariableOp:T P
'
_output_shapes
:���������?
%
_user_specified_nameobservation
�F
�

\__inference_bootstrapped_ddqn_head_3_of_4_layer_call_and_return_conditional_losses_263226068

inputs9
&dense_0_matmul_readvariableop_resource:	?�6
'dense_0_biasadd_readvariableop_resource:	�9
&adv_0_3_matmul_readvariableop_resource:	�@5
'adv_0_3_biasadd_readvariableop_resource:@9
&val_0_3_matmul_readvariableop_resource:	�@5
'val_0_3_biasadd_readvariableop_resource:@8
&adv_1_3_matmul_readvariableop_resource:@ 5
'adv_1_3_biasadd_readvariableop_resource: 8
&val_1_3_matmul_readvariableop_resource:@ 5
'val_1_3_biasadd_readvariableop_resource: 8
&adv_2_3_matmul_readvariableop_resource: 5
'adv_2_3_biasadd_readvariableop_resource:8
&val_2_3_matmul_readvariableop_resource: 5
'val_2_3_biasadd_readvariableop_resource:
identity��adv_0_3/BiasAdd/ReadVariableOp�adv_0_3/MatMul/ReadVariableOp�adv_1_3/BiasAdd/ReadVariableOp�adv_1_3/MatMul/ReadVariableOp�adv_2_3/BiasAdd/ReadVariableOp�adv_2_3/MatMul/ReadVariableOp�dense_0/BiasAdd/ReadVariableOp�dense_0/MatMul/ReadVariableOp�val_0_3/BiasAdd/ReadVariableOp�val_0_3/MatMul/ReadVariableOp�val_1_3/BiasAdd/ReadVariableOp�val_1_3/MatMul/ReadVariableOp�val_2_3/BiasAdd/ReadVariableOp�val_2_3/MatMul/ReadVariableOp�
dense_0/MatMul/ReadVariableOpReadVariableOp&dense_0_matmul_readvariableop_resource*
_output_shapes
:	?�*
dtype02
dense_0/MatMul/ReadVariableOp�
dense_0/MatMulMatMulinputs%dense_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_0/MatMul�
dense_0/BiasAdd/ReadVariableOpReadVariableOp'dense_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02 
dense_0/BiasAdd/ReadVariableOp�
dense_0/BiasAddBiasAdddense_0/MatMul:product:0&dense_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_0/BiasAddq
dense_0/ReluReludense_0/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
dense_0/Relu�
adv_0_3/MatMul/ReadVariableOpReadVariableOp&adv_0_3_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype02
adv_0_3/MatMul/ReadVariableOp�
adv_0_3/MatMulMatMuldense_0/Relu:activations:0%adv_0_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
adv_0_3/MatMul�
adv_0_3/BiasAdd/ReadVariableOpReadVariableOp'adv_0_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
adv_0_3/BiasAdd/ReadVariableOp�
adv_0_3/BiasAddBiasAddadv_0_3/MatMul:product:0&adv_0_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
adv_0_3/BiasAddp
adv_0_3/ReluReluadv_0_3/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
adv_0_3/Relu�
val_0_3/MatMul/ReadVariableOpReadVariableOp&val_0_3_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype02
val_0_3/MatMul/ReadVariableOp�
val_0_3/MatMulMatMuldense_0/Relu:activations:0%val_0_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
val_0_3/MatMul�
val_0_3/BiasAdd/ReadVariableOpReadVariableOp'val_0_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
val_0_3/BiasAdd/ReadVariableOp�
val_0_3/BiasAddBiasAddval_0_3/MatMul:product:0&val_0_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
val_0_3/BiasAddp
val_0_3/ReluReluval_0_3/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
val_0_3/Relu�
adv_1_3/MatMul/ReadVariableOpReadVariableOp&adv_1_3_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
adv_1_3/MatMul/ReadVariableOp�
adv_1_3/MatMulMatMuladv_0_3/Relu:activations:0%adv_1_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
adv_1_3/MatMul�
adv_1_3/BiasAdd/ReadVariableOpReadVariableOp'adv_1_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
adv_1_3/BiasAdd/ReadVariableOp�
adv_1_3/BiasAddBiasAddadv_1_3/MatMul:product:0&adv_1_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
adv_1_3/BiasAddp
adv_1_3/ReluReluadv_1_3/BiasAdd:output:0*
T0*'
_output_shapes
:��������� 2
adv_1_3/Relu�
val_1_3/MatMul/ReadVariableOpReadVariableOp&val_1_3_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
val_1_3/MatMul/ReadVariableOp�
val_1_3/MatMulMatMulval_0_3/Relu:activations:0%val_1_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
val_1_3/MatMul�
val_1_3/BiasAdd/ReadVariableOpReadVariableOp'val_1_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
val_1_3/BiasAdd/ReadVariableOp�
val_1_3/BiasAddBiasAddval_1_3/MatMul:product:0&val_1_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
val_1_3/BiasAddp
val_1_3/ReluReluval_1_3/BiasAdd:output:0*
T0*'
_output_shapes
:��������� 2
val_1_3/Relu�
adv_2_3/MatMul/ReadVariableOpReadVariableOp&adv_2_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
adv_2_3/MatMul/ReadVariableOp�
adv_2_3/MatMulMatMuladv_1_3/Relu:activations:0%adv_2_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
adv_2_3/MatMul�
adv_2_3/BiasAdd/ReadVariableOpReadVariableOp'adv_2_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
adv_2_3/BiasAdd/ReadVariableOp�
adv_2_3/BiasAddBiasAddadv_2_3/MatMul:product:0&adv_2_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
adv_2_3/BiasAdd�
val_2_3/MatMul/ReadVariableOpReadVariableOp&val_2_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
val_2_3/MatMul/ReadVariableOp�
val_2_3/MatMulMatMulval_1_3/Relu:activations:0%val_2_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
val_2_3/MatMul�
val_2_3/BiasAdd/ReadVariableOpReadVariableOp'val_2_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
val_2_3/BiasAdd/ReadVariableOp�
val_2_3/BiasAddBiasAddval_2_3/MatMul:product:0&val_2_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
val_2_3/BiasAdd�
tf.__operators__.add_7/AddV2AddV2val_2_3/BiasAdd:output:0adv_2_3/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
tf.__operators__.add_7/AddV2�
,tf.math.reduce_mean_7/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2.
,tf.math.reduce_mean_7/Mean/reduction_indices�
tf.math.reduce_mean_7/MeanMeanadv_2_3/BiasAdd:output:05tf.math.reduce_mean_7/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2
tf.math.reduce_mean_7/Mean�
tf.math.subtract_7/SubSub tf.__operators__.add_7/AddV2:z:0#tf.math.reduce_mean_7/Mean:output:0*
T0*'
_output_shapes
:���������2
tf.math.subtract_7/Sub�
IdentityIdentitytf.math.subtract_7/Sub:z:0^adv_0_3/BiasAdd/ReadVariableOp^adv_0_3/MatMul/ReadVariableOp^adv_1_3/BiasAdd/ReadVariableOp^adv_1_3/MatMul/ReadVariableOp^adv_2_3/BiasAdd/ReadVariableOp^adv_2_3/MatMul/ReadVariableOp^dense_0/BiasAdd/ReadVariableOp^dense_0/MatMul/ReadVariableOp^val_0_3/BiasAdd/ReadVariableOp^val_0_3/MatMul/ReadVariableOp^val_1_3/BiasAdd/ReadVariableOp^val_1_3/MatMul/ReadVariableOp^val_2_3/BiasAdd/ReadVariableOp^val_2_3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������?: : : : : : : : : : : : : : 2@
adv_0_3/BiasAdd/ReadVariableOpadv_0_3/BiasAdd/ReadVariableOp2>
adv_0_3/MatMul/ReadVariableOpadv_0_3/MatMul/ReadVariableOp2@
adv_1_3/BiasAdd/ReadVariableOpadv_1_3/BiasAdd/ReadVariableOp2>
adv_1_3/MatMul/ReadVariableOpadv_1_3/MatMul/ReadVariableOp2@
adv_2_3/BiasAdd/ReadVariableOpadv_2_3/BiasAdd/ReadVariableOp2>
adv_2_3/MatMul/ReadVariableOpadv_2_3/MatMul/ReadVariableOp2@
dense_0/BiasAdd/ReadVariableOpdense_0/BiasAdd/ReadVariableOp2>
dense_0/MatMul/ReadVariableOpdense_0/MatMul/ReadVariableOp2@
val_0_3/BiasAdd/ReadVariableOpval_0_3/BiasAdd/ReadVariableOp2>
val_0_3/MatMul/ReadVariableOpval_0_3/MatMul/ReadVariableOp2@
val_1_3/BiasAdd/ReadVariableOpval_1_3/BiasAdd/ReadVariableOp2>
val_1_3/MatMul/ReadVariableOpval_1_3/MatMul/ReadVariableOp2@
val_2_3/BiasAdd/ReadVariableOpval_2_3/BiasAdd/ReadVariableOp2>
val_2_3/MatMul/ReadVariableOpval_2_3/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������?
 
_user_specified_nameinputs
�F
�

\__inference_bootstrapped_ddqn_head_3_of_4_layer_call_and_return_conditional_losses_263226123

inputs9
&dense_0_matmul_readvariableop_resource:	?�6
'dense_0_biasadd_readvariableop_resource:	�9
&adv_0_3_matmul_readvariableop_resource:	�@5
'adv_0_3_biasadd_readvariableop_resource:@9
&val_0_3_matmul_readvariableop_resource:	�@5
'val_0_3_biasadd_readvariableop_resource:@8
&adv_1_3_matmul_readvariableop_resource:@ 5
'adv_1_3_biasadd_readvariableop_resource: 8
&val_1_3_matmul_readvariableop_resource:@ 5
'val_1_3_biasadd_readvariableop_resource: 8
&adv_2_3_matmul_readvariableop_resource: 5
'adv_2_3_biasadd_readvariableop_resource:8
&val_2_3_matmul_readvariableop_resource: 5
'val_2_3_biasadd_readvariableop_resource:
identity��adv_0_3/BiasAdd/ReadVariableOp�adv_0_3/MatMul/ReadVariableOp�adv_1_3/BiasAdd/ReadVariableOp�adv_1_3/MatMul/ReadVariableOp�adv_2_3/BiasAdd/ReadVariableOp�adv_2_3/MatMul/ReadVariableOp�dense_0/BiasAdd/ReadVariableOp�dense_0/MatMul/ReadVariableOp�val_0_3/BiasAdd/ReadVariableOp�val_0_3/MatMul/ReadVariableOp�val_1_3/BiasAdd/ReadVariableOp�val_1_3/MatMul/ReadVariableOp�val_2_3/BiasAdd/ReadVariableOp�val_2_3/MatMul/ReadVariableOp�
dense_0/MatMul/ReadVariableOpReadVariableOp&dense_0_matmul_readvariableop_resource*
_output_shapes
:	?�*
dtype02
dense_0/MatMul/ReadVariableOp�
dense_0/MatMulMatMulinputs%dense_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_0/MatMul�
dense_0/BiasAdd/ReadVariableOpReadVariableOp'dense_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02 
dense_0/BiasAdd/ReadVariableOp�
dense_0/BiasAddBiasAdddense_0/MatMul:product:0&dense_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_0/BiasAddq
dense_0/ReluReludense_0/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
dense_0/Relu�
adv_0_3/MatMul/ReadVariableOpReadVariableOp&adv_0_3_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype02
adv_0_3/MatMul/ReadVariableOp�
adv_0_3/MatMulMatMuldense_0/Relu:activations:0%adv_0_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
adv_0_3/MatMul�
adv_0_3/BiasAdd/ReadVariableOpReadVariableOp'adv_0_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
adv_0_3/BiasAdd/ReadVariableOp�
adv_0_3/BiasAddBiasAddadv_0_3/MatMul:product:0&adv_0_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
adv_0_3/BiasAddp
adv_0_3/ReluReluadv_0_3/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
adv_0_3/Relu�
val_0_3/MatMul/ReadVariableOpReadVariableOp&val_0_3_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype02
val_0_3/MatMul/ReadVariableOp�
val_0_3/MatMulMatMuldense_0/Relu:activations:0%val_0_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
val_0_3/MatMul�
val_0_3/BiasAdd/ReadVariableOpReadVariableOp'val_0_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
val_0_3/BiasAdd/ReadVariableOp�
val_0_3/BiasAddBiasAddval_0_3/MatMul:product:0&val_0_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
val_0_3/BiasAddp
val_0_3/ReluReluval_0_3/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
val_0_3/Relu�
adv_1_3/MatMul/ReadVariableOpReadVariableOp&adv_1_3_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
adv_1_3/MatMul/ReadVariableOp�
adv_1_3/MatMulMatMuladv_0_3/Relu:activations:0%adv_1_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
adv_1_3/MatMul�
adv_1_3/BiasAdd/ReadVariableOpReadVariableOp'adv_1_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
adv_1_3/BiasAdd/ReadVariableOp�
adv_1_3/BiasAddBiasAddadv_1_3/MatMul:product:0&adv_1_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
adv_1_3/BiasAddp
adv_1_3/ReluReluadv_1_3/BiasAdd:output:0*
T0*'
_output_shapes
:��������� 2
adv_1_3/Relu�
val_1_3/MatMul/ReadVariableOpReadVariableOp&val_1_3_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
val_1_3/MatMul/ReadVariableOp�
val_1_3/MatMulMatMulval_0_3/Relu:activations:0%val_1_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
val_1_3/MatMul�
val_1_3/BiasAdd/ReadVariableOpReadVariableOp'val_1_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
val_1_3/BiasAdd/ReadVariableOp�
val_1_3/BiasAddBiasAddval_1_3/MatMul:product:0&val_1_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
val_1_3/BiasAddp
val_1_3/ReluReluval_1_3/BiasAdd:output:0*
T0*'
_output_shapes
:��������� 2
val_1_3/Relu�
adv_2_3/MatMul/ReadVariableOpReadVariableOp&adv_2_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
adv_2_3/MatMul/ReadVariableOp�
adv_2_3/MatMulMatMuladv_1_3/Relu:activations:0%adv_2_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
adv_2_3/MatMul�
adv_2_3/BiasAdd/ReadVariableOpReadVariableOp'adv_2_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
adv_2_3/BiasAdd/ReadVariableOp�
adv_2_3/BiasAddBiasAddadv_2_3/MatMul:product:0&adv_2_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
adv_2_3/BiasAdd�
val_2_3/MatMul/ReadVariableOpReadVariableOp&val_2_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
val_2_3/MatMul/ReadVariableOp�
val_2_3/MatMulMatMulval_1_3/Relu:activations:0%val_2_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
val_2_3/MatMul�
val_2_3/BiasAdd/ReadVariableOpReadVariableOp'val_2_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
val_2_3/BiasAdd/ReadVariableOp�
val_2_3/BiasAddBiasAddval_2_3/MatMul:product:0&val_2_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
val_2_3/BiasAdd�
tf.__operators__.add_7/AddV2AddV2val_2_3/BiasAdd:output:0adv_2_3/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
tf.__operators__.add_7/AddV2�
,tf.math.reduce_mean_7/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2.
,tf.math.reduce_mean_7/Mean/reduction_indices�
tf.math.reduce_mean_7/MeanMeanadv_2_3/BiasAdd:output:05tf.math.reduce_mean_7/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2
tf.math.reduce_mean_7/Mean�
tf.math.subtract_7/SubSub tf.__operators__.add_7/AddV2:z:0#tf.math.reduce_mean_7/Mean:output:0*
T0*'
_output_shapes
:���������2
tf.math.subtract_7/Sub�
IdentityIdentitytf.math.subtract_7/Sub:z:0^adv_0_3/BiasAdd/ReadVariableOp^adv_0_3/MatMul/ReadVariableOp^adv_1_3/BiasAdd/ReadVariableOp^adv_1_3/MatMul/ReadVariableOp^adv_2_3/BiasAdd/ReadVariableOp^adv_2_3/MatMul/ReadVariableOp^dense_0/BiasAdd/ReadVariableOp^dense_0/MatMul/ReadVariableOp^val_0_3/BiasAdd/ReadVariableOp^val_0_3/MatMul/ReadVariableOp^val_1_3/BiasAdd/ReadVariableOp^val_1_3/MatMul/ReadVariableOp^val_2_3/BiasAdd/ReadVariableOp^val_2_3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������?: : : : : : : : : : : : : : 2@
adv_0_3/BiasAdd/ReadVariableOpadv_0_3/BiasAdd/ReadVariableOp2>
adv_0_3/MatMul/ReadVariableOpadv_0_3/MatMul/ReadVariableOp2@
adv_1_3/BiasAdd/ReadVariableOpadv_1_3/BiasAdd/ReadVariableOp2>
adv_1_3/MatMul/ReadVariableOpadv_1_3/MatMul/ReadVariableOp2@
adv_2_3/BiasAdd/ReadVariableOpadv_2_3/BiasAdd/ReadVariableOp2>
adv_2_3/MatMul/ReadVariableOpadv_2_3/MatMul/ReadVariableOp2@
dense_0/BiasAdd/ReadVariableOpdense_0/BiasAdd/ReadVariableOp2>
dense_0/MatMul/ReadVariableOpdense_0/MatMul/ReadVariableOp2@
val_0_3/BiasAdd/ReadVariableOpval_0_3/BiasAdd/ReadVariableOp2>
val_0_3/MatMul/ReadVariableOpval_0_3/MatMul/ReadVariableOp2@
val_1_3/BiasAdd/ReadVariableOpval_1_3/BiasAdd/ReadVariableOp2>
val_1_3/MatMul/ReadVariableOpval_1_3/MatMul/ReadVariableOp2@
val_2_3/BiasAdd/ReadVariableOpval_2_3/BiasAdd/ReadVariableOp2>
val_2_3/MatMul/ReadVariableOpval_2_3/MatMul/ReadVariableOp:O K
'
_output_shapes
:���������?
 
_user_specified_nameinputs
�F
�

A__inference_bootstrapped_ddqn_head_3_of_4_layer_call_fn_263225428
observation9
&dense_0_matmul_readvariableop_resource:	?�6
'dense_0_biasadd_readvariableop_resource:	�9
&adv_0_3_matmul_readvariableop_resource:	�@5
'adv_0_3_biasadd_readvariableop_resource:@9
&val_0_3_matmul_readvariableop_resource:	�@5
'val_0_3_biasadd_readvariableop_resource:@8
&adv_1_3_matmul_readvariableop_resource:@ 5
'adv_1_3_biasadd_readvariableop_resource: 8
&val_1_3_matmul_readvariableop_resource:@ 5
'val_1_3_biasadd_readvariableop_resource: 8
&adv_2_3_matmul_readvariableop_resource: 5
'adv_2_3_biasadd_readvariableop_resource:8
&val_2_3_matmul_readvariableop_resource: 5
'val_2_3_biasadd_readvariableop_resource:
identity��adv_0_3/BiasAdd/ReadVariableOp�adv_0_3/MatMul/ReadVariableOp�adv_1_3/BiasAdd/ReadVariableOp�adv_1_3/MatMul/ReadVariableOp�adv_2_3/BiasAdd/ReadVariableOp�adv_2_3/MatMul/ReadVariableOp�dense_0/BiasAdd/ReadVariableOp�dense_0/MatMul/ReadVariableOp�val_0_3/BiasAdd/ReadVariableOp�val_0_3/MatMul/ReadVariableOp�val_1_3/BiasAdd/ReadVariableOp�val_1_3/MatMul/ReadVariableOp�val_2_3/BiasAdd/ReadVariableOp�val_2_3/MatMul/ReadVariableOp�
dense_0/MatMul/ReadVariableOpReadVariableOp&dense_0_matmul_readvariableop_resource*
_output_shapes
:	?�*
dtype02
dense_0/MatMul/ReadVariableOp�
dense_0/MatMulMatMulobservation%dense_0/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_0/MatMul�
dense_0/BiasAdd/ReadVariableOpReadVariableOp'dense_0_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02 
dense_0/BiasAdd/ReadVariableOp�
dense_0/BiasAddBiasAdddense_0/MatMul:product:0&dense_0/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_0/BiasAddq
dense_0/ReluReludense_0/BiasAdd:output:0*
T0*(
_output_shapes
:����������2
dense_0/Relu�
adv_0_3/MatMul/ReadVariableOpReadVariableOp&adv_0_3_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype02
adv_0_3/MatMul/ReadVariableOp�
adv_0_3/MatMulMatMuldense_0/Relu:activations:0%adv_0_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
adv_0_3/MatMul�
adv_0_3/BiasAdd/ReadVariableOpReadVariableOp'adv_0_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
adv_0_3/BiasAdd/ReadVariableOp�
adv_0_3/BiasAddBiasAddadv_0_3/MatMul:product:0&adv_0_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
adv_0_3/BiasAddp
adv_0_3/ReluReluadv_0_3/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
adv_0_3/Relu�
val_0_3/MatMul/ReadVariableOpReadVariableOp&val_0_3_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype02
val_0_3/MatMul/ReadVariableOp�
val_0_3/MatMulMatMuldense_0/Relu:activations:0%val_0_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
val_0_3/MatMul�
val_0_3/BiasAdd/ReadVariableOpReadVariableOp'val_0_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
val_0_3/BiasAdd/ReadVariableOp�
val_0_3/BiasAddBiasAddval_0_3/MatMul:product:0&val_0_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
val_0_3/BiasAddp
val_0_3/ReluReluval_0_3/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
val_0_3/Relu�
adv_1_3/MatMul/ReadVariableOpReadVariableOp&adv_1_3_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
adv_1_3/MatMul/ReadVariableOp�
adv_1_3/MatMulMatMuladv_0_3/Relu:activations:0%adv_1_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
adv_1_3/MatMul�
adv_1_3/BiasAdd/ReadVariableOpReadVariableOp'adv_1_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
adv_1_3/BiasAdd/ReadVariableOp�
adv_1_3/BiasAddBiasAddadv_1_3/MatMul:product:0&adv_1_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
adv_1_3/BiasAddp
adv_1_3/ReluReluadv_1_3/BiasAdd:output:0*
T0*'
_output_shapes
:��������� 2
adv_1_3/Relu�
val_1_3/MatMul/ReadVariableOpReadVariableOp&val_1_3_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
val_1_3/MatMul/ReadVariableOp�
val_1_3/MatMulMatMulval_0_3/Relu:activations:0%val_1_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
val_1_3/MatMul�
val_1_3/BiasAdd/ReadVariableOpReadVariableOp'val_1_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
val_1_3/BiasAdd/ReadVariableOp�
val_1_3/BiasAddBiasAddval_1_3/MatMul:product:0&val_1_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
val_1_3/BiasAddp
val_1_3/ReluReluval_1_3/BiasAdd:output:0*
T0*'
_output_shapes
:��������� 2
val_1_3/Relu�
adv_2_3/MatMul/ReadVariableOpReadVariableOp&adv_2_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
adv_2_3/MatMul/ReadVariableOp�
adv_2_3/MatMulMatMuladv_1_3/Relu:activations:0%adv_2_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
adv_2_3/MatMul�
adv_2_3/BiasAdd/ReadVariableOpReadVariableOp'adv_2_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
adv_2_3/BiasAdd/ReadVariableOp�
adv_2_3/BiasAddBiasAddadv_2_3/MatMul:product:0&adv_2_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
adv_2_3/BiasAdd�
val_2_3/MatMul/ReadVariableOpReadVariableOp&val_2_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
val_2_3/MatMul/ReadVariableOp�
val_2_3/MatMulMatMulval_1_3/Relu:activations:0%val_2_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
val_2_3/MatMul�
val_2_3/BiasAdd/ReadVariableOpReadVariableOp'val_2_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
val_2_3/BiasAdd/ReadVariableOp�
val_2_3/BiasAddBiasAddval_2_3/MatMul:product:0&val_2_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
val_2_3/BiasAdd�
tf.__operators__.add_7/AddV2AddV2val_2_3/BiasAdd:output:0adv_2_3/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
tf.__operators__.add_7/AddV2�
,tf.math.reduce_mean_7/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2.
,tf.math.reduce_mean_7/Mean/reduction_indices�
tf.math.reduce_mean_7/MeanMeanadv_2_3/BiasAdd:output:05tf.math.reduce_mean_7/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(2
tf.math.reduce_mean_7/Mean�
tf.math.subtract_7/SubSub tf.__operators__.add_7/AddV2:z:0#tf.math.reduce_mean_7/Mean:output:0*
T0*'
_output_shapes
:���������2
tf.math.subtract_7/Sub�
IdentityIdentitytf.math.subtract_7/Sub:z:0^adv_0_3/BiasAdd/ReadVariableOp^adv_0_3/MatMul/ReadVariableOp^adv_1_3/BiasAdd/ReadVariableOp^adv_1_3/MatMul/ReadVariableOp^adv_2_3/BiasAdd/ReadVariableOp^adv_2_3/MatMul/ReadVariableOp^dense_0/BiasAdd/ReadVariableOp^dense_0/MatMul/ReadVariableOp^val_0_3/BiasAdd/ReadVariableOp^val_0_3/MatMul/ReadVariableOp^val_1_3/BiasAdd/ReadVariableOp^val_1_3/MatMul/ReadVariableOp^val_2_3/BiasAdd/ReadVariableOp^val_2_3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������?: : : : : : : : : : : : : : 2@
adv_0_3/BiasAdd/ReadVariableOpadv_0_3/BiasAdd/ReadVariableOp2>
adv_0_3/MatMul/ReadVariableOpadv_0_3/MatMul/ReadVariableOp2@
adv_1_3/BiasAdd/ReadVariableOpadv_1_3/BiasAdd/ReadVariableOp2>
adv_1_3/MatMul/ReadVariableOpadv_1_3/MatMul/ReadVariableOp2@
adv_2_3/BiasAdd/ReadVariableOpadv_2_3/BiasAdd/ReadVariableOp2>
adv_2_3/MatMul/ReadVariableOpadv_2_3/MatMul/ReadVariableOp2@
dense_0/BiasAdd/ReadVariableOpdense_0/BiasAdd/ReadVariableOp2>
dense_0/MatMul/ReadVariableOpdense_0/MatMul/ReadVariableOp2@
val_0_3/BiasAdd/ReadVariableOpval_0_3/BiasAdd/ReadVariableOp2>
val_0_3/MatMul/ReadVariableOpval_0_3/MatMul/ReadVariableOp2@
val_1_3/BiasAdd/ReadVariableOpval_1_3/BiasAdd/ReadVariableOp2>
val_1_3/MatMul/ReadVariableOpval_1_3/MatMul/ReadVariableOp2@
val_2_3/BiasAdd/ReadVariableOpval_2_3/BiasAdd/ReadVariableOp2>
val_2_3/MatMul/ReadVariableOpval_2_3/MatMul/ReadVariableOp:T P
'
_output_shapes
:���������?
%
_user_specified_nameobservation
�

�
+__inference_adv_0_3_layer_call_fn_263226299

inputs1
matmul_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
F__inference_val_1_3_layer_call_and_return_conditional_losses_263226310

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:��������� 2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
+__inference_val_1_3_layer_call_fn_263226321

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:��������� 2
Relu�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs"�-
saver_filename:0
Identity:0Identity_178"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
C
observation4
serving_default_observation:0���������?F
tf.math.subtract_70
StatefulPartitionedCall:0���������tensorflow/serving/predict:Ӛ
�Y
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
layer_with_weights-6
layer-7
	layer-8

layer-9
layer-10
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api

signatures
l_default_save_signature
*m&call_and_return_all_conditional_losses
n__call__"�U
_tf_keras_network�U{"name": "bootstrapped_ddqn_head_3_of_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "bootstrapped_ddqn_head_3_of_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 63]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "observation"}, "name": "observation", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "dense_0", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_0", "inbound_nodes": [[["observation", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "val_0_3", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "val_0_3", "inbound_nodes": [[["dense_0", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "adv_0_3", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "adv_0_3", "inbound_nodes": [[["dense_0", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "val_1_3", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "val_1_3", "inbound_nodes": [[["val_0_3", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "adv_1_3", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "adv_1_3", "inbound_nodes": [[["adv_0_3", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "val_2_3", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "val_2_3", "inbound_nodes": [[["val_1_3", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "adv_2_3", "trainable": true, "dtype": "float32", "units": 4, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "adv_2_3", "inbound_nodes": [[["adv_1_3", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_7", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_7", "inbound_nodes": [["val_2_3", 0, 0, {"y": ["adv_2_3", 0, 0], "name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_7", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_7", "inbound_nodes": [["adv_2_3", 0, 0, {"axis": 1, "keepdims": true}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_7", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_7", "inbound_nodes": [["tf.__operators__.add_7", 0, 0, {"y": ["tf.math.reduce_mean_7", 0, 0], "name": null}]]}], "input_layers": [["observation", 0, 0]], "output_layers": [["tf.math.subtract_7", 0, 0]]}, "shared_object_id": 25, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 63]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 63]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 63]}, "float32", "observation"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "bootstrapped_ddqn_head_3_of_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 63]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "observation"}, "name": "observation", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "Dense", "config": {"name": "dense_0", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_0", "inbound_nodes": [[["observation", 0, 0, {}]]], "shared_object_id": 3}, {"class_name": "Dense", "config": {"name": "val_0_3", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "val_0_3", "inbound_nodes": [[["dense_0", 0, 0, {}]]], "shared_object_id": 6}, {"class_name": "Dense", "config": {"name": "adv_0_3", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "adv_0_3", "inbound_nodes": [[["dense_0", 0, 0, {}]]], "shared_object_id": 9}, {"class_name": "Dense", "config": {"name": "val_1_3", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "val_1_3", "inbound_nodes": [[["val_0_3", 0, 0, {}]]], "shared_object_id": 12}, {"class_name": "Dense", "config": {"name": "adv_1_3", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "adv_1_3", "inbound_nodes": [[["adv_0_3", 0, 0, {}]]], "shared_object_id": 15}, {"class_name": "Dense", "config": {"name": "val_2_3", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "val_2_3", "inbound_nodes": [[["val_1_3", 0, 0, {}]]], "shared_object_id": 18}, {"class_name": "Dense", "config": {"name": "adv_2_3", "trainable": true, "dtype": "float32", "units": 4, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 19}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 20}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "adv_2_3", "inbound_nodes": [[["adv_1_3", 0, 0, {}]]], "shared_object_id": 21}, {"class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_7", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "name": "tf.__operators__.add_7", "inbound_nodes": [["val_2_3", 0, 0, {"y": ["adv_2_3", 0, 0], "name": null}]], "shared_object_id": 22}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_7", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "name": "tf.math.reduce_mean_7", "inbound_nodes": [["adv_2_3", 0, 0, {"axis": 1, "keepdims": true}]], "shared_object_id": 23}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_7", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "name": "tf.math.subtract_7", "inbound_nodes": [["tf.__operators__.add_7", 0, 0, {"y": ["tf.math.reduce_mean_7", 0, 0], "name": null}]], "shared_object_id": 24}], "input_layers": [["observation", 0, 0]], "output_layers": [["tf.math.subtract_7", 0, 0]]}}, "training_config": {"loss": {"class_name": "MeanSquaredError", "config": {"reduction": "auto", "name": "mean_squared_error"}, "shared_object_id": 27}, "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0001, "decay": 0.0, "beta_1": 0.9, "beta_2": 0.999, "epsilon": 1e-07, "amsgrad": false}}}}
�"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "observation", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 63]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 63]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "observation"}}
�

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
*o&call_and_return_all_conditional_losses
p__call__"�
_tf_keras_layer�{"name": "dense_0", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_0", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["observation", 0, 0, {}]]], "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 63}}, "shared_object_id": 28}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 63]}}
�

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
*q&call_and_return_all_conditional_losses
r__call__"�
_tf_keras_layer�{"name": "val_0_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "val_0_3", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dense_0", 0, 0, {}]]], "shared_object_id": 6, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}, "shared_object_id": 29}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
�

kernel
bias
 trainable_variables
!regularization_losses
"	variables
#	keras_api
*s&call_and_return_all_conditional_losses
t__call__"�
_tf_keras_layer�{"name": "adv_0_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "adv_0_3", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dense_0", 0, 0, {}]]], "shared_object_id": 9, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}, "shared_object_id": 30}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
�

$kernel
%bias
&trainable_variables
'regularization_losses
(	variables
)	keras_api
*u&call_and_return_all_conditional_losses
v__call__"�
_tf_keras_layer�{"name": "val_1_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "val_1_3", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["val_0_3", 0, 0, {}]]], "shared_object_id": 12, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}, "shared_object_id": 31}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
�

*kernel
+bias
,trainable_variables
-regularization_losses
.	variables
/	keras_api
*w&call_and_return_all_conditional_losses
x__call__"�
_tf_keras_layer�{"name": "adv_1_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "adv_1_3", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["adv_0_3", 0, 0, {}]]], "shared_object_id": 15, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}, "shared_object_id": 32}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
�

0kernel
1bias
2trainable_variables
3regularization_losses
4	variables
5	keras_api
*y&call_and_return_all_conditional_losses
z__call__"�
_tf_keras_layer�{"name": "val_2_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "val_2_3", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["val_1_3", 0, 0, {}]]], "shared_object_id": 18, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}, "shared_object_id": 33}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
�

6kernel
7bias
8trainable_variables
9regularization_losses
:	variables
;	keras_api
*{&call_and_return_all_conditional_losses
|__call__"�
_tf_keras_layer�{"name": "adv_2_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "adv_2_3", "trainable": true, "dtype": "float32", "units": 4, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 19}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 20}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["adv_1_3", 0, 0, {}]]], "shared_object_id": 21, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}, "shared_object_id": 34}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
�
<	keras_api"�
_tf_keras_layer�{"name": "tf.__operators__.add_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.__operators__.add_7", "trainable": true, "dtype": "float32", "function": "__operators__.add"}, "inbound_nodes": [["val_2_3", 0, 0, {"y": ["adv_2_3", 0, 0], "name": null}]], "shared_object_id": 22}
�
=	keras_api"�
_tf_keras_layer�{"name": "tf.math.reduce_mean_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.reduce_mean_7", "trainable": true, "dtype": "float32", "function": "math.reduce_mean"}, "inbound_nodes": [["adv_2_3", 0, 0, {"axis": 1, "keepdims": true}]], "shared_object_id": 23}
�
>	keras_api"�
_tf_keras_layer�{"name": "tf.math.subtract_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.subtract_7", "trainable": true, "dtype": "float32", "function": "math.subtract"}, "inbound_nodes": [["tf.__operators__.add_7", 0, 0, {"y": ["tf.math.reduce_mean_7", 0, 0], "name": null}]], "shared_object_id": 24}
"
	optimizer
�
0
1
2
3
4
5
$6
%7
*8
+9
010
111
612
713"
trackable_list_wrapper
 "
trackable_list_wrapper
�
0
1
2
3
4
5
$6
%7
*8
+9
010
111
612
713"
trackable_list_wrapper
�
trainable_variables
regularization_losses
?non_trainable_variables
@metrics

Alayers
Blayer_metrics
	variables
Clayer_regularization_losses
n__call__
l_default_save_signature
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses"
_generic_user_object
,
}serving_default"
signature_map
!:	?�2dense_0/kernel
:�2dense_0/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
trainable_variables
regularization_losses
Dnon_trainable_variables
Emetrics

Flayers
Glayer_metrics
	variables
Hlayer_regularization_losses
p__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses"
_generic_user_object
!:	�@2val_0_3/kernel
:@2val_0_3/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
trainable_variables
regularization_losses
Inon_trainable_variables
Jmetrics

Klayers
Llayer_metrics
	variables
Mlayer_regularization_losses
r__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses"
_generic_user_object
!:	�@2adv_0_3/kernel
:@2adv_0_3/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
 trainable_variables
!regularization_losses
Nnon_trainable_variables
Ometrics

Players
Qlayer_metrics
"	variables
Rlayer_regularization_losses
t__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses"
_generic_user_object
 :@ 2val_1_3/kernel
: 2val_1_3/bias
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
�
&trainable_variables
'regularization_losses
Snon_trainable_variables
Tmetrics

Ulayers
Vlayer_metrics
(	variables
Wlayer_regularization_losses
v__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
 :@ 2adv_1_3/kernel
: 2adv_1_3/bias
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
�
,trainable_variables
-regularization_losses
Xnon_trainable_variables
Ymetrics

Zlayers
[layer_metrics
.	variables
\layer_regularization_losses
x__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses"
_generic_user_object
 : 2val_2_3/kernel
:2val_2_3/bias
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
�
2trainable_variables
3regularization_losses
]non_trainable_variables
^metrics

_layers
`layer_metrics
4	variables
alayer_regularization_losses
z__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
 : 2adv_2_3/kernel
:2adv_2_3/bias
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
�
8trainable_variables
9regularization_losses
bnon_trainable_variables
cmetrics

dlayers
elayer_metrics
:	variables
flayer_regularization_losses
|__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
"
_generic_user_object
 "
trackable_list_wrapper
'
g0"
trackable_list_wrapper
n
0
1
2
3
4
5
6
7
	8

9
10"
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
�
	htotal
	icount
j	variables
k	keras_api"�
_tf_keras_metric�{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 35}
:  (2total
:  (2count
.
h0
i1"
trackable_list_wrapper
-
j	variables"
_generic_user_object
�2�
$__inference__wrapped_model_263225372�
���
FullArgSpec
args� 
varargsjargs
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� **�'
%�"
observation���������?
�2�
\__inference_bootstrapped_ddqn_head_3_of_4_layer_call_and_return_conditional_losses_263226068
\__inference_bootstrapped_ddqn_head_3_of_4_layer_call_and_return_conditional_losses_263226123
\__inference_bootstrapped_ddqn_head_3_of_4_layer_call_and_return_conditional_losses_263225923
\__inference_bootstrapped_ddqn_head_3_of_4_layer_call_and_return_conditional_losses_263225978�
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
A__inference_bootstrapped_ddqn_head_3_of_4_layer_call_fn_263225428
A__inference_bootstrapped_ddqn_head_3_of_4_layer_call_fn_263226178
A__inference_bootstrapped_ddqn_head_3_of_4_layer_call_fn_263226233
A__inference_bootstrapped_ddqn_head_3_of_4_layer_call_fn_263225868�
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
�2�
F__inference_dense_0_layer_call_and_return_conditional_losses_263226244�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
+__inference_dense_0_layer_call_fn_263226255�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
F__inference_val_0_3_layer_call_and_return_conditional_losses_263226266�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
+__inference_val_0_3_layer_call_fn_263226277�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
F__inference_adv_0_3_layer_call_and_return_conditional_losses_263226288�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
+__inference_adv_0_3_layer_call_fn_263226299�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
F__inference_val_1_3_layer_call_and_return_conditional_losses_263226310�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
+__inference_val_1_3_layer_call_fn_263226321�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
F__inference_adv_1_3_layer_call_and_return_conditional_losses_263226332�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
+__inference_adv_1_3_layer_call_fn_263226343�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
F__inference_val_2_3_layer_call_and_return_conditional_losses_263226353�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
+__inference_val_2_3_layer_call_fn_263226363�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
F__inference_adv_2_3_layer_call_and_return_conditional_losses_263226373�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
+__inference_adv_2_3_layer_call_fn_263226383�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
'__inference_signature_wrapper_263226013observation"�
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
 �
$__inference__wrapped_model_263225372�*+$%67014�1
*�'
%�"
observation���������?
� "G�D
B
tf.math.subtract_7,�)
tf.math.subtract_7����������
F__inference_adv_0_3_layer_call_and_return_conditional_losses_263226288]0�-
&�#
!�
inputs����������
� "%�"
�
0���������@
� 
+__inference_adv_0_3_layer_call_fn_263226299P0�-
&�#
!�
inputs����������
� "����������@�
F__inference_adv_1_3_layer_call_and_return_conditional_losses_263226332\*+/�,
%�"
 �
inputs���������@
� "%�"
�
0��������� 
� ~
+__inference_adv_1_3_layer_call_fn_263226343O*+/�,
%�"
 �
inputs���������@
� "���������� �
F__inference_adv_2_3_layer_call_and_return_conditional_losses_263226373\67/�,
%�"
 �
inputs��������� 
� "%�"
�
0���������
� ~
+__inference_adv_2_3_layer_call_fn_263226383O67/�,
%�"
 �
inputs��������� 
� "�����������
\__inference_bootstrapped_ddqn_head_3_of_4_layer_call_and_return_conditional_losses_263225923u*+$%6701<�9
2�/
%�"
observation���������?
p 

 
� "%�"
�
0���������
� �
\__inference_bootstrapped_ddqn_head_3_of_4_layer_call_and_return_conditional_losses_263225978u*+$%6701<�9
2�/
%�"
observation���������?
p

 
� "%�"
�
0���������
� �
\__inference_bootstrapped_ddqn_head_3_of_4_layer_call_and_return_conditional_losses_263226068p*+$%67017�4
-�*
 �
inputs���������?
p 

 
� "%�"
�
0���������
� �
\__inference_bootstrapped_ddqn_head_3_of_4_layer_call_and_return_conditional_losses_263226123p*+$%67017�4
-�*
 �
inputs���������?
p

 
� "%�"
�
0���������
� �
A__inference_bootstrapped_ddqn_head_3_of_4_layer_call_fn_263225428h*+$%6701<�9
2�/
%�"
observation���������?
p 

 
� "�����������
A__inference_bootstrapped_ddqn_head_3_of_4_layer_call_fn_263225868h*+$%6701<�9
2�/
%�"
observation���������?
p

 
� "�����������
A__inference_bootstrapped_ddqn_head_3_of_4_layer_call_fn_263226178c*+$%67017�4
-�*
 �
inputs���������?
p 

 
� "�����������
A__inference_bootstrapped_ddqn_head_3_of_4_layer_call_fn_263226233c*+$%67017�4
-�*
 �
inputs���������?
p

 
� "�����������
F__inference_dense_0_layer_call_and_return_conditional_losses_263226244]/�,
%�"
 �
inputs���������?
� "&�#
�
0����������
� 
+__inference_dense_0_layer_call_fn_263226255P/�,
%�"
 �
inputs���������?
� "������������
'__inference_signature_wrapper_263226013�*+$%6701C�@
� 
9�6
4
observation%�"
observation���������?"G�D
B
tf.math.subtract_7,�)
tf.math.subtract_7����������
F__inference_val_0_3_layer_call_and_return_conditional_losses_263226266]0�-
&�#
!�
inputs����������
� "%�"
�
0���������@
� 
+__inference_val_0_3_layer_call_fn_263226277P0�-
&�#
!�
inputs����������
� "����������@�
F__inference_val_1_3_layer_call_and_return_conditional_losses_263226310\$%/�,
%�"
 �
inputs���������@
� "%�"
�
0��������� 
� ~
+__inference_val_1_3_layer_call_fn_263226321O$%/�,
%�"
 �
inputs���������@
� "���������� �
F__inference_val_2_3_layer_call_and_return_conditional_losses_263226353\01/�,
%�"
 �
inputs��������� 
� "%�"
�
0���������
� ~
+__inference_val_2_3_layer_call_fn_263226363O01/�,
%�"
 �
inputs��������� 
� "����������