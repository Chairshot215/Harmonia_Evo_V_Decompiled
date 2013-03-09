.class Lcom/htc/lockscreen/HtcLockScreen$1;
.super Landroid/os/Handler;
.source "HtcLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/HtcLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lockscreen/HtcLockScreen;


# direct methods
.method constructor <init>(Lcom/htc/lockscreen/HtcLockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/htc/lockscreen/HtcLockScreen$1;->this$0:Lcom/htc/lockscreen/HtcLockScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 100
    iget v2, p1, Landroid/os/Message;->what:I

    .line 101
    .local v2, what:I
    packed-switch v2, :pswitch_data_0

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 103
    :pswitch_0
    iget-object v3, p0, Lcom/htc/lockscreen/HtcLockScreen$1;->this$0:Lcom/htc/lockscreen/HtcLockScreen;

    #getter for: Lcom/htc/lockscreen/HtcLockScreen;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/lockscreen/HtcLockScreen;->access$000(Lcom/htc/lockscreen/HtcLockScreen;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x3ea

    invoke-static {v3, v4}, Lcom/htc/lockscreen/app/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 104
    iget-object v4, p0, Lcom/htc/lockscreen/HtcLockScreen$1;->this$0:Lcom/htc/lockscreen/HtcLockScreen;

    monitor-enter v4

    .line 105
    :try_start_0
    iget-object v3, p0, Lcom/htc/lockscreen/HtcLockScreen$1;->this$0:Lcom/htc/lockscreen/HtcLockScreen;

    #getter for: Lcom/htc/lockscreen/HtcLockScreen;->mDestroyed:Z
    invoke-static {v3}, Lcom/htc/lockscreen/HtcLockScreen;->access$100(Lcom/htc/lockscreen/HtcLockScreen;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 106
    monitor-exit v4

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 108
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v3

    iget-object v5, p0, Lcom/htc/lockscreen/HtcLockScreen$1;->this$0:Lcom/htc/lockscreen/HtcLockScreen;

    iget-object v5, v5, Lcom/htc/lockscreen/HtcLockScreen;->mLSStateCallback:Lcom/htc/lockscreen/app/LSState$Callback;

    invoke-virtual {v3, v5}, Lcom/htc/lockscreen/app/LSState;->setCallback(Lcom/htc/lockscreen/app/LSState$Callback;)V

    .line 109
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v3

    iget-object v5, p0, Lcom/htc/lockscreen/HtcLockScreen$1;->this$0:Lcom/htc/lockscreen/HtcLockScreen;

    #getter for: Lcom/htc/lockscreen/HtcLockScreen;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/lockscreen/HtcLockScreen;->access$200(Lcom/htc/lockscreen/HtcLockScreen;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/lockscreen/HtcLockScreen$1;->this$0:Lcom/htc/lockscreen/HtcLockScreen;

    iget-object v6, v6, Lcom/htc/lockscreen/LockScreeenClass;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v7, p0, Lcom/htc/lockscreen/HtcLockScreen$1;->this$0:Lcom/htc/lockscreen/HtcLockScreen;

    iget-object v7, v7, Lcom/htc/lockscreen/LockScreeenClass;->mKeyguardCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-virtual {v3, v5, v6, v7}, Lcom/htc/lockscreen/app/LSState;->init(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .line 110
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 113
    :pswitch_1
    iget-object v3, p0, Lcom/htc/lockscreen/HtcLockScreen$1;->this$0:Lcom/htc/lockscreen/HtcLockScreen;

    #getter for: Lcom/htc/lockscreen/HtcLockScreen;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/lockscreen/HtcLockScreen;->access$000(Lcom/htc/lockscreen/HtcLockScreen;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x3eb

    invoke-static {v3, v4}, Lcom/htc/lockscreen/app/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 114
    iget-object v3, p0, Lcom/htc/lockscreen/HtcLockScreen$1;->this$0:Lcom/htc/lockscreen/HtcLockScreen;

    iget-object v3, v3, Lcom/htc/lockscreen/LockScreeenClass;->mKeyguardCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->isLockScreen()Z

    move-result v0

    .line 115
    .local v0, inLockScreen:Z
    iget-object v3, p0, Lcom/htc/lockscreen/HtcLockScreen$1;->this$0:Lcom/htc/lockscreen/HtcLockScreen;

    #calls: Lcom/htc/lockscreen/HtcLockScreen;->isDeviceCSLocked()Z
    invoke-static {v3}, Lcom/htc/lockscreen/HtcLockScreen;->access$300(Lcom/htc/lockscreen/HtcLockScreen;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/lockscreen/HtcLockScreen$1;->this$0:Lcom/htc/lockscreen/HtcLockScreen;

    #getter for: Lcom/htc/lockscreen/HtcLockScreen;->mWindowFocus:Z
    invoke-static {v3}, Lcom/htc/lockscreen/HtcLockScreen;->access$400(Lcom/htc/lockscreen/HtcLockScreen;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 116
    invoke-static {}, Lcom/htc/lockscreen/app/LSState;->getInstance()Lcom/htc/lockscreen/app/LSState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/lockscreen/app/LSState;->startCSActivity()Z

    goto :goto_0

    .line 120
    .end local v0           #inLockScreen:Z
    :pswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 121
    .local v1, type:I
    iget-object v3, p0, Lcom/htc/lockscreen/HtcLockScreen$1;->this$0:Lcom/htc/lockscreen/HtcLockScreen;

    invoke-virtual {v3, v1}, Lcom/htc/lockscreen/HtcLockScreen;->goToUnlockScreen(I)V

    goto :goto_0

    .line 124
    .end local v1           #type:I
    :pswitch_3
    iget-object v3, p0, Lcom/htc/lockscreen/HtcLockScreen$1;->this$0:Lcom/htc/lockscreen/HtcLockScreen;

    invoke-virtual {v3}, Lcom/htc/lockscreen/HtcLockScreen;->updateIdleViewMode()V

    goto :goto_0

    .line 127
    :pswitch_4
    iget-object v3, p0, Lcom/htc/lockscreen/HtcLockScreen$1;->this$0:Lcom/htc/lockscreen/HtcLockScreen;

    #calls: Lcom/htc/lockscreen/HtcLockScreen;->handleUpdateHidden()V
    invoke-static {v3}, Lcom/htc/lockscreen/HtcLockScreen;->access$500(Lcom/htc/lockscreen/HtcLockScreen;)V

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
