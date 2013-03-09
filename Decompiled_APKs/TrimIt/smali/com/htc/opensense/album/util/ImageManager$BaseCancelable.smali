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
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 168
    iput-object p1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseCancelable;->this$0:Lcom/htc/opensense/album/util/ImageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseCancelable;->mCancel:Z

    .line 170
    iput-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseCancelable;->mFinished:Z

    return-void
.end method


# virtual methods
.method protected acknowledgeCancel()V
    .locals 1

    .prologue
    .line 177
    monitor-enter p0

    .line 178
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseCancelable;->mFinished:Z

    .line 179
    iget-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseCancelable;->mCancel:Z

    if-nez v0, :cond_0

    .line 180
    monitor-exit p0

    .line 185
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseCancelable;->mCancel:Z

    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 184
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

    .prologue
    const/4 v1, 0x0

    .line 188
    monitor-enter p0

    .line 189
    :try_start_0
    iget-boolean v2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseCancelable;->mCancel:Z

    if-eqz v2, :cond_0

    .line 190
    monitor-exit p0

    .line 205
    :goto_0
    return v1

    .line 192
    :cond_0
    iget-boolean v2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseCancelable;->mFinished:Z

    if-eqz v2, :cond_1

    .line 193
    monitor-exit p0

    goto :goto_0

    .line 206
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 195
    :cond_1
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/htc/opensense/album/util/ImageManager$BaseCancelable;->mCancel:Z

    .line 196
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/ImageManager$BaseCancelable;->doCancelWork()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 199
    .local v1, retVal:Z
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 205
    :goto_1
    :try_start_3
    monitor-exit p0

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 202
    .local v0, ex:Ljava/lang/InterruptedException;
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

    .prologue
    .line 214
    monitor-enter p0

    .line 215
    :try_start_0
    iget-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager$BaseCancelable;->mCancel:Z

    if-eqz v0, :cond_0

    .line 216
    new-instance v0, Lcom/htc/opensense/album/util/ImageManager$CanceledException;

    iget-object v1, p0, Lcom/htc/opensense/album/util/ImageManager$BaseCancelable;->this$0:Lcom/htc/opensense/album/util/ImageManager;

    invoke-direct {v0, v1}, Lcom/htc/opensense/album/util/ImageManager$CanceledException;-><init>(Lcom/htc/opensense/album/util/ImageManager;)V

    throw v0

    .line 217
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

    .line 218
    return-void
.end method

.method public abstract doCancelWork()Z
.end method
