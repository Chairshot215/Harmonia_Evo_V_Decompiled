.class public final Lcom/scalado/caps/filter/clearshot/Exposure;
.super Lcom/scalado/caps/Filter;
.source "Exposure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/caps/filter/clearshot/Exposure$ExposureMode;
    }
.end annotation


# instance fields
.field private gain:F

.field private mode:Lcom/scalado/caps/filter/clearshot/Exposure$ExposureMode;


# direct methods
.method public constructor <init>(Lcom/scalado/caps/Session;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/Filter;-><init>(Lcom/scalado/caps/Session;Z)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/scalado/caps/filter/clearshot/Exposure;->gain:F

    sget-object v1, Lcom/scalado/caps/filter/clearshot/Exposure$ExposureMode;->GAMMA:Lcom/scalado/caps/filter/clearshot/Exposure$ExposureMode;

    iput-object v1, p0, Lcom/scalado/caps/filter/clearshot/Exposure;->mode:Lcom/scalado/caps/filter/clearshot/Exposure$ExposureMode;

    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/scalado/caps/filter/clearshot/Exposure;->nativeBeginExposure(Lcom/scalado/caps/Decoder;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/scalado/caps/filter/clearshot/Exposure;->setHasActiveFilter(Z)V

    return-void
.end method

.method private native nativeBeginExposure(Lcom/scalado/caps/Decoder;)I
.end method

.method private native nativeEndExposure(Lcom/scalado/caps/Decoder;)I
.end method

.method private native nativeSetExposure(Lcom/scalado/caps/Decoder;F)I
.end method

.method private native nativeSetExposureMode(Lcom/scalado/caps/Decoder;I)I
.end method


# virtual methods
.method public get()F
    .locals 1

    iget v0, p0, Lcom/scalado/caps/filter/clearshot/Exposure;->gain:F

    return v0
.end method

.method public getExposureMode()Lcom/scalado/caps/filter/clearshot/Exposure$ExposureMode;
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/filter/clearshot/Exposure;->mode:Lcom/scalado/caps/filter/clearshot/Exposure$ExposureMode;

    invoke-virtual {v0}, Lcom/scalado/caps/filter/clearshot/Exposure$ExposureMode;->clone()Lcom/scalado/caps/filter/clearshot/Exposure$ExposureMode;

    move-result-object v0

    return-object v0
.end method

.method protected internalApply(Lcom/scalado/caps/Decoder;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/clearshot/Exposure;->nativeBeginExposure(Lcom/scalado/caps/Decoder;)I

    move-result v0

    iget v1, p0, Lcom/scalado/caps/filter/clearshot/Exposure;->gain:F

    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/filter/clearshot/Exposure;->nativeSetExposure(Lcom/scalado/caps/Decoder;F)I

    move-result v0

    iget-object v1, p0, Lcom/scalado/caps/filter/clearshot/Exposure;->mode:Lcom/scalado/caps/filter/clearshot/Exposure$ExposureMode;

    iget v1, v1, Lcom/scalado/caps/filter/clearshot/Exposure$ExposureMode;->value:I

    invoke-direct {p0, p1, v1}, Lcom/scalado/caps/filter/clearshot/Exposure;->nativeSetExposureMode(Lcom/scalado/caps/Decoder;I)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/scalado/caps/filter/clearshot/Exposure;->nativeEndExposure(Lcom/scalado/caps/Decoder;)I

    return-void
.end method

.method protected internalCommit()V
    .locals 1

    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/scalado/caps/filter/clearshot/Exposure;->nativeEndExposure(Lcom/scalado/caps/Decoder;)I

    return-void
.end method

.method public set(F)V
    .locals 3

    iget-boolean v1, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Already committed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/high16 v1, -0x4080

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_1

    const/high16 v1, 0x3f80

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_2
    iget-object v1, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v1}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/scalado/caps/filter/clearshot/Exposure;->nativeSetExposure(Lcom/scalado/caps/Decoder;F)I

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/scalado/caps/Filter;->isSet:Z

    iput p1, p0, Lcom/scalado/caps/filter/clearshot/Exposure;->gain:F

    return-void
.end method

.method public setExposureMode(Lcom/scalado/caps/filter/clearshot/Exposure$ExposureMode;)V
    .locals 2

    iget-boolean v0, p0, Lcom/scalado/caps/Filter;->isCommitted:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/scalado/caps/Filter;->session:Lcom/scalado/caps/Session;

    invoke-virtual {v0}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    iget v1, p1, Lcom/scalado/caps/filter/clearshot/Exposure$ExposureMode;->value:I

    invoke-direct {p0, v0, v1}, Lcom/scalado/caps/filter/clearshot/Exposure;->nativeSetExposureMode(Lcom/scalado/caps/Decoder;I)I

    iput-object p1, p0, Lcom/scalado/caps/filter/clearshot/Exposure;->mode:Lcom/scalado/caps/filter/clearshot/Exposure$ExposureMode;

    :cond_1
    return-void
.end method
