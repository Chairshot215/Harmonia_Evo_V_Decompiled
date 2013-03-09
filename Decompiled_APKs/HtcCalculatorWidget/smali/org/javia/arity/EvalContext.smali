.class public Lorg/javia/arity/EvalContext;
.super Ljava/lang/Object;
.source "EvalContext.java"


# static fields
.field static final MAX_STACK_SIZE:I = 0x80


# instance fields
.field args1:[D

.field args1c:[Lorg/javia/arity/Complex;

.field args2:[D

.field args2c:[Lorg/javia/arity/Complex;

.field stackBase:I

.field final stackComplex:[Lorg/javia/arity/Complex;

.field stackRe:[D


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/16 v5, 0x80

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-array v0, v5, [D

    iput-object v0, p0, Lorg/javia/arity/EvalContext;->stackRe:[D

    .line 28
    new-array v0, v5, [Lorg/javia/arity/Complex;

    iput-object v0, p0, Lorg/javia/arity/EvalContext;->stackComplex:[Lorg/javia/arity/Complex;

    .line 29
    iput v1, p0, Lorg/javia/arity/EvalContext;->stackBase:I

    .line 31
    new-array v0, v4, [D

    iput-object v0, p0, Lorg/javia/arity/EvalContext;->args1:[D

    .line 32
    new-array v0, v6, [D

    iput-object v0, p0, Lorg/javia/arity/EvalContext;->args2:[D

    move v0, v1

    .line 39
    :goto_0
    if-ge v0, v5, :cond_0

    .line 40
    iget-object v2, p0, Lorg/javia/arity/EvalContext;->stackComplex:[Lorg/javia/arity/Complex;

    new-instance v3, Lorg/javia/arity/Complex;

    invoke-direct {v3}, Lorg/javia/arity/Complex;-><init>()V

    aput-object v3, v2, v0

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_0
    new-array v0, v4, [Lorg/javia/arity/Complex;

    new-instance v2, Lorg/javia/arity/Complex;

    invoke-direct {v2}, Lorg/javia/arity/Complex;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/javia/arity/EvalContext;->args1c:[Lorg/javia/arity/Complex;

    .line 43
    new-array v0, v6, [Lorg/javia/arity/Complex;

    new-instance v2, Lorg/javia/arity/Complex;

    invoke-direct {v2}, Lorg/javia/arity/Complex;-><init>()V

    aput-object v2, v0, v1

    new-instance v1, Lorg/javia/arity/Complex;

    invoke-direct {v1}, Lorg/javia/arity/Complex;-><init>()V

    aput-object v1, v0, v4

    iput-object v0, p0, Lorg/javia/arity/EvalContext;->args2c:[Lorg/javia/arity/Complex;

    .line 44
    return-void
.end method
