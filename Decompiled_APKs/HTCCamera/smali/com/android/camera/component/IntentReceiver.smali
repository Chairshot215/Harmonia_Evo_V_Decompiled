.class public abstract Lcom/android/camera/component/IntentReceiver;
.super Lcom/android/camera/component/UIComponent;
.source "IntentReceiver.java"


# static fields
.field protected static final TIME_MANUAL:I = 0x0

.field protected static final TIME_PAUSING:I = 0x3

.field protected static final TIME_PREVIEW_STARTED:I = 0x2

.field protected static final TIME_RESUMING:I = 0x1


# instance fields
.field private final m_IntentReceiver:Landroid/content/BroadcastReceiver;

.field private m_IsReceiverRegistered:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;II)V
    .locals 5

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    new-instance v2, Lcom/android/camera/component/IntentReceiver$1;

    invoke-direct {v2, p0}, Lcom/android/camera/component/IntentReceiver$1;-><init>(Lcom/android/camera/component/IntentReceiver;)V

    iput-object v2, p0, Lcom/android/camera/component/IntentReceiver;->m_IntentReceiver:Landroid/content/BroadcastReceiver;

    if-ne p4, p5, :cond_0

    const-string v2, "timeToRegister equals to timeToUnregister"

    invoke-static {p1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "timeToRegister equals to timeToUnregister"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p3}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v0

    packed-switch p4, :pswitch_data_0

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Undefined time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Undefined time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    const-string v1, "CameraActivity.Resuming"

    :goto_0
    if-eqz v1, :cond_1

    new-instance v2, Lcom/android/camera/component/IntentReceiver$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/IntentReceiver$2;-><init>(Lcom/android/camera/component/IntentReceiver;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    :cond_1
    packed-switch p5, :pswitch_data_1

    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Undefined time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Undefined time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_1
    const-string v1, "CameraActivity.PreviewStarted"

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "Intent receiver will be registered when activity is pausing"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "CameraActivity.Pausing"

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x0

    goto :goto_0

    :pswitch_4
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "Intent receiver will be unregistered when activity is resuming"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "CameraActivity.Resuming"

    :goto_1
    if-eqz v1, :cond_2

    new-instance v2, Lcom/android/camera/component/IntentReceiver$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/IntentReceiver$3;-><init>(Lcom/android/camera/component/IntentReceiver;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/EventManager;->addEventHandler(Ljava/lang/String;Lcom/android/camera/IEventHandler;)V

    :cond_2
    return-void

    :pswitch_5
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "Intent receiver will be unregistered when preview is started"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "CameraActivity.PreviewStarted"

    goto :goto_1

    :pswitch_6
    const-string v1, "CameraActivity.Pausing"

    goto :goto_1

    :pswitch_7
    const/4 v1, 0x0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/camera/component/IntentReceiver;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/IntentReceiver;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/component/IntentReceiver;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/IntentReceiver;->m_IsReceiverRegistered:Z

    return v0
.end method


# virtual methods
.method public final isReceiverRegistered()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/IntentReceiver;->m_IsReceiverRegistered:Z

    return v0
.end method

.method protected onIntentReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected abstract prepareIntentFilter(Landroid/content/IntentFilter;)V
.end method

.method protected final registerReceiver()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/camera/component/IntentReceiver;->threadAccessCheck()V

    iget-boolean v1, p0, Lcom/android/camera/component/IntentReceiver;->m_IsReceiverRegistered:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/camera/component/IntentReceiver;->prepareIntentFilter(Landroid/content/IntentFilter;)V

    invoke-virtual {p0}, Lcom/android/camera/component/IntentReceiver;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/component/IntentReceiver;->m_IntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/HTCCamera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/component/IntentReceiver;->m_IsReceiverRegistered:Z

    goto :goto_0
.end method

.method protected final unregisterReceiver()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/component/IntentReceiver;->threadAccessCheck()V

    iget-boolean v0, p0, Lcom/android/camera/component/IntentReceiver;->m_IsReceiverRegistered:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/IntentReceiver;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/IntentReceiver;->m_IntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/IntentReceiver;->m_IsReceiverRegistered:Z

    goto :goto_0
.end method
