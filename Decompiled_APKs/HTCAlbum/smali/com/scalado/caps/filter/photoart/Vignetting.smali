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
    .parameter "session"

    .prologue
    .line 25
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    .line 27
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/scalado/caps/filter/photoart/Vignetting;->nativeBeginVignetting(Lcom/scalado/caps/Decoder;)I

    move-result v0

    .line 28
    .local v0, error:I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/scalado/caps/filter/photoart/Vignetting;->setHasActiveFilter(Z)V

    .line 29
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
    .parameter "decoder"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Vignetting;->nativeBeginVignetting(Lcom/scalado/caps/Decoder;)I

    move-result v0

    .line 97
    .local v0, error:I
    iget-object v1, p0, Lcom/scalado/caps/filter/photoart/Vignetting;->region:Lcom/scalado/base/Rect;

    iget v2, p0, Lcom/scalado/caps/filter/photoart/Vignetting;->transitionSize:F

    iget-object v3, p0, Lcom/scalado/caps/filter/photoart/Vignetting;->color:Lcom/scalado/base/Color;

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/scalado/caps/filter/photoart/Vignetting;->nativeSetVignetting(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Rect;FLcom/scalado/base/Color;)I

    move-result v0

    .line 98
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Vignetting;->nativeEndVignetting(Lcom/scalado/caps/Decoder;)I

    .line 99
    return-void
.end method

.method protected internalCommit()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Vignetting;->nativeEndVignetting(Lcom/scalado/caps/Decoder;)I

    .line 104
    return-void
.end method

.method public set(Lcom/scalado/base/Rect;FLcom/scalado/base/Color;)V
    .locals 6
    .parameter "region"
    .parameter "transitionSize"
    .parameter "color"

    .prologue
    const v5, 0x47ffff00

    const/high16 v4, 0x3f80

    .line 62
    iget-boolean v2, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v2, :cond_0

    .line 63
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Already committed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :cond_0
    iget-object v2, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v2}, Lcom/scalado/caps/Session;->getViewport()Lcom/scalado/base/Rect;

    move-result-object v1

    .line 67
    .local v1, viewport:Lcom/scalado/base/Rect;
    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getX()I

    move-result v2

    if-ltz v2, :cond_1

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getX()I

    move-result v2

    invoke-virtual {v1}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 68
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

    .line 70
    :cond_2
    const/4 v2, 0x0

    cmpg-float v2, p2, v2

    if-ltz v2, :cond_3

    const/high16 v2, 0x4170

    cmpl-float v2, p2, v2

    if-lez v2, :cond_4

    .line 71
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

    .line 73
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

    .line 74
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

    .line 76
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

    .line 77
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

    .line 79
    :cond_8
    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getY()I

    move-result v2

    if-ltz v2, :cond_9

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getY()I

    move-result v2

    invoke-virtual {v1}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_a

    .line 80
    :cond_9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Illegal region y-value"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    :cond_a
    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/scalado/base/Rect;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x14

    if-le v2, v3, :cond_b

    .line 83
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

    .line 87
    :cond_b
    iget-object v2, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v2}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v2

    invoke-direct {p0, v2, p1, p2, p3}, Lcom/scalado/caps/filter/photoart/Vignetting;->nativeSetVignetting(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Rect;FLcom/scalado/base/Color;)I

    move-result v0

    .line 88
    .local v0, error:I
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 89
    iput-object p1, p0, Lcom/scalado/caps/filter/photoart/Vignetting;->region:Lcom/scalado/base/Rect;

    .line 90
    iput p2, p0, Lcom/scalado/caps/filter/photoart/Vignetting;->transitionSize:F

    .line 91
    iput-object p3, p0, Lcom/scalado/caps/filter/photoart/Vignetting;->color:Lcom/scalado/base/Color;

    .line 92
    return-void
.end method
