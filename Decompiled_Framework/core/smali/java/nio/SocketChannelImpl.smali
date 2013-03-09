.class Ljava/nio/SocketChannelImpl;
.super Ljava/nio/channels/SocketChannel;
.source "SocketChannelImpl.java"

# interfaces
.implements Ljava/nio/FileDescriptorChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/SocketChannelImpl$SocketChannelInputStream;,
        Ljava/nio/SocketChannelImpl$SocketChannelOutputStream;,
        Ljava/nio/SocketChannelImpl$SocketAdapter;
    }
.end annotation


# static fields
.field private static final SOCKET_STATUS_CLOSED:I = 0x3

.field private static final SOCKET_STATUS_CONNECTED:I = 0x2

.field private static final SOCKET_STATUS_PENDING:I = 0x1

.field private static final SOCKET_STATUS_UNCONNECTED:I = 0x0

.field private static final SOCKET_STATUS_UNINITIALIZED:I = -0x1


# instance fields
.field private connectAddress:Ljava/net/InetSocketAddress;

.field private final fd:Ljava/io/FileDescriptor;

.field private volatile isBound:Z

.field private localAddress:Ljava/net/InetAddress;

.field private localPort:I

.field private final readLock:Ljava/lang/Object;

.field private socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

.field private status:I

.field private final writeLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/nio/SocketChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/spi/SelectorProvider;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Ljava/nio/channels/SocketChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->localAddress:Ljava/net/InetAddress;

    const/4 v0, -0x1

    iput v0, p0, Ljava/nio/SocketChannelImpl;->status:I

    iput-boolean v1, p0, Ljava/nio/SocketChannelImpl;->isBound:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->readLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    iput v1, p0, Ljava/nio/SocketChannelImpl;->status:I

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Llibcore/io/IoBridge;->socket(Z)Ljava/io/FileDescriptor;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    return-void

    :cond_0
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    goto :goto_0
.end method

.method static synthetic access$000(Ljava/nio/SocketChannelImpl;)Z
    .locals 1

    iget-boolean v0, p0, Ljava/nio/SocketChannelImpl;->isBound:Z

    return v0
.end method

.method static synthetic access$002(Ljava/nio/SocketChannelImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Ljava/nio/SocketChannelImpl;->isBound:Z

    return p1
.end method

.method static synthetic access$100(Ljava/nio/SocketChannelImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/nio/SocketChannelImpl;->initLocalAddressAndPort()V

    return-void
.end method

.method static synthetic access$200(Ljava/nio/SocketChannelImpl;)I
    .locals 1

    iget v0, p0, Ljava/nio/SocketChannelImpl;->status:I

    return v0
.end method

.method static synthetic access$202(Ljava/nio/SocketChannelImpl;I)I
    .locals 0

    iput p1, p0, Ljava/nio/SocketChannelImpl;->status:I

    return p1
.end method

.method private declared-synchronized checkOpenConnected()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized checkUnconnected()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget v0, p0, Ljava/nio/SocketChannelImpl;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/nio/channels/AlreadyConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/AlreadyConnectedException;-><init>()V

    throw v0

    :cond_1
    iget v0, p0, Ljava/nio/SocketChannelImpl;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/nio/channels/ConnectionPendingException;

    invoke-direct {v0}, Ljava/nio/channels/ConnectionPendingException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void
.end method

.method private initLocalAddressAndPort()V
    .locals 5

    :try_start_0
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v4, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v3, v4}, Llibcore/io/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    iput-object v3, p0, Ljava/nio/SocketChannelImpl;->localAddress:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    iput v3, p0, Ljava/nio/SocketChannelImpl;->localPort:I

    iget-object v3, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    invoke-virtual {v3}, Ljava/nio/SocketChannelImpl$SocketAdapter;->socketImpl()Ljava/net/PlainSocketImpl;

    move-result-object v3

    iget v4, p0, Ljava/nio/SocketChannelImpl;->localPort:I

    invoke-virtual {v3, v4}, Ljava/net/PlainSocketImpl;->initLocalPort(I)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method private readImpl(Ljava/nio/ByteBuffer;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v9, p0, Ljava/nio/SocketChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v9

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->begin()V

    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Llibcore/io/IoBridge;->recvfrom(ZLjava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/DatagramPacket;Z)I

    move-result v6

    if-lez v6, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v6

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_2

    if-lez v6, :cond_3

    :goto_0
    invoke-virtual {p0, v7}, Ljava/nio/SocketChannelImpl;->end(Z)V

    :cond_2
    monitor-exit v9

    return v6

    :cond_3
    move v7, v8

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v1

    if-eqz v1, :cond_4

    if-lez v6, :cond_5

    move v1, v7

    :goto_1
    invoke-virtual {p0, v1}, Ljava/nio/SocketChannelImpl;->end(Z)V

    :cond_4
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_5
    move v1, v8

    goto :goto_1
.end method

.method static validateAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;
    .locals 2

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_0
    instance-of v1, p0, Ljava/net/InetSocketAddress;

    if-nez v1, :cond_1

    new-instance v1, Ljava/nio/channels/UnsupportedAddressTypeException;

    invoke-direct {v1}, Ljava/nio/channels/UnsupportedAddressTypeException;-><init>()V

    throw v1

    :cond_1
    move-object v0, p0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/nio/channels/UnresolvedAddressException;

    invoke-direct {v1}, Ljava/nio/channels/UnresolvedAddressException;-><init>()V

    throw v1

    :cond_2
    return-object v0
.end method

.method private writeImpl(Ljava/nio/ByteBuffer;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v4, p0, Ljava/nio/SocketChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->begin()V

    :cond_1
    iget-object v2, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v2, p1, v5, v6, v7}, Llibcore/io/IoBridge;->sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    :try_start_2
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v2

    if-eqz v2, :cond_3

    if-ltz v0, :cond_4

    :goto_1
    invoke-virtual {p0, v3}, Ljava/nio/SocketChannelImpl;->end(Z)V

    :cond_3
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_4
    move v3, v1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_3
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v5

    if-eqz v5, :cond_6

    if-ltz v0, :cond_5

    move v1, v3

    :cond_5
    invoke-virtual {p0, v1}, Ljava/nio/SocketChannelImpl;->end(Z)V

    :cond_6
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method


# virtual methods
.method public connect(Ljava/net/SocketAddress;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/nio/SocketChannelImpl;->checkUnconnected()V

    invoke-static {p1}, Ljava/nio/SocketChannelImpl;->validateAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    invoke-virtual {v3}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v3

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->begin()V

    :cond_1
    iget-object v5, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v5, v3, v4}, Llibcore/io/IoBridge;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)Z

    move-result v1

    iput-boolean v1, p0, Ljava/nio/SocketChannelImpl;->isBound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v1}, Ljava/nio/SocketChannelImpl;->end(Z)V

    :cond_2
    :goto_0
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl;->initLocalAddressAndPort()V

    iput-object v2, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    iget-object v5, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    if-eqz v5, :cond_3

    iget-object v5, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    invoke-virtual {v5}, Ljava/nio/SocketChannelImpl$SocketAdapter;->socketImpl()Ljava/net/PlainSocketImpl;

    move-result-object v5

    iget-object v6, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v6}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    iget-object v7, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v7}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/net/PlainSocketImpl;->initRemoteAddressAndPort(Ljava/net/InetAddress;I)V

    :cond_3
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v5

    if-eqz v5, :cond_8

    if-eqz v1, :cond_7

    const/4 v5, 0x2

    :goto_1
    iput v5, p0, Ljava/nio/SocketChannelImpl;->status:I

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v1

    :catch_0
    move-exception v0

    :try_start_2
    instance-of v5, v0, Ljava/net/ConnectException;

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v5, 0x1

    iput v5, p0, Ljava/nio/SocketChannelImpl;->status:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v1}, Ljava/nio/SocketChannelImpl;->end(Z)V

    goto :goto_0

    :cond_4
    :try_start_3
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->close()V

    const/4 v1, 0x1

    :cond_5
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v5

    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isBlocking()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p0, v1}, Ljava/nio/SocketChannelImpl;->end(Z)V

    :cond_6
    throw v5

    :cond_7
    const/4 v5, 0x0

    goto :goto_1

    :cond_8
    const/4 v5, 0x1

    :try_start_4
    iput v5, p0, Ljava/nio/SocketChannelImpl;->status:I

    goto :goto_2

    :catchall_1
    move-exception v5

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5
.end method

.method finishAccept()V
    .locals 0

    invoke-direct {p0}, Ljava/nio/SocketChannelImpl;->initLocalAddressAndPort()V

    return-void
.end method

.method public finishConnect()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isOpen()Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v4, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v4}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v4

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_0
    :try_start_1
    iget v5, p0, Ljava/nio/SocketChannelImpl;->status:I

    if-ne v5, v4, :cond_1

    monitor-exit p0

    :goto_0
    return v1

    :cond_1
    iget v5, p0, Ljava/nio/SocketChannelImpl;->status:I

    if-eq v5, v1, :cond_2

    new-instance v4, Ljava/nio/channels/NoConnectionPendingException;

    invoke-direct {v4}, Ljava/nio/channels/NoConnectionPendingException;-><init>()V

    throw v4

    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->begin()V

    iget-object v5, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    iget-object v5, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    iget-object v5, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v2, v3, v6, v7}, Llibcore/io/IoBridge;->isConnected(Ljava/io/FileDescriptor;Ljava/net/InetAddress;III)Z

    move-result v1

    iput-boolean v1, p0, Ljava/nio/SocketChannelImpl;->isBound:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_0

    invoke-virtual {p0, v1}, Ljava/nio/SocketChannelImpl;->end(Z)V

    monitor-enter p0

    if-eqz v1, :cond_4

    :goto_1
    :try_start_3
    iput v4, p0, Ljava/nio/SocketChannelImpl;->status:I

    iput-boolean v1, p0, Ljava/nio/SocketChannelImpl;->isBound:Z

    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->close()V

    const/4 v1, 0x1

    :cond_3
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v4

    invoke-virtual {p0, v1}, Ljava/nio/SocketChannelImpl;->end(Z)V

    throw v4

    :cond_4
    :try_start_5
    iget v4, p0, Ljava/nio/SocketChannelImpl;->status:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1
.end method

.method public getFD()Ljava/io/FileDescriptor;
    .locals 1

    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/nio/SocketChannelImpl;->isBound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->localAddress:Ljava/net/InetAddress;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    goto :goto_0
.end method

.method protected declared-synchronized implCloseSelectableChannel()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/nio/SocketChannelImpl;->status:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Ljava/nio/SocketChannelImpl;->status:I

    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    invoke-virtual {v0}, Ljava/nio/SocketChannelImpl$SocketAdapter;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;

    invoke-virtual {v0}, Ljava/nio/SocketChannelImpl$SocketAdapter;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

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

    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl;->blockingLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

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
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/nio/SocketChannelImpl;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

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

.method public declared-synchronized isConnectionPending()Z
    .locals 2

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget v1, p0, Ljava/nio/SocketChannelImpl;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v0, :cond_0

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

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->checkWritable()V

    invoke-direct {p0}, Ljava/nio/SocketChannelImpl;->checkOpenConnected()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Ljava/nio/SocketChannelImpl;->readImpl(Ljava/nio/ByteBuffer;)I

    move-result v0

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

    invoke-direct {p0}, Ljava/nio/SocketChannelImpl;->checkOpenConnected()V

    const/4 v7, 0x1

    invoke-static {p1, p2, p3, v7}, Ljava/nio/FileChannelImpl;->calculateTotalRemaining([Ljava/nio/ByteBuffer;IIZ)I

    move-result v6

    if-nez v6, :cond_0

    const-wide/16 v7, 0x0

    :goto_0
    return-wide v7

    :cond_0
    new-array v3, v6, [B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-direct {p0, v4}, Ljava/nio/SocketChannelImpl;->readImpl(Ljava/nio/ByteBuffer;)I

    move-result v5

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    if-lez v5, :cond_1

    move v1, v5

    move v0, p2

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

.method setBound(Z)V
    .locals 0

    iput-boolean p1, p0, Ljava/nio/SocketChannelImpl;->isBound:Z

    return-void
.end method

.method declared-synchronized setConnected()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    iput v0, p0, Ljava/nio/SocketChannelImpl;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized socket()Ljava/net/Socket;
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_1
    iget-object v3, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    if-eqz v3, :cond_0

    iget-object v3, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    iget-object v3, p0, Ljava/nio/SocketChannelImpl;->connectAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    :cond_0
    new-instance v3, Ljava/nio/SocketChannelImpl$SocketAdapter;

    new-instance v4, Ljava/net/PlainSocketImpl;

    iget-object v5, p0, Ljava/nio/SocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    iget v6, p0, Ljava/nio/SocketChannelImpl;->localPort:I

    invoke-direct {v4, v5, v6, v0, v2}, Ljava/net/PlainSocketImpl;-><init>(Ljava/io/FileDescriptor;ILjava/net/InetAddress;I)V

    invoke-direct {v3, v4, p0}, Ljava/nio/SocketChannelImpl$SocketAdapter;-><init>(Ljava/net/PlainSocketImpl;Ljava/nio/SocketChannelImpl;)V

    iput-object v3, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :try_start_2
    iget-object v3, p0, Ljava/nio/SocketChannelImpl;->socket:Ljava/nio/SocketChannelImpl$SocketAdapter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v3

    :catch_0
    move-exception v1

    const/4 v3, 0x0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl;->checkOpenConnected()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Ljava/nio/SocketChannelImpl;->writeImpl(Ljava/nio/ByteBuffer;)I

    move-result v0

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

    invoke-direct {p0}, Ljava/nio/SocketChannelImpl;->checkOpenConnected()V

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

    invoke-direct {p0, v6}, Ljava/nio/SocketChannelImpl;->writeImpl(Ljava/nio/ByteBuffer;)I

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
