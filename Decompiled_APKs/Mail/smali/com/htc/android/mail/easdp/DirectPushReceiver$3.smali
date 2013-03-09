.class Lcom/htc/android/mail/easdp/DirectPushReceiver$3;
.super Landroid/content/BroadcastReceiver;
.source "DirectPushReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/easdp/DirectPushReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easdp/DirectPushReceiver;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easdp/DirectPushReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver$3;->this$0:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v8, 0x258

    .line 423
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 424
    .local v1, action:Ljava/lang/String;
    const-string v3, "EAS_DPReceiver"

    iget-object v4, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver$3;->this$0:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    #getter for: Lcom/htc/android/mail/easdp/DirectPushReceiver;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    invoke-static {v4}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->access$200(Lcom/htc/android/mail/easdp/DirectPushReceiver;)Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "> onReceive, intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 425
    iget-object v3, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver$3;->this$0:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    iget-object v3, v3, Lcom/htc/android/mail/easdp/DirectPushReceiver;->ACTION_DP_HB_INTERVAL:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 428
    iget-object v3, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver$3;->this$0:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    #getter for: Lcom/htc/android/mail/easdp/DirectPushReceiver;->abortWakeLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;
    invoke-static {v3}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->access$600(Lcom/htc/android/mail/easdp/DirectPushReceiver;)Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 429
    iget-object v3, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver$3;->this$0:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    #getter for: Lcom/htc/android/mail/easdp/DirectPushReceiver;->abortWakeLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;
    invoke-static {v3}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->access$600(Lcom/htc/android/mail/easdp/DirectPushReceiver;)Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/mail/eassvc/util/LockUtil;->releasePowerLock(Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)V

    .line 430
    iget-object v3, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver$3;->this$0:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    const/4 v4, 0x0

    #setter for: Lcom/htc/android/mail/easdp/DirectPushReceiver;->abortWakeLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;
    invoke-static {v3, v4}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->access$602(Lcom/htc/android/mail/easdp/DirectPushReceiver;Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    .line 432
    :cond_0
    iget-object v3, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver$3;->this$0:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    iget-object v4, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver$3;->this$0:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    #getter for: Lcom/htc/android/mail/easdp/DirectPushReceiver;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->access$700(Lcom/htc/android/mail/easdp/DirectPushReceiver;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "DP-Abort"

    const-wide/16 v6, 0x2710

    invoke-static {v4, v5, v6, v7}, Lcom/htc/android/mail/eassvc/util/LockUtil;->acquirePowerLockTimeout(Landroid/content/Context;Ljava/lang/String;J)Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    move-result-object v4

    #setter for: Lcom/htc/android/mail/easdp/DirectPushReceiver;->abortWakeLock:Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;
    invoke-static {v3, v4}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->access$602(Lcom/htc/android/mail/easdp/DirectPushReceiver;Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;)Lcom/htc/android/mail/eassvc/util/LockUtil$EASWakeLock;

    .line 435
    iget-object v3, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver$3;->this$0:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    iget-object v3, v3, Lcom/htc/android/mail/easdp/DirectPushReceiver;->dpRespStatus:Lcom/htc/android/mail/easdp/DirectPushReceiver$ResponseStatus;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/easdp/DirectPushReceiver$ResponseStatus;->addStatus(I)V

    .line 436
    iget-object v3, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver$3;->this$0:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    iget-object v4, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver$3;->this$0:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    iget v4, v4, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHeartBeatInterval:I

    iget-object v5, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver$3;->this$0:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    #getter for: Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHBIntervalDynamicGap:I
    invoke-static {v5}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->access$800(Lcom/htc/android/mail/easdp/DirectPushReceiver;)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHeartBeatInterval:I

    .line 437
    iget-object v3, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver$3;->this$0:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    iget v3, v3, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHeartBeatInterval:I

    if-ge v3, v8, :cond_1

    .line 438
    iget-object v3, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver$3;->this$0:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    iput v8, v3, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mHeartBeatInterval:I

    .line 441
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/htc/android/mail/easdp/DirectPushReceiver$3$1;

    invoke-direct {v3, p0}, Lcom/htc/android/mail/easdp/DirectPushReceiver$3$1;-><init>(Lcom/htc/android/mail/easdp/DirectPushReceiver$3;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 455
    .local v0, abortConnThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 479
    .end local v0           #abortConnThread:Ljava/lang/Thread;
    :cond_2
    :goto_0
    return-void

    .line 456
    :cond_3
    iget-object v3, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver$3;->this$0:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    iget-object v3, v3, Lcom/htc/android/mail/easdp/DirectPushReceiver;->ACTION_DP_CONNECT_TIMEOUT:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 457
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/htc/android/mail/easdp/DirectPushReceiver$3$2;

    invoke-direct {v3, p0}, Lcom/htc/android/mail/easdp/DirectPushReceiver$3$2;-><init>(Lcom/htc/android/mail/easdp/DirectPushReceiver$3;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 471
    .local v2, connTimeoutThread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 472
    .end local v2           #connTimeoutThread:Ljava/lang/Thread;
    :cond_4
    iget-object v3, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver$3;->this$0:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    iget-object v3, v3, Lcom/htc/android/mail/easdp/DirectPushReceiver;->ACTION_DP_KILL_SELF_CHECK:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 473
    iget-object v3, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver$3;->this$0:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    iget-boolean v3, v3, Lcom/htc/android/mail/easdp/DirectPushReceiver;->mDoingAbortHttp:Z

    if-eqz v3, :cond_2

    .line 474
    const-string v3, "EAS_DPReceiver"

    iget-object v4, p0, Lcom/htc/android/mail/easdp/DirectPushReceiver$3;->this$0:Lcom/htc/android/mail/easdp/DirectPushReceiver;

    #getter for: Lcom/htc/android/mail/easdp/DirectPushReceiver;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    invoke-static {v4}, Lcom/htc/android/mail/easdp/DirectPushReceiver;->access$200(Lcom/htc/android/mail/easdp/DirectPushReceiver;)Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-result-object v4

    const-string v5, "Abort http fail! kill self to restart directpush."

    invoke-static {v3, v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;Ljava/lang/String;)V

    .line 475
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0
.end method
