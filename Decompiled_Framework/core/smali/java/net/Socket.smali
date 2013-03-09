.class public Ljava/net/Socket;
.super Ljava/lang/Object;
.source "Socket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/Socket$IHTCSocketMonitor;
    }
.end annotation


# static fields
.field private static factory:Ljava/net/SocketImplFactory;

.field public static mSocketMonitor:Ljava/net/Socket$IHTCSocketMonitor;


# instance fields
.field private final connectLock:Ljava/lang/Object;

.field final impl:Ljava/net/SocketImpl;

.field private isBound:Z

.field private isClosed:Z

.field private isConnected:Z

.field volatile isCreated:Z

.field private isInputShutdown:Z

.field private isOutputShutdown:Z

.field private localAddress:Ljava/net/InetAddress;

.field private final proxy:Ljava/net/Proxy;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Ljava/net/Socket;->isCreated:Z

    iput-boolean v0, p0, Ljava/net/Socket;->isBound:Z

    iput-boolean v0, p0, Ljava/net/Socket;->isConnected:Z

    iput-boolean v0, p0, Ljava/net/Socket;->isClosed:Z

    iput-boolean v0, p0, Ljava/net/Socket;->isInputShutdown:Z

    iput-boolean v0, p0, Ljava/net/Socket;->isOutputShutdown:Z

    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    iput-object v0, p0, Ljava/net/Socket;->localAddress:Ljava/net/InetAddress;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/Socket;->connectLock:Ljava/lang/Object;

    sget-object v0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    if-eqz v0, :cond_0

    sget-object v0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    invoke-interface {v0}, Ljava/net/SocketImplFactory;->createSocketImpl()Ljava/net/SocketImpl;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/Socket;->proxy:Ljava/net/Proxy;

    return-void

    :cond_0
    new-instance v0, Ljava/net/PlainSocketImpl;

    invoke-direct {v0}, Ljava/net/PlainSocketImpl;-><init>()V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Ljava/net/Socket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/net/InetAddress;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/net/Socket;->tryAllAddresses(Ljava/lang/String;ILjava/net/InetAddress;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Ljava/net/Socket;->tryAllAddresses(Ljava/lang/String;ILjava/net/InetAddress;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    invoke-direct {p0, p1, p2}, Ljava/net/Socket;->checkDestination(Ljava/net/InetAddress;I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Ljava/net/Socket;->startupSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    invoke-direct {p0, p1, p2}, Ljava/net/Socket;->checkDestination(Ljava/net/InetAddress;I)V

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/net/Socket;->startupSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;IZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    invoke-direct {p0, p1, p2}, Ljava/net/Socket;->checkDestination(Ljava/net/InetAddress;I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Ljava/net/Socket;->startupSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Ljava/net/Socket;->isCreated:Z

    iput-boolean v0, p0, Ljava/net/Socket;->isBound:Z

    iput-boolean v0, p0, Ljava/net/Socket;->isConnected:Z

    iput-boolean v0, p0, Ljava/net/Socket;->isClosed:Z

    iput-boolean v0, p0, Ljava/net/Socket;->isInputShutdown:Z

    iput-boolean v0, p0, Ljava/net/Socket;->isOutputShutdown:Z

    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    iput-object v0, p0, Ljava/net/Socket;->localAddress:Ljava/net/InetAddress;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/Socket;->connectLock:Ljava/lang/Object;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid proxy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Ljava/net/Socket;->proxy:Ljava/net/Proxy;

    sget-object v0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    if-eqz v0, :cond_2

    sget-object v0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    invoke-interface {v0}, Ljava/net/SocketImplFactory;->createSocketImpl()Ljava/net/SocketImpl;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    return-void

    :cond_2
    new-instance v0, Ljava/net/PlainSocketImpl;

    invoke-direct {v0, p1}, Ljava/net/PlainSocketImpl;-><init>(Ljava/net/Proxy;)V

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/net/SocketImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Ljava/net/Socket;->isCreated:Z

    iput-boolean v0, p0, Ljava/net/Socket;->isBound:Z

    iput-boolean v0, p0, Ljava/net/Socket;->isConnected:Z

    iput-boolean v0, p0, Ljava/net/Socket;->isClosed:Z

    iput-boolean v0, p0, Ljava/net/Socket;->isInputShutdown:Z

    iput-boolean v0, p0, Ljava/net/Socket;->isOutputShutdown:Z

    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    iput-object v0, p0, Ljava/net/Socket;->localAddress:Ljava/net/InetAddress;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/Socket;->connectLock:Ljava/lang/Object;

    iput-object p1, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/Socket;->proxy:Ljava/net/Proxy;

    return-void
.end method

.method public static RXTXTriggerIfNeeded()V
    .locals 1

    sget-object v0, Ljava/net/Socket;->mSocketMonitor:Ljava/net/Socket$IHTCSocketMonitor;

    if-eqz v0, :cond_0

    sget-object v0, Ljava/net/Socket;->mSocketMonitor:Ljava/net/Socket$IHTCSocketMonitor;

    invoke-interface {v0}, Ljava/net/Socket$IHTCSocketMonitor;->RXTXTriggerIfNeeded()V

    :cond_0
    return-void
.end method

.method private cacheLocalAddress()V
    .locals 1

    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    iget-object v0, v0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->getSocketLocalAddress(Ljava/io/FileDescriptor;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Ljava/net/Socket;->localAddress:Ljava/net/InetAddress;

    return-void
.end method

.method private checkDestination(Ljava/net/InetAddress;I)V
    .locals 3

    if-ltz p2, :cond_0

    const v0, 0xffff

    if-le p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Port out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private checkOpenAndCreate(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Socket is closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Socket is not connected"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-boolean v1, p0, Ljava/net/Socket;->isCreated:Z

    if-eqz v1, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Ljava/net/Socket;->isCreated:Z

    if-eqz v1, :cond_4

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_4
    :try_start_1
    iget-object v1, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/SocketImpl;->create(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Ljava/net/Socket;->isCreated:Z

    monitor-exit p0

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/net/SocketException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public static printLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljava/net/Socket;->mSocketMonitor:Ljava/net/Socket$IHTCSocketMonitor;

    if-eqz v0, :cond_0

    sget-object v0, Ljava/net/Socket;->mSocketMonitor:Ljava/net/Socket$IHTCSocketMonitor;

    invoke-interface {v0, p0, p1}, Ljava/net/Socket$IHTCSocketMonitor;->socketLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static setIHTCSocketMonitor(Ljava/net/Socket$IHTCSocketMonitor;)V
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Ljava/net/Socket;->mSocketMonitor:Ljava/net/Socket$IHTCSocketMonitor;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sput-object p0, Ljava/net/Socket;->mSocketMonitor:Ljava/net/Socket$IHTCSocketMonitor;

    goto :goto_0
.end method

.method public static declared-synchronized setSocketImplFactory(Ljava/net/SocketImplFactory;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v1, Ljava/net/Socket;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/SocketException;

    const-string v2, "Factory already set"

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    sput-object p0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void
.end method

.method private startupSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;IZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p4, :cond_0

    const v2, 0xffff

    if-le p4, v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Local port out of range: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    if-nez p3, :cond_4

    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v2, p5}, Ljava/net/SocketImpl;->create(Z)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/net/Socket;->isCreated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p5, :cond_2

    :try_start_1
    invoke-direct {p0}, Ljava/net/Socket;->usingSocks()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget-object v2, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v2, v0, p4}, Ljava/net/SocketImpl;->bind(Ljava/net/InetAddress;I)V

    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/net/Socket;->isBound:Z

    iget-object v2, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v2, p1, p2}, Ljava/net/SocketImpl;->connect(Ljava/net/InetAddress;I)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/net/Socket;->isConnected:Z

    invoke-direct {p0}, Ljava/net/Socket;->cacheLocalAddress()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    monitor-exit p0

    return-void

    :cond_4
    move-object v0, p3

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v2}, Ljava/net/SocketImpl;->close()V

    throw v1

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private tryAllAddresses(Ljava/lang/String;ILjava/net/InetAddress;IZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v6

    const/4 v7, 0x0

    :goto_0
    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    if-ge v7, v0, :cond_0

    aget-object v1, v6, v7

    :try_start_0
    invoke-direct {p0, v1, p2}, Ljava/net/Socket;->checkDestination(Ljava/net/InetAddress;I)V

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Ljava/net/Socket;->startupSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;IZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    aget-object v1, v6, v0

    invoke-direct {p0, v1, p2}, Ljava/net/Socket;->checkDestination(Ljava/net/InetAddress;I)V

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Ljava/net/Socket;->startupSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;IZ)V

    goto :goto_1
.end method

.method private usingSocks()Z
    .locals 2

    iget-object v0, p0, Ljava/net/Socket;->proxy:Ljava/net/Proxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/net/Socket;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method accepted()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->isConnected:Z

    iput-boolean v0, p0, Ljava/net/Socket;->isBound:Z

    iput-boolean v0, p0, Ljava/net/Socket;->isCreated:Z

    invoke-direct {p0}, Ljava/net/Socket;->cacheLocalAddress()V

    return-void
.end method

.method public bind(Ljava/net/SocketAddress;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/net/BindException;

    const-string v5, "Socket is already bound"

    invoke-direct {v4, v5}, Ljava/net/BindException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    const/4 v3, 0x0

    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    if-eqz p1, :cond_3

    instance-of v4, p1, Ljava/net/InetSocketAddress;

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Local address not an InetSocketAddress: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    move-object v2, p1

    check-cast v2, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v4, Ljava/net/UnknownHostException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Host is unresolved: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    :cond_3
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v4, v0, v3}, Ljava/net/SocketImpl;->bind(Ljava/net/InetAddress;I)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/net/Socket;->isBound:Z

    invoke-direct {p0}, Ljava/net/Socket;->cacheLocalAddress()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    monitor-exit p0

    return-void

    :catch_0
    move-exception v1

    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v4}, Ljava/net/SocketImpl;->close()V

    throw v1

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ljava/net/Socket;->isClosed:Z

    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    iput-object v0, p0, Ljava/net/Socket;->localAddress:Ljava/net/InetAddress;

    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connect(Ljava/net/SocketAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    return-void
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    if-gez p2, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "timeout < 0"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/net/SocketException;

    const-string v5, "Already connected"

    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    if-nez p1, :cond_2

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "remoteAddr == null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    instance-of v4, p1, Ljava/net/InetSocketAddress;

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remote address not an InetSocketAddress: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    move-object v2, p1

    check-cast v2, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance v4, Ljava/net/UnknownHostException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Host is unresolved: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    invoke-direct {p0, v0, v3}, Ljava/net/Socket;->checkDestination(Ljava/net/InetAddress;I)V

    iget-object v5, p0, Ljava/net/Socket;->connectLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-direct {p0}, Ljava/net/Socket;->usingSocks()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    sget-object v6, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/net/SocketImpl;->bind(Ljava/net/InetAddress;I)V

    :cond_5
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/net/Socket;->isBound:Z

    :cond_6
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v4, p1, p2}, Ljava/net/SocketImpl;->connect(Ljava/net/SocketAddress;I)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/net/Socket;->isConnected:Z

    invoke-direct {p0}, Ljava/net/Socket;->cacheLocalAddress()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    monitor-exit v5

    return-void

    :catch_0
    move-exception v1

    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v4}, Ljava/net/SocketImpl;->close()V

    throw v1

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public getChannel()Ljava/nio/channels/SocketChannel;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFileDescriptor$()Ljava/io/FileDescriptor;
    .locals 1

    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    iget-object v0, v0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1

    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    invoke-virtual {p0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket input is shutdown"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getKeepAlive()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Ljava/net/Socket;->localAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getLocalPort()I

    move-result v0

    goto :goto_0
.end method

.method public getLocalSocketAddress()Ljava/net/SocketAddress;
    .locals 3

    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/Socket;->getLocalPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    goto :goto_0
.end method

.method public getOOBInline()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    invoke-virtual {p0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket output is shutdown"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getPort()I

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized getReceiveBufferSize()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRemoteSocketAddress()Ljava/net/SocketAddress;
    .locals 3

    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/Socket;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    goto :goto_0
.end method

.method public getReuseAddress()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getSendBufferSize()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSoLinger()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    iget-object v1, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public declared-synchronized getSoTimeout()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1006

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTcpNoDelay()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getTrafficClass()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isBound()Z
    .locals 1

    iget-boolean v0, p0, Ljava/net/Socket;->isBound:Z

    return v0
.end method

.method public isClosed()Z
    .locals 1

    iget-boolean v0, p0, Ljava/net/Socket;->isClosed:Z

    return v0
.end method

.method public isConnected()Z
    .locals 1

    iget-boolean v0, p0, Ljava/net/Socket;->isConnected:Z

    return v0
.end method

.method public isInputShutdown()Z
    .locals 1

    iget-boolean v0, p0, Ljava/net/Socket;->isInputShutdown:Z

    return v0
.end method

.method public isOutputShutdown()Z
    .locals 1

    iget-boolean v0, p0, Ljava/net/Socket;->isOutputShutdown:Z

    return v0
.end method

.method public sendUrgentData(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0, p1}, Ljava/net/SocketImpl;->sendUrgentData(I)V

    return-void
.end method

.method public setKeepAlive(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x8

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setOOBInline(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1003

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    return-void
.end method

.method public setPerformancePreferences(III)V
    .locals 0

    return-void
.end method

.method public declared-synchronized setReceiveBufferSize(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    const/4 v1, 0x1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    if-ge p1, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1002

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public setReuseAddress(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/4 v1, 0x4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized setSendBufferSize(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    const/4 v1, 0x1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    if-ge p1, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1001

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public setSoLinger(ZI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    const/16 v2, 0x80

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    if-eqz p1, :cond_0

    if-gez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public declared-synchronized setSoTimeout(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1006

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    return-void
.end method

.method public setTrafficClass(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/4 v1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    return-void
.end method

.method public shutdownInput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket input is shutdown"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->shutdownInput()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->isInputShutdown:Z

    return-void
.end method

.method public shutdownOutput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket output is shutdown"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->shutdownOutput()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->isOutputShutdown:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Socket[unconnected]"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
