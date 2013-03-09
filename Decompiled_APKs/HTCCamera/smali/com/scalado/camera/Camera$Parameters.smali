.class public interface abstract Lcom/scalado/camera/Camera$Parameters;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Parameters"
.end annotation


# static fields
.field public static final ANTIBANDING_50HZ:Ljava/lang/String; = "50hz"

.field public static final ANTIBANDING_60HZ:Ljava/lang/String; = "60hz"

.field public static final ANTIBANDING_AUTO:Ljava/lang/String; = "auto"

.field public static final ANTIBANDING_OFF:Ljava/lang/String; = "off"

.field public static final EFFECT_AQUA:Ljava/lang/String; = "aqua"

.field public static final EFFECT_BLACKBOARD:Ljava/lang/String; = "blackboard"

.field public static final EFFECT_MONO:Ljava/lang/String; = "mono"

.field public static final EFFECT_NEGATIVE:Ljava/lang/String; = "negative"

.field public static final EFFECT_NONE:Ljava/lang/String; = "none"

.field public static final EFFECT_POSTERIZE:Ljava/lang/String; = "posterize"

.field public static final EFFECT_SEPIA:Ljava/lang/String; = "sepia"

.field public static final EFFECT_SOLARIZE:Ljava/lang/String; = "solarize"

.field public static final EFFECT_WHITEBOARD:Ljava/lang/String; = "whiteboard"

.field public static final FLASH_MODE_AUTO:Ljava/lang/String; = "auto"

.field public static final FLASH_MODE_OFF:Ljava/lang/String; = "off"

.field public static final FLASH_MODE_ON:Ljava/lang/String; = "on"

.field public static final FLASH_MODE_RED_EYE:Ljava/lang/String; = "red-eye"

.field public static final FLASH_MODE_TORCH:Ljava/lang/String; = "torch"

.field public static final FOCUS_MODE_AUTO:Ljava/lang/String; = "auto"

.field public static final FOCUS_MODE_EDOF:Ljava/lang/String; = "edof"

.field public static final FOCUS_MODE_FIXED:Ljava/lang/String; = "fixed"

.field public static final FOCUS_MODE_INFINITY:Ljava/lang/String; = "infinity"

.field public static final FOCUS_MODE_MACRO:Ljava/lang/String; = "macro"

.field public static final SCENE_MODE_ACTION:Ljava/lang/String; = "action"

.field public static final SCENE_MODE_AUTO:Ljava/lang/String; = "auto"

.field public static final SCENE_MODE_BARCODE:Ljava/lang/String; = "barcode"

.field public static final SCENE_MODE_BEACH:Ljava/lang/String; = "beach"

.field public static final SCENE_MODE_CANDLELIGHT:Ljava/lang/String; = "candlelight"

.field public static final SCENE_MODE_FIREWORKS:Ljava/lang/String; = "fireworks"

.field public static final SCENE_MODE_LANDSCAPE:Ljava/lang/String; = "landscape"

.field public static final SCENE_MODE_NIGHT:Ljava/lang/String; = "night"

.field public static final SCENE_MODE_NIGHT_PORTRAIT:Ljava/lang/String; = "night-portrait"

.field public static final SCENE_MODE_PARTY:Ljava/lang/String; = "party"

.field public static final SCENE_MODE_PORTRAIT:Ljava/lang/String; = "portrait"

.field public static final SCENE_MODE_SNOW:Ljava/lang/String; = "snow"

.field public static final SCENE_MODE_SPORTS:Ljava/lang/String; = "sports"

.field public static final SCENE_MODE_STEADYPHOTO:Ljava/lang/String; = "steadyphoto"

.field public static final SCENE_MODE_SUNSET:Ljava/lang/String; = "sunset"

.field public static final SCENE_MODE_THEATRE:Ljava/lang/String; = "theatre"

.field public static final WHITE_BALANCE_AUTO:Ljava/lang/String; = "auto"

.field public static final WHITE_BALANCE_CLOUDY_DAYLIGHT:Ljava/lang/String; = "cloudy-daylight"

.field public static final WHITE_BALANCE_DAYLIGHT:Ljava/lang/String; = "daylight"

.field public static final WHITE_BALANCE_FLUORESCENT:Ljava/lang/String; = "fluorescent"

.field public static final WHITE_BALANCE_INCANDESCENT:Ljava/lang/String; = "incandescent"

.field public static final WHITE_BALANCE_SHADE:Ljava/lang/String; = "shade"

.field public static final WHITE_BALANCE_TWILIGHT:Ljava/lang/String; = "twilight"

.field public static final WHITE_BALANCE_WARM_FLUORESCENT:Ljava/lang/String; = "warm-fluorescent"


# virtual methods
.method public abstract flatten()Ljava/lang/String;
.end method

.method public abstract get(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getAndroidParameters()Landroid/hardware/Camera$Parameters;
.end method

.method public abstract getAntibanding()Ljava/lang/String;
.end method

.method public abstract getColorEffect()Ljava/lang/String;
.end method

.method public abstract getExposureCompensation()I
.end method

.method public abstract getExposureCompensationStep()F
.end method

.method public abstract getFlashMode()Ljava/lang/String;
.end method

.method public abstract getFocalLength()F
.end method

.method public abstract getFocusMode()Ljava/lang/String;
.end method

.method public abstract getHorizontalViewAngle()F
.end method

.method public abstract getInt(Ljava/lang/String;)I
.end method

.method public abstract getJpegQuality()I
.end method

.method public abstract getJpegThumbnailQuality()I
.end method

.method public abstract getJpegThumbnailSize()Lcom/scalado/base/Size;
.end method

.method public abstract getMaxExposureCompensation()I
.end method

.method public abstract getMaxZoom()I
.end method

.method public abstract getMinExposureCompensation()I
.end method

.method public abstract getPictureFormat()I
.end method

.method public abstract getPictureSize()Lcom/scalado/base/Size;
.end method

.method public abstract getPreviewFormat()I
.end method

.method public abstract getPreviewFrameRate()I
.end method

.method public abstract getPreviewSize()Lcom/scalado/base/Size;
.end method

.method public abstract getSceneMode()Ljava/lang/String;
.end method

.method public abstract getSupportedAntibanding()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedColorEffects()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedFlashModes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedFocusModes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedJpegThumbnailSizes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/scalado/base/Size;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedPictureFormats()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedPictureSizes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/scalado/base/Size;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedPreviewFormats()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedPreviewFrameRates()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedPreviewSizes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/scalado/base/Size;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedSceneModes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedWhiteBalance()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVerticalViewAngle()F
.end method

.method public abstract getWhiteBalance()Ljava/lang/String;
.end method

.method public abstract getZoom()I
.end method

.method public abstract getZoomRatios()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isSmoothZoomSupported()Z
.end method

.method public abstract isZoomSupported()Z
.end method

.method public abstract remove(Ljava/lang/String;)V
.end method

.method public abstract removeGpsData()V
.end method

.method public abstract set(Ljava/lang/String;I)V
.end method

.method public abstract set(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setAntibanding(Ljava/lang/String;)V
.end method

.method public abstract setColorEffect(Ljava/lang/String;)V
.end method

.method public abstract setExposureCompensation(I)V
.end method

.method public abstract setFlashMode(Ljava/lang/String;)V
.end method

.method public abstract setFocusMode(Ljava/lang/String;)V
.end method

.method public abstract setGpsAltitude(D)V
.end method

.method public abstract setGpsLatitude(D)V
.end method

.method public abstract setGpsLongitude(D)V
.end method

.method public abstract setGpsProcessingMethod(Ljava/lang/String;)V
.end method

.method public abstract setGpsTimestamp(J)V
.end method

.method public abstract setJpegQuality(I)V
.end method

.method public abstract setJpegThumbnailQuality(I)V
.end method

.method public abstract setJpegThumbnailSize(II)V
.end method

.method public abstract setPictureFormat(I)V
.end method

.method public abstract setPictureSize(II)V
.end method

.method public abstract setPreviewFormat(I)V
.end method

.method public abstract setPreviewFrameRate(I)V
.end method

.method public abstract setPreviewSize(II)V
.end method

.method public abstract setRotation(I)V
.end method

.method public abstract setSceneMode(Ljava/lang/String;)V
.end method

.method public abstract setWhiteBalance(Ljava/lang/String;)V
.end method

.method public abstract setZoom(I)V
.end method

.method public abstract unflatten(Ljava/lang/String;)V
.end method
