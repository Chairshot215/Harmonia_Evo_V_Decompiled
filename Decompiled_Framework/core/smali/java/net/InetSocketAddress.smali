.class public Ljava/net/InetSocketAddress;
.super Ljava/net/SocketAddress;
.source "InetSocketAddress.java"


# static fields
.field private static final serialVersionUID:J = 0x467194616ff9aa45L


# instance fields
.field private final addr:Ljava/net/InetAddress;

.field private final hostname:Ljava/lang/String;

.field private final port:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    iput-object v0, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    iput-object v0, p0, Ljava/net/InetSocketAddress;->hostname:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Ljava/net/InetSocketAddress;->port:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    check-cast v0, Ljava/net/InetAddress;

    invoke-direct {p0, v0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;IZ)V
    .locals 4

    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    const v1, 0xffff

    if-le p2, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "host="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", port="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const/4 p1, 0x0

    :cond_2
    :goto_0
    iput-object v0, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    iput-object p1, p0, Ljava/net/InetSocketAddress;->hostname:Ljava/lang/String;

    iput p2, p0, Ljava/net/InetSocketAddress;->port:I

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 3

    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    if-ltz p2, :cond_0

    const v0, 0xffff

    if-le p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "port="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p1, :cond_2

    sget-object p1, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    :cond_2
    iput-object p1, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/InetSocketAddress;->hostname:Ljava/lang/String;

    iput p2, p0, Ljava/net/InetSocketAddress;->port:I

    return-void
.end method

.method public static createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;
    .locals 2

    new-instance v0, Ljava/net/InetSocketAddress;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;IZ)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v2, p1, Ljava/net/InetSocketAddress;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    iget v2, p0, Ljava/net/InetSocketAddress;->port:I

    iget v3, v0, Ljava/net/InetSocketAddress;->port:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    if-nez v2, :cond_2

    iget-object v2, v0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    if-nez v2, :cond_2

    iget-object v1, p0, Ljava/net/InetSocketAddress;->hostname:Ljava/lang/String;

    iget-object v2, v0, Ljava/net/InetSocketAddress;->hostname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    if-eqz v2, :cond_0

    iget-object v1, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    iget-object v2, v0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public final getAddress()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    return-object v0
.end method

.method public final getHostName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/net/InetSocketAddress;->hostname:Ljava/lang/String;

    goto :goto_0
.end method

.method public final getHostString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/InetSocketAddress;->hostname:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/net/InetSocketAddress;->hostname:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getPort()I
    .locals 1

    iget v0, p0, Ljava/net/InetSocketAddress;->port:I

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/net/InetSocketAddress;->hostname:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Ljava/net/InetSocketAddress;->port:I

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->hashCode()I

    move-result v0

    iget v1, p0, Ljava/net/InetSocketAddress;->port:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public final isUnresolved()Z
    .locals 1

    iget-object v0, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/net/InetSocketAddress;->addr:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/net/InetSocketAddress;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/net/InetSocketAddress;->hostname:Ljava/lang/String;

    goto :goto_0
.end method
