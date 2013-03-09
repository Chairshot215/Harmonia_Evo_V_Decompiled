.class public final Landroid/net/http/HttpResponseCache;
.super Ljava/net/ResponseCache;
.source "HttpResponseCache.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final delegate:Llibcore/net/http/HttpResponseCache;


# direct methods
.method private constructor <init>(Ljava/io/File;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/net/ResponseCache;-><init>()V

    new-instance v0, Llibcore/net/http/HttpResponseCache;

    invoke-direct {v0, p1, p2, p3}, Llibcore/net/http/HttpResponseCache;-><init>(Ljava/io/File;J)V

    iput-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Llibcore/net/http/HttpResponseCache;

    return-void
.end method

.method public static getInstalled()Landroid/net/http/HttpResponseCache;
    .locals 2

    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v0

    instance-of v1, v0, Landroid/net/http/HttpResponseCache;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/net/http/HttpResponseCache;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static install(Ljava/io/File;J)Landroid/net/http/HttpResponseCache;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/net/http/HttpResponseCache;->getInstalled()Landroid/net/http/HttpResponseCache;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, v0, Landroid/net/http/HttpResponseCache;->delegate:Llibcore/net/http/HttpResponseCache;

    invoke-virtual {v3}, Llibcore/net/http/HttpResponseCache;->getCache()Llibcore/io/DiskLruCache;

    move-result-object v1

    invoke-virtual {v1}, Llibcore/io/DiskLruCache;->getDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Llibcore/io/DiskLruCache;->maxSize()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    invoke-virtual {v1}, Llibcore/io/DiskLruCache;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_1
    new-instance v2, Landroid/net/http/HttpResponseCache;

    invoke-direct {v2, p0, p1, p2}, Landroid/net/http/HttpResponseCache;-><init>(Ljava/io/File;J)V

    invoke-static {v2}, Ljava/net/ResponseCache;->setDefault(Ljava/net/ResponseCache;)V

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/net/ResponseCache;->setDefault(Ljava/net/ResponseCache;)V

    :cond_0
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Llibcore/net/http/HttpResponseCache;

    invoke-virtual {v0}, Llibcore/net/http/HttpResponseCache;->getCache()Llibcore/io/DiskLruCache;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/io/DiskLruCache;->close()V

    return-void
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/net/ResponseCache;->setDefault(Ljava/net/ResponseCache;)V

    :cond_0
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Llibcore/net/http/HttpResponseCache;

    invoke-virtual {v0}, Llibcore/net/http/HttpResponseCache;->getCache()Llibcore/io/DiskLruCache;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/io/DiskLruCache;->delete()V

    return-void
.end method

.method public flush()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Llibcore/net/http/HttpResponseCache;

    invoke-virtual {v0}, Llibcore/net/http/HttpResponseCache;->getCache()Llibcore/io/DiskLruCache;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/io/DiskLruCache;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/net/CacheResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Llibcore/net/http/HttpResponseCache;

    invoke-virtual {v0, p1, p2, p3}, Llibcore/net/http/HttpResponseCache;->get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;

    move-result-object v0

    return-object v0
.end method

.method public getHitCount()I
    .locals 1

    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Llibcore/net/http/HttpResponseCache;

    invoke-virtual {v0}, Llibcore/net/http/HttpResponseCache;->getHitCount()I

    move-result v0

    return v0
.end method

.method public getNetworkCount()I
    .locals 1

    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Llibcore/net/http/HttpResponseCache;

    invoke-virtual {v0}, Llibcore/net/http/HttpResponseCache;->getNetworkCount()I

    move-result v0

    return v0
.end method

.method public getRequestCount()I
    .locals 1

    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Llibcore/net/http/HttpResponseCache;

    invoke-virtual {v0}, Llibcore/net/http/HttpResponseCache;->getRequestCount()I

    move-result v0

    return v0
.end method

.method public maxSize()J
    .locals 2

    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Llibcore/net/http/HttpResponseCache;

    invoke-virtual {v0}, Llibcore/net/http/HttpResponseCache;->getCache()Llibcore/io/DiskLruCache;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/io/DiskLruCache;->maxSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Llibcore/net/http/HttpResponseCache;

    invoke-virtual {v0, p1, p2}, Llibcore/net/http/HttpResponseCache;->put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;

    move-result-object v0

    return-object v0
.end method

.method public size()J
    .locals 2

    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Llibcore/net/http/HttpResponseCache;

    invoke-virtual {v0}, Llibcore/net/http/HttpResponseCache;->getCache()Llibcore/io/DiskLruCache;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/io/DiskLruCache;->size()J

    move-result-wide v0

    return-wide v0
.end method
