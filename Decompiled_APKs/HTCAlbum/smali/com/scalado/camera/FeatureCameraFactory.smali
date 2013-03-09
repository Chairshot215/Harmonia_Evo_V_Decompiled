.class public Lcom/scalado/camera/FeatureCameraFactory;
.super Ljava/lang/Object;
.source "FeatureCameraFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/camera/FeatureCameraFactory$1;,
        Lcom/scalado/camera/FeatureCameraFactory$OnZoomChangeListenerAdapter;,
        Lcom/scalado/camera/FeatureCameraFactory$ErrorCallbackAdapter;,
        Lcom/scalado/camera/FeatureCameraFactory$AutoFocusCallbackAdapter;,
        Lcom/scalado/camera/FeatureCameraFactory$PictureCallbackAdapter;,
        Lcom/scalado/camera/FeatureCameraFactory$ShutterCallbackAdapter;,
        Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 751
    return-void
.end method

.method public static getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    .locals 0
    .parameter "cameraId"
    .parameter "cameraInfo"

    .prologue
    .line 37
    invoke-static {p0, p1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 38
    return-void
.end method

.method public static getNumberOfCameras()I
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    return v0
.end method

.method public static open()Lcom/scalado/camera/FeatureCamera;
    .locals 4

    .prologue
    .line 54
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    .line 55
    .local v0, camera:Landroid/hardware/Camera;
    new-instance v1, Lcom/scalado/camera/FeatureCameraFactory;

    invoke-direct {v1}, Lcom/scalado/camera/FeatureCameraFactory;-><init>()V

    .line 56
    .local v1, thiz:Lcom/scalado/camera/FeatureCameraFactory;
    new-instance v2, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;-><init>(Lcom/scalado/camera/FeatureCameraFactory;Landroid/hardware/Camera;Lcom/scalado/camera/FeatureCameraFactory$1;)V

    return-object v2
.end method

.method public static open(I)Lcom/scalado/camera/FeatureCamera;
    .locals 4
    .parameter "cameraId"

    .prologue
    .line 77
    invoke-static {p0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    .line 78
    .local v0, camera:Landroid/hardware/Camera;
    new-instance v1, Lcom/scalado/camera/FeatureCameraFactory;

    invoke-direct {v1}, Lcom/scalado/camera/FeatureCameraFactory;-><init>()V

    .line 79
    .local v1, thiz:Lcom/scalado/camera/FeatureCameraFactory;
    new-instance v2, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;-><init>(Lcom/scalado/camera/FeatureCameraFactory;Landroid/hardware/Camera;Lcom/scalado/camera/FeatureCameraFactory$1;)V

    return-object v2
.end method

.method public static open(Landroid/hardware/Camera;)Lcom/scalado/camera/FeatureCamera;
    .locals 3
    .parameter "camera"

    .prologue
    .line 66
    new-instance v0, Lcom/scalado/camera/FeatureCameraFactory;

    invoke-direct {v0}, Lcom/scalado/camera/FeatureCameraFactory;-><init>()V

    .line 67
    .local v0, thiz:Lcom/scalado/camera/FeatureCameraFactory;
    new-instance v1, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;-><init>(Lcom/scalado/camera/FeatureCameraFactory;Landroid/hardware/Camera;Lcom/scalado/camera/FeatureCameraFactory$1;)V

    return-object v1
.end method
