.class public Lgnu/expr/ApplyExp;
.super Lgnu/expr/Expression;
.source "ApplyExp.java"


# static fields
.field public static final INLINE_IF_CONSTANT:I = 0x4

.field public static final MAY_CONTAIN_BACK_JUMP:I = 0x8

.field public static final TAILCALL:I = 0x2


# instance fields
.field args:[Lgnu/expr/Expression;

.field context:Lgnu/expr/LambdaExp;

.field func:Lgnu/expr/Expression;

.field public nextCall:Lgnu/expr/ApplyExp;

.field protected type:Lgnu/bytecode/Type;


# direct methods
.method public constructor <init>(Lgnu/bytecode/Method;[Lgnu/expr/Expression;)V
    .locals 2
    .parameter "m"
    .parameter "a"

    .prologue
    .line 51
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    .line 52
    new-instance v0, Lgnu/expr/QuoteExp;

    new-instance v1, Lgnu/expr/PrimProcedure;

    invoke-direct {v1, p1}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;)V

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    .line 53
    iput-object p2, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    .line 54
    return-void
.end method

.method public constructor <init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V
    .locals 0
    .parameter "f"
    .parameter "a"

    .prologue
    .line 46
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    iput-object p1, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    iput-object p2, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    return-void
.end method

.method public constructor <init>(Lgnu/mapping/Procedure;[Lgnu/expr/Expression;)V
    .locals 1
    .parameter "p"
    .parameter "a"

    .prologue
    .line 48
    invoke-direct {p0}, Lgnu/expr/Expression;-><init>()V

    new-instance v0, Lgnu/expr/QuoteExp;

    invoke-direct {v0, p1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    iput-object p2, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    return-void
.end method

.method public static asInlineable(Lgnu/mapping/Procedure;)Lgnu/expr/Inlineable;
    .locals 1
    .parameter "proc"

    .prologue
    .line 576
    instance-of v0, p0, Lgnu/expr/Inlineable;

    if-eqz v0, :cond_0

    .line 577
    check-cast p0, Lgnu/expr/Inlineable;

    .end local p0
    move-object v0, p0

    .line 578
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    sget-object v0, Lgnu/mapping/Procedure;->compilerKey:Lgnu/mapping/LazyPropertyKey;

    invoke-virtual {v0, p0}, Lgnu/mapping/LazyPropertyKey;->get(Lgnu/mapping/PropertySet;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lgnu/expr/Inlineable;

    move-object v0, p0

    goto :goto_0
.end method

.method public static compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 1
    .parameter "exp"
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;Z)V

    .line 117
    return-void
.end method

.method static compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;Z)V
    .locals 12
    .parameter "exp"
    .parameter "comp"
    .parameter "target"
    .parameter "checkInlineable"

    .prologue
    .line 122
    iget-object v1, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    array-length v1, v1

    .line 123
    .local v1, args_length:I
    iget-object v3, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    .line 124
    .local v3, exp_func:Lgnu/expr/Expression;
    const/4 v4, 0x0

    .line 125
    .local v4, func_lambda:Lgnu/expr/LambdaExp;
    const/4 v5, 0x0

    .line 126
    .local v5, func_name:Ljava/lang/String;
    const/4 v6, 0x0

    .line 127
    .local v6, owner:Lgnu/expr/Declaration;
    const/4 v8, 0x0

    .line 128
    .local v8, quotedValue:Ljava/lang/Object;
    instance-of v2, v3, Lgnu/expr/LambdaExp;

    if-eqz v2, :cond_0

    .line 130
    move-object v0, v3

    check-cast v0, Lgnu/expr/LambdaExp;

    move-object v2, v0

    .line 131
    .end local v4           #func_lambda:Lgnu/expr/LambdaExp;
    .local v2, func_lambda:Lgnu/expr/LambdaExp;
    invoke-virtual {v2}, Lgnu/expr/LambdaExp;->getName()Ljava/lang/String;

    move-result-object v4

    .line 132
    .end local v5           #func_name:Ljava/lang/String;
    .local v4, func_name:Ljava/lang/String;
    if-nez v4, :cond_2a

    .line 133
    const-string v4, "<lambda>"

    move-object v5, v6

    .end local v6           #owner:Lgnu/expr/Declaration;
    .local v5, owner:Lgnu/expr/Declaration;
    move-object v6, v8

    move-object v11, v4

    .end local v4           #func_name:Ljava/lang/String;
    .local v11, func_name:Ljava/lang/String;
    move-object v4, v2

    .end local v2           #func_lambda:Lgnu/expr/LambdaExp;
    .local v4, func_lambda:Lgnu/expr/LambdaExp;
    move-object v2, v11

    .line 163
    .end local v8           #quotedValue:Ljava/lang/Object;
    .end local v11           #func_name:Ljava/lang/String;
    .local v2, func_name:Ljava/lang/String;
    :goto_0
    if-eqz p3, :cond_6

    instance-of p3, v6, Lgnu/mapping/Procedure;

    .end local p3
    if-eqz p3, :cond_6

    .line 165
    move-object v0, v6

    check-cast v0, Lgnu/mapping/Procedure;

    move-object p3, v0

    .line 166
    .local p3, proc:Lgnu/mapping/Procedure;
    instance-of v2, p2, Lgnu/expr/IgnoreTarget;

    .end local v2           #func_name:Ljava/lang/String;
    if-eqz v2, :cond_4

    invoke-virtual {p3}, Lgnu/mapping/Procedure;->isSideEffectFree()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 168
    const/4 p3, 0x0

    .local p3, i:I
    :goto_1
    if-ge p3, v1, :cond_5

    .line 169
    iget-object v2, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    aget-object v2, v2, p3

    invoke-virtual {v2, p1, p2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 168
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 135
    .local v5, func_name:Ljava/lang/String;
    .restart local v6       #owner:Lgnu/expr/Declaration;
    .restart local v8       #quotedValue:Ljava/lang/Object;
    .local p3, checkInlineable:Z
    :cond_0
    instance-of v2, v3, Lgnu/expr/ReferenceExp;

    if-eqz v2, :cond_3

    .line 137
    move-object v0, v3

    check-cast v0, Lgnu/expr/ReferenceExp;

    move-object v6, v0

    .line 138
    .local v6, func_ref:Lgnu/expr/ReferenceExp;
    invoke-virtual {v6}, Lgnu/expr/ReferenceExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v7

    .line 139
    .local v7, owner:Lgnu/expr/Declaration;
    iget-object v2, v6, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    .line 141
    .local v2, func_decl:Lgnu/expr/Declaration;
    :goto_2
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, v2, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    instance-of v9, v9, Lgnu/expr/ReferenceExp;

    if-eqz v9, :cond_1

    .line 143
    iget-object v6, v2, Lgnu/expr/Declaration;->value:Lgnu/expr/Expression;

    .end local v6           #func_ref:Lgnu/expr/ReferenceExp;
    check-cast v6, Lgnu/expr/ReferenceExp;

    .line 144
    .restart local v6       #func_ref:Lgnu/expr/ReferenceExp;
    if-nez v7, :cond_1

    invoke-virtual {v2}, Lgnu/expr/Declaration;->needsContext()Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, v6, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    if-nez v9, :cond_2

    .line 149
    :cond_1
    const-wide/32 v9, 0x10000

    invoke-virtual {v2, v9, v10}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v6

    .end local v6           #func_ref:Lgnu/expr/ReferenceExp;
    if-nez v6, :cond_29

    .line 151
    invoke-virtual {v2}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v6

    .line 152
    .local v6, value:Lgnu/expr/Expression;
    invoke-virtual {v2}, Lgnu/expr/Declaration;->getName()Ljava/lang/String;

    move-result-object v5

    .line 153
    if-eqz v6, :cond_28

    instance-of v2, v6, Lgnu/expr/LambdaExp;

    .end local v2           #func_decl:Lgnu/expr/Declaration;
    if-eqz v2, :cond_28

    .line 154
    move-object v0, v6

    check-cast v0, Lgnu/expr/LambdaExp;

    move-object v2, v0

    .line 155
    .end local v4           #func_lambda:Lgnu/expr/LambdaExp;
    .local v2, func_lambda:Lgnu/expr/LambdaExp;
    :goto_3
    if-eqz v6, :cond_27

    instance-of v4, v6, Lgnu/expr/QuoteExp;

    if-eqz v4, :cond_27

    .line 156
    check-cast v6, Lgnu/expr/QuoteExp;

    .end local v6           #value:Lgnu/expr/Expression;
    invoke-virtual {v6}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v4

    .end local v8           #quotedValue:Ljava/lang/Object;
    .local v4, quotedValue:Ljava/lang/Object;
    move-object v11, v4

    .end local v4           #quotedValue:Ljava/lang/Object;
    .local v11, quotedValue:Ljava/lang/Object;
    move-object v4, v5

    .end local v5           #func_name:Ljava/lang/String;
    .local v4, func_name:Ljava/lang/String;
    move-object v5, v11

    .end local v11           #quotedValue:Ljava/lang/Object;
    .local v5, quotedValue:Ljava/lang/Object;
    :goto_4
    move-object v6, v5

    move-object v5, v7

    .end local v7           #owner:Lgnu/expr/Declaration;
    .local v5, owner:Lgnu/expr/Declaration;
    move-object v11, v4

    .end local v4           #func_name:Ljava/lang/String;
    .local v11, func_name:Ljava/lang/String;
    move-object v4, v2

    .end local v2           #func_lambda:Lgnu/expr/LambdaExp;
    .local v4, func_lambda:Lgnu/expr/LambdaExp;
    move-object v2, v11

    .line 158
    .end local v11           #func_name:Ljava/lang/String;
    .local v2, func_name:Ljava/lang/String;
    goto :goto_0

    .line 146
    .local v2, func_decl:Lgnu/expr/Declaration;
    .local v5, func_name:Ljava/lang/String;
    .local v6, func_ref:Lgnu/expr/ReferenceExp;
    .restart local v7       #owner:Lgnu/expr/Declaration;
    .restart local v8       #quotedValue:Ljava/lang/Object;
    :cond_2
    iget-object v2, v6, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    .line 147
    invoke-virtual {v6}, Lgnu/expr/ReferenceExp;->contextDecl()Lgnu/expr/Declaration;

    move-result-object v7

    goto :goto_2

    .line 159
    .end local v2           #func_decl:Lgnu/expr/Declaration;
    .end local v7           #owner:Lgnu/expr/Declaration;
    .local v6, owner:Lgnu/expr/Declaration;
    :cond_3
    instance-of v2, v3, Lgnu/expr/QuoteExp;

    if-eqz v2, :cond_26

    .line 161
    move-object v0, v3

    check-cast v0, Lgnu/expr/QuoteExp;

    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v2

    .end local v8           #quotedValue:Ljava/lang/Object;
    .local v2, quotedValue:Ljava/lang/Object;
    move-object v11, v2

    move-object v2, v5

    .end local v5           #func_name:Ljava/lang/String;
    .local v2, func_name:Ljava/lang/String;
    move-object v5, v6

    .end local v6           #owner:Lgnu/expr/Declaration;
    .local v5, owner:Lgnu/expr/Declaration;
    move-object v6, v11

    goto/16 :goto_0

    .line 174
    .end local v2           #func_name:Ljava/lang/String;
    .local p3, proc:Lgnu/mapping/Procedure;
    :cond_4
    :try_start_0
    invoke-static {p3, p0, p1, p2}, Lgnu/expr/ApplyExp;->inlineCompile(Lgnu/mapping/Procedure;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    .end local p3           #proc:Lgnu/mapping/Procedure;
    if-eqz p3, :cond_6

    .line 396
    .end local v1           #args_length:I
    .end local v3           #exp_func:Lgnu/expr/Expression;
    .end local v4           #func_lambda:Lgnu/expr/LambdaExp;
    .end local v5           #owner:Lgnu/expr/Declaration;
    .end local p0
    .end local p1
    .end local p2
    :cond_5
    :goto_5
    return-void

    .line 177
    .restart local v1       #args_length:I
    .restart local v3       #exp_func:Lgnu/expr/Expression;
    .restart local v4       #func_lambda:Lgnu/expr/LambdaExp;
    .restart local v5       #owner:Lgnu/expr/Declaration;
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3       #proc:Lgnu/mapping/Procedure;
    :catch_0
    move-exception p0

    .line 179
    .local p0, ex:Ljava/lang/Throwable;
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getMessages()Lgnu/text/SourceMessages;

    move-result-object p1

    .end local p1
    const/16 p2, 0x65

    new-instance p3, Ljava/lang/StringBuilder;

    .end local p2
    .end local p3           #proc:Lgnu/mapping/Procedure;
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "caught exception in inline-compiler for "

    .end local v1           #args_length:I
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, " - "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3, p0}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 184
    .restart local v1       #args_length:I
    .local p0, exp:Lgnu/expr/ApplyExp;
    .restart local p1
    .restart local p2
    :cond_6
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object p3

    .line 187
    .local p3, code:Lgnu/bytecode/CodeAttr;
    if-eqz v4, :cond_12

    .line 189
    iget v2, v4, Lgnu/expr/LambdaExp;->max_args:I

    if-ltz v2, :cond_7

    iget v2, v4, Lgnu/expr/LambdaExp;->max_args:I

    if-gt v1, v2, :cond_8

    :cond_7
    iget v2, v4, Lgnu/expr/LambdaExp;->min_args:I

    if-ge v1, v2, :cond_9

    .line 192
    :cond_8
    new-instance p0, Ljava/lang/Error;

    .end local p0           #exp:Lgnu/expr/ApplyExp;
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "internal error - wrong number of parameters for "

    .end local p2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    .line 194
    .restart local p0       #exp:Lgnu/expr/ApplyExp;
    .restart local p1
    .restart local p2
    :cond_9
    invoke-virtual {v4}, Lgnu/expr/LambdaExp;->getCallConvention()I

    move-result v2

    .line 197
    .local v2, conv:I
    invoke-virtual {p1, v4}, Lgnu/expr/Compilation;->inlineOk(Lgnu/expr/Expression;)Z

    move-result v6

    if-eqz v6, :cond_12

    const/4 v6, 0x2

    if-le v2, v6, :cond_a

    const/4 v6, 0x3

    if-ne v2, v6, :cond_12

    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->isTailCall()Z

    move-result v2

    .end local v2           #conv:I
    if-nez v2, :cond_12

    :cond_a
    invoke-virtual {v4, v1}, Lgnu/expr/LambdaExp;->getMethod(I)Lgnu/bytecode/Method;

    move-result-object v2

    .local v2, method:Lgnu/bytecode/Method;
    if-eqz v2, :cond_12

    .line 203
    new-instance v3, Lgnu/expr/PrimProcedure;

    .end local v3           #exp_func:Lgnu/expr/Expression;
    invoke-direct {v3, v2, v4}, Lgnu/expr/PrimProcedure;-><init>(Lgnu/bytecode/Method;Lgnu/expr/LambdaExp;)V

    .line 204
    .local v3, pproc:Lgnu/expr/PrimProcedure;
    invoke-virtual {v2}, Lgnu/bytecode/Method;->getStaticFlag()Z

    move-result v2

    .line 205
    .local v2, is_static:Z
    const/4 v1, 0x0

    .line 207
    .local v1, extraArg:Z
    if-eqz v2, :cond_b

    invoke-virtual {v4}, Lgnu/expr/LambdaExp;->declareClosureEnv()Lgnu/bytecode/Variable;

    move-result-object v6

    if-eqz v6, :cond_10

    .line 209
    :cond_b
    if-eqz v2, :cond_c

    .line 210
    const/4 v1, 0x1

    .line 211
    :cond_c
    iget-object v2, p1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .end local v2           #is_static:Z
    if-ne v2, v4, :cond_e

    .line 212
    iget-object v2, v4, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    if-eqz v2, :cond_d

    iget-object v2, v4, Lgnu/expr/LambdaExp;->closureEnv:Lgnu/bytecode/Variable;

    :goto_6
    invoke-virtual {p3, v2}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    move p3, v1

    .line 221
    .end local v1           #extraArg:Z
    .end local v4           #func_lambda:Lgnu/expr/LambdaExp;
    .local p3, extraArg:Z
    :goto_7
    if-eqz p3, :cond_11

    sget-object p3, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    .end local p3           #extraArg:Z
    :goto_8
    invoke-virtual {v3, p3, p0, p1, p2}, Lgnu/expr/PrimProcedure;->compile(Lgnu/bytecode/Type;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto/16 :goto_5

    .line 212
    .restart local v1       #extraArg:Z
    .restart local v4       #func_lambda:Lgnu/expr/LambdaExp;
    .local p3, code:Lgnu/bytecode/CodeAttr;
    :cond_d
    iget-object v2, v4, Lgnu/expr/LambdaExp;->thisVariable:Lgnu/bytecode/Variable;

    goto :goto_6

    .line 215
    :cond_e
    if-eqz v5, :cond_f

    .line 216
    const/4 p3, 0x0

    const/4 v2, 0x0

    sget-object v4, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    .end local v4           #func_lambda:Lgnu/expr/LambdaExp;
    .end local p3           #code:Lgnu/bytecode/CodeAttr;
    invoke-virtual {v5, p3, v2, p1, v4}, Lgnu/expr/Declaration;->load(Lgnu/expr/AccessExp;ILgnu/expr/Compilation;Lgnu/expr/Target;)V

    move p3, v1

    .end local v1           #extraArg:Z
    .local p3, extraArg:Z
    goto :goto_7

    .line 218
    .restart local v1       #extraArg:Z
    .restart local v4       #func_lambda:Lgnu/expr/LambdaExp;
    .local p3, code:Lgnu/bytecode/CodeAttr;
    :cond_f
    invoke-virtual {v4}, Lgnu/expr/LambdaExp;->getOwningLambda()Lgnu/expr/LambdaExp;

    move-result-object p3

    .end local p3           #code:Lgnu/bytecode/CodeAttr;
    invoke-virtual {p3, p1}, Lgnu/expr/LambdaExp;->loadHeapFrame(Lgnu/expr/Compilation;)V

    :cond_10
    move p3, v1

    .end local v1           #extraArg:Z
    .local p3, extraArg:Z
    goto :goto_7

    .line 221
    .end local v4           #func_lambda:Lgnu/expr/LambdaExp;
    :cond_11
    const/4 p3, 0x0

    goto :goto_8

    .line 285
    .local v1, args_length:I
    .local v3, exp_func:Lgnu/expr/Expression;
    .restart local v4       #func_lambda:Lgnu/expr/LambdaExp;
    .local p3, code:Lgnu/bytecode/CodeAttr;
    :cond_12
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->isTailCall()Z

    move-result v2

    if-eqz v2, :cond_13

    if-eqz v4, :cond_13

    iget-object v2, p1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    if-ne v4, v2, :cond_13

    const/4 v2, 0x1

    move v5, v2

    .line 289
    .local v5, tail_recurse:Z
    :goto_9
    if-eqz v4, :cond_15

    invoke-virtual {v4}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v2

    if-eqz v2, :cond_15

    if-nez v5, :cond_15

    iget v2, v4, Lgnu/expr/LambdaExp;->min_args:I

    if-ne v2, v1, :cond_15

    .line 292
    iget-object p0, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    .end local p0           #exp:Lgnu/expr/ApplyExp;
    const/4 v1, 0x0

    invoke-static {v4, p0, v1, p1}, Lgnu/expr/ApplyExp;->pushArgs(Lgnu/expr/LambdaExp;[Lgnu/expr/Expression;[ILgnu/expr/Compilation;)V

    .line 293
    .end local v1           #args_length:I
    const/16 p0, 0x80

    invoke-virtual {v4, p0}, Lgnu/expr/LambdaExp;->getFlag(I)Z

    move-result p0

    if-eqz p0, :cond_14

    .line 295
    const/4 p0, 0x0

    const/4 p1, 0x0

    invoke-static {p3, v4, p0, p1}, Lgnu/expr/ApplyExp;->popParams(Lgnu/bytecode/CodeAttr;Lgnu/expr/LambdaExp;[IZ)V

    .line 296
    .end local p1
    const/4 p0, 0x0

    invoke-virtual {v4}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object p1

    invoke-virtual {p3, p0, p1}, Lgnu/bytecode/CodeAttr;->emitTailCall(ZLgnu/bytecode/Scope;)V

    goto/16 :goto_5

    .line 285
    .restart local v1       #args_length:I
    .local v5, owner:Lgnu/expr/Declaration;
    .restart local p0       #exp:Lgnu/expr/ApplyExp;
    .restart local p1
    :cond_13
    const/4 v2, 0x0

    move v5, v2

    goto :goto_9

    .line 299
    .end local v1           #args_length:I
    .end local p0           #exp:Lgnu/expr/ApplyExp;
    .local v5, tail_recurse:Z
    :cond_14
    iget p0, v4, Lgnu/expr/LambdaExp;->flags:I

    or-int/lit16 p0, p0, 0x80

    iput p0, v4, Lgnu/expr/LambdaExp;->flags:I

    .line 300
    iget-object p0, p1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 301
    .local p0, saveLambda:Lgnu/expr/LambdaExp;
    iput-object v4, p1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    .line 302
    invoke-virtual {v4, p1}, Lgnu/expr/LambdaExp;->allocChildClasses(Lgnu/expr/Compilation;)V

    .line 303
    invoke-virtual {v4, p1}, Lgnu/expr/LambdaExp;->allocParameters(Lgnu/expr/Compilation;)V

    .line 304
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p3, v4, v1, v2}, Lgnu/expr/ApplyExp;->popParams(Lgnu/bytecode/CodeAttr;Lgnu/expr/LambdaExp;[IZ)V

    .line 305
    invoke-virtual {v4, p1}, Lgnu/expr/LambdaExp;->enterFunction(Lgnu/expr/Compilation;)V

    .line 306
    iget-object v1, v4, Lgnu/expr/LambdaExp;->body:Lgnu/expr/Expression;

    invoke-virtual {v1, p1, p2}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 307
    invoke-virtual {v4, p1}, Lgnu/expr/LambdaExp;->compileEnd(Lgnu/expr/Compilation;)V

    .line 308
    invoke-virtual {v4, p1}, Lgnu/expr/LambdaExp;->generateApplyMethods(Lgnu/expr/Compilation;)V

    .line 309
    invoke-virtual {p3}, Lgnu/bytecode/CodeAttr;->popScope()Lgnu/bytecode/Scope;

    .line 310
    iput-object p0, p1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    goto/16 :goto_5

    .line 314
    .restart local v1       #args_length:I
    .local p0, exp:Lgnu/expr/ApplyExp;
    :cond_15
    iget-object v2, p1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    invoke-virtual {v2}, Lgnu/expr/LambdaExp;->isHandlingTailCalls()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->isTailCall()Z

    move-result v2

    if-nez v2, :cond_16

    instance-of v2, p2, Lgnu/expr/ConsumerTarget;

    if-eqz v2, :cond_1b

    :cond_16
    iget-object v2, p1, Lgnu/expr/Compilation;->curLambda:Lgnu/expr/LambdaExp;

    invoke-virtual {v2}, Lgnu/expr/LambdaExp;->getInlineOnly()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 318
    sget-object v4, Lgnu/expr/Compilation;->typeCallContext:Lgnu/bytecode/ClassType;

    .line 319
    .local v4, typeContext:Lgnu/bytecode/ClassType;
    new-instance v2, Lgnu/expr/StackTarget;

    sget-object v5, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    .end local v5           #tail_recurse:Z
    invoke-direct {v2, v5}, Lgnu/expr/StackTarget;-><init>(Lgnu/bytecode/Type;)V

    invoke-virtual {v3, p1, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 321
    const/4 v2, 0x4

    if-gt v1, v2, :cond_18

    .line 323
    const/4 v2, 0x0

    .end local v3           #exp_func:Lgnu/expr/Expression;
    .local v2, i:I
    :goto_a
    if-ge v2, v1, :cond_17

    .line 324
    iget-object v3, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    aget-object v3, v3, v2

    sget-object v5, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v3, p1, v5}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 323
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 325
    :cond_17
    invoke-virtual {p1}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 326
    sget-object v2, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    .end local v2           #i:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "check"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v3, v1}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    .end local v1           #args_length:I
    move-result-object v1

    invoke-virtual {p3, v1}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    .line 337
    :goto_b
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->isTailCall()Z

    move-result p0

    .end local p0           #exp:Lgnu/expr/ApplyExp;
    if-eqz p0, :cond_19

    .line 339
    invoke-virtual {p3}, Lgnu/bytecode/CodeAttr;->emitReturn()V

    goto/16 :goto_5

    .line 332
    .restart local v1       #args_length:I
    .restart local v3       #exp_func:Lgnu/expr/Expression;
    .restart local p0       #exp:Lgnu/expr/ApplyExp;
    :cond_18
    iget-object v1, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    .end local v1           #args_length:I
    invoke-static {v1, p1}, Lgnu/expr/ApplyExp;->compileToArray([Lgnu/expr/Expression;Lgnu/expr/Compilation;)V

    .line 333
    invoke-virtual {p1}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 334
    sget-object v1, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    const-string v2, "checkN"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    .end local v3           #exp_func:Lgnu/expr/Expression;
    move-result-object v1

    invoke-virtual {p3, v1}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    goto :goto_b

    .line 341
    .end local p0           #exp:Lgnu/expr/ApplyExp;
    :cond_19
    move-object v0, p2

    check-cast v0, Lgnu/expr/ConsumerTarget;

    move-object v1, v0

    invoke-virtual {v1}, Lgnu/expr/ConsumerTarget;->isContextTarget()Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 343
    invoke-virtual {p1}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 344
    const-string p0, "runUntilDone"

    const/4 p1, 0x0

    invoke-virtual {v4, p0, p1}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    .end local p1
    move-result-object p0

    invoke-virtual {p3, p0}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    goto/16 :goto_5

    .line 348
    .restart local p1
    :cond_1a
    invoke-virtual {p1}, Lgnu/expr/Compilation;->loadCallContext()V

    .line 349
    check-cast p2, Lgnu/expr/ConsumerTarget;

    .end local p2
    invoke-virtual {p2}, Lgnu/expr/ConsumerTarget;->getConsumerVariable()Lgnu/bytecode/Variable;

    move-result-object p0

    invoke-virtual {p3, p0}, Lgnu/bytecode/CodeAttr;->emitLoad(Lgnu/bytecode/Variable;)V

    .line 350
    const-string p0, "runUntilValue"

    const/4 p1, 0x1

    invoke-virtual {v4, p0, p1}, Lgnu/bytecode/ClassType;->getDeclaredMethod(Ljava/lang/String;I)Lgnu/bytecode/Method;

    .end local p1
    move-result-object p0

    invoke-virtual {p3, p0}, Lgnu/bytecode/CodeAttr;->emitInvoke(Lgnu/bytecode/Method;)V

    goto/16 :goto_5

    .line 355
    .restart local v1       #args_length:I
    .restart local v3       #exp_func:Lgnu/expr/Expression;
    .local v4, func_lambda:Lgnu/expr/LambdaExp;
    .restart local v5       #tail_recurse:Z
    .restart local p0       #exp:Lgnu/expr/ApplyExp;
    .restart local p1
    .restart local p2
    :cond_1b
    if-nez v5, :cond_1c

    .line 356
    new-instance v2, Lgnu/expr/StackTarget;

    sget-object v6, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-direct {v2, v6}, Lgnu/expr/StackTarget;-><init>(Lgnu/bytecode/Type;)V

    invoke-virtual {v3, p1, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 358
    :cond_1c
    if-eqz v5, :cond_1e

    iget v2, v4, Lgnu/expr/LambdaExp;->min_args:I

    iget v3, v4, Lgnu/expr/LambdaExp;->max_args:I

    .end local v3           #exp_func:Lgnu/expr/Expression;
    if-eq v2, v3, :cond_1d

    const/4 v2, 0x1

    move v6, v2

    .line 361
    .local v6, toArray:Z
    :goto_c
    const/4 v3, 0x0

    .line 362
    .local v3, incValues:[I
    if-eqz v6, :cond_20

    .line 364
    iget-object p0, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    .end local p0           #exp:Lgnu/expr/ApplyExp;
    invoke-static {p0, p1}, Lgnu/expr/ApplyExp;->compileToArray([Lgnu/expr/Expression;Lgnu/expr/Compilation;)V

    .line 365
    sget-object p0, Lgnu/expr/Compilation;->applyNmethod:Lgnu/bytecode/Method;

    .local p0, method:Lgnu/bytecode/Method;
    move-object v1, p0

    .end local p0           #method:Lgnu/bytecode/Method;
    .local v1, method:Lgnu/bytecode/Method;
    move-object p0, v3

    .line 383
    .end local v3           #incValues:[I
    .local p0, incValues:[I
    :goto_d
    invoke-virtual {p3}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result v2

    if-nez v2, :cond_24

    .line 385
    const/16 p0, 0x65

    const-string p2, "unreachable code"

    .end local p0           #incValues:[I
    .end local p2
    invoke-virtual {p1, p0, p2}, Lgnu/expr/Compilation;->error(CLjava/lang/String;)V

    goto/16 :goto_5

    .line 358
    .end local v6           #toArray:Z
    .local v1, args_length:I
    .local p0, exp:Lgnu/expr/ApplyExp;
    .restart local p2
    :cond_1d
    const/4 v2, 0x0

    move v6, v2

    goto :goto_c

    .local v3, exp_func:Lgnu/expr/Expression;
    :cond_1e
    const/4 v2, 0x4

    if-le v1, v2, :cond_1f

    const/4 v2, 0x1

    move v6, v2

    goto :goto_c

    :cond_1f
    const/4 v2, 0x0

    move v6, v2

    goto :goto_c

    .line 367
    .local v3, incValues:[I
    .restart local v6       #toArray:Z
    :cond_20
    if-eqz v5, :cond_21

    .line 369
    iget-object v1, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    .end local v1           #args_length:I
    array-length v1, v1

    new-array v1, v1, [I

    .line 370
    .end local v3           #incValues:[I
    .local v1, incValues:[I
    iget-object p0, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    .end local p0           #exp:Lgnu/expr/ApplyExp;
    invoke-static {v4, p0, v1, p1}, Lgnu/expr/ApplyExp;->pushArgs(Lgnu/expr/LambdaExp;[Lgnu/expr/Expression;[ILgnu/expr/Compilation;)V

    .line 371
    const/4 p0, 0x0

    .local p0, method:Lgnu/bytecode/Method;
    move-object v11, v1

    .end local v1           #incValues:[I
    .local v11, incValues:[I
    move-object v1, p0

    .end local p0           #method:Lgnu/bytecode/Method;
    .local v1, method:Lgnu/bytecode/Method;
    move-object p0, v11

    .end local v11           #incValues:[I
    .local p0, incValues:[I
    goto :goto_d

    .line 375
    .local v1, args_length:I
    .restart local v3       #incValues:[I
    .local p0, exp:Lgnu/expr/ApplyExp;
    :cond_21
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_e
    if-ge v2, v1, :cond_22

    .line 377
    iget-object v7, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    aget-object v7, v7, v2

    sget-object v8, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v7, p1, v8}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 378
    invoke-virtual {p3}, Lgnu/bytecode/CodeAttr;->reachableHere()Z

    move-result v7

    if-nez v7, :cond_23

    .line 381
    :cond_22
    sget-object p0, Lgnu/expr/Compilation;->applymethods:[Lgnu/bytecode/Method;

    .end local p0           #exp:Lgnu/expr/ApplyExp;
    aget-object p0, p0, v1

    .local p0, method:Lgnu/bytecode/Method;
    move-object v1, p0

    .end local p0           #method:Lgnu/bytecode/Method;
    .local v1, method:Lgnu/bytecode/Method;
    move-object p0, v3

    .end local v3           #incValues:[I
    .local p0, incValues:[I
    goto :goto_d

    .line 375
    .local v1, args_length:I
    .restart local v3       #incValues:[I
    .local p0, exp:Lgnu/expr/ApplyExp;
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 388
    .end local v2           #i:I
    .end local v3           #incValues:[I
    .local v1, method:Lgnu/bytecode/Method;
    .local p0, incValues:[I
    :cond_24
    if-eqz v5, :cond_25

    .line 390
    invoke-static {p3, v4, p0, v6}, Lgnu/expr/ApplyExp;->popParams(Lgnu/bytecode/CodeAttr;Lgnu/expr/LambdaExp;[IZ)V

    .line 391
    const/4 p0, 0x0

    invoke-virtual {v4}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    .end local p0           #incValues:[I
    move-result-object p1

    .end local p1
    invoke-virtual {p3, p0, p1}, Lgnu/bytecode/CodeAttr;->emitTailCall(ZLgnu/bytecode/Scope;)V

    goto/16 :goto_5

    .line 394
    .restart local p0       #incValues:[I
    .restart local p1
    :cond_25
    invoke-virtual {p3, v1}, Lgnu/bytecode/CodeAttr;->emitInvokeVirtual(Lgnu/bytecode/Method;)V

    .line 395
    sget-object p0, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    .end local p0           #incValues:[I
    invoke-virtual {p2, p1, p0}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    goto/16 :goto_5

    .local v1, args_length:I
    .local v3, exp_func:Lgnu/expr/Expression;
    .local v5, func_name:Ljava/lang/String;
    .local v6, owner:Lgnu/expr/Declaration;
    .restart local v8       #quotedValue:Ljava/lang/Object;
    .local p0, exp:Lgnu/expr/ApplyExp;
    .local p3, checkInlineable:Z
    :cond_26
    move-object v2, v5

    .end local v5           #func_name:Ljava/lang/String;
    .local v2, func_name:Ljava/lang/String;
    move-object v5, v6

    .end local v6           #owner:Lgnu/expr/Declaration;
    .local v5, owner:Lgnu/expr/Declaration;
    move-object v6, v8

    goto/16 :goto_0

    .end local v4           #func_lambda:Lgnu/expr/LambdaExp;
    .local v2, func_lambda:Lgnu/expr/LambdaExp;
    .local v5, func_name:Ljava/lang/String;
    .local v6, value:Lgnu/expr/Expression;
    .restart local v7       #owner:Lgnu/expr/Declaration;
    :cond_27
    move-object v4, v5

    .end local v5           #func_name:Ljava/lang/String;
    .local v4, func_name:Ljava/lang/String;
    move-object v5, v8

    .end local v8           #quotedValue:Ljava/lang/Object;
    .local v5, quotedValue:Ljava/lang/Object;
    goto/16 :goto_4

    .end local v2           #func_lambda:Lgnu/expr/LambdaExp;
    .local v4, func_lambda:Lgnu/expr/LambdaExp;
    .local v5, func_name:Ljava/lang/String;
    .restart local v8       #quotedValue:Ljava/lang/Object;
    :cond_28
    move-object v2, v4

    .end local v4           #func_lambda:Lgnu/expr/LambdaExp;
    .restart local v2       #func_lambda:Lgnu/expr/LambdaExp;
    goto/16 :goto_3

    .end local v6           #value:Lgnu/expr/Expression;
    .local v2, func_decl:Lgnu/expr/Declaration;
    .restart local v4       #func_lambda:Lgnu/expr/LambdaExp;
    :cond_29
    move-object v2, v4

    .end local v4           #func_lambda:Lgnu/expr/LambdaExp;
    .local v2, func_lambda:Lgnu/expr/LambdaExp;
    move-object v4, v5

    .end local v5           #func_name:Ljava/lang/String;
    .local v4, func_name:Ljava/lang/String;
    move-object v5, v8

    .end local v8           #quotedValue:Ljava/lang/Object;
    .local v5, quotedValue:Ljava/lang/Object;
    goto/16 :goto_4

    .end local v5           #quotedValue:Ljava/lang/Object;
    .end local v7           #owner:Lgnu/expr/Declaration;
    .local v6, owner:Lgnu/expr/Declaration;
    .restart local v8       #quotedValue:Ljava/lang/Object;
    :cond_2a
    move-object v5, v6

    .end local v6           #owner:Lgnu/expr/Declaration;
    .local v5, owner:Lgnu/expr/Declaration;
    move-object v6, v8

    move-object v11, v4

    .end local v4           #func_name:Ljava/lang/String;
    .local v11, func_name:Ljava/lang/String;
    move-object v4, v2

    .end local v2           #func_lambda:Lgnu/expr/LambdaExp;
    .local v4, func_lambda:Lgnu/expr/LambdaExp;
    move-object v2, v11

    .end local v11           #func_name:Ljava/lang/String;
    .local v2, func_name:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public static compileToArray([Lgnu/expr/Expression;Lgnu/expr/Compilation;)V
    .locals 5
    .parameter "args"
    .parameter "comp"

    .prologue
    const/4 v4, 0x1

    .line 70
    invoke-virtual {p1}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v1

    .line 71
    .local v1, code:Lgnu/bytecode/CodeAttr;
    array-length v3, p0

    if-nez v3, :cond_1

    .line 73
    sget-object v3, Lgnu/expr/Compilation;->noArgsField:Lgnu/bytecode/Field;

    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 107
    :cond_0
    return-void

    .line 76
    :cond_1
    array-length v3, p0

    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 77
    sget-object v3, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitNewArray(Lgnu/bytecode/Type;)V

    .line 78
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 80
    aget-object v0, p0, v2

    .line 81
    .local v0, arg:Lgnu/expr/Expression;
    invoke-virtual {p1}, Lgnu/expr/Compilation;->usingCPStyle()Z

    move-result v3

    if-eqz v3, :cond_2

    instance-of v3, v0, Lgnu/expr/QuoteExp;

    if-nez v3, :cond_2

    instance-of v3, v0, Lgnu/expr/ReferenceExp;

    if-nez v3, :cond_2

    .line 92
    sget-object v3, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v0, p1, v3}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 93
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 94
    invoke-virtual {v1, v4, v4}, Lgnu/bytecode/CodeAttr;->emitDup(II)V

    .line 95
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 96
    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 97
    invoke-virtual {v1}, Lgnu/bytecode/CodeAttr;->emitSwap()V

    .line 105
    :goto_1
    sget-object v3, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitArrayStore(Lgnu/bytecode/Type;)V

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    :cond_2
    sget-object v3, Lgnu/expr/Compilation;->objArrayType:Lgnu/bytecode/ArrayType;

    invoke-virtual {v1, v3}, Lgnu/bytecode/CodeAttr;->emitDup(Lgnu/bytecode/Type;)V

    .line 102
    invoke-virtual {v1, v2}, Lgnu/bytecode/CodeAttr;->emitPushInt(I)V

    .line 103
    sget-object v3, Lgnu/expr/Target;->pushObject:Lgnu/expr/Target;

    invoke-virtual {v0, p1, v3}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_1
.end method

.method static derefFunc(Lgnu/expr/Expression;)Lgnu/expr/Expression;
    .locals 4
    .parameter "afunc"

    .prologue
    .line 542
    instance-of v2, p0, Lgnu/expr/ReferenceExp;

    if-eqz v2, :cond_0

    .line 544
    move-object v0, p0

    check-cast v0, Lgnu/expr/ReferenceExp;

    move-object v2, v0

    iget-object v1, v2, Lgnu/expr/ReferenceExp;->binding:Lgnu/expr/Declaration;

    .line 545
    .local v1, func_decl:Lgnu/expr/Declaration;
    invoke-static {v1}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v1

    .line 546
    if-eqz v1, :cond_0

    const-wide/32 v2, 0x10000

    invoke-virtual {v1, v2, v3}, Lgnu/expr/Declaration;->getFlag(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 547
    invoke-virtual {v1}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object p0

    .line 549
    .end local v1           #func_decl:Lgnu/expr/Declaration;
    :cond_0
    return-object p0
.end method

.method static inlineCompile(Lgnu/mapping/Procedure;Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)Z
    .locals 2
    .parameter "proc"
    .parameter "exp"
    .parameter "comp"
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 584
    invoke-static {p0}, Lgnu/expr/ApplyExp;->asInlineable(Lgnu/mapping/Procedure;)Lgnu/expr/Inlineable;

    move-result-object v0

    .line 585
    .local v0, compiler:Lgnu/expr/Inlineable;
    if-nez v0, :cond_0

    .line 586
    const/4 v1, 0x0

    .line 588
    :goto_0
    return v1

    .line 587
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lgnu/expr/Inlineable;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 588
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static popParams(Lgnu/bytecode/CodeAttr;II[ILgnu/expr/Declaration;Lgnu/bytecode/Variable;)V
    .locals 6
    .parameter "code"
    .parameter "paramNo"
    .parameter "count"
    .parameter "incValues"
    .parameter "decl"
    .parameter "vars"

    .prologue
    .line 494
    if-lez p2, :cond_0

    .line 496
    add-int/lit8 p2, p2, -0x1

    .line 497
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p4}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v4

    invoke-virtual {p4}, Lgnu/expr/Declaration;->getVariable()Lgnu/bytecode/Variable;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v5, p5

    :goto_0
    move-object v0, p0

    move v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lgnu/expr/ApplyExp;->popParams(Lgnu/bytecode/CodeAttr;II[ILgnu/expr/Declaration;Lgnu/bytecode/Variable;)V

    .line 499
    invoke-virtual {p4}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 501
    if-eqz p3, :cond_2

    aget v0, p3, p1

    const/high16 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 502
    aget v0, p3, p1

    int-to-short v0, v0

    invoke-virtual {p0, p5, v0}, Lgnu/bytecode/CodeAttr;->emitInc(Lgnu/bytecode/Variable;S)V

    .line 507
    :cond_0
    :goto_1
    return-void

    .line 497
    :cond_1
    invoke-virtual {p5}, Lgnu/bytecode/Variable;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    .line 504
    :cond_2
    invoke-virtual {p0, p5}, Lgnu/bytecode/CodeAttr;->emitStore(Lgnu/bytecode/Variable;)V

    goto :goto_1
.end method

.method private static popParams(Lgnu/bytecode/CodeAttr;Lgnu/expr/LambdaExp;[IZ)V
    .locals 6
    .parameter "code"
    .parameter "lexp"
    .parameter "incValues"
    .parameter "toArray"

    .prologue
    const/4 v1, 0x0

    .line 471
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->getVarScope()Lgnu/bytecode/Scope;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/bytecode/Scope;->firstVar()Lgnu/bytecode/Variable;

    move-result-object v5

    .line 472
    .local v5, vars:Lgnu/bytecode/Variable;
    invoke-virtual {p1}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v4

    .line 473
    .local v4, decls:Lgnu/expr/Declaration;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lgnu/bytecode/Variable;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "this"

    if-ne v0, v2, :cond_0

    .line 474
    invoke-virtual {v5}, Lgnu/bytecode/Variable;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v5

    .line 475
    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lgnu/bytecode/Variable;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "$ctx"

    if-ne v0, v2, :cond_1

    .line 476
    invoke-virtual {v5}, Lgnu/bytecode/Variable;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v5

    .line 477
    :cond_1
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lgnu/bytecode/Variable;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "argsArray"

    if-ne v0, v2, :cond_3

    .line 479
    if-eqz p3, :cond_2

    .line 481
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lgnu/expr/ApplyExp;->popParams(Lgnu/bytecode/CodeAttr;II[ILgnu/expr/Declaration;Lgnu/bytecode/Variable;)V

    .line 487
    :goto_0
    return-void

    .line 484
    :cond_2
    invoke-virtual {v5}, Lgnu/bytecode/Variable;->nextVar()Lgnu/bytecode/Variable;

    move-result-object v5

    .line 486
    :cond_3
    iget v2, p1, Lgnu/expr/LambdaExp;->min_args:I

    move-object v0, p0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lgnu/expr/ApplyExp;->popParams(Lgnu/bytecode/CodeAttr;II[ILgnu/expr/Declaration;Lgnu/bytecode/Variable;)V

    goto :goto_0
.end method

.method private static pushArgs(Lgnu/expr/LambdaExp;[Lgnu/expr/Expression;[ILgnu/expr/Compilation;)V
    .locals 6
    .parameter "lexp"
    .parameter "args"
    .parameter "incValues"
    .parameter "comp"

    .prologue
    .line 451
    invoke-virtual {p0}, Lgnu/expr/LambdaExp;->firstDecl()Lgnu/expr/Declaration;

    move-result-object v3

    .line 452
    .local v3, param:Lgnu/expr/Declaration;
    array-length v1, p1

    .line 453
    .local v1, args_length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 455
    aget-object v0, p1, v2

    .line 456
    .local v0, arg:Lgnu/expr/Expression;
    invoke-virtual {v3}, Lgnu/expr/Declaration;->ignorable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 457
    sget-object v4, Lgnu/expr/Target;->Ignore:Lgnu/expr/Target;

    invoke-virtual {v0, p3, v4}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 464
    :cond_0
    :goto_1
    invoke-virtual {v3}, Lgnu/expr/Declaration;->nextDecl()Lgnu/expr/Declaration;

    move-result-object v3

    .line 453
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 458
    :cond_1
    if-eqz p2, :cond_2

    invoke-static {v0, v3}, Lgnu/expr/SetExp;->canUseInc(Lgnu/expr/Expression;Lgnu/expr/Declaration;)I

    move-result v4

    aput v4, p2, v2

    const/high16 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 462
    :cond_2
    invoke-virtual {v3}, Lgnu/expr/Declaration;->getType()Lgnu/bytecode/Type;

    move-result-object v4

    invoke-static {v4}, Lgnu/expr/StackTarget;->getInstance(Lgnu/bytecode/Type;)Lgnu/expr/Target;

    move-result-object v4

    invoke-virtual {v0, p3, v4}, Lgnu/expr/Expression;->compileWithPosition(Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    goto :goto_1

    .line 466
    .end local v0           #arg:Lgnu/expr/Expression;
    :cond_3
    return-void
.end method


# virtual methods
.method public apply(Lgnu/mapping/CallContext;)V
    .locals 5
    .parameter "ctx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v4, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    invoke-virtual {v4, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v2

    .line 61
    .local v2, proc:Ljava/lang/Object;
    iget-object v4, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    array-length v1, v4

    .line 62
    .local v1, n:I
    new-array v3, v1, [Ljava/lang/Object;

    .line 63
    .local v3, vals:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 64
    iget-object v4, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    aget-object v4, v4, v0

    invoke-virtual {v4, p1}, Lgnu/expr/Expression;->eval(Lgnu/mapping/CallContext;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_0
    check-cast v2, Lgnu/mapping/Procedure;

    .end local v2           #proc:Ljava/lang/Object;
    invoke-virtual {v2, v3, p1}, Lgnu/mapping/Procedure;->checkN([Ljava/lang/Object;Lgnu/mapping/CallContext;)V

    .line 66
    return-void
.end method

.method public compile(Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 1
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 111
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;Z)V

    .line 112
    return-void
.end method

.method public deepCopy(Lgnu/kawa/util/IdentityHashTable;)Lgnu/expr/Expression;
    .locals 4
    .parameter "mapper"

    .prologue
    .line 400
    iget-object v3, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    invoke-static {v3, p1}, Lgnu/expr/ApplyExp;->deepCopy(Lgnu/expr/Expression;Lgnu/kawa/util/IdentityHashTable;)Lgnu/expr/Expression;

    move-result-object v2

    .line 401
    .local v2, f:Lgnu/expr/Expression;
    iget-object v3, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    invoke-static {v3, p1}, Lgnu/expr/ApplyExp;->deepCopy([Lgnu/expr/Expression;Lgnu/kawa/util/IdentityHashTable;)[Lgnu/expr/Expression;

    move-result-object v0

    .line 402
    .local v0, a:[Lgnu/expr/Expression;
    if-nez v2, :cond_0

    iget-object v3, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    if-nez v3, :cond_1

    :cond_0
    if-nez v0, :cond_2

    iget-object v3, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    if-eqz v3, :cond_2

    .line 403
    :cond_1
    const/4 v3, 0x0

    .line 406
    :goto_0
    return-object v3

    .line 404
    :cond_2
    new-instance v1, Lgnu/expr/ApplyExp;

    invoke-direct {v1, v2, v0}, Lgnu/expr/ApplyExp;-><init>(Lgnu/expr/Expression;[Lgnu/expr/Expression;)V

    .line 405
    .local v1, copy:Lgnu/expr/ApplyExp;
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->getFlags()I

    move-result v3

    iput v3, v1, Lgnu/expr/ApplyExp;->flags:I

    move-object v3, v1

    .line 406
    goto :goto_0
.end method

.method public getArg(I)Lgnu/expr/Expression;
    .locals 1
    .parameter "i"

    .prologue
    .line 34
    iget-object v0, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getArgCount()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    array-length v0, v0

    return v0
.end method

.method public final getArgs()[Lgnu/expr/Expression;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    return-object v0
.end method

.method public final getFunction()Lgnu/expr/Expression;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    return-object v0
.end method

.method public final getFunctionValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    instance-of v0, v0, Lgnu/expr/QuoteExp;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    .end local p0
    check-cast p0, Lgnu/expr/QuoteExp;

    invoke-virtual {p0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getType()Lgnu/bytecode/Type;
    .locals 3

    .prologue
    .line 554
    iget-object v2, p0, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    if-eqz v2, :cond_0

    .line 555
    iget-object v2, p0, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    .line 571
    :goto_0
    return-object v2

    .line 556
    :cond_0
    iget-object v2, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    invoke-static {v2}, Lgnu/expr/ApplyExp;->derefFunc(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v0

    .line 558
    .local v0, afunc:Lgnu/expr/Expression;
    sget-object v2, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    iput-object v2, p0, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    .line 559
    instance-of v2, v0, Lgnu/expr/QuoteExp;

    if-eqz v2, :cond_2

    .line 561
    check-cast v0, Lgnu/expr/QuoteExp;

    .end local v0           #afunc:Lgnu/expr/Expression;
    invoke-virtual {v0}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 564
    .local v1, value:Ljava/lang/Object;
    instance-of v2, v1, Lgnu/mapping/Procedure;

    if-eqz v2, :cond_1

    .line 565
    check-cast v1, Lgnu/mapping/Procedure;

    .end local v1           #value:Ljava/lang/Object;
    iget-object v2, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    invoke-virtual {v1, v2}, Lgnu/mapping/Procedure;->getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;

    move-result-object v2

    iput-object v2, p0, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    .line 571
    :cond_1
    :goto_1
    iget-object v2, p0, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    goto :goto_0

    .line 567
    .restart local v0       #afunc:Lgnu/expr/Expression;
    :cond_2
    instance-of v2, v0, Lgnu/expr/LambdaExp;

    if-eqz v2, :cond_1

    .line 569
    check-cast v0, Lgnu/expr/LambdaExp;

    .end local v0           #afunc:Lgnu/expr/Expression;
    invoke-virtual {v0}, Lgnu/expr/LambdaExp;->getReturnType()Lgnu/bytecode/Type;

    move-result-object v2

    iput-object v2, p0, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    goto :goto_1
.end method

.method public final getTypeRaw()Lgnu/bytecode/Type;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    return-object v0
.end method

.method public final inlineIfConstant(Lgnu/mapping/Procedure;Lgnu/expr/InlineCalls;)Lgnu/expr/Expression;
    .locals 1
    .parameter "proc"
    .parameter "visitor"

    .prologue
    .line 593
    invoke-virtual {p2}, Lgnu/expr/InlineCalls;->getMessages()Lgnu/text/SourceMessages;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lgnu/expr/ApplyExp;->inlineIfConstant(Lgnu/mapping/Procedure;Lgnu/text/SourceMessages;)Lgnu/expr/Expression;

    move-result-object v0

    return-object v0
.end method

.method public final inlineIfConstant(Lgnu/mapping/Procedure;Lgnu/text/SourceMessages;)Lgnu/expr/Expression;
    .locals 10
    .parameter "proc"
    .parameter "messages"

    .prologue
    .line 604
    iget-object v7, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    array-length v5, v7

    .line 605
    .local v5, len:I
    new-array v6, v5, [Ljava/lang/Object;

    .line 606
    .local v6, vals:[Ljava/lang/Object;
    move v4, v5

    .local v4, i:I
    :goto_0
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_2

    .line 608
    iget-object v7, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    aget-object v1, v7, v4

    .line 609
    .local v1, arg:Lgnu/expr/Expression;
    instance-of v7, v1, Lgnu/expr/ReferenceExp;

    if-eqz v7, :cond_0

    .line 611
    move-object v0, v1

    check-cast v0, Lgnu/expr/ReferenceExp;

    move-object v7, v0

    invoke-virtual {v7}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v2

    .line 612
    .local v2, decl:Lgnu/expr/Declaration;
    if-eqz v2, :cond_0

    .line 614
    invoke-virtual {v2}, Lgnu/expr/Declaration;->getValue()Lgnu/expr/Expression;

    move-result-object v1

    .line 615
    sget-object v7, Lgnu/expr/QuoteExp;->undefined_exp:Lgnu/expr/QuoteExp;

    if-ne v1, v7, :cond_0

    move-object v7, p0

    .line 632
    .end local v1           #arg:Lgnu/expr/Expression;
    .end local v2           #decl:Lgnu/expr/Declaration;
    :goto_1
    return-object v7

    .line 619
    .restart local v1       #arg:Lgnu/expr/Expression;
    :cond_0
    instance-of v7, v1, Lgnu/expr/QuoteExp;

    if-nez v7, :cond_1

    move-object v7, p0

    .line 620
    goto :goto_1

    .line 621
    :cond_1
    check-cast v1, Lgnu/expr/QuoteExp;

    .end local v1           #arg:Lgnu/expr/Expression;
    invoke-virtual {v1}, Lgnu/expr/QuoteExp;->getValue()Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v4

    goto :goto_0

    .line 625
    :cond_2
    :try_start_0
    new-instance v7, Lgnu/expr/QuoteExp;

    invoke-virtual {p1, v6}, Lgnu/mapping/Procedure;->applyN([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iget-object v9, p0, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    invoke-direct {v7, v8, v9}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 627
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 629
    .local v3, ex:Ljava/lang/Throwable;
    if-eqz p2, :cond_3

    .line 630
    const/16 v7, 0x77

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "call to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " throws "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Lgnu/text/SourceMessages;->error(CLjava/lang/String;)V

    :cond_3
    move-object v7, p0

    .line 632
    goto :goto_1
.end method

.method public final isTailCall()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lgnu/expr/ApplyExp;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method protected mustCompile()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public print(Lgnu/mapping/OutPort;)V
    .locals 4
    .parameter "out"

    .prologue
    .line 428
    const-string v1, "(Apply"

    const-string v2, ")"

    const/4 v3, 0x2

    invoke-virtual {p1, v1, v2, v3}, Lgnu/mapping/OutPort;->startLogicalBlock(Ljava/lang/String;Ljava/lang/String;I)V

    .line 429
    invoke-virtual {p0}, Lgnu/expr/ApplyExp;->isTailCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    const-string v1, " [tailcall]"

    invoke-virtual {p1, v1}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 431
    :cond_0
    iget-object v1, p0, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    sget-object v2, Lgnu/bytecode/Type;->pointer_type:Lgnu/bytecode/ClassType;

    if-eq v1, v2, :cond_1

    .line 433
    const-string v1, " => "

    invoke-virtual {p1, v1}, Lgnu/mapping/OutPort;->print(Ljava/lang/String;)V

    .line 434
    iget-object v1, p0, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    invoke-virtual {p1, v1}, Lgnu/mapping/OutPort;->print(Ljava/lang/Object;)V

    .line 436
    :cond_1
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceFill()V

    .line 437
    invoke-virtual {p0, p1}, Lgnu/expr/ApplyExp;->printLineColumn(Lgnu/mapping/OutPort;)V

    .line 438
    iget-object v1, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    invoke-virtual {v1, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 439
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 441
    invoke-virtual {p1}, Lgnu/mapping/OutPort;->writeSpaceLinear()V

    .line 442
    iget-object v1, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lgnu/expr/Expression;->print(Lgnu/mapping/OutPort;)V

    .line 439
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 444
    :cond_2
    const-string v1, ")"

    invoke-virtual {p1, v1}, Lgnu/mapping/OutPort;->endLogicalBlock(Ljava/lang/String;)V

    .line 445
    return-void
.end method

.method public setArg(ILgnu/expr/Expression;)V
    .locals 1
    .parameter "i"
    .parameter "arg"

    .prologue
    .line 35
    iget-object v0, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    aput-object p2, v0, p1

    return-void
.end method

.method public setArgs([Lgnu/expr/Expression;)V
    .locals 0
    .parameter "args"

    .prologue
    .line 33
    iput-object p1, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    return-void
.end method

.method public setFunction(Lgnu/expr/Expression;)V
    .locals 0
    .parameter "func"

    .prologue
    .line 32
    iput-object p1, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    return-void
.end method

.method public final setTailCall(Z)V
    .locals 1
    .parameter "tailCall"

    .prologue
    .line 38
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lgnu/expr/ApplyExp;->setFlag(ZI)V

    return-void
.end method

.method public final setType(Lgnu/bytecode/Type;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 519
    iput-object p1, p0, Lgnu/expr/ApplyExp;->type:Lgnu/bytecode/Type;

    .line 520
    return-void
.end method

.method public side_effects()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 524
    iget-object v4, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    invoke-static {v4}, Lgnu/expr/ApplyExp;->derefFunc(Lgnu/expr/Expression;)Lgnu/expr/Expression;

    move-result-object v4

    invoke-virtual {v4}, Lgnu/expr/Expression;->valueIfConstant()Ljava/lang/Object;

    move-result-object v3

    .line 525
    .local v3, value:Ljava/lang/Object;
    instance-of v4, v3, Lgnu/mapping/Procedure;

    if-eqz v4, :cond_2

    check-cast v3, Lgnu/mapping/Procedure;

    .end local v3           #value:Ljava/lang/Object;
    invoke-virtual {v3}, Lgnu/mapping/Procedure;->isSideEffectFree()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 528
    iget-object v0, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    .line 529
    .local v0, a:[Lgnu/expr/Expression;
    array-length v1, v0

    .line 530
    .local v1, alen:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 532
    aget-object v4, v0, v2

    invoke-virtual {v4}, Lgnu/expr/Expression;->side_effects()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    .line 537
    .end local v0           #a:[Lgnu/expr/Expression;
    .end local v1           #alen:I
    .end local v2           #i:I
    :goto_1
    return v4

    .line 530
    .restart local v0       #a:[Lgnu/expr/Expression;
    .restart local v1       #alen:I
    .restart local v2       #i:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 535
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .end local v0           #a:[Lgnu/expr/Expression;
    .end local v1           #alen:I
    .end local v2           #i:I
    :cond_2
    move v4, v5

    .line 537
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 638
    sget-object v0, Lgnu/expr/LambdaExp;->unknownContinuation:Lgnu/expr/ApplyExp;

    if-ne p0, v0, :cond_0

    .line 639
    const-string v0, "ApplyExp[unknownContinuation]"

    .line 640
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApplyExp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    array-length v1, v1

    goto :goto_1
.end method

.method protected visit(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor",
            "<TR;TD;>;TD;)TR;"
        }
    .end annotation

    .prologue
    .line 411
    .local p1, visitor:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, d:Ljava/lang/Object;,"TD;"
    invoke-virtual {p1, p0, p2}, Lgnu/expr/ExpVisitor;->visitApplyExp(Lgnu/expr/ApplyExp;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public visitArgs(Lgnu/expr/InlineCalls;)V
    .locals 3
    .parameter "visitor"

    .prologue
    .line 416
    iget-object v0, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    iget-object v1, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    array-length v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lgnu/expr/InlineCalls;->visitExps([Lgnu/expr/Expression;ILjava/lang/Object;)[Lgnu/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    .line 417
    return-void
.end method

.method protected visitChildren(Lgnu/expr/ExpVisitor;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/expr/ExpVisitor",
            "<TR;TD;>;TD;)V"
        }
    .end annotation

    .prologue
    .line 421
    .local p1, visitor:Lgnu/expr/ExpVisitor;,"Lgnu/expr/ExpVisitor<TR;TD;>;"
    .local p2, d:Ljava/lang/Object;,"TD;"
    iget-object v0, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    invoke-virtual {p1, v0, p2}, Lgnu/expr/ExpVisitor;->visitAndUpdate(Lgnu/expr/Expression;Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/ApplyExp;->func:Lgnu/expr/Expression;

    .line 422
    iget-object v0, p1, Lgnu/expr/ExpVisitor;->exitValue:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 423
    iget-object v0, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    iget-object v1, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    array-length v1, v1

    invoke-virtual {p1, v0, v1, p2}, Lgnu/expr/ExpVisitor;->visitExps([Lgnu/expr/Expression;ILjava/lang/Object;)[Lgnu/expr/Expression;

    move-result-object v0

    iput-object v0, p0, Lgnu/expr/ApplyExp;->args:[Lgnu/expr/Expression;

    .line 424
    :cond_0
    return-void
.end method
