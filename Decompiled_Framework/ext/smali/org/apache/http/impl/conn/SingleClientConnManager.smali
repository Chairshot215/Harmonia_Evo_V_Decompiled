.class public Lorg/apache/http/impl/conn/SingleClientConnManager;
.super Ljava/lang/Object;
.source "SingleClientConnManager.java"

# interfaces
.implements Lorg/apache/http/conn/ClientConnectionManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;,
        Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;
    }
.end annotation


# static fields
.field public static final MISUSE_MESSAGE:Ljava/lang/String; = "Invalid use of SingleClientConnManager: connection still allocated.\nMake sure to release the connection before allocating another one."


# instance fields
.field protected alwaysShutDown:Z

.field protected connOperator:Lorg/apache/http/conn/ClientConnectionOperator;

.field protected connectionExpiresTime:J

.field protected volatile isShutDown:Z

.field protected lastReleaseTime:J

.field private final log:Lorg/apache/commons/logging/Log;

.field protected managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

.field protected schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

.field protected uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;


# direct methods
.method public constructor <init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Scheme registry must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-virtual {p0, p2}, Lorg/apache/http/impl/conn/SingleClientConnManager;->createConnectionOperator(Lorg/apache/http/conn/scheme/SchemeRegistry;)Lorg/apache/http/conn/ClientConnectionOperator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->connOperator:Lorg/apache/http/conn/ClientConnectionOperator;

    new-instance v0, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-direct {v0, p0}, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;-><init>(Lorg/apache/http/impl/conn/SingleClientConnManager;)V

    iput-object v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    iput-boolean v2, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->alwaysShutDown:Z

    iput-boolean v2, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->isShutDown:Z

    return-void
.end method


# virtual methods
.method protected final assertStillUp()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->isShutDown:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Manager is shut down."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public closeExpiredConnections()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/http/impl/conn/SingleClientConnManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    :cond_0
    return-void
.end method

.method public closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    .locals 7

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/SingleClientConnManager;->assertStillUp()V

    if-nez p3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Time unit must not be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget-object v3, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    iget-object v3, v3, Lorg/apache/http/impl/conn/AbstractPoolEntry;->connection:Lorg/apache/http/conn/OperatedClientConnection;

    invoke-interface {v3}, Lorg/apache/http/conn/OperatedClientConnection;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    sub-long v0, v3, v5

    iget-wide v3, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    cmp-long v3, v3, v0

    if-gtz v3, :cond_1

    :try_start_0
    iget-object v3, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-virtual {v3}, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Problem closing idle connection."

    invoke-interface {v3, v4, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected createConnectionOperator(Lorg/apache/http/conn/scheme/SchemeRegistry;)Lorg/apache/http/conn/ClientConnectionOperator;
    .locals 1

    new-instance v0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;

    invoke-direct {v0, p1}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    return-object v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/SingleClientConnManager;->shutdown()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ManagedClientConnection;
    .locals 8

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Route may not be null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/SingleClientConnManager;->assertStillUp()V

    iget-object v5, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Get connection for route "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_1
    iget-object v5, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/SingleClientConnManager;->revokeConnection()V

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/SingleClientConnManager;->closeExpiredConnections()V

    iget-object v5, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    iget-object v5, v5, Lorg/apache/http/impl/conn/AbstractPoolEntry;->connection:Lorg/apache/http/conn/OperatedClientConnection;

    invoke-interface {v5}, Lorg/apache/http/conn/OperatedClientConnection;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    iget-object v4, v5, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->tracker:Lorg/apache/http/conn/routing/RouteTracker;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lorg/apache/http/conn/routing/RouteTracker;->toRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v5

    invoke-virtual {v5, p1}, Lorg/apache/http/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    :cond_3
    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_4

    const/4 v1, 0x1

    :try_start_0
    iget-object v5, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-virtual {v5}, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->shutdown()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    new-instance v5, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-direct {v5, p0}, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;-><init>(Lorg/apache/http/impl/conn/SingleClientConnManager;)V

    iput-object v5, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    :cond_5
    :try_start_1
    iget-object v5, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    iget-object v5, v5, Lorg/apache/http/impl/conn/AbstractPoolEntry;->connection:Lorg/apache/http/conn/OperatedClientConnection;

    invoke-interface {v5}, Lorg/apache/http/conn/OperatedClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v5

    invoke-virtual {v5, v3}, Ldalvik/system/SocketTagger;->tag(Ljava/net/Socket;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_6
    :goto_2
    new-instance v5, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    iget-object v6, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-direct {v5, p0, v6, p1}, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;-><init>(Lorg/apache/http/impl/conn/SingleClientConnManager;Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;Lorg/apache/http/conn/routing/HttpRoute;)V

    iput-object v5, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    iget-object v5, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    return-object v5

    :cond_7
    const/4 v2, 0x0

    goto :goto_0

    :cond_8
    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v5, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "Problem shutting down connection."

    invoke-interface {v5, v6, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v5, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "Problem tagging socket."

    invoke-interface {v5, v6, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    return-object v0
.end method

.method public releaseConnection(Lorg/apache/http/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V
    .locals 9

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/SingleClientConnManager;->assertStillUp()V

    instance-of v4, p1, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Connection class mismatch, connection not obtained from this manager."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    iget-object v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Releasing connection "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    iget-object v4, v2, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    if-nez v4, :cond_2

    :goto_0
    return-void

    :cond_2
    invoke-virtual {v2}, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->getManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    if-eqz v1, :cond_3

    if-eq v1, p0, :cond_3

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Connection not obtained from this manager."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    :try_start_0
    iget-object v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    iget-object v4, v4, Lorg/apache/http/impl/conn/AbstractPoolEntry;->connection:Lorg/apache/http/conn/OperatedClientConnection;

    invoke-interface {v4}, Lorg/apache/http/conn/OperatedClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v4

    invoke-virtual {v4, v3}, Ldalvik/system/SocketTagger;->untag(Ljava/net/Socket;)V

    :cond_4
    invoke-virtual {v2}, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->alwaysShutDown:Z

    if-nez v4, :cond_5

    invoke-virtual {v2}, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->isMarkedReusable()Z

    move-result v4

    if-nez v4, :cond_7

    :cond_5
    iget-object v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "Released connection open but not reusable."

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {v2}, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    invoke-virtual {v2}, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->detach()V

    const/4 v4, 0x0

    iput-object v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-lez v4, :cond_8

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    iget-wide v6, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    goto :goto_0

    :cond_8
    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "Exception shutting down released connection."

    invoke-interface {v4, v5, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    invoke-virtual {v2}, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->detach()V

    const/4 v4, 0x0

    iput-object v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-lez v4, :cond_a

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    iget-wide v6, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    goto/16 :goto_0

    :cond_a
    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->detach()V

    const/4 v5, 0x0

    iput-object v5, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    const-wide/16 v5, 0x0

    cmp-long v5, p2, v5

    if-lez v5, :cond_b

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    iget-wide v7, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->lastReleaseTime:J

    add-long/2addr v5, v7

    iput-wide v5, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    :goto_1
    throw v4

    :cond_b
    const-wide v5, 0x7fffffffffffffffL

    iput-wide v5, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->connectionExpiresTime:J

    goto :goto_1
.end method

.method public final requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;
    .locals 1

    new-instance v0, Lorg/apache/http/impl/conn/SingleClientConnManager$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/http/impl/conn/SingleClientConnManager$1;-><init>(Lorg/apache/http/impl/conn/SingleClientConnManager;Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected revokeConnection()V
    .locals 3

    iget-object v1, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Invalid use of SingleClientConnManager: connection still allocated.\nMake sure to release the connection before allocating another one."

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    invoke-virtual {v1}, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->detach()V

    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-virtual {v1}, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->shutdown()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Problem while shutting down connection."

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public shutdown()V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->isShutDown:Z

    iget-object v1, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->managedConn:Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;

    invoke-virtual {v1}, Lorg/apache/http/impl/conn/SingleClientConnManager$ConnAdapter;->detach()V

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    invoke-virtual {v1}, Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    iput-object v3, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Problem while shutting down manager."

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v3, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-object v3, p0, Lorg/apache/http/impl/conn/SingleClientConnManager;->uniquePoolEntry:Lorg/apache/http/impl/conn/SingleClientConnManager$PoolEntry;

    throw v1
.end method
