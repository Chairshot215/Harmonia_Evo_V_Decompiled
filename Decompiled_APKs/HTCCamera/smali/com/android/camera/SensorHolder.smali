.class public Lcom/android/camera/SensorHolder;
.super Ljava/lang/Object;
.source "SensorHolder.java"


# static fields
.field private static MAIN_CAM_ID:I = 0x0

.field private static NumberOfCameras:I = 0x0

.field private static SECOND_CAM_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SensorHolder"

.field private static THREE_D_CAM_ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    sput v2, Lcom/android/camera/SensorHolder;->NumberOfCameras:I

    sput v2, Lcom/android/camera/SensorHolder;->MAIN_CAM_ID:I

    sput v5, Lcom/android/camera/SensorHolder;->SECOND_CAM_ID:I

    const/4 v2, 0x2

    sput v2, Lcom/android/camera/SensorHolder;->THREE_D_CAM_ID:I

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    sput v2, Lcom/android/camera/SensorHolder;->NumberOfCameras:I

    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    const/4 v1, 0x0

    :goto_0
    sget v2, Lcom/android/camera/SensorHolder;->NumberOfCameras:I

    if-ge v1, v2, :cond_3

    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/android/camera/SensorHolder;->THREE_D_CAM_ID:I

    if-ne v1, v2, :cond_0

    const-string v2, "SensorHolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camera["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is 3D camera"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v2, :cond_1

    sput v1, Lcom/android/camera/SensorHolder;->MAIN_CAM_ID:I

    goto :goto_1

    :cond_1
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v2, v5, :cond_2

    sput v1, Lcom/android/camera/SensorHolder;->SECOND_CAM_ID:I

    goto :goto_1

    :cond_2
    const-string v2, "SensorHolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Undefined camera : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/16 v2, 0x64

    sput v2, Lcom/android/camera/SensorHolder;->THREE_D_CAM_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get3DCamID()I
    .locals 1

    sget v0, Lcom/android/camera/SensorHolder;->THREE_D_CAM_ID:I

    return v0
.end method

.method public static getMainCamID()I
    .locals 1

    sget v0, Lcom/android/camera/SensorHolder;->MAIN_CAM_ID:I

    return v0
.end method

.method public static getSecondCamID()I
    .locals 1

    sget v0, Lcom/android/camera/SensorHolder;->SECOND_CAM_ID:I

    return v0
.end method
