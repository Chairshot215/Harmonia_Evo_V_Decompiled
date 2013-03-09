.class public final Lcom/scalado/caps/filter/photoart/Spotlight;
.super Lcom/scalado/caps/Filter;
.source "Spotlight.java"


# instance fields
.field private position:Lcom/scalado/base/Point;

.field private radius:I

.field private transitionSize:F


# direct methods
.method public constructor <init>(Lcom/scalado/caps/Session;Lcom/scalado/base/Point;IF)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    if-ltz p3, :cond_0

    const v1, 0xfbff

    if-gt p3, v1, :cond_0

    const/4 v1, 0x0

    cmpg-float v1, p4, v1

    if-lez v1, :cond_0

    const/high16 v1, 0x3f80

    cmpl-float v1, p4, v1

    if-lez v1, :cond_1

    :cond_0
    invoke-virtual {p0, v2}, Lcom/scalado/caps/filter/photoart/Spotlight;->setHasActiveFilter(Z)V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Argument to set out of legal range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3, p4}, Lcom/scalado/caps/filter/photoart/Spotlight;->nativeBeginSpotlight(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Point;IF)I

    move-result v0

    iput-boolean v3, p0, Lcom/scalado/caps/Filter;->isSet:Z

    iput-object p2, p0, Lcom/scalado/caps/filter/photoart/Spotlight;->position:Lcom/scalado/base/Point;

    iput p3, p0, Lcom/scalado/caps/filter/photoart/Spotlight;->radius:I

    iput p4, p0, Lcom/scalado/caps/filter/photoart/Spotlight;->transitionSize:F

    invoke-virtual {p0, v3}, Lcom/scalado/caps/filter/photoart/Spotlight;->setHasActiveFilter(Z)V

    return-void
.end method

.method private native nativeBeginSpotlight(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Point;IF)I
.end method

.method private native nativeEndSpotlight()I
.end method

.method private native nativeSetSpotlight(Lcom/scalado/base/Point;IF)I
.end method


# virtual methods
.method public getRadius()I
    .locals 1

    iget v0, p0, Lcom/scalado/caps/filter/photoart/Spotlight;->radius:I

    return v0
.end method

.method public getThreshold()Lcom/scalado/base/Point;
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Spotlight;->position:Lcom/scalado/base/Point;

    invoke-virtual {v0}, Lcom/scalado/base/Point;->clone()Lcom/scalado/base/Point;

    move-result-object v0

    return-object v0
.end method

.method public getTransitionSize()F
    .locals 1

    iget v0, p0, Lcom/scalado/caps/filter/photoart/Spotlight;->transitionSize:F

    return v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 4

    iget-object v1, p0, Lcom/scalado/caps/filter/photoart/Spotlight;->position:Lcom/scalado/base/Point;

    iget v2, p0, Lcom/scalado/caps/filter/photoart/Spotlight;->radius:I

    iget v3, p0, Lcom/scalado/caps/filter/photoart/Spotlight;->transitionSize:F

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/scalado/caps/filter/photoart/Spotlight;->nativeBeginSpotlight(Lcom/scalado/caps/Decoder;Lcom/scalado/base/Point;IF)I

    move-result v0

    invoke-direct {p0}, Lcom/scalado/caps/filter/photoart/Spotlight;->nativeEndSpotlight()I

    move-result v0

    return-void
.end method

.method protected internalCommit()V
    .locals 1

    invoke-direct {p0}, Lcom/scalado/caps/filter/photoart/Spotlight;->nativeEndSpotlight()I

    move-result v0

    return-void
.end method

.method public set(Lcom/scalado/base/Point;IF)V
    .locals 3

    iget-boolean v1, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already committed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-ltz p2, :cond_1

    const v1, 0xfbff

    if-gt p2, v1, :cond_1

    const/4 v1, 0x0

    cmpg-float v1, p3, v1

    if-lez v1, :cond_1

    const/high16 v1, 0x3f80

    cmpl-float v1, p3, v1

    if-lez v1, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Argument to set out of legal range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/scalado/caps/filter/photoart/Spotlight;->nativeSetSpotlight(Lcom/scalado/base/Point;IF)I

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    iput-object p1, p0, Lcom/scalado/caps/filter/photoart/Spotlight;->position:Lcom/scalado/base/Point;

    iput p2, p0, Lcom/scalado/caps/filter/photoart/Spotlight;->radius:I

    iput p3, p0, Lcom/scalado/caps/filter/photoart/Spotlight;->transitionSize:F

    return-void
.end method
