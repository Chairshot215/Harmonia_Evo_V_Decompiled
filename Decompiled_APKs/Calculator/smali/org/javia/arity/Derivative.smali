.class public Lorg/javia/arity/Derivative;
.super Lorg/javia/arity/Function;
.source "Derivative.java"


# static fields
.field private static final H:D = 1.0E-12

.field private static final INVH:D = 1.0E12


# instance fields
.field private c:Lorg/javia/arity/Complex;

.field private final f:Lorg/javia/arity/Function;


# direct methods
.method public constructor <init>(Lorg/javia/arity/Function;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/ArityException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0}, Lorg/javia/arity/Function;-><init>()V

    .line 6
    new-instance v0, Lorg/javia/arity/Complex;

    invoke-direct {v0}, Lorg/javia/arity/Complex;-><init>()V

    iput-object v0, p0, Lorg/javia/arity/Derivative;->c:Lorg/javia/arity/Complex;

    .line 11
    iput-object p1, p0, Lorg/javia/arity/Derivative;->f:Lorg/javia/arity/Function;

    .line 12
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/javia/arity/Function;->checkArity(I)V

    .line 13
    return-void
.end method


# virtual methods
.method public arity()I
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x1

    return v0
.end method

.method public eval(D)D
    .locals 4
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lorg/javia/arity/Derivative;->f:Lorg/javia/arity/Function;

    iget-object v1, p0, Lorg/javia/arity/Derivative;->c:Lorg/javia/arity/Complex;

    const-wide v2, 0x3d719799812dea11L

    invoke-virtual {v1, p1, p2, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/javia/arity/Function;->eval(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move-result-object v0

    iget-wide v0, v0, Lorg/javia/arity/Complex;->im:D

    const-wide v2, 0x426d1a94a2000000L

    mul-double/2addr v0, v2

    return-wide v0
.end method
