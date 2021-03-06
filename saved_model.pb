??
??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
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
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%??8"&
exponential_avg_factorfloat%  ??";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
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
delete_old_dirsbool(?
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
dtypetype?
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
?
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
executor_typestring ??
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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68??
?
conv2d_68/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_68/kernel
}
$conv2d_68/kernel/Read/ReadVariableOpReadVariableOpconv2d_68/kernel*&
_output_shapes
:*
dtype0
t
conv2d_68/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_68/bias
m
"conv2d_68/bias/Read/ReadVariableOpReadVariableOpconv2d_68/bias*
_output_shapes
:*
dtype0
?
batch_normalization_68/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_68/gamma
?
0batch_normalization_68/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_68/gamma*
_output_shapes
:*
dtype0
?
batch_normalization_68/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_68/beta
?
/batch_normalization_68/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_68/beta*
_output_shapes
:*
dtype0
?
"batch_normalization_68/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_68/moving_mean
?
6batch_normalization_68/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_68/moving_mean*
_output_shapes
:*
dtype0
?
&batch_normalization_68/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_68/moving_variance
?
:batch_normalization_68/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_68/moving_variance*
_output_shapes
:*
dtype0
?
conv2d_69/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_69/kernel
}
$conv2d_69/kernel/Read/ReadVariableOpReadVariableOpconv2d_69/kernel*&
_output_shapes
:*
dtype0
t
conv2d_69/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_69/bias
m
"conv2d_69/bias/Read/ReadVariableOpReadVariableOpconv2d_69/bias*
_output_shapes
:*
dtype0
?
batch_normalization_69/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_69/gamma
?
0batch_normalization_69/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_69/gamma*
_output_shapes
:*
dtype0
?
batch_normalization_69/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_69/beta
?
/batch_normalization_69/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_69/beta*
_output_shapes
:*
dtype0
?
"batch_normalization_69/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_69/moving_mean
?
6batch_normalization_69/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_69/moving_mean*
_output_shapes
:*
dtype0
?
&batch_normalization_69/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_69/moving_variance
?
:batch_normalization_69/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_69/moving_variance*
_output_shapes
:*
dtype0
?
conv2d_70/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_70/kernel
}
$conv2d_70/kernel/Read/ReadVariableOpReadVariableOpconv2d_70/kernel*&
_output_shapes
:*
dtype0
t
conv2d_70/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_70/bias
m
"conv2d_70/bias/Read/ReadVariableOpReadVariableOpconv2d_70/bias*
_output_shapes
:*
dtype0
?
batch_normalization_70/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_70/gamma
?
0batch_normalization_70/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_70/gamma*
_output_shapes
:*
dtype0
?
batch_normalization_70/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_70/beta
?
/batch_normalization_70/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_70/beta*
_output_shapes
:*
dtype0
?
"batch_normalization_70/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_70/moving_mean
?
6batch_normalization_70/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_70/moving_mean*
_output_shapes
:*
dtype0
?
&batch_normalization_70/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_70/moving_variance
?
:batch_normalization_70/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_70/moving_variance*
_output_shapes
:*
dtype0
?
conv2d_71/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_71/kernel
}
$conv2d_71/kernel/Read/ReadVariableOpReadVariableOpconv2d_71/kernel*&
_output_shapes
:*
dtype0
t
conv2d_71/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_71/bias
m
"conv2d_71/bias/Read/ReadVariableOpReadVariableOpconv2d_71/bias*
_output_shapes
:*
dtype0
?
batch_normalization_71/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_71/gamma
?
0batch_normalization_71/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_71/gamma*
_output_shapes
:*
dtype0
?
batch_normalization_71/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_71/beta
?
/batch_normalization_71/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_71/beta*
_output_shapes
:*
dtype0
?
"batch_normalization_71/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_71/moving_mean
?
6batch_normalization_71/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_71/moving_mean*
_output_shapes
:*
dtype0
?
&batch_normalization_71/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_71/moving_variance
?
:batch_normalization_71/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_71/moving_variance*
_output_shapes
:*
dtype0
{
dense_68/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	? * 
shared_namedense_68/kernel
t
#dense_68/kernel/Read/ReadVariableOpReadVariableOpdense_68/kernel*
_output_shapes
:	? *
dtype0
r
dense_68/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_68/bias
k
!dense_68/bias/Read/ReadVariableOpReadVariableOpdense_68/bias*
_output_shapes
: *
dtype0
z
dense_69/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_69/kernel
s
#dense_69/kernel/Read/ReadVariableOpReadVariableOpdense_69/kernel*
_output_shapes

: *
dtype0
r
dense_69/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_69/bias
k
!dense_69/bias/Read/ReadVariableOpReadVariableOpdense_69/bias*
_output_shapes
:*
dtype0
z
dense_70/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_70/kernel
s
#dense_70/kernel/Read/ReadVariableOpReadVariableOpdense_70/kernel*
_output_shapes

:*
dtype0
r
dense_70/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_70/bias
k
!dense_70/bias/Read/ReadVariableOpReadVariableOpdense_70/bias*
_output_shapes
:*
dtype0
z
dense_71/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_71/kernel
s
#dense_71/kernel/Read/ReadVariableOpReadVariableOpdense_71/kernel*
_output_shapes

:*
dtype0
r
dense_71/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_71/bias
k
!dense_71/bias/Read/ReadVariableOpReadVariableOpdense_71/bias*
_output_shapes
:*
dtype0
l
RMSprop/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameRMSprop/iter
e
 RMSprop/iter/Read/ReadVariableOpReadVariableOpRMSprop/iter*
_output_shapes
: *
dtype0	
n
RMSprop/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/decay
g
!RMSprop/decay/Read/ReadVariableOpReadVariableOpRMSprop/decay*
_output_shapes
: *
dtype0
~
RMSprop/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameRMSprop/learning_rate
w
)RMSprop/learning_rate/Read/ReadVariableOpReadVariableOpRMSprop/learning_rate*
_output_shapes
: *
dtype0
t
RMSprop/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameRMSprop/momentum
m
$RMSprop/momentum/Read/ReadVariableOpReadVariableOpRMSprop/momentum*
_output_shapes
: *
dtype0
j
RMSprop/rhoVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/rho
c
RMSprop/rho/Read/ReadVariableOpReadVariableOpRMSprop/rho*
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
?
RMSprop/conv2d_68/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameRMSprop/conv2d_68/kernel/rms
?
0RMSprop/conv2d_68/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_68/kernel/rms*&
_output_shapes
:*
dtype0
?
RMSprop/conv2d_68/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameRMSprop/conv2d_68/bias/rms
?
.RMSprop/conv2d_68/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_68/bias/rms*
_output_shapes
:*
dtype0
?
(RMSprop/batch_normalization_68/gamma/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*9
shared_name*(RMSprop/batch_normalization_68/gamma/rms
?
<RMSprop/batch_normalization_68/gamma/rms/Read/ReadVariableOpReadVariableOp(RMSprop/batch_normalization_68/gamma/rms*
_output_shapes
:*
dtype0
?
'RMSprop/batch_normalization_68/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'RMSprop/batch_normalization_68/beta/rms
?
;RMSprop/batch_normalization_68/beta/rms/Read/ReadVariableOpReadVariableOp'RMSprop/batch_normalization_68/beta/rms*
_output_shapes
:*
dtype0
?
RMSprop/conv2d_69/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameRMSprop/conv2d_69/kernel/rms
?
0RMSprop/conv2d_69/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_69/kernel/rms*&
_output_shapes
:*
dtype0
?
RMSprop/conv2d_69/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameRMSprop/conv2d_69/bias/rms
?
.RMSprop/conv2d_69/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_69/bias/rms*
_output_shapes
:*
dtype0
?
(RMSprop/batch_normalization_69/gamma/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*9
shared_name*(RMSprop/batch_normalization_69/gamma/rms
?
<RMSprop/batch_normalization_69/gamma/rms/Read/ReadVariableOpReadVariableOp(RMSprop/batch_normalization_69/gamma/rms*
_output_shapes
:*
dtype0
?
'RMSprop/batch_normalization_69/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'RMSprop/batch_normalization_69/beta/rms
?
;RMSprop/batch_normalization_69/beta/rms/Read/ReadVariableOpReadVariableOp'RMSprop/batch_normalization_69/beta/rms*
_output_shapes
:*
dtype0
?
RMSprop/conv2d_70/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameRMSprop/conv2d_70/kernel/rms
?
0RMSprop/conv2d_70/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_70/kernel/rms*&
_output_shapes
:*
dtype0
?
RMSprop/conv2d_70/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameRMSprop/conv2d_70/bias/rms
?
.RMSprop/conv2d_70/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_70/bias/rms*
_output_shapes
:*
dtype0
?
(RMSprop/batch_normalization_70/gamma/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*9
shared_name*(RMSprop/batch_normalization_70/gamma/rms
?
<RMSprop/batch_normalization_70/gamma/rms/Read/ReadVariableOpReadVariableOp(RMSprop/batch_normalization_70/gamma/rms*
_output_shapes
:*
dtype0
?
'RMSprop/batch_normalization_70/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'RMSprop/batch_normalization_70/beta/rms
?
;RMSprop/batch_normalization_70/beta/rms/Read/ReadVariableOpReadVariableOp'RMSprop/batch_normalization_70/beta/rms*
_output_shapes
:*
dtype0
?
RMSprop/conv2d_71/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameRMSprop/conv2d_71/kernel/rms
?
0RMSprop/conv2d_71/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_71/kernel/rms*&
_output_shapes
:*
dtype0
?
RMSprop/conv2d_71/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameRMSprop/conv2d_71/bias/rms
?
.RMSprop/conv2d_71/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_71/bias/rms*
_output_shapes
:*
dtype0
?
(RMSprop/batch_normalization_71/gamma/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*9
shared_name*(RMSprop/batch_normalization_71/gamma/rms
?
<RMSprop/batch_normalization_71/gamma/rms/Read/ReadVariableOpReadVariableOp(RMSprop/batch_normalization_71/gamma/rms*
_output_shapes
:*
dtype0
?
'RMSprop/batch_normalization_71/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'RMSprop/batch_normalization_71/beta/rms
?
;RMSprop/batch_normalization_71/beta/rms/Read/ReadVariableOpReadVariableOp'RMSprop/batch_normalization_71/beta/rms*
_output_shapes
:*
dtype0
?
RMSprop/dense_68/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	? *,
shared_nameRMSprop/dense_68/kernel/rms
?
/RMSprop/dense_68/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_68/kernel/rms*
_output_shapes
:	? *
dtype0
?
RMSprop/dense_68/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_nameRMSprop/dense_68/bias/rms
?
-RMSprop/dense_68/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_68/bias/rms*
_output_shapes
: *
dtype0
?
RMSprop/dense_69/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *,
shared_nameRMSprop/dense_69/kernel/rms
?
/RMSprop/dense_69/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_69/kernel/rms*
_output_shapes

: *
dtype0
?
RMSprop/dense_69/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameRMSprop/dense_69/bias/rms
?
-RMSprop/dense_69/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_69/bias/rms*
_output_shapes
:*
dtype0
?
RMSprop/dense_70/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*,
shared_nameRMSprop/dense_70/kernel/rms
?
/RMSprop/dense_70/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_70/kernel/rms*
_output_shapes

:*
dtype0
?
RMSprop/dense_70/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameRMSprop/dense_70/bias/rms
?
-RMSprop/dense_70/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_70/bias/rms*
_output_shapes
:*
dtype0
?
RMSprop/dense_71/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*,
shared_nameRMSprop/dense_71/kernel/rms
?
/RMSprop/dense_71/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_71/kernel/rms*
_output_shapes

:*
dtype0
?
RMSprop/dense_71/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameRMSprop/dense_71/bias/rms
?
-RMSprop/dense_71/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_71/bias/rms*
_output_shapes
:*
dtype0

NoOpNoOp
??
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*??
value??B?? B??
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer-8

layer_with_weights-6

layer-9
layer_with_weights-7
layer-10
layer-11
layer-12
layer_with_weights-8
layer-13
layer-14
layer_with_weights-9
layer-15
layer-16
layer_with_weights-10
layer-17
layer-18
layer_with_weights-11
layer-19
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
?

kernel
bias
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses*
?
&axis
	'gamma
(beta
)moving_mean
*moving_variance
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses*
?
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5_random_generator
6__call__
*7&call_and_return_all_conditional_losses* 
?

8kernel
9bias
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses*
?
@axis
	Agamma
Bbeta
Cmoving_mean
Dmoving_variance
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses*
?
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O_random_generator
P__call__
*Q&call_and_return_all_conditional_losses* 
?

Rkernel
Sbias
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses*
?
Zaxis
	[gamma
\beta
]moving_mean
^moving_variance
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses*
?
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i_random_generator
j__call__
*k&call_and_return_all_conditional_losses* 
?

lkernel
mbias
n	variables
otrainable_variables
pregularization_losses
q	keras_api
r__call__
*s&call_and_return_all_conditional_losses*
?
taxis
	ugamma
vbeta
wmoving_mean
xmoving_variance
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
}__call__
*~&call_and_return_all_conditional_losses*
?
	variables
?trainable_variables
?regularization_losses
?	keras_api
?_random_generator
?__call__
+?&call_and_return_all_conditional_losses* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?_random_generator
?__call__
+?&call_and_return_all_conditional_losses* 
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?_random_generator
?__call__
+?&call_and_return_all_conditional_losses* 
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?_random_generator
?__call__
+?&call_and_return_all_conditional_losses* 
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
	?iter

?decay
?learning_rate
?momentum
?rho
rms?
rms?
'rms?
(rms?
8rms?
9rms?
Arms?
Brms?
Rrms?
Srms?
[rms?
\rms?
lrms?
mrms?
urms?
vrms??rms??rms??rms??rms??rms??rms??rms??rms?*
?
0
1
'2
(3
)4
*5
86
97
A8
B9
C10
D11
R12
S13
[14
\15
]16
^17
l18
m19
u20
v21
w22
x23
?24
?25
?26
?27
?28
?29
?30
?31*
?
0
1
'2
(3
84
95
A6
B7
R8
S9
[10
\11
l12
m13
u14
v15
?16
?17
?18
?19
?20
?21
?22
?23*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

?serving_default* 
`Z
VARIABLE_VALUEconv2d_68/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_68/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses*
* 
* 
* 
ke
VARIABLE_VALUEbatch_normalization_68/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_68/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_68/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_68/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
 
'0
(1
)2
*3*

'0
(1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
1	variables
2trainable_variables
3regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses* 
* 
* 
* 
`Z
VARIABLE_VALUEconv2d_69/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_69/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

80
91*

80
91*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses*
* 
* 
* 
ke
VARIABLE_VALUEbatch_normalization_69/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_69/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_69/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_69/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
 
A0
B1
C2
D3*

A0
B1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses* 
* 
* 
* 
`Z
VARIABLE_VALUEconv2d_70/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_70/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

R0
S1*

R0
S1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses*
* 
* 
* 
ke
VARIABLE_VALUEbatch_normalization_70/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_70/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_70/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_70/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
 
[0
\1
]2
^3*

[0
\1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
e	variables
ftrainable_variables
gregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses* 
* 
* 
* 
`Z
VARIABLE_VALUEconv2d_71/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_71/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*

l0
m1*

l0
m1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
n	variables
otrainable_variables
pregularization_losses
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses*
* 
* 
* 
ke
VARIABLE_VALUEbatch_normalization_71/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_71/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_71/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_71/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
 
u0
v1
w2
x3*

u0
v1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
y	variables
ztrainable_variables
{regularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
_Y
VARIABLE_VALUEdense_68/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_68/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
* 
_Y
VARIABLE_VALUEdense_69/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_69/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
* 
`Z
VARIABLE_VALUEdense_70/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_70/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
* 
`Z
VARIABLE_VALUEdense_71/kernel7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_71/bias5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
OI
VARIABLE_VALUERMSprop/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUERMSprop/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUERMSprop/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUERMSprop/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUERMSprop/rho(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUE*
<
)0
*1
C2
D3
]4
^5
w6
x7*
?
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
11
12
13
14
15
16
17
18
19*

?0
?1*
* 
* 
* 
* 
* 
* 
* 
* 

)0
*1*
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

C0
D1*
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

]0
^1*
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

w0
x1*
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
* 
* 
* 
* 
* 
* 
* 
<

?total

?count
?	variables
?	keras_api*
M

?total

?count
?
_fn_kwargs
?	variables
?	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

?0
?1*

?	variables*
??
VARIABLE_VALUERMSprop/conv2d_68/kernel/rmsTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUERMSprop/conv2d_68/bias/rmsRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE(RMSprop/batch_normalization_68/gamma/rmsSlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE'RMSprop/batch_normalization_68/beta/rmsRlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUERMSprop/conv2d_69/kernel/rmsTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUERMSprop/conv2d_69/bias/rmsRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE(RMSprop/batch_normalization_69/gamma/rmsSlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE'RMSprop/batch_normalization_69/beta/rmsRlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUERMSprop/conv2d_70/kernel/rmsTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUERMSprop/conv2d_70/bias/rmsRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE(RMSprop/batch_normalization_70/gamma/rmsSlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE'RMSprop/batch_normalization_70/beta/rmsRlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUERMSprop/conv2d_71/kernel/rmsTlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUERMSprop/conv2d_71/bias/rmsRlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE(RMSprop/batch_normalization_71/gamma/rmsSlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE'RMSprop/batch_normalization_71/beta/rmsRlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUERMSprop/dense_68/kernel/rmsTlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
?
VARIABLE_VALUERMSprop/dense_68/bias/rmsRlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUERMSprop/dense_69/kernel/rmsTlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
?
VARIABLE_VALUERMSprop/dense_69/bias/rmsRlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUERMSprop/dense_70/kernel/rmsUlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUERMSprop/dense_70/bias/rmsSlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUERMSprop/dense_71/kernel/rmsUlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUERMSprop/dense_71/bias/rmsSlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
?
serving_default_conv2d_68_inputPlaceholder*0
_output_shapes
:?????????x?*
dtype0*%
shape:?????????x?
?	
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_68_inputconv2d_68/kernelconv2d_68/biasbatch_normalization_68/gammabatch_normalization_68/beta"batch_normalization_68/moving_mean&batch_normalization_68/moving_varianceconv2d_69/kernelconv2d_69/biasbatch_normalization_69/gammabatch_normalization_69/beta"batch_normalization_69/moving_mean&batch_normalization_69/moving_varianceconv2d_70/kernelconv2d_70/biasbatch_normalization_70/gammabatch_normalization_70/beta"batch_normalization_70/moving_mean&batch_normalization_70/moving_varianceconv2d_71/kernelconv2d_71/biasbatch_normalization_71/gammabatch_normalization_71/beta"batch_normalization_71/moving_mean&batch_normalization_71/moving_variancedense_68/kerneldense_68/biasdense_69/kerneldense_69/biasdense_70/kerneldense_70/biasdense_71/kerneldense_71/bias*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_329882
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_68/kernel/Read/ReadVariableOp"conv2d_68/bias/Read/ReadVariableOp0batch_normalization_68/gamma/Read/ReadVariableOp/batch_normalization_68/beta/Read/ReadVariableOp6batch_normalization_68/moving_mean/Read/ReadVariableOp:batch_normalization_68/moving_variance/Read/ReadVariableOp$conv2d_69/kernel/Read/ReadVariableOp"conv2d_69/bias/Read/ReadVariableOp0batch_normalization_69/gamma/Read/ReadVariableOp/batch_normalization_69/beta/Read/ReadVariableOp6batch_normalization_69/moving_mean/Read/ReadVariableOp:batch_normalization_69/moving_variance/Read/ReadVariableOp$conv2d_70/kernel/Read/ReadVariableOp"conv2d_70/bias/Read/ReadVariableOp0batch_normalization_70/gamma/Read/ReadVariableOp/batch_normalization_70/beta/Read/ReadVariableOp6batch_normalization_70/moving_mean/Read/ReadVariableOp:batch_normalization_70/moving_variance/Read/ReadVariableOp$conv2d_71/kernel/Read/ReadVariableOp"conv2d_71/bias/Read/ReadVariableOp0batch_normalization_71/gamma/Read/ReadVariableOp/batch_normalization_71/beta/Read/ReadVariableOp6batch_normalization_71/moving_mean/Read/ReadVariableOp:batch_normalization_71/moving_variance/Read/ReadVariableOp#dense_68/kernel/Read/ReadVariableOp!dense_68/bias/Read/ReadVariableOp#dense_69/kernel/Read/ReadVariableOp!dense_69/bias/Read/ReadVariableOp#dense_70/kernel/Read/ReadVariableOp!dense_70/bias/Read/ReadVariableOp#dense_71/kernel/Read/ReadVariableOp!dense_71/bias/Read/ReadVariableOp RMSprop/iter/Read/ReadVariableOp!RMSprop/decay/Read/ReadVariableOp)RMSprop/learning_rate/Read/ReadVariableOp$RMSprop/momentum/Read/ReadVariableOpRMSprop/rho/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp0RMSprop/conv2d_68/kernel/rms/Read/ReadVariableOp.RMSprop/conv2d_68/bias/rms/Read/ReadVariableOp<RMSprop/batch_normalization_68/gamma/rms/Read/ReadVariableOp;RMSprop/batch_normalization_68/beta/rms/Read/ReadVariableOp0RMSprop/conv2d_69/kernel/rms/Read/ReadVariableOp.RMSprop/conv2d_69/bias/rms/Read/ReadVariableOp<RMSprop/batch_normalization_69/gamma/rms/Read/ReadVariableOp;RMSprop/batch_normalization_69/beta/rms/Read/ReadVariableOp0RMSprop/conv2d_70/kernel/rms/Read/ReadVariableOp.RMSprop/conv2d_70/bias/rms/Read/ReadVariableOp<RMSprop/batch_normalization_70/gamma/rms/Read/ReadVariableOp;RMSprop/batch_normalization_70/beta/rms/Read/ReadVariableOp0RMSprop/conv2d_71/kernel/rms/Read/ReadVariableOp.RMSprop/conv2d_71/bias/rms/Read/ReadVariableOp<RMSprop/batch_normalization_71/gamma/rms/Read/ReadVariableOp;RMSprop/batch_normalization_71/beta/rms/Read/ReadVariableOp/RMSprop/dense_68/kernel/rms/Read/ReadVariableOp-RMSprop/dense_68/bias/rms/Read/ReadVariableOp/RMSprop/dense_69/kernel/rms/Read/ReadVariableOp-RMSprop/dense_69/bias/rms/Read/ReadVariableOp/RMSprop/dense_70/kernel/rms/Read/ReadVariableOp-RMSprop/dense_70/bias/rms/Read/ReadVariableOp/RMSprop/dense_71/kernel/rms/Read/ReadVariableOp-RMSprop/dense_71/bias/rms/Read/ReadVariableOpConst*N
TinG
E2C	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference__traced_save_330708
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_68/kernelconv2d_68/biasbatch_normalization_68/gammabatch_normalization_68/beta"batch_normalization_68/moving_mean&batch_normalization_68/moving_varianceconv2d_69/kernelconv2d_69/biasbatch_normalization_69/gammabatch_normalization_69/beta"batch_normalization_69/moving_mean&batch_normalization_69/moving_varianceconv2d_70/kernelconv2d_70/biasbatch_normalization_70/gammabatch_normalization_70/beta"batch_normalization_70/moving_mean&batch_normalization_70/moving_varianceconv2d_71/kernelconv2d_71/biasbatch_normalization_71/gammabatch_normalization_71/beta"batch_normalization_71/moving_mean&batch_normalization_71/moving_variancedense_68/kerneldense_68/biasdense_69/kerneldense_69/biasdense_70/kerneldense_70/biasdense_71/kerneldense_71/biasRMSprop/iterRMSprop/decayRMSprop/learning_rateRMSprop/momentumRMSprop/rhototalcounttotal_1count_1RMSprop/conv2d_68/kernel/rmsRMSprop/conv2d_68/bias/rms(RMSprop/batch_normalization_68/gamma/rms'RMSprop/batch_normalization_68/beta/rmsRMSprop/conv2d_69/kernel/rmsRMSprop/conv2d_69/bias/rms(RMSprop/batch_normalization_69/gamma/rms'RMSprop/batch_normalization_69/beta/rmsRMSprop/conv2d_70/kernel/rmsRMSprop/conv2d_70/bias/rms(RMSprop/batch_normalization_70/gamma/rms'RMSprop/batch_normalization_70/beta/rmsRMSprop/conv2d_71/kernel/rmsRMSprop/conv2d_71/bias/rms(RMSprop/batch_normalization_71/gamma/rms'RMSprop/batch_normalization_71/beta/rmsRMSprop/dense_68/kernel/rmsRMSprop/dense_68/bias/rmsRMSprop/dense_69/kernel/rmsRMSprop/dense_69/bias/rmsRMSprop/dense_70/kernel/rmsRMSprop/dense_70/bias/rmsRMSprop/dense_71/kernel/rmsRMSprop/dense_71/bias/rms*M
TinF
D2B*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__traced_restore_330913©
?
e
G__inference_dropout_122_layer_call_and_return_conditional_losses_330306

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????
c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????
"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????
:W S
/
_output_shapes
:?????????

 
_user_specified_nameinputs
?
e
G__inference_dropout_123_layer_call_and_return_conditional_losses_330364

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:????????? [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:????????? "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?	
?
7__inference_batch_normalization_69_layer_call_fn_330037

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_69_layer_call_and_return_conditional_losses_328207?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
e
G__inference_dropout_124_layer_call_and_return_conditional_losses_330411

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
__inference__traced_save_330708
file_prefix/
+savev2_conv2d_68_kernel_read_readvariableop-
)savev2_conv2d_68_bias_read_readvariableop;
7savev2_batch_normalization_68_gamma_read_readvariableop:
6savev2_batch_normalization_68_beta_read_readvariableopA
=savev2_batch_normalization_68_moving_mean_read_readvariableopE
Asavev2_batch_normalization_68_moving_variance_read_readvariableop/
+savev2_conv2d_69_kernel_read_readvariableop-
)savev2_conv2d_69_bias_read_readvariableop;
7savev2_batch_normalization_69_gamma_read_readvariableop:
6savev2_batch_normalization_69_beta_read_readvariableopA
=savev2_batch_normalization_69_moving_mean_read_readvariableopE
Asavev2_batch_normalization_69_moving_variance_read_readvariableop/
+savev2_conv2d_70_kernel_read_readvariableop-
)savev2_conv2d_70_bias_read_readvariableop;
7savev2_batch_normalization_70_gamma_read_readvariableop:
6savev2_batch_normalization_70_beta_read_readvariableopA
=savev2_batch_normalization_70_moving_mean_read_readvariableopE
Asavev2_batch_normalization_70_moving_variance_read_readvariableop/
+savev2_conv2d_71_kernel_read_readvariableop-
)savev2_conv2d_71_bias_read_readvariableop;
7savev2_batch_normalization_71_gamma_read_readvariableop:
6savev2_batch_normalization_71_beta_read_readvariableopA
=savev2_batch_normalization_71_moving_mean_read_readvariableopE
Asavev2_batch_normalization_71_moving_variance_read_readvariableop.
*savev2_dense_68_kernel_read_readvariableop,
(savev2_dense_68_bias_read_readvariableop.
*savev2_dense_69_kernel_read_readvariableop,
(savev2_dense_69_bias_read_readvariableop.
*savev2_dense_70_kernel_read_readvariableop,
(savev2_dense_70_bias_read_readvariableop.
*savev2_dense_71_kernel_read_readvariableop,
(savev2_dense_71_bias_read_readvariableop+
'savev2_rmsprop_iter_read_readvariableop	,
(savev2_rmsprop_decay_read_readvariableop4
0savev2_rmsprop_learning_rate_read_readvariableop/
+savev2_rmsprop_momentum_read_readvariableop*
&savev2_rmsprop_rho_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop;
7savev2_rmsprop_conv2d_68_kernel_rms_read_readvariableop9
5savev2_rmsprop_conv2d_68_bias_rms_read_readvariableopG
Csavev2_rmsprop_batch_normalization_68_gamma_rms_read_readvariableopF
Bsavev2_rmsprop_batch_normalization_68_beta_rms_read_readvariableop;
7savev2_rmsprop_conv2d_69_kernel_rms_read_readvariableop9
5savev2_rmsprop_conv2d_69_bias_rms_read_readvariableopG
Csavev2_rmsprop_batch_normalization_69_gamma_rms_read_readvariableopF
Bsavev2_rmsprop_batch_normalization_69_beta_rms_read_readvariableop;
7savev2_rmsprop_conv2d_70_kernel_rms_read_readvariableop9
5savev2_rmsprop_conv2d_70_bias_rms_read_readvariableopG
Csavev2_rmsprop_batch_normalization_70_gamma_rms_read_readvariableopF
Bsavev2_rmsprop_batch_normalization_70_beta_rms_read_readvariableop;
7savev2_rmsprop_conv2d_71_kernel_rms_read_readvariableop9
5savev2_rmsprop_conv2d_71_bias_rms_read_readvariableopG
Csavev2_rmsprop_batch_normalization_71_gamma_rms_read_readvariableopF
Bsavev2_rmsprop_batch_normalization_71_beta_rms_read_readvariableop:
6savev2_rmsprop_dense_68_kernel_rms_read_readvariableop8
4savev2_rmsprop_dense_68_bias_rms_read_readvariableop:
6savev2_rmsprop_dense_69_kernel_rms_read_readvariableop8
4savev2_rmsprop_dense_69_bias_rms_read_readvariableop:
6savev2_rmsprop_dense_70_kernel_rms_read_readvariableop8
4savev2_rmsprop_dense_70_bias_rms_read_readvariableop:
6savev2_rmsprop_dense_71_kernel_rms_read_readvariableop8
4savev2_rmsprop_dense_71_bias_rms_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
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
_temp/part?
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
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?"
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:B*
dtype0*?"
value?!B?!BB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:B*
dtype0*?
value?B?BB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_68_kernel_read_readvariableop)savev2_conv2d_68_bias_read_readvariableop7savev2_batch_normalization_68_gamma_read_readvariableop6savev2_batch_normalization_68_beta_read_readvariableop=savev2_batch_normalization_68_moving_mean_read_readvariableopAsavev2_batch_normalization_68_moving_variance_read_readvariableop+savev2_conv2d_69_kernel_read_readvariableop)savev2_conv2d_69_bias_read_readvariableop7savev2_batch_normalization_69_gamma_read_readvariableop6savev2_batch_normalization_69_beta_read_readvariableop=savev2_batch_normalization_69_moving_mean_read_readvariableopAsavev2_batch_normalization_69_moving_variance_read_readvariableop+savev2_conv2d_70_kernel_read_readvariableop)savev2_conv2d_70_bias_read_readvariableop7savev2_batch_normalization_70_gamma_read_readvariableop6savev2_batch_normalization_70_beta_read_readvariableop=savev2_batch_normalization_70_moving_mean_read_readvariableopAsavev2_batch_normalization_70_moving_variance_read_readvariableop+savev2_conv2d_71_kernel_read_readvariableop)savev2_conv2d_71_bias_read_readvariableop7savev2_batch_normalization_71_gamma_read_readvariableop6savev2_batch_normalization_71_beta_read_readvariableop=savev2_batch_normalization_71_moving_mean_read_readvariableopAsavev2_batch_normalization_71_moving_variance_read_readvariableop*savev2_dense_68_kernel_read_readvariableop(savev2_dense_68_bias_read_readvariableop*savev2_dense_69_kernel_read_readvariableop(savev2_dense_69_bias_read_readvariableop*savev2_dense_70_kernel_read_readvariableop(savev2_dense_70_bias_read_readvariableop*savev2_dense_71_kernel_read_readvariableop(savev2_dense_71_bias_read_readvariableop'savev2_rmsprop_iter_read_readvariableop(savev2_rmsprop_decay_read_readvariableop0savev2_rmsprop_learning_rate_read_readvariableop+savev2_rmsprop_momentum_read_readvariableop&savev2_rmsprop_rho_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop7savev2_rmsprop_conv2d_68_kernel_rms_read_readvariableop5savev2_rmsprop_conv2d_68_bias_rms_read_readvariableopCsavev2_rmsprop_batch_normalization_68_gamma_rms_read_readvariableopBsavev2_rmsprop_batch_normalization_68_beta_rms_read_readvariableop7savev2_rmsprop_conv2d_69_kernel_rms_read_readvariableop5savev2_rmsprop_conv2d_69_bias_rms_read_readvariableopCsavev2_rmsprop_batch_normalization_69_gamma_rms_read_readvariableopBsavev2_rmsprop_batch_normalization_69_beta_rms_read_readvariableop7savev2_rmsprop_conv2d_70_kernel_rms_read_readvariableop5savev2_rmsprop_conv2d_70_bias_rms_read_readvariableopCsavev2_rmsprop_batch_normalization_70_gamma_rms_read_readvariableopBsavev2_rmsprop_batch_normalization_70_beta_rms_read_readvariableop7savev2_rmsprop_conv2d_71_kernel_rms_read_readvariableop5savev2_rmsprop_conv2d_71_bias_rms_read_readvariableopCsavev2_rmsprop_batch_normalization_71_gamma_rms_read_readvariableopBsavev2_rmsprop_batch_normalization_71_beta_rms_read_readvariableop6savev2_rmsprop_dense_68_kernel_rms_read_readvariableop4savev2_rmsprop_dense_68_bias_rms_read_readvariableop6savev2_rmsprop_dense_69_kernel_rms_read_readvariableop4savev2_rmsprop_dense_69_bias_rms_read_readvariableop6savev2_rmsprop_dense_70_kernel_rms_read_readvariableop4savev2_rmsprop_dense_70_bias_rms_read_readvariableop6savev2_rmsprop_dense_71_kernel_rms_read_readvariableop4savev2_rmsprop_dense_71_bias_rms_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *P
dtypesF
D2B	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
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

identity_1Identity_1:output:0*?
_input_shapes?
?: :::::::::::::::::::::::::	? : : :::::: : : : : : : : : :::::::::::::::::	? : : :::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
:: 	

_output_shapes
:: 


_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::%!

_output_shapes
:	? : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

::  

_output_shapes
::!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: :,*(
&
_output_shapes
:: +

_output_shapes
:: ,

_output_shapes
:: -

_output_shapes
::,.(
&
_output_shapes
:: /

_output_shapes
:: 0

_output_shapes
:: 1

_output_shapes
::,2(
&
_output_shapes
:: 3

_output_shapes
:: 4

_output_shapes
:: 5

_output_shapes
::,6(
&
_output_shapes
:: 7

_output_shapes
:: 8

_output_shapes
:: 9

_output_shapes
::%:!

_output_shapes
:	? : ;

_output_shapes
: :$< 

_output_shapes

: : =

_output_shapes
::$> 

_output_shapes

:: ?

_output_shapes
::$@ 

_output_shapes

:: A

_output_shapes
::B

_output_shapes
: 
??
?
I__inference_sequential_17_layer_call_and_return_conditional_losses_329637

inputsB
(conv2d_68_conv2d_readvariableop_resource:7
)conv2d_68_biasadd_readvariableop_resource:<
.batch_normalization_68_readvariableop_resource:>
0batch_normalization_68_readvariableop_1_resource:M
?batch_normalization_68_fusedbatchnormv3_readvariableop_resource:O
Abatch_normalization_68_fusedbatchnormv3_readvariableop_1_resource:B
(conv2d_69_conv2d_readvariableop_resource:7
)conv2d_69_biasadd_readvariableop_resource:<
.batch_normalization_69_readvariableop_resource:>
0batch_normalization_69_readvariableop_1_resource:M
?batch_normalization_69_fusedbatchnormv3_readvariableop_resource:O
Abatch_normalization_69_fusedbatchnormv3_readvariableop_1_resource:B
(conv2d_70_conv2d_readvariableop_resource:7
)conv2d_70_biasadd_readvariableop_resource:<
.batch_normalization_70_readvariableop_resource:>
0batch_normalization_70_readvariableop_1_resource:M
?batch_normalization_70_fusedbatchnormv3_readvariableop_resource:O
Abatch_normalization_70_fusedbatchnormv3_readvariableop_1_resource:B
(conv2d_71_conv2d_readvariableop_resource:7
)conv2d_71_biasadd_readvariableop_resource:<
.batch_normalization_71_readvariableop_resource:>
0batch_normalization_71_readvariableop_1_resource:M
?batch_normalization_71_fusedbatchnormv3_readvariableop_resource:O
Abatch_normalization_71_fusedbatchnormv3_readvariableop_1_resource::
'dense_68_matmul_readvariableop_resource:	? 6
(dense_68_biasadd_readvariableop_resource: 9
'dense_69_matmul_readvariableop_resource: 6
(dense_69_biasadd_readvariableop_resource:9
'dense_70_matmul_readvariableop_resource:6
(dense_70_biasadd_readvariableop_resource:9
'dense_71_matmul_readvariableop_resource:6
(dense_71_biasadd_readvariableop_resource:
identity??6batch_normalization_68/FusedBatchNormV3/ReadVariableOp?8batch_normalization_68/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_68/ReadVariableOp?'batch_normalization_68/ReadVariableOp_1?6batch_normalization_69/FusedBatchNormV3/ReadVariableOp?8batch_normalization_69/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_69/ReadVariableOp?'batch_normalization_69/ReadVariableOp_1?6batch_normalization_70/FusedBatchNormV3/ReadVariableOp?8batch_normalization_70/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_70/ReadVariableOp?'batch_normalization_70/ReadVariableOp_1?6batch_normalization_71/FusedBatchNormV3/ReadVariableOp?8batch_normalization_71/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_71/ReadVariableOp?'batch_normalization_71/ReadVariableOp_1? conv2d_68/BiasAdd/ReadVariableOp?conv2d_68/Conv2D/ReadVariableOp? conv2d_69/BiasAdd/ReadVariableOp?conv2d_69/Conv2D/ReadVariableOp? conv2d_70/BiasAdd/ReadVariableOp?conv2d_70/Conv2D/ReadVariableOp? conv2d_71/BiasAdd/ReadVariableOp?conv2d_71/Conv2D/ReadVariableOp?dense_68/BiasAdd/ReadVariableOp?dense_68/MatMul/ReadVariableOp?dense_69/BiasAdd/ReadVariableOp?dense_69/MatMul/ReadVariableOp?dense_70/BiasAdd/ReadVariableOp?dense_70/MatMul/ReadVariableOp?dense_71/BiasAdd/ReadVariableOp?dense_71/MatMul/ReadVariableOp?
conv2d_68/Conv2D/ReadVariableOpReadVariableOp(conv2d_68_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_68/Conv2DConv2Dinputs'conv2d_68/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<P*
paddingSAME*
strides
?
 conv2d_68/BiasAdd/ReadVariableOpReadVariableOp)conv2d_68_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_68/BiasAddBiasAddconv2d_68/Conv2D:output:0(conv2d_68/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<Pl
conv2d_68/ReluReluconv2d_68/BiasAdd:output:0*
T0*/
_output_shapes
:?????????<P?
%batch_normalization_68/ReadVariableOpReadVariableOp.batch_normalization_68_readvariableop_resource*
_output_shapes
:*
dtype0?
'batch_normalization_68/ReadVariableOp_1ReadVariableOp0batch_normalization_68_readvariableop_1_resource*
_output_shapes
:*
dtype0?
6batch_normalization_68/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_68_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
8batch_normalization_68/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_68_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
'batch_normalization_68/FusedBatchNormV3FusedBatchNormV3conv2d_68/Relu:activations:0-batch_normalization_68/ReadVariableOp:value:0/batch_normalization_68/ReadVariableOp_1:value:0>batch_normalization_68/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_68/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????<P:::::*
epsilon%o?:*
is_training( ?
dropout_119/IdentityIdentity+batch_normalization_68/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????<P?
conv2d_69/Conv2D/ReadVariableOpReadVariableOp(conv2d_69_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_69/Conv2DConv2Ddropout_119/Identity:output:0'conv2d_69/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????(*
paddingSAME*
strides
?
 conv2d_69/BiasAdd/ReadVariableOpReadVariableOp)conv2d_69_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_69/BiasAddBiasAddconv2d_69/Conv2D:output:0(conv2d_69/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????(l
conv2d_69/ReluReluconv2d_69/BiasAdd:output:0*
T0*/
_output_shapes
:?????????(?
%batch_normalization_69/ReadVariableOpReadVariableOp.batch_normalization_69_readvariableop_resource*
_output_shapes
:*
dtype0?
'batch_normalization_69/ReadVariableOp_1ReadVariableOp0batch_normalization_69_readvariableop_1_resource*
_output_shapes
:*
dtype0?
6batch_normalization_69/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_69_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
8batch_normalization_69/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_69_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
'batch_normalization_69/FusedBatchNormV3FusedBatchNormV3conv2d_69/Relu:activations:0-batch_normalization_69/ReadVariableOp:value:0/batch_normalization_69/ReadVariableOp_1:value:0>batch_normalization_69/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_69/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????(:::::*
epsilon%o?:*
is_training( ?
dropout_120/IdentityIdentity+batch_normalization_69/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????(?
conv2d_70/Conv2D/ReadVariableOpReadVariableOp(conv2d_70_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_70/Conv2DConv2Ddropout_120/Identity:output:0'conv2d_70/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
?
 conv2d_70/BiasAdd/ReadVariableOpReadVariableOp)conv2d_70_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_70/BiasAddBiasAddconv2d_70/Conv2D:output:0(conv2d_70/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????l
conv2d_70/ReluReluconv2d_70/BiasAdd:output:0*
T0*/
_output_shapes
:??????????
%batch_normalization_70/ReadVariableOpReadVariableOp.batch_normalization_70_readvariableop_resource*
_output_shapes
:*
dtype0?
'batch_normalization_70/ReadVariableOp_1ReadVariableOp0batch_normalization_70_readvariableop_1_resource*
_output_shapes
:*
dtype0?
6batch_normalization_70/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_70_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
8batch_normalization_70/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_70_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
'batch_normalization_70/FusedBatchNormV3FusedBatchNormV3conv2d_70/Relu:activations:0-batch_normalization_70/ReadVariableOp:value:0/batch_normalization_70/ReadVariableOp_1:value:0>batch_normalization_70/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_70/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????:::::*
epsilon%o?:*
is_training( ?
dropout_121/IdentityIdentity+batch_normalization_70/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:??????????
conv2d_71/Conv2D/ReadVariableOpReadVariableOp(conv2d_71_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_71/Conv2DConv2Ddropout_121/Identity:output:0'conv2d_71/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????
*
paddingSAME*
strides
?
 conv2d_71/BiasAdd/ReadVariableOpReadVariableOp)conv2d_71_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_71/BiasAddBiasAddconv2d_71/Conv2D:output:0(conv2d_71/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????
l
conv2d_71/ReluReluconv2d_71/BiasAdd:output:0*
T0*/
_output_shapes
:?????????
?
%batch_normalization_71/ReadVariableOpReadVariableOp.batch_normalization_71_readvariableop_resource*
_output_shapes
:*
dtype0?
'batch_normalization_71/ReadVariableOp_1ReadVariableOp0batch_normalization_71_readvariableop_1_resource*
_output_shapes
:*
dtype0?
6batch_normalization_71/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_71_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
8batch_normalization_71/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_71_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
'batch_normalization_71/FusedBatchNormV3FusedBatchNormV3conv2d_71/Relu:activations:0-batch_normalization_71/ReadVariableOp:value:0/batch_normalization_71/ReadVariableOp_1:value:0>batch_normalization_71/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_71/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????
:::::*
epsilon%o?:*
is_training( ?
dropout_122/IdentityIdentity+batch_normalization_71/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????
a
flatten_17/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  ?
flatten_17/ReshapeReshapedropout_122/Identity:output:0flatten_17/Const:output:0*
T0*(
_output_shapes
:???????????
dense_68/MatMul/ReadVariableOpReadVariableOp'dense_68_matmul_readvariableop_resource*
_output_shapes
:	? *
dtype0?
dense_68/MatMulMatMulflatten_17/Reshape:output:0&dense_68/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
dense_68/BiasAdd/ReadVariableOpReadVariableOp(dense_68_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
dense_68/BiasAddBiasAdddense_68/MatMul:product:0'dense_68/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? b
dense_68/ReluReludense_68/BiasAdd:output:0*
T0*'
_output_shapes
:????????? o
dropout_123/IdentityIdentitydense_68/Relu:activations:0*
T0*'
_output_shapes
:????????? ?
dense_69/MatMul/ReadVariableOpReadVariableOp'dense_69_matmul_readvariableop_resource*
_output_shapes

: *
dtype0?
dense_69/MatMulMatMuldropout_123/Identity:output:0&dense_69/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_69/BiasAdd/ReadVariableOpReadVariableOp(dense_69_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_69/BiasAddBiasAdddense_69/MatMul:product:0'dense_69/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????b
dense_69/ReluReludense_69/BiasAdd:output:0*
T0*'
_output_shapes
:?????????o
dropout_124/IdentityIdentitydense_69/Relu:activations:0*
T0*'
_output_shapes
:??????????
dense_70/MatMul/ReadVariableOpReadVariableOp'dense_70_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_70/MatMulMatMuldropout_124/Identity:output:0&dense_70/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_70/BiasAdd/ReadVariableOpReadVariableOp(dense_70_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_70/BiasAddBiasAdddense_70/MatMul:product:0'dense_70/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????b
dense_70/ReluReludense_70/BiasAdd:output:0*
T0*'
_output_shapes
:?????????o
dropout_125/IdentityIdentitydense_70/Relu:activations:0*
T0*'
_output_shapes
:??????????
dense_71/MatMul/ReadVariableOpReadVariableOp'dense_71_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_71/MatMulMatMuldropout_125/Identity:output:0&dense_71/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_71/BiasAdd/ReadVariableOpReadVariableOp(dense_71_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_71/BiasAddBiasAdddense_71/MatMul:product:0'dense_71/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
dense_71/SoftmaxSoftmaxdense_71/BiasAdd:output:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_71/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????

NoOpNoOp7^batch_normalization_68/FusedBatchNormV3/ReadVariableOp9^batch_normalization_68/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_68/ReadVariableOp(^batch_normalization_68/ReadVariableOp_17^batch_normalization_69/FusedBatchNormV3/ReadVariableOp9^batch_normalization_69/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_69/ReadVariableOp(^batch_normalization_69/ReadVariableOp_17^batch_normalization_70/FusedBatchNormV3/ReadVariableOp9^batch_normalization_70/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_70/ReadVariableOp(^batch_normalization_70/ReadVariableOp_17^batch_normalization_71/FusedBatchNormV3/ReadVariableOp9^batch_normalization_71/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_71/ReadVariableOp(^batch_normalization_71/ReadVariableOp_1!^conv2d_68/BiasAdd/ReadVariableOp ^conv2d_68/Conv2D/ReadVariableOp!^conv2d_69/BiasAdd/ReadVariableOp ^conv2d_69/Conv2D/ReadVariableOp!^conv2d_70/BiasAdd/ReadVariableOp ^conv2d_70/Conv2D/ReadVariableOp!^conv2d_71/BiasAdd/ReadVariableOp ^conv2d_71/Conv2D/ReadVariableOp ^dense_68/BiasAdd/ReadVariableOp^dense_68/MatMul/ReadVariableOp ^dense_69/BiasAdd/ReadVariableOp^dense_69/MatMul/ReadVariableOp ^dense_70/BiasAdd/ReadVariableOp^dense_70/MatMul/ReadVariableOp ^dense_71/BiasAdd/ReadVariableOp^dense_71/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????x?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2p
6batch_normalization_68/FusedBatchNormV3/ReadVariableOp6batch_normalization_68/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_68/FusedBatchNormV3/ReadVariableOp_18batch_normalization_68/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_68/ReadVariableOp%batch_normalization_68/ReadVariableOp2R
'batch_normalization_68/ReadVariableOp_1'batch_normalization_68/ReadVariableOp_12p
6batch_normalization_69/FusedBatchNormV3/ReadVariableOp6batch_normalization_69/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_69/FusedBatchNormV3/ReadVariableOp_18batch_normalization_69/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_69/ReadVariableOp%batch_normalization_69/ReadVariableOp2R
'batch_normalization_69/ReadVariableOp_1'batch_normalization_69/ReadVariableOp_12p
6batch_normalization_70/FusedBatchNormV3/ReadVariableOp6batch_normalization_70/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_70/FusedBatchNormV3/ReadVariableOp_18batch_normalization_70/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_70/ReadVariableOp%batch_normalization_70/ReadVariableOp2R
'batch_normalization_70/ReadVariableOp_1'batch_normalization_70/ReadVariableOp_12p
6batch_normalization_71/FusedBatchNormV3/ReadVariableOp6batch_normalization_71/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_71/FusedBatchNormV3/ReadVariableOp_18batch_normalization_71/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_71/ReadVariableOp%batch_normalization_71/ReadVariableOp2R
'batch_normalization_71/ReadVariableOp_1'batch_normalization_71/ReadVariableOp_12D
 conv2d_68/BiasAdd/ReadVariableOp conv2d_68/BiasAdd/ReadVariableOp2B
conv2d_68/Conv2D/ReadVariableOpconv2d_68/Conv2D/ReadVariableOp2D
 conv2d_69/BiasAdd/ReadVariableOp conv2d_69/BiasAdd/ReadVariableOp2B
conv2d_69/Conv2D/ReadVariableOpconv2d_69/Conv2D/ReadVariableOp2D
 conv2d_70/BiasAdd/ReadVariableOp conv2d_70/BiasAdd/ReadVariableOp2B
conv2d_70/Conv2D/ReadVariableOpconv2d_70/Conv2D/ReadVariableOp2D
 conv2d_71/BiasAdd/ReadVariableOp conv2d_71/BiasAdd/ReadVariableOp2B
conv2d_71/Conv2D/ReadVariableOpconv2d_71/Conv2D/ReadVariableOp2B
dense_68/BiasAdd/ReadVariableOpdense_68/BiasAdd/ReadVariableOp2@
dense_68/MatMul/ReadVariableOpdense_68/MatMul/ReadVariableOp2B
dense_69/BiasAdd/ReadVariableOpdense_69/BiasAdd/ReadVariableOp2@
dense_69/MatMul/ReadVariableOpdense_69/MatMul/ReadVariableOp2B
dense_70/BiasAdd/ReadVariableOpdense_70/BiasAdd/ReadVariableOp2@
dense_70/MatMul/ReadVariableOpdense_70/MatMul/ReadVariableOp2B
dense_71/BiasAdd/ReadVariableOpdense_71/BiasAdd/ReadVariableOp2@
dense_71/MatMul/ReadVariableOpdense_71/MatMul/ReadVariableOp:X T
0
_output_shapes
:?????????x?
 
_user_specified_nameinputs
?
?
*__inference_conv2d_68_layer_call_fn_329891

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_68_layer_call_and_return_conditional_losses_328364w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????<P`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????x?: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????x?
 
_user_specified_nameinputs
?
e
G__inference_dropout_119_layer_call_and_return_conditional_losses_329979

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????<Pc

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????<P"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????<P:W S
/
_output_shapes
:?????????<P
 
_user_specified_nameinputs
?
?
E__inference_conv2d_70_layer_call_and_return_conditional_losses_328430

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????(: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????(
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_69_layer_call_and_return_conditional_losses_328207

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_69_layer_call_and_return_conditional_losses_330073

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
e
G__inference_dropout_120_layer_call_and_return_conditional_losses_328417

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????(c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????("!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????(:W S
/
_output_shapes
:?????????(
 
_user_specified_nameinputs
?
b
F__inference_flatten_17_layer_call_and_return_conditional_losses_330329

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????
:W S
/
_output_shapes
:?????????

 
_user_specified_nameinputs
?
e
G__inference_dropout_122_layer_call_and_return_conditional_losses_328483

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????
c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????
"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????
:W S
/
_output_shapes
:?????????

 
_user_specified_nameinputs
?

f
G__inference_dropout_119_layer_call_and_return_conditional_losses_329991

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????<PC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????<P*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????<Pw
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????<Pq
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????<Pa
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????<P"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????<P:W S
/
_output_shapes
:?????????<P
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_69_layer_call_and_return_conditional_losses_330055

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
E__inference_conv2d_71_layer_call_and_return_conditional_losses_328463

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????
*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????
X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????
i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????
w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
e
,__inference_dropout_120_layer_call_fn_330083

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_120_layer_call_and_return_conditional_losses_328851w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????(`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????(22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????(
 
_user_specified_nameinputs
?	
?
7__inference_batch_normalization_69_layer_call_fn_330024

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_69_layer_call_and_return_conditional_losses_328176?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
$__inference_signature_wrapper_329882
conv2d_68_input!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:$

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:

unknown_23:	? 

unknown_24: 

unknown_25: 

unknown_26:

unknown_27:

unknown_28:

unknown_29:

unknown_30:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_68_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__wrapped_model_328090o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????x?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
0
_output_shapes
:?????????x?
)
_user_specified_nameconv2d_68_input
?

f
G__inference_dropout_120_layer_call_and_return_conditional_losses_330100

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????(C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????(*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????(w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????(q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????(a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????("
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????(:W S
/
_output_shapes
:?????????(
 
_user_specified_nameinputs
?

f
G__inference_dropout_119_layer_call_and_return_conditional_losses_328884

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????<PC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????<P*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????<Pw
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????<Pq
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????<Pa
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????<P"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????<P:W S
/
_output_shapes
:?????????<P
 
_user_specified_nameinputs
?
e
,__inference_dropout_121_layer_call_fn_330192

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_121_layer_call_and_return_conditional_losses_328818w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
e
,__inference_dropout_122_layer_call_fn_330301

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_122_layer_call_and_return_conditional_losses_328785w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????
22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????

 
_user_specified_nameinputs
?

?
D__inference_dense_69_layer_call_and_return_conditional_losses_330396

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?_
?
I__inference_sequential_17_layer_call_and_return_conditional_losses_329280
conv2d_68_input*
conv2d_68_329195:
conv2d_68_329197:+
batch_normalization_68_329200:+
batch_normalization_68_329202:+
batch_normalization_68_329204:+
batch_normalization_68_329206:*
conv2d_69_329210:
conv2d_69_329212:+
batch_normalization_69_329215:+
batch_normalization_69_329217:+
batch_normalization_69_329219:+
batch_normalization_69_329221:*
conv2d_70_329225:
conv2d_70_329227:+
batch_normalization_70_329230:+
batch_normalization_70_329232:+
batch_normalization_70_329234:+
batch_normalization_70_329236:*
conv2d_71_329240:
conv2d_71_329242:+
batch_normalization_71_329245:+
batch_normalization_71_329247:+
batch_normalization_71_329249:+
batch_normalization_71_329251:"
dense_68_329256:	? 
dense_68_329258: !
dense_69_329262: 
dense_69_329264:!
dense_70_329268:
dense_70_329270:!
dense_71_329274:
dense_71_329276:
identity??.batch_normalization_68/StatefulPartitionedCall?.batch_normalization_69/StatefulPartitionedCall?.batch_normalization_70/StatefulPartitionedCall?.batch_normalization_71/StatefulPartitionedCall?!conv2d_68/StatefulPartitionedCall?!conv2d_69/StatefulPartitionedCall?!conv2d_70/StatefulPartitionedCall?!conv2d_71/StatefulPartitionedCall? dense_68/StatefulPartitionedCall? dense_69/StatefulPartitionedCall? dense_70/StatefulPartitionedCall? dense_71/StatefulPartitionedCall?
!conv2d_68/StatefulPartitionedCallStatefulPartitionedCallconv2d_68_inputconv2d_68_329195conv2d_68_329197*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_68_layer_call_and_return_conditional_losses_328364?
.batch_normalization_68/StatefulPartitionedCallStatefulPartitionedCall*conv2d_68/StatefulPartitionedCall:output:0batch_normalization_68_329200batch_normalization_68_329202batch_normalization_68_329204batch_normalization_68_329206*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_68_layer_call_and_return_conditional_losses_328112?
dropout_119/PartitionedCallPartitionedCall7batch_normalization_68/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_119_layer_call_and_return_conditional_losses_328384?
!conv2d_69/StatefulPartitionedCallStatefulPartitionedCall$dropout_119/PartitionedCall:output:0conv2d_69_329210conv2d_69_329212*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_69_layer_call_and_return_conditional_losses_328397?
.batch_normalization_69/StatefulPartitionedCallStatefulPartitionedCall*conv2d_69/StatefulPartitionedCall:output:0batch_normalization_69_329215batch_normalization_69_329217batch_normalization_69_329219batch_normalization_69_329221*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_69_layer_call_and_return_conditional_losses_328176?
dropout_120/PartitionedCallPartitionedCall7batch_normalization_69/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_120_layer_call_and_return_conditional_losses_328417?
!conv2d_70/StatefulPartitionedCallStatefulPartitionedCall$dropout_120/PartitionedCall:output:0conv2d_70_329225conv2d_70_329227*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_70_layer_call_and_return_conditional_losses_328430?
.batch_normalization_70/StatefulPartitionedCallStatefulPartitionedCall*conv2d_70/StatefulPartitionedCall:output:0batch_normalization_70_329230batch_normalization_70_329232batch_normalization_70_329234batch_normalization_70_329236*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_70_layer_call_and_return_conditional_losses_328240?
dropout_121/PartitionedCallPartitionedCall7batch_normalization_70/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_121_layer_call_and_return_conditional_losses_328450?
!conv2d_71/StatefulPartitionedCallStatefulPartitionedCall$dropout_121/PartitionedCall:output:0conv2d_71_329240conv2d_71_329242*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_71_layer_call_and_return_conditional_losses_328463?
.batch_normalization_71/StatefulPartitionedCallStatefulPartitionedCall*conv2d_71/StatefulPartitionedCall:output:0batch_normalization_71_329245batch_normalization_71_329247batch_normalization_71_329249batch_normalization_71_329251*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_71_layer_call_and_return_conditional_losses_328304?
dropout_122/PartitionedCallPartitionedCall7batch_normalization_71/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_122_layer_call_and_return_conditional_losses_328483?
flatten_17/PartitionedCallPartitionedCall$dropout_122/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_17_layer_call_and_return_conditional_losses_328491?
 dense_68/StatefulPartitionedCallStatefulPartitionedCall#flatten_17/PartitionedCall:output:0dense_68_329256dense_68_329258*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_68_layer_call_and_return_conditional_losses_328504?
dropout_123/PartitionedCallPartitionedCall)dense_68/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_123_layer_call_and_return_conditional_losses_328515?
 dense_69/StatefulPartitionedCallStatefulPartitionedCall$dropout_123/PartitionedCall:output:0dense_69_329262dense_69_329264*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_69_layer_call_and_return_conditional_losses_328528?
dropout_124/PartitionedCallPartitionedCall)dense_69/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_124_layer_call_and_return_conditional_losses_328539?
 dense_70/StatefulPartitionedCallStatefulPartitionedCall$dropout_124/PartitionedCall:output:0dense_70_329268dense_70_329270*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_70_layer_call_and_return_conditional_losses_328552?
dropout_125/PartitionedCallPartitionedCall)dense_70/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_125_layer_call_and_return_conditional_losses_328563?
 dense_71/StatefulPartitionedCallStatefulPartitionedCall$dropout_125/PartitionedCall:output:0dense_71_329274dense_71_329276*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_71_layer_call_and_return_conditional_losses_328576x
IdentityIdentity)dense_71/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp/^batch_normalization_68/StatefulPartitionedCall/^batch_normalization_69/StatefulPartitionedCall/^batch_normalization_70/StatefulPartitionedCall/^batch_normalization_71/StatefulPartitionedCall"^conv2d_68/StatefulPartitionedCall"^conv2d_69/StatefulPartitionedCall"^conv2d_70/StatefulPartitionedCall"^conv2d_71/StatefulPartitionedCall!^dense_68/StatefulPartitionedCall!^dense_69/StatefulPartitionedCall!^dense_70/StatefulPartitionedCall!^dense_71/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????x?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_68/StatefulPartitionedCall.batch_normalization_68/StatefulPartitionedCall2`
.batch_normalization_69/StatefulPartitionedCall.batch_normalization_69/StatefulPartitionedCall2`
.batch_normalization_70/StatefulPartitionedCall.batch_normalization_70/StatefulPartitionedCall2`
.batch_normalization_71/StatefulPartitionedCall.batch_normalization_71/StatefulPartitionedCall2F
!conv2d_68/StatefulPartitionedCall!conv2d_68/StatefulPartitionedCall2F
!conv2d_69/StatefulPartitionedCall!conv2d_69/StatefulPartitionedCall2F
!conv2d_70/StatefulPartitionedCall!conv2d_70/StatefulPartitionedCall2F
!conv2d_71/StatefulPartitionedCall!conv2d_71/StatefulPartitionedCall2D
 dense_68/StatefulPartitionedCall dense_68/StatefulPartitionedCall2D
 dense_69/StatefulPartitionedCall dense_69/StatefulPartitionedCall2D
 dense_70/StatefulPartitionedCall dense_70/StatefulPartitionedCall2D
 dense_71/StatefulPartitionedCall dense_71/StatefulPartitionedCall:a ]
0
_output_shapes
:?????????x?
)
_user_specified_nameconv2d_68_input
̺
?"
!__inference__wrapped_model_328090
conv2d_68_inputP
6sequential_17_conv2d_68_conv2d_readvariableop_resource:E
7sequential_17_conv2d_68_biasadd_readvariableop_resource:J
<sequential_17_batch_normalization_68_readvariableop_resource:L
>sequential_17_batch_normalization_68_readvariableop_1_resource:[
Msequential_17_batch_normalization_68_fusedbatchnormv3_readvariableop_resource:]
Osequential_17_batch_normalization_68_fusedbatchnormv3_readvariableop_1_resource:P
6sequential_17_conv2d_69_conv2d_readvariableop_resource:E
7sequential_17_conv2d_69_biasadd_readvariableop_resource:J
<sequential_17_batch_normalization_69_readvariableop_resource:L
>sequential_17_batch_normalization_69_readvariableop_1_resource:[
Msequential_17_batch_normalization_69_fusedbatchnormv3_readvariableop_resource:]
Osequential_17_batch_normalization_69_fusedbatchnormv3_readvariableop_1_resource:P
6sequential_17_conv2d_70_conv2d_readvariableop_resource:E
7sequential_17_conv2d_70_biasadd_readvariableop_resource:J
<sequential_17_batch_normalization_70_readvariableop_resource:L
>sequential_17_batch_normalization_70_readvariableop_1_resource:[
Msequential_17_batch_normalization_70_fusedbatchnormv3_readvariableop_resource:]
Osequential_17_batch_normalization_70_fusedbatchnormv3_readvariableop_1_resource:P
6sequential_17_conv2d_71_conv2d_readvariableop_resource:E
7sequential_17_conv2d_71_biasadd_readvariableop_resource:J
<sequential_17_batch_normalization_71_readvariableop_resource:L
>sequential_17_batch_normalization_71_readvariableop_1_resource:[
Msequential_17_batch_normalization_71_fusedbatchnormv3_readvariableop_resource:]
Osequential_17_batch_normalization_71_fusedbatchnormv3_readvariableop_1_resource:H
5sequential_17_dense_68_matmul_readvariableop_resource:	? D
6sequential_17_dense_68_biasadd_readvariableop_resource: G
5sequential_17_dense_69_matmul_readvariableop_resource: D
6sequential_17_dense_69_biasadd_readvariableop_resource:G
5sequential_17_dense_70_matmul_readvariableop_resource:D
6sequential_17_dense_70_biasadd_readvariableop_resource:G
5sequential_17_dense_71_matmul_readvariableop_resource:D
6sequential_17_dense_71_biasadd_readvariableop_resource:
identity??Dsequential_17/batch_normalization_68/FusedBatchNormV3/ReadVariableOp?Fsequential_17/batch_normalization_68/FusedBatchNormV3/ReadVariableOp_1?3sequential_17/batch_normalization_68/ReadVariableOp?5sequential_17/batch_normalization_68/ReadVariableOp_1?Dsequential_17/batch_normalization_69/FusedBatchNormV3/ReadVariableOp?Fsequential_17/batch_normalization_69/FusedBatchNormV3/ReadVariableOp_1?3sequential_17/batch_normalization_69/ReadVariableOp?5sequential_17/batch_normalization_69/ReadVariableOp_1?Dsequential_17/batch_normalization_70/FusedBatchNormV3/ReadVariableOp?Fsequential_17/batch_normalization_70/FusedBatchNormV3/ReadVariableOp_1?3sequential_17/batch_normalization_70/ReadVariableOp?5sequential_17/batch_normalization_70/ReadVariableOp_1?Dsequential_17/batch_normalization_71/FusedBatchNormV3/ReadVariableOp?Fsequential_17/batch_normalization_71/FusedBatchNormV3/ReadVariableOp_1?3sequential_17/batch_normalization_71/ReadVariableOp?5sequential_17/batch_normalization_71/ReadVariableOp_1?.sequential_17/conv2d_68/BiasAdd/ReadVariableOp?-sequential_17/conv2d_68/Conv2D/ReadVariableOp?.sequential_17/conv2d_69/BiasAdd/ReadVariableOp?-sequential_17/conv2d_69/Conv2D/ReadVariableOp?.sequential_17/conv2d_70/BiasAdd/ReadVariableOp?-sequential_17/conv2d_70/Conv2D/ReadVariableOp?.sequential_17/conv2d_71/BiasAdd/ReadVariableOp?-sequential_17/conv2d_71/Conv2D/ReadVariableOp?-sequential_17/dense_68/BiasAdd/ReadVariableOp?,sequential_17/dense_68/MatMul/ReadVariableOp?-sequential_17/dense_69/BiasAdd/ReadVariableOp?,sequential_17/dense_69/MatMul/ReadVariableOp?-sequential_17/dense_70/BiasAdd/ReadVariableOp?,sequential_17/dense_70/MatMul/ReadVariableOp?-sequential_17/dense_71/BiasAdd/ReadVariableOp?,sequential_17/dense_71/MatMul/ReadVariableOp?
-sequential_17/conv2d_68/Conv2D/ReadVariableOpReadVariableOp6sequential_17_conv2d_68_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
sequential_17/conv2d_68/Conv2DConv2Dconv2d_68_input5sequential_17/conv2d_68/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<P*
paddingSAME*
strides
?
.sequential_17/conv2d_68/BiasAdd/ReadVariableOpReadVariableOp7sequential_17_conv2d_68_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_17/conv2d_68/BiasAddBiasAdd'sequential_17/conv2d_68/Conv2D:output:06sequential_17/conv2d_68/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<P?
sequential_17/conv2d_68/ReluRelu(sequential_17/conv2d_68/BiasAdd:output:0*
T0*/
_output_shapes
:?????????<P?
3sequential_17/batch_normalization_68/ReadVariableOpReadVariableOp<sequential_17_batch_normalization_68_readvariableop_resource*
_output_shapes
:*
dtype0?
5sequential_17/batch_normalization_68/ReadVariableOp_1ReadVariableOp>sequential_17_batch_normalization_68_readvariableop_1_resource*
_output_shapes
:*
dtype0?
Dsequential_17/batch_normalization_68/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_17_batch_normalization_68_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
Fsequential_17/batch_normalization_68/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_17_batch_normalization_68_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
5sequential_17/batch_normalization_68/FusedBatchNormV3FusedBatchNormV3*sequential_17/conv2d_68/Relu:activations:0;sequential_17/batch_normalization_68/ReadVariableOp:value:0=sequential_17/batch_normalization_68/ReadVariableOp_1:value:0Lsequential_17/batch_normalization_68/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_17/batch_normalization_68/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????<P:::::*
epsilon%o?:*
is_training( ?
"sequential_17/dropout_119/IdentityIdentity9sequential_17/batch_normalization_68/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????<P?
-sequential_17/conv2d_69/Conv2D/ReadVariableOpReadVariableOp6sequential_17_conv2d_69_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
sequential_17/conv2d_69/Conv2DConv2D+sequential_17/dropout_119/Identity:output:05sequential_17/conv2d_69/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????(*
paddingSAME*
strides
?
.sequential_17/conv2d_69/BiasAdd/ReadVariableOpReadVariableOp7sequential_17_conv2d_69_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_17/conv2d_69/BiasAddBiasAdd'sequential_17/conv2d_69/Conv2D:output:06sequential_17/conv2d_69/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????(?
sequential_17/conv2d_69/ReluRelu(sequential_17/conv2d_69/BiasAdd:output:0*
T0*/
_output_shapes
:?????????(?
3sequential_17/batch_normalization_69/ReadVariableOpReadVariableOp<sequential_17_batch_normalization_69_readvariableop_resource*
_output_shapes
:*
dtype0?
5sequential_17/batch_normalization_69/ReadVariableOp_1ReadVariableOp>sequential_17_batch_normalization_69_readvariableop_1_resource*
_output_shapes
:*
dtype0?
Dsequential_17/batch_normalization_69/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_17_batch_normalization_69_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
Fsequential_17/batch_normalization_69/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_17_batch_normalization_69_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
5sequential_17/batch_normalization_69/FusedBatchNormV3FusedBatchNormV3*sequential_17/conv2d_69/Relu:activations:0;sequential_17/batch_normalization_69/ReadVariableOp:value:0=sequential_17/batch_normalization_69/ReadVariableOp_1:value:0Lsequential_17/batch_normalization_69/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_17/batch_normalization_69/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????(:::::*
epsilon%o?:*
is_training( ?
"sequential_17/dropout_120/IdentityIdentity9sequential_17/batch_normalization_69/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????(?
-sequential_17/conv2d_70/Conv2D/ReadVariableOpReadVariableOp6sequential_17_conv2d_70_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
sequential_17/conv2d_70/Conv2DConv2D+sequential_17/dropout_120/Identity:output:05sequential_17/conv2d_70/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
?
.sequential_17/conv2d_70/BiasAdd/ReadVariableOpReadVariableOp7sequential_17_conv2d_70_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_17/conv2d_70/BiasAddBiasAdd'sequential_17/conv2d_70/Conv2D:output:06sequential_17/conv2d_70/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:??????????
sequential_17/conv2d_70/ReluRelu(sequential_17/conv2d_70/BiasAdd:output:0*
T0*/
_output_shapes
:??????????
3sequential_17/batch_normalization_70/ReadVariableOpReadVariableOp<sequential_17_batch_normalization_70_readvariableop_resource*
_output_shapes
:*
dtype0?
5sequential_17/batch_normalization_70/ReadVariableOp_1ReadVariableOp>sequential_17_batch_normalization_70_readvariableop_1_resource*
_output_shapes
:*
dtype0?
Dsequential_17/batch_normalization_70/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_17_batch_normalization_70_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
Fsequential_17/batch_normalization_70/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_17_batch_normalization_70_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
5sequential_17/batch_normalization_70/FusedBatchNormV3FusedBatchNormV3*sequential_17/conv2d_70/Relu:activations:0;sequential_17/batch_normalization_70/ReadVariableOp:value:0=sequential_17/batch_normalization_70/ReadVariableOp_1:value:0Lsequential_17/batch_normalization_70/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_17/batch_normalization_70/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????:::::*
epsilon%o?:*
is_training( ?
"sequential_17/dropout_121/IdentityIdentity9sequential_17/batch_normalization_70/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:??????????
-sequential_17/conv2d_71/Conv2D/ReadVariableOpReadVariableOp6sequential_17_conv2d_71_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
sequential_17/conv2d_71/Conv2DConv2D+sequential_17/dropout_121/Identity:output:05sequential_17/conv2d_71/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????
*
paddingSAME*
strides
?
.sequential_17/conv2d_71/BiasAdd/ReadVariableOpReadVariableOp7sequential_17_conv2d_71_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_17/conv2d_71/BiasAddBiasAdd'sequential_17/conv2d_71/Conv2D:output:06sequential_17/conv2d_71/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????
?
sequential_17/conv2d_71/ReluRelu(sequential_17/conv2d_71/BiasAdd:output:0*
T0*/
_output_shapes
:?????????
?
3sequential_17/batch_normalization_71/ReadVariableOpReadVariableOp<sequential_17_batch_normalization_71_readvariableop_resource*
_output_shapes
:*
dtype0?
5sequential_17/batch_normalization_71/ReadVariableOp_1ReadVariableOp>sequential_17_batch_normalization_71_readvariableop_1_resource*
_output_shapes
:*
dtype0?
Dsequential_17/batch_normalization_71/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_17_batch_normalization_71_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
Fsequential_17/batch_normalization_71/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_17_batch_normalization_71_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
5sequential_17/batch_normalization_71/FusedBatchNormV3FusedBatchNormV3*sequential_17/conv2d_71/Relu:activations:0;sequential_17/batch_normalization_71/ReadVariableOp:value:0=sequential_17/batch_normalization_71/ReadVariableOp_1:value:0Lsequential_17/batch_normalization_71/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_17/batch_normalization_71/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????
:::::*
epsilon%o?:*
is_training( ?
"sequential_17/dropout_122/IdentityIdentity9sequential_17/batch_normalization_71/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????
o
sequential_17/flatten_17/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  ?
 sequential_17/flatten_17/ReshapeReshape+sequential_17/dropout_122/Identity:output:0'sequential_17/flatten_17/Const:output:0*
T0*(
_output_shapes
:???????????
,sequential_17/dense_68/MatMul/ReadVariableOpReadVariableOp5sequential_17_dense_68_matmul_readvariableop_resource*
_output_shapes
:	? *
dtype0?
sequential_17/dense_68/MatMulMatMul)sequential_17/flatten_17/Reshape:output:04sequential_17/dense_68/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
-sequential_17/dense_68/BiasAdd/ReadVariableOpReadVariableOp6sequential_17_dense_68_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
sequential_17/dense_68/BiasAddBiasAdd'sequential_17/dense_68/MatMul:product:05sequential_17/dense_68/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ~
sequential_17/dense_68/ReluRelu'sequential_17/dense_68/BiasAdd:output:0*
T0*'
_output_shapes
:????????? ?
"sequential_17/dropout_123/IdentityIdentity)sequential_17/dense_68/Relu:activations:0*
T0*'
_output_shapes
:????????? ?
,sequential_17/dense_69/MatMul/ReadVariableOpReadVariableOp5sequential_17_dense_69_matmul_readvariableop_resource*
_output_shapes

: *
dtype0?
sequential_17/dense_69/MatMulMatMul+sequential_17/dropout_123/Identity:output:04sequential_17/dense_69/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_17/dense_69/BiasAdd/ReadVariableOpReadVariableOp6sequential_17_dense_69_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_17/dense_69/BiasAddBiasAdd'sequential_17/dense_69/MatMul:product:05sequential_17/dense_69/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
sequential_17/dense_69/ReluRelu'sequential_17/dense_69/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
"sequential_17/dropout_124/IdentityIdentity)sequential_17/dense_69/Relu:activations:0*
T0*'
_output_shapes
:??????????
,sequential_17/dense_70/MatMul/ReadVariableOpReadVariableOp5sequential_17_dense_70_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
sequential_17/dense_70/MatMulMatMul+sequential_17/dropout_124/Identity:output:04sequential_17/dense_70/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_17/dense_70/BiasAdd/ReadVariableOpReadVariableOp6sequential_17_dense_70_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_17/dense_70/BiasAddBiasAdd'sequential_17/dense_70/MatMul:product:05sequential_17/dense_70/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
sequential_17/dense_70/ReluRelu'sequential_17/dense_70/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
"sequential_17/dropout_125/IdentityIdentity)sequential_17/dense_70/Relu:activations:0*
T0*'
_output_shapes
:??????????
,sequential_17/dense_71/MatMul/ReadVariableOpReadVariableOp5sequential_17_dense_71_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
sequential_17/dense_71/MatMulMatMul+sequential_17/dropout_125/Identity:output:04sequential_17/dense_71/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
-sequential_17/dense_71/BiasAdd/ReadVariableOpReadVariableOp6sequential_17_dense_71_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_17/dense_71/BiasAddBiasAdd'sequential_17/dense_71/MatMul:product:05sequential_17/dense_71/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
sequential_17/dense_71/SoftmaxSoftmax'sequential_17/dense_71/BiasAdd:output:0*
T0*'
_output_shapes
:?????????w
IdentityIdentity(sequential_17/dense_71/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOpE^sequential_17/batch_normalization_68/FusedBatchNormV3/ReadVariableOpG^sequential_17/batch_normalization_68/FusedBatchNormV3/ReadVariableOp_14^sequential_17/batch_normalization_68/ReadVariableOp6^sequential_17/batch_normalization_68/ReadVariableOp_1E^sequential_17/batch_normalization_69/FusedBatchNormV3/ReadVariableOpG^sequential_17/batch_normalization_69/FusedBatchNormV3/ReadVariableOp_14^sequential_17/batch_normalization_69/ReadVariableOp6^sequential_17/batch_normalization_69/ReadVariableOp_1E^sequential_17/batch_normalization_70/FusedBatchNormV3/ReadVariableOpG^sequential_17/batch_normalization_70/FusedBatchNormV3/ReadVariableOp_14^sequential_17/batch_normalization_70/ReadVariableOp6^sequential_17/batch_normalization_70/ReadVariableOp_1E^sequential_17/batch_normalization_71/FusedBatchNormV3/ReadVariableOpG^sequential_17/batch_normalization_71/FusedBatchNormV3/ReadVariableOp_14^sequential_17/batch_normalization_71/ReadVariableOp6^sequential_17/batch_normalization_71/ReadVariableOp_1/^sequential_17/conv2d_68/BiasAdd/ReadVariableOp.^sequential_17/conv2d_68/Conv2D/ReadVariableOp/^sequential_17/conv2d_69/BiasAdd/ReadVariableOp.^sequential_17/conv2d_69/Conv2D/ReadVariableOp/^sequential_17/conv2d_70/BiasAdd/ReadVariableOp.^sequential_17/conv2d_70/Conv2D/ReadVariableOp/^sequential_17/conv2d_71/BiasAdd/ReadVariableOp.^sequential_17/conv2d_71/Conv2D/ReadVariableOp.^sequential_17/dense_68/BiasAdd/ReadVariableOp-^sequential_17/dense_68/MatMul/ReadVariableOp.^sequential_17/dense_69/BiasAdd/ReadVariableOp-^sequential_17/dense_69/MatMul/ReadVariableOp.^sequential_17/dense_70/BiasAdd/ReadVariableOp-^sequential_17/dense_70/MatMul/ReadVariableOp.^sequential_17/dense_71/BiasAdd/ReadVariableOp-^sequential_17/dense_71/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????x?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2?
Dsequential_17/batch_normalization_68/FusedBatchNormV3/ReadVariableOpDsequential_17/batch_normalization_68/FusedBatchNormV3/ReadVariableOp2?
Fsequential_17/batch_normalization_68/FusedBatchNormV3/ReadVariableOp_1Fsequential_17/batch_normalization_68/FusedBatchNormV3/ReadVariableOp_12j
3sequential_17/batch_normalization_68/ReadVariableOp3sequential_17/batch_normalization_68/ReadVariableOp2n
5sequential_17/batch_normalization_68/ReadVariableOp_15sequential_17/batch_normalization_68/ReadVariableOp_12?
Dsequential_17/batch_normalization_69/FusedBatchNormV3/ReadVariableOpDsequential_17/batch_normalization_69/FusedBatchNormV3/ReadVariableOp2?
Fsequential_17/batch_normalization_69/FusedBatchNormV3/ReadVariableOp_1Fsequential_17/batch_normalization_69/FusedBatchNormV3/ReadVariableOp_12j
3sequential_17/batch_normalization_69/ReadVariableOp3sequential_17/batch_normalization_69/ReadVariableOp2n
5sequential_17/batch_normalization_69/ReadVariableOp_15sequential_17/batch_normalization_69/ReadVariableOp_12?
Dsequential_17/batch_normalization_70/FusedBatchNormV3/ReadVariableOpDsequential_17/batch_normalization_70/FusedBatchNormV3/ReadVariableOp2?
Fsequential_17/batch_normalization_70/FusedBatchNormV3/ReadVariableOp_1Fsequential_17/batch_normalization_70/FusedBatchNormV3/ReadVariableOp_12j
3sequential_17/batch_normalization_70/ReadVariableOp3sequential_17/batch_normalization_70/ReadVariableOp2n
5sequential_17/batch_normalization_70/ReadVariableOp_15sequential_17/batch_normalization_70/ReadVariableOp_12?
Dsequential_17/batch_normalization_71/FusedBatchNormV3/ReadVariableOpDsequential_17/batch_normalization_71/FusedBatchNormV3/ReadVariableOp2?
Fsequential_17/batch_normalization_71/FusedBatchNormV3/ReadVariableOp_1Fsequential_17/batch_normalization_71/FusedBatchNormV3/ReadVariableOp_12j
3sequential_17/batch_normalization_71/ReadVariableOp3sequential_17/batch_normalization_71/ReadVariableOp2n
5sequential_17/batch_normalization_71/ReadVariableOp_15sequential_17/batch_normalization_71/ReadVariableOp_12`
.sequential_17/conv2d_68/BiasAdd/ReadVariableOp.sequential_17/conv2d_68/BiasAdd/ReadVariableOp2^
-sequential_17/conv2d_68/Conv2D/ReadVariableOp-sequential_17/conv2d_68/Conv2D/ReadVariableOp2`
.sequential_17/conv2d_69/BiasAdd/ReadVariableOp.sequential_17/conv2d_69/BiasAdd/ReadVariableOp2^
-sequential_17/conv2d_69/Conv2D/ReadVariableOp-sequential_17/conv2d_69/Conv2D/ReadVariableOp2`
.sequential_17/conv2d_70/BiasAdd/ReadVariableOp.sequential_17/conv2d_70/BiasAdd/ReadVariableOp2^
-sequential_17/conv2d_70/Conv2D/ReadVariableOp-sequential_17/conv2d_70/Conv2D/ReadVariableOp2`
.sequential_17/conv2d_71/BiasAdd/ReadVariableOp.sequential_17/conv2d_71/BiasAdd/ReadVariableOp2^
-sequential_17/conv2d_71/Conv2D/ReadVariableOp-sequential_17/conv2d_71/Conv2D/ReadVariableOp2^
-sequential_17/dense_68/BiasAdd/ReadVariableOp-sequential_17/dense_68/BiasAdd/ReadVariableOp2\
,sequential_17/dense_68/MatMul/ReadVariableOp,sequential_17/dense_68/MatMul/ReadVariableOp2^
-sequential_17/dense_69/BiasAdd/ReadVariableOp-sequential_17/dense_69/BiasAdd/ReadVariableOp2\
,sequential_17/dense_69/MatMul/ReadVariableOp,sequential_17/dense_69/MatMul/ReadVariableOp2^
-sequential_17/dense_70/BiasAdd/ReadVariableOp-sequential_17/dense_70/BiasAdd/ReadVariableOp2\
,sequential_17/dense_70/MatMul/ReadVariableOp,sequential_17/dense_70/MatMul/ReadVariableOp2^
-sequential_17/dense_71/BiasAdd/ReadVariableOp-sequential_17/dense_71/BiasAdd/ReadVariableOp2\
,sequential_17/dense_71/MatMul/ReadVariableOp,sequential_17/dense_71/MatMul/ReadVariableOp:a ]
0
_output_shapes
:?????????x?
)
_user_specified_nameconv2d_68_input
?
?
.__inference_sequential_17_layer_call_fn_328650
conv2d_68_input!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:$

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:

unknown_23:	? 

unknown_24: 

unknown_25: 

unknown_26:

unknown_27:

unknown_28:

unknown_29:

unknown_30:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_68_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_17_layer_call_and_return_conditional_losses_328583o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????x?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
0
_output_shapes
:?????????x?
)
_user_specified_nameconv2d_68_input
?
H
,__inference_dropout_120_layer_call_fn_330078

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_120_layer_call_and_return_conditional_losses_328417h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????("
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????(:W S
/
_output_shapes
:?????????(
 
_user_specified_nameinputs
?	
?
7__inference_batch_normalization_70_layer_call_fn_330133

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_70_layer_call_and_return_conditional_losses_328240?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?

f
G__inference_dropout_121_layer_call_and_return_conditional_losses_330209

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
D__inference_dense_69_layer_call_and_return_conditional_losses_328528

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
b
F__inference_flatten_17_layer_call_and_return_conditional_losses_328491

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????
:W S
/
_output_shapes
:?????????

 
_user_specified_nameinputs
?
e
,__inference_dropout_125_layer_call_fn_330453

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_125_layer_call_and_return_conditional_losses_328680o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_68_layer_call_and_return_conditional_losses_329946

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
e
G__inference_dropout_123_layer_call_and_return_conditional_losses_328515

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:????????? [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:????????? "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?	
?
7__inference_batch_normalization_71_layer_call_fn_330255

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_71_layer_call_and_return_conditional_losses_328335?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?

?
D__inference_dense_71_layer_call_and_return_conditional_losses_328576

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_70_layer_call_and_return_conditional_losses_328271

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
e
,__inference_dropout_119_layer_call_fn_329974

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_119_layer_call_and_return_conditional_losses_328884w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????<P`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????<P22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????<P
 
_user_specified_nameinputs
??
?*
"__inference__traced_restore_330913
file_prefix;
!assignvariableop_conv2d_68_kernel:/
!assignvariableop_1_conv2d_68_bias:=
/assignvariableop_2_batch_normalization_68_gamma:<
.assignvariableop_3_batch_normalization_68_beta:C
5assignvariableop_4_batch_normalization_68_moving_mean:G
9assignvariableop_5_batch_normalization_68_moving_variance:=
#assignvariableop_6_conv2d_69_kernel:/
!assignvariableop_7_conv2d_69_bias:=
/assignvariableop_8_batch_normalization_69_gamma:<
.assignvariableop_9_batch_normalization_69_beta:D
6assignvariableop_10_batch_normalization_69_moving_mean:H
:assignvariableop_11_batch_normalization_69_moving_variance:>
$assignvariableop_12_conv2d_70_kernel:0
"assignvariableop_13_conv2d_70_bias:>
0assignvariableop_14_batch_normalization_70_gamma:=
/assignvariableop_15_batch_normalization_70_beta:D
6assignvariableop_16_batch_normalization_70_moving_mean:H
:assignvariableop_17_batch_normalization_70_moving_variance:>
$assignvariableop_18_conv2d_71_kernel:0
"assignvariableop_19_conv2d_71_bias:>
0assignvariableop_20_batch_normalization_71_gamma:=
/assignvariableop_21_batch_normalization_71_beta:D
6assignvariableop_22_batch_normalization_71_moving_mean:H
:assignvariableop_23_batch_normalization_71_moving_variance:6
#assignvariableop_24_dense_68_kernel:	? /
!assignvariableop_25_dense_68_bias: 5
#assignvariableop_26_dense_69_kernel: /
!assignvariableop_27_dense_69_bias:5
#assignvariableop_28_dense_70_kernel:/
!assignvariableop_29_dense_70_bias:5
#assignvariableop_30_dense_71_kernel:/
!assignvariableop_31_dense_71_bias:*
 assignvariableop_32_rmsprop_iter:	 +
!assignvariableop_33_rmsprop_decay: 3
)assignvariableop_34_rmsprop_learning_rate: .
$assignvariableop_35_rmsprop_momentum: )
assignvariableop_36_rmsprop_rho: #
assignvariableop_37_total: #
assignvariableop_38_count: %
assignvariableop_39_total_1: %
assignvariableop_40_count_1: J
0assignvariableop_41_rmsprop_conv2d_68_kernel_rms:<
.assignvariableop_42_rmsprop_conv2d_68_bias_rms:J
<assignvariableop_43_rmsprop_batch_normalization_68_gamma_rms:I
;assignvariableop_44_rmsprop_batch_normalization_68_beta_rms:J
0assignvariableop_45_rmsprop_conv2d_69_kernel_rms:<
.assignvariableop_46_rmsprop_conv2d_69_bias_rms:J
<assignvariableop_47_rmsprop_batch_normalization_69_gamma_rms:I
;assignvariableop_48_rmsprop_batch_normalization_69_beta_rms:J
0assignvariableop_49_rmsprop_conv2d_70_kernel_rms:<
.assignvariableop_50_rmsprop_conv2d_70_bias_rms:J
<assignvariableop_51_rmsprop_batch_normalization_70_gamma_rms:I
;assignvariableop_52_rmsprop_batch_normalization_70_beta_rms:J
0assignvariableop_53_rmsprop_conv2d_71_kernel_rms:<
.assignvariableop_54_rmsprop_conv2d_71_bias_rms:J
<assignvariableop_55_rmsprop_batch_normalization_71_gamma_rms:I
;assignvariableop_56_rmsprop_batch_normalization_71_beta_rms:B
/assignvariableop_57_rmsprop_dense_68_kernel_rms:	? ;
-assignvariableop_58_rmsprop_dense_68_bias_rms: A
/assignvariableop_59_rmsprop_dense_69_kernel_rms: ;
-assignvariableop_60_rmsprop_dense_69_bias_rms:A
/assignvariableop_61_rmsprop_dense_70_kernel_rms:;
-assignvariableop_62_rmsprop_dense_70_bias_rms:A
/assignvariableop_63_rmsprop_dense_71_kernel_rms:;
-assignvariableop_64_rmsprop_dense_71_bias_rms:
identity_66??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?"
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:B*
dtype0*?"
value?!B?!BB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:B*
dtype0*?
value?B?BB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*P
dtypesF
D2B	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_68_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_68_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp/assignvariableop_2_batch_normalization_68_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp.assignvariableop_3_batch_normalization_68_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp5assignvariableop_4_batch_normalization_68_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp9assignvariableop_5_batch_normalization_68_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_69_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_69_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp/assignvariableop_8_batch_normalization_69_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp.assignvariableop_9_batch_normalization_69_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp6assignvariableop_10_batch_normalization_69_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp:assignvariableop_11_batch_normalization_69_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv2d_70_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv2d_70_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp0assignvariableop_14_batch_normalization_70_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp/assignvariableop_15_batch_normalization_70_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp6assignvariableop_16_batch_normalization_70_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp:assignvariableop_17_batch_normalization_70_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp$assignvariableop_18_conv2d_71_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp"assignvariableop_19_conv2d_71_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp0assignvariableop_20_batch_normalization_71_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp/assignvariableop_21_batch_normalization_71_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp6assignvariableop_22_batch_normalization_71_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp:assignvariableop_23_batch_normalization_71_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp#assignvariableop_24_dense_68_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp!assignvariableop_25_dense_68_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp#assignvariableop_26_dense_69_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp!assignvariableop_27_dense_69_biasIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp#assignvariableop_28_dense_70_kernelIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp!assignvariableop_29_dense_70_biasIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp#assignvariableop_30_dense_71_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp!assignvariableop_31_dense_71_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp assignvariableop_32_rmsprop_iterIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp!assignvariableop_33_rmsprop_decayIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp)assignvariableop_34_rmsprop_learning_rateIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOp$assignvariableop_35_rmsprop_momentumIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOpassignvariableop_36_rmsprop_rhoIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOpassignvariableop_37_totalIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpassignvariableop_38_countIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOpassignvariableop_39_total_1Identity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_40AssignVariableOpassignvariableop_40_count_1Identity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_41AssignVariableOp0assignvariableop_41_rmsprop_conv2d_68_kernel_rmsIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_42AssignVariableOp.assignvariableop_42_rmsprop_conv2d_68_bias_rmsIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_43AssignVariableOp<assignvariableop_43_rmsprop_batch_normalization_68_gamma_rmsIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_44AssignVariableOp;assignvariableop_44_rmsprop_batch_normalization_68_beta_rmsIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_45AssignVariableOp0assignvariableop_45_rmsprop_conv2d_69_kernel_rmsIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_46AssignVariableOp.assignvariableop_46_rmsprop_conv2d_69_bias_rmsIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_47AssignVariableOp<assignvariableop_47_rmsprop_batch_normalization_69_gamma_rmsIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_48AssignVariableOp;assignvariableop_48_rmsprop_batch_normalization_69_beta_rmsIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_49AssignVariableOp0assignvariableop_49_rmsprop_conv2d_70_kernel_rmsIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_50AssignVariableOp.assignvariableop_50_rmsprop_conv2d_70_bias_rmsIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_51AssignVariableOp<assignvariableop_51_rmsprop_batch_normalization_70_gamma_rmsIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_52AssignVariableOp;assignvariableop_52_rmsprop_batch_normalization_70_beta_rmsIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_53AssignVariableOp0assignvariableop_53_rmsprop_conv2d_71_kernel_rmsIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_54AssignVariableOp.assignvariableop_54_rmsprop_conv2d_71_bias_rmsIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_55AssignVariableOp<assignvariableop_55_rmsprop_batch_normalization_71_gamma_rmsIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_56AssignVariableOp;assignvariableop_56_rmsprop_batch_normalization_71_beta_rmsIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_57AssignVariableOp/assignvariableop_57_rmsprop_dense_68_kernel_rmsIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_58AssignVariableOp-assignvariableop_58_rmsprop_dense_68_bias_rmsIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_59AssignVariableOp/assignvariableop_59_rmsprop_dense_69_kernel_rmsIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_60AssignVariableOp-assignvariableop_60_rmsprop_dense_69_bias_rmsIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_61AssignVariableOp/assignvariableop_61_rmsprop_dense_70_kernel_rmsIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_62AssignVariableOp-assignvariableop_62_rmsprop_dense_70_bias_rmsIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_63AssignVariableOp/assignvariableop_63_rmsprop_dense_71_kernel_rmsIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_64AssignVariableOp-assignvariableop_64_rmsprop_dense_71_bias_rmsIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_65Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_66IdentityIdentity_65:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_66Identity_66:output:0*?
_input_shapes?
?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?

f
G__inference_dropout_120_layer_call_and_return_conditional_losses_328851

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????(C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????(*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????(w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????(q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????(a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????("
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????(:W S
/
_output_shapes
:?????????(
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_70_layer_call_and_return_conditional_losses_330164

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?

?
D__inference_dense_68_layer_call_and_return_conditional_losses_330349

inputs1
matmul_readvariableop_resource:	? -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	? *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_71_layer_call_and_return_conditional_losses_328304

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
.__inference_sequential_17_layer_call_fn_329443

inputs!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:$

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:

unknown_23:	? 

unknown_24: 

unknown_25: 

unknown_26:

unknown_27:

unknown_28:

unknown_29:

unknown_30:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_17_layer_call_and_return_conditional_losses_328583o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????x?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????x?
 
_user_specified_nameinputs
?
?
E__inference_conv2d_70_layer_call_and_return_conditional_losses_330120

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????(: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????(
 
_user_specified_nameinputs
?

?
D__inference_dense_68_layer_call_and_return_conditional_losses_328504

inputs1
matmul_readvariableop_resource:	? -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	? *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
f
G__inference_dropout_123_layer_call_and_return_conditional_losses_328746

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:????????? C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:????????? Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
e
G__inference_dropout_124_layer_call_and_return_conditional_losses_328539

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
f
G__inference_dropout_125_layer_call_and_return_conditional_losses_330470

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?j
?
I__inference_sequential_17_layer_call_and_return_conditional_losses_329056

inputs*
conv2d_68_328971:
conv2d_68_328973:+
batch_normalization_68_328976:+
batch_normalization_68_328978:+
batch_normalization_68_328980:+
batch_normalization_68_328982:*
conv2d_69_328986:
conv2d_69_328988:+
batch_normalization_69_328991:+
batch_normalization_69_328993:+
batch_normalization_69_328995:+
batch_normalization_69_328997:*
conv2d_70_329001:
conv2d_70_329003:+
batch_normalization_70_329006:+
batch_normalization_70_329008:+
batch_normalization_70_329010:+
batch_normalization_70_329012:*
conv2d_71_329016:
conv2d_71_329018:+
batch_normalization_71_329021:+
batch_normalization_71_329023:+
batch_normalization_71_329025:+
batch_normalization_71_329027:"
dense_68_329032:	? 
dense_68_329034: !
dense_69_329038: 
dense_69_329040:!
dense_70_329044:
dense_70_329046:!
dense_71_329050:
dense_71_329052:
identity??.batch_normalization_68/StatefulPartitionedCall?.batch_normalization_69/StatefulPartitionedCall?.batch_normalization_70/StatefulPartitionedCall?.batch_normalization_71/StatefulPartitionedCall?!conv2d_68/StatefulPartitionedCall?!conv2d_69/StatefulPartitionedCall?!conv2d_70/StatefulPartitionedCall?!conv2d_71/StatefulPartitionedCall? dense_68/StatefulPartitionedCall? dense_69/StatefulPartitionedCall? dense_70/StatefulPartitionedCall? dense_71/StatefulPartitionedCall?#dropout_119/StatefulPartitionedCall?#dropout_120/StatefulPartitionedCall?#dropout_121/StatefulPartitionedCall?#dropout_122/StatefulPartitionedCall?#dropout_123/StatefulPartitionedCall?#dropout_124/StatefulPartitionedCall?#dropout_125/StatefulPartitionedCall?
!conv2d_68/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_68_328971conv2d_68_328973*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_68_layer_call_and_return_conditional_losses_328364?
.batch_normalization_68/StatefulPartitionedCallStatefulPartitionedCall*conv2d_68/StatefulPartitionedCall:output:0batch_normalization_68_328976batch_normalization_68_328978batch_normalization_68_328980batch_normalization_68_328982*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_68_layer_call_and_return_conditional_losses_328143?
#dropout_119/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_68/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_119_layer_call_and_return_conditional_losses_328884?
!conv2d_69/StatefulPartitionedCallStatefulPartitionedCall,dropout_119/StatefulPartitionedCall:output:0conv2d_69_328986conv2d_69_328988*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_69_layer_call_and_return_conditional_losses_328397?
.batch_normalization_69/StatefulPartitionedCallStatefulPartitionedCall*conv2d_69/StatefulPartitionedCall:output:0batch_normalization_69_328991batch_normalization_69_328993batch_normalization_69_328995batch_normalization_69_328997*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_69_layer_call_and_return_conditional_losses_328207?
#dropout_120/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_69/StatefulPartitionedCall:output:0$^dropout_119/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_120_layer_call_and_return_conditional_losses_328851?
!conv2d_70/StatefulPartitionedCallStatefulPartitionedCall,dropout_120/StatefulPartitionedCall:output:0conv2d_70_329001conv2d_70_329003*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_70_layer_call_and_return_conditional_losses_328430?
.batch_normalization_70/StatefulPartitionedCallStatefulPartitionedCall*conv2d_70/StatefulPartitionedCall:output:0batch_normalization_70_329006batch_normalization_70_329008batch_normalization_70_329010batch_normalization_70_329012*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_70_layer_call_and_return_conditional_losses_328271?
#dropout_121/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_70/StatefulPartitionedCall:output:0$^dropout_120/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_121_layer_call_and_return_conditional_losses_328818?
!conv2d_71/StatefulPartitionedCallStatefulPartitionedCall,dropout_121/StatefulPartitionedCall:output:0conv2d_71_329016conv2d_71_329018*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_71_layer_call_and_return_conditional_losses_328463?
.batch_normalization_71/StatefulPartitionedCallStatefulPartitionedCall*conv2d_71/StatefulPartitionedCall:output:0batch_normalization_71_329021batch_normalization_71_329023batch_normalization_71_329025batch_normalization_71_329027*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_71_layer_call_and_return_conditional_losses_328335?
#dropout_122/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_71/StatefulPartitionedCall:output:0$^dropout_121/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_122_layer_call_and_return_conditional_losses_328785?
flatten_17/PartitionedCallPartitionedCall,dropout_122/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_17_layer_call_and_return_conditional_losses_328491?
 dense_68/StatefulPartitionedCallStatefulPartitionedCall#flatten_17/PartitionedCall:output:0dense_68_329032dense_68_329034*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_68_layer_call_and_return_conditional_losses_328504?
#dropout_123/StatefulPartitionedCallStatefulPartitionedCall)dense_68/StatefulPartitionedCall:output:0$^dropout_122/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_123_layer_call_and_return_conditional_losses_328746?
 dense_69/StatefulPartitionedCallStatefulPartitionedCall,dropout_123/StatefulPartitionedCall:output:0dense_69_329038dense_69_329040*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_69_layer_call_and_return_conditional_losses_328528?
#dropout_124/StatefulPartitionedCallStatefulPartitionedCall)dense_69/StatefulPartitionedCall:output:0$^dropout_123/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_124_layer_call_and_return_conditional_losses_328713?
 dense_70/StatefulPartitionedCallStatefulPartitionedCall,dropout_124/StatefulPartitionedCall:output:0dense_70_329044dense_70_329046*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_70_layer_call_and_return_conditional_losses_328552?
#dropout_125/StatefulPartitionedCallStatefulPartitionedCall)dense_70/StatefulPartitionedCall:output:0$^dropout_124/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_125_layer_call_and_return_conditional_losses_328680?
 dense_71/StatefulPartitionedCallStatefulPartitionedCall,dropout_125/StatefulPartitionedCall:output:0dense_71_329050dense_71_329052*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_71_layer_call_and_return_conditional_losses_328576x
IdentityIdentity)dense_71/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp/^batch_normalization_68/StatefulPartitionedCall/^batch_normalization_69/StatefulPartitionedCall/^batch_normalization_70/StatefulPartitionedCall/^batch_normalization_71/StatefulPartitionedCall"^conv2d_68/StatefulPartitionedCall"^conv2d_69/StatefulPartitionedCall"^conv2d_70/StatefulPartitionedCall"^conv2d_71/StatefulPartitionedCall!^dense_68/StatefulPartitionedCall!^dense_69/StatefulPartitionedCall!^dense_70/StatefulPartitionedCall!^dense_71/StatefulPartitionedCall$^dropout_119/StatefulPartitionedCall$^dropout_120/StatefulPartitionedCall$^dropout_121/StatefulPartitionedCall$^dropout_122/StatefulPartitionedCall$^dropout_123/StatefulPartitionedCall$^dropout_124/StatefulPartitionedCall$^dropout_125/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????x?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_68/StatefulPartitionedCall.batch_normalization_68/StatefulPartitionedCall2`
.batch_normalization_69/StatefulPartitionedCall.batch_normalization_69/StatefulPartitionedCall2`
.batch_normalization_70/StatefulPartitionedCall.batch_normalization_70/StatefulPartitionedCall2`
.batch_normalization_71/StatefulPartitionedCall.batch_normalization_71/StatefulPartitionedCall2F
!conv2d_68/StatefulPartitionedCall!conv2d_68/StatefulPartitionedCall2F
!conv2d_69/StatefulPartitionedCall!conv2d_69/StatefulPartitionedCall2F
!conv2d_70/StatefulPartitionedCall!conv2d_70/StatefulPartitionedCall2F
!conv2d_71/StatefulPartitionedCall!conv2d_71/StatefulPartitionedCall2D
 dense_68/StatefulPartitionedCall dense_68/StatefulPartitionedCall2D
 dense_69/StatefulPartitionedCall dense_69/StatefulPartitionedCall2D
 dense_70/StatefulPartitionedCall dense_70/StatefulPartitionedCall2D
 dense_71/StatefulPartitionedCall dense_71/StatefulPartitionedCall2J
#dropout_119/StatefulPartitionedCall#dropout_119/StatefulPartitionedCall2J
#dropout_120/StatefulPartitionedCall#dropout_120/StatefulPartitionedCall2J
#dropout_121/StatefulPartitionedCall#dropout_121/StatefulPartitionedCall2J
#dropout_122/StatefulPartitionedCall#dropout_122/StatefulPartitionedCall2J
#dropout_123/StatefulPartitionedCall#dropout_123/StatefulPartitionedCall2J
#dropout_124/StatefulPartitionedCall#dropout_124/StatefulPartitionedCall2J
#dropout_125/StatefulPartitionedCall#dropout_125/StatefulPartitionedCall:X T
0
_output_shapes
:?????????x?
 
_user_specified_nameinputs
?	
?
7__inference_batch_normalization_70_layer_call_fn_330146

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_70_layer_call_and_return_conditional_losses_328271?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
e
,__inference_dropout_124_layer_call_fn_330406

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_124_layer_call_and_return_conditional_losses_328713o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
D__inference_dense_71_layer_call_and_return_conditional_losses_330490

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?j
?
I__inference_sequential_17_layer_call_and_return_conditional_losses_329368
conv2d_68_input*
conv2d_68_329283:
conv2d_68_329285:+
batch_normalization_68_329288:+
batch_normalization_68_329290:+
batch_normalization_68_329292:+
batch_normalization_68_329294:*
conv2d_69_329298:
conv2d_69_329300:+
batch_normalization_69_329303:+
batch_normalization_69_329305:+
batch_normalization_69_329307:+
batch_normalization_69_329309:*
conv2d_70_329313:
conv2d_70_329315:+
batch_normalization_70_329318:+
batch_normalization_70_329320:+
batch_normalization_70_329322:+
batch_normalization_70_329324:*
conv2d_71_329328:
conv2d_71_329330:+
batch_normalization_71_329333:+
batch_normalization_71_329335:+
batch_normalization_71_329337:+
batch_normalization_71_329339:"
dense_68_329344:	? 
dense_68_329346: !
dense_69_329350: 
dense_69_329352:!
dense_70_329356:
dense_70_329358:!
dense_71_329362:
dense_71_329364:
identity??.batch_normalization_68/StatefulPartitionedCall?.batch_normalization_69/StatefulPartitionedCall?.batch_normalization_70/StatefulPartitionedCall?.batch_normalization_71/StatefulPartitionedCall?!conv2d_68/StatefulPartitionedCall?!conv2d_69/StatefulPartitionedCall?!conv2d_70/StatefulPartitionedCall?!conv2d_71/StatefulPartitionedCall? dense_68/StatefulPartitionedCall? dense_69/StatefulPartitionedCall? dense_70/StatefulPartitionedCall? dense_71/StatefulPartitionedCall?#dropout_119/StatefulPartitionedCall?#dropout_120/StatefulPartitionedCall?#dropout_121/StatefulPartitionedCall?#dropout_122/StatefulPartitionedCall?#dropout_123/StatefulPartitionedCall?#dropout_124/StatefulPartitionedCall?#dropout_125/StatefulPartitionedCall?
!conv2d_68/StatefulPartitionedCallStatefulPartitionedCallconv2d_68_inputconv2d_68_329283conv2d_68_329285*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_68_layer_call_and_return_conditional_losses_328364?
.batch_normalization_68/StatefulPartitionedCallStatefulPartitionedCall*conv2d_68/StatefulPartitionedCall:output:0batch_normalization_68_329288batch_normalization_68_329290batch_normalization_68_329292batch_normalization_68_329294*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_68_layer_call_and_return_conditional_losses_328143?
#dropout_119/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_68/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_119_layer_call_and_return_conditional_losses_328884?
!conv2d_69/StatefulPartitionedCallStatefulPartitionedCall,dropout_119/StatefulPartitionedCall:output:0conv2d_69_329298conv2d_69_329300*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_69_layer_call_and_return_conditional_losses_328397?
.batch_normalization_69/StatefulPartitionedCallStatefulPartitionedCall*conv2d_69/StatefulPartitionedCall:output:0batch_normalization_69_329303batch_normalization_69_329305batch_normalization_69_329307batch_normalization_69_329309*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_69_layer_call_and_return_conditional_losses_328207?
#dropout_120/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_69/StatefulPartitionedCall:output:0$^dropout_119/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_120_layer_call_and_return_conditional_losses_328851?
!conv2d_70/StatefulPartitionedCallStatefulPartitionedCall,dropout_120/StatefulPartitionedCall:output:0conv2d_70_329313conv2d_70_329315*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_70_layer_call_and_return_conditional_losses_328430?
.batch_normalization_70/StatefulPartitionedCallStatefulPartitionedCall*conv2d_70/StatefulPartitionedCall:output:0batch_normalization_70_329318batch_normalization_70_329320batch_normalization_70_329322batch_normalization_70_329324*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_70_layer_call_and_return_conditional_losses_328271?
#dropout_121/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_70/StatefulPartitionedCall:output:0$^dropout_120/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_121_layer_call_and_return_conditional_losses_328818?
!conv2d_71/StatefulPartitionedCallStatefulPartitionedCall,dropout_121/StatefulPartitionedCall:output:0conv2d_71_329328conv2d_71_329330*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_71_layer_call_and_return_conditional_losses_328463?
.batch_normalization_71/StatefulPartitionedCallStatefulPartitionedCall*conv2d_71/StatefulPartitionedCall:output:0batch_normalization_71_329333batch_normalization_71_329335batch_normalization_71_329337batch_normalization_71_329339*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_71_layer_call_and_return_conditional_losses_328335?
#dropout_122/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_71/StatefulPartitionedCall:output:0$^dropout_121/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_122_layer_call_and_return_conditional_losses_328785?
flatten_17/PartitionedCallPartitionedCall,dropout_122/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_17_layer_call_and_return_conditional_losses_328491?
 dense_68/StatefulPartitionedCallStatefulPartitionedCall#flatten_17/PartitionedCall:output:0dense_68_329344dense_68_329346*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_68_layer_call_and_return_conditional_losses_328504?
#dropout_123/StatefulPartitionedCallStatefulPartitionedCall)dense_68/StatefulPartitionedCall:output:0$^dropout_122/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_123_layer_call_and_return_conditional_losses_328746?
 dense_69/StatefulPartitionedCallStatefulPartitionedCall,dropout_123/StatefulPartitionedCall:output:0dense_69_329350dense_69_329352*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_69_layer_call_and_return_conditional_losses_328528?
#dropout_124/StatefulPartitionedCallStatefulPartitionedCall)dense_69/StatefulPartitionedCall:output:0$^dropout_123/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_124_layer_call_and_return_conditional_losses_328713?
 dense_70/StatefulPartitionedCallStatefulPartitionedCall,dropout_124/StatefulPartitionedCall:output:0dense_70_329356dense_70_329358*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_70_layer_call_and_return_conditional_losses_328552?
#dropout_125/StatefulPartitionedCallStatefulPartitionedCall)dense_70/StatefulPartitionedCall:output:0$^dropout_124/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_125_layer_call_and_return_conditional_losses_328680?
 dense_71/StatefulPartitionedCallStatefulPartitionedCall,dropout_125/StatefulPartitionedCall:output:0dense_71_329362dense_71_329364*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_71_layer_call_and_return_conditional_losses_328576x
IdentityIdentity)dense_71/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp/^batch_normalization_68/StatefulPartitionedCall/^batch_normalization_69/StatefulPartitionedCall/^batch_normalization_70/StatefulPartitionedCall/^batch_normalization_71/StatefulPartitionedCall"^conv2d_68/StatefulPartitionedCall"^conv2d_69/StatefulPartitionedCall"^conv2d_70/StatefulPartitionedCall"^conv2d_71/StatefulPartitionedCall!^dense_68/StatefulPartitionedCall!^dense_69/StatefulPartitionedCall!^dense_70/StatefulPartitionedCall!^dense_71/StatefulPartitionedCall$^dropout_119/StatefulPartitionedCall$^dropout_120/StatefulPartitionedCall$^dropout_121/StatefulPartitionedCall$^dropout_122/StatefulPartitionedCall$^dropout_123/StatefulPartitionedCall$^dropout_124/StatefulPartitionedCall$^dropout_125/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????x?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_68/StatefulPartitionedCall.batch_normalization_68/StatefulPartitionedCall2`
.batch_normalization_69/StatefulPartitionedCall.batch_normalization_69/StatefulPartitionedCall2`
.batch_normalization_70/StatefulPartitionedCall.batch_normalization_70/StatefulPartitionedCall2`
.batch_normalization_71/StatefulPartitionedCall.batch_normalization_71/StatefulPartitionedCall2F
!conv2d_68/StatefulPartitionedCall!conv2d_68/StatefulPartitionedCall2F
!conv2d_69/StatefulPartitionedCall!conv2d_69/StatefulPartitionedCall2F
!conv2d_70/StatefulPartitionedCall!conv2d_70/StatefulPartitionedCall2F
!conv2d_71/StatefulPartitionedCall!conv2d_71/StatefulPartitionedCall2D
 dense_68/StatefulPartitionedCall dense_68/StatefulPartitionedCall2D
 dense_69/StatefulPartitionedCall dense_69/StatefulPartitionedCall2D
 dense_70/StatefulPartitionedCall dense_70/StatefulPartitionedCall2D
 dense_71/StatefulPartitionedCall dense_71/StatefulPartitionedCall2J
#dropout_119/StatefulPartitionedCall#dropout_119/StatefulPartitionedCall2J
#dropout_120/StatefulPartitionedCall#dropout_120/StatefulPartitionedCall2J
#dropout_121/StatefulPartitionedCall#dropout_121/StatefulPartitionedCall2J
#dropout_122/StatefulPartitionedCall#dropout_122/StatefulPartitionedCall2J
#dropout_123/StatefulPartitionedCall#dropout_123/StatefulPartitionedCall2J
#dropout_124/StatefulPartitionedCall#dropout_124/StatefulPartitionedCall2J
#dropout_125/StatefulPartitionedCall#dropout_125/StatefulPartitionedCall:a ]
0
_output_shapes
:?????????x?
)
_user_specified_nameconv2d_68_input
?
?
*__inference_conv2d_69_layer_call_fn_330000

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_69_layer_call_and_return_conditional_losses_328397w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????(`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????<P: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????<P
 
_user_specified_nameinputs
?	
f
G__inference_dropout_124_layer_call_and_return_conditional_losses_328713

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_70_layer_call_and_return_conditional_losses_330182

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
H
,__inference_dropout_119_layer_call_fn_329969

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_119_layer_call_and_return_conditional_losses_328384h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????<P"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????<P:W S
/
_output_shapes
:?????????<P
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_71_layer_call_and_return_conditional_losses_330291

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
E__inference_conv2d_68_layer_call_and_return_conditional_losses_329902

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<P*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<PX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????<Pi
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????<Pw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????x?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????x?
 
_user_specified_nameinputs
?	
?
7__inference_batch_normalization_68_layer_call_fn_329915

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_68_layer_call_and_return_conditional_losses_328112?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
H
,__inference_dropout_124_layer_call_fn_330401

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_124_layer_call_and_return_conditional_losses_328539`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
.__inference_sequential_17_layer_call_fn_329512

inputs!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:$

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:

unknown_23:	? 

unknown_24: 

unknown_25: 

unknown_26:

unknown_27:

unknown_28:

unknown_29:

unknown_30:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*:
_read_only_resource_inputs
	
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_17_layer_call_and_return_conditional_losses_329056o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????x?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????x?
 
_user_specified_nameinputs
?
e
,__inference_dropout_123_layer_call_fn_330359

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_123_layer_call_and_return_conditional_losses_328746o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
??
?
I__inference_sequential_17_layer_call_and_return_conditional_losses_329811

inputsB
(conv2d_68_conv2d_readvariableop_resource:7
)conv2d_68_biasadd_readvariableop_resource:<
.batch_normalization_68_readvariableop_resource:>
0batch_normalization_68_readvariableop_1_resource:M
?batch_normalization_68_fusedbatchnormv3_readvariableop_resource:O
Abatch_normalization_68_fusedbatchnormv3_readvariableop_1_resource:B
(conv2d_69_conv2d_readvariableop_resource:7
)conv2d_69_biasadd_readvariableop_resource:<
.batch_normalization_69_readvariableop_resource:>
0batch_normalization_69_readvariableop_1_resource:M
?batch_normalization_69_fusedbatchnormv3_readvariableop_resource:O
Abatch_normalization_69_fusedbatchnormv3_readvariableop_1_resource:B
(conv2d_70_conv2d_readvariableop_resource:7
)conv2d_70_biasadd_readvariableop_resource:<
.batch_normalization_70_readvariableop_resource:>
0batch_normalization_70_readvariableop_1_resource:M
?batch_normalization_70_fusedbatchnormv3_readvariableop_resource:O
Abatch_normalization_70_fusedbatchnormv3_readvariableop_1_resource:B
(conv2d_71_conv2d_readvariableop_resource:7
)conv2d_71_biasadd_readvariableop_resource:<
.batch_normalization_71_readvariableop_resource:>
0batch_normalization_71_readvariableop_1_resource:M
?batch_normalization_71_fusedbatchnormv3_readvariableop_resource:O
Abatch_normalization_71_fusedbatchnormv3_readvariableop_1_resource::
'dense_68_matmul_readvariableop_resource:	? 6
(dense_68_biasadd_readvariableop_resource: 9
'dense_69_matmul_readvariableop_resource: 6
(dense_69_biasadd_readvariableop_resource:9
'dense_70_matmul_readvariableop_resource:6
(dense_70_biasadd_readvariableop_resource:9
'dense_71_matmul_readvariableop_resource:6
(dense_71_biasadd_readvariableop_resource:
identity??%batch_normalization_68/AssignNewValue?'batch_normalization_68/AssignNewValue_1?6batch_normalization_68/FusedBatchNormV3/ReadVariableOp?8batch_normalization_68/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_68/ReadVariableOp?'batch_normalization_68/ReadVariableOp_1?%batch_normalization_69/AssignNewValue?'batch_normalization_69/AssignNewValue_1?6batch_normalization_69/FusedBatchNormV3/ReadVariableOp?8batch_normalization_69/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_69/ReadVariableOp?'batch_normalization_69/ReadVariableOp_1?%batch_normalization_70/AssignNewValue?'batch_normalization_70/AssignNewValue_1?6batch_normalization_70/FusedBatchNormV3/ReadVariableOp?8batch_normalization_70/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_70/ReadVariableOp?'batch_normalization_70/ReadVariableOp_1?%batch_normalization_71/AssignNewValue?'batch_normalization_71/AssignNewValue_1?6batch_normalization_71/FusedBatchNormV3/ReadVariableOp?8batch_normalization_71/FusedBatchNormV3/ReadVariableOp_1?%batch_normalization_71/ReadVariableOp?'batch_normalization_71/ReadVariableOp_1? conv2d_68/BiasAdd/ReadVariableOp?conv2d_68/Conv2D/ReadVariableOp? conv2d_69/BiasAdd/ReadVariableOp?conv2d_69/Conv2D/ReadVariableOp? conv2d_70/BiasAdd/ReadVariableOp?conv2d_70/Conv2D/ReadVariableOp? conv2d_71/BiasAdd/ReadVariableOp?conv2d_71/Conv2D/ReadVariableOp?dense_68/BiasAdd/ReadVariableOp?dense_68/MatMul/ReadVariableOp?dense_69/BiasAdd/ReadVariableOp?dense_69/MatMul/ReadVariableOp?dense_70/BiasAdd/ReadVariableOp?dense_70/MatMul/ReadVariableOp?dense_71/BiasAdd/ReadVariableOp?dense_71/MatMul/ReadVariableOp?
conv2d_68/Conv2D/ReadVariableOpReadVariableOp(conv2d_68_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_68/Conv2DConv2Dinputs'conv2d_68/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<P*
paddingSAME*
strides
?
 conv2d_68/BiasAdd/ReadVariableOpReadVariableOp)conv2d_68_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_68/BiasAddBiasAddconv2d_68/Conv2D:output:0(conv2d_68/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<Pl
conv2d_68/ReluReluconv2d_68/BiasAdd:output:0*
T0*/
_output_shapes
:?????????<P?
%batch_normalization_68/ReadVariableOpReadVariableOp.batch_normalization_68_readvariableop_resource*
_output_shapes
:*
dtype0?
'batch_normalization_68/ReadVariableOp_1ReadVariableOp0batch_normalization_68_readvariableop_1_resource*
_output_shapes
:*
dtype0?
6batch_normalization_68/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_68_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
8batch_normalization_68/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_68_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
'batch_normalization_68/FusedBatchNormV3FusedBatchNormV3conv2d_68/Relu:activations:0-batch_normalization_68/ReadVariableOp:value:0/batch_normalization_68/ReadVariableOp_1:value:0>batch_normalization_68/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_68/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????<P:::::*
epsilon%o?:*
exponential_avg_factor%
?#<?
%batch_normalization_68/AssignNewValueAssignVariableOp?batch_normalization_68_fusedbatchnormv3_readvariableop_resource4batch_normalization_68/FusedBatchNormV3:batch_mean:07^batch_normalization_68/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
'batch_normalization_68/AssignNewValue_1AssignVariableOpAbatch_normalization_68_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_68/FusedBatchNormV3:batch_variance:09^batch_normalization_68/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0^
dropout_119/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
dropout_119/dropout/MulMul+batch_normalization_68/FusedBatchNormV3:y:0"dropout_119/dropout/Const:output:0*
T0*/
_output_shapes
:?????????<Pt
dropout_119/dropout/ShapeShape+batch_normalization_68/FusedBatchNormV3:y:0*
T0*
_output_shapes
:?
0dropout_119/dropout/random_uniform/RandomUniformRandomUniform"dropout_119/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????<P*
dtype0g
"dropout_119/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
 dropout_119/dropout/GreaterEqualGreaterEqual9dropout_119/dropout/random_uniform/RandomUniform:output:0+dropout_119/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????<P?
dropout_119/dropout/CastCast$dropout_119/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????<P?
dropout_119/dropout/Mul_1Muldropout_119/dropout/Mul:z:0dropout_119/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????<P?
conv2d_69/Conv2D/ReadVariableOpReadVariableOp(conv2d_69_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_69/Conv2DConv2Ddropout_119/dropout/Mul_1:z:0'conv2d_69/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????(*
paddingSAME*
strides
?
 conv2d_69/BiasAdd/ReadVariableOpReadVariableOp)conv2d_69_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_69/BiasAddBiasAddconv2d_69/Conv2D:output:0(conv2d_69/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????(l
conv2d_69/ReluReluconv2d_69/BiasAdd:output:0*
T0*/
_output_shapes
:?????????(?
%batch_normalization_69/ReadVariableOpReadVariableOp.batch_normalization_69_readvariableop_resource*
_output_shapes
:*
dtype0?
'batch_normalization_69/ReadVariableOp_1ReadVariableOp0batch_normalization_69_readvariableop_1_resource*
_output_shapes
:*
dtype0?
6batch_normalization_69/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_69_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
8batch_normalization_69/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_69_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
'batch_normalization_69/FusedBatchNormV3FusedBatchNormV3conv2d_69/Relu:activations:0-batch_normalization_69/ReadVariableOp:value:0/batch_normalization_69/ReadVariableOp_1:value:0>batch_normalization_69/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_69/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????(:::::*
epsilon%o?:*
exponential_avg_factor%
?#<?
%batch_normalization_69/AssignNewValueAssignVariableOp?batch_normalization_69_fusedbatchnormv3_readvariableop_resource4batch_normalization_69/FusedBatchNormV3:batch_mean:07^batch_normalization_69/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
'batch_normalization_69/AssignNewValue_1AssignVariableOpAbatch_normalization_69_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_69/FusedBatchNormV3:batch_variance:09^batch_normalization_69/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0^
dropout_120/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
dropout_120/dropout/MulMul+batch_normalization_69/FusedBatchNormV3:y:0"dropout_120/dropout/Const:output:0*
T0*/
_output_shapes
:?????????(t
dropout_120/dropout/ShapeShape+batch_normalization_69/FusedBatchNormV3:y:0*
T0*
_output_shapes
:?
0dropout_120/dropout/random_uniform/RandomUniformRandomUniform"dropout_120/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????(*
dtype0g
"dropout_120/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
 dropout_120/dropout/GreaterEqualGreaterEqual9dropout_120/dropout/random_uniform/RandomUniform:output:0+dropout_120/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????(?
dropout_120/dropout/CastCast$dropout_120/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????(?
dropout_120/dropout/Mul_1Muldropout_120/dropout/Mul:z:0dropout_120/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????(?
conv2d_70/Conv2D/ReadVariableOpReadVariableOp(conv2d_70_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_70/Conv2DConv2Ddropout_120/dropout/Mul_1:z:0'conv2d_70/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
?
 conv2d_70/BiasAdd/ReadVariableOpReadVariableOp)conv2d_70_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_70/BiasAddBiasAddconv2d_70/Conv2D:output:0(conv2d_70/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????l
conv2d_70/ReluReluconv2d_70/BiasAdd:output:0*
T0*/
_output_shapes
:??????????
%batch_normalization_70/ReadVariableOpReadVariableOp.batch_normalization_70_readvariableop_resource*
_output_shapes
:*
dtype0?
'batch_normalization_70/ReadVariableOp_1ReadVariableOp0batch_normalization_70_readvariableop_1_resource*
_output_shapes
:*
dtype0?
6batch_normalization_70/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_70_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
8batch_normalization_70/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_70_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
'batch_normalization_70/FusedBatchNormV3FusedBatchNormV3conv2d_70/Relu:activations:0-batch_normalization_70/ReadVariableOp:value:0/batch_normalization_70/ReadVariableOp_1:value:0>batch_normalization_70/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_70/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????:::::*
epsilon%o?:*
exponential_avg_factor%
?#<?
%batch_normalization_70/AssignNewValueAssignVariableOp?batch_normalization_70_fusedbatchnormv3_readvariableop_resource4batch_normalization_70/FusedBatchNormV3:batch_mean:07^batch_normalization_70/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
'batch_normalization_70/AssignNewValue_1AssignVariableOpAbatch_normalization_70_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_70/FusedBatchNormV3:batch_variance:09^batch_normalization_70/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0^
dropout_121/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
dropout_121/dropout/MulMul+batch_normalization_70/FusedBatchNormV3:y:0"dropout_121/dropout/Const:output:0*
T0*/
_output_shapes
:?????????t
dropout_121/dropout/ShapeShape+batch_normalization_70/FusedBatchNormV3:y:0*
T0*
_output_shapes
:?
0dropout_121/dropout/random_uniform/RandomUniformRandomUniform"dropout_121/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????*
dtype0g
"dropout_121/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
 dropout_121/dropout/GreaterEqualGreaterEqual9dropout_121/dropout/random_uniform/RandomUniform:output:0+dropout_121/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:??????????
dropout_121/dropout/CastCast$dropout_121/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:??????????
dropout_121/dropout/Mul_1Muldropout_121/dropout/Mul:z:0dropout_121/dropout/Cast:y:0*
T0*/
_output_shapes
:??????????
conv2d_71/Conv2D/ReadVariableOpReadVariableOp(conv2d_71_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_71/Conv2DConv2Ddropout_121/dropout/Mul_1:z:0'conv2d_71/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????
*
paddingSAME*
strides
?
 conv2d_71/BiasAdd/ReadVariableOpReadVariableOp)conv2d_71_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_71/BiasAddBiasAddconv2d_71/Conv2D:output:0(conv2d_71/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????
l
conv2d_71/ReluReluconv2d_71/BiasAdd:output:0*
T0*/
_output_shapes
:?????????
?
%batch_normalization_71/ReadVariableOpReadVariableOp.batch_normalization_71_readvariableop_resource*
_output_shapes
:*
dtype0?
'batch_normalization_71/ReadVariableOp_1ReadVariableOp0batch_normalization_71_readvariableop_1_resource*
_output_shapes
:*
dtype0?
6batch_normalization_71/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_71_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
8batch_normalization_71/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_71_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
'batch_normalization_71/FusedBatchNormV3FusedBatchNormV3conv2d_71/Relu:activations:0-batch_normalization_71/ReadVariableOp:value:0/batch_normalization_71/ReadVariableOp_1:value:0>batch_normalization_71/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_71/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????
:::::*
epsilon%o?:*
exponential_avg_factor%
?#<?
%batch_normalization_71/AssignNewValueAssignVariableOp?batch_normalization_71_fusedbatchnormv3_readvariableop_resource4batch_normalization_71/FusedBatchNormV3:batch_mean:07^batch_normalization_71/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
'batch_normalization_71/AssignNewValue_1AssignVariableOpAbatch_normalization_71_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_71/FusedBatchNormV3:batch_variance:09^batch_normalization_71/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0^
dropout_122/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
dropout_122/dropout/MulMul+batch_normalization_71/FusedBatchNormV3:y:0"dropout_122/dropout/Const:output:0*
T0*/
_output_shapes
:?????????
t
dropout_122/dropout/ShapeShape+batch_normalization_71/FusedBatchNormV3:y:0*
T0*
_output_shapes
:?
0dropout_122/dropout/random_uniform/RandomUniformRandomUniform"dropout_122/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????
*
dtype0g
"dropout_122/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
 dropout_122/dropout/GreaterEqualGreaterEqual9dropout_122/dropout/random_uniform/RandomUniform:output:0+dropout_122/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????
?
dropout_122/dropout/CastCast$dropout_122/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????
?
dropout_122/dropout/Mul_1Muldropout_122/dropout/Mul:z:0dropout_122/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????
a
flatten_17/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  ?
flatten_17/ReshapeReshapedropout_122/dropout/Mul_1:z:0flatten_17/Const:output:0*
T0*(
_output_shapes
:???????????
dense_68/MatMul/ReadVariableOpReadVariableOp'dense_68_matmul_readvariableop_resource*
_output_shapes
:	? *
dtype0?
dense_68/MatMulMatMulflatten_17/Reshape:output:0&dense_68/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
dense_68/BiasAdd/ReadVariableOpReadVariableOp(dense_68_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
dense_68/BiasAddBiasAdddense_68/MatMul:product:0'dense_68/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? b
dense_68/ReluReludense_68/BiasAdd:output:0*
T0*'
_output_shapes
:????????? ^
dropout_123/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
dropout_123/dropout/MulMuldense_68/Relu:activations:0"dropout_123/dropout/Const:output:0*
T0*'
_output_shapes
:????????? d
dropout_123/dropout/ShapeShapedense_68/Relu:activations:0*
T0*
_output_shapes
:?
0dropout_123/dropout/random_uniform/RandomUniformRandomUniform"dropout_123/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0g
"dropout_123/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
 dropout_123/dropout/GreaterEqualGreaterEqual9dropout_123/dropout/random_uniform/RandomUniform:output:0+dropout_123/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? ?
dropout_123/dropout/CastCast$dropout_123/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? ?
dropout_123/dropout/Mul_1Muldropout_123/dropout/Mul:z:0dropout_123/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? ?
dense_69/MatMul/ReadVariableOpReadVariableOp'dense_69_matmul_readvariableop_resource*
_output_shapes

: *
dtype0?
dense_69/MatMulMatMuldropout_123/dropout/Mul_1:z:0&dense_69/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_69/BiasAdd/ReadVariableOpReadVariableOp(dense_69_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_69/BiasAddBiasAdddense_69/MatMul:product:0'dense_69/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????b
dense_69/ReluReludense_69/BiasAdd:output:0*
T0*'
_output_shapes
:?????????^
dropout_124/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
dropout_124/dropout/MulMuldense_69/Relu:activations:0"dropout_124/dropout/Const:output:0*
T0*'
_output_shapes
:?????????d
dropout_124/dropout/ShapeShapedense_69/Relu:activations:0*
T0*
_output_shapes
:?
0dropout_124/dropout/random_uniform/RandomUniformRandomUniform"dropout_124/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0g
"dropout_124/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
 dropout_124/dropout/GreaterEqualGreaterEqual9dropout_124/dropout/random_uniform/RandomUniform:output:0+dropout_124/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:??????????
dropout_124/dropout/CastCast$dropout_124/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:??????????
dropout_124/dropout/Mul_1Muldropout_124/dropout/Mul:z:0dropout_124/dropout/Cast:y:0*
T0*'
_output_shapes
:??????????
dense_70/MatMul/ReadVariableOpReadVariableOp'dense_70_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_70/MatMulMatMuldropout_124/dropout/Mul_1:z:0&dense_70/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_70/BiasAdd/ReadVariableOpReadVariableOp(dense_70_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_70/BiasAddBiasAdddense_70/MatMul:product:0'dense_70/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????b
dense_70/ReluReludense_70/BiasAdd:output:0*
T0*'
_output_shapes
:?????????^
dropout_125/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
dropout_125/dropout/MulMuldense_70/Relu:activations:0"dropout_125/dropout/Const:output:0*
T0*'
_output_shapes
:?????????d
dropout_125/dropout/ShapeShapedense_70/Relu:activations:0*
T0*
_output_shapes
:?
0dropout_125/dropout/random_uniform/RandomUniformRandomUniform"dropout_125/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0g
"dropout_125/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
 dropout_125/dropout/GreaterEqualGreaterEqual9dropout_125/dropout/random_uniform/RandomUniform:output:0+dropout_125/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:??????????
dropout_125/dropout/CastCast$dropout_125/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:??????????
dropout_125/dropout/Mul_1Muldropout_125/dropout/Mul:z:0dropout_125/dropout/Cast:y:0*
T0*'
_output_shapes
:??????????
dense_71/MatMul/ReadVariableOpReadVariableOp'dense_71_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_71/MatMulMatMuldropout_125/dropout/Mul_1:z:0&dense_71/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_71/BiasAdd/ReadVariableOpReadVariableOp(dense_71_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_71/BiasAddBiasAdddense_71/MatMul:product:0'dense_71/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
dense_71/SoftmaxSoftmaxdense_71/BiasAdd:output:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_71/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp&^batch_normalization_68/AssignNewValue(^batch_normalization_68/AssignNewValue_17^batch_normalization_68/FusedBatchNormV3/ReadVariableOp9^batch_normalization_68/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_68/ReadVariableOp(^batch_normalization_68/ReadVariableOp_1&^batch_normalization_69/AssignNewValue(^batch_normalization_69/AssignNewValue_17^batch_normalization_69/FusedBatchNormV3/ReadVariableOp9^batch_normalization_69/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_69/ReadVariableOp(^batch_normalization_69/ReadVariableOp_1&^batch_normalization_70/AssignNewValue(^batch_normalization_70/AssignNewValue_17^batch_normalization_70/FusedBatchNormV3/ReadVariableOp9^batch_normalization_70/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_70/ReadVariableOp(^batch_normalization_70/ReadVariableOp_1&^batch_normalization_71/AssignNewValue(^batch_normalization_71/AssignNewValue_17^batch_normalization_71/FusedBatchNormV3/ReadVariableOp9^batch_normalization_71/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_71/ReadVariableOp(^batch_normalization_71/ReadVariableOp_1!^conv2d_68/BiasAdd/ReadVariableOp ^conv2d_68/Conv2D/ReadVariableOp!^conv2d_69/BiasAdd/ReadVariableOp ^conv2d_69/Conv2D/ReadVariableOp!^conv2d_70/BiasAdd/ReadVariableOp ^conv2d_70/Conv2D/ReadVariableOp!^conv2d_71/BiasAdd/ReadVariableOp ^conv2d_71/Conv2D/ReadVariableOp ^dense_68/BiasAdd/ReadVariableOp^dense_68/MatMul/ReadVariableOp ^dense_69/BiasAdd/ReadVariableOp^dense_69/MatMul/ReadVariableOp ^dense_70/BiasAdd/ReadVariableOp^dense_70/MatMul/ReadVariableOp ^dense_71/BiasAdd/ReadVariableOp^dense_71/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????x?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2N
%batch_normalization_68/AssignNewValue%batch_normalization_68/AssignNewValue2R
'batch_normalization_68/AssignNewValue_1'batch_normalization_68/AssignNewValue_12p
6batch_normalization_68/FusedBatchNormV3/ReadVariableOp6batch_normalization_68/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_68/FusedBatchNormV3/ReadVariableOp_18batch_normalization_68/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_68/ReadVariableOp%batch_normalization_68/ReadVariableOp2R
'batch_normalization_68/ReadVariableOp_1'batch_normalization_68/ReadVariableOp_12N
%batch_normalization_69/AssignNewValue%batch_normalization_69/AssignNewValue2R
'batch_normalization_69/AssignNewValue_1'batch_normalization_69/AssignNewValue_12p
6batch_normalization_69/FusedBatchNormV3/ReadVariableOp6batch_normalization_69/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_69/FusedBatchNormV3/ReadVariableOp_18batch_normalization_69/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_69/ReadVariableOp%batch_normalization_69/ReadVariableOp2R
'batch_normalization_69/ReadVariableOp_1'batch_normalization_69/ReadVariableOp_12N
%batch_normalization_70/AssignNewValue%batch_normalization_70/AssignNewValue2R
'batch_normalization_70/AssignNewValue_1'batch_normalization_70/AssignNewValue_12p
6batch_normalization_70/FusedBatchNormV3/ReadVariableOp6batch_normalization_70/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_70/FusedBatchNormV3/ReadVariableOp_18batch_normalization_70/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_70/ReadVariableOp%batch_normalization_70/ReadVariableOp2R
'batch_normalization_70/ReadVariableOp_1'batch_normalization_70/ReadVariableOp_12N
%batch_normalization_71/AssignNewValue%batch_normalization_71/AssignNewValue2R
'batch_normalization_71/AssignNewValue_1'batch_normalization_71/AssignNewValue_12p
6batch_normalization_71/FusedBatchNormV3/ReadVariableOp6batch_normalization_71/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_71/FusedBatchNormV3/ReadVariableOp_18batch_normalization_71/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_71/ReadVariableOp%batch_normalization_71/ReadVariableOp2R
'batch_normalization_71/ReadVariableOp_1'batch_normalization_71/ReadVariableOp_12D
 conv2d_68/BiasAdd/ReadVariableOp conv2d_68/BiasAdd/ReadVariableOp2B
conv2d_68/Conv2D/ReadVariableOpconv2d_68/Conv2D/ReadVariableOp2D
 conv2d_69/BiasAdd/ReadVariableOp conv2d_69/BiasAdd/ReadVariableOp2B
conv2d_69/Conv2D/ReadVariableOpconv2d_69/Conv2D/ReadVariableOp2D
 conv2d_70/BiasAdd/ReadVariableOp conv2d_70/BiasAdd/ReadVariableOp2B
conv2d_70/Conv2D/ReadVariableOpconv2d_70/Conv2D/ReadVariableOp2D
 conv2d_71/BiasAdd/ReadVariableOp conv2d_71/BiasAdd/ReadVariableOp2B
conv2d_71/Conv2D/ReadVariableOpconv2d_71/Conv2D/ReadVariableOp2B
dense_68/BiasAdd/ReadVariableOpdense_68/BiasAdd/ReadVariableOp2@
dense_68/MatMul/ReadVariableOpdense_68/MatMul/ReadVariableOp2B
dense_69/BiasAdd/ReadVariableOpdense_69/BiasAdd/ReadVariableOp2@
dense_69/MatMul/ReadVariableOpdense_69/MatMul/ReadVariableOp2B
dense_70/BiasAdd/ReadVariableOpdense_70/BiasAdd/ReadVariableOp2@
dense_70/MatMul/ReadVariableOpdense_70/MatMul/ReadVariableOp2B
dense_71/BiasAdd/ReadVariableOpdense_71/BiasAdd/ReadVariableOp2@
dense_71/MatMul/ReadVariableOpdense_71/MatMul/ReadVariableOp:X T
0
_output_shapes
:?????????x?
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_68_layer_call_and_return_conditional_losses_328112

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_68_layer_call_and_return_conditional_losses_328143

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?

f
G__inference_dropout_122_layer_call_and_return_conditional_losses_330318

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????
C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????
*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????
w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????
q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????
a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????
:W S
/
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
E__inference_conv2d_69_layer_call_and_return_conditional_losses_328397

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????(*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????(X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????(i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????(w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????<P: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????<P
 
_user_specified_nameinputs
?
e
G__inference_dropout_121_layer_call_and_return_conditional_losses_328450

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_conv2d_71_layer_call_fn_330218

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_71_layer_call_and_return_conditional_losses_328463w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
E__inference_conv2d_71_layer_call_and_return_conditional_losses_330229

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????
*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????
X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????
i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????
w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
H
,__inference_dropout_123_layer_call_fn_330354

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_123_layer_call_and_return_conditional_losses_328515`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
)__inference_dense_68_layer_call_fn_330338

inputs
unknown:	? 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_68_layer_call_and_return_conditional_losses_328504o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
e
G__inference_dropout_125_layer_call_and_return_conditional_losses_330458

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_70_layer_call_and_return_conditional_losses_328240

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?

f
G__inference_dropout_122_layer_call_and_return_conditional_losses_328785

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????
C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????
*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????
w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????
q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????
a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????
:W S
/
_output_shapes
:?????????

 
_user_specified_nameinputs
?	
f
G__inference_dropout_123_layer_call_and_return_conditional_losses_330376

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:????????? C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:????????? Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?	
?
7__inference_batch_normalization_71_layer_call_fn_330242

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_71_layer_call_and_return_conditional_losses_328304?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
H
,__inference_dropout_121_layer_call_fn_330187

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_121_layer_call_and_return_conditional_losses_328450h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
7__inference_batch_normalization_68_layer_call_fn_329928

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_68_layer_call_and_return_conditional_losses_328143?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
e
G__inference_dropout_125_layer_call_and_return_conditional_losses_328563

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
e
G__inference_dropout_119_layer_call_and_return_conditional_losses_328384

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????<Pc

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????<P"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????<P:W S
/
_output_shapes
:?????????<P
 
_user_specified_nameinputs
?
G
+__inference_flatten_17_layer_call_fn_330323

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_17_layer_call_and_return_conditional_losses_328491a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????
:W S
/
_output_shapes
:?????????

 
_user_specified_nameinputs
?^
?
I__inference_sequential_17_layer_call_and_return_conditional_losses_328583

inputs*
conv2d_68_328365:
conv2d_68_328367:+
batch_normalization_68_328370:+
batch_normalization_68_328372:+
batch_normalization_68_328374:+
batch_normalization_68_328376:*
conv2d_69_328398:
conv2d_69_328400:+
batch_normalization_69_328403:+
batch_normalization_69_328405:+
batch_normalization_69_328407:+
batch_normalization_69_328409:*
conv2d_70_328431:
conv2d_70_328433:+
batch_normalization_70_328436:+
batch_normalization_70_328438:+
batch_normalization_70_328440:+
batch_normalization_70_328442:*
conv2d_71_328464:
conv2d_71_328466:+
batch_normalization_71_328469:+
batch_normalization_71_328471:+
batch_normalization_71_328473:+
batch_normalization_71_328475:"
dense_68_328505:	? 
dense_68_328507: !
dense_69_328529: 
dense_69_328531:!
dense_70_328553:
dense_70_328555:!
dense_71_328577:
dense_71_328579:
identity??.batch_normalization_68/StatefulPartitionedCall?.batch_normalization_69/StatefulPartitionedCall?.batch_normalization_70/StatefulPartitionedCall?.batch_normalization_71/StatefulPartitionedCall?!conv2d_68/StatefulPartitionedCall?!conv2d_69/StatefulPartitionedCall?!conv2d_70/StatefulPartitionedCall?!conv2d_71/StatefulPartitionedCall? dense_68/StatefulPartitionedCall? dense_69/StatefulPartitionedCall? dense_70/StatefulPartitionedCall? dense_71/StatefulPartitionedCall?
!conv2d_68/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_68_328365conv2d_68_328367*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_68_layer_call_and_return_conditional_losses_328364?
.batch_normalization_68/StatefulPartitionedCallStatefulPartitionedCall*conv2d_68/StatefulPartitionedCall:output:0batch_normalization_68_328370batch_normalization_68_328372batch_normalization_68_328374batch_normalization_68_328376*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_68_layer_call_and_return_conditional_losses_328112?
dropout_119/PartitionedCallPartitionedCall7batch_normalization_68/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????<P* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_119_layer_call_and_return_conditional_losses_328384?
!conv2d_69/StatefulPartitionedCallStatefulPartitionedCall$dropout_119/PartitionedCall:output:0conv2d_69_328398conv2d_69_328400*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_69_layer_call_and_return_conditional_losses_328397?
.batch_normalization_69/StatefulPartitionedCallStatefulPartitionedCall*conv2d_69/StatefulPartitionedCall:output:0batch_normalization_69_328403batch_normalization_69_328405batch_normalization_69_328407batch_normalization_69_328409*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_69_layer_call_and_return_conditional_losses_328176?
dropout_120/PartitionedCallPartitionedCall7batch_normalization_69/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????(* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_120_layer_call_and_return_conditional_losses_328417?
!conv2d_70/StatefulPartitionedCallStatefulPartitionedCall$dropout_120/PartitionedCall:output:0conv2d_70_328431conv2d_70_328433*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_70_layer_call_and_return_conditional_losses_328430?
.batch_normalization_70/StatefulPartitionedCallStatefulPartitionedCall*conv2d_70/StatefulPartitionedCall:output:0batch_normalization_70_328436batch_normalization_70_328438batch_normalization_70_328440batch_normalization_70_328442*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_70_layer_call_and_return_conditional_losses_328240?
dropout_121/PartitionedCallPartitionedCall7batch_normalization_70/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_121_layer_call_and_return_conditional_losses_328450?
!conv2d_71/StatefulPartitionedCallStatefulPartitionedCall$dropout_121/PartitionedCall:output:0conv2d_71_328464conv2d_71_328466*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_71_layer_call_and_return_conditional_losses_328463?
.batch_normalization_71/StatefulPartitionedCallStatefulPartitionedCall*conv2d_71/StatefulPartitionedCall:output:0batch_normalization_71_328469batch_normalization_71_328471batch_normalization_71_328473batch_normalization_71_328475*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_batch_normalization_71_layer_call_and_return_conditional_losses_328304?
dropout_122/PartitionedCallPartitionedCall7batch_normalization_71/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_122_layer_call_and_return_conditional_losses_328483?
flatten_17/PartitionedCallPartitionedCall$dropout_122/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_17_layer_call_and_return_conditional_losses_328491?
 dense_68/StatefulPartitionedCallStatefulPartitionedCall#flatten_17/PartitionedCall:output:0dense_68_328505dense_68_328507*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_68_layer_call_and_return_conditional_losses_328504?
dropout_123/PartitionedCallPartitionedCall)dense_68/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_123_layer_call_and_return_conditional_losses_328515?
 dense_69/StatefulPartitionedCallStatefulPartitionedCall$dropout_123/PartitionedCall:output:0dense_69_328529dense_69_328531*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_69_layer_call_and_return_conditional_losses_328528?
dropout_124/PartitionedCallPartitionedCall)dense_69/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_124_layer_call_and_return_conditional_losses_328539?
 dense_70/StatefulPartitionedCallStatefulPartitionedCall$dropout_124/PartitionedCall:output:0dense_70_328553dense_70_328555*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_70_layer_call_and_return_conditional_losses_328552?
dropout_125/PartitionedCallPartitionedCall)dense_70/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_125_layer_call_and_return_conditional_losses_328563?
 dense_71/StatefulPartitionedCallStatefulPartitionedCall$dropout_125/PartitionedCall:output:0dense_71_328577dense_71_328579*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_71_layer_call_and_return_conditional_losses_328576x
IdentityIdentity)dense_71/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp/^batch_normalization_68/StatefulPartitionedCall/^batch_normalization_69/StatefulPartitionedCall/^batch_normalization_70/StatefulPartitionedCall/^batch_normalization_71/StatefulPartitionedCall"^conv2d_68/StatefulPartitionedCall"^conv2d_69/StatefulPartitionedCall"^conv2d_70/StatefulPartitionedCall"^conv2d_71/StatefulPartitionedCall!^dense_68/StatefulPartitionedCall!^dense_69/StatefulPartitionedCall!^dense_70/StatefulPartitionedCall!^dense_71/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????x?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_68/StatefulPartitionedCall.batch_normalization_68/StatefulPartitionedCall2`
.batch_normalization_69/StatefulPartitionedCall.batch_normalization_69/StatefulPartitionedCall2`
.batch_normalization_70/StatefulPartitionedCall.batch_normalization_70/StatefulPartitionedCall2`
.batch_normalization_71/StatefulPartitionedCall.batch_normalization_71/StatefulPartitionedCall2F
!conv2d_68/StatefulPartitionedCall!conv2d_68/StatefulPartitionedCall2F
!conv2d_69/StatefulPartitionedCall!conv2d_69/StatefulPartitionedCall2F
!conv2d_70/StatefulPartitionedCall!conv2d_70/StatefulPartitionedCall2F
!conv2d_71/StatefulPartitionedCall!conv2d_71/StatefulPartitionedCall2D
 dense_68/StatefulPartitionedCall dense_68/StatefulPartitionedCall2D
 dense_69/StatefulPartitionedCall dense_69/StatefulPartitionedCall2D
 dense_70/StatefulPartitionedCall dense_70/StatefulPartitionedCall2D
 dense_71/StatefulPartitionedCall dense_71/StatefulPartitionedCall:X T
0
_output_shapes
:?????????x?
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_68_layer_call_and_return_conditional_losses_329964

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_69_layer_call_and_return_conditional_losses_328176

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
E__inference_conv2d_69_layer_call_and_return_conditional_losses_330011

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????(*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????(X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????(i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????(w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????<P: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????<P
 
_user_specified_nameinputs
?
e
G__inference_dropout_120_layer_call_and_return_conditional_losses_330088

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????(c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????("!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????(:W S
/
_output_shapes
:?????????(
 
_user_specified_nameinputs
?
e
G__inference_dropout_121_layer_call_and_return_conditional_losses_330197

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_71_layer_call_and_return_conditional_losses_330273

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
H
,__inference_dropout_125_layer_call_fn_330448

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_125_layer_call_and_return_conditional_losses_328563`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_conv2d_70_layer_call_fn_330109

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_conv2d_70_layer_call_and_return_conditional_losses_328430w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????(: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????(
 
_user_specified_nameinputs
?	
f
G__inference_dropout_125_layer_call_and_return_conditional_losses_328680

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
D__inference_dense_70_layer_call_and_return_conditional_losses_330443

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)__inference_dense_70_layer_call_fn_330432

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_70_layer_call_and_return_conditional_losses_328552o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
E__inference_conv2d_68_layer_call_and_return_conditional_losses_328364

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<P*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????<PX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????<Pi
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????<Pw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????x?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????x?
 
_user_specified_nameinputs
?

?
D__inference_dense_70_layer_call_and_return_conditional_losses_328552

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)__inference_dense_71_layer_call_fn_330479

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_71_layer_call_and_return_conditional_losses_328576o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
R__inference_batch_normalization_71_layer_call_and_return_conditional_losses_328335

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identity??AssignNewValue?AssignNewValue_1?FusedBatchNormV3/ReadVariableOp?!FusedBatchNormV3/ReadVariableOp_1?ReadVariableOp?ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
exponential_avg_factor%
?#<?
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0?
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
?
.__inference_sequential_17_layer_call_fn_329192
conv2d_68_input!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:$

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:

unknown_23:	? 

unknown_24: 

unknown_25: 

unknown_26:

unknown_27:

unknown_28:

unknown_29:

unknown_30:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_68_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*:
_read_only_resource_inputs
	
 *0
config_proto 

CPU

GPU2*0J 8? *R
fMRK
I__inference_sequential_17_layer_call_and_return_conditional_losses_329056o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*o
_input_shapes^
\:?????????x?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
0
_output_shapes
:?????????x?
)
_user_specified_nameconv2d_68_input
?
?
)__inference_dense_69_layer_call_fn_330385

inputs
unknown: 
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_69_layer_call_and_return_conditional_losses_328528o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

f
G__inference_dropout_121_layer_call_and_return_conditional_losses_328818

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
H
,__inference_dropout_122_layer_call_fn_330296

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????
* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dropout_122_layer_call_and_return_conditional_losses_328483h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????
:W S
/
_output_shapes
:?????????

 
_user_specified_nameinputs
?	
f
G__inference_dropout_124_layer_call_and_return_conditional_losses_330423

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
T
conv2d_68_inputA
!serving_default_conv2d_68_input:0?????????x?<
dense_710
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer-8

layer_with_weights-6

layer-9
layer_with_weights-7
layer-10
layer-11
layer-12
layer_with_weights-8
layer-13
layer-14
layer_with_weights-9
layer-15
layer-16
layer_with_weights-10
layer-17
layer-18
layer_with_weights-11
layer-19
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
?

kernel
bias
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses"
_tf_keras_layer
?
&axis
	'gamma
(beta
)moving_mean
*moving_variance
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses"
_tf_keras_layer
?
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5_random_generator
6__call__
*7&call_and_return_all_conditional_losses"
_tf_keras_layer
?

8kernel
9bias
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
@axis
	Agamma
Bbeta
Cmoving_mean
Dmoving_variance
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses"
_tf_keras_layer
?
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O_random_generator
P__call__
*Q&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Rkernel
Sbias
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses"
_tf_keras_layer
?
Zaxis
	[gamma
\beta
]moving_mean
^moving_variance
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses"
_tf_keras_layer
?
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i_random_generator
j__call__
*k&call_and_return_all_conditional_losses"
_tf_keras_layer
?

lkernel
mbias
n	variables
otrainable_variables
pregularization_losses
q	keras_api
r__call__
*s&call_and_return_all_conditional_losses"
_tf_keras_layer
?
taxis
	ugamma
vbeta
wmoving_mean
xmoving_variance
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
}__call__
*~&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	variables
?trainable_variables
?regularization_losses
?	keras_api
?_random_generator
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?_random_generator
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?_random_generator
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?_random_generator
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?kernel
	?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	?iter

?decay
?learning_rate
?momentum
?rho
rms?
rms?
'rms?
(rms?
8rms?
9rms?
Arms?
Brms?
Rrms?
Srms?
[rms?
\rms?
lrms?
mrms?
urms?
vrms??rms??rms??rms??rms??rms??rms??rms??rms?"
	optimizer
?
0
1
'2
(3
)4
*5
86
97
A8
B9
C10
D11
R12
S13
[14
\15
]16
^17
l18
m19
u20
v21
w22
x23
?24
?25
?26
?27
?28
?29
?30
?31"
trackable_list_wrapper
?
0
1
'2
(3
84
95
A6
B7
R8
S9
[10
\11
l12
m13
u14
v15
?16
?17
?18
?19
?20
?21
?22
?23"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
.__inference_sequential_17_layer_call_fn_328650
.__inference_sequential_17_layer_call_fn_329443
.__inference_sequential_17_layer_call_fn_329512
.__inference_sequential_17_layer_call_fn_329192?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
I__inference_sequential_17_layer_call_and_return_conditional_losses_329637
I__inference_sequential_17_layer_call_and_return_conditional_losses_329811
I__inference_sequential_17_layer_call_and_return_conditional_losses_329280
I__inference_sequential_17_layer_call_and_return_conditional_losses_329368?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
!__inference__wrapped_model_328090conv2d_68_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
-
?serving_default"
signature_map
*:(2conv2d_68/kernel
:2conv2d_68/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
?2?
*__inference_conv2d_68_layer_call_fn_329891?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_conv2d_68_layer_call_and_return_conditional_losses_329902?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
*:(2batch_normalization_68/gamma
):'2batch_normalization_68/beta
2:0 (2"batch_normalization_68/moving_mean
6:4 (2&batch_normalization_68/moving_variance
<
'0
(1
)2
*3"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
?2?
7__inference_batch_normalization_68_layer_call_fn_329915
7__inference_batch_normalization_68_layer_call_fn_329928?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
R__inference_batch_normalization_68_layer_call_and_return_conditional_losses_329946
R__inference_batch_normalization_68_layer_call_and_return_conditional_losses_329964?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
1	variables
2trainable_variables
3regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
,__inference_dropout_119_layer_call_fn_329969
,__inference_dropout_119_layer_call_fn_329974?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_dropout_119_layer_call_and_return_conditional_losses_329979
G__inference_dropout_119_layer_call_and_return_conditional_losses_329991?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
*:(2conv2d_69/kernel
:2conv2d_69/bias
.
80
91"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
?2?
*__inference_conv2d_69_layer_call_fn_330000?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_conv2d_69_layer_call_and_return_conditional_losses_330011?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
*:(2batch_normalization_69/gamma
):'2batch_normalization_69/beta
2:0 (2"batch_normalization_69/moving_mean
6:4 (2&batch_normalization_69/moving_variance
<
A0
B1
C2
D3"
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
?2?
7__inference_batch_normalization_69_layer_call_fn_330024
7__inference_batch_normalization_69_layer_call_fn_330037?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
R__inference_batch_normalization_69_layer_call_and_return_conditional_losses_330055
R__inference_batch_normalization_69_layer_call_and_return_conditional_losses_330073?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
,__inference_dropout_120_layer_call_fn_330078
,__inference_dropout_120_layer_call_fn_330083?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_dropout_120_layer_call_and_return_conditional_losses_330088
G__inference_dropout_120_layer_call_and_return_conditional_losses_330100?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
*:(2conv2d_70/kernel
:2conv2d_70/bias
.
R0
S1"
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses"
_generic_user_object
?2?
*__inference_conv2d_70_layer_call_fn_330109?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_conv2d_70_layer_call_and_return_conditional_losses_330120?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
*:(2batch_normalization_70/gamma
):'2batch_normalization_70/beta
2:0 (2"batch_normalization_70/moving_mean
6:4 (2&batch_normalization_70/moving_variance
<
[0
\1
]2
^3"
trackable_list_wrapper
.
[0
\1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
?2?
7__inference_batch_normalization_70_layer_call_fn_330133
7__inference_batch_normalization_70_layer_call_fn_330146?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
R__inference_batch_normalization_70_layer_call_and_return_conditional_losses_330164
R__inference_batch_normalization_70_layer_call_and_return_conditional_losses_330182?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
e	variables
ftrainable_variables
gregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
,__inference_dropout_121_layer_call_fn_330187
,__inference_dropout_121_layer_call_fn_330192?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_dropout_121_layer_call_and_return_conditional_losses_330197
G__inference_dropout_121_layer_call_and_return_conditional_losses_330209?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
*:(2conv2d_71/kernel
:2conv2d_71/bias
.
l0
m1"
trackable_list_wrapper
.
l0
m1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
n	variables
otrainable_variables
pregularization_losses
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses"
_generic_user_object
?2?
*__inference_conv2d_71_layer_call_fn_330218?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_conv2d_71_layer_call_and_return_conditional_losses_330229?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
*:(2batch_normalization_71/gamma
):'2batch_normalization_71/beta
2:0 (2"batch_normalization_71/moving_mean
6:4 (2&batch_normalization_71/moving_variance
<
u0
v1
w2
x3"
trackable_list_wrapper
.
u0
v1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
y	variables
ztrainable_variables
{regularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses"
_generic_user_object
?2?
7__inference_batch_normalization_71_layer_call_fn_330242
7__inference_batch_normalization_71_layer_call_fn_330255?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
R__inference_batch_normalization_71_layer_call_and_return_conditional_losses_330273
R__inference_batch_normalization_71_layer_call_and_return_conditional_losses_330291?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
,__inference_dropout_122_layer_call_fn_330296
,__inference_dropout_122_layer_call_fn_330301?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_dropout_122_layer_call_and_return_conditional_losses_330306
G__inference_dropout_122_layer_call_and_return_conditional_losses_330318?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
+__inference_flatten_17_layer_call_fn_330323?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_flatten_17_layer_call_and_return_conditional_losses_330329?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
": 	? 2dense_68/kernel
: 2dense_68/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_dense_68_layer_call_fn_330338?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_68_layer_call_and_return_conditional_losses_330349?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
,__inference_dropout_123_layer_call_fn_330354
,__inference_dropout_123_layer_call_fn_330359?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_dropout_123_layer_call_and_return_conditional_losses_330364
G__inference_dropout_123_layer_call_and_return_conditional_losses_330376?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
!: 2dense_69/kernel
:2dense_69/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_dense_69_layer_call_fn_330385?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_69_layer_call_and_return_conditional_losses_330396?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
,__inference_dropout_124_layer_call_fn_330401
,__inference_dropout_124_layer_call_fn_330406?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_dropout_124_layer_call_and_return_conditional_losses_330411
G__inference_dropout_124_layer_call_and_return_conditional_losses_330423?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
!:2dense_70/kernel
:2dense_70/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_dense_70_layer_call_fn_330432?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_70_layer_call_and_return_conditional_losses_330443?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
,__inference_dropout_125_layer_call_fn_330448
,__inference_dropout_125_layer_call_fn_330453?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_dropout_125_layer_call_and_return_conditional_losses_330458
G__inference_dropout_125_layer_call_and_return_conditional_losses_330470?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
!:2dense_71/kernel
:2dense_71/bias
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_dense_71_layer_call_fn_330479?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_71_layer_call_and_return_conditional_losses_330490?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
:	 (2RMSprop/iter
: (2RMSprop/decay
: (2RMSprop/learning_rate
: (2RMSprop/momentum
: (2RMSprop/rho
X
)0
*1
C2
D3
]4
^5
w6
x7"
trackable_list_wrapper
?
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
11
12
13
14
15
16
17
18
19"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
$__inference_signature_wrapper_329882conv2d_68_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
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
.
)0
*1"
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
.
C0
D1"
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
.
]0
^1"
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
.
w0
x1"
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
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
4:22RMSprop/conv2d_68/kernel/rms
&:$2RMSprop/conv2d_68/bias/rms
4:22(RMSprop/batch_normalization_68/gamma/rms
3:12'RMSprop/batch_normalization_68/beta/rms
4:22RMSprop/conv2d_69/kernel/rms
&:$2RMSprop/conv2d_69/bias/rms
4:22(RMSprop/batch_normalization_69/gamma/rms
3:12'RMSprop/batch_normalization_69/beta/rms
4:22RMSprop/conv2d_70/kernel/rms
&:$2RMSprop/conv2d_70/bias/rms
4:22(RMSprop/batch_normalization_70/gamma/rms
3:12'RMSprop/batch_normalization_70/beta/rms
4:22RMSprop/conv2d_71/kernel/rms
&:$2RMSprop/conv2d_71/bias/rms
4:22(RMSprop/batch_normalization_71/gamma/rms
3:12'RMSprop/batch_normalization_71/beta/rms
,:*	? 2RMSprop/dense_68/kernel/rms
%:# 2RMSprop/dense_68/bias/rms
+:) 2RMSprop/dense_69/kernel/rms
%:#2RMSprop/dense_69/bias/rms
+:)2RMSprop/dense_70/kernel/rms
%:#2RMSprop/dense_70/bias/rms
+:)2RMSprop/dense_71/kernel/rms
%:#2RMSprop/dense_71/bias/rms?
!__inference__wrapped_model_328090?('()*89ABCDRS[\]^lmuvwx????????A?>
7?4
2?/
conv2d_68_input?????????x?
? "3?0
.
dense_71"?
dense_71??????????
R__inference_batch_normalization_68_layer_call_and_return_conditional_losses_329946?'()*M?J
C?@
:?7
inputs+???????????????????????????
p 
? "??<
5?2
0+???????????????????????????
? ?
R__inference_batch_normalization_68_layer_call_and_return_conditional_losses_329964?'()*M?J
C?@
:?7
inputs+???????????????????????????
p
? "??<
5?2
0+???????????????????????????
? ?
7__inference_batch_normalization_68_layer_call_fn_329915?'()*M?J
C?@
:?7
inputs+???????????????????????????
p 
? "2?/+????????????????????????????
7__inference_batch_normalization_68_layer_call_fn_329928?'()*M?J
C?@
:?7
inputs+???????????????????????????
p
? "2?/+????????????????????????????
R__inference_batch_normalization_69_layer_call_and_return_conditional_losses_330055?ABCDM?J
C?@
:?7
inputs+???????????????????????????
p 
? "??<
5?2
0+???????????????????????????
? ?
R__inference_batch_normalization_69_layer_call_and_return_conditional_losses_330073?ABCDM?J
C?@
:?7
inputs+???????????????????????????
p
? "??<
5?2
0+???????????????????????????
? ?
7__inference_batch_normalization_69_layer_call_fn_330024?ABCDM?J
C?@
:?7
inputs+???????????????????????????
p 
? "2?/+????????????????????????????
7__inference_batch_normalization_69_layer_call_fn_330037?ABCDM?J
C?@
:?7
inputs+???????????????????????????
p
? "2?/+????????????????????????????
R__inference_batch_normalization_70_layer_call_and_return_conditional_losses_330164?[\]^M?J
C?@
:?7
inputs+???????????????????????????
p 
? "??<
5?2
0+???????????????????????????
? ?
R__inference_batch_normalization_70_layer_call_and_return_conditional_losses_330182?[\]^M?J
C?@
:?7
inputs+???????????????????????????
p
? "??<
5?2
0+???????????????????????????
? ?
7__inference_batch_normalization_70_layer_call_fn_330133?[\]^M?J
C?@
:?7
inputs+???????????????????????????
p 
? "2?/+????????????????????????????
7__inference_batch_normalization_70_layer_call_fn_330146?[\]^M?J
C?@
:?7
inputs+???????????????????????????
p
? "2?/+????????????????????????????
R__inference_batch_normalization_71_layer_call_and_return_conditional_losses_330273?uvwxM?J
C?@
:?7
inputs+???????????????????????????
p 
? "??<
5?2
0+???????????????????????????
? ?
R__inference_batch_normalization_71_layer_call_and_return_conditional_losses_330291?uvwxM?J
C?@
:?7
inputs+???????????????????????????
p
? "??<
5?2
0+???????????????????????????
? ?
7__inference_batch_normalization_71_layer_call_fn_330242?uvwxM?J
C?@
:?7
inputs+???????????????????????????
p 
? "2?/+????????????????????????????
7__inference_batch_normalization_71_layer_call_fn_330255?uvwxM?J
C?@
:?7
inputs+???????????????????????????
p
? "2?/+????????????????????????????
E__inference_conv2d_68_layer_call_and_return_conditional_losses_329902m8?5
.?+
)?&
inputs?????????x?
? "-?*
#? 
0?????????<P
? ?
*__inference_conv2d_68_layer_call_fn_329891`8?5
.?+
)?&
inputs?????????x?
? " ??????????<P?
E__inference_conv2d_69_layer_call_and_return_conditional_losses_330011l897?4
-?*
(?%
inputs?????????<P
? "-?*
#? 
0?????????(
? ?
*__inference_conv2d_69_layer_call_fn_330000_897?4
-?*
(?%
inputs?????????<P
? " ??????????(?
E__inference_conv2d_70_layer_call_and_return_conditional_losses_330120lRS7?4
-?*
(?%
inputs?????????(
? "-?*
#? 
0?????????
? ?
*__inference_conv2d_70_layer_call_fn_330109_RS7?4
-?*
(?%
inputs?????????(
? " ???????????
E__inference_conv2d_71_layer_call_and_return_conditional_losses_330229llm7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0?????????

? ?
*__inference_conv2d_71_layer_call_fn_330218_lm7?4
-?*
(?%
inputs?????????
? " ??????????
?
D__inference_dense_68_layer_call_and_return_conditional_losses_330349_??0?-
&?#
!?
inputs??????????
? "%?"
?
0????????? 
? 
)__inference_dense_68_layer_call_fn_330338R??0?-
&?#
!?
inputs??????????
? "?????????? ?
D__inference_dense_69_layer_call_and_return_conditional_losses_330396^??/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????
? ~
)__inference_dense_69_layer_call_fn_330385Q??/?,
%?"
 ?
inputs????????? 
? "???????????
D__inference_dense_70_layer_call_and_return_conditional_losses_330443^??/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? ~
)__inference_dense_70_layer_call_fn_330432Q??/?,
%?"
 ?
inputs?????????
? "???????????
D__inference_dense_71_layer_call_and_return_conditional_losses_330490^??/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? ~
)__inference_dense_71_layer_call_fn_330479Q??/?,
%?"
 ?
inputs?????????
? "???????????
G__inference_dropout_119_layer_call_and_return_conditional_losses_329979l;?8
1?.
(?%
inputs?????????<P
p 
? "-?*
#? 
0?????????<P
? ?
G__inference_dropout_119_layer_call_and_return_conditional_losses_329991l;?8
1?.
(?%
inputs?????????<P
p
? "-?*
#? 
0?????????<P
? ?
,__inference_dropout_119_layer_call_fn_329969_;?8
1?.
(?%
inputs?????????<P
p 
? " ??????????<P?
,__inference_dropout_119_layer_call_fn_329974_;?8
1?.
(?%
inputs?????????<P
p
? " ??????????<P?
G__inference_dropout_120_layer_call_and_return_conditional_losses_330088l;?8
1?.
(?%
inputs?????????(
p 
? "-?*
#? 
0?????????(
? ?
G__inference_dropout_120_layer_call_and_return_conditional_losses_330100l;?8
1?.
(?%
inputs?????????(
p
? "-?*
#? 
0?????????(
? ?
,__inference_dropout_120_layer_call_fn_330078_;?8
1?.
(?%
inputs?????????(
p 
? " ??????????(?
,__inference_dropout_120_layer_call_fn_330083_;?8
1?.
(?%
inputs?????????(
p
? " ??????????(?
G__inference_dropout_121_layer_call_and_return_conditional_losses_330197l;?8
1?.
(?%
inputs?????????
p 
? "-?*
#? 
0?????????
? ?
G__inference_dropout_121_layer_call_and_return_conditional_losses_330209l;?8
1?.
(?%
inputs?????????
p
? "-?*
#? 
0?????????
? ?
,__inference_dropout_121_layer_call_fn_330187_;?8
1?.
(?%
inputs?????????
p 
? " ???????????
,__inference_dropout_121_layer_call_fn_330192_;?8
1?.
(?%
inputs?????????
p
? " ???????????
G__inference_dropout_122_layer_call_and_return_conditional_losses_330306l;?8
1?.
(?%
inputs?????????

p 
? "-?*
#? 
0?????????

? ?
G__inference_dropout_122_layer_call_and_return_conditional_losses_330318l;?8
1?.
(?%
inputs?????????

p
? "-?*
#? 
0?????????

? ?
,__inference_dropout_122_layer_call_fn_330296_;?8
1?.
(?%
inputs?????????

p 
? " ??????????
?
,__inference_dropout_122_layer_call_fn_330301_;?8
1?.
(?%
inputs?????????

p
? " ??????????
?
G__inference_dropout_123_layer_call_and_return_conditional_losses_330364\3?0
)?&
 ?
inputs????????? 
p 
? "%?"
?
0????????? 
? ?
G__inference_dropout_123_layer_call_and_return_conditional_losses_330376\3?0
)?&
 ?
inputs????????? 
p
? "%?"
?
0????????? 
? 
,__inference_dropout_123_layer_call_fn_330354O3?0
)?&
 ?
inputs????????? 
p 
? "?????????? 
,__inference_dropout_123_layer_call_fn_330359O3?0
)?&
 ?
inputs????????? 
p
? "?????????? ?
G__inference_dropout_124_layer_call_and_return_conditional_losses_330411\3?0
)?&
 ?
inputs?????????
p 
? "%?"
?
0?????????
? ?
G__inference_dropout_124_layer_call_and_return_conditional_losses_330423\3?0
)?&
 ?
inputs?????????
p
? "%?"
?
0?????????
? 
,__inference_dropout_124_layer_call_fn_330401O3?0
)?&
 ?
inputs?????????
p 
? "??????????
,__inference_dropout_124_layer_call_fn_330406O3?0
)?&
 ?
inputs?????????
p
? "???????????
G__inference_dropout_125_layer_call_and_return_conditional_losses_330458\3?0
)?&
 ?
inputs?????????
p 
? "%?"
?
0?????????
? ?
G__inference_dropout_125_layer_call_and_return_conditional_losses_330470\3?0
)?&
 ?
inputs?????????
p
? "%?"
?
0?????????
? 
,__inference_dropout_125_layer_call_fn_330448O3?0
)?&
 ?
inputs?????????
p 
? "??????????
,__inference_dropout_125_layer_call_fn_330453O3?0
)?&
 ?
inputs?????????
p
? "???????????
F__inference_flatten_17_layer_call_and_return_conditional_losses_330329a7?4
-?*
(?%
inputs?????????

? "&?#
?
0??????????
? ?
+__inference_flatten_17_layer_call_fn_330323T7?4
-?*
(?%
inputs?????????

? "????????????
I__inference_sequential_17_layer_call_and_return_conditional_losses_329280?('()*89ABCDRS[\]^lmuvwx????????I?F
??<
2?/
conv2d_68_input?????????x?
p 

 
? "%?"
?
0?????????
? ?
I__inference_sequential_17_layer_call_and_return_conditional_losses_329368?('()*89ABCDRS[\]^lmuvwx????????I?F
??<
2?/
conv2d_68_input?????????x?
p

 
? "%?"
?
0?????????
? ?
I__inference_sequential_17_layer_call_and_return_conditional_losses_329637?('()*89ABCDRS[\]^lmuvwx????????@?=
6?3
)?&
inputs?????????x?
p 

 
? "%?"
?
0?????????
? ?
I__inference_sequential_17_layer_call_and_return_conditional_losses_329811?('()*89ABCDRS[\]^lmuvwx????????@?=
6?3
)?&
inputs?????????x?
p

 
? "%?"
?
0?????????
? ?
.__inference_sequential_17_layer_call_fn_328650?('()*89ABCDRS[\]^lmuvwx????????I?F
??<
2?/
conv2d_68_input?????????x?
p 

 
? "???????????
.__inference_sequential_17_layer_call_fn_329192?('()*89ABCDRS[\]^lmuvwx????????I?F
??<
2?/
conv2d_68_input?????????x?
p

 
? "???????????
.__inference_sequential_17_layer_call_fn_329443?('()*89ABCDRS[\]^lmuvwx????????@?=
6?3
)?&
inputs?????????x?
p 

 
? "???????????
.__inference_sequential_17_layer_call_fn_329512?('()*89ABCDRS[\]^lmuvwx????????@?=
6?3
)?&
inputs?????????x?
p

 
? "???????????
$__inference_signature_wrapper_329882?('()*89ABCDRS[\]^lmuvwx????????T?Q
? 
J?G
E
conv2d_68_input2?/
conv2d_68_input?????????x?"3?0
.
dense_71"?
dense_71?????????