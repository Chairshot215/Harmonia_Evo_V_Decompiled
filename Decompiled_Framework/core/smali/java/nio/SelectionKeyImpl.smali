.class final Ljava/nio/SelectionKeyImpl;
.super Ljava/nio/channels/spi/AbstractSelectionKey;
.source "SelectionKeyImpl.java"


# instance fields
.field private channel:Ljava/nio/channels/spi/AbstractSelectableChannel;

.field private interestOps:I

.field private readyOps:I

.field private selector:Ljava/nio/SelectorImpl;


# direct methods
.method public constructor <init>(Ljava/nio/channels/spi/AbstractSelectableChannel;ILjava/lang/Object;Ljava/nio/SelectorImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/nio/channels/spi/AbstractSelectionKey;-><init>()V

    iput-object p1, p0, Ljava/nio/SelectionKeyImpl;->channel:Ljava/nio/channels/spi/AbstractSelectableChannel;

    iput p2, p0, Ljava/nio/SelectionKeyImpl;->interestOps:I

    iput-object p4, p0, Ljava/nio/SelectionKeyImpl;->selector:Ljava/nio/SelectorImpl;

    invoke-virtual {p0, p3}, Ljava/nio/SelectionKeyImpl;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private checkValid()V
    .locals 1

    invoke-virtual {p0}, Ljava/nio/SelectionKeyImpl;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/nio/channels/CancelledKeyException;

    invoke-direct {v0}, Ljava/nio/channels/CancelledKeyException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public channel()Ljava/nio/channels/SelectableChannel;
    .locals 1

    iget-object v0, p0, Ljava/nio/SelectionKeyImpl;->channel:Ljava/nio/channels/spi/AbstractSelectableChannel;

    return-object v0
.end method

.method public interestOps()I
    .locals 2

    invoke-direct {p0}, Ljava/nio/SelectionKeyImpl;->checkValid()V

    iget-object v0, p0, Ljava/nio/SelectionKeyImpl;->selector:Ljava/nio/SelectorImpl;

    iget-object v1, v0, Ljava/nio/SelectorImpl;->keysLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Ljava/nio/SelectionKeyImpl;->interestOps:I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public interestOps(I)Ljava/nio/channels/SelectionKey;
    .locals 2

    invoke-direct {p0}, Ljava/nio/SelectionKeyImpl;->checkValid()V

    invoke-virtual {p0}, Ljava/nio/SelectionKeyImpl;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->validOps()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/nio/SelectionKeyImpl;->selector:Ljava/nio/SelectorImpl;

    iget-object v1, v0, Ljava/nio/SelectorImpl;->keysLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Ljava/nio/SelectionKeyImpl;->interestOps:I

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method interestOpsNoCheck()I
    .locals 2

    iget-object v0, p0, Ljava/nio/SelectionKeyImpl;->selector:Ljava/nio/SelectorImpl;

    iget-object v1, v0, Ljava/nio/SelectorImpl;->keysLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Ljava/nio/SelectionKeyImpl;->interestOps:I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isConnected()Z
    .locals 1

    iget-object v0, p0, Ljava/nio/SelectionKeyImpl;->channel:Ljava/nio/channels/spi/AbstractSelectableChannel;

    instance-of v0, v0, Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/nio/SelectionKeyImpl;->channel:Ljava/nio/channels/spi/AbstractSelectableChannel;

    check-cast v0, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readyOps()I
    .locals 1

    invoke-direct {p0}, Ljava/nio/SelectionKeyImpl;->checkValid()V

    iget v0, p0, Ljava/nio/SelectionKeyImpl;->readyOps:I

    return v0
.end method

.method public selector()Ljava/nio/channels/Selector;
    .locals 1

    iget-object v0, p0, Ljava/nio/SelectionKeyImpl;->selector:Ljava/nio/SelectorImpl;

    return-object v0
.end method

.method setReadyOps(I)V
    .locals 0

    iput p1, p0, Ljava/nio/SelectionKeyImpl;->readyOps:I

    return-void
.end method
