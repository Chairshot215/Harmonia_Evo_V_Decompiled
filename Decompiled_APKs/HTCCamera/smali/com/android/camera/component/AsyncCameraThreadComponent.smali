.class public abstract Lcom/android/camera/component/AsyncCameraThreadComponent;
.super Lcom/android/camera/component/CameraThreadComponent;
.source "AsyncCameraThreadComponent.java"


# instance fields
.field private final m_WorkerThread:Lcom/android/camera/WorkerThread;


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/component/CameraThreadComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;)V

    new-instance v0, Lcom/android/camera/component/AsyncCameraThreadComponent$1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Worker Thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p3}, Lcom/android/camera/component/AsyncCameraThreadComponent$1;-><init>(Lcom/android/camera/component/AsyncCameraThreadComponent;Ljava/lang/String;Lcom/android/camera/CameraThread;)V

    iput-object v0, p0, Lcom/android/camera/component/AsyncCameraThreadComponent;->m_WorkerThread:Lcom/android/camera/WorkerThread;

    iget-object v0, p0, Lcom/android/camera/component/AsyncCameraThreadComponent;->m_WorkerThread:Lcom/android/camera/WorkerThread;

    invoke-virtual {v0}, Lcom/android/camera/WorkerThread;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/AsyncCameraThreadComponent;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/AsyncCameraThreadComponent;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/AsyncCameraThreadComponent;->m_WorkerThread:Lcom/android/camera/WorkerThread;

    invoke-virtual {v0}, Lcom/android/camera/WorkerThread;->exit()V

    invoke-super {p0}, Lcom/android/camera/component/CameraThreadComponent;->deinitializeOverride()V

    return-void
.end method

.method protected final getWorkerThread()Lcom/android/camera/WorkerThread;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/AsyncCameraThreadComponent;->m_WorkerThread:Lcom/android/camera/WorkerThread;

    return-object v0
.end method

.method protected handleAsyncMessage(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method protected final hasAsyncMessages(I)Z
    .locals 2

    iget-object v1, p0, Lcom/android/camera/component/AsyncCameraThreadComponent;->m_WorkerThread:Lcom/android/camera/WorkerThread;

    invoke-virtual {v1}, Lcom/android/camera/WorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected final isWorkerThreadRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/AsyncCameraThreadComponent;->m_WorkerThread:Lcom/android/camera/WorkerThread;

    invoke-virtual {v0}, Lcom/android/camera/WorkerThread;->isRunning()Z

    move-result v0

    return v0
.end method

.method protected onWorkerThreadRunning()V
    .locals 0

    return-void
.end method

.method protected final removeAsyncMessages(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/camera/component/AsyncCameraThreadComponent;->m_WorkerThread:Lcom/android/camera/WorkerThread;

    invoke-virtual {v1}, Lcom/android/camera/WorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method protected final sendAsyncMessage(I)Z
    .locals 7

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v3, v2

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/component/AsyncCameraThreadComponent;->sendAsyncMessage(IIILjava/lang/Object;IZ)Z

    move-result v0

    return v0
.end method

.method protected final sendAsyncMessage(II)Z
    .locals 7

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v3, v2

    move v5, p2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/component/AsyncCameraThreadComponent;->sendAsyncMessage(IIILjava/lang/Object;IZ)Z

    move-result v0

    return v0
.end method

.method protected final sendAsyncMessage(IIILjava/lang/Object;)Z
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/component/AsyncCameraThreadComponent;->sendAsyncMessage(IIILjava/lang/Object;IZ)Z

    move-result v0

    return v0
.end method

.method protected final sendAsyncMessage(IIILjava/lang/Object;IZ)Z
    .locals 4

    iget-object v2, p0, Lcom/android/camera/component/AsyncCameraThreadComponent;->m_WorkerThread:Lcom/android/camera/WorkerThread;

    invoke-virtual {v2}, Lcom/android/camera/WorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    if-eqz p6, :cond_1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    if-gtz p5, :cond_2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v2

    goto :goto_0

    :cond_2
    int-to-long v2, p5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v2

    goto :goto_0
.end method

.method protected final sendAsyncMessage(IZ)Z
    .locals 7

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v3, v2

    move v5, v2

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/component/AsyncCameraThreadComponent;->sendAsyncMessage(IIILjava/lang/Object;IZ)Z

    move-result v0

    return v0
.end method
