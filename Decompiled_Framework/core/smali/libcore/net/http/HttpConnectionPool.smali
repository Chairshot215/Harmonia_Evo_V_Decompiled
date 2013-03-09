.class final Llibcore/net/http/HttpConnectionPool;
.super Ljava/lang/Object;
.source "HttpConnectionPool.java"


# static fields
.field public static final INSTANCE:Llibcore/net/http/HttpConnectionPool;


# instance fields
.field private final connectionPool:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Llibcore/net/http/HttpConnection$Address;",
            "Ljava/util/List",
            "<",
            "Llibcore/net/http/HttpConnection;",
            ">;>;"
        }
    .end annotation
.end field

.field private final maxConnections:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Llibcore/net/http/HttpConnectionPool;

    invoke-direct {v0}, Llibcore/net/http/HttpConnectionPool;-><init>()V

    sput-object v0, Llibcore/net/http/HttpConnectionPool;->INSTANCE:Llibcore/net/http/HttpConnectionPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Llibcore/net/http/HttpConnectionPool;->connectionPool:Ljava/util/HashMap;

    const-string v2, "http.keepAlive"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    iput v2, p0, Llibcore/net/http/HttpConnectionPool;->maxConnections:I

    :goto_0
    return-void

    :cond_0
    const-string v2, "http.maxConnections"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :goto_1
    iput v2, p0, Llibcore/net/http/HttpConnectionPool;->maxConnections:I

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    goto :goto_1
.end method


# virtual methods
.method public get(Llibcore/net/http/HttpConnection$Address;I)Llibcore/net/http/HttpConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v4, p0, Llibcore/net/http/HttpConnectionPool;->connectionPool:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Llibcore/net/http/HttpConnectionPool;->connectionPool:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llibcore/net/http/HttpConnection;

    invoke-virtual {v0}, Llibcore/net/http/HttpConnection;->isStale()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Llibcore/net/http/HttpConnection;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v3

    invoke-virtual {v3, v2}, Ldalvik/system/SocketTagger;->tag(Ljava/net/Socket;)V

    monitor-exit v4

    :goto_0
    return-object v0

    :cond_1
    iget-object v3, p0, Llibcore/net/http/HttpConnectionPool;->connectionPool:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, p2}, Llibcore/net/http/HttpConnection$Address;->connect(I)Llibcore/net/http/HttpConnection;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public recycle(Llibcore/net/http/HttpConnection;)V
    .locals 7

    invoke-virtual {p1}, Llibcore/net/http/HttpConnection;->getSocket()Ljava/net/Socket;

    move-result-object v3

    :try_start_0
    invoke-static {}, Ldalvik/system/SocketTagger;->get()Ldalvik/system/SocketTagger;

    move-result-object v4

    invoke-virtual {v4, v3}, Ldalvik/system/SocketTagger;->untag(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    iget v4, p0, Llibcore/net/http/HttpConnectionPool;->maxConnections:I

    if-lez v4, :cond_2

    invoke-virtual {p1}, Llibcore/net/http/HttpConnection;->isEligibleForRecycling()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Llibcore/net/http/HttpConnection;->getAddress()Llibcore/net/http/HttpConnection$Address;

    move-result-object v0

    iget-object v5, p0, Llibcore/net/http/HttpConnectionPool;->connectionPool:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_1
    iget-object v4, p0, Llibcore/net/http/HttpConnectionPool;->connectionPool:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Llibcore/net/http/HttpConnectionPool;->connectionPool:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    iget v6, p0, Llibcore/net/http/HttpConnectionPool;->maxConnections:I

    if-ge v4, v6, :cond_1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to untagSocket(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/System;->logW(Ljava/lang/String;)V

    invoke-virtual {p1}, Llibcore/net/http/HttpConnection;->closeSocketAndStreams()V

    goto :goto_0

    :cond_1
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    invoke-virtual {p1}, Llibcore/net/http/HttpConnection;->closeSocketAndStreams()V

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method
