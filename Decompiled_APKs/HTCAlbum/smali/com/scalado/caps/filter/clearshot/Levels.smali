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
    .parameter "session"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    .line 13
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/scalado/caps/filter/clearshot/Levels;->white:F

    .line 15
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/scalado/caps/filter/clearshot/Levels;->gray:F

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/caps/filter/clearshot/Levels;->black:F

    .line 32
    invoke-virtual {p1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/clearshot/Levels;->nativeBeginLevels(Lcom/scalado/caps/Decoder;)I

    .line 33
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/clearshot/Levels;->setHasActiveFilter(Z)V

    .line 34
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

    .prologue
    .line 89
    iget v0, p0, Lcom/scalado/caps/filter/clearshot/Levels;->black:F

    return v0
.end method

.method public getGray()F
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/scalado/caps/filter/clearshot/Levels;->gray:F

    return v0
.end method

.method public getWhite()F
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/scalado/caps/filter/clearshot/Levels;->white:F

    return v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 4
    .parameter "decoder"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/clearshot/Levels;->nativeBeginLevels(Lcom/scalado/caps/Decoder;)I

    move-result v0

    .line 96
    .local v0, error:I
    iget v1, p0, Lcom/scalado/caps/filter/clearshot/Levels;->white:F

    iget v2, p0, Lcom/scalado/caps/filter/clearshot/Levels;->gray:F

    iget v3, p0, Lcom/scalado/caps/filter/clearshot/Levels;->black:F

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/scalado/caps/filter/clearshot/Levels;->nativeSetLevels(Lcom/scalado/caps/Decoder;FFF)I

    move-result v0

    .line 97
    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/clearshot/Levels;->nativeEndLevels(Lcom/scalado/caps/Decoder;)I

    .line 98
    return-void
.end method

.method protected internalCommit()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/clearshot/Levels;->nativeEndLevels(Lcom/scalado/caps/Decoder;)I

    .line 103
    return-void
.end method

.method public final set(FFF)V
    .locals 4
    .parameter "white"
    .parameter "gray"
    .parameter "black"

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 52
    iget-boolean v1, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v1, :cond_0

    .line 53
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already committed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
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

    .line 57
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 60
    :cond_2
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/scalado/caps/filter/clearshot/Levels;->nativeSetLevels(Lcom/scalado/caps/Decoder;FFF)I

    move-result v0

    .line 62
    .local v0, error:I
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    .line 63
    iput p1, p0, Lcom/scalado/caps/filter/clearshot/Levels;->white:F

    .line 64
    iput p2, p0, Lcom/scalado/caps/filter/clearshot/Levels;->gray:F

    .line 65
    iput p3, p0, Lcom/scalado/caps/filter/clearshot/Levels;->black:F

    .line 66
    return-void
.end method
