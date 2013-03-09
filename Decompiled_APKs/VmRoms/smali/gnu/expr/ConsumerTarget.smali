.class public Lgnu/expr/ConsumerTarget;
.super Lgnu/expr/Target;
.source "ConsumerTarget.java"


# instance fields
.field consumer:Lgnu/bytecode/Variable;

.field isContextTarget:Z


# direct methods
.method public constructor <init>(Lgnu/bytecode/Variable;)V
    .locals 0
    .parameter "consumer"

    .prologue
    .line 18
    invoke-direct {p0}, Lgnu/expr/Target;-><init>()V

    .line 19
    iput-object p1, p0, Lgnu/expr/ConsumerTarget;->consumer:Lgnu/bytecode/Variable;

    .line 20
    return-void
.end method

.method public static compileUsingConsumer(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 4
    .parameter "exp"
    .parameter "comp"
    .parameter "target"

    .prologue
    const/4 v3, 0x0

    .line 47
    instance-of v1, p2, Lgnu/expr/ConsumerTarget;

    if-nez v1, :cond_0

    instance-of v1, p2, Lgnu/expr/IgnoreTarget;

    if-eqz v1, :cond_1

    .line 48
    :cond_0
    invoke-virtual {p0, p1, p2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 56
    :goto_0
    return-void

    .line 51
    :cond_1
    sget-object v0, Lgnu/expr/Compilation;->typeValues:Lgnu/bytecode/ClassType;

    .line 52
    .local v0, typeValues:Lgnu/bytecode/ClassType;
    const-string v1, "make"

    invoke-virtual {v0, v1, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v1

    const-string v2, "canonicalize"

    invoke-virtual {v0, v2, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    invoke-static {p0, p1, p2, v1, v2}, Lgnu/expr/ConsumerTarget;->compileUsingConsumer(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/bytecode/Method;Lgnu/bytecode/Method;)V

    goto :goto_0
.end method

.method public static compileUsingConsumer(Lgnu/expr/Expression;Lgnu/expr/Compilation;Lgnu/expr/Target;Lgnu/bytecode/Method;Lgnu/bytecode/Method;)V
    .locals 8
    .parameter "exp"
    .parameter "comp"
    .parameter "target"
    .parameter "makeMethod"
    .parameter "resultMethod"

    .prologue
    .line 63
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 64
    .local v1, code:Lgnu/bytecode/CodeAttr;
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    move-result-object v5

    .line 66
    .local v5, scope:Lgnu/bytecode/Scope;
    invoke-virtual {p3}, Lgnu/bytecode/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "<init>"

    if-ne v6, v7, :cond_1

    .line 68
    invoke-virtual {p3}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v0

    .line 69
    .local v0, cltype:Lgnu/bytecode/ClassType;
    move-object v4, v0

    .line 70
    .local v4, ctype:Lgnu/bytecode/Type;
    invoke-virtual {v1, v0}, Lgnu/bytecode/CodeAttr;->emitNew(Lgnu/bytecode/ClassType;)V

    .line 71
    invoke-virtual {v1, v4}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 72
    invoke-virtual {v1, p3}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 79
    .end local v0           #cltype:Lgnu/bytecode/ClassType;
    :goto_0
    const/4 v6, 0x0

    invoke-virtual {v5, v1, v4, v6}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v2

    .line 80
    .local v2, consumer:Lgnu/bytecode/Variable;
    new-instance v3, Lgnu/expr/ConsumerTarget;

    invoke-direct {v3, v2}, Lgnu/expr/ConsumerTarget;-><init>(Lgnu/bytecode/Variable;)V

    .line 81
    .local v3, ctarget:Lgnu/expr/ConsumerTarget;
    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 82
    invoke-virtual {p0, p1, v3}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 83
    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 84
    if-eqz p4, :cond_0

    .line 85
    invoke-virtual {v1, p4}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 86
    :cond_0
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    .line 87
    if-nez p4, :cond_2

    move-object v6, v4

    :goto_1
    invoke-virtual {p2, p1, v6}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 89
    return-void

    .line 76
    .end local v2           #consumer:Lgnu/bytecode/Variable;
    .end local v3           #ctarget:Lgnu/expr/ConsumerTarget;
    .end local v4           #ctype:Lgnu/bytecode/Type;
    :cond_1
    invoke-virtual {p3}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v4

    .line 77
    .restart local v4       #ctype:Lgnu/bytecode/Type;
    invoke-virtual {v1, p3}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_0

    .line 87
    .restart local v2       #consumer:Lgnu/bytecode/Variable;
    .restart local v3       #ctarget:Lgnu/expr/ConsumerTarget;
    :cond_2
    invoke-virtual {p4}, Lgnu/bytecode/Method;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v6

    goto :goto_1
.end method

.method public static makeContextTarget(Lgnu/expr/Compilation;)Lgnu/expr/Target;
    .locals 6
    .parameter "comp"

    .prologue
    .line 30
    invoke-virtual {p0}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 31
    .local v0, code:Lgnu/bytecode/CodeAttr;
    invoke-virtual {p0}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 32
    sget-object v4, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    const-string v5, "consumer"

    invoke-virtual {v4, v5}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v4

    invoke-virtual {v0, v4}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 34
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->getCurrentScope()Lgnu/bytecode/Scope;

    move-result-object v2

    .line 35
    .local v2, scope:Lgnu/bytecode/Scope;
    sget-object v4, Lgnu/expr/Compilation;->typeConsumer:Lgnu/bytecode/ClassType;

    const-string v5, "$result"

    invoke-virtual {v2, v0, v4, v5}, Lgnu/bytecode/Scope;->addVariable(Lgnu/bytecode/CodeAttr;Lgnu/bytecode/Type;Ljava/lang/String;)Lgnu/bytecode/Variable;

    move-result-object v1

    .line 37
    .local v1, result:Lgnu/bytecode/Variable;
    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 38
    new-instance v3, Lgnu/expr/ConsumerTarget;

    invoke-direct {v3, v1}, Lgnu/expr/ConsumerTarget;-><init>(Lgnu/bytecode/Variable;)V

    .line 39
    .local v3, target:Lgnu/expr/ConsumerTarget;
    const/4 v4, 0x1

    iput-boolean v4, v3, Lgnu/expr/ConsumerTarget;->isContextTarget:Z

    .line 40
    return-object v3
.end method


# virtual methods
.method public compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V
    .locals 1
    .parameter "comp"
    .parameter "stackType"

    .prologue
    .line 94
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lgnu/expr/ConsumerTarget;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;I)V

    .line 95
    return-void
.end method

.method compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;I)V
    .locals 11
    .parameter "comp"
    .parameter "stackType"
    .parameter "consumerPushed"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 105
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 106
    .local v0, code:Lgnu/bytecode/CodeAttr;
    const/4 v5, 0x0

    .line 107
    .local v5, methodName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 108
    .local v2, method:Lgnu/bytecode/Method;
    const/4 v3, 0x0

    .line 109
    .local v3, methodArg:Lgnu/bytecode/Type;
    const/4 v1, 0x0

    .line 110
    .local v1, islong:Z
    invoke-virtual {p2}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object p2

    .line 112
    instance-of v8, p2, Lgnu/bytecode/PrimType;

    if-eqz v8, :cond_3

    .line 114
    invoke-virtual {p2}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 115
    .local v6, sig:C
    sparse-switch v6, :sswitch_data_0

    .line 170
    :goto_0
    if-ltz p3, :cond_7

    .line 186
    :goto_1
    if-nez v2, :cond_0

    if-eqz v5, :cond_0

    .line 188
    new-array v4, v9, [Lgnu/bytecode/Type;

    aput-object v3, v4, v10

    .line 189
    .local v4, methodArgs:[Lgnu/bytecode/Type;
    sget-object v8, Lgnu/expr/Compilation;->typeConsumer:Lgnu/bytecode/ClassType;

    invoke-virtual {v8, v5, v4}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;[Lgnu/bytecode/Type;)Lgnu/bytecode/Method;

    move-result-object v2

    .line 192
    .end local v4           #methodArgs:[Lgnu/bytecode/Type;
    :cond_0
    if-eqz v2, :cond_1

    .line 193
    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitInvokeInterface(Lgnu/bytecode/Method;)V

    .line 194
    :cond_1
    const/16 v8, 0x43

    if-ne v6, v8, :cond_2

    .line 195
    invoke-virtual {v0, v9}, Lgnu/bytecode/CodeAttr;->emitPop(I)V

    .line 196
    :cond_2
    :goto_2
    :sswitch_0
    return-void

    .line 118
    :sswitch_1
    const-string v5, "writeInt"

    .line 119
    sget-object v3, Lgnu/bytecode/Type;->intType:Lgnu/bytecode/PrimType;

    .line 120
    goto :goto_0

    .line 122
    :sswitch_2
    const-string v5, "writeLong"

    .line 123
    sget-object v3, Lgnu/bytecode/Type;->longType:Lgnu/bytecode/PrimType;

    .line 124
    const/4 v1, 0x1

    .line 125
    goto :goto_0

    .line 127
    :sswitch_3
    const-string v5, "writeFloat"

    .line 128
    sget-object v3, Lgnu/bytecode/Type;->floatType:Lgnu/bytecode/PrimType;

    .line 129
    goto :goto_0

    .line 131
    :sswitch_4
    const-string v5, "writeDouble"

    .line 132
    sget-object v3, Lgnu/bytecode/Type;->doubleType:Lgnu/bytecode/PrimType;

    .line 133
    const/4 v1, 0x1

    .line 134
    goto :goto_0

    .line 137
    :sswitch_5
    const-string v5, "append"

    .line 138
    sget-object v3, Lgnu/bytecode/Type;->charType:Lgnu/bytecode/PrimType;

    .line 143
    goto :goto_0

    .line 145
    :sswitch_6
    const-string v5, "writeBoolean"

    .line 146
    sget-object v3, Lgnu/bytecode/Type;->booleanType:Lgnu/bytecode/PrimType;

    .line 147
    goto :goto_0

    .line 153
    .end local v6           #sig:C
    :cond_3
    const/4 v6, 0x0

    .line 154
    .restart local v6       #sig:C
    if-eq p3, v9, :cond_4

    invoke-static {p2}, Lgnu/kawa/reflect/OccurrenceType;->itemCountIsOne(Lgnu/bytecode/Type;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 156
    :cond_4
    const-string v5, "writeObject"

    .line 157
    sget-object v3, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    goto :goto_0

    .line 161
    :cond_5
    sget-object v8, Lgnu/expr/Compilation;->typeValues:Lgnu/bytecode/ClassType;

    const-string v9, "writeValues"

    const/4 v10, 0x2

    invoke-virtual {v8, v9, v10}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    move-result-object v2

    .line 163
    iget-object v8, p0, Lgnu/expr/ConsumerTarget;->consumer:Lgnu/bytecode/Variable;

    invoke-virtual {v0, v8}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 164
    if-nez p3, :cond_6

    .line 165
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 166
    :cond_6
    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitInvokeStatic(Lgnu/bytecode/Method;)V

    goto :goto_2

    .line 172
    :cond_7
    if-eqz v1, :cond_8

    .line 174
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->pushScope()Lgnu/bytecode/Scope;

    .line 175
    invoke-virtual {v0, p2}, Lgnu/bytecode/CodeAttr;->addLocal(Lgnu/bytecode/Type;)Lgnu/bytecode/Variable;

    move-result-object v7

    .line 176
    .local v7, temp:Lgnu/bytecode/Variable;
    invoke-virtual {v0, v7}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    .line 177
    iget-object v8, p0, Lgnu/expr/ConsumerTarget;->consumer:Lgnu/bytecode/Variable;

    invoke-virtual {v0, v8}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 178
    invoke-virtual {v0, v7}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 179
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    goto :goto_1

    .line 183
    .end local v7           #temp:Lgnu/bytecode/Variable;
    :cond_8
    iget-object v8, p0, Lgnu/expr/ConsumerTarget;->consumer:Lgnu/bytecode/Variable;

    invoke-virtual {v0, v8}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 184
    invoke-virtual {v0}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    goto :goto_1

    .line 115
    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_1
        0x43 -> :sswitch_5
        0x44 -> :sswitch_4
        0x46 -> :sswitch_3
        0x49 -> :sswitch_1
        0x4a -> :sswitch_2
        0x53 -> :sswitch_1
        0x56 -> :sswitch_0
        0x5a -> :sswitch_6
    .end sparse-switch
.end method

.method public compileWrite(Lgnu/expr/Expression;Lgnu/expr/Compilation;)Z
    .locals 6
    .parameter "exp"
    .parameter "comp"

    .prologue
    const/4 v5, 0x1

    .line 200
    invoke-virtual {p1}, Lgnu/expr/Expression;->getType()Lgnu/bytecode/Type;

    move-result-object v1

    .line 201
    .local v1, stackType:Lgnu/bytecode/Type;
    invoke-virtual {v1}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v0

    .line 202
    .local v0, implType:Lgnu/bytecode/Type;
    instance-of v3, v0, Lgnu/bytecode/PrimType;

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lgnu/bytecode/Type;->isVoid()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-static {v0}, Lgnu/kawa/reflect/OccurrenceType;->itemCountIsOne(Lgnu/bytecode/Type;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 206
    :cond_1
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v3

    iget-object v4, p0, Lgnu/expr/ConsumerTarget;->consumer:Lgnu/bytecode/Variable;

    invoke-virtual {v3, v4}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 207
    invoke-static {v0}, Lgnu/expr/StackTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v2

    .line 208
    .local v2, starget:Lgnu/expr/Target;
    invoke-virtual {p1, p2, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 209
    invoke-virtual {p0, p2, v0, v5}, Lgnu/expr/ConsumerTarget;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;I)V

    move v3, v5

    .line 212
    .end local v2           #starget:Lgnu/expr/Target;
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getConsumerVariable()Lgnu/bytecode/Variable;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lgnu/expr/ConsumerTarget;->consumer:Lgnu/bytecode/Variable;

    return-object v0
.end method

.method public getType()Lgnu/bytecode/Type;
    .locals 1

    .prologue
    .line 215
    sget-object v0, Lgnu/expr/Compilation;->scmSequenceType:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public final isContextTarget()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lgnu/expr/ConsumerTarget;->isContextTarget:Z

    return v0
.end method
