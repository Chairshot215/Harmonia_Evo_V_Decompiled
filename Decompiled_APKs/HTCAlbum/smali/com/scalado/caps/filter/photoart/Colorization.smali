.class public final Lcom/scalado/caps/filter/photoart/Colorization;
.super Lcom/scalado/caps/Filter;
.source "Colorization.java"


# instance fields
.field private b:I

.field private chrominanceStrength:I

.field private g:I

.field private luminanceStrength:I

.field private r:I


# direct methods
.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 2
    .parameter "session"

    .prologue
    .line 28
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    .line 30
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/scalado/caps/filter/photoart/Colorization;->nativeBeginColorization(Lcom/scalado/caps/Decoder;)I

    move-result v0

    .line 31
    .local v0, error:I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/scalado/caps/filter/photoart/Colorization;->setHasActiveFilter(Z)V

    .line 32
    return-void
.end method

.method private native nativeBeginColorization(Lcom/scalado/caps/Decoder;)I
.end method

.method private native nativeEndColorization(Lcom/scalado/caps/Decoder;)I
.end method

.method private native nativeSetColorization(Lcom/scalado/caps/Decoder;IIIII)I
.end method


# virtual methods
.method public getB()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/scalado/caps/filter/photoart/Colorization;->b:I

    return v0
.end method

.method public getChrominance()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/scalado/caps/filter/photoart/Colorization;->chrominanceStrength:I

    return v0
.end method

.method public getG()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/scalado/caps/filter/photoart/Colorization;->g:I

    return v0
.end method

.method public getLuminance()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/scalado/caps/filter/photoart/Colorization;->luminanceStrength:I

    return v0
.end method

.method public getR()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/scalado/caps/filter/photoart/Colorization;->r:I

    return v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 8
    .parameter "decoder"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Colorization;->nativeBeginColorization(Lcom/scalado/caps/Decoder;)I

    move-result v7

    .line 121
    .local v7, error:I
    iget v2, p0, Lcom/scalado/caps/filter/photoart/Colorization;->r:I

    iget v3, p0, Lcom/scalado/caps/filter/photoart/Colorization;->g:I

    iget v4, p0, Lcom/scalado/caps/filter/photoart/Colorization;->b:I

    iget v5, p0, Lcom/scalado/caps/filter/photoart/Colorization;->luminanceStrength:I

    iget v6, p0, Lcom/scalado/caps/filter/photoart/Colorization;->chrominanceStrength:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/scalado/caps/filter/photoart/Colorization;->nativeSetColorization(Lcom/scalado/caps/Decoder;IIIII)I

    move-result v7

    .line 123
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Colorization;->nativeEndColorization(Lcom/scalado/caps/Decoder;)I

    .line 124
    return-void
.end method

.method protected internalCommit()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Colorization;->nativeEndColorization(Lcom/scalado/caps/Decoder;)I

    .line 129
    return-void
.end method

.method public set(IIIII)V
    .locals 8
    .parameter "r"
    .parameter "g"
    .parameter "b"
    .parameter "luminanceStrength"
    .parameter "chrominanceStrength"

    .prologue
    const/16 v1, 0xff

    .line 52
    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    if-ltz p1, :cond_1

    if-gt p1, v1, :cond_1

    if-ltz p2, :cond_1

    if-gt p2, v1, :cond_1

    if-ltz p3, :cond_1

    if-le p3, v1, :cond_2

    .line 58
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/scalado/caps/filter/photoart/Colorization;->nativeSetColorization(Lcom/scalado/caps/Decoder;IIIII)I

    move-result v7

    .line 63
    .local v7, error:I
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 64
    iput p1, p0, Lcom/scalado/caps/filter/photoart/Colorization;->r:I

    .line 65
    iput p2, p0, Lcom/scalado/caps/filter/photoart/Colorization;->g:I

    .line 66
    iput p3, p0, Lcom/scalado/caps/filter/photoart/Colorization;->b:I

    .line 67
    iput p4, p0, Lcom/scalado/caps/filter/photoart/Colorization;->luminanceStrength:I

    .line 68
    iput p5, p0, Lcom/scalado/caps/filter/photoart/Colorization;->chrominanceStrength:I

    .line 70
    return-void
.end method
