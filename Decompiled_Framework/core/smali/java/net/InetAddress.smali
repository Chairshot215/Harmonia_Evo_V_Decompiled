.class public Ljava/net/InetAddress;
.super Ljava/lang/Object;
.source "InetAddress.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final UNSPECIFIED:Ljava/net/InetAddress; = null

.field private static final addressCache:Ljava/net/AddressCache; = null

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = 0x2d9b57af9fe3ebdbL


# instance fields
.field private family:I

.field hostName:Ljava/lang/String;

.field ipaddress:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v2, 0x0

    new-instance v0, Ljava/net/AddressCache;

    invoke-direct {v0}, Ljava/net/AddressCache;-><init>()V

    sput-object v0, Ljava/net/InetAddress;->addressCache:Ljava/net/AddressCache;

    new-instance v0, Ljava/net/InetAddress;

    sget v1, Llibcore/io/OsConstants;->AF_UNSPEC:I

    invoke-direct {v0, v1, v2, v2}, Ljava/net/InetAddress;-><init>(I[BLjava/lang/String;)V

    sput-object v0, Ljava/net/InetAddress;->UNSPECIFIED:Ljava/net/InetAddress;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "address"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "family"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "hostName"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/net/InetAddress;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method constructor <init>(I[BLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljava/net/InetAddress;->family:I

    iput-object p2, p0, Ljava/net/InetAddress;->ipaddress:[B

    iput-object p3, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Ljava/net/InetAddress;->isReachable(Ljava/net/InetAddress;Ljava/net/InetAddress;I)Z

    move-result v0

    return v0
.end method

.method private static badAddressLength([B)Ljava/net/UnknownHostException;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Address is neither 4 or 16 bytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static bytesToInetAddresses([[BLjava/lang/String;)[Ljava/net/InetAddress;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    array-length v2, p0

    new-array v1, v2, [Ljava/net/InetAddress;

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    invoke-static {v2, p1}, Ljava/net/InetAddress;->makeInetAddress([BLjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static clearAddressCache()V
    .locals 1

    sget-object v0, Ljava/net/InetAddress;->addressCache:Ljava/net/AddressCache;

    invoke-virtual {v0}, Ljava/net/AddressCache;->clear()V

    return-void
.end method

.method public static clearDnsCache()V
    .locals 1

    sget-object v0, Ljava/net/InetAddress;->addressCache:Ljava/net/AddressCache;

    invoke-virtual {v0}, Ljava/net/AddressCache;->clear()V

    return-void
.end method

.method private static disallowDeprecatedFormats(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 2

    instance-of v0, p1, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Llibcore/io/OsConstants;->AF_INET:I

    invoke-interface {v0, v1, p0}, Llibcore/io/Os;->inet_pton(ILjava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    goto :goto_0
.end method

.method public static getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    invoke-static {p0}, Ljava/net/InetAddress;->getAllByNameImpl(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/net/InetAddress;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/InetAddress;

    return-object v0
.end method

.method private static getAllByNameImpl(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    invoke-static {}, Ljava/net/Socket;->RXTXTriggerIfNeeded()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Ljava/net/InetAddress;->loopbackAddresses()[Ljava/net/InetAddress;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    invoke-static {p0}, Ljava/net/InetAddress;->parseNumericAddressNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {p0, v0}, Ljava/net/InetAddress;->disallowDeprecatedFormats(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v1, Ljava/net/UnknownHostException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deprecated IPv4 address format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/net/InetAddress;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    goto :goto_0

    :cond_3
    invoke-static {p0}, Ljava/net/InetAddress;->lookupHostByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, [Ljava/net/InetAddress;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/net/InetAddress;

    goto :goto_0
.end method

.method public static getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[BI)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method private static getByAddress(Ljava/lang/String;[BI)Ljava/net/InetAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/net/UnknownHostException;

    const-string v1, "ipAddress == null"

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    new-instance v1, Ljava/net/Inet4Address;

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0, p0}, Ljava/net/Inet4Address;-><init>([BLjava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    invoke-static {p1}, Ljava/net/InetAddress;->isIPv4MappedAddress([B)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/net/Inet4Address;

    invoke-static {p1}, Ljava/net/InetAddress;->ipv4MappedToIPv4([B)[B

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/net/Inet4Address;-><init>([BLjava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/net/Inet6Address;

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0, p0, p2}, Ljava/net/Inet6Address;-><init>([BLjava/lang/String;I)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-static {p1}, Ljava/net/InetAddress;->badAddressLength([B)Ljava/net/UnknownHostException;

    move-result-object v0

    throw v0
.end method

.method public static getByAddress([B)Ljava/net/InetAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[BI)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    invoke-static {p0}, Ljava/net/InetAddress;->getAllByNameImpl(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static getHostByAddrImpl(Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v2

    invoke-interface {v2}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v3, Llibcore/io/OsConstants;->NI_NAMEREQD:I

    invoke-interface {v2, p0, v3}, Llibcore/io/Os;->getnameinfo(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2, v1}, Ljava/net/InetAddress;->makeInetAddress([BLjava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Llibcore/io/GaiException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Llibcore/io/GaiException;->rethrowAsUnknownHostException()Ljava/net/UnknownHostException;

    move-result-object v2

    throw v2
.end method

.method public static getLocalHost()Ljava/net/InetAddress;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v1}, Llibcore/io/Os;->uname()Llibcore/io/StructUtsname;

    move-result-object v1

    iget-object v0, v1, Llibcore/io/StructUtsname;->nodename:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->lookupHostByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    return-object v1
.end method

.method public static getLoopbackAddress()Ljava/net/InetAddress;
    .locals 1

    sget-object v0, Ljava/net/Inet6Address;->LOOPBACK:Ljava/net/InetAddress;

    return-object v0
.end method

.method private static ipv4MappedToIPv4([B)[B
    .locals 4

    const/4 v3, 0x4

    new-array v1, v3, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    add-int/lit8 v2, v0, 0xc

    aget-byte v2, p0, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static isIPv4MappedAddress([B)Z
    .locals 6

    const/16 v5, 0xa

    const/4 v4, -0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    array-length v2, p0

    const/16 v3, 0x10

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_2

    aget-byte v2, p0, v0

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    aget-byte v2, p0, v5

    if-ne v2, v4, :cond_0

    const/16 v2, 0xb

    aget-byte v2, p0, v2

    if-ne v2, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Ljava/net/InetAddress;->parseNumericAddressNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Ljava/net/InetAddress;->disallowDeprecatedFormats(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isReachable(Ljava/net/InetAddress;Ljava/net/InetAddress;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v4}, Llibcore/io/IoBridge;->socket(Z)Ljava/io/FileDescriptor;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v1, p2, v3}, Llibcore/io/IoBridge;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    :cond_0
    const/4 v3, 0x7

    invoke-static {v1, p1, v3, p3}, Llibcore/io/IoBridge;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    :cond_1
    :goto_0
    invoke-static {v1}, Llibcore/io/IoBridge;->closeSocket(Ljava/io/FileDescriptor;)V

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Llibcore/io/ErrnoException;

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Llibcore/io/ErrnoException;

    iget v3, v3, Llibcore/io/ErrnoException;->errno:I

    sget v6, Llibcore/io/OsConstants;->ECONNREFUSED:I

    if-ne v3, v6, :cond_2

    move v2, v4

    :goto_1
    goto :goto_0

    :cond_2
    move v2, v5

    goto :goto_1
.end method

.method private static lookupHostByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v9

    invoke-interface {v9}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    const/4 v3, 0x0

    if-eqz v3, :cond_1

    instance-of v9, v3, [Ljava/net/InetAddress;

    if-eqz v9, :cond_0

    check-cast v3, [Ljava/net/InetAddress;

    check-cast v3, [Ljava/net/InetAddress;

    :goto_0
    return-object v3

    :cond_0
    new-instance v9, Ljava/net/UnknownHostException;

    check-cast v3, Ljava/lang/String;

    invoke-direct {v9, v3}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_1
    :try_start_0
    new-instance v6, Llibcore/io/StructAddrinfo;

    invoke-direct {v6}, Llibcore/io/StructAddrinfo;-><init>()V

    sget v9, Llibcore/io/OsConstants;->AI_ADDRCONFIG:I

    iput v9, v6, Llibcore/io/StructAddrinfo;->ai_flags:I

    sget v9, Llibcore/io/OsConstants;->AF_UNSPEC:I

    iput v9, v6, Llibcore/io/StructAddrinfo;->ai_family:I

    sget v9, Llibcore/io/OsConstants;->SOCK_STREAM:I

    iput v9, v6, Llibcore/io/StructAddrinfo;->ai_socktype:I

    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v9, p0, v6}, Llibcore/io/Os;->getaddrinfo(Ljava/lang/String;Llibcore/io/StructAddrinfo;)[Ljava/net/InetAddress;

    move-result-object v1

    move-object v2, v1

    array-length v8, v2

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_2

    aget-object v0, v2, v7

    iput-object p0, v0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    sget-object v9, Ljava/net/InetAddress;->addressCache:Ljava/net/AddressCache;

    invoke-virtual {v9, p0, v1}, Ljava/net/AddressCache;->put(Ljava/lang/String;[Ljava/net/InetAddress;)V
    :try_end_0
    .catch Llibcore/io/GaiException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v1

    goto :goto_0

    :catch_0
    move-exception v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to resolve host \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget v11, v5, Llibcore/io/GaiException;->error:I

    invoke-interface {v10, v11}, Llibcore/io/Os;->gai_strerror(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v9, Ljava/net/InetAddress;->addressCache:Ljava/net/AddressCache;

    invoke-virtual {v9, p0, v4}, Ljava/net/AddressCache;->putUnknownHost(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Llibcore/io/GaiException;->rethrowAsUnknownHostException(Ljava/lang/String;)Ljava/net/UnknownHostException;

    move-result-object v9

    throw v9
.end method

.method private static loopbackAddresses()[Ljava/net/InetAddress;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/net/InetAddress;

    const/4 v1, 0x0

    sget-object v2, Ljava/net/Inet6Address;->LOOPBACK:Ljava/net/InetAddress;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/net/Inet4Address;->LOOPBACK:Ljava/net/InetAddress;

    aput-object v2, v0, v1

    return-object v0
.end method

.method private static makeInetAddress([BLjava/lang/String;)Ljava/net/InetAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/net/Inet4Address;

    invoke-direct {v0, p0, p1}, Ljava/net/Inet4Address;-><init>([BLjava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/net/Inet6Address;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ljava/net/Inet6Address;-><init>([BLjava/lang/String;I)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Ljava/net/InetAddress;->badAddressLength([B)Ljava/net/UnknownHostException;

    move-result-object v0

    throw v0
.end method

.method public static parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 4

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    sget-object v0, Ljava/net/Inet6Address;->LOOPBACK:Ljava/net/InetAddress;

    :cond_1
    return-object v0

    :cond_2
    invoke-static {p0}, Ljava/net/InetAddress;->parseNumericAddressNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/net/InetAddress;->disallowDeprecatedFormats(Ljava/lang/String;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a numeric address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static parseNumericAddressNoThrow(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 4

    const-string v2, "["

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "]"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x3a

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance v1, Llibcore/io/StructAddrinfo;

    invoke-direct {v1}, Llibcore/io/StructAddrinfo;-><init>()V

    sget v2, Llibcore/io/OsConstants;->AI_NUMERICHOST:I

    iput v2, v1, Llibcore/io/StructAddrinfo;->ai_flags:I

    const/4 v0, 0x0

    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v2, p0, v1}, Llibcore/io/Os;->getaddrinfo(Ljava/lang/String;Llibcore/io/StructAddrinfo;)[Ljava/net/InetAddress;
    :try_end_0
    .catch Llibcore/io/GaiException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    :goto_1
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v1

    const-string v2, "address"

    invoke-virtual {v1, v2, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x4

    new-array v2, v2, [B

    iput-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    iget-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v2, v4, v0, v3}, Llibcore/io/Memory;->pokeInt([BIILjava/nio/ByteOrder;)V

    const-string v2, "hostName"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    const-string v2, "family"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Ljava/net/InetAddress;->family:I

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    new-instance v0, Ljava/net/Inet4Address;

    iget-object v1, p0, Ljava/net/InetAddress;->ipaddress:[B

    iget-object v2, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/net/Inet4Address;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    iget-object v1, p0, Ljava/net/InetAddress;->ipaddress:[B

    if-nez v1, :cond_0

    const-string v1, "address"

    invoke-virtual {v0, v1, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    :goto_0
    const-string v1, "family"

    iget v2, p0, Ljava/net/InetAddress;->family:I

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    const-string v1, "hostName"

    iget-object v2, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    return-void

    :cond_0
    const-string v1, "address"

    iget-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v2, v4, v3}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ljava/net/InetAddress;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljava/net/InetAddress;->ipaddress:[B

    check-cast p1, Ljava/net/InetAddress;

    iget-object v1, p1, Ljava/net/InetAddress;->ipaddress:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public getAddress()[B
    .locals 1

    iget-object v0, p0, Ljava/net/InetAddress;->ipaddress:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getCanonicalHostName()Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getHostByAddrImpl(Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v1

    iget-object v1, v1, Ljava/net/InetAddress;->hostName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getHostAddress()Ljava/lang/String;
    .locals 2

    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Llibcore/io/OsConstants;->NI_NUMERICHOST:I

    invoke-interface {v0, p0, v1}, Llibcore/io/Os;->getnameinfo(Ljava/net/InetAddress;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getHostByAddrImpl(Ljava/net/InetAddress;)Ljava/net/InetAddress;

    move-result-object v1

    iget-object v1, v1, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    iput-object v1, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Ljava/net/InetAddress;->ipaddress:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public isAnyLocalAddress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLinkLocalAddress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLoopbackAddress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMCGlobal()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMCLinkLocal()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMCNodeLocal()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMCOrgLocal()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMCSiteLocal()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMulticastAddress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isReachable(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Ljava/net/InetAddress;->isReachable(Ljava/net/NetworkInterface;II)Z

    move-result v0

    return v0
.end method

.method public isReachable(Ljava/net/NetworkInterface;II)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ttl < 0 || timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p1, :cond_3

    const/4 v0, 0x0

    invoke-direct {p0, p0, v0, p3}, Ljava/net/InetAddress;->isReachable(Ljava/net/InetAddress;Ljava/net/InetAddress;I)Z

    move-result v0

    :cond_2
    :goto_0
    return v0

    :cond_3
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    move-object v2, p0

    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v6, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v5, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    new-instance v0, Ljava/net/InetAddress$1;

    move-object v1, p0

    move v4, p3

    invoke-direct/range {v0 .. v6}, Ljava/net/InetAddress$1;-><init>(Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;ILjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0}, Ljava/net/InetAddress$1;->start()V

    goto :goto_1

    :cond_4
    :try_start_0
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2
.end method

.method public isSiteLocalAddress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/net/InetAddress;->hostName:Ljava/lang/String;

    goto :goto_0
.end method
