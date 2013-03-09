.class public Lcom/android/camera/effect/ColorEffectController;
.super Lcom/android/camera/component/CameraThreadComponent;
.source "ColorEffectController.java"


# static fields
.field public static final MSG_SET_COLOR_EFFECT:I = 0x1

.field public static final NAME:Ljava/lang/String; = "Color Effect Controller"


# instance fields
.field private final m_CloseCameraEventHandler:Lcom/android/camera/IEventHandler;

.field private m_CurrentColorEffect:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 2

    const-string v0, "Color Effect Controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/component/CameraThreadComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;)V

    const-string v0, "none"

    iput-object v0, p0, Lcom/android/camera/effect/ColorEffectController;->m_CurrentColorEffect:Ljava/lang/String;

    new-instance v0, Lcom/android/camera/effect/ColorEffectController$1;

    invoke-direct {v0, p0}, Lcom/android/camera/effect/ColorEffectController$1;-><init>(Lcom/android/camera/effect/ColorEffectController;)V

    iput-object v0, p0, Lcom/android/camera/effect/ColorEffectController;->m_CloseCameraEventHandler:Lcom/android/camera/IEventHandler;

    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/effect/ColorEffectController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/ColorEffectController;->m_CurrentColorEffect:Ljava/lang/String;

    return-object p1
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
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/ColorEffectController;->setColorEffect(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 3

    invoke-super {p0}, Lcom/android/camera/component/CameraThreadComponent;->initializeOverride()V

    invoke-virtual {p0}, Lcom/android/camera/effect/ColorEffectController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v0

    const-string v1, "Request.CloseCamera"

    iget-object v2, p0, Lcom/android/camera/effect/ColorEffectController;->m_CloseCameraEventHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    return-void
.end method

.method public final setColorEffect(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/effect/ColorEffectController;->threadAccessCheck()V

    if-nez p1, :cond_0

    const-string p1, "none"

    :cond_0
    iget-object v1, p0, Lcom/android/camera/effect/ColorEffectController;->m_CurrentColorEffect:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/effect/ColorEffectController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "There is no camera controller"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Lcom/android/camera/CameraController;->setColorEffect(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    iput-object p1, p0, Lcom/android/camera/effect/ColorEffectController;->m_CurrentColorEffect:Ljava/lang/String;

    goto :goto_0
.end method
