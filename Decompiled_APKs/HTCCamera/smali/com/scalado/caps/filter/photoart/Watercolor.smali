.class public final Lcom/scalado/caps/filter/photoart/Watercolor;
.super Lcom/scalado/caps/Filter;
.source "Watercolor.java"


# instance fields
.field private color:F

.field private light:F


# direct methods
.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/scalado/caps/filter/photoart/Watercolor;->nativeBeginWatercolor(Lcom/scalado/caps/Decoder;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/scalado/caps/filter/photoart/Watercolor;->setHasActiveFilter(Z)V

    return-void
.end method

.method private native nativeBeginWatercolor(Lcom/scalado/caps/Decoder;)I
.end method

.method private native nativeEndWatercolor(Lcom/scalado/caps/Decoder;)I
.end method

.method private native nativeSetWatercolor(Lcom/scalado/caps/Decoder;FF)I
.end method


# virtual methods
.method public getColor()F
    .locals 1

    iget v0, p0, Lcom/scalado/caps/filter/photoart/Watercolor;->color:F

    return v0
.end method

.method public getLight()F
    .locals 1

    iget v0, p0, Lcom/scalado/caps/filter/photoart/Watercolor;->light:F

    return v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Watercolor;->nativeBeginWatercolor(Lcom/scalado/caps/Decoder;)I

    move-result v0

    iget v1, p0, Lcom/scalado/caps/filter/photoart/Watercolor;->light:F

    iget v2, p0, Lcom/scalado/caps/filter/photoart/Watercolor;->color:F

    invoke-direct {p0, p1, v1, v2}, Lcom/scalado/caps/filter/photoart/Watercolor;->nativeSetWatercolor(Lcom/scalado/caps/Decoder;FF)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Watercolor;->nativeEndWatercolor(Lcom/scalado/caps/Decoder;)I

    return-void
.end method

.method protected internalCommit()V
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Watercolor;->nativeEndWatercolor(Lcom/scalado/caps/Decoder;)I

    return-void
.end method

.method public set(FF)V
    .locals 3

    iget-boolean v1, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already committed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2}, Lcom/scalado/caps/filter/photoart/Watercolor;->nativeSetWatercolor(Lcom/scalado/caps/Decoder;FF)I

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    iput p1, p0, Lcom/scalado/caps/filter/photoart/Watercolor;->light:F

    iput p2, p0, Lcom/scalado/caps/filter/photoart/Watercolor;->color:F

    return-void
.end method
