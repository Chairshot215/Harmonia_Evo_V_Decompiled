.class public final Lcom/google/android/volley/elegant/ElegantPlainSocketFactory;
.super Ljava/lang/Object;
.source "ElegantPlainSocketFactory.java"

# interfaces
.implements Lorg/apache/http/conn/scheme/SocketFactory;


# static fields
.field private static final DEFAULT_FACTORY:Lcom/google/android/volley/elegant/ElegantPlainSocketFactory;


# instance fields
.field private final nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/google/android/volley/elegant/ElegantPlainSocketFactory;

    invoke-direct {v0}, Lcom/google/android/volley/elegant/ElegantPlainSocketFactory;-><init>()V

    sput-object v0, Lcom/google/android/volley/elegant/ElegantPlainSocketFactory;->DEFAULT_FACTORY:Lcom/google/android/volley/elegant/ElegantPlainSocketFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/volley/elegant/ElegantPlainSocketFactory;-><init>(Lorg/apache/http/conn/scheme/HostNameResolver;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/scheme/HostNameResolver;)V
    .locals 0
    .parameter "nameResolver"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/android/volley/elegant/ElegantPlainSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    .line 40
    return-void
.end method

.method public static getSocketFactory()Lcom/google/android/volley/elegant/ElegantPlainSocketFactory;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/android/volley/elegant/ElegantPlainSocketFactory;->DEFAULT_FACTORY:Lcom/google/android/volley/elegant/ElegantPlainSocketFactory;

    return-object v0
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;
    .locals 14
    .parameter "sock"
    .parameter "host"
    .parameter "port"
    .parameter "localAddress"
    .parameter "localPort"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    if-nez p2, :cond_0

    .line 61
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Target host may not be null."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 63
    :cond_0
    if-nez p6, :cond_1

    .line 64
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Parameters may not be null."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 67
    :cond_1
    if-nez p1, :cond_2

    .line 68
    invoke-virtual {p0}, Lcom/google/android/volley/elegant/ElegantPlainSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object p1

    .line 70
    :cond_2
    if-nez p4, :cond_3

    if-lez p5, :cond_5

    .line 73
    :cond_3
    if-gez p5, :cond_4

    .line 74
    const/16 p5, 0x0

    .line 76
    :cond_4
    new-instance v3, Ljava/net/InetSocketAddress;

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {v3, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 78
    .local v3, isa:Ljava/net/InetSocketAddress;
    invoke-virtual {p1, v3}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 81
    .end local v3           #isa:Ljava/net/InetSocketAddress;
    :cond_5
    invoke-static/range {p6 .. p6}, Lorg/apache/http/params/HttpConnectionParams;->getConnectionTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v7

    .line 84
    .local v7, timeout:I
    iget-object v10, p0, Lcom/google/android/volley/elegant/ElegantPlainSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    if-eqz v10, :cond_7

    .line 85
    new-instance v4, Ljava/net/InetSocketAddress;

    iget-object v10, p0, Lcom/google/android/volley/elegant/ElegantPlainSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    move-object/from16 v0, p2

    invoke-interface {v10, v0}, Lorg/apache/http/conn/scheme/HostNameResolver;->resolve(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v10

    move/from16 v0, p3

    invoke-direct {v4, v10, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 90
    .local v4, remoteAddress:Ljava/net/InetSocketAddress;
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 91
    .local v5, startTime:J
    invoke-virtual {p1, v4, v7}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v8, v10, v5

    .line 93
    .local v8, totalDuration:J
    sget-boolean v10, Lcom/android/volley/VolleyLog;->DEBUG:Z

    if-eqz v10, :cond_6

    .line 94
    const-string v10, "Established connection to [host=%s] in [%s ms]"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p2, v11, v12

    const/4 v12, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_6
    return-object p1

    .line 87
    .end local v4           #remoteAddress:Ljava/net/InetSocketAddress;
    .end local v5           #startTime:J
    .end local v8           #totalDuration:J
    :cond_7
    new-instance v4, Ljava/net/InetSocketAddress;

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v4, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .restart local v4       #remoteAddress:Ljava/net/InetSocketAddress;
    goto :goto_0

    .line 96
    :catch_0
    move-exception v2

    .line 97
    .local v2, ex:Ljava/net/SocketTimeoutException;
    new-instance v10, Lorg/apache/http/conn/ConnectTimeoutException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Connect to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " timed out"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/http/conn/ConnectTimeoutException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method public createSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 150
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 160
    const-class v0, Lcom/google/android/volley/elegant/ElegantPlainSocketFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isSecure(Ljava/net/Socket;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 119
    if-nez p1, :cond_0

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/net/Socket;

    if-eq v0, v1, :cond_1

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket not created by this factory."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_1
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_2
    const/4 v0, 0x0

    return v0
.end method
