.class public final Lcom/android/camera/component/HwCameraSwitchButton;
.super Lcom/android/camera/component/HwCameraSwitchButtonBase;
.source "HwCameraSwitchButton.java"


# static fields
.field private static final MSG_UPDATE_MODE:I = 0x1

.field public static final STATE_CAMCORDER:I = 0x0

.field public static final STATE_CAMERA:I = 0x1

.field public static final STATE_UNINIAILIZED:I = -0x2

.field public static final STATE_UNKNOWN:I = -0x1


# instance fields
.field private m_State:I


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v2, "Hardware Camera-Switch Button Controller"

    invoke-direct {p0, v2, v5, p1, v4}, Lcom/android/camera/component/HwCameraSwitchButtonBase;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    const/4 v2, -0x2

    iput v2, p0, Lcom/android/camera/component/HwCameraSwitchButton;->m_State:I

    invoke-virtual {p0}, Lcom/android/camera/component/HwCameraSwitchButton;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/HwCameraSwitchButton;->getButtonState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v1

    const-string v2, "CameraActivity.Resuming"

    new-instance v3, Lcom/android/camera/component/HwCameraSwitchButton$1;

    invoke-direct {v3, p0}, Lcom/android/camera/component/HwCameraSwitchButton$1;-><init>(Lcom/android/camera/component/HwCameraSwitchButton;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v2, "CameraActivity.Pausing"

    new-instance v3, Lcom/android/camera/component/HwCameraSwitchButton$2;

    invoke-direct {v3, p0}, Lcom/android/camera/component/HwCameraSwitchButton$2;-><init>(Lcom/android/camera/component/HwCameraSwitchButton;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v2, "CameraActivity.PreviewStarted"

    new-instance v3, Lcom/android/camera/component/HwCameraSwitchButton$3;

    invoke-direct {v3, p0}, Lcom/android/camera/component/HwCameraSwitchButton$3;-><init>(Lcom/android/camera/component/HwCameraSwitchButton;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v2, "CaptureUI.Open"

    new-instance v3, Lcom/android/camera/component/HwCameraSwitchButton$4;

    invoke-direct {v3, p0}, Lcom/android/camera/component/HwCameraSwitchButton$4;-><init>(Lcom/android/camera/component/HwCameraSwitchButton;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "Initialize mode to CAMERA_MODE"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/android/camera/CameraThread;->setMode(I)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "Initialize mode to VIDEO_MODE"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/android/camera/CameraThread;->setMode(I)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "Unable to initialize mode"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/camera/component/HwCameraSwitchButton;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/component/HwCameraSwitchButton;->m_State:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/component/HwCameraSwitchButton;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/component/HwCameraSwitchButton;->m_State:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/component/HwCameraSwitchButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/HwCameraSwitchButton;->updateMode()V

    return-void
.end method

.method public static hasButton()Z
    .locals 2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x88

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/android/camera/component/HwCameraSwitchButton;->hasButton()Z

    move-result v0

    goto :goto_0
.end method

.method private updateMode()V
    .locals 10

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/camera/component/HwCameraSwitchButton;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/HTCCamera;->isCaptureUIOpen()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Capture UI is closed, cancel switching mode"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/camera/component/HwCameraSwitchButton;->m_State:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to switch to undefined mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/component/HwCameraSwitchButton;->m_State:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {v8, v3}, Lcom/android/camera/HTCCamera;->switchMode(I)Z

    move-result v9

    :goto_1
    if-nez v9, :cond_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Fail to switch camera mode"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x64

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    move v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/component/HwCameraSwitchButton;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;IZ)Z

    goto :goto_0

    :pswitch_1
    invoke-virtual {v8, v2}, Lcom/android/camera/HTCCamera;->switchMode(I)Z

    move-result v9

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getButtonState()I
    .locals 7

    const/4 v3, -0x1

    iget v4, p0, Lcom/android/camera/component/HwCameraSwitchButton;->m_State:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/HwCameraSwitchButton;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/component/HwCameraSwitchButton;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/component/HwCameraSwitchButton;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "htc_2d_3d_mode"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    iget-object v4, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Undefined button state : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x1

    iput v4, p0, Lcom/android/camera/component/HwCameraSwitchButton;->m_State:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget v3, p0, Lcom/android/camera/component/HwCameraSwitchButton;->m_State:I

    :goto_1
    return v3

    :pswitch_0
    :try_start_1
    iput v2, p0, Lcom/android/camera/component/HwCameraSwitchButton;->m_State:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v4, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v5, "Cannot get hardware camera switch button state"

    invoke-static {v4, v5, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    iput v3, p0, Lcom/android/camera/component/HwCameraSwitchButton;->m_State:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/component/HwCameraSwitchButtonBase;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/component/HwCameraSwitchButton;->updateMode()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onButtonStateChanged(Landroid/content/Intent;Landroid/view/KeyEvent;)V
    .locals 9

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Undefined button state : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, -0x1

    :pswitch_0
    iput v8, p0, Lcom/android/camera/component/HwCameraSwitchButton;->m_State:I

    const/4 v5, 0x0

    const/16 v6, 0x12c

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    move v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/component/HwCameraSwitchButton;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;IZ)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
