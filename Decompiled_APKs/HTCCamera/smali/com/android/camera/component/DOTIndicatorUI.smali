.class public Lcom/android/camera/component/DOTIndicatorUI;
.super Lcom/android/camera/component/UIComponent;
.source "DOTIndicatorUI.java"


# static fields
.field public static final ENTER_BLINK:I = 0x6

.field public static final ENTER_LOW_LIGHT:I = 0x2

.field public static final ENTER_SMILE:I = 0x4

.field public static final LEAVE_BLINK:I = 0x5

.field public static final LEAVE_LOW_LIGHT:I = 0x1

.field public static final LEAVE_SMILE:I = 0x3

.field public static final NAME:Ljava/lang/String; = "DOTIndicator UI"


# instance fields
.field private mHintBlinkLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private mHintShakeLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private mHintSmileLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_DOTIndicatorController:Lcom/android/camera/component/DOTIndicatorController;

.field private m_NeedDetect:Z

.field private m_canShow:Z

.field private m_menuIsOpen:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "DOTIndicator UI"

    const v1, 0x7f08005e

    invoke-direct {p0, v0, v4, p1, v1}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    iput-boolean v3, p0, Lcom/android/camera/component/DOTIndicatorUI;->m_NeedDetect:Z

    iput-boolean v4, p0, Lcom/android/camera/component/DOTIndicatorUI;->m_canShow:Z

    iput-boolean v3, p0, Lcom/android/camera/component/DOTIndicatorUI;->m_menuIsOpen:Z

    iput-object v2, p0, Lcom/android/camera/component/DOTIndicatorUI;->mHintShakeLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/component/DOTIndicatorUI;->mHintBlinkLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v2, p0, Lcom/android/camera/component/DOTIndicatorUI;->mHintSmileLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-void
.end method

.method private HideDisable()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/DOTIndicatorUI;->m_canShow:Z

    invoke-direct {p0}, Lcom/android/camera/component/DOTIndicatorUI;->hideHandshake()V

    invoke-direct {p0}, Lcom/android/camera/component/DOTIndicatorUI;->hideSmile()V

    invoke-direct {p0}, Lcom/android/camera/component/DOTIndicatorUI;->hideBlink()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/DOTIndicatorUI;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/DOTIndicatorUI;->mHintShakeLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/DOTIndicatorUI;ILcom/android/camera/rotate/RotateRelativeLayout;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/component/DOTIndicatorUI;->setIndicatorPosition(ILcom/android/camera/rotate/RotateRelativeLayout;II)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/component/DOTIndicatorUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/DOTIndicatorUI;->checkCanShow()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/component/DOTIndicatorUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/DOTIndicatorUI;->m_menuIsOpen:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/camera/component/DOTIndicatorUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/component/DOTIndicatorUI;->m_menuIsOpen:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/camera/component/DOTIndicatorUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/DOTIndicatorUI;->stopDetection()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/DOTIndicatorUI;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/DOTIndicatorUI;->mHintSmileLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/DOTIndicatorUI;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/DOTIndicatorUI;->mHintBlinkLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/component/DOTIndicatorUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/DOTIndicatorUI;->m_NeedDetect:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/component/DOTIndicatorUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/DOTIndicatorUI;->showHandshake()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/component/DOTIndicatorUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/DOTIndicatorUI;->hideHandshake()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/component/DOTIndicatorUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/DOTIndicatorUI;->hideSmile()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/component/DOTIndicatorUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/DOTIndicatorUI;->hideBlink()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/component/DOTIndicatorUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/DOTIndicatorUI;->HideDisable()V

    return-void
.end method

.method private checkCanShow()V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/camera/component/DOTIndicatorUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/component/DOTIndicatorUI;->m_menuIsOpen:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/component/DOTIndicatorUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v0

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/component/DOTIndicatorUI;->HideDisable()V

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/android/camera/component/DOTIndicatorUI;->m_canShow:Z

    goto :goto_0
.end method

.method private hideBlink()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/component/DOTIndicatorUI;->mHintBlinkLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/DOTIndicatorUI;->mHintBlinkLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/camera/component/DOTIndicatorUI;->showUI(Landroid/view/View;ZZ)V

    :cond_0
    return-void
.end method

.method private hideHandshake()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/component/DOTIndicatorUI;->mHintShakeLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/DOTIndicatorUI;->mHintShakeLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/camera/component/DOTIndicatorUI;->showUI(Landroid/view/View;ZZ)V

    :cond_0
    return-void
.end method

.method private hideSmile()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/component/DOTIndicatorUI;->mHintSmileLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/DOTIndicatorUI;->mHintSmileLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/camera/component/DOTIndicatorUI;->showUI(Landroid/view/View;ZZ)V

    :cond_0
    return-void
.end method

.method private registerListeners()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/component/DOTIndicatorUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

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
    const-string v1, "CameraActivity.RotateChanged"

    new-instance v2, Lcom/android/camera/component/DOTIndicatorUI$1;

    invoke-direct {v2, p0}, Lcom/android/camera/component/DOTIndicatorUI$1;-><init>(Lcom/android/camera/component/DOTIndicatorUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "SensorValue.RotateChanged"

    new-instance v2, Lcom/android/camera/component/DOTIndicatorUI$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/DOTIndicatorUI$2;-><init>(Lcom/android/camera/component/DOTIndicatorUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "CameraActivity.Pausing"

    new-instance v2, Lcom/android/camera/component/DOTIndicatorUI$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/DOTIndicatorUI$3;-><init>(Lcom/android/camera/component/DOTIndicatorUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "ActionScreen.Open"

    new-instance v2, Lcom/android/camera/component/DOTIndicatorUI$4;

    invoke-direct {v2, p0}, Lcom/android/camera/component/DOTIndicatorUI$4;-><init>(Lcom/android/camera/component/DOTIndicatorUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "ActionScreen.Closed"

    new-instance v2, Lcom/android/camera/component/DOTIndicatorUI$5;

    invoke-direct {v2, p0}, Lcom/android/camera/component/DOTIndicatorUI$5;-><init>(Lcom/android/camera/component/DOTIndicatorUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "CameraActivity.PreviewStarted"

    new-instance v2, Lcom/android/camera/component/DOTIndicatorUI$6;

    invoke-direct {v2, p0}, Lcom/android/camera/component/DOTIndicatorUI$6;-><init>(Lcom/android/camera/component/DOTIndicatorUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "Mode.Switched"

    new-instance v2, Lcom/android/camera/component/DOTIndicatorUI$7;

    invoke-direct {v2, p0}, Lcom/android/camera/component/DOTIndicatorUI$7;-><init>(Lcom/android/camera/component/DOTIndicatorUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "CameraActivity.Pausing"

    new-instance v2, Lcom/android/camera/component/DOTIndicatorUI$8;

    invoke-direct {v2, p0}, Lcom/android/camera/component/DOTIndicatorUI$8;-><init>(Lcom/android/camera/component/DOTIndicatorUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "EffectPanel.Opening"

    new-instance v2, Lcom/android/camera/component/DOTIndicatorUI$9;

    invoke-direct {v2, p0}, Lcom/android/camera/component/DOTIndicatorUI$9;-><init>(Lcom/android/camera/component/DOTIndicatorUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "EffectPanel.Closed"

    new-instance v2, Lcom/android/camera/component/DOTIndicatorUI$10;

    invoke-direct {v2, p0}, Lcom/android/camera/component/DOTIndicatorUI$10;-><init>(Lcom/android/camera/component/DOTIndicatorUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "Menu.Opening"

    new-instance v2, Lcom/android/camera/component/DOTIndicatorUI$11;

    invoke-direct {v2, p0}, Lcom/android/camera/component/DOTIndicatorUI$11;-><init>(Lcom/android/camera/component/DOTIndicatorUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "Menu.Closed"

    new-instance v2, Lcom/android/camera/component/DOTIndicatorUI$12;

    invoke-direct {v2, p0}, Lcom/android/camera/component/DOTIndicatorUI$12;-><init>(Lcom/android/camera/component/DOTIndicatorUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "RemainingCounter.Showing"

    new-instance v2, Lcom/android/camera/component/DOTIndicatorUI$13;

    invoke-direct {v2, p0}, Lcom/android/camera/component/DOTIndicatorUI$13;-><init>(Lcom/android/camera/component/DOTIndicatorUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "RemainingCounter.Hidden"

    new-instance v2, Lcom/android/camera/component/DOTIndicatorUI$14;

    invoke-direct {v2, p0}, Lcom/android/camera/component/DOTIndicatorUI$14;-><init>(Lcom/android/camera/component/DOTIndicatorUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "CaptureUI.Closed"

    new-instance v2, Lcom/android/camera/component/DOTIndicatorUI$15;

    invoke-direct {v2, p0}, Lcom/android/camera/component/DOTIndicatorUI$15;-><init>(Lcom/android/camera/component/DOTIndicatorUI;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    goto/16 :goto_0
.end method

.method private setIndicatorPosition(ILcom/android/camera/rotate/RotateRelativeLayout;II)V
    .locals 2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/camera/rotate/RotateRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    :cond_0
    const/16 v1, 0x64

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_0
    invoke-virtual {p2, v0}, Lcom/android/camera/rotate/RotateRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, p1}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    :cond_1
    return-void

    :cond_2
    iput p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/16 v1, 0x1ae

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0
.end method

.method private showBlink()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/camera/component/DOTIndicatorUI;->m_canShow:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/DOTIndicatorUI;->mHintBlinkLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/DOTIndicatorUI;->mHintBlinkLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/component/DOTIndicatorUI;->showUI(Landroid/view/View;ZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/component/DOTIndicatorUI;->hideBlink()V

    goto :goto_0
.end method

.method private showHandshake()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/camera/component/DOTIndicatorUI;->m_canShow:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/DOTIndicatorUI;->mHintShakeLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/DOTIndicatorUI;->mHintShakeLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/component/DOTIndicatorUI;->showUI(Landroid/view/View;ZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/component/DOTIndicatorUI;->hideHandshake()V

    goto :goto_0
.end method

.method private showSmile()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/camera/component/DOTIndicatorUI;->m_canShow:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/DOTIndicatorUI;->mHintSmileLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/DOTIndicatorUI;->mHintSmileLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/component/DOTIndicatorUI;->showUI(Landroid/view/View;ZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/component/DOTIndicatorUI;->hideSmile()V

    goto :goto_0
.end method

.method private startDetection()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/DOTIndicatorUI;->m_NeedDetect:Z

    return-void
.end method

.method private stopDetection()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/DOTIndicatorUI;->m_NeedDetect:Z

    invoke-direct {p0}, Lcom/android/camera/component/DOTIndicatorUI;->hideHandshake()V

    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/component/DOTIndicatorUI;->stopDetection()V

    invoke-direct {p0}, Lcom/android/camera/component/DOTIndicatorUI;->hideHandshake()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/component/DOTIndicatorUI;->startDetection()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/camera/component/DOTIndicatorUI;->hideSmile()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/camera/component/DOTIndicatorUI;->showSmile()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/android/camera/component/DOTIndicatorUI;->hideBlink()V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/android/camera/component/DOTIndicatorUI;->showBlink()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    :goto_0
    iget-object v1, p0, Lcom/android/camera/component/DOTIndicatorUI;->m_DOTIndicatorController:Lcom/android/camera/component/DOTIndicatorController;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/component/DOTIndicatorUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    const-string v2, "DOTIndicator Controller"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraThread;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v1

    check-cast v1, Lcom/android/camera/component/DOTIndicatorController;

    iput-object v1, p0, Lcom/android/camera/component/DOTIndicatorUI;->m_DOTIndicatorController:Lcom/android/camera/component/DOTIndicatorController;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/DOTIndicatorUI;->m_DOTIndicatorController:Lcom/android/camera/component/DOTIndicatorController;

    invoke-virtual {v1, p0}, Lcom/android/camera/component/DOTIndicatorController;->link(Lcom/android/camera/component/DOTIndicatorUI;)V

    invoke-virtual {p0}, Lcom/android/camera/component/DOTIndicatorUI;->getBaseLayout()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080093

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v1, p0, Lcom/android/camera/component/DOTIndicatorUI;->mHintShakeLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v1, 0x7f080092

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v1, p0, Lcom/android/camera/component/DOTIndicatorUI;->mHintBlinkLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v1, 0x7f080094

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v1, p0, Lcom/android/camera/component/DOTIndicatorUI;->mHintSmileLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v1, p0, Lcom/android/camera/component/DOTIndicatorUI;->mHintShakeLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/16 v2, 0x1ae

    const/16 v3, 0x2e4

    invoke-direct {p0, v4, v1, v2, v3}, Lcom/android/camera/component/DOTIndicatorUI;->setIndicatorPosition(ILcom/android/camera/rotate/RotateRelativeLayout;II)V

    iget-object v1, p0, Lcom/android/camera/component/DOTIndicatorUI;->mHintSmileLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/16 v2, 0x186

    const/16 v3, 0x2bc

    invoke-direct {p0, v4, v1, v2, v3}, Lcom/android/camera/component/DOTIndicatorUI;->setIndicatorPosition(ILcom/android/camera/rotate/RotateRelativeLayout;II)V

    iget-object v1, p0, Lcom/android/camera/component/DOTIndicatorUI;->mHintBlinkLayout:Lcom/android/camera/rotate/RotateRelativeLayout;

    const/16 v2, 0x15e

    const/16 v3, 0x294

    invoke-direct {p0, v4, v1, v2, v3}, Lcom/android/camera/component/DOTIndicatorUI;->setIndicatorPosition(ILcom/android/camera/rotate/RotateRelativeLayout;II)V

    invoke-direct {p0}, Lcom/android/camera/component/DOTIndicatorUI;->registerListeners()V

    return-void
.end method
