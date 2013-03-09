.class public final Llibcore/io/IoBridge;
.super Ljava/lang/Object;
.source "IoBridge.java"


# static fields
.field public static final JAVA_IP_MULTICAST_TTL:I = 0x11

.field public static final JAVA_MCAST_JOIN_GROUP:I = 0x13

.field public static final JAVA_MCAST_LEAVE_GROUP:I = 0x14


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static available(Ljava/io/FileDescriptor;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Llibcore/util/MutableInt;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Llibcore/util/MutableInt;-><init>(I)V

    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v4, Llibcore/io/OsConstants;->FIONREAD:I

    invoke-interface {v3, p0, v4, v0}, Llibcore/io/Os;->ioctlInt(Ljava/io/FileDescriptor;ILlibcore/util/MutableInt;)I

    iget v3, v0, Llibcore/util/MutableInt;->value:I

    if-gez v3, :cond_0

    const/4 v3, 0x0

    iput v3, v0, Llibcore/util/MutableInt;->value:I

    :cond_0
    iget v2, v0, Llibcore/util/MutableInt;->value:I
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return v2

    :catch_0
    move-exception v1

    iget v3, v1, Llibcore/io/ErrnoException;->errno:I

    sget v4, Llibcore/io/OsConstants;->ENOTTY:I

    if-eq v3, v4, :cond_1

    invoke-virtual {v1}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method

.method public static bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    instance-of v3, p1, Ljava/net/Inet6Address;

    if-eqz v3, :cond_1

    move-object v3, p1

    check-cast v3, Ljava/net/Inet6Address;

    invoke-virtual {v3}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p1}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v3, Ljava/net/SocketException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t bind to a link-local address without a scope id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v5

    invoke-static {v3, v4, v5}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :cond_1
    :try_start_1
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v3, p0, p1, p2}, Llibcore/io/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_1
    .catch Llibcore/io/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    :catch_1
    move-exception v0

    new-instance v3, Ljava/net/BindException;

    invoke-virtual {v0}, Llibcore/io/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/net/BindException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static booleanFromInt(I)Z
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static booleanToInt(Z)I
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static closeSocket(Ljava/io/FileDescriptor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Ljava/io/FileDescriptor;->setInt$(I)V

    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    invoke-virtual {v1, v0}, Ljava/io/FileDescriptor;->setInt$(I)V

    invoke-static {v1}, Llibcore/io/AsynchronousCloseMonitor;->signalBlockedThreads(Ljava/io/FileDescriptor;)V

    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v2, v1}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, v1}, Llibcore/io/IoBridge;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)Z
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/net/SocketTimeoutException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1, p2, p3}, Llibcore/io/IoBridge;->connectErrno(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)Z
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v2

    return v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/net/ConnectException;

    invoke-static {p1, p2, p3, v0}, Llibcore/io/IoBridge;->connectDetail(Ljava/net/InetAddress;IILlibcore/io/ErrnoException;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    throw v1

    :catch_2
    move-exception v1

    throw v1

    :catch_3
    move-exception v1

    new-instance v2, Ljava/net/SocketException;

    invoke-direct {v2, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static connectDetail(Ljava/net/InetAddress;IILlibcore/io/ErrnoException;)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to connect to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-lez p2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz p3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Llibcore/io/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private static connectErrno(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x1

    if-nez p3, :cond_0

    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v4, p0, p1, p2}, Llibcore/io/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    :goto_0
    return v8

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    int-to-long v6, p3

    add-long v1, v4, v6

    const/4 v4, 0x0

    invoke-static {p0, v4}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    :try_start_0
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v4, p0, p1, p2}, Llibcore/io/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0, v8}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget v4, v0, Llibcore/io/ErrnoException;->errno:I

    sget v5, Llibcore/io/OsConstants;->EINPROGRESS:I

    if-eq v4, v5, :cond_1

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v4

    invoke-static {p0, v8}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    throw v4

    :cond_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v1, v4

    long-to-int v3, v4

    if-gtz v3, :cond_2

    new-instance v4, Ljava/net/SocketTimeoutException;

    const/4 v5, 0x0

    invoke-static {p1, p2, p3, v5}, Llibcore/io/IoBridge;->connectDetail(Ljava/net/InetAddress;IILlibcore/io/ErrnoException;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    invoke-static {p0, p1, p2, p3, v3}, Llibcore/io/IoBridge;->isConnected(Ljava/io/FileDescriptor;Ljava/net/InetAddress;III)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p0, v8}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    goto :goto_0
.end method

.method public static getSocketLocalAddress(Ljava/io/FileDescriptor;)Ljava/net/InetAddress;
    .locals 5

    :try_start_0
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v4, p0}, Llibcore/io/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    :catch_0
    move-exception v1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method

.method public static getSocketLocalPort(Ljava/io/FileDescriptor;)I
    .locals 5

    :try_start_0
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v4, p0}, Llibcore/io/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    :catch_0
    move-exception v1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method

.method public static getSocketOption(Ljava/io/FileDescriptor;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1}, Llibcore/io/IoBridge;->getSocketOptionErrno(Ljava/io/FileDescriptor;I)Ljava/lang/Object;
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v1

    throw v1
.end method

.method private static getSocketOptionErrno(Ljava/io/FileDescriptor;I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    new-instance v1, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown socket option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Llibcore/io/OsConstants;->IPPROTO_IP:I

    sget v3, Llibcore/io/OsConstants;->IP_MULTICAST_IF:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInAddr(Ljava/io/FileDescriptor;II)Ljava/net/InetAddress;

    move-result-object v1

    :goto_0
    return-object v1

    :sswitch_1
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Llibcore/io/OsConstants;->IPPROTO_IPV6:I

    sget v3, Llibcore/io/OsConstants;->IPV6_MULTICAST_IF:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :sswitch_2
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Llibcore/io/OsConstants;->IPPROTO_IPV6:I

    sget v3, Llibcore/io/OsConstants;->IPV6_MULTICAST_LOOP:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Llibcore/io/IoBridge;->booleanFromInt(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :sswitch_3
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Llibcore/io/OsConstants;->IPPROTO_IPV6:I

    sget v3, Llibcore/io/OsConstants;->IPV6_MULTICAST_HOPS:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :sswitch_4
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Llibcore/io/OsConstants;->IPPROTO_IPV6:I

    sget v3, Llibcore/io/OsConstants;->IPV6_TCLASS:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :sswitch_5
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v3, Llibcore/io/OsConstants;->SO_BROADCAST:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Llibcore/io/IoBridge;->booleanFromInt(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :sswitch_6
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v3, Llibcore/io/OsConstants;->SO_KEEPALIVE:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Llibcore/io/IoBridge;->booleanFromInt(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :sswitch_7
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v3, Llibcore/io/OsConstants;->SO_LINGER:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptLinger(Ljava/io/FileDescriptor;II)Llibcore/io/StructLinger;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/io/StructLinger;->isOn()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget v1, v0, Llibcore/io/StructLinger;->l_linger:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_8
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v3, Llibcore/io/OsConstants;->SO_OOBINLINE:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Llibcore/io/IoBridge;->booleanFromInt(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_9
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v3, Llibcore/io/OsConstants;->SO_SNDBUF:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_a
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v3, Llibcore/io/OsConstants;->SO_REUSEADDR:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Llibcore/io/IoBridge;->booleanFromInt(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_b
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v3, Llibcore/io/OsConstants;->SO_SNDBUF:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_c
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v3, Llibcore/io/OsConstants;->SO_RCVTIMEO:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptTimeval(Ljava/io/FileDescriptor;II)Llibcore/io/StructTimeval;

    move-result-object v1

    invoke-virtual {v1}, Llibcore/io/StructTimeval;->toMillis()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_d
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Llibcore/io/OsConstants;->IPPROTO_TCP:I

    sget v3, Llibcore/io/OsConstants;->TCP_NODELAY:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Llibcore/io/IoBridge;->booleanFromInt(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_d
        0x3 -> :sswitch_4
        0x4 -> :sswitch_a
        0x8 -> :sswitch_6
        0x10 -> :sswitch_0
        0x11 -> :sswitch_3
        0x12 -> :sswitch_2
        0x1f -> :sswitch_1
        0x20 -> :sswitch_5
        0x80 -> :sswitch_7
        0x1001 -> :sswitch_b
        0x1002 -> :sswitch_9
        0x1003 -> :sswitch_8
        0x1006 -> :sswitch_c
    .end sparse-switch
.end method

.method public static isConnected(Ljava/io/FileDescriptor;Ljava/net/InetAddress;III)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x1

    :try_start_0
    new-array v4, v8, [Llibcore/io/StructPollfd;

    const/4 v8, 0x0

    new-instance v9, Llibcore/io/StructPollfd;

    invoke-direct {v9}, Llibcore/io/StructPollfd;-><init>()V

    aput-object v9, v4, v8

    const/4 v8, 0x0

    aget-object v8, v4, v8

    iput-object p0, v8, Llibcore/io/StructPollfd;->fd:Ljava/io/FileDescriptor;

    const/4 v8, 0x0

    aget-object v8, v4, v8

    sget v9, Llibcore/io/OsConstants;->POLLOUT:I

    int-to-short v9, v9

    iput-short v9, v8, Llibcore/io/StructPollfd;->events:S

    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v8, v4, p4}, Llibcore/io/Os;->poll([Llibcore/io/StructPollfd;I)I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v10, Llibcore/io/OsConstants;->SO_ERROR:I

    invoke-interface {v8, p0, v9, v10}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    if-nez v1, :cond_2

    move v6, v7

    goto :goto_0

    :cond_2
    new-instance v7, Llibcore/io/ErrnoException;

    const-string v8, "isConnected"

    invoke-direct {v7, v8, v1}, Llibcore/io/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v7
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v3

    iget v7, v3, Llibcore/io/ErrnoException;->errno:I

    sget v8, Llibcore/io/OsConstants;->EINTR:I

    if-eq v7, v8, :cond_0

    move-object v0, v3

    invoke-static {p1, p2, p3, v0}, Llibcore/io/IoBridge;->connectDetail(Ljava/net/InetAddress;IILlibcore/io/ErrnoException;)Ljava/lang/String;

    move-result-object v2

    iget v6, v0, Llibcore/io/ErrnoException;->errno:I

    sget v7, Llibcore/io/OsConstants;->ECONNRESET:I

    if-eq v6, v7, :cond_3

    iget v6, v0, Llibcore/io/ErrnoException;->errno:I

    sget v7, Llibcore/io/OsConstants;->ECONNREFUSED:I

    if-eq v6, v7, :cond_3

    iget v6, v0, Llibcore/io/ErrnoException;->errno:I

    sget v7, Llibcore/io/OsConstants;->EADDRNOTAVAIL:I

    if-eq v6, v7, :cond_3

    iget v6, v0, Llibcore/io/ErrnoException;->errno:I

    sget v7, Llibcore/io/OsConstants;->EADDRINUSE:I

    if-eq v6, v7, :cond_3

    iget v6, v0, Llibcore/io/ErrnoException;->errno:I

    sget v7, Llibcore/io/OsConstants;->ENETUNREACH:I

    if-ne v6, v7, :cond_4

    :cond_3
    new-instance v6, Ljava/net/ConnectException;

    invoke-direct {v6, v2, v0}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :cond_4
    iget v6, v0, Llibcore/io/ErrnoException;->errno:I

    sget v7, Llibcore/io/OsConstants;->EACCES:I

    if-ne v6, v7, :cond_5

    new-instance v6, Ljava/lang/SecurityException;

    invoke-direct {v6, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :cond_5
    iget v6, v0, Llibcore/io/ErrnoException;->errno:I

    sget v7, Llibcore/io/OsConstants;->ETIMEDOUT:I

    if-ne v6, v7, :cond_6

    new-instance v6, Ljava/net/SocketTimeoutException;

    invoke-direct {v6, v2, v0}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :cond_6
    new-instance v6, Ljava/net/SocketException;

    invoke-direct {v6, v2, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private static maybeThrowAfterRecvfrom(ZZLlibcore/io/ErrnoException;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/net/SocketTimeoutException;
        }
    .end annotation

    if-eqz p0, :cond_2

    iget v0, p2, Llibcore/io/ErrnoException;->errno:I

    sget v1, Llibcore/io/OsConstants;->EAGAIN:I

    if-eq v0, v1, :cond_0

    iget v0, p2, Llibcore/io/ErrnoException;->errno:I

    sget v1, Llibcore/io/OsConstants;->EWOULDBLOCK:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-virtual {p2}, Llibcore/io/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v0

    throw v0

    :cond_2
    if-eqz p1, :cond_3

    iget v0, p2, Llibcore/io/ErrnoException;->errno:I

    sget v1, Llibcore/io/OsConstants;->ECONNREFUSED:I

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/net/PortUnreachableException;

    const-string v1, ""

    invoke-direct {v0, v1, p2}, Ljava/net/PortUnreachableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    iget v0, p2, Llibcore/io/ErrnoException;->errno:I

    sget v1, Llibcore/io/OsConstants;->EAGAIN:I

    if-eq v0, v1, :cond_4

    iget v0, p2, Llibcore/io/ErrnoException;->errno:I

    sget v1, Llibcore/io/OsConstants;->EWOULDBLOCK:I

    if-ne v0, v1, :cond_5

    :cond_4
    new-instance v0, Ljava/net/SocketTimeoutException;

    invoke-direct {v0, p2}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_5
    invoke-virtual {p2}, Llibcore/io/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v0

    throw v0
.end method

.method private static maybeThrowAfterSendto(ZLlibcore/io/ErrnoException;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    iget v0, p1, Llibcore/io/ErrnoException;->errno:I

    sget v1, Llibcore/io/OsConstants;->ECONNRESET:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Llibcore/io/ErrnoException;->errno:I

    sget v1, Llibcore/io/OsConstants;->ECONNREFUSED:I

    if-ne v0, v1, :cond_2

    :cond_0
    return v2

    :cond_1
    iget v0, p1, Llibcore/io/ErrnoException;->errno:I

    sget v1, Llibcore/io/OsConstants;->EAGAIN:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Llibcore/io/ErrnoException;->errno:I

    sget v1, Llibcore/io/OsConstants;->EWOULDBLOCK:I

    if-eq v0, v1, :cond_0

    :cond_2
    invoke-virtual {p1}, Llibcore/io/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v0

    throw v0
.end method

.method public static open(Ljava/lang/String;I)Ljava/io/FileDescriptor;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget v4, Llibcore/io/OsConstants;->O_ACCMODE:I

    and-int/2addr v4, p1

    sget v5, Llibcore/io/OsConstants;->O_RDONLY:I

    if-ne v4, v5, :cond_1

    const/4 v3, 0x0

    :goto_0
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v4, p0, p1, v3}, Llibcore/io/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v4, v2}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Llibcore/io/StructStat;

    move-result-object v4

    iget v4, v4, Llibcore/io/StructStat;->st_mode:I

    invoke-static {v4}, Llibcore/io/OsConstants;->S_ISDIR(I)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Llibcore/io/ErrnoException;

    const-string v5, "open"

    sget v6, Llibcore/io/OsConstants;->EISDIR:I

    invoke-direct {v4, v5, v6}, Llibcore/io/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v4
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    if-eqz v2, :cond_0

    :try_start_1
    invoke-static {v2}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Llibcore/io/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/FileNotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1

    :cond_1
    const/16 v3, 0x180

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_1

    :cond_2
    return-object v2
.end method

.method private static postRecvfrom(ZLjava/net/DatagramPacket;ZLjava/net/InetSocketAddress;I)I
    .locals 1

    if-eqz p0, :cond_1

    if-nez p4, :cond_1

    const/4 p4, -0x1

    :cond_0
    :goto_0
    return p4

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1, p4}, Ljava/net/DatagramPacket;->setReceivedLength(I)V

    if-nez p2, :cond_0

    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setPort(I)V

    goto :goto_0
.end method

.method public static read(Ljava/io/FileDescriptor;[BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {v2, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v2, p0, p1, p2, p3}, Llibcore/io/Os;->read(Ljava/io/FileDescriptor;[BII)I
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :catch_0
    move-exception v0

    iget v2, v0, Llibcore/io/ErrnoException;->errno:I

    sget v3, Llibcore/io/OsConstants;->EAGAIN:I

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method

.method public static recvfrom(ZLjava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/DatagramPacket;Z)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p4, :cond_0

    if-nez p5, :cond_0

    :try_start_0
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2}, Ljava/net/InetSocketAddress;-><init>()V

    :goto_0
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v3, p1, p2, p3, v2}, Llibcore/io/Os;->recvfrom(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetSocketAddress;)I

    move-result v1

    invoke-static {p0, p4, p5, v2, v1}, Llibcore/io/IoBridge;->postRecvfrom(ZLjava/net/DatagramPacket;ZLjava/net/InetSocketAddress;I)I
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    return v1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {p0, p5, v0}, Llibcore/io/IoBridge;->maybeThrowAfterRecvfrom(ZZLlibcore/io/ErrnoException;)I

    move-result v1

    goto :goto_1
.end method

.method public static recvfrom(ZLjava/io/FileDescriptor;[BIIILjava/net/DatagramPacket;Z)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p6, :cond_0

    if-nez p7, :cond_0

    :try_start_0
    new-instance v8, Ljava/net/InetSocketAddress;

    invoke-direct {v8}, Ljava/net/InetSocketAddress;-><init>()V

    :goto_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    invoke-interface/range {v2 .. v8}, Llibcore/io/Os;->recvfrom(Ljava/io/FileDescriptor;[BIIILjava/net/InetSocketAddress;)I

    move-result v10

    move-object/from16 v0, p6

    move/from16 v1, p7

    invoke-static {p0, v0, v1, v8, v10}, Llibcore/io/IoBridge;->postRecvfrom(ZLjava/net/DatagramPacket;ZLjava/net/InetSocketAddress;I)I
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    :goto_1
    return v10

    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    :catch_0
    move-exception v9

    move/from16 v0, p7

    invoke-static {p0, v0, v9}, Llibcore/io/IoBridge;->maybeThrowAfterRecvfrom(ZZLlibcore/io/ErrnoException;)I

    move-result v10

    goto :goto_1
.end method

.method public static sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    if-eqz p3, :cond_0

    const/4 v7, 0x1

    :goto_0
    if-nez v7, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    return v8

    :cond_0
    move v7, v8

    goto :goto_0

    :cond_1
    :try_start_0
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    goto :goto_1

    :catch_0
    move-exception v6

    invoke-static {v7, v6}, Llibcore/io/IoBridge;->maybeThrowAfterSendto(ZLlibcore/io/ErrnoException;)I

    move-result v8

    goto :goto_1
.end method

.method public static sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p5, :cond_0

    const/4 v9, 0x1

    :goto_0
    if-nez v9, :cond_1

    if-gtz p3, :cond_1

    const/4 v10, 0x0

    :goto_1
    return v10

    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    :cond_1
    :try_start_0
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-interface/range {v0 .. v7}, Llibcore/io/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    goto :goto_1

    :catch_0
    move-exception v8

    invoke-static {v9, v8}, Llibcore/io/IoBridge;->maybeThrowAfterSendto(ZLlibcore/io/ErrnoException;)I

    move-result v10

    goto :goto_1
.end method

.method public static setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1, p2}, Llibcore/io/IoBridge;->setSocketOptionErrno(Ljava/io/FileDescriptor;ILjava/lang/Object;)V
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v1

    throw v1
.end method

.method private static setSocketOptionErrno(Ljava/io/FileDescriptor;ILjava/lang/Object;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    new-instance v8, Ljava/net/SocketException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown socket option: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v8

    :sswitch_0
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    const-string v9, "Use IP_MULTICAST_IF2 on Android"

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8

    :sswitch_1
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v10, Llibcore/io/OsConstants;->IPPROTO_IP:I

    sget v11, Llibcore/io/OsConstants;->IP_MULTICAST_IF:I

    move-object v8, p2

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v9, p0, v10, v11, v8}, Llibcore/io/Os;->setsockoptIpMreqn(Ljava/io/FileDescriptor;III)V

    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Llibcore/io/OsConstants;->IPPROTO_IPV6:I

    sget v10, Llibcore/io/OsConstants;->IPV6_MULTICAST_IF:I

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v8, p0, v9, v10, v11}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    :goto_0
    return-void

    :sswitch_2
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v10, Llibcore/io/OsConstants;->IPPROTO_IP:I

    sget v11, Llibcore/io/OsConstants;->IP_MULTICAST_LOOP:I

    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-static {v8}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v8

    invoke-interface {v9, p0, v10, v11, v8}, Llibcore/io/Os;->setsockoptByte(Ljava/io/FileDescriptor;III)V

    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Llibcore/io/OsConstants;->IPPROTO_IPV6:I

    sget v10, Llibcore/io/OsConstants;->IPV6_MULTICAST_LOOP:I

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-static {v11}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v11

    invoke-interface {v8, p0, v9, v10, v11}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto :goto_0

    :sswitch_3
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v10, Llibcore/io/OsConstants;->IPPROTO_IP:I

    sget v11, Llibcore/io/OsConstants;->IP_MULTICAST_TTL:I

    move-object v8, p2

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v9, p0, v10, v11, v8}, Llibcore/io/Os;->setsockoptByte(Ljava/io/FileDescriptor;III)V

    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Llibcore/io/OsConstants;->IPPROTO_IPV6:I

    sget v10, Llibcore/io/OsConstants;->IPV6_MULTICAST_HOPS:I

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v8, p0, v9, v10, v11}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto :goto_0

    :sswitch_4
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v10, Llibcore/io/OsConstants;->IPPROTO_IP:I

    sget v11, Llibcore/io/OsConstants;->IP_TOS:I

    move-object v8, p2

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v9, p0, v10, v11, v8}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Llibcore/io/OsConstants;->IPPROTO_IPV6:I

    sget v10, Llibcore/io/OsConstants;->IPV6_TCLASS:I

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v8, p0, v9, v10, v11}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto :goto_0

    :sswitch_5
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v10, Llibcore/io/OsConstants;->SO_BROADCAST:I

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-static {v11}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v11

    invoke-interface {v8, p0, v9, v10, v11}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto :goto_0

    :sswitch_6
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v10, Llibcore/io/OsConstants;->SO_KEEPALIVE:I

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-static {v11}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v11

    invoke-interface {v8, p0, v9, v10, v11}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto/16 :goto_0

    :sswitch_7
    const/4 v4, 0x0

    const/4 v6, 0x0

    instance-of v8, p2, Ljava/lang/Integer;

    if-eqz v8, :cond_0

    const/4 v4, 0x1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const v9, 0xffff

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    :cond_0
    new-instance v2, Llibcore/io/StructLinger;

    invoke-static {v4}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v8

    invoke-direct {v2, v8, v6}, Llibcore/io/StructLinger;-><init>(II)V

    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v10, Llibcore/io/OsConstants;->SO_LINGER:I

    invoke-interface {v8, p0, v9, v10, v2}, Llibcore/io/Os;->setsockoptLinger(Ljava/io/FileDescriptor;IILlibcore/io/StructLinger;)V

    goto/16 :goto_0

    :sswitch_8
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v10, Llibcore/io/OsConstants;->SO_OOBINLINE:I

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-static {v11}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v11

    invoke-interface {v8, p0, v9, v10, v11}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto/16 :goto_0

    :sswitch_9
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v10, Llibcore/io/OsConstants;->SO_RCVBUF:I

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v8, p0, v9, v10, v11}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto/16 :goto_0

    :sswitch_a
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v10, Llibcore/io/OsConstants;->SO_REUSEADDR:I

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-static {v11}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v11

    invoke-interface {v8, p0, v9, v10, v11}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto/16 :goto_0

    :sswitch_b
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v10, Llibcore/io/OsConstants;->SO_SNDBUF:I

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v8, p0, v9, v10, v11}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto/16 :goto_0

    :sswitch_c
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v8, v3

    invoke-static {v8, v9}, Llibcore/io/StructTimeval;->fromMillis(J)Llibcore/io/StructTimeval;

    move-result-object v7

    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v10, Llibcore/io/OsConstants;->SO_RCVTIMEO:I

    invoke-interface {v8, p0, v9, v10, v7}, Llibcore/io/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILlibcore/io/StructTimeval;)V

    goto/16 :goto_0

    :sswitch_d
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Llibcore/io/OsConstants;->IPPROTO_TCP:I

    sget v10, Llibcore/io/OsConstants;->TCP_NODELAY:I

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-static {v11}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v11

    invoke-interface {v8, p0, v9, v10, v11}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto/16 :goto_0

    :sswitch_e
    move-object v0, p2

    check-cast v0, Llibcore/io/StructGroupReq;

    iget-object v8, v0, Llibcore/io/StructGroupReq;->gr_group:Ljava/net/InetAddress;

    instance-of v8, v8, Ljava/net/Inet4Address;

    if-eqz v8, :cond_1

    sget v1, Llibcore/io/OsConstants;->IPPROTO_IP:I

    :goto_1
    const/16 v8, 0x13

    if-ne p1, v8, :cond_2

    sget v5, Llibcore/io/OsConstants;->MCAST_JOIN_GROUP:I

    :goto_2
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v8, p0, v1, v5, v0}, Llibcore/io/Os;->setsockoptGroupReq(Ljava/io/FileDescriptor;IILlibcore/io/StructGroupReq;)V

    goto/16 :goto_0

    :cond_1
    sget v1, Llibcore/io/OsConstants;->IPPROTO_IPV6:I

    goto :goto_1

    :cond_2
    sget v5, Llibcore/io/OsConstants;->MCAST_LEAVE_GROUP:I

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_d
        0x3 -> :sswitch_4
        0x4 -> :sswitch_a
        0x8 -> :sswitch_6
        0x10 -> :sswitch_0
        0x11 -> :sswitch_3
        0x12 -> :sswitch_2
        0x13 -> :sswitch_e
        0x14 -> :sswitch_e
        0x1f -> :sswitch_1
        0x20 -> :sswitch_5
        0x80 -> :sswitch_7
        0x1001 -> :sswitch_b
        0x1002 -> :sswitch_9
        0x1003 -> :sswitch_8
        0x1006 -> :sswitch_c
    .end sparse-switch
.end method

.method public static socket(Z)Ljava/io/FileDescriptor;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    :try_start_0
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v4, Llibcore/io/OsConstants;->AF_INET6:I

    if-eqz p0, :cond_1

    sget v2, Llibcore/io/OsConstants;->SOCK_STREAM:I

    :goto_0
    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v5}, Llibcore/io/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v1

    if-nez p0, :cond_0

    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v3, Llibcore/io/OsConstants;->IPPROTO_IPV6:I

    sget v4, Llibcore/io/OsConstants;->IPV6_MULTICAST_HOPS:I

    const/4 v5, 0x1

    invoke-interface {v2, v1, v3, v4, v5}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    :cond_0
    return-object v1

    :cond_1
    sget v2, Llibcore/io/OsConstants;->SOCK_DGRAM:I
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v2

    throw v2
.end method

.method public static write(Ljava/io/FileDescriptor;[BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v2, p1

    invoke-static {v2, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    if-nez p3, :cond_1

    :cond_0
    return-void

    :cond_1
    :goto_0
    if-lez p3, :cond_0

    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v2, p0, p1, p2, p3}, Llibcore/io/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method
