.class public final Lcom/android/camera/component/HdrController;
.super Lcom/android/camera/component/CameraThreadComponent;
.source "HdrController.java"

# interfaces
.implements Lcom/android/camera/ICaptureHandler;


# static fields
.field public static final MSG_ENTER_HDR:I = 0x1

.field public static final MSG_EXIT_HDR:I = 0x2

.field public static final NAME:Ljava/lang/String; = "HDR Controller"


# instance fields
.field private m_CameraUsed:Landroid/hardware/Camera;

.field private m_ColorEffectController:Lcom/android/camera/effect/ColorEffectController;

.field private m_GpuEffectController:Lcom/android/camera/effect/GpuEffectController;

.field private m_HdrUI:Lcom/android/camera/component/HdrUI;

.field private m_IsCaptureModeChanged:Z

.field private m_SceneController:Lcom/android/camera/effect/SceneController;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 2

    const-string v0, "HDR Controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/component/CameraThreadComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/HdrController;)Lcom/android/camera/component/HdrUI;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/HdrController;->m_HdrUI:Lcom/android/camera/component/HdrUI;

    return-object v0
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

    const/4 v0, 0x1

    if-nez p0, :cond_1

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

    const/16 v2, 0xab

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xac

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x7d

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

    const/16 v2, 0x7c

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x94

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private linkToOtherControllers()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/component/HdrController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getComponentManager()Lcom/android/camera/component/ComponentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/HdrController;->m_ColorEffectController:Lcom/android/camera/effect/ColorEffectController;

    if-nez v1, :cond_0

    const-string v1, "Color Effect Controller"

    invoke-virtual {v0, v1}, Lcom/android/camera/component/ComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/ColorEffectController;

    iput-object v1, p0, Lcom/android/camera/component/HdrController;->m_ColorEffectController:Lcom/android/camera/effect/ColorEffectController;

    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/HdrController;->m_GpuEffectController:Lcom/android/camera/effect/GpuEffectController;

    if-nez v1, :cond_1

    const-string v1, "GPU Effect Controller"

    invoke-virtual {v0, v1}, Lcom/android/camera/component/ComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/GpuEffectController;

    iput-object v1, p0, Lcom/android/camera/component/HdrController;->m_GpuEffectController:Lcom/android/camera/effect/GpuEffectController;

    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/HdrController;->m_SceneController:Lcom/android/camera/effect/SceneController;

    if-nez v1, :cond_2

    const-string v1, "Scene Controller"

    invoke-virtual {v0, v1}, Lcom/android/camera/component/ComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/SceneController;

    iput-object v1, p0, Lcom/android/camera/component/HdrController;->m_SceneController:Lcom/android/camera/effect/SceneController;

    :cond_2
    return-void
.end method

.method private onEnterHdr()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/component/HdrController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->isTakingPicture()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p0}, Lcom/android/camera/CameraThread;->setCaptureHandler(Lcom/android/camera/ICaptureHandler;)V

    invoke-direct {p0}, Lcom/android/camera/component/HdrController;->linkToOtherControllers()V

    iget-object v1, p0, Lcom/android/camera/component/HdrController;->m_ColorEffectController:Lcom/android/camera/effect/ColorEffectController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/HdrController;->m_ColorEffectController:Lcom/android/camera/effect/ColorEffectController;

    const-string v2, "none"

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/ColorEffectController;->setColorEffect(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/HdrController;->m_GpuEffectController:Lcom/android/camera/effect/GpuEffectController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/component/HdrController;->m_GpuEffectController:Lcom/android/camera/effect/GpuEffectController;

    invoke-virtual {v1}, Lcom/android/camera/effect/GpuEffectController;->clearEffect()V

    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/HdrController;->m_SceneController:Lcom/android/camera/effect/SceneController;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/component/HdrController;->m_SceneController:Lcom/android/camera/effect/SceneController;

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/SceneController;->setScene(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private onExitHdr()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/camera/component/HdrController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->isTakingPicture()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/camera/component/HdrController;->m_IsCaptureModeChanged:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/component/HdrController;->m_CameraUsed:Landroid/hardware/Camera;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCamera()Landroid/hardware/Camera;

    move-result-object v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/component/HdrController;->m_IsCaptureModeChanged:Z

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "Set capture mode to burst"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "capture-mode"

    const-string v3, "burst"

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    :cond_0
    :goto_0
    invoke-virtual {v1, v4}, Lcom/android/camera/CameraThread;->setCaptureHandler(Lcom/android/camera/ICaptureHandler;)V

    :cond_1
    iput-object v4, p0, Lcom/android/camera/component/HdrController;->m_CameraUsed:Landroid/hardware/Camera;

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "Cannot set capture mode to burst because there is no camera controller"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/component/CameraThreadComponent;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/component/HdrController;->onEnterHdr()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/component/HdrController;->onExitHdr()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method link(Lcom/android/camera/component/HdrUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/HdrController;->m_HdrUI:Lcom/android/camera/component/HdrUI;

    return-void
.end method

.method public takePicture(Lcom/android/camera/CameraThread;Landroid/hardware/Camera;)V
    .locals 5

    sget-object v1, Lcom/android/camera/TIME;->ShutterCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v1}, Lcom/android/camera/TIME$Value;->Start()V

    iget-boolean v1, p0, Lcom/android/camera/component/HdrController;->m_IsCaptureModeChanged:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/HdrController;->m_CameraUsed:Landroid/hardware/Camera;

    if-eq v1, p2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Set capture mode to HDR"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    const-string v1, "capture-mode"

    const-string v2, "hdr"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/component/HdrController;->m_IsCaptureModeChanged:Z

    :cond_1
    iput-object p2, p0, Lcom/android/camera/component/HdrController;->m_CameraUsed:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Take picture"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/camera/component/HdrController$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/component/HdrController$1;-><init>(Lcom/android/camera/component/HdrController;Lcom/android/camera/CameraThread;)V

    new-instance v2, Lcom/android/camera/component/HdrController$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/HdrController$2;-><init>(Lcom/android/camera/component/HdrController;)V

    new-instance v3, Lcom/android/camera/component/HdrController$3;

    invoke-direct {v3, p0, p1}, Lcom/android/camera/component/HdrController$3;-><init>(Lcom/android/camera/component/HdrController;Lcom/android/camera/CameraThread;)V

    new-instance v4, Lcom/android/camera/component/HdrController$4;

    invoke-direct {v4, p0, p1}, Lcom/android/camera/component/HdrController$4;-><init>(Lcom/android/camera/component/HdrController;Lcom/android/camera/CameraThread;)V

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    return-void
.end method
