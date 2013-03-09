.class public Ljava/net/MulticastSocket;
.super Ljava/net/DatagramSocket;
.source "MulticastSocket.java"


# instance fields
.field private setAddress:Ljava/net/InetAddress;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/net/DatagramSocket;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/MulticastSocket;->setReuseAddress(Z)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/net/DatagramSocket;-><init>(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/MulticastSocket;->setReuseAddress(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/net/SocketAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/MulticastSocket;->setReuseAddress(Z)V

    return-void
.end method

.method private checkJoinOrLeave(Ljava/net/InetAddress;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/MulticastSocket;->checkOpen()V

    invoke-virtual {p1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a multicast group: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private checkJoinOrLeave(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/MulticastSocket;->checkOpen()V

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "groupAddress == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No address associated with interface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    instance-of v1, p1, Ljava/net/InetSocketAddress;

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Group address not an InetSocketAddress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move-object v1, p1

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v1, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Group address has no address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual {v0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a multicast group: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    return-void
.end method


# virtual methods
.method declared-synchronized createSocket(ILjava/net/InetAddress;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v1, Ljava/net/MulticastSocket;->factory:Ljava/net/DatagramSocketImplFactory;

    if-eqz v1, :cond_0

    sget-object v1, Ljava/net/MulticastSocket;->factory:Ljava/net/DatagramSocketImplFactory;

    invoke-interface {v1}, Ljava/net/DatagramSocketImplFactory;->createDatagramSocketImpl()Ljava/net/DatagramSocketImpl;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    iget-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v1}, Ljava/net/DatagramSocketImpl;->create()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/4 v2, 0x4

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    iget-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v1, p1, p2}, Ljava/net/DatagramSocketImpl;->bind(ILjava/net/InetAddress;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/net/DatagramSocket;->isBound:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_2
    new-instance v1, Ljava/net/PlainDatagramSocketImpl;

    invoke-direct {v1}, Ljava/net/PlainDatagramSocketImpl;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {p0}, Ljava/net/MulticastSocket;->close()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public getInterface()Ljava/net/InetAddress;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/MulticastSocket;->checkOpen()V

    iget-object v4, p0, Ljava/net/MulticastSocket;->setAddress:Ljava/net/InetAddress;

    if-eqz v4, :cond_0

    iget-object v2, p0, Ljava/net/MulticastSocket;->setAddress:Ljava/net/InetAddress;

    :goto_0
    return-object v2

    :cond_0
    iget-object v4, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getNetworkInterface()Ljava/net/NetworkInterface;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    instance-of v4, v2, Ljava/net/Inet6Address;

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_2
    move-object v2, v1

    goto :goto_0
.end method

.method public getLoopbackMode()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/MulticastSocket;->checkOpen()V

    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNetworkInterface()Ljava/net/NetworkInterface;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/MulticastSocket;->checkOpen()V

    iget-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/net/NetworkInterface;->getByIndex(I)Ljava/net/NetworkInterface;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Ljava/net/NetworkInterface;->forUnboundMulticastSocket()Ljava/net/NetworkInterface;

    move-result-object v1

    goto :goto_0
.end method

.method public getTTL()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Ljava/net/MulticastSocket;->checkOpen()V

    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->getTTL()B

    move-result v0

    return v0
.end method

.method public getTimeToLive()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/MulticastSocket;->checkOpen()V

    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0}, Ljava/net/DatagramSocketImpl;->getTimeToLive()I

    move-result v0

    return v0
.end method

.method public joinGroup(Ljava/net/InetAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/net/MulticastSocket;->checkJoinOrLeave(Ljava/net/InetAddress;)V

    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocketImpl;->join(Ljava/net/InetAddress;)V

    return-void
.end method

.method public joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/net/MulticastSocket;->checkJoinOrLeave(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V

    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0, p1, p2}, Ljava/net/DatagramSocketImpl;->joinGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V

    return-void
.end method

.method public leaveGroup(Ljava/net/InetAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/net/MulticastSocket;->checkJoinOrLeave(Ljava/net/InetAddress;)V

    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocketImpl;->leave(Ljava/net/InetAddress;)V

    return-void
.end method

.method public leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/net/MulticastSocket;->checkJoinOrLeave(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V

    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0, p1, p2}, Ljava/net/DatagramSocketImpl;->leaveGroup(Ljava/net/SocketAddress;Ljava/net/NetworkInterface;)V

    return-void
.end method

.method public send(Ljava/net/DatagramPacket;B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Ljava/net/MulticastSocket;->checkOpen()V

    invoke-virtual {p1}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/MulticastSocket;->getTimeToLive()I

    move-result v0

    invoke-virtual {v1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v2

    if-eqz v2, :cond_0

    int-to-byte v2, v0

    if-eq v2, p2, :cond_0

    and-int/lit16 v2, p2, 0xff

    :try_start_0
    invoke-virtual {p0, v2}, Ljava/net/MulticastSocket;->setTimeToLive(I)V

    iget-object v2, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v2, p1}, Ljava/net/DatagramSocketImpl;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Ljava/net/MulticastSocket;->setTimeToLive(I)V

    :goto_0
    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {p0, v0}, Ljava/net/MulticastSocket;->setTimeToLive(I)V

    throw v2

    :cond_0
    iget-object v2, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v2, p1}, Ljava/net/DatagramSocketImpl;->send(Ljava/net/DatagramPacket;)V

    goto :goto_0
.end method

.method public setInterface(Ljava/net/InetAddress;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/MulticastSocket;->checkOpen()V

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "address == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {p1}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v1, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Address not associated with an interface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v2, 0x1f

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    iput-object p1, p0, Ljava/net/MulticastSocket;->setAddress:Ljava/net/InetAddress;

    return-void
.end method

.method public setLoopbackMode(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/MulticastSocket;->checkOpen()V

    iget-object v1, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v2, 0x12

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNetworkInterface(Ljava/net/NetworkInterface;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/MulticastSocket;->checkOpen()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/net/SocketException;

    const-string v1, "networkInterface == null"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    const/16 v1, 0x1f

    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/DatagramSocketImpl;->setOption(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/MulticastSocket;->setAddress:Ljava/net/InetAddress;

    return-void
.end method

.method public setTTL(B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Ljava/net/MulticastSocket;->checkOpen()V

    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocketImpl;->setTTL(B)V

    return-void
.end method

.method public setTimeToLive(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/MulticastSocket;->checkOpen()V

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TimeToLive out of bounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocketImpl;->setTimeToLive(I)V

    return-void
.end method
