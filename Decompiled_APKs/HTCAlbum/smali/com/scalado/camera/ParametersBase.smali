.class Lcom/scalado/camera/ParametersBase;
.super Ljava/lang/Object;
.source "ParametersBase.java"

# interfaces
.implements Lcom/scalado/camera/Camera$Parameters;


# static fields
.field static final SUPPORTED_VALUES_SUFFIX:Ljava/lang/String; = "-values"


# instance fields
.field protected mParameters:Landroid/hardware/Camera$Parameters;


# direct methods
.method protected constructor <init>(Landroid/hardware/Camera;)V
    .locals 1
    .parameter "camera"

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 24
    return-void
.end method


# virtual methods
.method public flatten()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAndroidParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method public getAntibanding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getAntibanding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColorEffect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getColorEffect()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExposureCompensation()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v0

    return v0
.end method

.method public getExposureCompensationStep()F
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v0

    return v0
.end method

.method public getFlashMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocalLength()F
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocalLength()F

    move-result v0

    return v0
.end method

.method public getFocusMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHorizontalViewAngle()F
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getJpegQuality()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getJpegQuality()I

    move-result v0

    return v0
.end method

.method public getJpegThumbnailQuality()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getJpegThumbnailQuality()I

    move-result v0

    return v0
.end method

.method public getJpegThumbnailSize()Lcom/scalado/base/Size;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getJpegThumbnailSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    invoke-static {v0}, Lcom/scalado/camera/utils/Translators;->translateSize(Landroid/hardware/Camera$Size;)Lcom/scalado/base/Size;

    move-result-object v0

    return-object v0
.end method

.method public getMaxExposureCompensation()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v0

    return v0
.end method

.method public getMaxZoom()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    return v0
.end method

.method public getMinExposureCompensation()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v0

    return v0
.end method

.method public getPictureFormat()I
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureFormat()I

    move-result v0

    return v0
.end method

.method public getPictureSize()Lcom/scalado/base/Size;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    invoke-static {v0}, Lcom/scalado/camera/utils/Translators;->translateSize(Landroid/hardware/Camera$Size;)Lcom/scalado/base/Size;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewFormat()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v0

    return v0
.end method

.method public getPreviewFrameRate()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewFrameRate()I

    move-result v0

    return v0
.end method

.method public getPreviewSize()Lcom/scalado/base/Size;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    invoke-static {v0}, Lcom/scalado/camera/utils/Translators;->translateSize(Landroid/hardware/Camera$Size;)Lcom/scalado/base/Size;

    move-result-object v0

    return-object v0
.end method

.method public getSceneMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedAntibanding()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedColorEffects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedFlashModes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedFocusModes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedJpegThumbnailSizes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/scalado/base/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    iget-object v3, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v2

    .line 169
    .local v2, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 171
    .local v1, scaladoSizes:Ljava/util/List;,"Ljava/util/List<Lcom/scalado/base/Size;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 172
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    invoke-static {v3}, Lcom/scalado/camera/utils/Translators;->translateSize(Landroid/hardware/Camera$Size;)Lcom/scalado/base/Size;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 174
    :cond_0
    return-object v1
.end method

.method public getSupportedPictureFormats()Ljava/util/List;
    .locals 1
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
    .line 179
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureFormats()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedPictureSizes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/scalado/base/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    iget-object v3, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v2

    .line 185
    .local v2, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 187
    .local v1, scaladoSizes:Ljava/util/List;,"Ljava/util/List<Lcom/scalado/base/Size;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 188
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    invoke-static {v3}, Lcom/scalado/camera/utils/Translators;->translateSize(Landroid/hardware/Camera$Size;)Lcom/scalado/base/Size;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 190
    :cond_0
    return-object v1
.end method

.method public getSupportedPreviewFormats()Ljava/util/List;
    .locals 1
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
    .line 195
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedPreviewFrameRates()Ljava/util/List;
    .locals 1
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
    .line 200
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedPreviewSizes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/scalado/base/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    iget-object v3, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    .line 206
    .local v2, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 208
    .local v1, scaladoSizes:Ljava/util/List;,"Ljava/util/List<Lcom/scalado/base/Size;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 209
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    invoke-static {v3}, Lcom/scalado/camera/utils/Translators;->translateSize(Landroid/hardware/Camera$Size;)Lcom/scalado/base/Size;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 211
    :cond_0
    return-object v1
.end method

.method public getSupportedSceneModes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedWhiteBalance()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVerticalViewAngle()F
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getVerticalViewAngle()F

    move-result v0

    return v0
.end method

.method public getWhiteBalance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getZoom()I
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v0

    return v0
.end method

.method public getZoomRatios()Ljava/util/List;
    .locals 1
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
    .line 241
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isSmoothZoomSupported()Z
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isSmoothZoomSupported()Z

    move-result v0

    return v0
.end method

.method public isZoomSupported()Z
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public removeGpsData()V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    .line 262
    return-void
.end method

.method public set(Ljava/lang/String;I)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 266
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 267
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public setAntibanding(Ljava/lang/String;)V
    .locals 1
    .parameter "antibanding"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method public setColorEffect(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public setExposureCompensation(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 287
    return-void
.end method

.method public setFlashMode(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method public setFocusMode(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method public setGpsAltitude(D)V
    .locals 1
    .parameter "altitude"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 302
    return-void
.end method

.method public setGpsLatitude(D)V
    .locals 1
    .parameter "latitude"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 307
    return-void
.end method

.method public setGpsLongitude(D)V
    .locals 1
    .parameter "longitude"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 312
    return-void
.end method

.method public setGpsProcessingMethod(Ljava/lang/String;)V
    .locals 1
    .parameter "processingMethod"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setGpsProcessingMethod(Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method public setGpsTimestamp(J)V
    .locals 1
    .parameter "timestamp"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 322
    return-void
.end method

.method public setJpegQuality(I)V
    .locals 1
    .parameter "quality"

    .prologue
    .line 326
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 327
    return-void
.end method

.method public setJpegThumbnailQuality(I)V
    .locals 1
    .parameter "quality"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailQuality(I)V

    .line 332
    return-void
.end method

.method public setJpegThumbnailSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    .line 337
    return-void
.end method

.method public setPictureFormat(I)V
    .locals 1
    .parameter "pixelFormat"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    .line 342
    return-void
.end method

.method public setPictureSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 347
    return-void
.end method

.method public setPreviewFormat(I)V
    .locals 1
    .parameter "pixelFormat"

    .prologue
    .line 351
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 352
    return-void
.end method

.method public setPreviewFrameRate(I)V
    .locals 1
    .parameter "fps"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 357
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 361
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 362
    return-void
.end method

.method public setRotation(I)V
    .locals 1
    .parameter "rotation"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 367
    return-void
.end method

.method public setSceneMode(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 371
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method public setWhiteBalance(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 376
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 378
    return-void
.end method

.method public setZoom(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 382
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 384
    return-void
.end method

.method protected split(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 398
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 406
    :cond_0
    return-object v0

    .line 401
    :cond_1
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    .local v1, tokenizer:Ljava/util/StringTokenizer;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 403
    .local v0, substrings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 404
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected splitInt(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 412
    if-nez p1, :cond_1

    move-object v0, v3

    .line 421
    :cond_0
    :goto_0
    return-object v0

    .line 414
    :cond_1
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v2, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    .local v2, tokenizer:Ljava/util/StringTokenizer;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 416
    .local v0, substrings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 417
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 418
    .local v1, token:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 420
    .end local v1           #token:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    move-object v0, v3

    goto :goto_0
.end method

.method protected splitSize(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .parameter "str"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/scalado/base/Size;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 427
    if-nez p1, :cond_1

    move-object v1, v3

    .line 436
    :cond_0
    :goto_0
    return-object v1

    .line 429
    :cond_1
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v2, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    .local v2, tokenizer:Ljava/util/StringTokenizer;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 431
    .local v1, sizeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/scalado/base/Size;>;"
    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 432
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/scalado/camera/ParametersBase;->strToSize(Ljava/lang/String;)Lcom/scalado/base/Size;

    move-result-object v0

    .line 433
    .local v0, size:Lcom/scalado/base/Size;
    if-eqz v0, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 435
    .end local v0           #size:Lcom/scalado/base/Size;
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    move-object v1, v3

    goto :goto_0
.end method

.method protected strToSize(Ljava/lang/String;)Lcom/scalado/base/Size;
    .locals 6
    .parameter "str"

    .prologue
    const/4 v3, 0x0

    .line 442
    if-nez p1, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-object v3

    .line 444
    :cond_1
    const/16 v4, 0x78

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 445
    .local v1, pos:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 446
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 447
    .local v2, width:Ljava/lang/String;
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, height:Ljava/lang/String;
    new-instance v3, Lcom/scalado/base/Size;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/scalado/base/Size;-><init>(II)V

    goto :goto_0
.end method

.method public unflatten(Ljava/lang/String;)V
    .locals 1
    .parameter "flattened"

    .prologue
    .line 388
    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    .line 390
    return-void
.end method
