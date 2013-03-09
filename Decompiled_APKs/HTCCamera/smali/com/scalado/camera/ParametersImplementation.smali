.class Lcom/scalado/camera/ParametersImplementation;
.super Lcom/scalado/camera/ParametersBase;
.source "ParametersImplementation.java"

# interfaces
.implements Lcom/scalado/camera/FeatureCamera$Parameters;


# static fields
.field private static final KEY_CAPTURE_BURST_CAPTURES:Ljava/lang/String; = "capture-burst-total"

.field private static final KEY_CAPTURE_BURST_EXPOSURES:Ljava/lang/String; = "capture-burst-exposures"

.field private static final KEY_CAPTURE_BURST_INTERVAL:Ljava/lang/String; = "capture-burst-interval"

.field private static final KEY_CAPTURE_BURST_RETROACTIVE:Ljava/lang/String; = "capture-burst-retroactive"

.field private static final KEY_CAPTURE_ZSL:Ljava/lang/String; = "capture-zsl"


# instance fields
.field private mBurstInterval:I

.field private mCapturesInBurst:I

.field private mExposures:[I


# direct methods
.method protected constructor <init>(Landroid/hardware/Camera;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/scalado/camera/ParametersBase;-><init>(Landroid/hardware/Camera;)V

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/scalado/camera/ParametersImplementation;->mExposures:[I

    iput v1, p0, Lcom/scalado/camera/ParametersImplementation;->mCapturesInBurst:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/scalado/camera/ParametersImplementation;->mBurstInterval:I

    return-void
.end method


# virtual methods
.method public getBurstCaptureInterval()I
    .locals 3

    invoke-virtual {p0}, Lcom/scalado/camera/ParametersImplementation;->isBurstIntervalSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "capture-burst-interval"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/scalado/camera/ParametersImplementation;->mBurstInterval:I

    goto :goto_0
.end method

.method public getBurstRetroactiveCaptures()I
    .locals 3

    iget-object v1, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "capture-burst-retroactive"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getBurstTotalCaptures()I
    .locals 4

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/scalado/camera/ParametersImplementation;->getMaxBurstTotalCaptures()I

    move-result v2

    if-le v2, v1, :cond_1

    iget-object v2, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "capture-burst-total"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/scalado/camera/ParametersImplementation;->mCapturesInBurst:I

    goto :goto_0
.end method

.method public getExposureBracketing()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/scalado/camera/ParametersImplementation;->isExposureBracketingSupported()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v5, "capture-burst-exposures"

    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v2}, Lcom/scalado/camera/ParametersImplementation;->splitInt(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lcom/scalado/camera/ParametersImplementation;->getExposureCompensation()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/scalado/camera/ParametersImplementation;->mExposures:[I

    array-length v4, v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v5, p0, Lcom/scalado/camera/ParametersImplementation;->mExposures:[I

    array-length v6, v5

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v6, :cond_0

    aget v3, v5, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public getMaxBurstRetroactiveCaptures()I
    .locals 3

    iget-object v1, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "capture-burst-retroactive-values"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMaxBurstTotalCaptures()I
    .locals 3

    iget-object v1, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "capture-burst-total-values"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getZeroShutterLag()Z
    .locals 3

    const/4 v1, 0x0

    const-string v2, "capture-zsl"

    invoke-virtual {p0, v2}, Lcom/scalado/camera/ParametersImplementation;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isBurstIntervalSupported()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "capture-burst-interval-values"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isExposureBracketingSupported()Z
    .locals 3

    iget-object v1, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "capture-burst-exposures-values"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isZeroShutterLagSupported()Z
    .locals 3

    const/4 v1, 0x0

    const-string v2, "capture-zsl-values"

    invoke-virtual {p0, v2}, Lcom/scalado/camera/ParametersImplementation;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setBurstCaptureInterval(I)V
    .locals 1

    iput p1, p0, Lcom/scalado/camera/ParametersImplementation;->mBurstInterval:I

    invoke-virtual {p0}, Lcom/scalado/camera/ParametersImplementation;->isBurstIntervalSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "capture-burst-interval"

    invoke-virtual {p0, v0, p1}, Lcom/scalado/camera/ParametersImplementation;->set(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public setBurstRetroactiveCaptures(I)V
    .locals 3

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/scalado/camera/ParametersImplementation;->getMaxBurstRetroactiveCaptures()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Value outside valid range. Value was: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Valid range is: [0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/scalado/camera/ParametersImplementation;->getMaxBurstRetroactiveCaptures()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/scalado/camera/ParametersImplementation;->getMaxBurstRetroactiveCaptures()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "capture-burst-retroactive"

    invoke-virtual {p0, v0, p1}, Lcom/scalado/camera/ParametersImplementation;->set(Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method public setBurstTotalCaptures(I)V
    .locals 2

    iput p1, p0, Lcom/scalado/camera/ParametersImplementation;->mCapturesInBurst:I

    invoke-virtual {p0}, Lcom/scalado/camera/ParametersImplementation;->getMaxBurstTotalCaptures()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const-string v0, "capture-burst-total"

    invoke-virtual {p0, v0, p1}, Lcom/scalado/camera/ParametersImplementation;->set(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public varargs setExposureBracketing([I)V
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "exposures may not be null or have length 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iput-object p1, p0, Lcom/scalado/camera/ParametersImplementation;->mExposures:[I

    array-length v2, p1

    invoke-virtual {p0, v2}, Lcom/scalado/camera/ParametersImplementation;->setBurstTotalCaptures(I)V

    invoke-virtual {p0, v4}, Lcom/scalado/camera/ParametersImplementation;->setBurstRetroactiveCaptures(I)V

    invoke-virtual {p0}, Lcom/scalado/camera/ParametersImplementation;->isExposureBracketingSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_3

    const-string v2, "capture-burst-exposures"

    invoke-virtual {p0, v2, v1}, Lcom/scalado/camera/ParametersImplementation;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setZeroShutterLag(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "capture-zsl"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/scalado/camera/ParametersImplementation;->set(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "capture-zsl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/scalado/camera/ParametersImplementation;->set(Ljava/lang/String;I)V

    goto :goto_0
.end method
