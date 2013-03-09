.class public abstract Ljava/nio/channels/spi/AbstractSelectableChannel;
.super Ljava/nio/channels/SelectableChannel;
.source "AbstractSelectableChannel.java"


# instance fields
.field private final blockingLock:Ljava/lang/Object;

.field isBlocking:Z

.field private keyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/nio/channels/SelectionKey;",
            ">;"
        }
    .end annotation
.end field

.field private final provider:Ljava/nio/channels/spi/SelectorProvider;


# direct methods
.method protected constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 1

    invoke-direct {p0}, Ljava/nio/channels/SelectableChannel;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyList:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->blockingLock:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->isBlocking:Z

    iput-object p1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->provider:Ljava/nio/channels/spi/SelectorProvider;

    return-void
.end method

.method private declared-synchronized containsValidKeys()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isValid()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    monitor-exit p0

    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public final blockingLock()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->blockingLock:Ljava/lang/Object;

    return-object v0
.end method

.method public final configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    :cond_0
    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->blockingLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->isBlocking:Z

    if-ne v0, p1, :cond_1

    monitor-exit v1

    :goto_0
    return-object p0

    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->containsValidKeys()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v0}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/nio/channels/spi/AbstractSelectableChannel;->implConfigureBlocking(Z)V

    iput-boolean p1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->isBlocking:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized deregister(Ljava/nio/channels/SelectionKey;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized implCloseChannel()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->implCloseSelectableChannel()V

    iget-object v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_1
    monitor-exit p0

    return-void
.end method

.method protected abstract implCloseSelectableChannel()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract implConfigureBlocking(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final isBlocking()Z
    .locals 2

    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->blockingLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->isBlocking:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final declared-synchronized isRegistered()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

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

.method public final declared-synchronized keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->selector()Ljava/nio/channels/Selector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-ne v2, p1, :cond_0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final provider()Ljava/nio/channels/spi/SelectorProvider;
    .locals 1

    iget-object v0, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->provider:Ljava/nio/channels/spi/SelectorProvider;

    return-object v0
.end method

.method public final register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v1

    :cond_0
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->validOps()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p2

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_1
    iget-object v2, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->blockingLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->isBlocking:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v1}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v1

    if-nez v1, :cond_4

    if-nez p2, :cond_3

    new-instance v1, Ljava/nio/channels/IllegalSelectorException;

    invoke-direct {v1}, Ljava/nio/channels/IllegalSelectorException;-><init>()V

    throw v1

    :cond_3
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_4
    invoke-virtual {p0, p1}, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    if-nez v0, :cond_5

    check-cast p1, Ljava/nio/channels/spi/AbstractSelector;

    invoke-virtual {p1, p0, p2, p3}, Ljava/nio/channels/spi/AbstractSelector;->register(Ljava/nio/channels/spi/AbstractSelectableChannel;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    iget-object v1, p0, Ljava/nio/channels/spi/AbstractSelectableChannel;->keyList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    monitor-exit v2

    return-object v0

    :cond_5
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v1, Ljava/nio/channels/CancelledKeyException;

    invoke-direct {v1}, Ljava/nio/channels/CancelledKeyException;-><init>()V

    throw v1

    :cond_6
    invoke-virtual {v0, p2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0, p3}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
