.class public final Lcom/android/camera/component/BurstController;
.super Lcom/android/camera/component/CameraThreadComponent;
.source "BurstController.java"

# interfaces
.implements Lcom/android/camera/ICaptureHandler;


# static fields
.field public static final MSG_ENTER_BURST:I = 0x1

.field public static final MSG_EXIT_BURST:I = 0x2

.field public static final NAME:Ljava/lang/String; = "Burst Controller"

.field private static final m_BurstDCFInfo:Lcom/android/camera/DCFInfo;


# instance fields
.field private m_BurstUI:Lcom/android/camera/component/BurstUI;

.field private m_CaptureCount:I

.field private m_ColorEffectController:Lcom/android/camera/effect/ColorEffectController;

.field private m_CurrentCaptureIndex:I

.field private m_CurrentStoredIndex:I

.field private final m_DeletionEventHandler:Lcom/android/camera/IEventHandler;

.field private m_GpuEffectController:Lcom/android/camera/effect/GpuEffectController;

.field private m_InstanceID:J

.field private m_IsBurstModeEntered:Z

.field private m_SceneController:Lcom/android/camera/effect/SceneController;

.field private final m_StorePictureCallback:Lcom/android/camera/CameraThread$StorePictureCallback;

.field private m_StoredPictureUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private m_postviewData:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/camera/DCFInfo;

    const-string v1, "BURST"

    const-string v2, "IMAG"

    const-string v3, "burst_dir_counter"

    const-string v4, "burst_file_counter"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/DCFInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/component/BurstController;->m_BurstDCFInfo:Lcom/android/camera/DCFInfo;

    sget-object v0, Lcom/android/camera/component/BurstController;->m_BurstDCFInfo:Lcom/android/camera/DCFInfo;

    invoke-static {v0}, Lcom/android/camera/DCFRuler;->registerDCFInfo(Lcom/android/camera/DCFInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "Burst Controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/component/CameraThreadComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;)V

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/component/BurstController;->m_CaptureCount:I

    iput v2, p0, Lcom/android/camera/component/BurstController;->m_CurrentCaptureIndex:I

    iput v2, p0, Lcom/android/camera/component/BurstController;->m_CurrentStoredIndex:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/BurstController;->m_StoredPictureUris:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/camera/component/BurstController$1;

    invoke-direct {v0, p0}, Lcom/android/camera/component/BurstController$1;-><init>(Lcom/android/camera/component/BurstController;)V

    iput-object v0, p0, Lcom/android/camera/component/BurstController;->m_StorePictureCallback:Lcom/android/camera/CameraThread$StorePictureCallback;

    new-instance v0, Lcom/android/camera/component/BurstController$2;

    invoke-direct {v0, p0}, Lcom/android/camera/component/BurstController$2;-><init>(Lcom/android/camera/component/BurstController;)V

    iput-object v0, p0, Lcom/android/camera/component/BurstController;->m_DeletionEventHandler:Lcom/android/camera/IEventHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/BurstController;)Lcom/android/camera/component/BurstUI;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/BurstController;->m_BurstUI:Lcom/android/camera/component/BurstUI;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/BurstController;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/component/BurstController;->m_CurrentStoredIndex:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/camera/component/BurstController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/camera/component/BurstController;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/component/BurstController;->m_CurrentStoredIndex:I

    return p1
.end method

.method static synthetic access$104(Lcom/android/camera/component/BurstController;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/component/BurstController;->m_CurrentStoredIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/component/BurstController;->m_CurrentStoredIndex:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/camera/component/BurstController;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/component/BurstController;->m_CurrentCaptureIndex:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/camera/component/BurstController;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/component/BurstController;->m_CurrentCaptureIndex:I

    return p1
.end method

.method static synthetic access$1104(Lcom/android/camera/component/BurstController;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/component/BurstController;->m_CurrentCaptureIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/component/BurstController;->m_CurrentCaptureIndex:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/camera/component/BurstController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/component/BurstController;)[[B
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/BurstController;->m_postviewData:[[B

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/camera/component/BurstController;[[B)[[B
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/BurstController;->m_postviewData:[[B

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/camera/component/BurstController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/component/BurstController;ILandroid/hardware/Camera;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/BurstController;->createPostviewImage(ILandroid/hardware/Camera;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/component/BurstController;)Lcom/android/camera/CameraThread$StorePictureCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/BurstController;->m_StorePictureCallback:Lcom/android/camera/CameraThread$StorePictureCallback;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/component/BurstController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/component/BurstController;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/component/BurstController;->m_CaptureCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/BurstController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/BurstController;->m_IsBurstModeEntered:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/component/BurstController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/component/BurstController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/BurstController;->m_StoredPictureUris:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/component/BurstController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/component/BurstController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800()Lcom/android/camera/DCFInfo;
    .locals 1

    sget-object v0, Lcom/android/camera/component/BurstController;->m_BurstDCFInfo:Lcom/android/camera/DCFInfo;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/component/BurstController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private createPostviewImage(ILandroid/hardware/Camera;)V
    .locals 14

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "createPostviewImage start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v11

    if-nez v11, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "postview-size"

    invoke-virtual {v11, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/16 v0, 0x78

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    const/4 v0, 0x0

    invoke-virtual {v12, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v0, v9, 0x1

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sget-object v0, Lcom/scalado/base/Image$Config;->YVU_420SP:Lcom/scalado/base/Image$Config;

    iget-object v1, p0, Lcom/android/camera/component/BurstController;->m_postviewData:[[B

    aget-object v1, v1, p1

    invoke-static {v10, v8, v0, v1}, Lcom/android/camera/ImageUtility;->createScaladoImageFromRawData(IILcom/scalado/base/Image$Config;[B)Lcom/scalado/base/Image;

    move-result-object v7

    iget-object v0, p0, Lcom/android/camera/component/BurstController;->m_postviewData:[[B

    const/4 v1, 0x0

    aput-object v1, v0, p1

    iget-object v0, p0, Lcom/android/camera/component/BurstController;->m_BurstUI:Lcom/android/camera/component/BurstUI;

    invoke-virtual {v0}, Lcom/android/camera/component/BurstUI;->getBurstReviewWidth()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3ff3333333333333L

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iget-object v1, p0, Lcom/android/camera/component/BurstController;->m_BurstUI:Lcom/android/camera/component/BurstUI;

    invoke-virtual {v1}, Lcom/android/camera/component/BurstUI;->getBurstReviewHeight()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3ff3333333333333L

    mul-double/2addr v1, v3

    double-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v0, Lcom/scalado/caps/Session;

    new-instance v1, Lcom/scalado/caps/codec/decoder/ImageDecoder;

    invoke-direct {v1, v7}, Lcom/scalado/caps/codec/decoder/ImageDecoder;-><init>(Lcom/scalado/base/Image;)V

    invoke-direct {v0, v1}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    const/16 v1, 0x5a

    invoke-static {v0, v5, v1}, Lcom/android/camera/ImageUtility;->convertToBitmap(Lcom/scalado/caps/Session;Landroid/graphics/Bitmap;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lcom/android/camera/component/BurstController;->m_BurstUI:Lcom/android/camera/component/BurstUI;

    const/4 v2, 0x2

    const/4 v4, 0x0

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/BurstController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    iget v0, p0, Lcom/android/camera/component/BurstController;->m_CaptureCount:I

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/BurstController;->m_BurstUI:Lcom/android/camera/component/BurstUI;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/BurstController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "createPostviewImage end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v6

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception occurred while creating thumbnail["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static isCameraTypeSupported(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x95

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x96

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x97

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xdc

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xa9

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xaa

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x61

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eqz v1, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xe0

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x94

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private linkToOtherControllers()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/component/BurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getComponentManager()Lcom/android/camera/component/ComponentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/BurstController;->m_ColorEffectController:Lcom/android/camera/effect/ColorEffectController;

    if-nez v1, :cond_0

    const-string v1, "Color Effect Controller"

    invoke-virtual {v0, v1}, Lcom/android/camera/component/ComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/ColorEffectController;

    iput-object v1, p0, Lcom/android/camera/component/BurstController;->m_ColorEffectController:Lcom/android/camera/effect/ColorEffectController;

    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/BurstController;->m_GpuEffectController:Lcom/android/camera/effect/GpuEffectController;

    if-nez v1, :cond_1

    const-string v1, "GPU Effect Controller"

    invoke-virtual {v0, v1}, Lcom/android/camera/component/ComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/GpuEffectController;

    iput-object v1, p0, Lcom/android/camera/component/BurstController;->m_GpuEffectController:Lcom/android/camera/effect/GpuEffectController;

    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/BurstController;->m_SceneController:Lcom/android/camera/effect/SceneController;

    if-nez v1, :cond_2

    const-string v1, "Scene Controller"

    invoke-virtual {v0, v1}, Lcom/android/camera/component/ComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/SceneController;

    iput-object v1, p0, Lcom/android/camera/component/BurstController;->m_SceneController:Lcom/android/camera/effect/SceneController;

    :cond_2
    return-void
.end method

.method private onEnterBurstMode(J)V
    .locals 3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/component/BurstController;->m_IsBurstModeEntered:Z

    iput-wide p1, p0, Lcom/android/camera/component/BurstController;->m_InstanceID:J

    invoke-virtual {p0}, Lcom/android/camera/component/BurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->isTakingPicture()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraThread;->setCaptureHandler(Lcom/android/camera/ICaptureHandler;)V

    invoke-direct {p0}, Lcom/android/camera/component/BurstController;->linkToOtherControllers()V

    iget-object v1, p0, Lcom/android/camera/component/BurstController;->m_ColorEffectController:Lcom/android/camera/effect/ColorEffectController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/BurstController;->m_ColorEffectController:Lcom/android/camera/effect/ColorEffectController;

    const-string v2, "none"

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/ColorEffectController;->setColorEffect(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/BurstController;->m_GpuEffectController:Lcom/android/camera/effect/GpuEffectController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/component/BurstController;->m_GpuEffectController:Lcom/android/camera/effect/GpuEffectController;

    invoke-virtual {v1}, Lcom/android/camera/effect/GpuEffectController;->clearEffect()V

    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/BurstController;->m_SceneController:Lcom/android/camera/effect/SceneController;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/component/BurstController;->m_SceneController:Lcom/android/camera/effect/SceneController;

    const-string v2, "action"

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/SceneController;->setScene(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private onExitBurstMode()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/camera/component/BurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->isTakingPicture()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraThread;->setCaptureHandler(Lcom/android/camera/ICaptureHandler;)V

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "picture-count"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/component/BurstController;->linkToOtherControllers()V

    iget-object v2, p0, Lcom/android/camera/component/BurstController;->m_SceneController:Lcom/android/camera/effect/SceneController;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/component/BurstController;->m_SceneController:Lcom/android/camera/effect/SceneController;

    const-string v3, "auto"

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/SceneController;->setScene(Ljava/lang/String;)V

    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/component/BurstController;->m_IsBurstModeEntered:Z

    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/component/CameraThreadComponent;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/component/BurstController;->onEnterBurstMode(J)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/component/BurstController;->onExitBurstMode()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 3

    invoke-super {p0}, Lcom/android/camera/component/CameraThreadComponent;->initializeOverride()V

    invoke-virtual {p0}, Lcom/android/camera/component/BurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v0

    const-string v1, "Request.DeleteLatestMedia"

    iget-object v2, p0, Lcom/android/camera/component/BurstController;->m_DeletionEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    return-void
.end method

.method link(Lcom/android/camera/component/BurstUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/BurstController;->m_BurstUI:Lcom/android/camera/component/BurstUI;

    return-void
.end method

.method public takePicture(Lcom/android/camera/CameraThread;Landroid/hardware/Camera;)V
    .locals 9

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v7

    const-string v0, "capture-mode"

    const-string v1, "burst"

    invoke-virtual {v7, v0, v1}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "picture-count"

    iget v1, p0, Lcom/android/camera/component/BurstController;->m_CaptureCount:I

    invoke-virtual {v7, v0, v1}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    invoke-virtual {v7}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    iput v3, p0, Lcom/android/camera/component/BurstController;->m_CurrentCaptureIndex:I

    iget-object v0, p0, Lcom/android/camera/component/BurstController;->m_BurstUI:Lcom/android/camera/component/BurstUI;

    invoke-virtual {v0}, Lcom/android/camera/component/BurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v6

    const v0, 0x7f060001

    invoke-virtual {v6, v0}, Lcom/android/camera/HTCCamera;->createMediaPlayer(I)Landroid/media/MediaPlayer;

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/camera/HTCCamera;->requestAudioFocus()V

    iget-object v0, p0, Lcom/android/camera/component/BurstController;->m_StoredPictureUris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/camera/component/BurstController;->m_BurstUI:Lcom/android/camera/component/BurstUI;

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/android/camera/component/BurstController;->m_InstanceID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/BurstController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    new-instance v0, Lcom/android/camera/component/BurstController$3;

    invoke-direct {v0, p0}, Lcom/android/camera/component/BurstController$3;-><init>(Lcom/android/camera/component/BurstController;)V

    new-instance v1, Lcom/android/camera/component/BurstController$4;

    invoke-direct {v1, p0, p1, v6, v8}, Lcom/android/camera/component/BurstController$4;-><init>(Lcom/android/camera/component/BurstController;Lcom/android/camera/CameraThread;Lcom/android/camera/HTCCamera;Landroid/media/MediaPlayer;)V

    new-instance v2, Lcom/android/camera/component/BurstController$5;

    invoke-direct {v2, p0}, Lcom/android/camera/component/BurstController$5;-><init>(Lcom/android/camera/component/BurstController;)V

    new-instance v3, Lcom/android/camera/component/BurstController$6;

    invoke-direct {v3, p0, p1, v7}, Lcom/android/camera/component/BurstController$6;-><init>(Lcom/android/camera/component/BurstController;Lcom/android/camera/CameraThread;Lcom/android/camera/CameraController;)V

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    return-void
.end method

.method public updateThumbItemsStatus(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/component/BurstController;->m_StoredPictureUris:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/camera/component/BurstController;->m_StoredPictureUris:Ljava/util/ArrayList;

    goto :goto_0
.end method
