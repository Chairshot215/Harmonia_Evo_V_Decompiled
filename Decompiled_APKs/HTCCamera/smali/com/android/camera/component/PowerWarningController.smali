.class public Lcom/android/camera/component/PowerWarningController;
.super Lcom/android/camera/component/CameraThreadComponent;
.source "PowerWarningController.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "PowerWarning Controller"


# instance fields
.field private m_PowerWarningUI:Lcom/android/camera/component/PowerWarningUI;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 2

    const-string v0, "PowerWarning Controller"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/component/CameraThreadComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/PowerWarningController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/PowerWarningController;->sendPowerWarning()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/component/PowerWarningController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/PowerWarningController;->sendPowerRecWarning()V

    return-void
.end method

.method public static final isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x95

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x96

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x97

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xdc

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendPowerRecWarning()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/PowerWarningController;->m_PowerWarningUI:Lcom/android/camera/component/PowerWarningUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/PowerWarningController;->m_PowerWarningUI:Lcom/android/camera/component/PowerWarningUI;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/PowerWarningController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    :cond_0
    return-void
.end method

.method private sendPowerWarning()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/PowerWarningController;->m_PowerWarningUI:Lcom/android/camera/component/PowerWarningUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/PowerWarningController;->m_PowerWarningUI:Lcom/android/camera/component/PowerWarningUI;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/PowerWarningController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected initializeOverride()V
    .locals 4

    invoke-super {p0}, Lcom/android/camera/component/CameraThreadComponent;->initializeOverride()V

    invoke-virtual {p0}, Lcom/android/camera/component/PowerWarningController;->getCameraThread()Lcom/android/camera/CameraThread;

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
    const-string v2, "PowerWarning.Received"

    new-instance v3, Lcom/android/camera/component/PowerWarningController$1;

    invoke-direct {v3, p0}, Lcom/android/camera/component/PowerWarningController$1;-><init>(Lcom/android/camera/component/PowerWarningController;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v2, "PowerRecWarning.Received"

    new-instance v3, Lcom/android/camera/component/PowerWarningController$2;

    invoke-direct {v3, p0}, Lcom/android/camera/component/PowerWarningController$2;-><init>(Lcom/android/camera/component/PowerWarningController;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    goto :goto_0
.end method

.method link(Lcom/android/camera/component/PowerWarningUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/PowerWarningController;->m_PowerWarningUI:Lcom/android/camera/component/PowerWarningUI;

    return-void
.end method
