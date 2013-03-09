.class Lcom/htc/android/mail/mailservice/DirectPushService$InitialDirectPushRunnable;
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
    name = "InitialDirectPushRunnable"
.end annotation


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

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
.method public constructor <init>(Lcom/htc/android/mail/mailservice/DirectPushService;Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;)V
    .locals 1
    .parameter "directPushService"
    .parameter "directPushFsmStore"

    .prologue
    .line 584
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 582
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$InitialDirectPushRunnable;->mStartId:I

    .line 585
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$InitialDirectPushRunnable;->mWeakDirectPushService:Ljava/lang/ref/WeakReference;

    .line 586
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$InitialDirectPushRunnable;->mContext:Landroid/content/Context;

    .line 587
    invoke-virtual {p1}, Lcom/htc/android/mail/mailservice/DirectPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$InitialDirectPushRunnable;->mContentResolver:Landroid/content/ContentResolver;

    .line 588
    iput-object p2, p0, Lcom/htc/android/mail/mailservice/DirectPushService$InitialDirectPushRunnable;->mDirectPushFsmStore:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;

    .line 589
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 596
    const/4 v11, 0x0

    .line 598
    .local v11, wakelock:Landroid/os/PowerManager$WakeLock;
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$InitialDirectPushRunnable;->mContext:Landroid/content/Context;

    const-string v1, "InitialDirectPushRunnable"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerLock(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;
    invoke-static {v0, v1}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$100(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v11

    .line 599
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 600
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "_del = -1 AND _protocol = 6 AND _poll_frequency_number = 9"

    .line 601
    .local v3, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$InitialDirectPushRunnable;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 602
    .local v8, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 603
    .local v9, keepingRunning:Z
    if-eqz v8, :cond_1

    .line 604
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 606
    .local v6, accountId:J
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$InitialDirectPushRunnable;->mContext:Landroid/content/Context;

    invoke-static {v0, v6, v7}, Lcom/htc/android/mail/mailservice/DirectPushService;->startDp(Landroid/content/Context;J)V

    .line 607
    const/4 v9, 0x1

    .line 609
    .end local v6           #accountId:J
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 611
    :cond_1
    if-nez v9, :cond_3

    .line 612
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DIRECTPUSH_DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "DirectPushService"

    const-string v1, "no need to inital direct push, stop DirectPushService"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$InitialDirectPushRunnable;->mWeakDirectPushService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/android/mail/mailservice/DirectPushService;

    .line 614
    .local v10, service:Lcom/htc/android/mail/mailservice/DirectPushService;
    if-eqz v10, :cond_3

    iget v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$InitialDirectPushRunnable;->mStartId:I

    invoke-virtual {v10, v0}, Lcom/htc/android/mail/mailservice/DirectPushService;->stopSelf(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 617
    .end local v10           #service:Lcom/htc/android/mail/mailservice/DirectPushService;
    :cond_3
    const-string v0, "InitialDirectPushRunnable"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerRelease(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    invoke-static {v11, v0}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$200(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V

    .line 619
    return-void

    .line 617
    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v8           #c:Landroid/database/Cursor;
    .end local v9           #keepingRunning:Z
    :catchall_0
    move-exception v0

    const-string v1, "InitialDirectPushRunnable"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerRelease(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    invoke-static {v11, v1}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$200(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V

    throw v0
.end method

.method public setStartId(I)V
    .locals 0
    .parameter "startId"

    .prologue
    .line 592
    iput p1, p0, Lcom/htc/android/mail/mailservice/DirectPushService$InitialDirectPushRunnable;->mStartId:I

    .line 593
    return-void
.end method
