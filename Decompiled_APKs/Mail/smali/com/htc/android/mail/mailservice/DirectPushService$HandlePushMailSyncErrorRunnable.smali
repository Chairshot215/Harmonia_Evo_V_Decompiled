.class Lcom/htc/android/mail/mailservice/DirectPushService$HandlePushMailSyncErrorRunnable;
.super Ljava/lang/Object;
.source "DirectPushService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/mailservice/DirectPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandlePushMailSyncErrorRunnable"
.end annotation


# instance fields
.field private mAccountId:J

.field private mContext:Landroid/content/Context;

.field private mDirectPushFsmStore:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;

.field private mStartId:I

.field private mWeakDirectPushService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/android/mail/mailservice/DirectPushService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/htc/android/mail/mailservice/DirectPushService;Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;J)V
    .locals 2
    .parameter "startId"
    .parameter "directPushService"
    .parameter "directPushFsmStore"
    .parameter "accountId"

    .prologue
    .line 518
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 515
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$HandlePushMailSyncErrorRunnable;->mStartId:I

    .line 516
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$HandlePushMailSyncErrorRunnable;->mAccountId:J

    .line 519
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$HandlePushMailSyncErrorRunnable;->mWeakDirectPushService:Ljava/lang/ref/WeakReference;

    .line 520
    invoke-virtual {p2}, Lcom/htc/android/mail/mailservice/DirectPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$HandlePushMailSyncErrorRunnable;->mContext:Landroid/content/Context;

    .line 521
    iput-object p3, p0, Lcom/htc/android/mail/mailservice/DirectPushService$HandlePushMailSyncErrorRunnable;->mDirectPushFsmStore:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;

    .line 522
    iput p1, p0, Lcom/htc/android/mail/mailservice/DirectPushService$HandlePushMailSyncErrorRunnable;->mStartId:I

    .line 523
    iput-wide p4, p0, Lcom/htc/android/mail/mailservice/DirectPushService$HandlePushMailSyncErrorRunnable;->mAccountId:J

    .line 524
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 527
    const/4 v1, 0x0

    .line 529
    .local v1, wakelock:Landroid/os/PowerManager$WakeLock;
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/mailservice/DirectPushService$HandlePushMailSyncErrorRunnable;->mContext:Landroid/content/Context;

    const-string v3, "HandlePushMailSyncErrorRunnable"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerLock(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;
    invoke-static {v2, v3}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$100(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 530
    iget-object v2, p0, Lcom/htc/android/mail/mailservice/DirectPushService$HandlePushMailSyncErrorRunnable;->mDirectPushFsmStore:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;

    iget-object v3, p0, Lcom/htc/android/mail/mailservice/DirectPushService$HandlePushMailSyncErrorRunnable;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/htc/android/mail/mailservice/DirectPushService$HandlePushMailSyncErrorRunnable;->mAccountId:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;->getFsm(Landroid/content/Context;J)Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;

    move-result-object v0

    .line 531
    .local v0, fsm:Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;
    invoke-virtual {v0}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getCurrentState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v2

    iget v2, v2, Lcom/htc/android/mail/mailservice/DirectPushService$State;->type:I

    if-eq v2, v6, :cond_2

    invoke-virtual {v0}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getCurrentState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v2

    iget v2, v2, Lcom/htc/android/mail/mailservice/DirectPushService$State;->type:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 532
    iget-object v2, p0, Lcom/htc/android/mail/mailservice/DirectPushService$HandlePushMailSyncErrorRunnable;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/htc/android/mail/mailservice/DirectPushService$HandlePushMailSyncErrorRunnable;->mAccountId:J

    const/4 v5, 0x1

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setAdditionalSyncWhenErrorEnabled(Landroid/content/Context;JZ)V
    invoke-static {v2, v3, v4, v5}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$600(Landroid/content/Context;JZ)V

    .line 533
    iget-object v2, p0, Lcom/htc/android/mail/mailservice/DirectPushService$HandlePushMailSyncErrorRunnable;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/android/mail/MailCommon;->checkNetwork(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 534
    iget-object v2, p0, Lcom/htc/android/mail/mailservice/DirectPushService$HandlePushMailSyncErrorRunnable;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/htc/android/mail/mailservice/DirectPushService$HandlePushMailSyncErrorRunnable;->mAccountId:J

    const/4 v5, 0x1

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setAdditionalSyncWhenErrorAlarmEnabled(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V
    invoke-static {v2, v3, v4, v0, v5}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$700(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    :goto_0
    const-string v2, "HandlePushMailSyncErrorRunnable"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerRelease(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$200(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V

    .line 546
    return-void

    .line 535
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/htc/android/mail/mailservice/DirectPushService$HandlePushMailSyncErrorRunnable;->mContext:Landroid/content/Context;

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->isAnyNetworkSettingOn(Landroid/content/Context;)Z
    invoke-static {v2}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$800(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 536
    iget-object v2, p0, Lcom/htc/android/mail/mailservice/DirectPushService$HandlePushMailSyncErrorRunnable;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/htc/android/mail/mailservice/DirectPushService$HandlePushMailSyncErrorRunnable;->mAccountId:J

    const/4 v5, 0x1

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setAdditionalSyncWhenErrorAlarmEnabled(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V
    invoke-static {v2, v3, v4, v0, v5}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$700(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 544
    .end local v0           #fsm:Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;
    :catchall_0
    move-exception v2

    const-string v3, "HandlePushMailSyncErrorRunnable"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerRelease(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$200(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V

    throw v2

    .line 538
    .restart local v0       #fsm:Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/htc/android/mail/mailservice/DirectPushService$HandlePushMailSyncErrorRunnable;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/htc/android/mail/mailservice/DirectPushService$HandlePushMailSyncErrorRunnable;->mAccountId:J

    const/4 v5, 0x0

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setAdditionalSyncWhenErrorAlarmEnabled(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V
    invoke-static {v2, v3, v4, v0, v5}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$700(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V

    goto :goto_0

    .line 541
    :cond_2
    iget-object v2, p0, Lcom/htc/android/mail/mailservice/DirectPushService$HandlePushMailSyncErrorRunnable;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/htc/android/mail/mailservice/DirectPushService$HandlePushMailSyncErrorRunnable;->mAccountId:J

    const/4 v5, 0x0

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setAdditionalSyncWhenErrorAlarmEnabled(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V
    invoke-static {v2, v3, v4, v0, v5}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$700(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
