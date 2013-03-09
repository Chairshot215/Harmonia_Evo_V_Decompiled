.class public Lcom/htc/android/mail/mailservice/DirectPushService$ScheduleSyncRunnable;
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
    name = "ScheduleSyncRunnable"
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
    .line 251
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ScheduleSyncRunnable;->mContext:Landroid/content/Context;

    .line 248
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ScheduleSyncRunnable;->mStartId:I

    .line 249
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ScheduleSyncRunnable;->mAccountId:J

    .line 252
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ScheduleSyncRunnable;->mWeakDirectPushService:Ljava/lang/ref/WeakReference;

    .line 253
    invoke-virtual {p2}, Lcom/htc/android/mail/mailservice/DirectPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ScheduleSyncRunnable;->mContext:Landroid/content/Context;

    .line 254
    iput-object p3, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ScheduleSyncRunnable;->mDirectPushFsmStore:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;

    .line 255
    iput p1, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ScheduleSyncRunnable;->mStartId:I

    .line 256
    iput-wide p4, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ScheduleSyncRunnable;->mAccountId:J

    .line 257
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 260
    const/4 v0, 0x0

    .line 262
    .local v0, wakelock:Landroid/os/PowerManager$WakeLock;
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ScheduleSyncRunnable;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ScheduleSyncRunnable, accountId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ScheduleSyncRunnable;->mAccountId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerLock(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;
    invoke-static {v1, v2}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$100(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 264
    sget-boolean v1, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DirectPushService"

    const-string v2, "ScheduleSyncRunnable"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ScheduleSyncRunnable;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ScheduleSyncRunnable;->mAccountId:J

    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/mailservice/DirectPushService;->startSync(Landroid/content/Context;J)V

    .line 266
    iget-object v1, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ScheduleSyncRunnable;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/htc/android/mail/mailservice/DirectPushService$ScheduleSyncRunnable;->mAccountId:J

    const-wide/32 v4, 0xdbba0

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->addScheduleSyncAlarm(Landroid/content/Context;JJ)V
    invoke-static {v1, v2, v3, v4, v5}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$300(Landroid/content/Context;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    const-string v1, "ScheduleSyncRunnable"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerRelease(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$200(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V

    .line 270
    return-void

    .line 268
    :catchall_0
    move-exception v1

    const-string v2, "ScheduleSyncRunnable"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerRelease(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$200(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V

    throw v1
.end method
