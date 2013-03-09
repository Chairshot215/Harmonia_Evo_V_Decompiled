.class Lcom/htc/android/mail/mailservice/DirectPushService$ClearPushMailSyncErrorRunnable;
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
    name = "ClearPushMailSyncErrorRunnable"
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
    .line 556
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 553
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ClearPushMailSyncErrorRunnable;->mStartId:I

    .line 554
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ClearPushMailSyncErrorRunnable;->mAccountId:J

    .line 557
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ClearPushMailSyncErrorRunnable;->mWeakDirectPushService:Ljava/lang/ref/WeakReference;

    .line 558
    invoke-virtual {p2}, Lcom/htc/android/mail/mailservice/DirectPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ClearPushMailSyncErrorRunnable;->mContext:Landroid/content/Context;

    .line 559
    iput-object p3, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ClearPushMailSyncErrorRunnable;->mDirectPushFsmStore:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;

    .line 560
    iput p1, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ClearPushMailSyncErrorRunnable;->mStartId:I

    .line 561
    iput-wide p4, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ClearPushMailSyncErrorRunnable;->mAccountId:J

    .line 562
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 565
    const/4 v1, 0x0

    .line 567
    .local v1, wakelock:Landroid/os/PowerManager$WakeLock;
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ClearPushMailSyncErrorRunnable;->mContext:Landroid/content/Context;

    const-string v3, "ClearPushMailSyncErrorRunnable"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerLock(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;
    invoke-static {v2, v3}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$100(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 568
    iget-object v2, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ClearPushMailSyncErrorRunnable;->mDirectPushFsmStore:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;

    iget-object v3, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ClearPushMailSyncErrorRunnable;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ClearPushMailSyncErrorRunnable;->mAccountId:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;->getFsm(Landroid/content/Context;J)Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;

    move-result-object v0

    .line 569
    .local v0, fsm:Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;
    iget-object v2, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ClearPushMailSyncErrorRunnable;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ClearPushMailSyncErrorRunnable;->mAccountId:J

    const/4 v5, 0x0

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setAdditionalSyncWhenErrorEnabled(Landroid/content/Context;JZ)V
    invoke-static {v2, v3, v4, v5}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$600(Landroid/content/Context;JZ)V

    .line 570
    iget-object v2, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ClearPushMailSyncErrorRunnable;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ClearPushMailSyncErrorRunnable;->mAccountId:J

    const/4 v5, 0x0

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setAdditionalSyncWhenErrorAlarmEnabled(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V
    invoke-static {v2, v3, v4, v0, v5}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$700(Landroid/content/Context;JLcom/htc/android/mail/mailservice/DirectPushService$Fsm;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 572
    const-string v2, "ClearPushMailSyncErrorRunnable"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerRelease(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$200(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V

    .line 574
    return-void

    .line 572
    .end local v0           #fsm:Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;
    :catchall_0
    move-exception v2

    const-string v3, "ClearPushMailSyncErrorRunnable"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerRelease(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$200(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V

    throw v2
.end method
