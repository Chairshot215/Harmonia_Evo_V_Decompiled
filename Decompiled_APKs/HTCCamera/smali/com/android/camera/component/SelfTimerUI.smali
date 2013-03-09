.class public Lcom/android/camera/component/SelfTimerUI;
.super Lcom/android/camera/component/UIComponent;
.source "SelfTimerUI.java"


# instance fields
.field private m_TimerBackground:Landroid/view/View;

.field private m_TimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

.field private m_TimerText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3

    const-string v0, "Self Timer"

    const/4 v1, 0x1

    const v2, 0x7f080051

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/component/SelfTimerUI;->autoInflateView(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/SelfTimerUI;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/SelfTimerUI;->m_TimerBackground:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/SelfTimerUI;)Lcom/android/camera/rotate/RotateRelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/SelfTimerUI;->m_TimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/component/SelfTimerUI;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/SelfTimerUI;->m_TimerText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/SelfTimerUI;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/SelfTimerUI;->initializeUI()V

    return-void
.end method

.method private initializeUI()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/SelfTimerUI;->m_TimerBackground:Landroid/view/View;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/SelfTimerUI;->getBaseLayout()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080193

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/SelfTimerUI;->m_TimerBackground:Landroid/view/View;

    iget-object v0, p0, Lcom/android/camera/component/SelfTimerUI;->m_TimerBackground:Landroid/view/View;

    const v1, 0x7f080194

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/rotate/RotateRelativeLayout;

    iput-object v0, p0, Lcom/android/camera/component/SelfTimerUI;->m_TimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    iget-object v0, p0, Lcom/android/camera/component/SelfTimerUI;->m_TimerContainer:Lcom/android/camera/rotate/RotateRelativeLayout;

    const v1, 0x7f080195

    invoke-virtual {v0, v1}, Lcom/android/camera/rotate/RotateRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/component/SelfTimerUI;->m_TimerText:Landroid/widget/TextView;

    goto :goto_0
.end method


# virtual methods
.method protected initializeOverride()V
    .locals 4

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    invoke-virtual {p0}, Lcom/android/camera/component/SelfTimerUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v0

    new-instance v1, Lcom/android/camera/component/SelfTimerUI$1;

    invoke-direct {v1, p0}, Lcom/android/camera/component/SelfTimerUI$1;-><init>(Lcom/android/camera/component/SelfTimerUI;)V

    const-string v2, "CameraActivity.Pausing"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v2, "CameraActivity.RotateChanged"

    new-instance v3, Lcom/android/camera/component/SelfTimerUI$2;

    invoke-direct {v3, p0}, Lcom/android/camera/component/SelfTimerUI$2;-><init>(Lcom/android/camera/component/SelfTimerUI;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v2, "SelfTimer.CountDown"

    new-instance v3, Lcom/android/camera/component/SelfTimerUI$3;

    invoke-direct {v3, p0}, Lcom/android/camera/component/SelfTimerUI$3;-><init>(Lcom/android/camera/component/SelfTimerUI;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v2, "SelfTimer.Started"

    new-instance v3, Lcom/android/camera/component/SelfTimerUI$4;

    invoke-direct {v3, p0}, Lcom/android/camera/component/SelfTimerUI$4;-><init>(Lcom/android/camera/component/SelfTimerUI;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v2, "SelfTimer.Stopped"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    return-void
.end method
