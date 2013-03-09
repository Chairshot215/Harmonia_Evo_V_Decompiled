.class Lcom/htc/lockscreen/app/LSState$MyUIHandler;
.super Landroid/os/Handler;
.source "LSState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/app/LSState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyUIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/app/LSState;


# direct methods
.method private constructor <init>(Lcom/htc/lockscreen/app/LSState;)V
    .locals 0
    .parameter

    .prologue
    .line 486
    iput-object p1, p0, Lcom/htc/lockscreen/app/LSState$MyUIHandler;->this$0:Lcom/htc/lockscreen/app/LSState;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/lockscreen/app/LSState;Lcom/htc/lockscreen/app/LSState$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 486
    invoke-direct {p0, p1}, Lcom/htc/lockscreen/app/LSState$MyUIHandler;-><init>(Lcom/htc/lockscreen/app/LSState;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    .line 488
    iget v5, p1, Landroid/os/Message;->what:I

    .line 489
    .local v5, what:I
    packed-switch v5, :pswitch_data_0

    .line 529
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 491
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 492
    .local v0, bundle:Landroid/os/Bundle;
    const-string v6, "status"

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 494
    .local v4, status:I
    const-string v6, "level"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 495
    .local v2, level:I
    const-string v6, "plugged"

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 496
    .local v3, plugged:I
    iget-object v6, p0, Lcom/htc/lockscreen/app/LSState$MyUIHandler;->this$0:Lcom/htc/lockscreen/app/LSState;

    #calls: Lcom/htc/lockscreen/app/LSState;->handleBatteryUpdate(III)V
    invoke-static {v6, v4, v3, v2}, Lcom/htc/lockscreen/app/LSState;->access$2000(Lcom/htc/lockscreen/app/LSState;III)V

    goto :goto_0

    .line 499
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #level:I
    .end local v3           #plugged:I
    .end local v4           #status:I
    :pswitch_2
    iget-object v6, p0, Lcom/htc/lockscreen/app/LSState$MyUIHandler;->this$0:Lcom/htc/lockscreen/app/LSState;

    invoke-virtual {v6}, Lcom/htc/lockscreen/app/LSState;->handleNetworkChanged()V

    goto :goto_0

    .line 502
    :pswitch_3
    iget-object v6, p0, Lcom/htc/lockscreen/app/LSState$MyUIHandler;->this$0:Lcom/htc/lockscreen/app/LSState;

    #calls: Lcom/htc/lockscreen/app/LSState;->_backToLockScreen()V
    invoke-static {v6}, Lcom/htc/lockscreen/app/LSState;->access$2100(Lcom/htc/lockscreen/app/LSState;)V

    goto :goto_0

    .line 505
    :pswitch_4
    iget-object v6, p0, Lcom/htc/lockscreen/app/LSState$MyUIHandler;->this$0:Lcom/htc/lockscreen/app/LSState;

    iget-object v7, p0, Lcom/htc/lockscreen/app/LSState$MyUIHandler;->this$0:Lcom/htc/lockscreen/app/LSState;

    #getter for: Lcom/htc/lockscreen/app/LSState;->mKgUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v7}, Lcom/htc/lockscreen/app/LSState;->access$1300(Lcom/htc/lockscreen/app/LSState;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/lockscreen/app/LSState$MyUIHandler;->this$0:Lcom/htc/lockscreen/app/LSState;

    #getter for: Lcom/htc/lockscreen/app/LSState;->mKgUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v8}, Lcom/htc/lockscreen/app/LSState;->access$1300(Lcom/htc/lockscreen/app/LSState;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpn()Ljava/lang/CharSequence;

    move-result-object v8

    #calls: Lcom/htc/lockscreen/app/LSState;->updatePlmnAndSpn(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    invoke-static {v6, v7, v8}, Lcom/htc/lockscreen/app/LSState;->access$2200(Lcom/htc/lockscreen/app/LSState;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 506
    iget-object v6, p0, Lcom/htc/lockscreen/app/LSState$MyUIHandler;->this$0:Lcom/htc/lockscreen/app/LSState;

    #getter for: Lcom/htc/lockscreen/app/LSState;->mCallback:Lcom/htc/lockscreen/app/LSState$Callback;
    invoke-static {v6}, Lcom/htc/lockscreen/app/LSState;->access$2300(Lcom/htc/lockscreen/app/LSState;)Lcom/htc/lockscreen/app/LSState$Callback;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 507
    iget-object v6, p0, Lcom/htc/lockscreen/app/LSState$MyUIHandler;->this$0:Lcom/htc/lockscreen/app/LSState;

    #getter for: Lcom/htc/lockscreen/app/LSState;->mCallback:Lcom/htc/lockscreen/app/LSState$Callback;
    invoke-static {v6}, Lcom/htc/lockscreen/app/LSState;->access$2300(Lcom/htc/lockscreen/app/LSState;)Lcom/htc/lockscreen/app/LSState$Callback;

    move-result-object v6

    invoke-interface {v6}, Lcom/htc/lockscreen/app/LSState$Callback;->recreatMe()V

    .line 510
    :cond_1
    iget-object v6, p0, Lcom/htc/lockscreen/app/LSState$MyUIHandler;->this$0:Lcom/htc/lockscreen/app/LSState;

    #getter for: Lcom/htc/lockscreen/app/LSState;->mIdleScreenMng:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;
    invoke-static {v6}, Lcom/htc/lockscreen/app/LSState;->access$2400(Lcom/htc/lockscreen/app/LSState;)Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 511
    iget-object v6, p0, Lcom/htc/lockscreen/app/LSState$MyUIHandler;->this$0:Lcom/htc/lockscreen/app/LSState;

    #getter for: Lcom/htc/lockscreen/app/LSState;->mIdleScreenMng:Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;
    invoke-static {v6}, Lcom/htc/lockscreen/app/LSState;->access$2400(Lcom/htc/lockscreen/app/LSState;)Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenManager;->onLocaleChanged()V

    goto :goto_0

    .line 516
    :pswitch_5
    iget-object v6, p0, Lcom/htc/lockscreen/app/LSState$MyUIHandler;->this$0:Lcom/htc/lockscreen/app/LSState;

    invoke-virtual {v6}, Lcom/htc/lockscreen/app/LSState;->pokeWakeLock()V

    goto :goto_0

    .line 519
    :pswitch_6
    iget-object v6, p0, Lcom/htc/lockscreen/app/LSState$MyUIHandler;->this$0:Lcom/htc/lockscreen/app/LSState;

    iget-object v7, p0, Lcom/htc/lockscreen/app/LSState$MyUIHandler;->this$0:Lcom/htc/lockscreen/app/LSState;

    #getter for: Lcom/htc/lockscreen/app/LSState;->mKgUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v7}, Lcom/htc/lockscreen/app/LSState;->access$1300(Lcom/htc/lockscreen/app/LSState;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/lockscreen/app/LSState$MyUIHandler;->this$0:Lcom/htc/lockscreen/app/LSState;

    #getter for: Lcom/htc/lockscreen/app/LSState;->mKgUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v8}, Lcom/htc/lockscreen/app/LSState;->access$1300(Lcom/htc/lockscreen/app/LSState;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpn()Ljava/lang/CharSequence;

    move-result-object v8

    #calls: Lcom/htc/lockscreen/app/LSState;->updatePlmnAndSpn(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    invoke-static {v6, v7, v8}, Lcom/htc/lockscreen/app/LSState;->access$2200(Lcom/htc/lockscreen/app/LSState;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 520
    iget-object v6, p0, Lcom/htc/lockscreen/app/LSState$MyUIHandler;->this$0:Lcom/htc/lockscreen/app/LSState;

    invoke-virtual {v6}, Lcom/htc/lockscreen/app/LSState;->handleNetworkChanged()V

    goto/16 :goto_0

    .line 523
    :pswitch_7
    iget-object v6, p0, Lcom/htc/lockscreen/app/LSState$MyUIHandler;->this$0:Lcom/htc/lockscreen/app/LSState;

    #getter for: Lcom/htc/lockscreen/app/LSState;->mCallback:Lcom/htc/lockscreen/app/LSState$Callback;
    invoke-static {v6}, Lcom/htc/lockscreen/app/LSState;->access$2300(Lcom/htc/lockscreen/app/LSState;)Lcom/htc/lockscreen/app/LSState$Callback;

    move-result-object v1

    .line 524
    .local v1, callback:Lcom/htc/lockscreen/app/LSState$Callback;
    if-eqz v1, :cond_0

    .line 525
    invoke-interface {v1}, Lcom/htc/lockscreen/app/LSState$Callback;->onUIReady()V

    goto/16 :goto_0

    .line 489
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
