.class public Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;
.super Ljava/lang/Object;
.source "ProtocolVersion.java"


# static fields
.field public static final SSLv3:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

.field public static final TLSv1:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

.field private static protocolsByName:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;",
            ">;"
        }
    .end annotation
.end field

.field public static final supportedProtocols:[Ljava/lang/String;


# instance fields
.field public final name:Ljava/lang/String;

.field public final version:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "TLSv1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "SSLv3"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->supportedProtocols:[Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->protocolsByName:Ljava/util/Hashtable;

    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    const-string v1, "SSLv3"

    new-array v2, v3, [B

    fill-array-data v2, :array_0

    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;-><init>(Ljava/lang/String;[B)V

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->SSLv3:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    const-string v1, "TLSv1"

    new-array v2, v3, [B

    fill-array-data v2, :array_1

    invoke-direct {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;-><init>(Ljava/lang/String;[B)V

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->TLSv1:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->protocolsByName:Ljava/util/Hashtable;

    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->SSLv3:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    iget-object v1, v1, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->name:Ljava/lang/String;

    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->SSLv3:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->protocolsByName:Ljava/util/Hashtable;

    sget-object v1, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->TLSv1:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    iget-object v1, v1, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->name:Ljava/lang/String;

    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->TLSv1:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->protocolsByName:Ljava/util/Hashtable;

    const-string v1, "SSL"

    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->SSLv3:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->protocolsByName:Ljava/util/Hashtable;

    const-string v1, "TLS"

    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->TLSv1:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :array_0
    .array-data 0x1
        0x3t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 0x1
        0x3t
        0x1t
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->name:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->version:[B

    return-void
.end method

.method public static getByName(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;
    .locals 1

    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->protocolsByName:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    return-object v0
.end method

.method public static getByVersion([B)Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    aget-byte v0, p0, v2

    if-ne v0, v2, :cond_0

    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->TLSv1:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    :goto_0
    return-object v0

    :cond_0
    aget-byte v0, p0, v2

    if-nez v0, :cond_1

    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->SSLv3:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLatestVersion([Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz p0, :cond_0

    array-length v3, p0

    if-nez v3, :cond_2

    :cond_0
    const/4 v2, 0x0

    :cond_1
    return-object v2

    :cond_2
    aget-object v3, p0, v5

    invoke-static {v3}, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->getByName(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    move-result-object v2

    const/4 v1, 0x1

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    aget-object v3, p0, v1

    invoke-static {v3}, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->getByName(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    iget-object v3, v2, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->version:[B

    aget-byte v3, v3, v5

    iget-object v4, v0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->version:[B

    aget-byte v4, v4, v5

    if-lt v3, v4, :cond_5

    iget-object v3, v2, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->version:[B

    aget-byte v3, v3, v5

    iget-object v4, v0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->version:[B

    aget-byte v4, v4, v5

    if-ne v3, v4, :cond_3

    iget-object v3, v2, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->version:[B

    aget-byte v3, v3, v6

    iget-object v4, v0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->version:[B

    aget-byte v4, v4, v6

    if-ge v3, v4, :cond_3

    :cond_5
    move-object v2, v0

    goto :goto_1
.end method

.method public static isSupported(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->protocolsByName:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSupported([B)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    aget-byte v2, p0, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    aget-byte v2, p0, v0

    if-eqz v2, :cond_1

    aget-byte v2, p0, v0

    if-eq v2, v0, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method
