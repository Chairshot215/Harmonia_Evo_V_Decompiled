.class public final Lcom/scalado/caps/filter/photoart/Vignetting;
.super Lcom/scalado/caps/Filter;
.source "Vignetting.java"


# instance fields
.field private color:Lcom/scalado/base/Color;

.field private region:Lcom/scalado/base/Rect;

.field private transitionSize:F


# direct methods
.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/scalado/caps/filter/photoart/Vignetting;->nativeBeginVignetting(Lcom/scalado/caps/Decoder;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/scalado/caps/filter/photoart/Vignetting;->setHasActiveFilter(Z)V

    return-void
.end method

.method private native nativeBeginVignetting(Lcom/scalado/caps/Decoder;)I
.end method

.method private native nativeEndVignetting(Lcom/scalado/caps/Decoder;)I
.end method

.method private native nativeSetVignetting(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Rect;FLcom/scalado/base/Color;)I
.end method


# virtual methods
.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Vignetting;->nativeBeginVignetting(Lcom/scalado/caps/Decoder;)I

    move-result v0

    iget-object v1, p0, Lcom/scalado/caps/filter/photoart/Vignetting;->region:Lcom/scalado/base/Rect;

    iget v2, p0, Lcom/scalado/caps/filter/photoart/Vignetting;->transitionSize:F

    iget-object v3, p0, Lcom/scalado/caps/filter/photoart/Vignetting;->color:Lcom/scalado/base/Color;

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/scalado/caps/filter/photoart/Vignetting;->nativeSetVignetting(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Rect;FLcom/scalado/base/Color;)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Vignetting;->nativeEndVignetting(Lcom/scalado/caps/Decoder;)I

    return-void
.end method

.method protected internalCommit()V
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Vignetting;->nativeEndVignetting(Lcom/scalado/caps/Decoder;)I

    return-void
.end method

.method public set(Lcom/scalado/base/Rect;FLcom/scalado/base/Color;)V
    .locals 6

    const v5, 0x47ffff00

    const/high16 v4, 0x3f80

    iget-boolean v2, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Already committed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v2}, Lcom/scalado/caps/Session;->getViewport()Lcom/scalado/base/Rect;

    move-result-object v1

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getX()I

    move-result v2

    if-ltz v2, :cond_1

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getX()I

    move-result v2

    invoke-virtual {v1}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal region x-value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getX()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    const/4 v2, 0x0

    cmpg-float v2, p2, v2

    if-ltz v2, :cond_3

    const/high16 v2, 0x4170

    cmpl-float v2, p2, v2

    if-lez v2, :cond_4

    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal transitionSize value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float v3, p2, v4

    div-float v3, v5, v3

    cmpl-float v2, v2, v3

    if-gez v2, :cond_5

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    if-ge v2, v3, :cond_6

    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal region width: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float v3, p2, v4

    div-float v3, v5, v3

    cmpl-float v2, v2, v3

    if-gez v2, :cond_7

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    if-ge v2, v3, :cond_8

    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal region height: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getY()I

    move-result v2

    if-ltz v2, :cond_9

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getY()I

    move-result v2

    invoke-virtual {v1}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_a

    :cond_9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Illegal region y-value"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a
    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x14

    if-le v2, v3, :cond_b

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal region width/height ratio: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    iget-object v2, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v2}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v2

    invoke-direct {p0, v2, p1, p2, p3}, Lcom/scalado/caps/filter/photoart/Vignetting;->nativeSetVignetting(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Rect;FLcom/scalado/base/Color;)I

    move-result v0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/scalado/caps/Filter;->isSet:Z

    iput-object p1, p0, Lcom/scalado/caps/filter/photoart/Vignetting;->region:Lcom/scalado/base/Rect;

    iput p2, p0, Lcom/scalado/caps/filter/photoart/Vignetting;->transitionSize:F

    iput-object p3, p0, Lcom/scalado/caps/filter/photoart/Vignetting;->color:Lcom/scalado/base/Color;

    return-void
.end method
