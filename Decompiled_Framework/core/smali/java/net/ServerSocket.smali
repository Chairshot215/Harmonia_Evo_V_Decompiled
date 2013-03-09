.class public Ljava/net/ServerSocket;
.super Ljava/lang/Object;
.source "ServerSocket.java"


# static fields
.field private static final DEFAULT_BACKLOG:I = 0x32

.field static factory:Ljava/net/SocketImplFactory;


# instance fields
.field private final impl:Ljava/net/SocketImpl;

.field private isBound:Z

.field private isClosed:Z


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;

    if-eqz v0, :cond_0

    sget-object v0, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;

    invoke-interface {v0}, Ljava/net/SocketImplFactory;->createSocketImpl()Ljava/net/SocketImpl;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->create(Z)V

    return-void

    :cond_0
    new-instance v0, Ljava/net/PlainServerSocketImpl;

    invoke-direct {v0}, Ljava/net/PlainServerSocketImpl;-><init>()V

    goto :goto_0
.end method

.method public constructor <init>(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x32

    sget-object v1, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-direct {p0, p1, v0, v1}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-direct {p0, p1, p2, v0}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    return-void
.end method

.method public constructor <init>(IILjava/net/InetAddress;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Ljava/net/ServerSocket;->checkListen(I)V

    sget-object v2, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;

    if-eqz v2, :cond_0

    sget-object v2, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;

    invoke-interface {v2}, Ljava/net/SocketImplFactory;->createSocketImpl()Ljava/net/SocketImpl;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    if-nez p3, :cond_1

    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    :goto_1
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/SocketImpl;->create(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v2, v0, p1}, Ljava/net/SocketImpl;->bind(Ljava/net/InetAddress;I)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/net/ServerSocket;->isBound:Z

    iget-object v2, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    if-lez p2, :cond_2

    :goto_2
    invoke-virtual {v2, p2}, Ljava/net/SocketImpl;->listen(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_0
    new-instance v2, Ljava/net/PlainServerSocketImpl;

    invoke-direct {v2}, Ljava/net/PlainServerSocketImpl;-><init>()V

    goto :goto_0

    :cond_1
    move-object v0, p3

    goto :goto_1

    :cond_2
    const/16 p2, 0x32

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V

    throw v1

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private checkListen(I)V
    .locals 3

    if-ltz p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Port out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private checkOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static declared-synchronized setSocketFactory(Ljava/net/SocketImplFactory;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v1, Ljava/net/ServerSocket;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;

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
    sput-object p0, Ljava/net/ServerSocket;->factory:Ljava/net/SocketImplFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void
.end method


# virtual methods
.method public accept()Ljava/net/Socket;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/net/ServerSocket;->checkOpen()V

    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/net/SocketException;

    const-string v3, "Socket is not bound"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/net/ServerSocket;->implAccept(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    throw v1
.end method

.method public bind(Ljava/net/SocketAddress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x32

    invoke-virtual {p0, p1, v0}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    return-void
.end method

.method public bind(Ljava/net/SocketAddress;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/net/ServerSocket;->checkOpen()V

    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

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

    new-instance v4, Ljava/net/SocketException;

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

    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    :cond_3
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v4, v0, v3}, Ljava/net/SocketImpl;->bind(Ljava/net/InetAddress;I)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/net/ServerSocket;->isBound:Z

    iget-object v4, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    if-lez p2, :cond_4

    :goto_0
    invoke-virtual {v4, p2}, Ljava/net/SocketImpl;->listen(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    monitor-exit p0

    return-void

    :cond_4
    const/16 p2, 0x32

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V

    throw v1

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/ServerSocket;->isClosed:Z

    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->close()V

    return-void
.end method

.method public getChannel()Ljava/nio/channels/ServerSocketChannel;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getImpl$()Ljava/net/SocketImpl;
    .locals 1

    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1

    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocalPort()I
    .locals 1

    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getLocalPort()I

    move-result v0

    goto :goto_0
.end method

.method public getLocalSocketAddress()Ljava/net/SocketAddress;
    .locals 3

    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    goto :goto_0
.end method

.method public getReceiveBufferSize()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/net/ServerSocket;->checkOpen()V

    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getReuseAddress()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/net/ServerSocket;->checkOpen()V

    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getSoTimeout()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/net/ServerSocket;->checkOpen()V

    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

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

.method protected final implAccept(Ljava/net/Socket;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    iget-object v1, p1, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->accept(Ljava/net/SocketImpl;)V

    invoke-virtual {p1}, Ljava/net/Socket;->accepted()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isBound()Z
    .locals 1

    iget-boolean v0, p0, Ljava/net/ServerSocket;->isBound:Z

    return v0
.end method

.method public isClosed()Z
    .locals 1

    iget-boolean v0, p0, Ljava/net/ServerSocket;->isClosed:Z

    return v0
.end method

.method public setPerformancePreferences(III)V
    .locals 0

    return-void
.end method

.method public setReceiveBufferSize(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/net/ServerSocket;->checkOpen()V

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1002

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    return-void
.end method

.method public setReuseAddress(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/net/ServerSocket;->checkOpen()V

    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    const/4 v1, 0x4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized setSoTimeout(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/net/ServerSocket;->checkOpen()V

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
    iget-object v0, p0, Ljava/net/ServerSocket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1006

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ServerSocket["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/ServerSocket;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "unbound]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "addr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",port=0,localport="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
