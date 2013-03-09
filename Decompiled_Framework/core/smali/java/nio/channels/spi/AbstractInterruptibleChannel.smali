.class public abstract Ljava/nio/channels/spi/AbstractInterruptibleChannel;
.super Ljava/lang/Object;
.source "AbstractInterruptibleChannel.java"

# interfaces
.implements Ljava/nio/channels/Channel;
.implements Ljava/nio/channels/InterruptibleChannel;


# instance fields
.field private volatile closed:Z

.field private final interruptAndCloseRunnable:Ljava/lang/Runnable;

.field volatile interrupted:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->closed:Z

    iput-boolean v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->interrupted:Z

    new-instance v0, Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;

    invoke-direct {v0, p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel$1;-><init>(Ljava/nio/channels/spi/AbstractInterruptibleChannel;)V

    iput-object v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->interruptAndCloseRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method protected final begin()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->interruptAndCloseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->pushInterruptAction$(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->closed:Z

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->closed:Z

    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->implCloseChannel()V

    :cond_0
    monitor-exit p0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final end(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/AsynchronousCloseException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->interruptAndCloseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->popInterruptAction$(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->interrupted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->interrupted:Z

    new-instance v0, Ljava/nio/channels/ClosedByInterruptException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedByInterruptException;-><init>()V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->closed:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v0}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    throw v0

    :cond_1
    return-void
.end method

.method protected abstract implCloseChannel()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final declared-synchronized isOpen()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
