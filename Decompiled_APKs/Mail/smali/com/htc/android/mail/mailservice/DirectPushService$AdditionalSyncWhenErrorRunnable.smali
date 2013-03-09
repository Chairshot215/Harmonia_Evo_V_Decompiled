.class public Lcom/htc/android/mail/mailservice/DirectPushService$AdditionalSyncWhenErrorRunnable;
.super Ljava/lang/Object;
.source "DirectPushService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/mailservice/DirectPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdditionalSyncWhenErrorRunnable"
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
    .line 220
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$AdditionalSyncWhenErrorRunnable;->mContext:Landroid/content/Context;

    .line 217
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$AdditionalSyncWhenErrorRunnable;->mStartId:I

    .line 218
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$AdditionalSyncWhenErrorRunnable;->mAccountId:J

    .line 221
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$AdditionalSyncWhenErrorRunnable;->mWeakDirectPushService:Ljava/lang/ref/WeakReference;

    .line 222
    invoke-virtual {p2}, Lcom/htc/android/mail/mailservice/DirectPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$AdditionalSyncWhenErrorRunnable;->mContext:Landroid/content/Context;

    .line 223
    iput-object p3, p0, Lcom/htc/android/mail/mailservice/DirectPushService$AdditionalSyncWhenErrorRunnable;->mDirectPushFsmStore:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;

    .line 224
    iput p1, p0, Lcom/htc/android/mail/mailservice/DirectPushService$AdditionalSyncWhenErrorRunnable;->mStartId:I

    .line 225
    iput-wide p4, p0, Lcom/htc/android/mail/mailservice/DirectPushService$AdditionalSyncWhenErrorRunnable;->mAccountId:J

    .line 226
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 229
    const/4 v1, 0x0

    .line 231
    .local v1, wakelock:Landroid/os/PowerManager$WakeLock;
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/mailservice/DirectPushService$AdditionalSyncWhenErrorRunnable;->mContext:Landroid/content/Context;

    const-string v3, "AdditionalSyncWhenErrorRunnable"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerLock(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;
    invoke-static {v2, v3}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$100(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 233
    iget-object v2, p0, Lcom/htc/android/mail/mailservice/DirectPushService$AdditionalSyncWhenErrorRunnable;->mDirectPushFsmStore:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;

    iget-object v3, p0, Lcom/htc/android/mail/mailservice/DirectPushService$AdditionalSyncWhenErrorRunnable;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/htc/android/mail/mailservice/DirectPushService$AdditionalSyncWhenErrorRunnable;->mAccountId:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;->getFsm(Landroid/content/Context;J)Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;

    move-result-object v0

    .line 234
    .local v0, fsm:Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->setAdditionalSyncWhenErrorAlarmEnabled(Z)V

    .line 236
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "DirectPushService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AdditionalSyncWhenErrorRunnable, accountId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/htc/android/mail/mailservice/DirectPushService$AdditionalSyncWhenErrorRunnable;->mAccountId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/mailservice/DirectPushService$AdditionalSyncWhenErrorRunnable;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/htc/android/mail/mailservice/DirectPushService$AdditionalSyncWhenErrorRunnable;->mAccountId:J

    invoke-static {v2, v3, v4}, Lcom/htc/android/mail/mailservice/DirectPushService;->startSync(Landroid/content/Context;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    const-string v2, "AdditionalSyncWhenErrorRunnable"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerRelease(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$200(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V

    .line 241
    return-void

    .line 239
    .end local v0           #fsm:Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;
    :catchall_0
    move-exception v2

    const-string v3, "AdditionalSyncWhenErrorRunnable"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerRelease(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$200(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V

    throw v2
.end method
