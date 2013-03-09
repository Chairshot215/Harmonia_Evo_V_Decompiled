.class final Lcom/google/android/play/utils/LoggableHandler$1;
.super Landroid/os/HandlerThread;
.source "LoggableHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/play/utils/LoggableHandler;->startHandlerThread(Ljava/lang/String;I)Landroid/os/HandlerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$looperPrepared:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 40
    iput-object p3, p0, Lcom/google/android/play/utils/LoggableHandler$1;->val$looperPrepared:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0, p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 3

    .prologue
    .line 44
    iget-object v1, p0, Lcom/google/android/play/utils/LoggableHandler$1;->val$looperPrepared:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 45
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/utils/LoggableHandler$1;->val$looperPrepared:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 46
    iget-object v0, p0, Lcom/google/android/play/utils/LoggableHandler$1;->val$looperPrepared:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 47
    monitor-exit v1

    .line 48
    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
