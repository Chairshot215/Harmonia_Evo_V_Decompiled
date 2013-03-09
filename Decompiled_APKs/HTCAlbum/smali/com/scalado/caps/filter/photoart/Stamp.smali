.class public final Lcom/scalado/caps/filter/photoart/Stamp;
.super Lcom/scalado/caps/Filter;
.source "Stamp.java"


# instance fields
.field private smoothness:I

.field private threshold:I


# direct methods
.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 1
    .parameter "session"

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    .line 13
    iput v0, p0, Lcom/scalado/caps/filter/photoart/Stamp;->smoothness:I

    .line 14
    const/16 v0, 0x80

    iput v0, p0, Lcom/scalado/caps/filter/photoart/Stamp;->threshold:I

    .line 27
    invoke-virtual {p1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Stamp;->nativeBeginStamp(Lcom/scalado/caps/Decoder;)I

    .line 28
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/photoart/Stamp;->setHasActiveFilter(Z)V

    .line 29
    return-void
.end method

.method private native nativeBeginStamp(Lcom/scalado/caps/Decoder;)I
.end method

.method private native nativeEndStamp(Lcom/scalado/caps/Decoder;)I
.end method

.method private native nativeSetStamp(Lcom/scalado/caps/Decoder;II)I
.end method


# virtual methods
.method public getSmoothness()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/scalado/caps/filter/photoart/Stamp;->smoothness:I

    return v0
.end method

.method public getThreshold()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/scalado/caps/filter/photoart/Stamp;->threshold:I

    return v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 3
    .parameter "decoder"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Stamp;->nativeBeginStamp(Lcom/scalado/caps/Decoder;)I

    move-result v0

    .line 81
    .local v0, error:I
    iget v1, p0, Lcom/scalado/caps/filter/photoart/Stamp;->smoothness:I

    iget v2, p0, Lcom/scalado/caps/filter/photoart/Stamp;->threshold:I

    invoke-direct {p0, p1, v1, v2}, Lcom/scalado/caps/filter/photoart/Stamp;->nativeSetStamp(Lcom/scalado/caps/Decoder;II)I

    move-result v0

    .line 82
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Stamp;->nativeEndStamp(Lcom/scalado/caps/Decoder;)I

    .line 83
    return-void
.end method

.method protected internalCommit()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Stamp;->nativeEndStamp(Lcom/scalado/caps/Decoder;)I

    .line 88
    return-void
.end method

.method public set(II)V
    .locals 3
    .parameter "smoothness"
    .parameter "threshold"

    .prologue
    .line 43
    iget-boolean v1, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v1, :cond_0

    .line 44
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already committed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_0
    if-ltz p1, :cond_1

    const/4 v1, 0x6

    if-gt p1, v1, :cond_1

    if-ltz p2, :cond_1

    const/16 v1, 0xff

    if-le p2, v1, :cond_2

    .line 48
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Arguments to set out of legal range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_2
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2}, Lcom/scalado/caps/filter/photoart/Stamp;->nativeSetStamp(Lcom/scalado/caps/Decoder;II)I

    move-result v0

    .line 54
    .local v0, error:I
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 55
    iput p1, p0, Lcom/scalado/caps/filter/photoart/Stamp;->smoothness:I

    .line 56
    iput p2, p0, Lcom/scalado/caps/filter/photoart/Stamp;->threshold:I

    .line 57
    return-void
.end method
