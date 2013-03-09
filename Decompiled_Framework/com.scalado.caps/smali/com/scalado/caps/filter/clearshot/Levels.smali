.class public final Lcom/scalado/caps/filter/clearshot/Levels;
.super Lcom/scalado/caps/Filter;
.source "Levels.java"


# instance fields
.field private black:F

.field private gray:F

.field private white:F


# direct methods
.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/scalado/caps/filter/clearshot/Levels;->white:F

    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/scalado/caps/filter/clearshot/Levels;->gray:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/caps/filter/clearshot/Levels;->black:F

    invoke-virtual {p1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/clearshot/Levels;->nativeBeginLevels(Lcom/scalado/caps/Decoder;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/clearshot/Levels;->setHasActiveFilter(Z)V

    return-void
.end method

.method private native nativeBeginLevels(Lcom/scalado/caps/Decoder;)I
.end method

.method private native nativeEndLevels(Lcom/scalado/caps/Decoder;)I
.end method

.method private native nativeSetLevels(Lcom/scalado/caps/Decoder;FFF)I
.end method


# virtual methods
.method public getBlack()F
    .locals 1

    iget v0, p0, Lcom/scalado/caps/filter/clearshot/Levels;->black:F

    return v0
.end method

.method public getGray()F
    .locals 1

    iget v0, p0, Lcom/scalado/caps/filter/clearshot/Levels;->gray:F

    return v0
.end method

.method public getWhite()F
    .locals 1

    iget v0, p0, Lcom/scalado/caps/filter/clearshot/Levels;->white:F

    return v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/clearshot/Levels;->nativeBeginLevels(Lcom/scalado/caps/Decoder;)I

    move-result v0

    iget v1, p0, Lcom/scalado/caps/filter/clearshot/Levels;->white:F

    iget v2, p0, Lcom/scalado/caps/filter/clearshot/Levels;->gray:F

    iget v3, p0, Lcom/scalado/caps/filter/clearshot/Levels;->black:F

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/scalado/caps/filter/clearshot/Levels;->nativeSetLevels(Lcom/scalado/caps/Decoder;FFF)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/clearshot/Levels;->nativeEndLevels(Lcom/scalado/caps/Decoder;)I

    return-void
.end method

.method protected internalCommit()V
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/clearshot/Levels;->nativeEndLevels(Lcom/scalado/caps/Decoder;)I

    return-void
.end method

.method public final set(FFF)V
    .locals 4

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already committed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

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

    if-gtz v1, :cond_1

    cmpl-float v1, p3, p1

    if-lez v1, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_2
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/scalado/caps/filter/clearshot/Levels;->nativeSetLevels(Lcom/scalado/caps/Decoder;FFF)I

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    iput p1, p0, Lcom/scalado/caps/filter/clearshot/Levels;->white:F

    iput p2, p0, Lcom/scalado/caps/filter/clearshot/Levels;->gray:F

    iput p3, p0, Lcom/scalado/caps/filter/clearshot/Levels;->black:F

    return-void
.end method
