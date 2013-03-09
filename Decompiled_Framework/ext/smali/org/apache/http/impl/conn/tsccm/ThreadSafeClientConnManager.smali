.class public Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
.super Ljava/lang/Object;
.source "ThreadSafeClientConnManager.java"

# interfaces
.implements Lorg/apache/http/conn/ClientConnectionManager;


# instance fields
.field protected connOperator:Lorg/apache/http/conn/ClientConnectionOperator;

.field protected final connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

.field private final log:Lorg/apache/commons/logging/Log;

.field protected schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;


# direct methods
.method public constructor <init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lorg/apache/commons/logging/Log;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-virtual {p0, p2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->createConnectionOperator(Lorg/apache/http/conn/scheme/SchemeRegistry;)Lorg/apache/http/conn/ClientConnectionOperator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connOperator:Lorg/apache/http/conn/ClientConnectionOperator;

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->createConnectionPool(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;)Lorg/apache/commons/logging/Log;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lorg/apache/commons/logging/Log;

    return-object v0
.end method


# virtual methods
.method public closeExpiredConnections()V
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->closeExpiredConnections()V

    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->deleteClosedConnections()V

    return-void
.end method

.method public closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->deleteClosedConnections()V

    return-void
.end method

.method protected createConnectionOperator(Lorg/apache/http/conn/scheme/SchemeRegistry;)Lorg/apache/http/conn/ClientConnectionOperator;
    .locals 1

    new-instance v0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;

    invoke-direct {v0, p1}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    return-object v0
.end method

.method protected createConnectionPool(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;
    .locals 3

    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;

    iget-object v2, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connOperator:Lorg/apache/http/conn/ClientConnectionOperator;

    invoke-direct {v0, v2, p1}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;-><init>(Lorg/apache/http/conn/ClientConnectionOperator;Lorg/apache/http/params/HttpParams;)V

    const/4 v1, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->enableConnectionGC()V

    :cond_0
    return-object v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->shutdown()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getConnectionsInPool()I
    .locals 2

    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    iget v0, v0, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->numConnections:I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getConnectionsInPool(Lorg/apache/http/conn/routing/HttpRoute;)I
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    check-cast v0, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/conn/tsccm/ConnPoolByRoute;->getConnectionsInPool(Lorg/apache/http/conn/routing/HttpRoute;)I

    move-result v0

    return v0
.end method

.method public getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    return-object v0
.end method

.method public releaseConnection(Lorg/apache/http/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V
    .locals 10

    instance-of v0, p1, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Connection class mismatch, connection not obtained from this manager."

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v6, p1

    check-cast v6, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;

    invoke-virtual {v6}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->getPoolEntry()Lorg/apache/http/impl/conn/AbstractPoolEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v6}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->getManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    if-eq v0, p0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Connection not obtained from this manager."

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_0
    invoke-virtual {v6}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->getPoolEntry()Lorg/apache/http/impl/conn/AbstractPoolEntry;

    move-result-object v1

    check-cast v1, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    invoke-virtual {v1}, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;->getConnection()Lorg/apache/http/conn/OperatedClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v0

    invoke-virtual {v0, v8}, Ldalvik/system/SocketTagger;->untag(Ljava/net/Socket;)V

    :cond_2
    invoke-virtual {v6}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v6}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->isMarkedReusable()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Released connection open but not marked reusable."

    invoke-interface {v0, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v6}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    invoke-virtual {v6}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->getPoolEntry()Lorg/apache/http/impl/conn/AbstractPoolEntry;

    move-result-object v1

    check-cast v1, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    invoke-virtual {v6}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->isMarkedReusable()Z

    move-result v2

    invoke-virtual {v6}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->detach()V

    if-eqz v1, :cond_5

    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    move-wide v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->freeEntry(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;ZJLjava/util/concurrent/TimeUnit;)V

    :cond_5
    :goto_0
    return-void

    :catch_0
    move-exception v7

    :try_start_1
    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Exception shutting down released connection."

    invoke-interface {v0, v3, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    invoke-virtual {v6}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->getPoolEntry()Lorg/apache/http/impl/conn/AbstractPoolEntry;

    move-result-object v1

    check-cast v1, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    invoke-virtual {v6}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->isMarkedReusable()Z

    move-result v2

    invoke-virtual {v6}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->detach()V

    if-eqz v1, :cond_5

    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    move-wide v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->freeEntry(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;ZJLjava/util/concurrent/TimeUnit;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v9, v0

    invoke-virtual {v6}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->getPoolEntry()Lorg/apache/http/impl/conn/AbstractPoolEntry;

    move-result-object v1

    check-cast v1, Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;

    invoke-virtual {v6}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->isMarkedReusable()Z

    move-result v2

    invoke-virtual {v6}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->detach()V

    if-eqz v1, :cond_7

    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    move-wide v3, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->freeEntry(Lorg/apache/http/impl/conn/tsccm/BasicPoolEntry;ZJLjava/util/concurrent/TimeUnit;)V

    :cond_7
    throw v9
.end method

.method public requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;
    .locals 2

    iget-object v1, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    invoke-virtual {v1, p1, p2}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->requestPoolEntry(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;

    move-result-object v0

    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager$1;

    invoke-direct {v1, p0, v0, p1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager$1;-><init>(Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;Lorg/apache/http/conn/routing/HttpRoute;)V

    return-object v1
.end method

.method public shutdown()V
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->shutdown()V

    return-void
.end method
