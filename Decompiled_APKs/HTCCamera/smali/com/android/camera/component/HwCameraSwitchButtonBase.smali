.class public abstract Lcom/android/camera/component/HwCameraSwitchButtonBase;
.super Lcom/android/camera/component/UIComponent;
.source "HwCameraSwitchButtonBase.java"


# static fields
.field public static final INTENT_ACTION_NAME:Ljava/lang/String; = "com.htc.intent.action.CAM_SWITCH_CHANGE"


# instance fields
.field private mButtonStateReceiver:Landroid/content/BroadcastReceiver;

.field private m_IsReceiverRegistered:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    new-instance v1, Lcom/android/camera/component/HwCameraSwitchButtonBase$1;

    invoke-direct {v1, p0}, Lcom/android/camera/component/HwCameraSwitchButtonBase$1;-><init>(Lcom/android/camera/component/HwCameraSwitchButtonBase;)V

    iput-object v1, p0, Lcom/android/camera/component/HwCameraSwitchButtonBase;->mButtonStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/android/camera/component/HwCameraSwitchButtonBase;->registerReceivers()V

    invoke-virtual {p3}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v0

    const-string v1, "CameraActivity.Resuming"

    new-instance v2, Lcom/android/camera/component/HwCameraSwitchButtonBase$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/HwCameraSwitchButtonBase$2;-><init>(Lcom/android/camera/component/HwCameraSwitchButtonBase;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "CameraActivity.Pausing"

    new-instance v2, Lcom/android/camera/component/HwCameraSwitchButtonBase$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/HwCameraSwitchButtonBase$3;-><init>(Lcom/android/camera/component/HwCameraSwitchButtonBase;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/HwCameraSwitchButtonBase;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/HwCameraSwitchButtonBase;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/component/HwCameraSwitchButtonBase;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/HwCameraSwitchButtonBase;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/component/HwCameraSwitchButtonBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/HwCameraSwitchButtonBase;->registerReceivers()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/component/HwCameraSwitchButtonBase;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/HwCameraSwitchButtonBase;->mButtonStateReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/camera/component/HwCameraSwitchButtonBase;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/component/HwCameraSwitchButtonBase;->m_IsReceiverRegistered:Z

    return p1
.end method

.method private registerReceivers()V
    .locals 3

    iget-boolean v1, p0, Lcom/android/camera/component/HwCameraSwitchButtonBase;->m_IsReceiverRegistered:Z

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.htc.intent.action.CAM_SWITCH_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    invoke-virtual {p0}, Lcom/android/camera/component/HwCameraSwitchButtonBase;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/component/HwCameraSwitchButtonBase;->mButtonStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/HTCCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/component/HwCameraSwitchButtonBase;->m_IsReceiverRegistered:Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected onButtonStateChanged(Landroid/content/Intent;Landroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method
