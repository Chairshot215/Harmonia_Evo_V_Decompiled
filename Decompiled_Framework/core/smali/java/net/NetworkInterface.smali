.class public final Ljava/net/NetworkInterface;
.super Ljava/lang/Object;
.source "NetworkInterface.java"


# instance fields
.field private final addresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/NetworkInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final interfaceAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/net/InterfaceAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final interfaceIndex:I

.field private final name:Ljava/lang/String;

.field private parent:Ljava/net/NetworkInterface;


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/net/InterfaceAddress;",
            ">;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljava/net/NetworkInterface;->children:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/NetworkInterface;->parent:Ljava/net/NetworkInterface;

    iput-object p1, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    iput p2, p0, Ljava/net/NetworkInterface;->interfaceIndex:I

    iput-object p3, p0, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    iput-object p4, p0, Ljava/net/NetworkInterface;->interfaceAddresses:Ljava/util/List;

    return-void
.end method

.method private static collectIpv4Address(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/net/InterfaceAddress;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    const/4 v4, 0x0

    :try_start_0
    sget-object v6, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v7, Llibcore/io/OsConstants;->AF_INET:I

    sget v8, Llibcore/io/OsConstants;->SOCK_DGRAM:I

    const/4 v9, 0x0

    invoke-interface {v6, v7, v8, v9}, Llibcore/io/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v4

    sget-object v6, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v7, Llibcore/io/OsConstants;->SIOCGIFADDR:I

    invoke-interface {v6, v4, v7, p0}, Llibcore/io/Os;->ioctlInetAddress(Ljava/io/FileDescriptor;ILjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    sget-object v6, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v7, Llibcore/io/OsConstants;->SIOCGIFBRDADDR:I

    invoke-interface {v6, v4, v7, p0}, Llibcore/io/Os;->ioctlInetAddress(Ljava/io/FileDescriptor;ILjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    sget-object v6, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v7, Llibcore/io/OsConstants;->SIOCGIFNETMASK:I

    invoke-interface {v6, v4, v7, p0}, Llibcore/io/Os;->ioctlInetAddress(Ljava/io/FileDescriptor;ILjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    sget-object v6, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {v1, v6}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/net/InterfaceAddress;

    check-cast v0, Ljava/net/Inet4Address;

    check-cast v1, Ljava/net/Inet4Address;

    check-cast v5, Ljava/net/Inet4Address;

    invoke-direct {v6, v0, v1, v5}, Ljava/net/InterfaceAddress;-><init>(Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;)V

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    :goto_0
    return-void

    :catch_0
    move-exception v2

    :try_start_1
    iget v6, v2, Llibcore/io/ErrnoException;->errno:I

    sget v7, Llibcore/io/OsConstants;->EADDRNOTAVAIL:I

    if-eq v6, v7, :cond_1

    invoke-static {v2}, Ljava/net/NetworkInterface;->rethrowAsSocketException(Ljava/lang/Exception;)Ljava/net/SocketException;

    move-result-object v6

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v6

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    throw v6

    :cond_1
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    goto :goto_0

    :catch_1
    move-exception v3

    :try_start_2
    invoke-static {v3}, Ljava/net/NetworkInterface;->rethrowAsSocketException(Ljava/lang/Exception;)Ljava/net/SocketException;

    move-result-object v6

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private static collectIpv6Addresses(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/net/InterfaceAddress;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    const-string v10, "/proc/net/if_inet6"

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v9, 0x10

    new-array v0, v9, [B

    const/4 v2, 0x0

    :goto_1
    array-length v9, v0

    if-ge v2, v9, :cond_1

    mul-int/lit8 v9, v2, 0x2

    mul-int/lit8 v10, v2, 0x2

    add-int/lit8 v10, v10, 0x2

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/16 v9, 0x24

    const/16 v10, 0x26

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Short;->parseShort(Ljava/lang/String;I)S

    move-result v7

    new-instance v5, Ljava/net/Inet6Address;

    const/4 v9, 0x0

    invoke-direct {v5, v0, v9, p1}, Ljava/net/Inet6Address;-><init>([BLjava/lang/String;I)V

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/net/InterfaceAddress;

    invoke-direct {v9, v5, v7}, Ljava/net/InterfaceAddress;-><init>(Ljava/net/Inet6Address;S)V

    invoke-interface {p3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v3, v4

    :goto_2
    :try_start_2
    invoke-static {v1}, Ljava/net/NetworkInterface;->rethrowAsSocketException(Ljava/lang/Exception;)Ljava/net/SocketException;

    move-result-object v9

    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v9

    :goto_3
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v9

    :cond_2
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_1
    move-exception v9

    move-object v3, v4

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method static forUnboundMulticastSocket()Ljava/net/NetworkInterface;
    .locals 6

    new-instance v0, Ljava/net/NetworkInterface;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/net/InetAddress;

    const/4 v4, 0x0

    sget-object v5, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/net/NetworkInterface;-><init>(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public static getByIndex(I)Ljava/net/NetworkInterface;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v1, p0}, Llibcore/io/Os;->if_indextoname(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v1

    goto :goto_0
.end method

.method public static getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "address == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfacesList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    iget-object v2, v1, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "interfaceName == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-static {p0}, Ljava/net/NetworkInterface;->isValidInterfaceName(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/sys/class/net/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/ifindex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/NetworkInterface;->readIntFile(Ljava/lang/String;)I

    move-result v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v2, v0, v1}, Ljava/net/NetworkInterface;->collectIpv6Addresses(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    invoke-static {p0, v0, v1}, Ljava/net/NetworkInterface;->collectIpv4Address(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    new-instance v3, Ljava/net/NetworkInterface;

    invoke-direct {v3, p0, v2, v0, v1}, Ljava/net/NetworkInterface;-><init>(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method

.method public static getNetworkInterfaces()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/NetworkInterface;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfacesList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method private static getNetworkInterfacesList()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/NetworkInterface;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .annotation build Ljava/lang/FindBugsSuppressWarnings;
        value = {
            "DMI_HARDCODED_ABSOLUTE_FILENAME"
        }
    .end annotation

    const/4 v10, 0x1

    new-instance v7, Ljava/io/File;

    const-string v8, "/sys/class/net"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    array-length v7, v3

    new-array v4, v7, [Ljava/net/NetworkInterface;

    const/4 v2, 0x0

    :goto_0
    array-length v7, v3

    if-ge v2, v7, :cond_0

    aget-object v7, v3, v2

    invoke-static {v7}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v7

    aput-object v7, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    array-length v7, v4

    new-array v5, v7, [Z

    const/4 v0, 0x0

    :goto_1
    array-length v7, v4

    if-ge v0, v7, :cond_5

    aget-boolean v7, v5, v0

    if-eqz v7, :cond_1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_3
    array-length v7, v4

    if-ge v1, v7, :cond_4

    aget-boolean v7, v5, v1

    if-eqz v7, :cond_3

    :cond_2
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    aget-object v7, v4, v1

    iget-object v7, v7, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v4, v0

    iget-object v9, v9, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    aput-boolean v10, v5, v1

    aget-object v7, v4, v0

    iget-object v7, v7, Ljava/net/NetworkInterface;->children:Ljava/util/List;

    aget-object v8, v4, v1

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v7, v4, v1

    aget-object v8, v4, v0

    iput-object v8, v7, Ljava/net/NetworkInterface;->parent:Ljava/net/NetworkInterface;

    aget-object v7, v4, v0

    iget-object v7, v7, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    aget-object v8, v4, v1

    iget-object v8, v8, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    :cond_4
    aget-object v7, v4, v0

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aput-boolean v10, v5, v0

    goto :goto_2

    :cond_5
    return-object v6
.end method

.method private hasFlag(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sys/class/net/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/flags"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/NetworkInterface;->readIntFile(Ljava/lang/String;)I

    move-result v0

    and-int v1, v0, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isValidInterfaceName(Ljava/lang/String;)Z
    .locals 6
    .annotation build Ljava/lang/FindBugsSuppressWarnings;
        value = {
            "DMI_HARDCODED_ABSOLUTE_FILENAME"
        }
    .end annotation

    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/class/net"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static readIntFile(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Ljava/net/NetworkInterface;->rethrowAsSocketException(Ljava/lang/Exception;)Ljava/net/SocketException;

    move-result-object v2

    throw v2
.end method

.method private static rethrowAsSocketException(Ljava/lang/Exception;)Ljava/net/SocketException;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    new-instance v0, Ljava/net/SocketException;

    invoke-direct {v0}, Ljava/net/SocketException;-><init>()V

    invoke-virtual {v0, p0}, Ljava/net/SocketException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v3, p1, Ljava/net/NetworkInterface;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Ljava/net/NetworkInterface;

    iget v3, p0, Ljava/net/NetworkInterface;->interfaceIndex:I

    iget v4, v0, Ljava/net/NetworkInterface;->interfaceIndex:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    iget-object v4, v0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    iget-object v4, v0, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getHardwareAddress()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/sys/class/net/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/address"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    new-array v2, v4, [B

    const/4 v1, 0x0

    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    mul-int/lit8 v4, v1, 0x3

    mul-int/lit8 v5, v1, 0x3

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_2

    aget-byte v4, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_1

    :goto_2
    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v0}, Ljava/net/NetworkInterface;->rethrowAsSocketException(Ljava/lang/Exception;)Ljava/net/SocketException;

    move-result-object v4

    throw v4
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Ljava/net/NetworkInterface;->interfaceIndex:I

    return v0
.end method

.method public getInetAddresses()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaceAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/net/InterfaceAddress;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ljava/net/NetworkInterface;->interfaceAddresses:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMTU()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sys/class/net/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mtu"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/NetworkInterface;->readIntFile(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Ljava/net/NetworkInterface;
    .locals 1

    iget-object v0, p0, Ljava/net/NetworkInterface;->parent:Ljava/net/NetworkInterface;

    return-object v0
.end method

.method public getSubInterfaces()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/NetworkInterface;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ljava/net/NetworkInterface;->children:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isLoopback()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    sget v0, Llibcore/io/OsConstants;->IFF_LOOPBACK:I

    invoke-direct {p0, v0}, Ljava/net/NetworkInterface;->hasFlag(I)Z

    move-result v0

    return v0
.end method

.method public isPointToPoint()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    sget v0, Llibcore/io/OsConstants;->IFF_POINTOPOINT:I

    invoke-direct {p0, v0}, Ljava/net/NetworkInterface;->hasFlag(I)Z

    move-result v0

    return v0
.end method

.method public isUp()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    sget v0, Llibcore/io/OsConstants;->IFF_UP:I

    invoke-direct {p0, v0}, Ljava/net/NetworkInterface;->hasFlag(I)Z

    move-result v0

    return v0
.end method

.method public isVirtual()Z
    .locals 1

    iget-object v0, p0, Ljava/net/NetworkInterface;->parent:Ljava/net/NetworkInterface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supportsMulticast()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    sget v0, Llibcore/io/OsConstants;->IFF_MULTICAST:I

    invoke-direct {p0, v0}, Ljava/net/NetworkInterface;->hasFlag(I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x19

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/net/NetworkInterface;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ljava/net/NetworkInterface;->interfaceIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/net/NetworkInterface;->addresses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
