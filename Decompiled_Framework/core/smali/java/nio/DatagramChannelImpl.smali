.class Ljava/nio/DatagramChannelImpl;
.super Ljava/nio/channels/DatagramChannel;
.source "DatagramChannelImpl.java"

# interfaces
.implements Ljava/nio/FileDescriptorChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;
    }
.end annotation


# instance fields
.field connectAddress:Ljava/net/InetSocketAddress;

.field connected:Z

.field private final fd:Ljava/io/FileDescriptor;

.field isBound:Z

.field private localPort:I

.field private final readLock:Ljava/lang/Object;

.field private socket:Ljava/net/DatagramSocket;

.field private final writeLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/nio/channels/DatagramChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    iput-object v2, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    iput-object v2, p0, Ljava/nio/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    iput-boolean v1, p0, Ljava/nio/DatagramChannelImpl;->connected:Z

    iput-boolean v1, p0, Ljava/nio/DatagramChannelImpl;->isBound:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    return-void
.end method

.method protected constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Ljava/nio/channels/DatagramChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    iput-boolean v1, p0, Ljava/nio/DatagramChannelImpl;->connected:Z

    iput-boolean v1, p0, Ljava/nio/DatagramChannelImpl;->isBound:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    invoke-static {v1}, Llibcore/io/IoBridge;->socket(Z)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    return-void
.end method

.method private checkNotNull(Ljava/nio/ByteBuffer;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method private checkOpen()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method private checkOpenConnected()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/nio/DatagramChannelImpl;->checkOpen()V

    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method private readImpl(Ljava/nio/ByteBuffer;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v10, p0, Ljava/nio/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v10

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->begin()V

    const/4 v0, 0x0

    iget-object v1, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->isConnected()Z

    move-result v5

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Llibcore/io/IoBridge;->recvfrom(ZLjava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/DatagramPacket;Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-lez v7, :cond_0

    :goto_0
    :try_start_1
    invoke-virtual {p0, v9}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    monitor-exit v10

    move v0, v7

    :goto_1
    return v0

    :cond_0
    move v9, v8

    goto :goto_0

    :catch_0
    move-exception v6

    if-lez v7, :cond_1

    :goto_2
    invoke-virtual {p0, v9}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    monitor-exit v10

    move v0, v8

    goto :goto_1

    :cond_1
    move v9, v8

    goto :goto_2

    :catchall_0
    move-exception v0

    if-lez v7, :cond_2

    move v8, v9

    :cond_2
    invoke-virtual {p0, v8}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method private receiveDirectImpl(Ljava/nio/ByteBuffer;Z)Ljava/net/SocketAddress;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v8, 0x0

    new-instance v4, Ljava/net/DatagramPacket;

    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    invoke-direct {v4, v1, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    const/4 v7, 0x0

    :cond_0
    iget-object v1, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->isConnected()Z

    move-result v5

    move-object v2, p1

    move v3, v0

    invoke-static/range {v0 .. v5}, Llibcore/io/IoBridge;->recvfrom(ZLjava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/DatagramPacket;Z)I

    move-result v7

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_2

    if-lez v7, :cond_1

    add-int v0, v6, v7

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_1
    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getSocketAddress()Ljava/net/SocketAddress;

    move-result-object v8

    :goto_0
    return-object v8

    :cond_2
    if-nez p2, :cond_0

    goto :goto_0
.end method

.method private receiveImpl(Ljava/nio/ByteBuffer;Z)Ljava/net/SocketAddress;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v10, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v6, Ljava/net/DatagramPacket;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-direct {v6, v1, v2, v3}, Ljava/net/DatagramPacket;-><init>([BII)V

    :cond_0
    :goto_0
    iget-object v1, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v2

    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v3

    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->isConnected()Z

    move-result v7

    move v5, v0

    invoke-static/range {v0 .. v7}, Llibcore/io/IoBridge;->recvfrom(ZLjava/io/FileDescriptor;[BIIILjava/net/DatagramPacket;Z)I

    move-result v9

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_4

    if-lez v9, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_3

    add-int v0, v8, v9

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_1
    :goto_1
    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getSocketAddress()Ljava/net/SocketAddress;

    move-result-object v10

    :goto_2
    return-object v10

    :cond_2
    new-instance v6, Ljava/net/DatagramPacket;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-direct {v6, v1, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    goto :goto_0

    :cond_3
    invoke-virtual {v6}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v1

    invoke-virtual {p1, v1, v0, v9}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_4
    if-nez p2, :cond_0

    goto :goto_2
.end method

.method private writeImpl(Ljava/nio/ByteBuffer;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Ljava/nio/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->begin()V

    iget-object v1, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v1, p1, v5, v6, v7}, Llibcore/io/IoBridge;->sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    :goto_0
    :try_start_1
    invoke-virtual {p0, v2}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    monitor-exit v4

    return v0

    :cond_0
    move v2, v3

    goto :goto_0

    :catchall_0
    move-exception v1

    if-lez v0, :cond_1

    :goto_1
    invoke-virtual {p0, v2}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    :cond_1
    move v2, v3

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/nio/DatagramChannelImpl;->checkOpen()V

    iget-boolean v1, p0, Ljava/nio/DatagramChannelImpl;->connected:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    :try_start_1
    invoke-static {p1}, Ljava/nio/SocketChannelImpl;->validateAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->begin()V

    iget-object v1, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    invoke-static {v1, v2, v3}, Llibcore/io/IoBridge;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v1, 0x1

    :try_start_3
    invoke-virtual {p0, v1}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    :goto_0
    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/nio/DatagramChannelImpl;->connected:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/nio/DatagramChannelImpl;->isBound:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p0

    :catch_0
    move-exception v1

    const/4 v1, 0x1

    :try_start_4
    invoke-virtual {p0, v1}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    goto :goto_0

    :catchall_1
    move-exception v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized disconnect()Ljava/nio/channels/DatagramChannel;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->isOpen()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v1, p0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_1
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Ljava/nio/DatagramChannelImpl;->connected:Z

    const/4 v2, 0x0

    iput-object v2, p0, Ljava/nio/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v3, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v4, Ljava/net/InetAddress;->UNSPECIFIED:Ljava/net/InetAddress;

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Llibcore/io/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Llibcore/io/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v2, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    if-eqz v2, :cond_2

    iget-object v2, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->disconnect()V

    :cond_2
    move-object v1, p0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getFD()Ljava/io/FileDescriptor;
    .locals 1

    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->getSocketLocalAddress(Ljava/io/FileDescriptor;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized implCloseSelectableChannel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Ljava/nio/DatagramChannelImpl;->connected:Z

    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected implConfigureBlocking(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->blockingLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized isConnected()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljava/nio/DatagramChannelImpl;->connected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->checkWritable()V

    invoke-direct {p0}, Ljava/nio/DatagramChannelImpl;->checkOpenConnected()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-direct {p0, p1}, Ljava/nio/DatagramChannelImpl;->readImpl(Ljava/nio/ByteBuffer;)I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v0, v4, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/nio/DatagramChannelImpl;->readImpl(Ljava/nio/ByteBuffer;)I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p1, v0, v3, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v7, p1

    invoke-static {v7, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    invoke-direct {p0}, Ljava/nio/DatagramChannelImpl;->checkOpenConnected()V

    const/4 v7, 0x1

    invoke-static {p1, p2, p3, v7}, Ljava/nio/FileChannelImpl;->calculateTotalRemaining([Ljava/nio/ByteBuffer;IIZ)I

    move-result v6

    if-nez v6, :cond_0

    const-wide/16 v7, 0x0

    :goto_0
    return-wide v7

    :cond_0
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-direct {p0, v4}, Ljava/nio/DatagramChannelImpl;->readImpl(Ljava/nio/ByteBuffer;)I

    move-result v5

    move v1, v5

    move v0, p2

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    :goto_1
    if-lez v1, :cond_1

    aget-object v7, p1, v0

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget-object v7, p1, v0

    sub-int v8, v5, v1

    invoke-virtual {v7, v3, v8, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr v1, v2

    goto :goto_1

    :cond_1
    int-to-long v7, v5

    goto :goto_0
.end method

.method public receive(Ljava/nio/ByteBuffer;)Ljava/net/SocketAddress;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->checkWritable()V

    invoke-direct {p0}, Ljava/nio/DatagramChannelImpl;->checkOpen()V

    iget-boolean v6, p0, Ljava/nio/DatagramChannelImpl;->isBound:Z

    if-nez v6, :cond_0

    move-object v2, v5

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->begin()V

    iget-object v7, p0, Ljava/nio/DatagramChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->isBlocking()Z

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-direct {p0, p1, v1}, Ljava/nio/DatagramChannelImpl;->receiveImpl(Ljava/nio/ByteBuffer;Z)Ljava/net/SocketAddress;

    move-result-object v2

    :goto_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    :goto_2
    invoke-virtual {p0, v3}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-direct {p0, p1, v1}, Ljava/nio/DatagramChannelImpl;->receiveDirectImpl(Ljava/nio/ByteBuffer;Z)Ljava/net/SocketAddress;

    move-result-object v2

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    if-eqz v2, :cond_3

    :goto_3
    invoke-virtual {p0, v3}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    move-object v2, v5

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_2

    :cond_3
    move v3, v4

    goto :goto_3

    :catchall_1
    move-exception v5

    if-eqz v2, :cond_4

    :goto_4
    invoke-virtual {p0, v3}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    throw v5

    :cond_4
    move v3, v4

    goto :goto_4
.end method

.method public send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Ljava/nio/DatagramChannelImpl;->checkNotNull(Ljava/nio/ByteBuffer;)V

    invoke-direct {p0}, Ljava/nio/DatagramChannelImpl;->checkOpen()V

    move-object v0, p2

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    :cond_0
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Ljava/nio/DatagramChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v3, v0}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :cond_1
    iget-object v6, p0, Ljava/nio/DatagramChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v6

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/DatagramChannelImpl;->begin()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v3, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v9

    invoke-static {v3, p1, v7, v8, v9}, Llibcore/io/IoBridge;->sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I

    move-result v2

    if-lez v2, :cond_2

    add-int v3, v1, v2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-ltz v2, :cond_3

    :goto_0
    :try_start_1
    invoke-virtual {p0, v4}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    monitor-exit v6

    return v2

    :cond_3
    move v4, v5

    goto :goto_0

    :catchall_0
    move-exception v3

    if-ltz v2, :cond_4

    :goto_1
    invoke-virtual {p0, v4}, Ljava/nio/DatagramChannelImpl;->end(Z)V

    throw v3

    :catchall_1
    move-exception v3

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    :cond_4
    move v4, v5

    goto :goto_1
.end method

.method public declared-synchronized socket()Ljava/net/DatagramSocket;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    if-nez v0, :cond_0

    new-instance v0, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;

    new-instance v1, Ljava/net/PlainDatagramSocketImpl;

    iget-object v2, p0, Ljava/nio/DatagramChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget v3, p0, Ljava/nio/DatagramChannelImpl;->localPort:I

    invoke-direct {v1, v2, v3}, Ljava/net/PlainDatagramSocketImpl;-><init>(Ljava/io/FileDescriptor;I)V

    invoke-direct {v0, v1, p0}, Ljava/nio/DatagramChannelImpl$DatagramSocketAdapter;-><init>(Ljava/net/DatagramSocketImpl;Ljava/nio/DatagramChannelImpl;)V

    iput-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;

    :cond_0
    iget-object v0, p0, Ljava/nio/DatagramChannelImpl;->socket:Ljava/net/DatagramSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/nio/DatagramChannelImpl;->checkNotNull(Ljava/nio/ByteBuffer;)V

    invoke-direct {p0}, Ljava/nio/DatagramChannelImpl;->checkOpenConnected()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Ljava/nio/DatagramChannelImpl;->writeImpl(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public write([Ljava/nio/ByteBuffer;II)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v8, p1

    invoke-static {v8, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    invoke-direct {p0}, Ljava/nio/DatagramChannelImpl;->checkOpenConnected()V

    const/4 v8, 0x0

    invoke-static {p1, p2, p3, v8}, Ljava/nio/FileChannelImpl;->calculateTotalRemaining([Ljava/nio/ByteBuffer;IIZ)I

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v8, 0x0

    :goto_0
    return-wide v8

    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    move v5, p2

    :goto_1
    add-int v8, p3, p2

    if-ge v5, v8, :cond_1

    aget-object v4, p1, v5

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-direct {p0, v6}, Ljava/nio/DatagramChannelImpl;->writeImpl(Ljava/nio/ByteBuffer;)I

    move-result v3

    move v5, p2

    move v7, v3

    :goto_2
    if-lez v3, :cond_2

    aget-object v4, p1, v5

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {v4, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 v5, v5, 0x1

    sub-int/2addr v3, v1

    goto :goto_2

    :cond_2
    int-to-long v8, v7

    goto :goto_0
.end method
