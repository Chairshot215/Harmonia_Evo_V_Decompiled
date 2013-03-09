.class public Lorg/javia/arity/CompiledFunction;
.super Lorg/javia/arity/ContextFunction;
.source "CompiledFunction.java"


# static fields
.field private static final EMPTY_DOUBLE:[D

.field private static final EMPTY_FUN:[Lorg/javia/arity/Function;

.field private static final IS_COMPLEX:Lorg/javia/arity/IsComplexException;

.field private static final random:Ljava/util/Random;


# instance fields
.field private final arity:I

.field private final code:[B

.field private final constsIm:[D

.field private final constsRe:[D

.field private final funcs:[Lorg/javia/arity/Function;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    new-instance v0, Lorg/javia/arity/IsComplexException;

    invoke-direct {v0}, Lorg/javia/arity/IsComplexException;-><init>()V

    sput-object v0, Lorg/javia/arity/CompiledFunction;->IS_COMPLEX:Lorg/javia/arity/IsComplexException;

    .line 38
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/javia/arity/CompiledFunction;->random:Ljava/util/Random;

    .line 39
    new-array v0, v1, [D

    sput-object v0, Lorg/javia/arity/CompiledFunction;->EMPTY_DOUBLE:[D

    .line 40
    new-array v0, v1, [Lorg/javia/arity/Function;

    sput-object v0, Lorg/javia/arity/CompiledFunction;->EMPTY_FUN:[Lorg/javia/arity/Function;

    return-void
.end method

.method constructor <init>(I[B[D[D[Lorg/javia/arity/Function;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/javia/arity/ContextFunction;-><init>()V

    .line 49
    iput p1, p0, Lorg/javia/arity/CompiledFunction;->arity:I

    .line 50
    iput-object p2, p0, Lorg/javia/arity/CompiledFunction;->code:[B

    .line 51
    iput-object p3, p0, Lorg/javia/arity/CompiledFunction;->constsRe:[D

    .line 52
    iput-object p4, p0, Lorg/javia/arity/CompiledFunction;->constsIm:[D

    .line 53
    iput-object p5, p0, Lorg/javia/arity/CompiledFunction;->funcs:[Lorg/javia/arity/Function;

    .line 54
    return-void
.end method

.method private evalComplexToReal([DLorg/javia/arity/EvalContext;)D
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 127
    invoke-virtual {p0, p1, p2}, Lorg/javia/arity/CompiledFunction;->toComplex([DLorg/javia/arity/EvalContext;)[Lorg/javia/arity/Complex;

    move-result-object v0

    .line 128
    invoke-virtual {p0, v0, p2}, Lorg/javia/arity/CompiledFunction;->eval([Lorg/javia/arity/Complex;Lorg/javia/arity/EvalContext;)Lorg/javia/arity/Complex;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lorg/javia/arity/Complex;->asReal()D

    move-result-wide v0

    return-wide v0
.end method

.method private execComplex(Lorg/javia/arity/EvalContext;I)I
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 155
    add-int/lit8 v0, p2, 0x1

    .line 156
    const/4 v1, -0x2

    invoke-virtual {p0, p1, p2, v1}, Lorg/javia/arity/CompiledFunction;->execWithoutCheckComplex(Lorg/javia/arity/EvalContext;II)I

    move-result v1

    .line 157
    if-eq v1, v0, :cond_0

    .line 158
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack pointer after exec: expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", got "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 161
    :cond_0
    iget-object v0, p1, Lorg/javia/arity/EvalContext;->stackComplex:[Lorg/javia/arity/Complex;

    iget v2, p0, Lorg/javia/arity/CompiledFunction;->arity:I

    sub-int v2, v1, v2

    aget-object v0, v0, v2

    iget-object v2, p1, Lorg/javia/arity/EvalContext;->stackComplex:[Lorg/javia/arity/Complex;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Lorg/javia/arity/Complex;->set(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    .line 162
    iget v0, p0, Lorg/javia/arity/CompiledFunction;->arity:I

    sub-int v0, v1, v0

    return v0
.end method

.method private execReal(Lorg/javia/arity/EvalContext;I)I
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/IsComplexException;
        }
    .end annotation

    .prologue
    .line 144
    add-int/lit8 v0, p2, 0x1

    .line 145
    invoke-virtual {p0, p1, p2}, Lorg/javia/arity/CompiledFunction;->execWithoutCheck(Lorg/javia/arity/EvalContext;I)I

    move-result v1

    .line 146
    if-eq v1, v0, :cond_0

    .line 147
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack pointer after exec: expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", got "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 150
    :cond_0
    iget-object v0, p1, Lorg/javia/arity/EvalContext;->stackRe:[D

    iget v2, p0, Lorg/javia/arity/CompiledFunction;->arity:I

    sub-int v2, v1, v2

    iget-object v3, p1, Lorg/javia/arity/EvalContext;->stackRe:[D

    aget-wide v3, v3, v1

    aput-wide v3, v0, v2

    .line 151
    iget v0, p0, Lorg/javia/arity/CompiledFunction;->arity:I

    sub-int v0, v1, v0

    return v0
.end method

.method static makeOpFunction(I)Lorg/javia/arity/Function;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 57
    sget-object v0, Lorg/javia/arity/VM;->arity:[B

    aget-byte v0, v0, p0

    if-eq v0, v5, :cond_0

    .line 58
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeOpFunction expects arity 1, found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/javia/arity/VM;->arity:[B

    aget-byte v2, v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    new-instance v0, Lorg/javia/arity/CompiledFunction;

    sget-object v1, Lorg/javia/arity/VM;->arity:[B

    aget-byte v1, v1, p0

    const/4 v2, 0x2

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/16 v4, 0x26

    aput-byte v4, v2, v3

    int-to-byte v3, p0

    aput-byte v3, v2, v5

    sget-object v3, Lorg/javia/arity/CompiledFunction;->EMPTY_DOUBLE:[D

    sget-object v4, Lorg/javia/arity/CompiledFunction;->EMPTY_DOUBLE:[D

    sget-object v5, Lorg/javia/arity/CompiledFunction;->EMPTY_FUN:[Lorg/javia/arity/Function;

    invoke-direct/range {v0 .. v5}, Lorg/javia/arity/CompiledFunction;-><init>(I[B[D[D[Lorg/javia/arity/Function;)V

    .line 61
    const/16 v1, 0x1d

    if-ne p0, v1, :cond_1

    .line 62
    new-instance v1, Lorg/javia/arity/CompiledFunction$1;

    invoke-direct {v1}, Lorg/javia/arity/CompiledFunction$1;-><init>()V

    invoke-virtual {v0, v1}, Lorg/javia/arity/CompiledFunction;->setDerivative(Lorg/javia/arity/Function;)V

    .line 72
    :cond_1
    return-object v0
.end method


# virtual methods
.method public arity()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lorg/javia/arity/CompiledFunction;->arity:I

    return v0
.end method

.method public eval([DLorg/javia/arity/EvalContext;)D
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lorg/javia/arity/CompiledFunction;->constsIm:[D

    if-eqz v0, :cond_0

    .line 114
    invoke-direct {p0, p1, p2}, Lorg/javia/arity/CompiledFunction;->evalComplexToReal([DLorg/javia/arity/EvalContext;)D

    move-result-wide v0

    .line 122
    :goto_0
    return-wide v0

    .line 116
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/javia/arity/CompiledFunction;->checkArity(I)V

    .line 117
    const/4 v0, 0x0

    iget-object v1, p2, Lorg/javia/arity/EvalContext;->stackRe:[D

    iget v2, p2, Lorg/javia/arity/EvalContext;->stackBase:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    :try_start_0
    iget v0, p2, Lorg/javia/arity/EvalContext;->stackBase:I

    array-length v1, p1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p2, v0}, Lorg/javia/arity/CompiledFunction;->execReal(Lorg/javia/arity/EvalContext;I)I

    .line 120
    iget-object v0, p2, Lorg/javia/arity/EvalContext;->stackRe:[D

    iget v1, p2, Lorg/javia/arity/EvalContext;->stackBase:I

    aget-wide v0, v0, v1
    :try_end_0
    .catch Lorg/javia/arity/IsComplexException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    invoke-direct {p0, p1, p2}, Lorg/javia/arity/CompiledFunction;->evalComplexToReal([DLorg/javia/arity/EvalContext;)D

    move-result-wide v0

    goto :goto_0
.end method

.method public eval([Lorg/javia/arity/Complex;Lorg/javia/arity/EvalContext;)Lorg/javia/arity/Complex;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 133
    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/javia/arity/CompiledFunction;->checkArity(I)V

    .line 134
    iget-object v1, p2, Lorg/javia/arity/EvalContext;->stackComplex:[Lorg/javia/arity/Complex;

    .line 135
    iget v2, p2, Lorg/javia/arity/EvalContext;->stackBase:I

    .line 136
    const/4 v0, 0x0

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 137
    add-int v3, v0, v2

    aget-object v3, v1, v3

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Lorg/javia/arity/Complex;->set(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_0
    array-length v0, p1

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p2, v0}, Lorg/javia/arity/CompiledFunction;->execComplex(Lorg/javia/arity/EvalContext;I)I

    .line 140
    aget-object v0, v1, v2

    return-object v0
.end method

.method execWithoutCheck(Lorg/javia/arity/EvalContext;I)I
    .locals 20
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/IsComplexException;
        }
    .end annotation

    .prologue
    .line 166
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/javia/arity/CompiledFunction;->constsIm:[D

    if-eqz v1, :cond_0

    .line 167
    sget-object v1, Lorg/javia/arity/CompiledFunction;->IS_COMPLEX:Lorg/javia/arity/IsComplexException;

    throw v1

    .line 170
    :cond_0
    move-object/from16 v0, p1

    iget-object v9, v0, Lorg/javia/arity/EvalContext;->stackRe:[D

    .line 172
    move-object/from16 v0, p0

    iget v1, v0, Lorg/javia/arity/CompiledFunction;->arity:I

    sub-int v10, p2, v1

    .line 173
    const/4 v7, 0x0

    .line 174
    const/4 v5, 0x0

    .line 176
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/javia/arity/CompiledFunction;->code:[B

    array-length v11, v1

    .line 177
    const/4 v3, -0x2

    .line 179
    const/4 v4, 0x0

    move/from16 v8, p2

    :goto_0
    if-ge v4, v11, :cond_d

    .line 180
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/javia/arity/CompiledFunction;->code:[B

    aget-byte v2, v1, v4

    .line 181
    packed-switch v2, :pswitch_data_0

    .line 318
    new-instance v1, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown opcode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 183
    :pswitch_0
    add-int/lit8 v2, v8, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/javia/arity/CompiledFunction;->constsRe:[D

    add-int/lit8 v1, v7, 0x1

    aget-wide v6, v6, v7

    aput-wide v6, v9, v2

    move/from16 v18, v3

    move v3, v1

    move/from16 v1, v18

    move/from16 v19, v5

    move v5, v2

    move/from16 v2, v19

    .line 179
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v7, v3

    move v8, v5

    move v3, v1

    move v5, v2

    goto :goto_0

    .line 187
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/javia/arity/CompiledFunction;->funcs:[Lorg/javia/arity/Function;

    add-int/lit8 v6, v5, 0x1

    aget-object v1, v1, v5

    .line 188
    instance-of v2, v1, Lorg/javia/arity/CompiledFunction;

    if-eqz v2, :cond_1

    .line 189
    check-cast v1, Lorg/javia/arity/CompiledFunction;

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v8}, Lorg/javia/arity/CompiledFunction;->execReal(Lorg/javia/arity/EvalContext;I)I

    move-result v1

    move v2, v6

    move v5, v1

    move v1, v3

    move v3, v7

    goto :goto_1

    .line 191
    :cond_1
    invoke-virtual {v1}, Lorg/javia/arity/Function;->arity()I

    move-result v2

    .line 192
    sub-int v5, v8, v2

    .line 194
    move-object/from16 v0, p1

    iget v8, v0, Lorg/javia/arity/EvalContext;->stackBase:I

    .line 196
    add-int/lit8 v12, v5, 0x1

    :try_start_0
    move-object/from16 v0, p1

    iput v12, v0, Lorg/javia/arity/EvalContext;->stackBase:I

    .line 197
    packed-switch v2, :pswitch_data_1

    .line 208
    new-array v12, v2, [D

    .line 209
    add-int/lit8 v13, v5, 0x1

    const/4 v14, 0x0

    invoke-static {v9, v13, v12, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    invoke-virtual {v1, v12}, Lorg/javia/arity/Function;->eval([D)D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 213
    :goto_2
    move-object/from16 v0, p1

    iput v8, v0, Lorg/javia/arity/EvalContext;->stackBase:I

    .line 215
    add-int/lit8 v5, v5, 0x1

    aput-wide v1, v9, v5

    move v1, v3

    move v2, v6

    move v3, v7

    .line 218
    goto :goto_1

    .line 199
    :pswitch_2
    :try_start_1
    invoke-virtual {v1}, Lorg/javia/arity/Function;->eval()D

    move-result-wide v1

    goto :goto_2

    .line 202
    :pswitch_3
    add-int/lit8 v2, v5, 0x1

    aget-wide v12, v9, v2

    invoke-virtual {v1, v12, v13}, Lorg/javia/arity/Function;->eval(D)D

    move-result-wide v1

    goto :goto_2

    .line 205
    :pswitch_4
    add-int/lit8 v2, v5, 0x1

    aget-wide v12, v9, v2

    add-int/lit8 v2, v5, 0x2

    aget-wide v14, v9, v2

    invoke-virtual {v1, v12, v13, v14, v15}, Lorg/javia/arity/Function;->eval(DD)D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    goto :goto_2

    .line 213
    :catchall_0
    move-exception v1

    move-object/from16 v0, p1

    iput v8, v0, Lorg/javia/arity/EvalContext;->stackBase:I

    throw v1

    .line 221
    :pswitch_5
    add-int/lit8 v1, v8, 0x1

    sget-object v2, Lorg/javia/arity/CompiledFunction;->random:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v12

    aput-wide v12, v9, v1

    move v2, v5

    move v5, v1

    move v1, v3

    move v3, v7

    goto :goto_1

    .line 224
    :pswitch_6
    add-int/lit8 v6, v8, -0x1

    aget-wide v12, v9, v6

    .line 225
    add-int/lit8 v1, v4, -0x1

    if-ne v3, v1, :cond_3

    aget-wide v1, v9, v6

    add-int/lit8 v8, v6, 0x1

    aget-wide v14, v9, v8

    mul-double/2addr v1, v14

    :goto_3
    add-double/2addr v1, v12

    .line 226
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    invoke-static {v12, v13}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v12

    const-wide/high16 v16, 0x4090

    mul-double v12, v12, v16

    cmpg-double v8, v14, v12

    if-gez v8, :cond_2

    .line 228
    const-wide/16 v1, 0x0

    .line 230
    :cond_2
    aput-wide v1, v9, v6

    move v1, v3

    move v2, v5

    move v3, v7

    move v5, v6

    .line 231
    goto/16 :goto_1

    .line 225
    :cond_3
    add-int/lit8 v1, v6, 0x1

    aget-wide v1, v9, v1

    goto :goto_3

    .line 235
    :pswitch_7
    add-int/lit8 v6, v8, -0x1

    aget-wide v12, v9, v6

    .line 236
    add-int/lit8 v1, v4, -0x1

    if-ne v3, v1, :cond_5

    aget-wide v1, v9, v6

    add-int/lit8 v8, v6, 0x1

    aget-wide v14, v9, v8

    mul-double/2addr v1, v14

    :goto_4
    sub-double v1, v12, v1

    .line 237
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    invoke-static {v12, v13}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v12

    const-wide/high16 v16, 0x4090

    mul-double v12, v12, v16

    cmpg-double v8, v14, v12

    if-gez v8, :cond_4

    .line 239
    const-wide/16 v1, 0x0

    .line 241
    :cond_4
    aput-wide v1, v9, v6

    move v1, v3

    move v2, v5

    move v3, v7

    move v5, v6

    .line 242
    goto/16 :goto_1

    .line 236
    :cond_5
    add-int/lit8 v1, v6, 0x1

    aget-wide v1, v9, v1

    goto :goto_4

    .line 245
    :pswitch_8
    add-int/lit8 v1, v8, -0x1

    aget-wide v12, v9, v1

    add-int/lit8 v2, v1, 0x1

    aget-wide v14, v9, v2

    mul-double/2addr v12, v14

    aput-wide v12, v9, v1

    move v2, v5

    move v5, v1

    move v1, v3

    move v3, v7

    goto/16 :goto_1

    .line 246
    :pswitch_9
    add-int/lit8 v1, v8, -0x1

    aget-wide v12, v9, v1

    add-int/lit8 v2, v1, 0x1

    aget-wide v14, v9, v2

    div-double/2addr v12, v14

    aput-wide v12, v9, v1

    move v2, v5

    move v5, v1

    move v1, v3

    move v3, v7

    goto/16 :goto_1

    .line 247
    :pswitch_a
    add-int/lit8 v1, v8, -0x1

    aget-wide v12, v9, v1

    add-int/lit8 v2, v1, 0x1

    aget-wide v14, v9, v2

    rem-double/2addr v12, v14

    aput-wide v12, v9, v1

    move v2, v5

    move v5, v1

    move v1, v3

    move v3, v7

    goto/16 :goto_1

    .line 250
    :pswitch_b
    add-int/lit8 v1, v8, -0x1

    aget-wide v12, v9, v1

    add-int/lit8 v2, v1, 0x1

    aget-wide v14, v9, v2

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    aput-wide v12, v9, v1

    move v2, v5

    move v5, v1

    move v1, v3

    move v3, v7

    .line 251
    goto/16 :goto_1

    .line 254
    :pswitch_c
    aget-wide v1, v9, v8

    neg-double v1, v1

    aput-wide v1, v9, v8

    move v1, v3

    move v2, v5

    move v3, v7

    move v5, v8

    goto/16 :goto_1

    .line 255
    :pswitch_d
    aget-wide v1, v9, v8

    invoke-static {v1, v2}, Lorg/javia/arity/MoreMath;->factorial(D)D

    move-result-wide v1

    aput-wide v1, v9, v8

    move v1, v3

    move v2, v5

    move v3, v7

    move v5, v8

    goto/16 :goto_1

    .line 256
    :pswitch_e
    aget-wide v1, v9, v8

    const-wide v12, 0x3f847ae147ae147bL

    mul-double/2addr v1, v12

    aput-wide v1, v9, v8

    move v1, v4

    move v2, v5

    move v3, v7

    move v5, v8

    goto/16 :goto_1

    .line 258
    :pswitch_f
    aget-wide v1, v9, v8

    invoke-static {v1, v2}, Lorg/javia/arity/MoreMath;->sin(D)D

    move-result-wide v1

    aput-wide v1, v9, v8

    move v1, v3

    move v2, v5

    move v3, v7

    move v5, v8

    goto/16 :goto_1

    .line 259
    :pswitch_10
    aget-wide v1, v9, v8

    invoke-static {v1, v2}, Lorg/javia/arity/MoreMath;->cos(D)D

    move-result-wide v1

    aput-wide v1, v9, v8

    move v1, v3

    move v2, v5

    move v3, v7

    move v5, v8

    goto/16 :goto_1

    .line 260
    :pswitch_11
    aget-wide v1, v9, v8

    invoke-static {v1, v2}, Lorg/javia/arity/MoreMath;->tan(D)D

    move-result-wide v1

    aput-wide v1, v9, v8

    move v1, v3

    move v2, v5

    move v3, v7

    move v5, v8

    goto/16 :goto_1

    .line 263
    :pswitch_12
    aget-wide v1, v9, v8

    .line 264
    const-wide/high16 v12, -0x4010

    cmpg-double v6, v1, v12

    if-ltz v6, :cond_6

    const-wide/high16 v12, 0x3ff0

    cmpl-double v6, v1, v12

    if-lez v6, :cond_7

    .line 265
    :cond_6
    sget-object v1, Lorg/javia/arity/CompiledFunction;->IS_COMPLEX:Lorg/javia/arity/IsComplexException;

    throw v1

    .line 267
    :cond_7
    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    aput-wide v1, v9, v8

    move v1, v3

    move v2, v5

    move v3, v7

    move v5, v8

    .line 268
    goto/16 :goto_1

    .line 271
    :pswitch_13
    aget-wide v1, v9, v8

    .line 272
    const-wide/high16 v12, -0x4010

    cmpg-double v6, v1, v12

    if-ltz v6, :cond_8

    const-wide/high16 v12, 0x3ff0

    cmpl-double v6, v1, v12

    if-lez v6, :cond_9

    .line 273
    :cond_8
    sget-object v1, Lorg/javia/arity/CompiledFunction;->IS_COMPLEX:Lorg/javia/arity/IsComplexException;

    throw v1

    .line 275
    :cond_9
    invoke-static {v1, v2}, Ljava/lang/Math;->acos(D)D

    move-result-wide v1

    aput-wide v1, v9, v8

    move v1, v3

    move v2, v5

    move v3, v7

    move v5, v8

    .line 276
    goto/16 :goto_1

    .line 278
    :pswitch_14
    aget-wide v1, v9, v8

    invoke-static {v1, v2}, Ljava/lang/Math;->atan(D)D

    move-result-wide v1

    aput-wide v1, v9, v8

    move v1, v3

    move v2, v5

    move v3, v7

    move v5, v8

    goto/16 :goto_1

    .line 280
    :pswitch_15
    aget-wide v1, v9, v8

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    aput-wide v1, v9, v8

    move v1, v3

    move v2, v5

    move v3, v7

    move v5, v8

    goto/16 :goto_1

    .line 281
    :pswitch_16
    aget-wide v1, v9, v8

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    aput-wide v1, v9, v8

    move v1, v3

    move v2, v5

    move v3, v7

    move v5, v8

    goto/16 :goto_1

    .line 284
    :pswitch_17
    aget-wide v1, v9, v8

    const-wide/16 v12, 0x0

    cmpg-double v6, v1, v12

    if-gez v6, :cond_a

    sget-object v1, Lorg/javia/arity/CompiledFunction;->IS_COMPLEX:Lorg/javia/arity/IsComplexException;

    throw v1

    .line 285
    :cond_a
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    aput-wide v1, v9, v8

    move v1, v3

    move v2, v5

    move v3, v7

    move v5, v8

    .line 286
    goto/16 :goto_1

    .line 288
    :pswitch_18
    aget-wide v1, v9, v8

    invoke-static {v1, v2}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v1

    aput-wide v1, v9, v8

    move v1, v3

    move v2, v5

    move v3, v7

    move v5, v8

    goto/16 :goto_1

    .line 290
    :pswitch_19
    aget-wide v1, v9, v8

    invoke-static {v1, v2}, Ljava/lang/Math;->sinh(D)D

    move-result-wide v1

    aput-wide v1, v9, v8

    move v1, v3

    move v2, v5

    move v3, v7

    move v5, v8

    goto/16 :goto_1

    .line 291
    :pswitch_1a
    aget-wide v1, v9, v8

    invoke-static {v1, v2}, Ljava/lang/Math;->cosh(D)D

    move-result-wide v1

    aput-wide v1, v9, v8

    move v1, v3

    move v2, v5

    move v3, v7

    move v5, v8

    goto/16 :goto_1

    .line 292
    :pswitch_1b
    aget-wide v1, v9, v8

    invoke-static {v1, v2}, Ljava/lang/Math;->tanh(D)D

    move-result-wide v1

    aput-wide v1, v9, v8

    move v1, v3

    move v2, v5

    move v3, v7

    move v5, v8

    goto/16 :goto_1

    .line 293
    :pswitch_1c
    aget-wide v1, v9, v8

    invoke-static {v1, v2}, Lorg/javia/arity/MoreMath;->asinh(D)D

    move-result-wide v1

    aput-wide v1, v9, v8

    move v1, v3

    move v2, v5

    move v3, v7

    move v5, v8

    goto/16 :goto_1

    .line 294
    :pswitch_1d
    aget-wide v1, v9, v8

    invoke-static {v1, v2}, Lorg/javia/arity/MoreMath;->acosh(D)D

    move-result-wide v1

    aput-wide v1, v9, v8

    move v1, v3

    move v2, v5

    move v3, v7

    move v5, v8

    goto/16 :goto_1

    .line 295
    :pswitch_1e
    aget-wide v1, v9, v8

    invoke-static {v1, v2}, Lorg/javia/arity/MoreMath;->atanh(D)D

    move-result-wide v1

    aput-wide v1, v9, v8

    move v1, v3

    move v2, v5

    move v3, v7

    move v5, v8

    goto/16 :goto_1

    .line 297
    :pswitch_1f
    aget-wide v1, v9, v8

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    aput-wide v1, v9, v8

    move v1, v3

    move v2, v5

    move v3, v7

    move v5, v8

    goto/16 :goto_1

    .line 298
    :pswitch_20
    aget-wide v1, v9, v8

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    aput-wide v1, v9, v8

    move v1, v3

    move v2, v5

    move v3, v7

    move v5, v8

    goto/16 :goto_1

    .line 299
    :pswitch_21
    aget-wide v1, v9, v8

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    aput-wide v1, v9, v8

    move v1, v3

    move v2, v5

    move v3, v7

    move v5, v8

    goto/16 :goto_1

    .line 300
    :pswitch_22
    aget-wide v1, v9, v8

    const-wide/16 v12, 0x0

    cmpl-double v1, v1, v12

    if-lez v1, :cond_b

    const-wide/high16 v1, 0x3ff0

    :goto_5
    aput-wide v1, v9, v8

    move v1, v3

    move v2, v5

    move v3, v7

    move v5, v8

    goto/16 :goto_1

    :cond_b
    aget-wide v1, v9, v8

    const-wide/16 v12, 0x0

    cmpg-double v1, v1, v12

    if-gez v1, :cond_c

    const-wide/high16 v1, -0x4010

    goto :goto_5

    :cond_c
    const-wide/16 v1, 0x0

    goto :goto_5

    .line 302
    :pswitch_23
    add-int/lit8 v1, v8, -0x1

    aget-wide v12, v9, v1

    add-int/lit8 v2, v1, 0x1

    aget-wide v14, v9, v2

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v12

    aput-wide v12, v9, v1

    move v2, v5

    move v5, v1

    move v1, v3

    move v3, v7

    goto/16 :goto_1

    .line 303
    :pswitch_24
    add-int/lit8 v1, v8, -0x1

    aget-wide v12, v9, v1

    add-int/lit8 v2, v1, 0x1

    aget-wide v14, v9, v2

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v12

    aput-wide v12, v9, v1

    move v2, v5

    move v5, v1

    move v1, v3

    move v3, v7

    goto/16 :goto_1

    .line 304
    :pswitch_25
    add-int/lit8 v1, v8, -0x1

    aget-wide v12, v9, v1

    add-int/lit8 v2, v1, 0x1

    aget-wide v14, v9, v2

    invoke-static {v12, v13, v14, v15}, Lorg/javia/arity/MoreMath;->gcd(DD)D

    move-result-wide v12

    aput-wide v12, v9, v1

    move v2, v5

    move v5, v1

    move v1, v3

    move v3, v7

    goto/16 :goto_1

    .line 305
    :pswitch_26
    add-int/lit8 v1, v8, -0x1

    aget-wide v12, v9, v1

    add-int/lit8 v2, v1, 0x1

    aget-wide v14, v9, v2

    invoke-static {v12, v13, v14, v15}, Lorg/javia/arity/MoreMath;->combinations(DD)D

    move-result-wide v12

    aput-wide v12, v9, v1

    move v2, v5

    move v5, v1

    move v1, v3

    move v3, v7

    goto/16 :goto_1

    .line 306
    :pswitch_27
    add-int/lit8 v1, v8, -0x1

    aget-wide v12, v9, v1

    add-int/lit8 v2, v1, 0x1

    aget-wide v14, v9, v2

    invoke-static {v12, v13, v14, v15}, Lorg/javia/arity/MoreMath;->permutations(DD)D

    move-result-wide v12

    aput-wide v12, v9, v1

    move v2, v5

    move v5, v1

    move v1, v3

    move v3, v7

    goto/16 :goto_1

    .line 314
    :pswitch_28
    add-int/lit8 v1, v8, 0x1

    add-int/2addr v2, v10

    add-int/lit8 v2, v2, -0x25

    aget-wide v12, v9, v2

    aput-wide v12, v9, v1

    move v2, v5

    move v5, v1

    move v1, v3

    move v3, v7

    .line 315
    goto/16 :goto_1

    .line 321
    :cond_d
    return v8

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_5
        :pswitch_c
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_17
        :pswitch_18
        :pswitch_15
        :pswitch_16
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
    .end packed-switch

    .line 197
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method execWithoutCheckComplex(Lorg/javia/arity/EvalContext;II)I
    .locals 17
    .parameter
    .parameter
    .parameter

    .prologue
    .line 325
    move-object/from16 v0, p1

    iget-object v9, v0, Lorg/javia/arity/EvalContext;->stackComplex:[Lorg/javia/arity/Complex;

    .line 327
    move-object/from16 v0, p0

    iget v1, v0, Lorg/javia/arity/CompiledFunction;->arity:I

    sub-int v10, p2, v1

    .line 328
    const/4 v5, 0x0

    .line 329
    const/4 v3, 0x0

    .line 331
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/javia/arity/CompiledFunction;->code:[B

    array-length v11, v1

    .line 333
    const/4 v7, 0x0

    move/from16 v6, p3

    move/from16 v8, p2

    :goto_0
    if-ge v7, v11, :cond_6

    .line 334
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/javia/arity/CompiledFunction;->code:[B

    aget-byte v2, v1, v7

    .line 336
    packed-switch v2, :pswitch_data_0

    .line 456
    new-instance v1, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown opcode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 338
    :pswitch_0
    add-int/lit8 v4, v8, 0x1

    .line 339
    aget-object v8, v9, v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/javia/arity/CompiledFunction;->constsRe:[D

    aget-wide v12, v1, v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/javia/arity/CompiledFunction;->constsIm:[D

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    :goto_1
    invoke-virtual {v8, v12, v13, v1, v2}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    .line 340
    add-int/lit8 v1, v5, 0x1

    move v2, v1

    move v1, v3

    move v3, v6

    .line 333
    :goto_2
    add-int/lit8 v7, v7, 0x1

    move v5, v2

    move v6, v3

    move v8, v4

    move v3, v1

    goto :goto_0

    .line 339
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/javia/arity/CompiledFunction;->constsIm:[D

    aget-wide v1, v1, v5

    goto :goto_1

    .line 344
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/javia/arity/CompiledFunction;->funcs:[Lorg/javia/arity/Function;

    add-int/lit8 v4, v3, 0x1

    aget-object v1, v1, v3

    .line 345
    instance-of v2, v1, Lorg/javia/arity/CompiledFunction;

    if-eqz v2, :cond_1

    .line 346
    check-cast v1, Lorg/javia/arity/CompiledFunction;

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v8}, Lorg/javia/arity/CompiledFunction;->execComplex(Lorg/javia/arity/EvalContext;I)I

    move-result v1

    move v2, v5

    move v3, v6

    move/from16 v16, v4

    move v4, v1

    move/from16 v1, v16

    goto :goto_2

    .line 348
    :cond_1
    invoke-virtual {v1}, Lorg/javia/arity/Function;->arity()I

    move-result v2

    .line 349
    sub-int v3, v8, v2

    .line 351
    move-object/from16 v0, p1

    iget v8, v0, Lorg/javia/arity/EvalContext;->stackBase:I

    .line 353
    add-int/lit8 v12, v3, 0x1

    :try_start_0
    move-object/from16 v0, p1

    iput v12, v0, Lorg/javia/arity/EvalContext;->stackBase:I

    .line 354
    packed-switch v2, :pswitch_data_1

    .line 365
    new-array v12, v2, [Lorg/javia/arity/Complex;

    .line 366
    add-int/lit8 v13, v3, 0x1

    const/4 v14, 0x0

    invoke-static {v9, v13, v12, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 367
    invoke-virtual {v1, v12}, Lorg/javia/arity/Function;->eval([Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 370
    :goto_3
    move-object/from16 v0, p1

    iput v8, v0, Lorg/javia/arity/EvalContext;->stackBase:I

    .line 372
    add-int/lit8 v2, v3, 0x1

    aget-object v3, v9, v2

    invoke-virtual {v3, v1}, Lorg/javia/arity/Complex;->set(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move v1, v4

    move v3, v6

    move v4, v2

    move v2, v5

    .line 374
    goto :goto_2

    .line 356
    :pswitch_2
    :try_start_1
    new-instance v2, Lorg/javia/arity/Complex;

    invoke-virtual {v1}, Lorg/javia/arity/Function;->eval()D

    move-result-wide v12

    const-wide/16 v14, 0x0

    invoke-direct {v2, v12, v13, v14, v15}, Lorg/javia/arity/Complex;-><init>(DD)V

    move-object v1, v2

    .line 357
    goto :goto_3

    .line 359
    :pswitch_3
    add-int/lit8 v2, v3, 0x1

    aget-object v2, v9, v2

    invoke-virtual {v1, v2}, Lorg/javia/arity/Function;->eval(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move-result-object v1

    goto :goto_3

    .line 362
    :pswitch_4
    add-int/lit8 v2, v3, 0x1

    aget-object v2, v9, v2

    add-int/lit8 v12, v3, 0x2

    aget-object v12, v9, v12

    invoke-virtual {v1, v2, v12}, Lorg/javia/arity/Function;->eval(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_3

    .line 370
    :catchall_0
    move-exception v1

    move-object/from16 v0, p1

    iput v8, v0, Lorg/javia/arity/EvalContext;->stackBase:I

    throw v1

    .line 377
    :pswitch_5
    add-int/lit8 v1, v8, 0x1

    aget-object v2, v9, v1

    sget-object v4, Lorg/javia/arity/CompiledFunction;->random:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextDouble()D

    move-result-wide v12

    const-wide/16 v14, 0x0

    invoke-virtual {v2, v12, v13, v14, v15}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move v2, v5

    move v4, v1

    move v1, v3

    move v3, v6

    goto/16 :goto_2

    .line 379
    :pswitch_6
    add-int/lit8 v2, v8, -0x1

    aget-object v4, v9, v2

    add-int/lit8 v1, v7, -0x1

    if-ne v6, v1, :cond_2

    add-int/lit8 v1, v2, 0x1

    aget-object v1, v9, v1

    aget-object v8, v9, v2

    invoke-virtual {v1, v8}, Lorg/javia/arity/Complex;->mul(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move-result-object v1

    :goto_4
    invoke-virtual {v4, v1}, Lorg/javia/arity/Complex;->add(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move v1, v3

    move v4, v2

    move v3, v6

    move v2, v5

    goto/16 :goto_2

    :cond_2
    add-int/lit8 v1, v2, 0x1

    aget-object v1, v9, v1

    goto :goto_4

    .line 380
    :pswitch_7
    add-int/lit8 v2, v8, -0x1

    aget-object v4, v9, v2

    add-int/lit8 v1, v7, -0x1

    if-ne v6, v1, :cond_3

    add-int/lit8 v1, v2, 0x1

    aget-object v1, v9, v1

    aget-object v8, v9, v2

    invoke-virtual {v1, v8}, Lorg/javia/arity/Complex;->mul(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move-result-object v1

    :goto_5
    invoke-virtual {v4, v1}, Lorg/javia/arity/Complex;->sub(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move v1, v3

    move v4, v2

    move v3, v6

    move v2, v5

    goto/16 :goto_2

    :cond_3
    add-int/lit8 v1, v2, 0x1

    aget-object v1, v9, v1

    goto :goto_5

    .line 381
    :pswitch_8
    add-int/lit8 v1, v8, -0x1

    aget-object v2, v9, v1

    add-int/lit8 v4, v1, 0x1

    aget-object v4, v9, v4

    invoke-virtual {v2, v4}, Lorg/javia/arity/Complex;->mul(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move v2, v5

    move v4, v1

    move v1, v3

    move v3, v6

    goto/16 :goto_2

    .line 382
    :pswitch_9
    add-int/lit8 v1, v8, -0x1

    aget-object v2, v9, v1

    add-int/lit8 v4, v1, 0x1

    aget-object v4, v9, v4

    invoke-virtual {v2, v4}, Lorg/javia/arity/Complex;->div(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move v2, v5

    move v4, v1

    move v1, v3

    move v3, v6

    goto/16 :goto_2

    .line 383
    :pswitch_a
    add-int/lit8 v1, v8, -0x1

    aget-object v2, v9, v1

    add-int/lit8 v4, v1, 0x1

    aget-object v4, v9, v4

    invoke-virtual {v2, v4}, Lorg/javia/arity/Complex;->mod(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move v2, v5

    move v4, v1

    move v1, v3

    move v3, v6

    goto/16 :goto_2

    .line 384
    :pswitch_b
    add-int/lit8 v1, v8, -0x1

    aget-object v2, v9, v1

    add-int/lit8 v4, v1, 0x1

    aget-object v4, v9, v4

    invoke-virtual {v2, v4}, Lorg/javia/arity/Complex;->pow(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move v2, v5

    move v4, v1

    move v1, v3

    move v3, v6

    goto/16 :goto_2

    .line 386
    :pswitch_c
    aget-object v1, v9, v8

    invoke-virtual {v1}, Lorg/javia/arity/Complex;->negate()Lorg/javia/arity/Complex;

    move v1, v3

    move v2, v5

    move v4, v8

    move v3, v6

    goto/16 :goto_2

    .line 387
    :pswitch_d
    aget-object v1, v9, v8

    invoke-virtual {v1}, Lorg/javia/arity/Complex;->factorial()Lorg/javia/arity/Complex;

    move v1, v3

    move v2, v5

    move v4, v8

    move v3, v6

    goto/16 :goto_2

    .line 388
    :pswitch_e
    aget-object v1, v9, v8

    const-wide v12, 0x3f847ae147ae147bL

    invoke-virtual {v1, v12, v13}, Lorg/javia/arity/Complex;->mul(D)Lorg/javia/arity/Complex;

    move v1, v3

    move v2, v5

    move v4, v8

    move v3, v7

    goto/16 :goto_2

    .line 390
    :pswitch_f
    aget-object v1, v9, v8

    invoke-virtual {v1}, Lorg/javia/arity/Complex;->sin()Lorg/javia/arity/Complex;

    move v1, v3

    move v2, v5

    move v4, v8

    move v3, v6

    goto/16 :goto_2

    .line 391
    :pswitch_10
    aget-object v1, v9, v8

    invoke-virtual {v1}, Lorg/javia/arity/Complex;->cos()Lorg/javia/arity/Complex;

    move v1, v3

    move v2, v5

    move v4, v8

    move v3, v6

    goto/16 :goto_2

    .line 392
    :pswitch_11
    aget-object v1, v9, v8

    invoke-virtual {v1}, Lorg/javia/arity/Complex;->tan()Lorg/javia/arity/Complex;

    move v1, v3

    move v2, v5

    move v4, v8

    move v3, v6

    goto/16 :goto_2

    .line 393
    :pswitch_12
    aget-object v1, v9, v8

    invoke-virtual {v1}, Lorg/javia/arity/Complex;->sinh()Lorg/javia/arity/Complex;

    move v1, v3

    move v2, v5

    move v4, v8

    move v3, v6

    goto/16 :goto_2

    .line 394
    :pswitch_13
    aget-object v1, v9, v8

    invoke-virtual {v1}, Lorg/javia/arity/Complex;->cosh()Lorg/javia/arity/Complex;

    move v1, v3

    move v2, v5

    move v4, v8

    move v3, v6

    goto/16 :goto_2

    .line 395
    :pswitch_14
    aget-object v1, v9, v8

    invoke-virtual {v1}, Lorg/javia/arity/Complex;->tanh()Lorg/javia/arity/Complex;

    move v1, v3

    move v2, v5

    move v4, v8

    move v3, v6

    goto/16 :goto_2

    .line 397
    :pswitch_15
    aget-object v1, v9, v8

    invoke-virtual {v1}, Lorg/javia/arity/Complex;->asin()Lorg/javia/arity/Complex;

    move v1, v3

    move v2, v5

    move v4, v8

    move v3, v6

    goto/16 :goto_2

    .line 398
    :pswitch_16
    aget-object v1, v9, v8

    invoke-virtual {v1}, Lorg/javia/arity/Complex;->acos()Lorg/javia/arity/Complex;

    move v1, v3

    move v2, v5

    move v4, v8

    move v3, v6

    goto/16 :goto_2

    .line 399
    :pswitch_17
    aget-object v1, v9, v8

    invoke-virtual {v1}, Lorg/javia/arity/Complex;->atan()Lorg/javia/arity/Complex;

    move v1, v3

    move v2, v5

    move v4, v8

    move v3, v6

    goto/16 :goto_2

    .line 400
    :pswitch_18
    aget-object v1, v9, v8

    invoke-virtual {v1}, Lorg/javia/arity/Complex;->asinh()Lorg/javia/arity/Complex;

    move v1, v3

    move v2, v5

    move v4, v8

    move v3, v6

    goto/16 :goto_2

    .line 401
    :pswitch_19
    aget-object v1, v9, v8

    invoke-virtual {v1}, Lorg/javia/arity/Complex;->acosh()Lorg/javia/arity/Complex;

    move v1, v3

    move v2, v5

    move v4, v8

    move v3, v6

    goto/16 :goto_2

    .line 402
    :pswitch_1a
    aget-object v1, v9, v8

    invoke-virtual {v1}, Lorg/javia/arity/Complex;->atanh()Lorg/javia/arity/Complex;

    move v1, v3

    move v2, v5

    move v4, v8

    move v3, v6

    goto/16 :goto_2

    .line 404
    :pswitch_1b
    aget-object v1, v9, v8

    invoke-virtual {v1}, Lorg/javia/arity/Complex;->exp()Lorg/javia/arity/Complex;

    move v1, v3

    move v2, v5

    move v4, v8

    move v3, v6

    goto/16 :goto_2

    .line 405
    :pswitch_1c
    aget-object v1, v9, v8

    invoke-virtual {v1}, Lorg/javia/arity/Complex;->log()Lorg/javia/arity/Complex;

    move v1, v3

    move v2, v5

    move v4, v8

    move v3, v6

    goto/16 :goto_2

    .line 407
    :pswitch_1d
    aget-object v1, v9, v8

    invoke-virtual {v1}, Lorg/javia/arity/Complex;->sqrt()Lorg/javia/arity/Complex;

    move v1, v3

    move v2, v5

    move v4, v8

    move v3, v6

    goto/16 :goto_2

    .line 408
    :pswitch_1e
    aget-object v1, v9, v8

    new-instance v2, Lorg/javia/arity/Complex;

    const-wide v12, 0x400aaaaaaaaaaaabL

    const-wide/16 v14, 0x0

    invoke-direct {v2, v12, v13, v14, v15}, Lorg/javia/arity/Complex;-><init>(DD)V

    invoke-virtual {v1, v2}, Lorg/javia/arity/Complex;->pow(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move v1, v3

    move v2, v5

    move v4, v8

    move v3, v6

    goto/16 :goto_2

    .line 411
    :pswitch_1f
    aget-object v1, v9, v8

    aget-object v2, v9, v8

    invoke-virtual {v2}, Lorg/javia/arity/Complex;->abs()D

    move-result-wide v12

    const-wide/16 v14, 0x0

    invoke-virtual {v1, v12, v13, v14, v15}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move v1, v3

    move v2, v5

    move v4, v8

    move v3, v6

    goto/16 :goto_2

    .line 412
    :pswitch_20
    aget-object v1, v9, v8

    aget-object v2, v9, v8

    iget-wide v12, v2, Lorg/javia/arity/Complex;->re:D

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    const-wide/16 v14, 0x0

    invoke-virtual {v1, v12, v13, v14, v15}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move v1, v3

    move v2, v5

    move v4, v8

    move v3, v6

    goto/16 :goto_2

    .line 413
    :pswitch_21
    aget-object v1, v9, v8

    aget-object v2, v9, v8

    iget-wide v12, v2, Lorg/javia/arity/Complex;->re:D

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    const-wide/16 v14, 0x0

    invoke-virtual {v1, v12, v13, v14, v15}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move v1, v3

    move v2, v5

    move v4, v8

    move v3, v6

    goto/16 :goto_2

    .line 415
    :pswitch_22
    aget-object v1, v9, v8

    iget-wide v1, v1, Lorg/javia/arity/Complex;->re:D

    .line 416
    aget-object v4, v9, v8

    const-wide/16 v12, 0x0

    cmpl-double v12, v1, v12

    if-lez v12, :cond_4

    const-wide/high16 v1, 0x3ff0

    :goto_6
    const-wide/16 v12, 0x0

    invoke-virtual {v4, v1, v2, v12, v13}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move v1, v3

    move v2, v5

    move v4, v8

    move v3, v6

    .line 417
    goto/16 :goto_2

    .line 416
    :cond_4
    const-wide/16 v12, 0x0

    cmpg-double v1, v1, v12

    if-gez v1, :cond_5

    const-wide/high16 v1, -0x4010

    goto :goto_6

    :cond_5
    const-wide/16 v1, 0x0

    goto :goto_6

    .line 420
    :pswitch_23
    add-int/lit8 v1, v8, -0x1

    .line 421
    add-int/lit8 v2, v1, 0x1

    aget-object v2, v9, v2

    iget-wide v12, v2, Lorg/javia/arity/Complex;->re:D

    aget-object v2, v9, v1

    iget-wide v14, v2, Lorg/javia/arity/Complex;->re:D

    cmpg-double v2, v12, v14

    if-gez v2, :cond_7

    .line 422
    aget-object v2, v9, v1

    add-int/lit8 v4, v1, 0x1

    aget-object v4, v9, v4

    invoke-virtual {v2, v4}, Lorg/javia/arity/Complex;->set(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move v2, v5

    move v4, v1

    move v1, v3

    move v3, v6

    goto/16 :goto_2

    .line 427
    :pswitch_24
    add-int/lit8 v1, v8, -0x1

    .line 428
    aget-object v2, v9, v1

    iget-wide v12, v2, Lorg/javia/arity/Complex;->re:D

    add-int/lit8 v2, v1, 0x1

    aget-object v2, v9, v2

    iget-wide v14, v2, Lorg/javia/arity/Complex;->re:D

    cmpg-double v2, v12, v14

    if-gez v2, :cond_7

    .line 429
    aget-object v2, v9, v1

    add-int/lit8 v4, v1, 0x1

    aget-object v4, v9, v4

    invoke-virtual {v2, v4}, Lorg/javia/arity/Complex;->set(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move v2, v5

    move v4, v1

    move v1, v3

    move v3, v6

    goto/16 :goto_2

    .line 435
    :pswitch_25
    add-int/lit8 v1, v8, -0x1

    aget-object v2, v9, v1

    add-int/lit8 v4, v1, 0x1

    aget-object v4, v9, v4

    invoke-virtual {v2, v4}, Lorg/javia/arity/Complex;->gcd(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move v2, v5

    move v4, v1

    move v1, v3

    move v3, v6

    .line 436
    goto/16 :goto_2

    .line 439
    :pswitch_26
    add-int/lit8 v1, v8, -0x1

    aget-object v2, v9, v1

    add-int/lit8 v4, v1, 0x1

    aget-object v4, v9, v4

    invoke-virtual {v2, v4}, Lorg/javia/arity/Complex;->combinations(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move v2, v5

    move v4, v1

    move v1, v3

    move v3, v6

    .line 440
    goto/16 :goto_2

    .line 443
    :pswitch_27
    add-int/lit8 v1, v8, -0x1

    aget-object v2, v9, v1

    add-int/lit8 v4, v1, 0x1

    aget-object v4, v9, v4

    invoke-virtual {v2, v4}, Lorg/javia/arity/Complex;->permutations(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move v2, v5

    move v4, v1

    move v1, v3

    move v3, v6

    .line 444
    goto/16 :goto_2

    .line 452
    :pswitch_28
    add-int/lit8 v1, v8, 0x1

    aget-object v4, v9, v1

    add-int/2addr v2, v10

    add-int/lit8 v2, v2, -0x25

    aget-object v2, v9, v2

    invoke-virtual {v4, v2}, Lorg/javia/arity/Complex;->set(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move v2, v5

    move v4, v1

    move v1, v3

    move v3, v6

    .line 453
    goto/16 :goto_2

    .line 459
    :cond_6
    return v8

    :cond_7
    move v2, v5

    move v4, v1

    move v1, v3

    move v3, v6

    goto/16 :goto_2

    .line 336
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_5
        :pswitch_c
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_1d
        :pswitch_1e
        :pswitch_1b
        :pswitch_1c
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
    .end packed-switch

    .line 354
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 81
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 83
    iget v1, p0, Lorg/javia/arity/CompiledFunction;->arity:I

    if-eqz v1, :cond_0

    .line 84
    const-string v1, "arity "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/javia/arity/CompiledFunction;->arity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    move v1, v0

    move v2, v0

    .line 86
    :goto_0
    iget-object v4, p0, Lorg/javia/arity/CompiledFunction;->code:[B

    array-length v4, v4

    if-ge v0, v4, :cond_4

    .line 87
    iget-object v4, p0, Lorg/javia/arity/CompiledFunction;->code:[B

    aget-byte v4, v4, v0

    .line 88
    sget-object v5, Lorg/javia/arity/VM;->opcodeName:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 90
    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 91
    iget-object v4, p0, Lorg/javia/arity/CompiledFunction;->constsIm:[D

    if-nez v4, :cond_2

    .line 92
    iget-object v4, p0, Lorg/javia/arity/CompiledFunction;->constsRe:[D

    aget-wide v4, v4, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 96
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 101
    :cond_1
    :goto_2
    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_2
    const/16 v4, 0x28

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/javia/arity/CompiledFunction;->constsRe:[D

    aget-wide v5, v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/javia/arity/CompiledFunction;->constsIm:[D

    aget-wide v5, v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v4

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 97
    :cond_3
    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 103
    :cond_4
    iget-object v0, p0, Lorg/javia/arity/CompiledFunction;->constsRe:[D

    array-length v0, v0

    if-eq v2, v0, :cond_5

    .line 104
    const-string v0, "\nuses only "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " consts out of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lorg/javia/arity/CompiledFunction;->constsRe:[D

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 106
    :cond_5
    iget-object v0, p0, Lorg/javia/arity/CompiledFunction;->funcs:[Lorg/javia/arity/Function;

    array-length v0, v0

    if-eq v1, v0, :cond_6

    .line 107
    const-string v0, "\nuses only "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " funcs out of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/javia/arity/CompiledFunction;->funcs:[Lorg/javia/arity/Function;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 109
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
