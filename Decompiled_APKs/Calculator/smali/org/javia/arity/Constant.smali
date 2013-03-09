.class public Lorg/javia/arity/Constant;
.super Lorg/javia/arity/Function;
.source "Constant.java"


# instance fields
.field private value:Lorg/javia/arity/Complex;


# direct methods
.method public constructor <init>(Lorg/javia/arity/Complex;)V
    .locals 1
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/javia/arity/Function;-><init>()V

    .line 26
    new-instance v0, Lorg/javia/arity/Complex;

    invoke-direct {v0, p1}, Lorg/javia/arity/Complex;-><init>(Lorg/javia/arity/Complex;)V

    iput-object v0, p0, Lorg/javia/arity/Constant;->value:Lorg/javia/arity/Complex;

    .line 27
    return-void
.end method


# virtual methods
.method public arity()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public eval()D
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lorg/javia/arity/Constant;->value:Lorg/javia/arity/Complex;

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->asReal()D

    move-result-wide v0

    return-wide v0
.end method

.method public evalComplex()Lorg/javia/arity/Complex;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/javia/arity/Constant;->value:Lorg/javia/arity/Complex;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/javia/arity/Constant;->value:Lorg/javia/arity/Complex;

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
