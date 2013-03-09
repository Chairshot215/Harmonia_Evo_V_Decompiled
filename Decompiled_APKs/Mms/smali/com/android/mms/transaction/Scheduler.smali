.class public Lcom/android/mms/transaction/Scheduler;
.super Ljava/lang/Object;
.source "Scheduler.java"


# static fields
.field private static final PENDING_PROJECT:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Scheduler"


# instance fields
.field private isWakeLocked:Z

.field mContext:Landroid/content/Context;

.field private mServiceHandler:Landroid/os/Handler;

.field mTrQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/transaction/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWorkHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/Scheduler;->PENDING_PROJECT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 5
    .parameter "serviceHandler"
    .parameter "context"

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/mms/transaction/Scheduler;->isWakeLocked:Z

    .line 55
    iput-object p1, p0, Lcom/android/mms/transaction/Scheduler;->mServiceHandler:Landroid/os/Handler;

    .line 57
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "Transaction Scheduler"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 58
    .local v2, workThread:Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 59
    iput-object p2, p0, Lcom/android/mms/transaction/Scheduler;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 61
    .local v0, looper:Landroid/os/Looper;
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/mms/transaction/Scheduler;->mWorkHandler:Landroid/os/Handler;

    .line 63
    iget-object v3, p0, Lcom/android/mms/transaction/Scheduler;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 64
    .local v1, pm:Landroid/os/PowerManager;
    const/4 v3, 0x1

    const-string v4, "Scheduler"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/transaction/Scheduler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/transaction/Scheduler;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/Scheduler;->checkPendingTransactionExist(J)Z

    move-result v0

    return v0
.end method

.method private checkPendingTransactionExist(J)Z
    .locals 9
    .parameter "msgId"

    .prologue
    const/4 v4, 0x0

    .line 69
    iget-object v1, p0, Lcom/android/mms/transaction/Scheduler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 70
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/transaction/Scheduler;->PENDING_PROJECT:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msg_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 73
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 74
    .local v8, flag:Z
    if-eqz v7, :cond_1

    .line 75
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 76
    .local v6, count:I
    if-lez v6, :cond_0

    .line 77
    const/4 v8, 0x1

    .line 78
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 79
    const-string v1, "Jerry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduler.java_checkPendingTransactionExist() count >"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .end local v6           #count:I
    :cond_1
    return v8
.end method

.method private keepWakeLockOn(Z)V
    .locals 3
    .parameter "lockOn"

    .prologue
    .line 183
    iget-object v1, p0, Lcom/android/mms/transaction/Scheduler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 184
    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/transaction/Scheduler;->isWakeLocked:Z

    if-eq v0, p1, :cond_0

    .line 185
    iput-boolean p1, p0, Lcom/android/mms/transaction/Scheduler;->isWakeLocked:Z

    .line 186
    if-eqz p1, :cond_1

    .line 187
    const-string v0, "Scheduler"

    const-string v2, "acquire wake lock"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/android/mms/transaction/Scheduler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 195
    :cond_0
    :goto_0
    monitor-exit v1

    .line 196
    return-void

    .line 191
    :cond_1
    const-string v0, "Scheduler"

    const-string v2, "release wake lock"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/android/mms/transaction/Scheduler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    .prologue
    .line 202
    const-string v0, "Pochuan"

    const-string v1, "Scheduler finalize..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/android/mms/transaction/Scheduler;->mWorkHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/Scheduler;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/mms/transaction/Scheduler;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/transaction/Scheduler;->mWorkHandler:Landroid/os/Handler;

    .line 207
    :cond_0
    return-void
.end method

.method notifyTransactionFinished(Lcom/android/mms/transaction/Transaction;)V
    .locals 3
    .parameter "tx"

    .prologue
    .line 171
    iget-object v1, p0, Lcom/android/mms/transaction/Scheduler;->mServiceHandler:Landroid/os/Handler;

    const/16 v2, 0x4be

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 172
    .local v0, m:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 174
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/mms/transaction/Scheduler;->keepWakeLockOn(Z)V

    .line 177
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/Scheduler;->removeScheduler(Lcom/android/mms/transaction/Transaction;)V

    .line 178
    return-void
.end method

.method notifyTransactionStarted(Lcom/android/mms/transaction/Transaction;)V
    .locals 3
    .parameter "tx"

    .prologue
    .line 163
    iget-object v1, p0, Lcom/android/mms/transaction/Scheduler;->mServiceHandler:Landroid/os/Handler;

    const/16 v2, 0x4bd

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 164
    .local v0, m:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 166
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/mms/transaction/Scheduler;->keepWakeLockOn(Z)V

    .line 168
    return-void
.end method

.method public removeScheduler(Lcom/android/mms/transaction/Transaction;)V
    .locals 2
    .parameter "tx"

    .prologue
    .line 156
    iget-object v0, p1, Lcom/android/mms/transaction/Transaction;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/mms/transaction/Scheduler;->mWorkHandler:Landroid/os/Handler;

    iget-object v1, p1, Lcom/android/mms/transaction/Transaction;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 158
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/mms/transaction/Transaction;->mRunnable:Ljava/lang/Runnable;

    .line 159
    return-void
.end method

.method public schedule(Lcom/android/mms/transaction/Transaction;J)V
    .locals 4
    .parameter "tx"
    .parameter "timeToWait"

    .prologue
    .line 86
    new-instance v0, Lcom/android/mms/transaction/Scheduler$1;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/transaction/Scheduler$1;-><init>(Lcom/android/mms/transaction/Scheduler;Lcom/android/mms/transaction/Transaction;)V

    .line 141
    .local v0, r:Ljava/lang/Runnable;
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/Scheduler;->removeScheduler(Lcom/android/mms/transaction/Transaction;)V

    .line 142
    iput-object v0, p1, Lcom/android/mms/transaction/Transaction;->mRunnable:Ljava/lang/Runnable;

    .line 145
    iget-object v1, p0, Lcom/android/mms/transaction/Scheduler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x64

    add-long/2addr v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 147
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/android/mms/transaction/Scheduler;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/android/mms/transaction/Scheduler;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
