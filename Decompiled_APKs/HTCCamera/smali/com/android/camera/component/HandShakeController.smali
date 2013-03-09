.class public Lcom/android/camera/component/HandShakeController;
.super Lcom/android/camera/component/CameraThreadComponent;
.source "HandShakeController.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "Handshake Controller"


# instance fields
.field private m_HandShakeUI:Lcom/android/camera/component/HandShakeUI;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 2

    const-string v0, "Handshake Controller"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/component/CameraThreadComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/HandShakeController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/HandShakeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/HandShakeController;->sendLeaveLowLight()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/HandShakeController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/HandShakeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/HandShakeController;->sendEnterLowLight()V

    return-void
.end method

.method public static final isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private sendEnterLowLight()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/HandShakeController;->m_HandShakeUI:Lcom/android/camera/component/HandShakeUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/HandShakeController;->m_HandShakeUI:Lcom/android/camera/component/HandShakeUI;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/HandShakeController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    :cond_0
    return-void
.end method

.method private sendLeaveLowLight()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/HandShakeController;->m_HandShakeUI:Lcom/android/camera/component/HandShakeUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/HandShakeController;->m_HandShakeUI:Lcom/android/camera/component/HandShakeUI;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/HandShakeController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected initializeOverride()V
    .locals 4

    invoke-super {p0}, Lcom/android/camera/component/CameraThreadComponent;->initializeOverride()V

    invoke-virtual {p0}, Lcom/android/camera/component/HandShakeController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v1

    const-string v2, "HTCCallback.LowLightChanged"

    new-instance v3, Lcom/android/camera/component/HandShakeController$1;

    invoke-direct {v3, p0}, Lcom/android/camera/component/HandShakeController$1;-><init>(Lcom/android/camera/component/HandShakeController;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    return-void
.end method

.method link(Lcom/android/camera/component/HandShakeUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/HandShakeController;->m_HandShakeUI:Lcom/android/camera/component/HandShakeUI;

    return-void
.end method
