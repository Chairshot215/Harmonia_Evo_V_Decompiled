.class Lorg/javia/arity/CompiledFunction$1;
.super Lorg/javia/arity/Function;
.source "CompiledFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/javia/arity/CompiledFunction;->makeOpFunction(I)Lorg/javia/arity/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/javia/arity/Function;-><init>()V

    return-void
.end method


# virtual methods
.method public arity()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public eval(D)D
    .locals 3
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 68
    cmpl-double v2, p1, v0

    if-lez v2, :cond_1

    const-wide/high16 v0, 0x3ff0

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    const-wide/high16 v0, -0x4010

    goto :goto_0
.end method
