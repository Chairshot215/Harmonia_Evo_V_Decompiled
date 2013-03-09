.class public final Lcom/scalado/caps/filter/photoart/HueSaturation;
.super Lcom/scalado/caps/Filter;
.source "HueSaturation.java"


# instance fields
.field private hueLevel:I

.field private saturationLevel:I


# direct methods
.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    invoke-virtual {p1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/scalado/caps/filter/photoart/HueSaturation;->nativeBeginHueSaturation(Lcom/scalado/caps/Decoder;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/scalado/caps/filter/photoart/HueSaturation;->setHasActiveFilter(Z)V

    return-void
.end method

.method private native nativeBeginHueSaturation(Lcom/scalado/caps/Decoder;)I
.end method

.method private native nativeEndHueSaturation(Lcom/scalado/caps/Decoder;)I
.end method

.method private native nativeSetHueSaturation(Lcom/scalado/caps/Decoder;II)I
.end method


# virtual methods
.method public getHue()I
    .locals 1

    iget v0, p0, Lcom/scalado/caps/filter/photoart/HueSaturation;->hueLevel:I

    return v0
.end method

.method public getSaturation()I
    .locals 1

    iget v0, p0, Lcom/scalado/caps/filter/photoart/HueSaturation;->saturationLevel:I

    return v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/HueSaturation;->nativeBeginHueSaturation(Lcom/scalado/caps/Decoder;)I

    move-result v0

    iget v1, p0, Lcom/scalado/caps/filter/photoart/HueSaturation;->hueLevel:I

    iget v2, p0, Lcom/scalado/caps/filter/photoart/HueSaturation;->saturationLevel:I

    invoke-direct {p0, p1, v1, v2}, Lcom/scalado/caps/filter/photoart/HueSaturation;->nativeSetHueSaturation(Lcom/scalado/caps/Decoder;II)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/HueSaturation;->nativeEndHueSaturation(Lcom/scalado/caps/Decoder;)I

    return-void
.end method

.method protected internalCommit()V
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/HueSaturation;->nativeEndHueSaturation(Lcom/scalado/caps/Decoder;)I

    return-void
.end method

.method public set(II)V
    .locals 4

    const/16 v2, 0xff

    iget-boolean v1, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already committed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-ltz p1, :cond_1

    if-le p1, v2, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal value of huelevel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    if-ltz p2, :cond_3

    if-le p2, v2, :cond_4

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal value of saturationlevel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2}, Lcom/scalado/caps/filter/photoart/HueSaturation;->nativeSetHueSaturation(Lcom/scalado/caps/Decoder;II)I

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    iput p1, p0, Lcom/scalado/caps/filter/photoart/HueSaturation;->hueLevel:I

    iput p2, p0, Lcom/scalado/caps/filter/photoart/HueSaturation;->saturationLevel:I

    return-void
.end method
