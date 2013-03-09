.class public final Lcom/scalado/caps/filter/photoart/Rotation;
.super Lcom/scalado/caps/Filter;
.source "Rotation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/caps/filter/photoart/Rotation$ScaleMode;
    }
.end annotation


# instance fields
.field private angle:F

.field private scaleMode:Lcom/scalado/caps/filter/photoart/Rotation$ScaleMode;


# direct methods
.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/caps/filter/photoart/Rotation;->angle:F

    sget-object v0, Lcom/scalado/caps/filter/photoart/Rotation$ScaleMode;->FIT_INSIDE:Lcom/scalado/caps/filter/photoart/Rotation$ScaleMode;

    iput-object v0, p0, Lcom/scalado/caps/filter/photoart/Rotation;->scaleMode:Lcom/scalado/caps/filter/photoart/Rotation$ScaleMode;

    invoke-virtual {p1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Rotation;->nativeBeginRotation(Lcom/scalado/caps/Decoder;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/scalado/caps/filter/photoart/Rotation;->setHasActiveFilter(Z)V

    return-void
.end method

.method private native nativeBeginRotation(Lcom/scalado/caps/Decoder;)I
.end method

.method private native nativeEndRotation(Lcom/scalado/caps/Decoder;)I
.end method

.method private native nativeSetRotation(Lcom/scalado/caps/Decoder;FI)I
.end method


# virtual methods
.method public getAngle()F
    .locals 1

    iget v0, p0, Lcom/scalado/caps/filter/photoart/Rotation;->angle:F

    return v0
.end method

.method public getScaleMode()Lcom/scalado/caps/filter/photoart/Rotation$ScaleMode;
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/filter/photoart/Rotation;->scaleMode:Lcom/scalado/caps/filter/photoart/Rotation$ScaleMode;

    invoke-virtual {v0}, Lcom/scalado/caps/filter/photoart/Rotation$ScaleMode;->clone()Lcom/scalado/caps/filter/photoart/Rotation$ScaleMode;

    move-result-object v0

    return-object v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Rotation;->nativeBeginRotation(Lcom/scalado/caps/Decoder;)I

    move-result v0

    iget v1, p0, Lcom/scalado/caps/filter/photoart/Rotation;->angle:F

    iget-object v2, p0, Lcom/scalado/caps/filter/photoart/Rotation;->scaleMode:Lcom/scalado/caps/filter/photoart/Rotation$ScaleMode;

    iget v2, v2, Lcom/scalado/caps/filter/photoart/Rotation$ScaleMode;->value:I

    invoke-direct {p0, p1, v1, v2}, Lcom/scalado/caps/filter/photoart/Rotation;->nativeSetRotation(Lcom/scalado/caps/Decoder;FI)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/photoart/Rotation;->nativeEndRotation(Lcom/scalado/caps/Decoder;)I

    return-void
.end method

.method protected internalCommit()V
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/photoart/Rotation;->nativeEndRotation(Lcom/scalado/caps/Decoder;)I

    return-void
.end method

.method public set(FLcom/scalado/caps/filter/photoart/Rotation$ScaleMode;)V
    .locals 3

    iget-boolean v1, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already committed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_1

    const/high16 v1, 0x43b4

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Argument to set out of legal range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    iget v2, p2, Lcom/scalado/caps/filter/photoart/Rotation$ScaleMode;->value:I

    invoke-direct {p0, v1, p1, v2}, Lcom/scalado/caps/filter/photoart/Rotation;->nativeSetRotation(Lcom/scalado/caps/Decoder;FI)I

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    iput p1, p0, Lcom/scalado/caps/filter/photoart/Rotation;->angle:F

    iput-object p2, p0, Lcom/scalado/caps/filter/photoart/Rotation;->scaleMode:Lcom/scalado/caps/filter/photoart/Rotation$ScaleMode;

    return-void
.end method
