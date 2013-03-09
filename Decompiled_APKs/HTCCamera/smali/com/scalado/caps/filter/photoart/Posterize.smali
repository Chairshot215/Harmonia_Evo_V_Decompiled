.class public final Lcom/scalado/caps/filter/photoart/Posterize;
.super Lcom/scalado/caps/Filter;
.source "Posterize.java"


# instance fields
.field private levels:I


# direct methods
.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    const/16 v0, 0xa

    iput v0, p0, Lcom/scalado/caps/filter/photoart/Posterize;->levels:I

    invoke-virtual {p1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Posterize;->nativeBeginPosterize(Lcom/scalado/caps/Decoder;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/photoart/Posterize;->setHasActiveFilter(Z)V

    return-void
.end method

.method private native nativeBeginPosterize(Lcom/scalado/caps/Decoder;)I
.end method

.method private native nativeEndPosterize(Lcom/scalado/caps/Decoder;)I
.end method

.method private native nativeSetPosterize(Lcom/scalado/caps/Decoder;I)I
.end method


# virtual methods
.method public get()F
    .locals 1

    iget v0, p0, Lcom/scalado/caps/filter/photoart/Posterize;->levels:I

    int-to-float v0, v0

    return v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Posterize;->nativeBeginPosterize(Lcom/scalado/caps/Decoder;)I

    move-result v0

    iget v1, p0, Lcom/scalado/caps/filter/photoart/Posterize;->levels:I

    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/filter/photoart/Posterize;->nativeSetPosterize(Lcom/scalado/caps/Decoder;I)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Posterize;->nativeEndPosterize(Lcom/scalado/caps/Decoder;)I

    return-void
.end method

.method protected internalCommit()V
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Posterize;->nativeEndPosterize(Lcom/scalado/caps/Decoder;)I

    return-void
.end method

.method public set(I)V
    .locals 3

    iget-boolean v1, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already committed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v1, 0x2

    if-lt p1, v1, :cond_1

    const/16 v1, 0x10

    if-le p1, v1, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Argument to set out of legal range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/scalado/caps/filter/photoart/Posterize;->nativeSetPosterize(Lcom/scalado/caps/Decoder;I)I

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    iput p1, p0, Lcom/scalado/caps/filter/photoart/Posterize;->levels:I

    return-void
.end method
