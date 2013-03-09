.class public final Ljava/net/Inet4Address;
.super Ljava/net/InetAddress;
.source "Inet4Address.java"


# static fields
.field public static final ALL:Ljava/net/InetAddress; = null

.field public static final ANY:Ljava/net/InetAddress; = null

.field public static final LOOPBACK:Ljava/net/InetAddress; = null

.field private static final serialVersionUID:J = 0x2d9b57af9fe3ebdbL


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x4

    new-instance v0, Ljava/net/Inet4Address;

    new-array v1, v2, [B

    fill-array-data v1, :array_0

    invoke-direct {v0, v1, v3}, Ljava/net/Inet4Address;-><init>([BLjava/lang/String;)V

    sput-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    new-instance v0, Ljava/net/Inet4Address;

    new-array v1, v2, [B

    fill-array-data v1, :array_1

    invoke-direct {v0, v1, v3}, Ljava/net/Inet4Address;-><init>([BLjava/lang/String;)V

    sput-object v0, Ljava/net/Inet4Address;->ALL:Ljava/net/InetAddress;

    new-instance v0, Ljava/net/Inet4Address;

    new-array v1, v2, [B

    fill-array-data v1, :array_2

    const-string v2, "localhost"

    invoke-direct {v0, v1, v2}, Ljava/net/Inet4Address;-><init>([BLjava/lang/String;)V

    sput-object v0, Ljava/net/Inet4Address;->LOOPBACK:Ljava/net/InetAddress;

    return-void

    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 0x1
        0xfft
        0xfft
        0xfft
        0xfft
    .end array-data

    :array_2
    .array-data 0x1
        0x7ft
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method constructor <init>([BLjava/lang/String;)V
    .locals 1

    sget v0, Llibcore/io/OsConstants;->AF_INET:I

    invoke-direct {p0, v0, p1, p2}, Ljava/net/InetAddress;-><init>(I[BLjava/lang/String;)V

    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
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


# virtual methods
.method public isAnyLocalAddress()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    aget-byte v2, v2, v1

    if-nez v2, :cond_0

    iget-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    aget-byte v2, v2, v0

    if-nez v2, :cond_0

    iget-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    if-nez v2, :cond_0

    iget-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isLinkLocalAddress()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xa9

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xfe

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isLoopbackAddress()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Ljava/net/InetAddress;->ipaddress:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x7f

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isMCGlobal()Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/net/Inet4Address;->isMulticastAddress()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v2, v1, v3}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result v0

    ushr-int/lit8 v2, v0, 0x8

    const v3, 0xe00001

    if-lt v2, v3, :cond_0

    ushr-int/lit8 v2, v0, 0x18

    const/16 v3, 0xee

    if-gt v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isMCLinkLocal()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xe0

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    aget-byte v2, v2, v0

    if-nez v2, :cond_0

    iget-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isMCNodeLocal()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMCOrgLocal()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xef

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xfc

    const/16 v3, 0xc0

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

    const/16 v3, 0xef

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xff

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

    and-int/lit16 v1, v1, 0xf0

    const/16 v2, 0xe0

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSiteLocalAddress()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xac

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xf0

    const/16 v3, 0x10

    if-eq v2, v3, :cond_0

    :cond_2
    iget-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xc0

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Ljava/net/InetAddress;->ipaddress:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xa8

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
