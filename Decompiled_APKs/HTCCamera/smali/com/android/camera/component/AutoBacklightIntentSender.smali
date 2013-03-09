.class public Lcom/android/camera/component/AutoBacklightIntentSender;
.super Lcom/android/camera/component/UIComponent;
.source "AutoBacklightIntentSender.java"


# static fields
.field public static final RESEND_MSG_TIME:I = 0x7530

.field public static final SEND_ENABLE_AUTOBACKLIGHT:I = 0x2711


# instance fields
.field disableHandler:Lcom/android/camera/IEventHandler;

.field enableHandler:Lcom/android/camera/IEventHandler;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3

    const-string v0, "AutoBacklightIntentSender"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    new-instance v0, Lcom/android/camera/component/AutoBacklightIntentSender$1;

    invoke-direct {v0, p0}, Lcom/android/camera/component/AutoBacklightIntentSender$1;-><init>(Lcom/android/camera/component/AutoBacklightIntentSender;)V

    iput-object v0, p0, Lcom/android/camera/component/AutoBacklightIntentSender;->enableHandler:Lcom/android/camera/IEventHandler;

    new-instance v0, Lcom/android/camera/component/AutoBacklightIntentSender$2;

    invoke-direct {v0, p0}, Lcom/android/camera/component/AutoBacklightIntentSender$2;-><init>(Lcom/android/camera/component/AutoBacklightIntentSender;)V

    iput-object v0, p0, Lcom/android/camera/component/AutoBacklightIntentSender;->disableHandler:Lcom/android/camera/IEventHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/AutoBacklightIntentSender;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/AutoBacklightIntentSender;->enableAutoBacklight()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/component/AutoBacklightIntentSender;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/component/AutoBacklightIntentSender;->disableAutoBacklight()V

    return-void
.end method

.method private disableAutoBacklight()V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "disableAutoBacklight()"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x2711

    invoke-virtual {p0, v1}, Lcom/android/camera/component/AutoBacklightIntentSender;->removeMessages(I)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.server.HtcAutoBrightnessCtrl.action.BRIGHTER_ONLY_OFF"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "backlight.delay"

    const/16 v2, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/camera/component/AutoBacklightIntentSender;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private enableAutoBacklight()V
    .locals 4

    const/16 v3, 0x2711

    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "enableAutoBacklight()"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/android/camera/component/AutoBacklightIntentSender;->removeMessages(I)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.server.HtcAutoBrightnessCtrl.action.BRIGHTER_ONLY_ON"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "entering.screen.brightness"

    const/16 v2, 0xff

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "backlight.delay"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/camera/component/AutoBacklightIntentSender;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/HTCCamera;->sendBroadcast(Landroid/content/Intent;)V

    const/16 v1, 0x7530

    invoke-virtual {p0, p0, v3, v1}, Lcom/android/camera/component/AutoBacklightIntentSender;->sendMessage(Lcom/android/camera/component/Component;II)Z

    return-void
.end method

.method private registerListeners()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/component/AutoBacklightIntentSender;->getCameraActivity()Lcom/android/camera/HTCCamera;

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
    const-string v1, "CameraActivity.PreviewStarted"

    iget-object v2, p0, Lcom/android/camera/component/AutoBacklightIntentSender;->enableHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "CameraActivity.Activate"

    iget-object v2, p0, Lcom/android/camera/component/AutoBacklightIntentSender;->enableHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "CameraActivity.Deactivate"

    iget-object v2, p0, Lcom/android/camera/component/AutoBacklightIntentSender;->disableHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    const-string v1, "CameraActivity.Pausing"

    iget-object v2, p0, Lcom/android/camera/component/AutoBacklightIntentSender;->disableHandler:Lcom/android/camera/IEventHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    goto :goto_0
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 0

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->deinitializeOverride()V

    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/component/AutoBacklightIntentSender;->enableAutoBacklight()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 0

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    invoke-direct {p0}, Lcom/android/camera/component/AutoBacklightIntentSender;->registerListeners()V

    return-void
.end method
