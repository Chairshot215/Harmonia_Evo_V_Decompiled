.class public Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager;
.super Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
.source "ElegantThreadSafeConnManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$ElegantPool;,
        Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$ElegantBasicPooledConnAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .locals 0
    .parameter "params"
    .parameter "schreg"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected createConnectionPool(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;
    .locals 3
    .parameter "params"

    .prologue
    .line 38
    new-instance v0, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$ElegantPool;

    iget-object v2, p0, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager;->connOperator:Lorg/apache/http/conn/ClientConnectionOperator;

    invoke-direct {v0, v2, p1}, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$ElegantPool;-><init>(Lorg/apache/http/conn/ClientConnectionOperator;Lorg/apache/http/params/HttpParams;)V

    .line 39
    .local v0, acp:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;
    const/4 v1, 0x1

    .line 40
    .local v1, conngc:Z
    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->enableConnectionGC()V

    .line 43
    :cond_0
    return-object v0
.end method

.method public releaseConnection(Lorg/apache/http/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V
    .locals 9
    .parameter "conn"
    .parameter "validDuration"
    .parameter "timeUnit"

    .prologue
    .line 74
    instance-of v5, p1, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$ElegantBasicPooledConnAdapter;

    if-eqz v5, :cond_0

    .line 75
    invoke-interface {p1}, Lorg/apache/http/conn/ManagedClientConnection;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object v2, p1

    .line 76
    check-cast v2, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$ElegantBasicPooledConnAdapter;

    .line 77
    .local v2, elegant:Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$ElegantBasicPooledConnAdapter;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v2, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$ElegantBasicPooledConnAdapter;->startTime:J

    sub-long v0, v5, v7

    .line 78
    .local v0, elapsed:J
    invoke-interface {p1}, Lorg/apache/http/conn/ManagedClientConnection;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/http/conn/routing/HttpRoute;->isSecure()Z

    move-result v5

    if-eqz v5, :cond_1

    const-wide/16 v3, 0x1388

    .line 79
    .local v3, limit:J
    :goto_0
    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    .line 81
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/conn/ManagedClientConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v0           #elapsed:J
    .end local v2           #elegant:Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$ElegantBasicPooledConnAdapter;
    .end local v3           #limit:J
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->releaseConnection(Lorg/apache/http/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V

    .line 87
    return-void

    .line 78
    .restart local v0       #elapsed:J
    .restart local v2       #elegant:Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$ElegantBasicPooledConnAdapter;
    :cond_1
    const-wide/16 v3, 0x9c4

    goto :goto_0

    .line 82
    .restart local v3       #limit:J
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;
    .locals 3
    .parameter "route"
    .parameter "state"

    .prologue
    .line 48
    iget-object v2, p0, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    invoke-virtual {v2, p1, p2}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->requestPoolEntry(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;

    move-result-object v0

    .line 49
    .local v0, poolRequest:Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;
    new-instance v1, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager$1;-><init>(Lcom/google/android/volley/elegant/ElegantThreadSafeConnManager;Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;Lorg/apache/http/conn/routing/HttpRoute;)V

    .line 68
    .local v1, request:Lorg/apache/http/conn/ClientConnectionRequest;
    return-object v1
.end method
