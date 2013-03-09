.class public Lcom/android/camera/component/PowerWarningUI;
.super Lcom/android/camera/component/UIComponent;
.source "PowerWarningUI.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "PowerWarning UI"

.field public static final POWER_REC_WARNING:I = 0x2

.field public static final POWER_WARNING:I = 0x1


# instance fields
.field private m_CameraThread:Lcom/android/camera/CameraThread;

.field private m_HTCCamera:Lcom/android/camera/HTCCamera;

.field private m_IsLowPower:Z

.field private m_IsShown:Z

.field private m_PowerWarningBase:Landroid/view/View;

.field private m_PowerWarningContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_PowerWarningController:Lcom/android/camera/component/PowerWarningController;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "PowerWarning UI"

    const/4 v1, 0x1

    const v2, 0x7f08006b

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    iput-boolean v3, p0, Lcom/android/camera/component/PowerWarningUI;->m_IsShown:Z

    iput-boolean v3, p0, Lcom/android/camera/component/PowerWarningUI;->m_IsLowPower:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/PowerWarningUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_IsShown:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/PowerWarningUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/PowerWarningUI;->resetPowerWarningSettings()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/PowerWarningUI;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/PowerWarningUI;->updateWarningLayout(Z)V

    return-void
.end method

.method private hideLayout()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_PowerWarningBase:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_PowerWarningBase:Landroid/view/View;

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/camera/component/PowerWarningUI;->showUI(Landroid/view/View;ZZ)V

    iput-boolean v1, p0, Lcom/android/camera/component/PowerWarningUI;->m_IsShown:Z

    :cond_0
    return-void
.end method

.method public static isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/camera/component/PowerWarningController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v0

    return v0
.end method

.method private registerListeners()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/component/PowerWarningUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "eventManager == null"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "Key.Down"

    new-instance v2, Lcom/android/camera/component/PowerWarningUI$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PowerWarningUI$2;-><init>(Lcom/android/camera/component/PowerWarningUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "CameraActivity.PreviewStarted"

    new-instance v2, Lcom/android/camera/component/PowerWarningUI$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PowerWarningUI$3;-><init>(Lcom/android/camera/component/PowerWarningUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "CameraActivity.Pausing"

    new-instance v2, Lcom/android/camera/component/PowerWarningUI$4;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PowerWarningUI$4;-><init>(Lcom/android/camera/component/PowerWarningUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "CameraActivity.Resuming"

    new-instance v2, Lcom/android/camera/component/PowerWarningUI$5;

    invoke-direct {v2, p0}, Lcom/android/camera/component/PowerWarningUI$5;-><init>(Lcom/android/camera/component/PowerWarningUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    goto :goto_0
.end method

.method private resetPowerWarningSettings()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/component/PowerWarningUI;->m_IsLowPower:Z

    iget-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_HTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_HTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->setBlockPowerWarning(Z)V

    iget-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_HTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->setPowerWarning(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_CameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_CameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->setRecPowerWarning(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/component/PowerWarningUI;->hideLayout()V

    return-void
.end method

.method private showLayout()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_PowerWarningBase:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_PowerWarningBase:Landroid/view/View;

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/camera/component/PowerWarningUI;->showUI(Landroid/view/View;ZZ)V

    iget-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_HTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->setBlockCaptureUI(Z)V

    iput-boolean v2, p0, Lcom/android/camera/component/PowerWarningUI;->m_IsShown:Z

    :cond_0
    return-void
.end method

.method private updateWarningLayout(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_HTCCamera:Lcom/android/camera/HTCCamera;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "m_HTCCamera == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_CameraThread:Lcom/android/camera/CameraThread;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "m_CameraThread == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_CameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_IsLowPower:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_IsShown:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_HTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0, p1}, Lcom/android/camera/HTCCamera;->powerWarningOn(Z)V

    invoke-direct {p0}, Lcom/android/camera/component/PowerWarningUI;->showLayout()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/camera/component/PowerWarningUI;->hideLayout()V

    goto :goto_0
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 2

    const/4 v1, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_HTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_HTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isBlockPowerWarning()Z

    move-result v0

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/android/camera/component/PowerWarningUI;->m_IsLowPower:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/component/PowerWarningUI;->updateWarningLayout(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "HTCCamera.isBlockPowerWarning = true"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_HTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/camera/component/PowerWarningUI;->m_IsLowPower:Z

    invoke-direct {p0, v1}, Lcom/android/camera/component/PowerWarningUI;->updateWarningLayout(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    :goto_0
    iget-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_PowerWarningController:Lcom/android/camera/component/PowerWarningController;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/PowerWarningUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    const-string v1, "PowerWarning Controller"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    check-cast v0, Lcom/android/camera/component/PowerWarningController;

    iput-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_PowerWarningController:Lcom/android/camera/component/PowerWarningController;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_PowerWarningController:Lcom/android/camera/component/PowerWarningController;

    invoke-virtual {v0, p0}, Lcom/android/camera/component/PowerWarningController;->link(Lcom/android/camera/component/PowerWarningUI;)V

    invoke-virtual {p0}, Lcom/android/camera/component/PowerWarningUI;->getBaseLayout()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_PowerWarningBase:Landroid/view/View;

    iget-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_PowerWarningBase:Landroid/view/View;

    const v1, 0x7f080158

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_PowerWarningContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_PowerWarningContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_PowerWarningContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    new-instance v1, Lcom/android/camera/component/PowerWarningUI$1;

    invoke-direct {v1, p0}, Lcom/android/camera/component/PowerWarningUI$1;-><init>(Lcom/android/camera/component/PowerWarningUI;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/android/camera/component/PowerWarningUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_HTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {p0}, Lcom/android/camera/component/PowerWarningUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/PowerWarningUI;->m_CameraThread:Lcom/android/camera/CameraThread;

    invoke-direct {p0}, Lcom/android/camera/component/PowerWarningUI;->registerListeners()V

    return-void
.end method
