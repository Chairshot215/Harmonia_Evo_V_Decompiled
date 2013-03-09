.class public Lcom/htc/laputa/engine/util/RenderStillImageCmd;
.super Ljava/lang/Object;
.source "RenderStillImageCmd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/laputa/engine/util/RenderStillImageCmd$IRenderCallback;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/htc/laputa/engine/util/Service$Adapter;

.field private mMainThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/laputa/engine/util/ServiceConnectionException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/laputa/engine/util/RenderStillImageCmd;->mAdapter:Lcom/htc/laputa/engine/util/Service$Adapter;

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/laputa/engine/util/RenderStillImageCmd;->mMainThreadHandler:Landroid/os/Handler;

    .line 45
    new-instance v0, Lcom/htc/laputa/engine/util/Service$Adapter;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/htc/laputa/engine/util/Service$Adapter;-><init>(I)V

    iput-object v0, p0, Lcom/htc/laputa/engine/util/RenderStillImageCmd;->mAdapter:Lcom/htc/laputa/engine/util/Service$Adapter;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/htc/laputa/engine/util/RenderStillImageCmd;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/laputa/engine/util/RenderStillImageCmd;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized cancel(I)V
    .locals 2
    .parameter "taskId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/laputa/engine/util/ServiceConnectionException;
        }
    .end annotation

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/laputa/engine/util/RenderStillImageCmd;->mAdapter:Lcom/htc/laputa/engine/util/Service$Adapter;

    if-nez v0, :cond_0

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cancel() failed due to mAdapter is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :goto_0
    monitor-exit p0

    return-void

    .line 96
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/htc/laputa/engine/util/RenderStillImageCmd;->mAdapter:Lcom/htc/laputa/engine/util/Service$Adapter;

    invoke-virtual {v0, p1}, Lcom/htc/laputa/engine/util/Service$Adapter;->cancel(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized exec(Landroid/os/Bundle;Lcom/htc/laputa/engine/util/RenderStillImageCmd$IRenderCallback;)I
    .locals 2
    .parameter "param"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/laputa/engine/util/ServiceConnectionException;
        }
    .end annotation

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/laputa/engine/util/RenderStillImageCmd;->mAdapter:Lcom/htc/laputa/engine/util/Service$Adapter;

    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exec() failed due to mAdapter is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    const/4 v0, -0x1

    .line 64
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/htc/laputa/engine/util/RenderStillImageCmd;->mAdapter:Lcom/htc/laputa/engine/util/Service$Adapter;

    new-instance v1, Lcom/htc/laputa/engine/util/RenderStillImageCmd$1;

    invoke-direct {v1, p0, p2}, Lcom/htc/laputa/engine/util/RenderStillImageCmd$1;-><init>(Lcom/htc/laputa/engine/util/RenderStillImageCmd;Lcom/htc/laputa/engine/util/RenderStillImageCmd$IRenderCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/htc/laputa/engine/util/Service$Adapter;->runA(Landroid/os/Bundle;Lcom/htc/laputa/engine/util/Service$Adapter$RetListener;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
