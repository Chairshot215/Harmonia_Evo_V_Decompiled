.class Lcom/htc/android/mail/mailservice/DirectPushService$CheckServiceRunnable;
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
    name = "CheckServiceRunnable"
.end annotation


# instance fields
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
.method public constructor <init>(ILcom/htc/android/mail/mailservice/DirectPushService;Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;)V
    .locals 1
    .parameter "startId"
    .parameter "directPushService"
    .parameter "directPushFsmStore"

    .prologue
    .line 323
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$CheckServiceRunnable;->mContext:Landroid/content/Context;

    .line 321
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$CheckServiceRunnable;->mStartId:I

    .line 324
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$CheckServiceRunnable;->mWeakDirectPushService:Ljava/lang/ref/WeakReference;

    .line 325
    invoke-virtual {p2}, Lcom/htc/android/mail/mailservice/DirectPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$CheckServiceRunnable;->mContext:Landroid/content/Context;

    .line 326
    iput-object p3, p0, Lcom/htc/android/mail/mailservice/DirectPushService$CheckServiceRunnable;->mDirectPushFsmStore:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;

    .line 327
    iput p1, p0, Lcom/htc/android/mail/mailservice/DirectPushService$CheckServiceRunnable;->mStartId:I

    .line 328
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 331
    const/4 v1, 0x0

    .line 333
    .local v1, wakelock:Landroid/os/PowerManager$WakeLock;
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/mailservice/DirectPushService$CheckServiceRunnable;->mContext:Landroid/content/Context;

    const-string v3, "CheckServiceRunnable"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerLock(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;
    invoke-static {v2, v3}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$100(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 335
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "DirectPushService"

    const-string v3, "CheckServiceRunnable"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/mailservice/DirectPushService$CheckServiceRunnable;->mDirectPushFsmStore:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;

    invoke-virtual {v2}, Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;->isStopped()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 337
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "DirectPushService"

    const-string v3, "store is empty, stop service"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :cond_1
    iget-object v2, p0, Lcom/htc/android/mail/mailservice/DirectPushService$CheckServiceRunnable;->mWeakDirectPushService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/mailservice/DirectPushService;

    .line 339
    .local v0, service:Lcom/htc/android/mail/mailservice/DirectPushService;
    if-eqz v0, :cond_2

    iget v2, p0, Lcom/htc/android/mail/mailservice/DirectPushService$CheckServiceRunnable;->mStartId:I

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/mailservice/DirectPushService;->stopSelf(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    .end local v0           #service:Lcom/htc/android/mail/mailservice/DirectPushService;
    :cond_2
    :goto_0
    const-string v2, "CheckServiceRunnable"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerRelease(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$200(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V

    .line 346
    return-void

    .line 341
    :cond_3
    :try_start_1
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "DirectPushService"

    const-string v3, "store is not empty"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 344
    :catchall_0
    move-exception v2

    const-string v3, "CheckServiceRunnable"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerRelease(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$200(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V

    throw v2
.end method
