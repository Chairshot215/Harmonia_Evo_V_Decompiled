.class public final Ljava/net/Inet6Address;
.super Ljava/net/InetAddress;
.source "Inet6Address.java"


# static fields
.field public static final ANY:Ljava/net/InetAddress; = null

.field public static final LOOPBACK:Ljava/net/InetAddress; = null

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = 0x5f7c2081522c8021L


# instance fields
.field private ifname:Ljava/lang/String;

.field private scope_id:I

.field private scope_id_set:Z

.field private scope_ifname_set:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v3, 0x10

    const/4 v4, 0x0

    new-instance v0, Ljava/net/Inet6Address;

    new-array v1, v3, [B

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Ljava/net/Inet6Address;-><init>([BLjava/lang/String;I)V

    sput-object v0, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    new-instance v0, Ljava/net/Inet6Address;

    new-array v1, v3, [B

    fill-array-data v1, :array_1

    const-string v2, "localhost"

    invoke-direct {v0, v1, v2, v4}, Ljava/net/Inet6Address;-><init>([BLjava/lang/String;I)V

    sput-object v0, Ljava/net/Inet6Address;->LOOPBACK:Ljava/net/InetAddress;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "ipaddress"

    const-class v3, [B

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "scope_id"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "scope_id_set"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "scope_ifname_set"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "ifname"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/net/Inet6Address;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void

    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method constructor <init>([BLjava/lang/String;I)V
    .locals 1

    sget v0, Llibcore/io/OsConstants;->AF_INET6:I

    invoke-direct {p0, v0, p1, p2}, Ljava/net/InetAddress;-><init>(I[BLjava/lang/String;)V

    iput p3, p0, Ljava/net/Inet6Address;->scope_id:I

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Ljava/net/Inet6Address;->scope_id_set:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private compareLocalType(Ljava/net/Inet6Address;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/net/Inet6Address;->isSiteLocalAddress()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/net/Inet6Address;->isSiteLocalAddress()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    invoke-virtual {p1}, Ljava/net/Inet6Address;->isSiteLocalAddress()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    if-eqz p1, :cond_0

    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not an IPv6 address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-gez p2, :cond_2

    const/4 p2, 0x0

    :cond_2
    new-instance v0, Ljava/net/Inet6Address;

    invoke-direct {v0, p1, p0, p2}, Ljava/net/Inet6Address;-><init>([BLjava/lang/String;I)V

    return-object v0
.end method

.method public static getByAddress(Ljava/lang/String;[BLjava/net/NetworkInterface;)Ljava/net/Inet6Address;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v5, 0x0

    invoke-static {p0, p1, v5}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    move-result-object v0

    if-nez p2, :cond_1

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v5

    array-length v5, v5

    const/16 v6, 0x10

    if-ne v5, v6, :cond_2

    move-object v4, v2

    check-cast v4, Ljava/net/Inet6Address;

    invoke-direct {v4, v0}, Ljava/net/Inet6Address;->compareLocalType(Ljava/net/Inet6Address;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-boolean v7, v0, Ljava/net/Inet6Address;->scope_id_set:Z

    iget v5, v4, Ljava/net/Inet6Address;->scope_id:I

    iput v5, v0, Ljava/net/Inet6Address;->scope_id:I

    iput-boolean v7, v0, Ljava/net/Inet6Address;->scope_ifname_set:Z

    invoke-virtual {p2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Ljava/net/Inet6Address;->ifname:Ljava/lang/String;

    :cond_3
    iget-boolean v5, v0, Ljava/net/Inet6Address;->scope_id_set:Z

    if-nez v5, :cond_0

    new-instance v5, Ljava/net/UnknownHostException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Scope id not found for address: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    const-string v1, "ipaddress"

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    iput-object v1, p0, Ljava/net/InetAddress;->ipaddress:[B

    const-string v1, "scope_id"

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Ljava/net/Inet6Address;->scope_id:I

    const-string v1, "scope_id_set"

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Ljava/net/Inet6Address;->scope_id_set:Z

    const-string v1, "ifname"

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Ljava/net/Inet6Address;->ifname:Ljava/lang/String;

    const-string v1, "scope_ifname_set"

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Ljava/net/Inet6Address;->scope_ifname_set:Z

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    iget-object v1, p0, Ljava/net/InetAddress;->ipaddress:[B

    if-nez v1, :cond_0

    const-string v1, "ipaddress"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const-string v1, "scope_id"

    iget v2, p0, Ljava/net/Inet6Address;->scope_id:I

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    const-string v1, "scope_id_set"

    iget-boolean v2, p0, Ljava/net/Inet6Address;->scope_id_set:Z

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    const-string v1, "scope_ifname_set"

    iget-boolean v2, p0, Ljava/net/Inet6Address;->scope_ifname_set:Z

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    const-string v1, "ifname"

    iget-object v2, p0, Ljava/net/Inet6Address;->ifname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    return-void

    :cond_0
    const-string v1, "ipaddress"

    iget-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public getScopeId()I
    .locals 1

    iget-boolean v0, p0, Ljava/net/Inet6Address;->scope_id_set:Z

    if-eqz v0, :cond_0

    iget v0, p0, Ljava/net/Inet6Address;->scope_id:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScopedInterface()Ljava/net/NetworkInterface;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-boolean v2, p0, Ljava/net/Inet6Address;->scope_ifname_set:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljava/net/Inet6Address;->ifname:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljava/net/Inet6Address;->ifname:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isAnyLocalAddress()Z
    .locals 2

    iget-object v0, p0, Ljava/net/InetAddress;->ipaddress:[B

    sget-object v1, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    iget-object v1, v1, Ljava/net/InetAddress;->ipaddress:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method public isIPv4CompatibleAddress()Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xc

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ljava/net/InetAddress;->ipaddress:[B

    aget-byte v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public isLinkLocalAddress()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xfe

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xc0

    const/16 v3, 0x80

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isLoopbackAddress()Z
    .locals 2

    iget-object v0, p0, Ljava/net/InetAddress;->ipaddress:[B

    sget-object v1, Ljava/net/Inet6Address;->LOOPBACK:Ljava/net/InetAddress;

    iget-object v1, v1, Ljava/net/InetAddress;->ipaddress:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method public isMCGlobal()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0xf

    const/16 v3, 0xe

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isMCLinkLocal()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isMCNodeLocal()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0xf

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isMCOrgLocal()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0xf

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isMCSiteLocal()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isMulticastAddress()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Ljava/net/InetAddress;->ipaddress:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xff

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSiteLocalAddress()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xfe

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xc0

    const/16 v3, 0xc0

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Ljava/net/Inet6Address;->ifname:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/net/Inet6Address;->ifname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Ljava/net/Inet6Address;->scope_id:I

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/net/Inet6Address;->scope_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-super {p0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
