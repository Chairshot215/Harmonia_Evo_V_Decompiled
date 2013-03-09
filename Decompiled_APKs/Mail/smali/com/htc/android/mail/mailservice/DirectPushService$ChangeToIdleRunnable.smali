.class Lcom/htc/android/mail/mailservice/DirectPushService$ChangeToIdleRunnable;
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
    name = "ChangeToIdleRunnable"
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
    .locals 1
    .parameter "startId"
    .parameter "directPushService"
    .parameter "directPushFsmStore"
    .parameter "accountId"

    .prologue
    .line 356
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 353
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ChangeToIdleRunnable;->mStartId:I

    .line 357
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ChangeToIdleRunnable;->mWeakDirectPushService:Ljava/lang/ref/WeakReference;

    .line 358
    invoke-virtual {p2}, Lcom/htc/android/mail/mailservice/DirectPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ChangeToIdleRunnable;->mContext:Landroid/content/Context;

    .line 359
    iput-object p3, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ChangeToIdleRunnable;->mDirectPushFsmStore:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;

    .line 360
    iput p1, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ChangeToIdleRunnable;->mStartId:I

    .line 361
    iput-wide p4, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ChangeToIdleRunnable;->mAccountId:J

    .line 362
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 365
    const/4 v2, 0x0

    .line 367
    .local v2, wakelock:Landroid/os/PowerManager$WakeLock;
    :try_start_0
    iget-object v3, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ChangeToIdleRunnable;->mContext:Landroid/content/Context;

    const-string v4, "ChangeToIdleRunnable"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerLock(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;
    invoke-static {v3, v4}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$100(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 368
    iget-object v3, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ChangeToIdleRunnable;->mDirectPushFsmStore:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;

    iget-object v4, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ChangeToIdleRunnable;->mContext:Landroid/content/Context;

    iget-wide v5, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ChangeToIdleRunnable;->mAccountId:J

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;->getFsm(Landroid/content/Context;J)Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;

    move-result-object v0

    .line 369
    .local v0, fsm:Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;
    invoke-virtual {v0}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getCurrentState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v1

    .line 370
    .local v1, state:Lcom/htc/android/mail/mailservice/DirectPushService$State;
    invoke-virtual {v1, v0}, Lcom/htc/android/mail/mailservice/DirectPushService$State;->onChangeToIdle(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    const-string v3, "ChangeToIdleRunnable"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerRelease(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$200(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V

    .line 374
    return-void

    .line 372
    .end local v0           #fsm:Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;
    .end local v1           #state:Lcom/htc/android/mail/mailservice/DirectPushService$State;
    :catchall_0
    move-exception v3

    const-string v4, "ChangeToIdleRunnable"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerRelease(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    invoke-static {v2, v4}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$200(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V

    throw v3
.end method
