.class Lorg/javia/arity/OptCodeGen;
.super Lorg/javia/arity/SimpleCodeGen;
.source "OptCodeGen.java"


# instance fields
.field context:Lorg/javia/arity/EvalContext;

.field intrinsicArity:I

.field private isPercent:Z

.field sp:I

.field stack:[Lorg/javia/arity/Complex;

.field traceCode:[B

.field traceConstsIm:[D

.field traceConstsRe:[D

.field traceFuncs:[Lorg/javia/arity/Function;

.field tracer:Lorg/javia/arity/CompiledFunction;


# direct methods
.method constructor <init>(Lorg/javia/arity/SyntaxException;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 40
    invoke-direct {p0, p1}, Lorg/javia/arity/SimpleCodeGen;-><init>(Lorg/javia/arity/SyntaxException;)V

    .line 26
    new-instance v0, Lorg/javia/arity/EvalContext;

    invoke-direct {v0}, Lorg/javia/arity/EvalContext;-><init>()V

    iput-object v0, p0, Lorg/javia/arity/OptCodeGen;->context:Lorg/javia/arity/EvalContext;

    .line 28
    iget-object v0, p0, Lorg/javia/arity/OptCodeGen;->context:Lorg/javia/arity/EvalContext;

    iget-object v0, v0, Lorg/javia/arity/EvalContext;->stackComplex:[Lorg/javia/arity/Complex;

    iput-object v0, p0, Lorg/javia/arity/OptCodeGen;->stack:[Lorg/javia/arity/Complex;

    .line 30
    new-array v0, v1, [D

    iput-object v0, p0, Lorg/javia/arity/OptCodeGen;->traceConstsRe:[D

    .line 31
    new-array v0, v1, [D

    iput-object v0, p0, Lorg/javia/arity/OptCodeGen;->traceConstsIm:[D

    .line 32
    new-array v0, v1, [Lorg/javia/arity/Function;

    iput-object v0, p0, Lorg/javia/arity/OptCodeGen;->traceFuncs:[Lorg/javia/arity/Function;

    .line 33
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/javia/arity/OptCodeGen;->traceCode:[B

    .line 34
    new-instance v0, Lorg/javia/arity/CompiledFunction;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/javia/arity/OptCodeGen;->traceCode:[B

    iget-object v3, p0, Lorg/javia/arity/OptCodeGen;->traceConstsRe:[D

    iget-object v4, p0, Lorg/javia/arity/OptCodeGen;->traceConstsIm:[D

    iget-object v5, p0, Lorg/javia/arity/OptCodeGen;->traceFuncs:[Lorg/javia/arity/Function;

    invoke-direct/range {v0 .. v5}, Lorg/javia/arity/CompiledFunction;-><init>(I[B[D[D[Lorg/javia/arity/Function;)V

    iput-object v0, p0, Lorg/javia/arity/OptCodeGen;->tracer:Lorg/javia/arity/CompiledFunction;

    .line 41
    return-void
.end method


# virtual methods
.method getFun(I)Lorg/javia/arity/CompiledFunction;
    .locals 6
    .parameter

    .prologue
    .line 137
    new-instance v0, Lorg/javia/arity/CompiledFunction;

    iget-object v1, p0, Lorg/javia/arity/SimpleCodeGen;->code:Lorg/javia/arity/ByteStack;

    invoke-virtual {v1}, Lorg/javia/arity/ByteStack;->toArray()[B

    move-result-object v2

    iget-object v1, p0, Lorg/javia/arity/SimpleCodeGen;->consts:Lorg/javia/arity/DoubleStack;

    invoke-virtual {v1}, Lorg/javia/arity/DoubleStack;->getRe()[D

    move-result-object v3

    iget-object v1, p0, Lorg/javia/arity/SimpleCodeGen;->consts:Lorg/javia/arity/DoubleStack;

    invoke-virtual {v1}, Lorg/javia/arity/DoubleStack;->getIm()[D

    move-result-object v4

    iget-object v1, p0, Lorg/javia/arity/SimpleCodeGen;->funcs:Lorg/javia/arity/FunctionStack;

    invoke-virtual {v1}, Lorg/javia/arity/FunctionStack;->toArray()[Lorg/javia/arity/Function;

    move-result-object v5

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/javia/arity/CompiledFunction;-><init>(I[B[D[D[Lorg/javia/arity/Function;)V

    return-object v0
.end method

.method push(Lorg/javia/arity/Token;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;
        }
    .end annotation

    .prologue
    const-wide/high16 v10, 0x7ff8

    const-wide/16 v8, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 54
    iget-boolean v3, p0, Lorg/javia/arity/OptCodeGen;->isPercent:Z

    .line 55
    iput-boolean v7, p0, Lorg/javia/arity/OptCodeGen;->isPercent:Z

    .line 57
    iget v0, p1, Lorg/javia/arity/Token;->id:I

    packed-switch v0, :pswitch_data_0

    .line 94
    iget-byte v0, p1, Lorg/javia/arity/Token;->vmop:B

    .line 95
    if-gtz v0, :cond_6

    .line 96
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wrong vmop: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :pswitch_0
    iget-object v0, p0, Lorg/javia/arity/OptCodeGen;->traceConstsRe:[D

    iget-wide v4, p1, Lorg/javia/arity/Token;->value:D

    aput-wide v4, v0, v7

    .line 61
    iget-object v0, p0, Lorg/javia/arity/OptCodeGen;->traceConstsIm:[D

    aput-wide v8, v0, v7

    move v0, v1

    .line 102
    :cond_0
    :goto_0
    iget v4, p0, Lorg/javia/arity/OptCodeGen;->sp:I

    .line 103
    iget-object v4, p0, Lorg/javia/arity/OptCodeGen;->traceCode:[B

    aput-byte v0, v4, v7

    .line 104
    const/16 v4, 0x8

    if-eq v0, v4, :cond_8

    .line 105
    iget-object v4, p0, Lorg/javia/arity/OptCodeGen;->tracer:Lorg/javia/arity/CompiledFunction;

    iget-object v5, p0, Lorg/javia/arity/OptCodeGen;->context:Lorg/javia/arity/EvalContext;

    iget v6, p0, Lorg/javia/arity/OptCodeGen;->sp:I

    if-eqz v3, :cond_7

    const/4 v3, -0x1

    :goto_1
    invoke-virtual {v4, v5, v6, v3}, Lorg/javia/arity/CompiledFunction;->execWithoutCheckComplex(Lorg/javia/arity/EvalContext;II)I

    move-result v3

    iput v3, p0, Lorg/javia/arity/OptCodeGen;->sp:I

    .line 114
    :goto_2
    iget-object v3, p0, Lorg/javia/arity/OptCodeGen;->stack:[Lorg/javia/arity/Complex;

    iget v4, p0, Lorg/javia/arity/OptCodeGen;->sp:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lorg/javia/arity/Complex;->isNaN()Z

    move-result v3

    if-eqz v3, :cond_1

    if-ne v0, v1, :cond_e

    .line 115
    :cond_1
    if-ne v0, v2, :cond_9

    iget-object v0, p0, Lorg/javia/arity/OptCodeGen;->traceFuncs:[Lorg/javia/arity/Function;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lorg/javia/arity/Function;->arity()I

    move-result v0

    .line 116
    :goto_3
    if-lez v0, :cond_c

    .line 117
    iget-object v3, p0, Lorg/javia/arity/SimpleCodeGen;->code:Lorg/javia/arity/ByteStack;

    invoke-virtual {v3}, Lorg/javia/arity/ByteStack;->pop()B

    move-result v3

    .line 118
    if-ne v3, v1, :cond_a

    .line 119
    iget-object v3, p0, Lorg/javia/arity/SimpleCodeGen;->consts:Lorg/javia/arity/DoubleStack;

    invoke-virtual {v3}, Lorg/javia/arity/DoubleStack;->pop()V

    .line 126
    :goto_4
    add-int/lit8 v0, v0, -0x1

    .line 127
    goto :goto_3

    .line 66
    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/javia/arity/OptCodeGen;->getSymbol(Lorg/javia/arity/Token;)Lorg/javia/arity/Symbol;

    move-result-object v0

    .line 67
    invoke-virtual {p1}, Lorg/javia/arity/Token;->isDerivative()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 69
    iget-object v4, p0, Lorg/javia/arity/OptCodeGen;->traceFuncs:[Lorg/javia/arity/Function;

    iget-object v0, v0, Lorg/javia/arity/Symbol;->fun:Lorg/javia/arity/Function;

    invoke-virtual {v0}, Lorg/javia/arity/Function;->getDerivative()Lorg/javia/arity/Function;

    move-result-object v0

    aput-object v0, v4, v7

    move v0, v2

    goto :goto_0

    .line 70
    :cond_2
    iget-byte v4, v0, Lorg/javia/arity/Symbol;->op:B

    if-lez v4, :cond_4

    .line 71
    iget-byte v0, v0, Lorg/javia/arity/Symbol;->op:B

    .line 72
    const/16 v4, 0x26

    if-lt v0, v4, :cond_0

    const/16 v4, 0x2a

    if-gt v0, v4, :cond_0

    .line 73
    add-int/lit8 v1, v0, -0x26

    .line 74
    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lorg/javia/arity/OptCodeGen;->intrinsicArity:I

    if-le v2, v3, :cond_3

    .line 75
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/javia/arity/OptCodeGen;->intrinsicArity:I

    .line 77
    :cond_3
    iget-object v1, p0, Lorg/javia/arity/OptCodeGen;->stack:[Lorg/javia/arity/Complex;

    iget v2, p0, Lorg/javia/arity/OptCodeGen;->sp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/javia/arity/OptCodeGen;->sp:I

    aget-object v1, v1, v2

    iput-wide v10, v1, Lorg/javia/arity/Complex;->re:D

    .line 78
    iget-object v1, p0, Lorg/javia/arity/OptCodeGen;->stack:[Lorg/javia/arity/Complex;

    iget v2, p0, Lorg/javia/arity/OptCodeGen;->sp:I

    aget-object v1, v1, v2

    iput-wide v8, v1, Lorg/javia/arity/Complex;->im:D

    .line 79
    iget-object v1, p0, Lorg/javia/arity/SimpleCodeGen;->code:Lorg/javia/arity/ByteStack;

    invoke-virtual {v1, v0}, Lorg/javia/arity/ByteStack;->push(B)V

    .line 134
    :goto_5
    return-void

    .line 83
    :cond_4
    iget-object v4, v0, Lorg/javia/arity/Symbol;->fun:Lorg/javia/arity/Function;

    if-eqz v4, :cond_5

    .line 85
    iget-object v4, p0, Lorg/javia/arity/OptCodeGen;->traceFuncs:[Lorg/javia/arity/Function;

    iget-object v0, v0, Lorg/javia/arity/Symbol;->fun:Lorg/javia/arity/Function;

    aput-object v0, v4, v7

    move v0, v2

    goto/16 :goto_0

    .line 88
    :cond_5
    iget-object v4, p0, Lorg/javia/arity/OptCodeGen;->traceConstsRe:[D

    iget-wide v5, v0, Lorg/javia/arity/Symbol;->valueRe:D

    aput-wide v5, v4, v7

    .line 89
    iget-object v4, p0, Lorg/javia/arity/OptCodeGen;->traceConstsIm:[D

    iget-wide v5, v0, Lorg/javia/arity/Symbol;->valueIm:D

    aput-wide v5, v4, v7

    move v0, v1

    .line 91
    goto/16 :goto_0

    .line 98
    :cond_6
    const/16 v4, 0xc

    if-ne v0, v4, :cond_0

    .line 99
    iput-boolean v1, p0, Lorg/javia/arity/OptCodeGen;->isPercent:Z

    goto/16 :goto_0

    .line 105
    :cond_7
    const/4 v3, -0x2

    goto/16 :goto_1

    .line 107
    :cond_8
    iget-object v3, p0, Lorg/javia/arity/OptCodeGen;->stack:[Lorg/javia/arity/Complex;

    iget v4, p0, Lorg/javia/arity/OptCodeGen;->sp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/javia/arity/OptCodeGen;->sp:I

    aget-object v3, v3, v4

    iput-wide v10, v3, Lorg/javia/arity/Complex;->re:D

    .line 108
    iget-object v3, p0, Lorg/javia/arity/OptCodeGen;->stack:[Lorg/javia/arity/Complex;

    iget v4, p0, Lorg/javia/arity/OptCodeGen;->sp:I

    aget-object v3, v3, v4

    iput-wide v8, v3, Lorg/javia/arity/Complex;->im:D

    goto/16 :goto_2

    .line 115
    :cond_9
    sget-object v3, Lorg/javia/arity/VM;->arity:[B

    aget-byte v0, v3, v0

    goto/16 :goto_3

    .line 120
    :cond_a
    if-ne v3, v2, :cond_b

    .line 121
    iget-object v3, p0, Lorg/javia/arity/SimpleCodeGen;->funcs:Lorg/javia/arity/FunctionStack;

    invoke-virtual {v3}, Lorg/javia/arity/FunctionStack;->pop()Lorg/javia/arity/Function;

    move-result-object v3

    .line 122
    invoke-virtual {v3}, Lorg/javia/arity/Function;->arity()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    add-int/2addr v0, v3

    .line 123
    goto/16 :goto_4

    .line 124
    :cond_b
    sget-object v4, Lorg/javia/arity/VM;->arity:[B

    aget-byte v3, v4, v3

    add-int/2addr v0, v3

    goto/16 :goto_4

    .line 128
    :cond_c
    iget-object v0, p0, Lorg/javia/arity/SimpleCodeGen;->consts:Lorg/javia/arity/DoubleStack;

    iget-object v2, p0, Lorg/javia/arity/OptCodeGen;->stack:[Lorg/javia/arity/Complex;

    iget v3, p0, Lorg/javia/arity/OptCodeGen;->sp:I

    aget-object v2, v2, v3

    iget-wide v2, v2, Lorg/javia/arity/Complex;->re:D

    iget-object v4, p0, Lorg/javia/arity/OptCodeGen;->stack:[Lorg/javia/arity/Complex;

    iget v5, p0, Lorg/javia/arity/OptCodeGen;->sp:I

    aget-object v4, v4, v5

    iget-wide v4, v4, Lorg/javia/arity/Complex;->im:D

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/javia/arity/DoubleStack;->push(DD)V

    move v0, v1

    .line 133
    :cond_d
    :goto_6
    iget-object v1, p0, Lorg/javia/arity/SimpleCodeGen;->code:Lorg/javia/arity/ByteStack;

    invoke-virtual {v1, v0}, Lorg/javia/arity/ByteStack;->push(B)V

    goto :goto_5

    .line 130
    :cond_e
    if-ne v0, v2, :cond_d

    .line 131
    iget-object v1, p0, Lorg/javia/arity/SimpleCodeGen;->funcs:Lorg/javia/arity/FunctionStack;

    iget-object v2, p0, Lorg/javia/arity/OptCodeGen;->traceFuncs:[Lorg/javia/arity/Function;

    aget-object v2, v2, v7

    invoke-virtual {v1, v2}, Lorg/javia/arity/FunctionStack;->push(Lorg/javia/arity/Function;)V

    goto :goto_6

    .line 57
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method start()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-super {p0}, Lorg/javia/arity/SimpleCodeGen;->start()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lorg/javia/arity/OptCodeGen;->sp:I

    .line 47
    iput v1, p0, Lorg/javia/arity/OptCodeGen;->intrinsicArity:I

    .line 48
    iput-boolean v1, p0, Lorg/javia/arity/OptCodeGen;->isPercent:Z

    .line 49
    return-void
.end method
