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

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    return-void
.end method


# virtual methods
.method public flatten()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAndroidParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method public getAntibanding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getAntibanding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColorEffect()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getColorEffect()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExposureCompensation()I
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v0

    return v0
.end method

.method public getExposureCompensationStep()F
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v0

    return v0
.end method

.method public getFlashMode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocalLength()F
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocalLength()F

    move-result v0

    return v0
.end method

.method public getFocusMode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHorizontalViewAngle()F
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getJpegQuality()I
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getJpegQuality()I

    move-result v0

    return v0
.end method

.method public getJpegThumbnailQuality()I
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getJpegThumbnailQuality()I

    move-result v0

    return v0
.end method

.method public getJpegThumbnailSize()Lcom/scalado/base/Size;
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getJpegThumbnailSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    invoke-static {v0}, Lcom/scalado/camera/utils/Translators;->translateSize(Landroid/hardware/Camera$Size;)Lcom/scalado/base/Size;

    move-result-object v0

    return-object v0
.end method

.method public getMaxExposureCompensation()I
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v0

    return v0
.end method

.method public getMaxZoom()I
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    return v0
.end method

.method public getMinExposureCompensation()I
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v0

    return v0
.end method

.method public getPictureFormat()I
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureFormat()I

    move-result v0

    return v0
.end method

.method public getPictureSize()Lcom/scalado/base/Size;
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    invoke-static {v0}, Lcom/scalado/camera/utils/Translators;->translateSize(Landroid/hardware/Camera$Size;)Lcom/scalado/base/Size;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewFormat()I
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v0

    return v0
.end method

.method public getPreviewFrameRate()I
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewFrameRate()I

    move-result v0

    return v0
.end method

.method public getPreviewSize()Lcom/scalado/base/Size;
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    invoke-static {v0}, Lcom/scalado/camera/utils/Translators;->translateSize(Landroid/hardware/Camera$Size;)Lcom/scalado/base/Size;

    move-result-object v0

    return-object v0
.end method

.method public getSceneMode()Ljava/lang/String;
    .locals 1

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

    iget-object v3, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v2

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    invoke-static {v3}, Lcom/scalado/camera/utils/Translators;->translateSize(Landroid/hardware/Camera$Size;)Lcom/scalado/base/Size;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
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

    iget-object v3, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v2

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    invoke-static {v3}, Lcom/scalado/camera/utils/Translators;->translateSize(Landroid/hardware/Camera$Size;)Lcom/scalado/base/Size;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
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

    iget-object v3, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    invoke-static {v3}, Lcom/scalado/camera/utils/Translators;->translateSize(Landroid/hardware/Camera$Size;)Lcom/scalado/base/Size;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
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

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVerticalViewAngle()F
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getVerticalViewAngle()F

    move-result v0

    return v0
.end method

.method public getWhiteBalance()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getZoom()I
    .locals 1

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

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isSmoothZoomSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isSmoothZoomSupported()Z

    move-result v0

    return v0
.end method

.method public isZoomSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public removeGpsData()V
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    return-void
.end method

.method public set(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAntibanding(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    return-void
.end method

.method public setColorEffect(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    return-void
.end method

.method public setExposureCompensation(I)V
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    return-void
.end method

.method public setFlashMode(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    return-void
.end method

.method public setFocusMode(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    return-void
.end method

.method public setGpsAltitude(D)V
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    return-void
.end method

.method public setGpsLatitude(D)V
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    return-void
.end method

.method public setGpsLongitude(D)V
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    return-void
.end method

.method public setGpsProcessingMethod(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setGpsProcessingMethod(Ljava/lang/String;)V

    return-void
.end method

.method public setGpsTimestamp(J)V
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    return-void
.end method

.method public setJpegQuality(I)V
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    return-void
.end method

.method public setJpegThumbnailQuality(I)V
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailQuality(I)V

    return-void
.end method

.method public setJpegThumbnailSize(II)V
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    return-void
.end method

.method public setPictureFormat(I)V
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    return-void
.end method

.method public setPictureSize(II)V
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    return-void
.end method

.method public setPreviewFormat(I)V
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    return-void
.end method

.method public setPreviewFrameRate(I)V
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    return-void
.end method

.method public setPreviewSize(II)V
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    return-void
.end method

.method public setRotation(I)V
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    return-void
.end method

.method public setSceneMode(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    return-void
.end method

.method public setWhiteBalance(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    return-void
.end method

.method public setZoom(I)V
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    return-void
.end method

.method protected split(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
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

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected splitInt(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
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

    const/4 v3, 0x0

    if-nez p1, :cond_1

    move-object v0, v3

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v2, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    move-object v0, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected splitSize(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
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

    const/4 v3, 0x0

    if-nez p1, :cond_1

    move-object v1, v3

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v2, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/scalado/camera/ParametersBase;->strToSize(Ljava/lang/String;)Lcom/scalado/base/Size;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected strToSize(Ljava/lang/String;)Lcom/scalado/base/Size;
    .locals 6

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    const/16 v4, 0x78

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

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

    iget-object v0, p0, Lcom/scalado/camera/ParametersBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    return-void
.end method
