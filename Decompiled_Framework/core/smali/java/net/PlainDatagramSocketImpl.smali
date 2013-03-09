.class public Ljava/net/PlainDatagramSocketImpl;
.super Ljava/net/DatagramSocketImpl;
.source "PlainDatagramSocketImpl.java"


# instance fields
.field private connectedAddress:Ljava/net/InetAddress;

.field private connectedPort:I

.field private final guard:Ldalvik/system/CloseGuard;

.field private volatile isNativeConnected:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/net/DatagramSocketImpl;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->guard:Ldalvik/system/CloseGuard;

    const/4 v0, -0x1

    iput v0, p0, Ljava/net/PlainDatagramSocketImpl;->connectedPort:I

    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    iput-object v0, p0, Ljava/net/DatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;I)V
    .locals 2

    invoke-direct {p0}, Ljava/net/DatagramSocketImpl;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->guard:Ldalvik/system/CloseGuard;

    const/4 v0, -0x1

    iput v0, p0, Ljava/net/PlainDatagramSocketImpl;->connectedPort:I

    iput-object p1, p0, Ljava/net/DatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    iput p2, p0, Ljava/net/DatagramSocketImpl;->localPort:I

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private doRecv(Ljava/net/DatagramPacket;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Ljava/net/DatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    iget-boolean v7, p0, Ljava/net/PlainDatagramSocketImpl;->isNativeConnected:Z

    move v5, p2

    move-object v6, p1

    invoke-static/range {v0 .. v7}, Llibcore/io/IoBridge;->recvfrom(ZLjava/io/FileDescriptor;[BIIILjava/net/DatagramPacket;Z)I

    iget-boolean v0, p0, Ljava/net/PlainDatagramSocketImpl;->isNativeConnected:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Ljava/net/PlainDatagramSocketImpl;->updatePacketRecvAddress(Ljava/net/DatagramPacket;)V

    :cond_0
    return-void
.end method

.method private static makeGroupReq(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)Llibcore/io/StructGroupReq;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v0

    :goto_0
    new-instance v1, Llibcore/io/StructGroupReq;

    invoke-direct {v1, v0, p0}, Llibcore/io/StructGroupReq;-><init>(ILjava/net/InetAddress;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updatePacketRecvAddress(Ljava/net/DatagramPacket;)V
    .locals 1

    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->connectedAddress:Ljava/net/InetAddress;

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    iget v0, p0, Ljava/net/PlainDatagramSocketImpl;->connectedPort:I

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setPort(I)V

    return-void
.end method


# virtual methods
.method public bind(ILjava/net/InetAddress;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Ljava/net/DatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p2, p1}, Llibcore/io/IoBridge;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    if-eqz p1, :cond_0

    iput p1, p0, Ljava/net/DatagramSocketImpl;->localPort:I

    :goto_0
    const/16 v0, 0x20

    :try_start_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Ljava/net/PlainDatagramSocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Ljava/net/DatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->getSocketLocalPort(Ljava/io/FileDescriptor;)I

    move-result v0

    iput v0, p0, Ljava/net/DatagramSocketImpl;->localPort:I

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Ljava/net/DatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public connect(Ljava/net/InetAddress;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v1, p0, Ljava/net/DatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v1, p1, p2}, Llibcore/io/IoBridge;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)Z

    :try_start_0
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Ljava/net/PlainDatagramSocketImpl;->connectedAddress:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    iput p2, p0, Ljava/net/PlainDatagramSocketImpl;->connectedPort:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/net/PlainDatagramSocketImpl;->isNativeConnected:Z

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Host is unresolved: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public create()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Llibcore/io/IoBridge;->socket(Z)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Ljava/net/DatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    return-void
.end method

.method public disconnect()V
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v2, p0, Ljava/net/DatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v3, Ljava/net/InetAddress;->UNSPECIFIED:Ljava/net/InetAddress;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Llibcore/io/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, -0x1

    iput v1, p0, Ljava/net/PlainDatagramSocketImpl;->connectedPort:I

    const/4 v1, 0x0

    iput-object v1, p0, Ljava/net/PlainDatagramSocketImpl;->connectedAddress:Ljava/net/InetAddress;

    iput-boolean v5, p0, Ljava/net/PlainDatagramSocketImpl;->isNativeConnected:Z

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/net/PlainDatagramSocketImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_0
    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getOption(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Ljava/net/DatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1}, Llibcore/io/IoBridge;->getSocketOption(Ljava/io/FileDescriptor;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTTL()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/PlainDatagramSocketImpl;->getTimeToLive()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public getTimeToLive()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Ljava/net/PlainDatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public join(Ljava/net/InetAddress;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x13

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/net/PlainDatagramSocketImpl;->makeGroupReq(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)Llibcore/io/StructGroupReq;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/net/PlainDatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    return-void
.end method

.method public joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v1, p1, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_0

    check-cast p1, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    const/16 v1, 0x13

    invoke-static {v0, p2}, Ljava/net/PlainDatagramSocketImpl;->makeGroupReq(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)Llibcore/io/StructGroupReq;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/net/PlainDatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public leave(Ljava/net/InetAddress;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x14

    const/4 v1, 0x0

    invoke-static {p1, v1}, Ljava/net/PlainDatagramSocketImpl;->makeGroupReq(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)Llibcore/io/StructGroupReq;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/net/PlainDatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    return-void
.end method

.method public leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v1, p1, Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_0

    check-cast p1, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {v0, p2}, Ljava/net/PlainDatagramSocketImpl;->makeGroupReq(Ljava/net/InetAddress;Ljava/net/NetworkInterface;)Llibcore/io/StructGroupReq;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/net/PlainDatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected peek(Ljava/net/InetAddress;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/net/DatagramPacket;

    sget-object v2, Llibcore/util/EmptyArray;->BYTE:[B

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    invoke-virtual {p0, v0}, Ljava/net/PlainDatagramSocketImpl;->peekData(Ljava/net/DatagramPacket;)I

    move-result v1

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    iput-object v2, p1, Ljava/net/InetAddress;->ipaddress:[B

    return v1
.end method

.method public peekData(Ljava/net/DatagramPacket;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget v0, Llibcore/io/OsConstants;->MSG_PEEK:I

    invoke-direct {p0, p1, v0}, Ljava/net/PlainDatagramSocketImpl;->doRecv(Ljava/net/DatagramPacket;I)V

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v0

    return v0
.end method

.method public receive(Ljava/net/DatagramPacket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/net/PlainDatagramSocketImpl;->doRecv(Ljava/net/DatagramPacket;I)V

    return-void
.end method

.method public send(Ljava/net/DatagramPacket;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-boolean v0, p0, Ljava/net/PlainDatagramSocketImpl;->isNativeConnected:Z

    if-eqz v0, :cond_0

    move v6, v4

    :goto_0
    iget-boolean v0, p0, Ljava/net/PlainDatagramSocketImpl;->isNativeConnected:Z

    if-eqz v0, :cond_1

    const/4 v5, 0x0

    :goto_1
    iget-object v0, p0, Ljava/net/DatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v3

    invoke-static/range {v0 .. v6}, Llibcore/io/IoBridge;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getPort()I

    move-result v6

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    goto :goto_1
.end method

.method public setOption(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Ljava/net/DatagramSocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1, p2}, Llibcore/io/IoBridge;->setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V

    return-void
.end method

.method public setTTL(B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/net/PlainDatagramSocketImpl;->setTimeToLive(I)V

    return-void
.end method

.method public setTimeToLive(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x11

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/net/PlainDatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    return-void
.end method
