.class public final Lcom/scalado/caps/filter/photoart/RGBColorAdjust;
.super Lcom/scalado/caps/Filter;
.source "RGBColorAdjust.java"


# instance fields
.field private b:F

.field private g:F

.field private r:F


# direct methods
.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 2
    .parameter "session"

    .prologue
    const/4 v1, 0x0

    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    .line 12
    iput v1, p0, Lcom/scalado/caps/filter/photoart/RGBColorAdjust;->r:F

    .line 13
    iput v1, p0, Lcom/scalado/caps/filter/photoart/RGBColorAdjust;->g:F

    .line 14
    iput v1, p0, Lcom/scalado/caps/filter/photoart/RGBColorAdjust;->b:F

    .line 25
    invoke-virtual {p1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/RGBColorAdjust;->nativeBeginRGBColorAdjust(Lcom/scalado/caps/Decoder;)I

    .line 26
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/photoart/RGBColorAdjust;->setHasActiveFilter(Z)V

    .line 27
    return-void
.end method

.method private native nativeBeginRGBColorAdjust(Lcom/scalado/caps/Decoder;)I
.end method

.method private native nativeEndRGBColorAdjust(Lcom/scalado/caps/Decoder;)I
.end method

.method private native nativeSetRGBColorAdjust(Lcom/scalado/caps/Decoder;FFF)I
.end method


# virtual methods
.method public getB()F
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/scalado/caps/filter/photoart/RGBColorAdjust;->b:F

    return v0
.end method

.method public getG()F
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/scalado/caps/filter/photoart/RGBColorAdjust;->g:F

    return v0
.end method

.method public getR()F
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/scalado/caps/filter/photoart/RGBColorAdjust;->r:F

    return v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 4
    .parameter "decoder"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/RGBColorAdjust;->nativeBeginRGBColorAdjust(Lcom/scalado/caps/Decoder;)I

    move-result v0

    .line 87
    .local v0, error:I
    iget v1, p0, Lcom/scalado/caps/filter/photoart/RGBColorAdjust;->r:F

    iget v2, p0, Lcom/scalado/caps/filter/photoart/RGBColorAdjust;->g:F

    iget v3, p0, Lcom/scalado/caps/filter/photoart/RGBColorAdjust;->b:F

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/scalado/caps/filter/photoart/RGBColorAdjust;->nativeSetRGBColorAdjust(Lcom/scalado/caps/Decoder;FFF)I

    move-result v0

    .line 88
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/RGBColorAdjust;->nativeEndRGBColorAdjust(Lcom/scalado/caps/Decoder;)I

    .line 89
    return-void
.end method

.method protected internalCommit()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/RGBColorAdjust;->nativeEndRGBColorAdjust(Lcom/scalado/caps/Decoder;)I

    .line 94
    return-void
.end method

.method public set(FFF)V
    .locals 4
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    const/high16 v3, 0x3f80

    const/high16 v2, -0x4080

    .line 41
    iget-boolean v1, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v1, :cond_0

    .line 42
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already committed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_0
    cmpg-float v1, p1, v2

    if-ltz v1, :cond_1

    cmpl-float v1, p1, v3

    if-gtz v1, :cond_1

    cmpg-float v1, p2, v2

    if-ltz v1, :cond_1

    cmpl-float v1, p2, v3

    if-gtz v1, :cond_1

    cmpg-float v1, p3, v2

    if-ltz v1, :cond_1

    cmpl-float v1, p3, v3

    if-lez v1, :cond_2

    .line 48
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Argument to set out of legal range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    :cond_2
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/scalado/caps/filter/photoart/RGBColorAdjust;->nativeSetRGBColorAdjust(Lcom/scalado/caps/Decoder;FFF)I

    move-result v0

    .line 51
    .local v0, error:I
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 52
    iput p1, p0, Lcom/scalado/caps/filter/photoart/RGBColorAdjust;->r:F

    .line 53
    iput p2, p0, Lcom/scalado/caps/filter/photoart/RGBColorAdjust;->g:F

    .line 54
    iput p3, p0, Lcom/scalado/caps/filter/photoart/RGBColorAdjust;->b:F

    .line 55
    return-void
.end method
