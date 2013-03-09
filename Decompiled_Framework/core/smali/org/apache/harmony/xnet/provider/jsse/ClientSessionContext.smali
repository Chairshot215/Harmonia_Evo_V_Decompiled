.class public Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;
.super Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;
.source "ClientSessionContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;
    }
.end annotation


# instance fields
.field private persistentCache:Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;

.field final sessionsByHostAndPort:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;",
            "Ljavax/net/ssl/SSLSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;-><init>(II)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getSession(Ljava/lang/String;I)Ljavax/net/ssl/SSLSession;
    .locals 6

    const/4 v3, 0x0

    if-nez p1, :cond_1

    move-object v2, v3

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;

    invoke-direct {v1, p1, p2}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;-><init>(Ljava/lang/String;I)V

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SSLSession;

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->isValid()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->persistentCache:Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->persistentCache:Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;

    invoke-interface {v4, p1, p2}, Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;->getSessionData(Ljava/lang/String;I)[B

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->toSession([BLjava/lang/String;I)Ljavax/net/ssl/SSLSession;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->isValid()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-super {p0, v2}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    monitor-enter v4

    :try_start_1
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    :cond_3
    move-object v2, v3

    goto :goto_0
.end method

.method public bridge synthetic getSession([B)Ljavax/net/ssl/SSLSession;
    .locals 1

    invoke-super {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->getSession([B)Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method public putSession(Ljavax/net/ssl/SSLSession;)V
    .locals 6

    invoke-super {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerPort()I

    move-result v3

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;

    invoke-direct {v2, v1, v3}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;-><init>(Ljava/lang/String;I)V

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v4, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->persistentCache:Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;

    if-eqz v4, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->toBytes(Ljavax/net/ssl/SSLSession;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->persistentCache:Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;

    invoke-interface {v4, p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;->putSessionData(Ljavax/net/ssl/SSLSession;[B)V

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method protected sessionRemoved(Ljavax/net/ssl/SSLSession;)V
    .locals 5

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerPort()I

    move-result v2

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;

    invoke-direct {v1, v0, v2}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext$HostAndPort;-><init>(Ljava/lang/String;I)V

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public setPersistentCache(Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->persistentCache:Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;

    return-void
.end method

.method public bridge synthetic setSessionTimeout(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-super {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->setSessionTimeout(I)V

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
