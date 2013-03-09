.class public final Lcom/scalado/caps/filter/photoart/Contrast;
.super Lcom/scalado/caps/Filter;
.source "Contrast.java"


# instance fields
.field private contrast:F


# direct methods
.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 2
    .parameter "session"

    .prologue
    .line 21
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    .line 22
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/scalado/caps/filter/photoart/Contrast;->nativeBeginContrast(Lcom/scalado/caps/Decoder;)I

    move-result v0

    .line 23
    .local v0, error:I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/scalado/caps/filter/photoart/Contrast;->setHasActiveFilter(Z)V

    .line 24
    return-void
.end method

.method private native nativeBeginContrast(Lcom/scalado/caps/Decoder;)I
.end method

.method private native nativeEndContrast(Lcom/scalado/caps/Decoder;)I
.end method

.method private native nativeSetContrast(Lcom/scalado/caps/Decoder;F)I
.end method


# virtual methods
.method public get()F
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/scalado/caps/filter/photoart/Contrast;->contrast:F

    return v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 2
    .parameter "decoder"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Contrast;->nativeBeginContrast(Lcom/scalado/caps/Decoder;)I

    move-result v0

    .line 56
    .local v0, error:I
    iget v1, p0, Lcom/scalado/caps/filter/photoart/Contrast;->contrast:F

    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/filter/photoart/Contrast;->nativeSetContrast(Lcom/scalado/caps/Decoder;F)I

    move-result v0

    .line 57
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Contrast;->nativeEndContrast(Lcom/scalado/caps/Decoder;)I

    .line 58
    return-void
.end method

.method protected internalCommit()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Contrast;->nativeEndContrast(Lcom/scalado/caps/Decoder;)I

    .line 63
    return-void
.end method

.method public set(F)V
    .locals 3
    .parameter "contrast"

    .prologue
    .line 37
    iget-boolean v1, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v1, :cond_0

    .line 38
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already committed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/scalado/caps/filter/photoart/Contrast;->nativeSetContrast(Lcom/scalado/caps/Decoder;F)I

    move-result v0

    .line 41
    .local v0, error:I
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 42
    iput p1, p0, Lcom/scalado/caps/filter/photoart/Contrast;->contrast:F

    .line 44
    return-void
.end method
