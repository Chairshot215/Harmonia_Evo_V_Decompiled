.class public Lcom/android/htccontacts/BackgroundWorkerHandler;
.super Ljava/lang/Object;
.source "BackgroundWorkerHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/BackgroundWorkerHandler$WorkerHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final EVENT_CANCEL_SYNC_MSG:I = 0x3

.field static final EVENT_CLOSE_CURSOR:I = 0x1

.field static final EVENT_INSERT_RUNNABLE:I = 0x4

.field static final EVENT_START_SYNC_MSG:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BackgroundWorkerHandler"

.field private static sLooper:Landroid/os/Looper;


# instance fields
.field final mResolver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/ContentResolver;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkerThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/android/htccontacts/BackgroundWorkerHandler;->sLooper:Landroid/os/Looper;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 3
    .parameter "cr"

    .prologue
    .line 103
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/htccontacts/BackgroundWorkerHandler;->mResolver:Ljava/lang/ref/WeakReference;

    .line 106
    const-class v2, Lcom/android/htccontacts/BackgroundWorkerHandler;

    monitor-enter v2

    .line 107
    :try_start_0
    sget-object v1, Lcom/android/htccontacts/BackgroundWorkerHandler;->sLooper:Landroid/os/Looper;

    if-nez v1, :cond_0

    .line 108
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BackgroundWorkerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 111
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    sput-object v1, Lcom/android/htccontacts/BackgroundWorkerHandler;->sLooper:Landroid/os/Looper;

    .line 113
    .end local v0           #thread:Landroid/os/HandlerThread;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    sget-object v1, Lcom/android/htccontacts/BackgroundWorkerHandler;->sLooper:Landroid/os/Looper;

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/BackgroundWorkerHandler;->createHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/BackgroundWorkerHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    .line 115
    return-void

    .line 113
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public cancelSyncIfNeeded()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/htccontacts/BackgroundWorkerHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 142
    iget-object v0, p0, Lcom/android/htccontacts/BackgroundWorkerHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 143
    return-void
.end method

.method public closeCursor(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 123
    iget-object v1, p0, Lcom/android/htccontacts/BackgroundWorkerHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 125
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/htccontacts/BackgroundWorkerHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 126
    return-void
.end method

.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1
    .parameter "looper"

    .prologue
    .line 118
    new-instance v0, Lcom/android/htccontacts/BackgroundWorkerHandler$WorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/htccontacts/BackgroundWorkerHandler$WorkerHandler;-><init>(Lcom/android/htccontacts/BackgroundWorkerHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method public getWorkerHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/htccontacts/BackgroundWorkerHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public final postInBackground(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/htccontacts/BackgroundWorkerHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 149
    return-void
.end method

.method public final postInBackgroundDelay(Ljava/lang/Runnable;I)V
    .locals 3
    .parameter "r"
    .parameter "delay"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/htccontacts/BackgroundWorkerHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 154
    return-void
.end method

.method public startSyncIfNeeded()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 132
    iget-object v0, p0, Lcom/android/htccontacts/BackgroundWorkerHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 134
    iget-object v0, p0, Lcom/android/htccontacts/BackgroundWorkerHandler;->mWorkerThreadHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 135
    return-void
.end method
