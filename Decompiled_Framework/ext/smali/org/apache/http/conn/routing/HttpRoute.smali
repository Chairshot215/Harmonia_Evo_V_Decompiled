.class public final Lorg/apache/http/conn/routing/HttpRoute;
.super Ljava/lang/Object;
.source "HttpRoute.java"

# interfaces
.implements Lorg/apache/http/conn/routing/RouteInfo;
.implements Ljava/lang/Cloneable;


# instance fields
.field private final layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

.field private final localAddress:Ljava/net/InetAddress;

.field private final proxyChain:[Lorg/apache/http/HttpHost;

.field private final secure:Z

.field private final targetHost:Lorg/apache/http/HttpHost;

.field private final tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;


# direct methods
.method private constructor <init>(Ljava/net/InetAddress;Lorg/apache/http/HttpHost;[Lorg/apache/http/HttpHost;ZLorg/apache/http/conn/routing/RouteInfo$TunnelType;Lorg/apache/http/conn/routing/RouteInfo$LayerType;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target host may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    if-ne p5, v0, :cond_1

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Proxy required if tunnelled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p5, :cond_2

    sget-object p5, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->PLAIN:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    :cond_2
    if-nez p6, :cond_3

    sget-object p6, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->PLAIN:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    :cond_3
    iput-object p2, p0, Lorg/apache/http/conn/routing/HttpRoute;->targetHost:Lorg/apache/http/HttpHost;

    iput-object p1, p0, Lorg/apache/http/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    iput-object p3, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    iput-boolean p4, p0, Lorg/apache/http/conn/routing/HttpRoute;->secure:Z

    iput-object p5, p0, Lorg/apache/http/conn/routing/HttpRoute;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    iput-object p6, p0, Lorg/apache/http/conn/routing/HttpRoute;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpHost;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v4, 0x0

    sget-object v5, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->PLAIN:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    sget-object v6, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->PLAIN:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    move-object v0, p0

    move-object v2, p1

    move-object v3, v1

    invoke-direct/range {v0 .. v6}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Ljava/net/InetAddress;Lorg/apache/http/HttpHost;[Lorg/apache/http/HttpHost;ZLorg/apache/http/conn/routing/RouteInfo$TunnelType;Lorg/apache/http/conn/routing/RouteInfo$LayerType;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/HttpHost;Z)V
    .locals 7

    invoke-static {p3}, Lorg/apache/http/conn/routing/HttpRoute;->toChain(Lorg/apache/http/HttpHost;)[Lorg/apache/http/HttpHost;

    move-result-object v3

    if-eqz p4, :cond_0

    sget-object v5, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    :goto_0
    if-eqz p4, :cond_1

    sget-object v6, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->LAYERED:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    :goto_1
    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Ljava/net/InetAddress;Lorg/apache/http/HttpHost;[Lorg/apache/http/HttpHost;ZLorg/apache/http/conn/routing/RouteInfo$TunnelType;Lorg/apache/http/conn/routing/RouteInfo$LayerType;)V

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Proxy host may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v5, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->PLAIN:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    goto :goto_0

    :cond_1
    sget-object v6, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->PLAIN:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    goto :goto_1

    :cond_2
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/HttpHost;ZLorg/apache/http/conn/routing/RouteInfo$TunnelType;Lorg/apache/http/conn/routing/RouteInfo$LayerType;)V
    .locals 7

    invoke-static {p3}, Lorg/apache/http/conn/routing/HttpRoute;->toChain(Lorg/apache/http/HttpHost;)[Lorg/apache/http/HttpHost;

    move-result-object v3

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Ljava/net/InetAddress;Lorg/apache/http/HttpHost;[Lorg/apache/http/HttpHost;ZLorg/apache/http/conn/routing/RouteInfo$TunnelType;Lorg/apache/http/conn/routing/RouteInfo$LayerType;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Z)V
    .locals 7

    const/4 v3, 0x0

    sget-object v5, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->PLAIN:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    sget-object v6, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->PLAIN:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Ljava/net/InetAddress;Lorg/apache/http/HttpHost;[Lorg/apache/http/HttpHost;ZLorg/apache/http/conn/routing/RouteInfo$TunnelType;Lorg/apache/http/conn/routing/RouteInfo$LayerType;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;[Lorg/apache/http/HttpHost;ZLorg/apache/http/conn/routing/RouteInfo$TunnelType;Lorg/apache/http/conn/routing/RouteInfo$LayerType;)V
    .locals 7

    invoke-static {p3}, Lorg/apache/http/conn/routing/HttpRoute;->toChain([Lorg/apache/http/HttpHost;)[Lorg/apache/http/HttpHost;

    move-result-object v3

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Ljava/net/InetAddress;Lorg/apache/http/HttpHost;[Lorg/apache/http/HttpHost;ZLorg/apache/http/conn/routing/RouteInfo$TunnelType;Lorg/apache/http/conn/routing/RouteInfo$LayerType;)V

    return-void
.end method

.method private static toChain(Lorg/apache/http/HttpHost;)[Lorg/apache/http/HttpHost;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/http/HttpHost;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    goto :goto_0
.end method

.method private static toChain([Lorg/apache/http/HttpHost;)[Lorg/apache/http/HttpHost;
    .locals 8

    const/4 v7, 0x0

    if-eqz p0, :cond_0

    array-length v5, p0

    const/4 v6, 0x1

    if-ge v5, v6, :cond_1

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_1
    move-object v0, p0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    if-nez v3, :cond_2

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Proxy chain may not contain null elements."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    array-length v5, p0

    new-array v4, v5, [Lorg/apache/http/HttpHost;

    array-length v5, p0

    invoke-static {p0, v7, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-ne p1, p0, :cond_0

    :goto_0
    return v5

    :cond_0
    instance-of v3, p1, Lorg/apache/http/conn/routing/HttpRoute;

    if-nez v3, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/apache/http/conn/routing/HttpRoute;

    iget-object v3, p0, Lorg/apache/http/conn/routing/HttpRoute;->targetHost:Lorg/apache/http/HttpHost;

    iget-object v6, v2, Lorg/apache/http/conn/routing/HttpRoute;->targetHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v3, v6}, Lorg/apache/http/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v3, p0, Lorg/apache/http/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    iget-object v6, v2, Lorg/apache/http/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    if-eq v3, v6, :cond_2

    iget-object v3, p0, Lorg/apache/http/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/apache/http/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    iget-object v6, v2, Lorg/apache/http/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    invoke-virtual {v3, v6}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    move v3, v5

    :goto_1
    and-int/2addr v0, v3

    iget-object v3, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    iget-object v6, v2, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    if-eq v3, v6, :cond_3

    iget-object v3, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    if-eqz v3, :cond_5

    iget-object v3, v2, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    array-length v3, v3

    iget-object v6, v2, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    array-length v6, v6

    if-ne v3, v6, :cond_5

    :cond_3
    move v3, v5

    :goto_2
    and-int/2addr v0, v3

    iget-boolean v3, p0, Lorg/apache/http/conn/routing/HttpRoute;->secure:Z

    iget-boolean v6, v2, Lorg/apache/http/conn/routing/HttpRoute;->secure:Z

    if-ne v3, v6, :cond_6

    iget-object v3, p0, Lorg/apache/http/conn/routing/HttpRoute;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    iget-object v6, v2, Lorg/apache/http/conn/routing/HttpRoute;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    if-ne v3, v6, :cond_6

    iget-object v3, p0, Lorg/apache/http/conn/routing/HttpRoute;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    iget-object v6, v2, Lorg/apache/http/conn/routing/HttpRoute;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    if-ne v3, v6, :cond_6

    :goto_3
    and-int/2addr v0, v5

    if-eqz v0, :cond_7

    iget-object v3, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    if-eqz v3, :cond_7

    const/4 v1, 0x0

    :goto_4
    if-eqz v0, :cond_7

    iget-object v3, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    array-length v3, v3

    if-ge v1, v3, :cond_7

    iget-object v3, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    aget-object v3, v3, v1

    iget-object v4, v2, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/http/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    move v3, v4

    goto :goto_1

    :cond_5
    move v3, v4

    goto :goto_2

    :cond_6
    move v5, v4

    goto :goto_3

    :cond_7
    move v5, v0

    goto :goto_0
.end method

.method public final getHopCount()I
    .locals 1

    iget-object v0, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final getHopTarget(I)Lorg/apache/http/HttpHost;
    .locals 5

    if-gez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hop index must not be negative: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/conn/routing/HttpRoute;->getHopCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hop index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " exceeds route length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const/4 v1, 0x0

    add-int/lit8 v2, v0, -0x1

    if-ge p1, v2, :cond_2

    iget-object v2, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    aget-object v1, v2, p1

    :goto_0
    return-object v1

    :cond_2
    iget-object v1, p0, Lorg/apache/http/conn/routing/HttpRoute;->targetHost:Lorg/apache/http/HttpHost;

    goto :goto_0
.end method

.method public final getLayerType()Lorg/apache/http/conn/routing/RouteInfo$LayerType;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/conn/routing/HttpRoute;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    return-object v0
.end method

.method public final getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public final getProxyHost()Lorg/apache/http/HttpHost;
    .locals 2

    iget-object v0, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public final getTargetHost()Lorg/apache/http/HttpHost;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/conn/routing/HttpRoute;->targetHost:Lorg/apache/http/HttpHost;

    return-object v0
.end method

.method public final getTunnelType()Lorg/apache/http/conn/routing/RouteInfo$TunnelType;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/conn/routing/HttpRoute;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    return-object v0
.end method

.method public final hashCode()I
    .locals 6

    iget-object v5, p0, Lorg/apache/http/conn/routing/HttpRoute;->targetHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v5}, Lorg/apache/http/HttpHost;->hashCode()I

    move-result v2

    iget-object v5, p0, Lorg/apache/http/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/apache/http/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    invoke-virtual {v5}, Ljava/net/InetAddress;->hashCode()I

    move-result v5

    xor-int/2addr v2, v5

    :cond_0
    iget-object v5, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    array-length v5, v5

    xor-int/2addr v2, v5

    iget-object v1, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->hashCode()I

    move-result v5

    xor-int/2addr v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v5, p0, Lorg/apache/http/conn/routing/HttpRoute;->secure:Z

    if-eqz v5, :cond_2

    const v5, 0x11111111

    xor-int/2addr v2, v5

    :cond_2
    iget-object v5, p0, Lorg/apache/http/conn/routing/HttpRoute;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    invoke-virtual {v5}, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->hashCode()I

    move-result v5

    xor-int/2addr v2, v5

    iget-object v5, p0, Lorg/apache/http/conn/routing/HttpRoute;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    invoke-virtual {v5}, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->hashCode()I

    move-result v5

    xor-int/2addr v2, v5

    return v2
.end method

.method public final isLayered()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/http/conn/routing/HttpRoute;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    sget-object v1, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->LAYERED:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isSecure()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/http/conn/routing/HttpRoute;->secure:Z

    return v0
.end method

.method public final isTunnelled()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/http/conn/routing/HttpRoute;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    sget-object v1, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/http/conn/routing/HttpRoute;->getHopCount()I

    move-result v5

    mul-int/lit8 v5, v5, 0x1e

    add-int/lit8 v5, v5, 0x32

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "HttpRoute["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/apache/http/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/apache/http/conn/routing/HttpRoute;->localAddress:Ljava/net/InetAddress;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "->"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v5, 0x7b

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/apache/http/conn/routing/HttpRoute;->tunnelled:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    sget-object v6, Lorg/apache/http/conn/routing/RouteInfo$TunnelType;->TUNNELLED:Lorg/apache/http/conn/routing/RouteInfo$TunnelType;

    if-ne v5, v6, :cond_1

    const/16 v5, 0x74

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v5, p0, Lorg/apache/http/conn/routing/HttpRoute;->layered:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    sget-object v6, Lorg/apache/http/conn/routing/RouteInfo$LayerType;->LAYERED:Lorg/apache/http/conn/routing/RouteInfo$LayerType;

    if-ne v5, v6, :cond_2

    const/16 v5, 0x6c

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    iget-boolean v5, p0, Lorg/apache/http/conn/routing/HttpRoute;->secure:Z

    if-eqz v5, :cond_3

    const/16 v5, 0x73

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    const-string v5, "}->"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    if-eqz v5, :cond_4

    iget-object v1, p0, Lorg/apache/http/conn/routing/HttpRoute;->proxyChain:[Lorg/apache/http/HttpHost;

    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_4

    aget-object v0, v1, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "->"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lorg/apache/http/conn/routing/HttpRoute;->targetHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v5, 0x5d

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
