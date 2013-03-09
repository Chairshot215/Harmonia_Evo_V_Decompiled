.class public final Lcom/scalado/caps/filter/photoart/MonoColor;
.super Lcom/scalado/caps/Filter;
.source "MonoColor.java"


# instance fields
.field private colorDistance:I

.field private preserveColor:Lcom/scalado/base/Color;


# direct methods
.method public constructor <init>(Lcom/scalado/caps/Session;Lcom/scalado/base/Color;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lcom/scalado/caps/filter/photoart/MonoColor;->nativeBeginMonoColor(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Color;I)I

    move-result v0

    iput-boolean v2, p0, Lcom/scalado/caps/Filter;->isSet:Z

    iput-object p2, p0, Lcom/scalado/caps/filter/photoart/MonoColor;->preserveColor:Lcom/scalado/base/Color;

    iput p3, p0, Lcom/scalado/caps/filter/photoart/MonoColor;->colorDistance:I

    invoke-virtual {p0, v2}, Lcom/scalado/caps/filter/photoart/MonoColor;->setHasActiveFilter(Z)V

    return-void
.end method

.method private native nativeBeginMonoColor(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Color;I)I
.end method

.method private native nativeEndMonoColor(Lcom/scalado/caps/Decoder;)I
.end method

.method private native nativeSetMonoColor(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Color;I)I
.end method


# virtual methods
.method public getColor()Lcom/scalado/base/Color;
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/MonoColor;->preserveColor:Lcom/scalado/base/Color;

    invoke-virtual {v0}, Lcom/scalado/base/Color;->clone()Lcom/scalado/base/Color;

    move-result-object v0

    return-object v0
.end method

.method public getTolerance()I
    .locals 1

    iget v0, p0, Lcom/scalado/caps/filter/photoart/MonoColor;->colorDistance:I

    return v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 3

    iget-object v1, p0, Lcom/scalado/caps/filter/photoart/MonoColor;->preserveColor:Lcom/scalado/base/Color;

    iget v2, p0, Lcom/scalado/caps/filter/photoart/MonoColor;->colorDistance:I

    invoke-direct {p0, p1, v1, v2}, Lcom/scalado/caps/filter/photoart/MonoColor;->nativeBeginMonoColor(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Color;I)I

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/MonoColor;->nativeEndMonoColor(Lcom/scalado/caps/Decoder;)I

    return-void
.end method

.method protected internalCommit()V
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/MonoColor;->nativeEndMonoColor(Lcom/scalado/caps/Decoder;)I

    return-void
.end method

.method public set(Lcom/scalado/base/Color;I)V
    .locals 3

    iget-boolean v1, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already committed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2}, Lcom/scalado/caps/filter/photoart/MonoColor;->nativeSetMonoColor(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Color;I)I

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    iput-object p1, p0, Lcom/scalado/caps/filter/photoart/MonoColor;->preserveColor:Lcom/scalado/base/Color;

    iput p2, p0, Lcom/scalado/caps/filter/photoart/MonoColor;->colorDistance:I

    return-void
.end method
