.class public final Lcom/scalado/caps/filter/photoart/MonoColor;
.super Lcom/scalado/caps/Filter;
.source "MonoColor.java"


# instance fields
.field private colorDistance:I

.field private preserveColor:Lcom/scalado/base/Color;


# direct methods
.method public constructor <init>(Lcom/scalado/caps/Session;Lcom/scalado/base/Color;I)V
    .locals 3
    .parameter "session"
    .parameter "preserveColor"
    .parameter "colorDistance"

    .prologue
    const/4 v2, 0x1

    .line 33
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    .line 35
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lcom/scalado/caps/filter/photoart/MonoColor;->nativeBeginMonoColor(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Color;I)I

    move-result v0

    .line 37
    .local v0, error:I
    iput-boolean v2, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 38
    iput-object p2, p0, Lcom/scalado/caps/filter/photoart/MonoColor;->preserveColor:Lcom/scalado/base/Color;

    .line 39
    iput p3, p0, Lcom/scalado/caps/filter/photoart/MonoColor;->colorDistance:I

    .line 40
    invoke-virtual {p0, v2}, Lcom/scalado/caps/filter/photoart/MonoColor;->setHasActiveFilter(Z)V

    .line 41
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

    .prologue
    .line 75
    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/MonoColor;->preserveColor:Lcom/scalado/base/Color;

    invoke-virtual {v0}, Lcom/scalado/base/Color;->clone()Lcom/scalado/base/Color;

    move-result-object v0

    return-object v0
.end method

.method public getTolerance()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/scalado/caps/filter/photoart/MonoColor;->colorDistance:I

    return v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 3
    .parameter "decoder"

    .prologue
    .line 90
    iget-object v1, p0, Lcom/scalado/caps/filter/photoart/MonoColor;->preserveColor:Lcom/scalado/base/Color;

    iget v2, p0, Lcom/scalado/caps/filter/photoart/MonoColor;->colorDistance:I

    invoke-direct {p0, p1, v1, v2}, Lcom/scalado/caps/filter/photoart/MonoColor;->nativeBeginMonoColor(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Color;I)I

    move-result v0

    .line 92
    .local v0, error:I
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 93
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/MonoColor;->nativeEndMonoColor(Lcom/scalado/caps/Decoder;)I

    .line 94
    return-void
.end method

.method protected internalCommit()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/MonoColor;->nativeEndMonoColor(Lcom/scalado/caps/Decoder;)I

    .line 99
    return-void
.end method

.method public set(Lcom/scalado/base/Color;I)V
    .locals 3
    .parameter "preserveColor"
    .parameter "colorDistance"

    .prologue
    .line 57
    iget-boolean v1, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v1, :cond_0

    .line 58
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already committed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2}, Lcom/scalado/caps/filter/photoart/MonoColor;->nativeSetMonoColor(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Color;I)I

    move-result v0

    .line 63
    .local v0, error:I
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 64
    iput-object p1, p0, Lcom/scalado/caps/filter/photoart/MonoColor;->preserveColor:Lcom/scalado/base/Color;

    .line 65
    iput p2, p0, Lcom/scalado/caps/filter/photoart/MonoColor;->colorDistance:I

    .line 67
    return-void
.end method
