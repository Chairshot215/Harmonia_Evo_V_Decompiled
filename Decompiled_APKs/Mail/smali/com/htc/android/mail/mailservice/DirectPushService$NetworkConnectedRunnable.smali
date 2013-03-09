.class Lcom/htc/android/mail/mailservice/DirectPushService$NetworkConnectedRunnable;
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
    name = "NetworkConnectedRunnable"
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
    .line 383
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 381
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$NetworkConnectedRunnable;->mStartId:I

    .line 384
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$NetworkConnectedRunnable;->mWeakDirectPushService:Ljava/lang/ref/WeakReference;

    .line 385
    invoke-virtual {p2}, Lcom/htc/android/mail/mailservice/DirectPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$NetworkConnectedRunnable;->mContext:Landroid/content/Context;

    .line 386
    iput-object p3, p0, Lcom/htc/android/mail/mailservice/DirectPushService$NetworkConnectedRunnable;->mDirectPushFsmStore:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;

    .line 387
    iput p1, p0, Lcom/htc/android/mail/mailservice/DirectPushService$NetworkConnectedRunnable;->mStartId:I

    .line 388
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 391
    const/4 v6, 0x0

    .line 393
    .local v6, wakelock:Landroid/os/PowerManager$WakeLock;
    :try_start_0
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/DirectPushService$NetworkConnectedRunnable;->mContext:Landroid/content/Context;

    const-string v8, "NetworkConnectedRunnable"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerLock(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;
    invoke-static {v7, v8}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$100(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    .line 395
    iget-object v7, p0, Lcom/htc/android/mail/mailservice/DirectPushService$NetworkConnectedRunnable;->mDirectPushFsmStore:Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;

    iget-object v8, p0, Lcom/htc/android/mail/mailservice/DirectPushService$NetworkConnectedRunnable;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushFsmStore;->getFsms(Landroid/content/Context;)[Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;

    move-result-object v2

    .line 396
    .local v2, fsms:[Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;
    move-object v0, v2

    .local v0, arr$:[Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 397
    .local v1, fsm:Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;
    invoke-virtual {v1}, Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;->getCurrentState()Lcom/htc/android/mail/mailservice/DirectPushService$State;

    move-result-object v5

    .line 398
    .local v5, state:Lcom/htc/android/mail/mailservice/DirectPushService$State;
    invoke-virtual {v5, v1}, Lcom/htc/android/mail/mailservice/DirectPushService$State;->onConnected(Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 401
    .end local v0           #arr$:[Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;
    .end local v1           #fsm:Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;
    .end local v2           #fsms:[Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #state:Lcom/htc/android/mail/mailservice/DirectPushService$State;
    :catchall_0
    move-exception v7

    const-string v8, "NetworkConnectedRunnable"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerRelease(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    invoke-static {v6, v8}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$200(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V

    throw v7

    .restart local v0       #arr$:[Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;
    .restart local v2       #fsms:[Lcom/htc/android/mail/mailservice/DirectPushService$Fsm;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_0
    const-string v7, "NetworkConnectedRunnable"

    #calls: Lcom/htc/android/mail/mailservice/DirectPushService;->setPowerRelease(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/htc/android/mail/mailservice/DirectPushService;->access$200(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V

    .line 403
    return-void
.end method
