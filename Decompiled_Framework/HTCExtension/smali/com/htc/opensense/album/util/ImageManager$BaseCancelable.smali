.class public abstract Lcom/htc/opensense/album/util/ImageManager$BaseCancelable;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Lcom/htc/opensense/album/util/ImageManager$ICancelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/util/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "BaseCancelable"
.end annotation


# instance fields
.field mCancel:Z

.field mFinished:Z

.field final synthetic this$0:Lcom/htc/opensense/album/util/ImageManager;


# direct methods
.method public constructor <init>(Lcom/htc/opensense/album/util/ImageManager;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseCancelable;->this$0:Lcom/htc/opensense/album/util/ImageManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseCancelable;->mCancel:Z

    iput-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseCancelable;->mFinished:Z

    return-void
.end method


# virtual methods
.method protected acknowledgeCancel()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseCancelable;->mFinished:Z

    iget-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseCancelable;->mCancel:Z

    if-nez v0, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseCancelable;->mCancel:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancel()Z
    .locals 3

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseCancelable;->mCancel:Z

    if-eqz v2, :cond_0

    monitor-exit p0

    :goto_0
    return v1

    :cond_0
    iget-boolean v2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseCancelable;->mFinished:Z

    if-eqz v2, :cond_1

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseCancelable;->mCancel:Z

    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseCancelable;->doCancelWork()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    :try_start_3
    monitor-exit p0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method protected checkCanceled()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/album/util/ImageManager$CanceledException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseCancelable;->mCancel:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/htc/opensense/album/util/ImageManager$CanceledException;

    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseCancelable;->this$0:Lcom/htc/opensense/album/util/ImageManager;

    invoke-direct {v0, v1}, Lcom/htc/opensense/album/util/ImageManager$CanceledException;-><init>(Lcom/htc/opensense/album/util/ImageManager;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public abstract doCancelWork()Z
.end method
