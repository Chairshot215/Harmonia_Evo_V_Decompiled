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
    .locals 3
    .parameter "camera"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 28
    invoke-direct {p0, p1}, Lcom/scalado/camera/ParametersBase;-><init>(Landroid/hardware/Camera;)V

    .line 23
    new-array v0, v2, [I

    aput v1, v0, v1

    iput-object v0, p0, Lcom/scalado/camera/ParametersImplementation;->mExposures:[I

    .line 24
    iput v2, p0, Lcom/scalado/camera/ParametersImplementation;->mCapturesInBurst:I

    .line 25
    const/16 v0, 0x64

    iput v0, p0, Lcom/scalado/camera/ParametersImplementation;->mBurstInterval:I

    .line 29
    return-void
.end method


# virtual methods
.method public getBurstCaptureInterval()I
    .locals 3

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/scalado/camera/ParametersImplementation;->isBurstIntervalSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "capture-burst-interval"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, string:Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 119
    .end local v0           #string:Ljava/lang/String;
    :goto_0
    return v1

    .line 116
    .restart local v0       #string:Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 119
    .end local v0           #string:Ljava/lang/String;
    :cond_1
    iget v1, p0, Lcom/scalado/camera/ParametersImplementation;->mBurstInterval:I

    goto :goto_0
.end method

.method public getBurstRetroactiveCaptures()I
    .locals 3

    .prologue
    .line 86
    iget-object v1, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "capture-burst-retroactive"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, string:Ljava/lang/String;
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

    .prologue
    const/4 v1, 0x1

    .line 56
    invoke-virtual {p0}, Lcom/scalado/camera/ParametersImplementation;->getMaxBurstTotalCaptures()I

    move-result v2

    if-le v2, v1, :cond_1

    .line 57
    iget-object v2, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "capture-burst-total"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, string:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 61
    .end local v0           #string:Ljava/lang/String;
    :goto_0
    return v1

    .line 58
    .restart local v0       #string:Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 61
    .end local v0           #string:Ljava/lang/String;
    :cond_1
    iget v1, p0, Lcom/scalado/camera/ParametersImplementation;->mCapturesInBurst:I

    goto :goto_0
.end method

.method public getExposureBracketing()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/scalado/camera/ParametersImplementation;->isExposureBracketingSupported()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 140
    iget-object v7, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v8, "capture-burst-exposures"

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 141
    .local v5, string:Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 142
    invoke-virtual {p0, v5}, Lcom/scalado/camera/ParametersImplementation;->splitInt(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 156
    .end local v5           #string:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v4

    .line 145
    .restart local v5       #string:Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 146
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/scalado/camera/ParametersImplementation;->getExposureCompensation()I

    move-result v1

    .line 147
    .local v1, expComp:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    .end local v1           #expComp:I
    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5           #string:Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/scalado/camera/ParametersImplementation;->mExposures:[I

    array-length v7, v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 153
    .restart local v4       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/scalado/camera/ParametersImplementation;->mExposures:[I

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget v6, v0, v2

    .line 154
    .local v6, value:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getMaxBurstRetroactiveCaptures()I
    .locals 3

    .prologue
    .line 103
    iget-object v1, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "capture-burst-retroactive-values"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, string:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 105
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 108
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMaxBurstTotalCaptures()I
    .locals 3

    .prologue
    .line 75
    iget-object v1, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "capture-burst-total-values"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, string:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 77
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 80
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getZeroShutterLag()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 33
    const-string v2, "capture-zsl"

    invoke-virtual {p0, v2}, Lcom/scalado/camera/ParametersImplementation;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, string:Ljava/lang/String;
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

    .prologue
    const/4 v1, 0x0

    .line 133
    iget-object v2, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "capture-burst-interval-values"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, string:Ljava/lang/String;
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

    .prologue
    .line 182
    iget-object v1, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "capture-burst-exposures-values"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, string:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 184
    const/4 v1, 0x1

    .line 187
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isZeroShutterLagSupported()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 49
    const-string v2, "capture-zsl-values"

    invoke-virtual {p0, v2}, Lcom/scalado/camera/ParametersImplementation;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, string:Ljava/lang/String;
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
    .parameter "value"

    .prologue
    .line 125
    iput p1, p0, Lcom/scalado/camera/ParametersImplementation;->mBurstInterval:I

    .line 126
    invoke-virtual {p0}, Lcom/scalado/camera/ParametersImplementation;->isBurstIntervalSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    const-string v0, "capture-burst-interval"

    invoke-virtual {p0, v0, p1}, Lcom/scalado/camera/ParametersImplementation;->set(Ljava/lang/String;I)V

    .line 129
    :cond_0
    return-void
.end method

.method public setBurstRetroactiveCaptures(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 92
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/scalado/camera/ParametersImplementation;->getMaxBurstRetroactiveCaptures()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value outside valid range. Value was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

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

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/scalado/camera/ParametersImplementation;->getMaxBurstRetroactiveCaptures()I

    move-result v0

    if-lez v0, :cond_2

    .line 97
    const-string v0, "capture-burst-retroactive"

    invoke-virtual {p0, v0, p1}, Lcom/scalado/camera/ParametersImplementation;->set(Ljava/lang/String;I)V

    .line 99
    :cond_2
    return-void
.end method

.method public setBurstTotalCaptures(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 67
    iput p1, p0, Lcom/scalado/camera/ParametersImplementation;->mCapturesInBurst:I

    .line 68
    invoke-virtual {p0}, Lcom/scalado/camera/ParametersImplementation;->getMaxBurstTotalCaptures()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 69
    const-string v0, "capture-burst-total"

    invoke-virtual {p0, v0, p1}, Lcom/scalado/camera/ParametersImplementation;->set(Ljava/lang/String;I)V

    .line 71
    :cond_0
    return-void
.end method

.method public varargs setExposureBracketing([I)V
    .locals 4
    .parameter "exposures"

    .prologue
    const/4 v3, 0x0

    .line 162
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 163
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "exposures may not be null or have length 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 166
    :cond_1
    iput-object p1, p0, Lcom/scalado/camera/ParametersImplementation;->mExposures:[I

    .line 167
    array-length v2, p1

    invoke-virtual {p0, v2}, Lcom/scalado/camera/ParametersImplementation;->setBurstTotalCaptures(I)V

    .line 168
    invoke-virtual {p0, v3}, Lcom/scalado/camera/ParametersImplementation;->setBurstRetroactiveCaptures(I)V

    .line 170
    invoke-virtual {p0}, Lcom/scalado/camera/ParametersImplementation;->isExposureBracketingSupported()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 171
    const-string v1, ""

    .line 172
    .local v1, string:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 173
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_2
    const-string v2, "capture-burst-exposures"

    invoke-virtual {p0, v2, v1}, Lcom/scalado/camera/ParametersImplementation;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .end local v0           #i:I
    .end local v1           #string:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public setZeroShutterLag(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 39
    if-eqz p1, :cond_0

    .line 40
    const-string v0, "capture-zsl"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/scalado/camera/ParametersImplementation;->set(Ljava/lang/String;I)V

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    const-string v0, "capture-zsl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/scalado/camera/ParametersImplementation;->set(Ljava/lang/String;I)V

    goto :goto_0
.end method
