.class public Lcom/android/camera/component/AutoSceneController;
.super Lcom/android/camera/component/CameraThreadComponent;
.source "AutoSceneController.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "AutoScene Controller"


# instance fields
.field private m_AutoSceneUI:Lcom/android/camera/component/AutoSceneUI;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 2

    const-string v0, "AutoScene Controller"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/component/CameraThreadComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/AutoSceneController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/AutoSceneController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/AutoSceneController;->sendLeaveLowLight()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/AutoSceneController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/AutoSceneController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/AutoSceneController;->sendEnterLowLight()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/component/AutoSceneController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/component/AutoSceneController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/AutoSceneController;->sendLeaveMacro()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/component/AutoSceneController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/component/AutoSceneController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/AutoSceneController;->sendEnterMacro()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/component/AutoSceneController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/AutoSceneController;->sendIsAutoScene(Z)V

    return-void
.end method

.method public static final isSupported()Z
    .locals 2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x88

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendEnterLowLight()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/AutoSceneController;->m_AutoSceneUI:Lcom/android/camera/component/AutoSceneUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/AutoSceneController;->m_AutoSceneUI:Lcom/android/camera/component/AutoSceneUI;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/AutoSceneController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    :cond_0
    return-void
.end method

.method private sendEnterMacro()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/AutoSceneController;->m_AutoSceneUI:Lcom/android/camera/component/AutoSceneUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/AutoSceneController;->m_AutoSceneUI:Lcom/android/camera/component/AutoSceneUI;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/AutoSceneController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    :cond_0
    return-void
.end method

.method private sendIsAutoScene(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/AutoSceneController;->m_AutoSceneUI:Lcom/android/camera/component/AutoSceneUI;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/AutoSceneController;->m_AutoSceneUI:Lcom/android/camera/component/AutoSceneUI;

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/AutoSceneController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/AutoSceneController;->m_AutoSceneUI:Lcom/android/camera/component/AutoSceneUI;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/AutoSceneController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    goto :goto_0
.end method

.method private sendLeaveLowLight()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/AutoSceneController;->m_AutoSceneUI:Lcom/android/camera/component/AutoSceneUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/AutoSceneController;->m_AutoSceneUI:Lcom/android/camera/component/AutoSceneUI;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/AutoSceneController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    :cond_0
    return-void
.end method

.method private sendLeaveMacro()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/AutoSceneController;->m_AutoSceneUI:Lcom/android/camera/component/AutoSceneUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/AutoSceneController;->m_AutoSceneUI:Lcom/android/camera/component/AutoSceneUI;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/AutoSceneController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected initializeOverride()V
    .locals 4

    invoke-super {p0}, Lcom/android/camera/component/CameraThreadComponent;->initializeOverride()V

    invoke-virtual {p0}, Lcom/android/camera/component/AutoSceneController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "eventManager == null"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "HTCCallback.LowLightChanged"

    new-instance v3, Lcom/android/camera/component/AutoSceneController$1;

    invoke-direct {v3, p0}, Lcom/android/camera/component/AutoSceneController$1;-><init>(Lcom/android/camera/component/AutoSceneController;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v2, "HTCCallback.MarcoFocusChanged"

    new-instance v3, Lcom/android/camera/component/AutoSceneController$2;

    invoke-direct {v3, p0}, Lcom/android/camera/component/AutoSceneController$2;-><init>(Lcom/android/camera/component/AutoSceneController;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v2, "AutoScene.Enabled"

    new-instance v3, Lcom/android/camera/component/AutoSceneController$3;

    invoke-direct {v3, p0}, Lcom/android/camera/component/AutoSceneController$3;-><init>(Lcom/android/camera/component/AutoSceneController;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    goto :goto_0
.end method

.method link(Lcom/android/camera/component/AutoSceneUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/AutoSceneController;->m_AutoSceneUI:Lcom/android/camera/component/AutoSceneUI;

    return-void
.end method
