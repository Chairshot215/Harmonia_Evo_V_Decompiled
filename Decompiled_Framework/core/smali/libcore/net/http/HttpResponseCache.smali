.class public final Llibcore/net/http/HttpResponseCache;
.super Ljava/net/ResponseCache;
.source "HttpResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/net/http/HttpResponseCache$2;,
        Llibcore/net/http/HttpResponseCache$Entry;,
        Llibcore/net/http/HttpResponseCache$CacheRequestImpl;
    }
.end annotation


# static fields
.field private static final ENTRY_BODY:I = 0x1

.field private static final ENTRY_COUNT:I = 0x2

.field private static final ENTRY_METADATA:I = 0x0

.field private static final VERSION:I = 0x31191


# instance fields
.field private final cache:Llibcore/io/DiskLruCache;

.field private hitCount:I

.field private networkCount:I

.field private requestCount:I

.field private writeAbortCount:I

.field private writeSuccessCount:I


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/net/ResponseCache;-><init>()V

    const v0, 0x31191

    const/4 v1, 0x2

    invoke-static {p1, v0, v1, p2, p3}, Llibcore/io/DiskLruCache;->open(Ljava/io/File;IIJ)Llibcore/io/DiskLruCache;

    move-result-object v0

    iput-object v0, p0, Llibcore/net/http/HttpResponseCache;->cache:Llibcore/io/DiskLruCache;

    return-void
.end method

.method static synthetic access$208(Llibcore/net/http/HttpResponseCache;)I
    .locals 2

    iget v0, p0, Llibcore/net/http/HttpResponseCache;->writeSuccessCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Llibcore/net/http/HttpResponseCache;->writeSuccessCount:I

    return v0
.end method

.method static synthetic access$308(Llibcore/net/http/HttpResponseCache;)I
    .locals 2

    iget v0, p0, Llibcore/net/http/HttpResponseCache;->writeAbortCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Llibcore/net/http/HttpResponseCache;->writeAbortCount:I

    return v0
.end method

.method private getHttpEngine(Ljava/net/HttpURLConnection;)Llibcore/net/http/HttpEngine;
    .locals 1

    instance-of v0, p1, Llibcore/net/http/HttpURLConnectionImpl;

    if-eqz v0, :cond_0

    check-cast p1, Llibcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {p1}, Llibcore/net/http/HttpURLConnectionImpl;->getHttpEngine()Llibcore/net/http/HttpEngine;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Llibcore/net/http/HttpsURLConnectionImpl;

    if-eqz v0, :cond_1

    check-cast p1, Llibcore/net/http/HttpsURLConnectionImpl;

    invoke-virtual {p1}, Llibcore/net/http/HttpsURLConnectionImpl;->getHttpEngine()Llibcore/net/http/HttpEngine;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private newBodyInputStream(Llibcore/io/DiskLruCache$Snapshot;)Ljava/io/InputStream;
    .locals 2

    new-instance v0, Llibcore/net/http/HttpResponseCache$1;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Llibcore/io/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Llibcore/net/http/HttpResponseCache$1;-><init>(Llibcore/net/http/HttpResponseCache;Ljava/io/InputStream;Llibcore/io/DiskLruCache$Snapshot;)V

    return-object v0
.end method

.method private uriToKey(Ljava/net/URI;)Ljava/lang/String;
    .locals 5

    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljava/lang/IntegralToString;->bytesToHexString([BZ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method


# virtual methods
.method public get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;
    .locals 8
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

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Llibcore/net/http/HttpResponseCache;->uriToKey(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    iget-object v6, p0, Llibcore/net/http/HttpResponseCache;->cache:Llibcore/io/DiskLruCache;

    invoke-virtual {v6, v3}, Llibcore/io/DiskLruCache;->get(Ljava/lang/String;)Llibcore/io/DiskLruCache$Snapshot;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_0
    return-object v5

    :cond_0
    new-instance v2, Llibcore/net/http/HttpResponseCache$Entry;

    new-instance v6, Ljava/io/BufferedInputStream;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Llibcore/io/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v6}, Llibcore/net/http/HttpResponseCache$Entry;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2, p1, p2, p3}, Llibcore/net/http/HttpResponseCache$Entry;->matches(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v4}, Llibcore/io/DiskLruCache$Snapshot;->close()V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v4}, Llibcore/net/http/HttpResponseCache;->newBodyInputStream(Llibcore/io/DiskLruCache$Snapshot;)Ljava/io/InputStream;

    move-result-object v0

    #calls: Llibcore/net/http/HttpResponseCache$Entry;->isHttps()Z
    invoke-static {v2}, Llibcore/net/http/HttpResponseCache$Entry;->access$000(Llibcore/net/http/HttpResponseCache$Entry;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2, v0}, Llibcore/net/http/HttpResponseCache$Entry;->newSecureCacheResponse(Ljava/io/InputStream;)Ljava/net/SecureCacheResponse;

    move-result-object v5

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v0}, Llibcore/net/http/HttpResponseCache$Entry;->newCacheResponse(Ljava/io/InputStream;)Ljava/net/CacheResponse;

    move-result-object v5

    goto :goto_0
.end method

.method public getCache()Llibcore/io/DiskLruCache;
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpResponseCache;->cache:Llibcore/io/DiskLruCache;

    return-object v0
.end method

.method public declared-synchronized getHitCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Llibcore/net/http/HttpResponseCache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNetworkCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Llibcore/net/http/HttpResponseCache;->networkCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRequestCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Llibcore/net/http/HttpResponseCache;->requestCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWriteAbortCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Llibcore/net/http/HttpResponseCache;->writeAbortCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWriteSuccessCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Llibcore/net/http/HttpResponseCache;->writeSuccessCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x0

    instance-of v10, p2, Ljava/net/HttpURLConnection;

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return-object v9

    :cond_1
    move-object v3, p2

    check-cast v3, Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1}, Llibcore/net/http/HttpResponseCache;->uriToKey(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v5

    const-string v10, "POST"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "PUT"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "DELETE"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_2
    :try_start_0
    iget-object v10, p0, Llibcore/net/http/HttpResponseCache;->cache:Llibcore/io/DiskLruCache;

    invoke-virtual {v10, v5}, Llibcore/io/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v10

    goto :goto_0

    :cond_3
    const-string v10, "GET"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-direct {p0, v3}, Llibcore/net/http/HttpResponseCache;->getHttpEngine(Ljava/net/HttpURLConnection;)Llibcore/net/http/HttpEngine;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Llibcore/net/http/HttpEngine;->getResponseHeaders()Llibcore/net/http/ResponseHeaders;

    move-result-object v7

    invoke-virtual {v7}, Llibcore/net/http/ResponseHeaders;->hasVaryAll()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v4}, Llibcore/net/http/HttpEngine;->getRequestHeaders()Llibcore/net/http/RequestHeaders;

    move-result-object v10

    invoke-virtual {v10}, Llibcore/net/http/RequestHeaders;->getHeaders()Llibcore/net/http/RawHeaders;

    move-result-object v10

    invoke-virtual {v7}, Llibcore/net/http/ResponseHeaders;->getVaryFields()Ljava/util/Set;

    move-result-object v11

    invoke-virtual {v10, v11}, Llibcore/net/http/RawHeaders;->getAll(Ljava/util/Set;)Llibcore/net/http/RawHeaders;

    move-result-object v8

    new-instance v2, Llibcore/net/http/HttpResponseCache$Entry;

    invoke-direct {v2, p1, v8, v3}, Llibcore/net/http/HttpResponseCache$Entry;-><init>(Ljava/net/URI;Llibcore/net/http/RawHeaders;Ljava/net/HttpURLConnection;)V

    const/4 v1, 0x0

    :try_start_1
    iget-object v10, p0, Llibcore/net/http/HttpResponseCache;->cache:Llibcore/io/DiskLruCache;

    invoke-virtual {v10, v5}, Llibcore/io/DiskLruCache;->edit(Ljava/lang/String;)Llibcore/io/DiskLruCache$Editor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v2, v1}, Llibcore/net/http/HttpResponseCache$Entry;->writeTo(Llibcore/io/DiskLruCache$Editor;)V

    new-instance v10, Llibcore/net/http/HttpResponseCache$CacheRequestImpl;

    invoke-direct {v10, p0, v1}, Llibcore/net/http/HttpResponseCache$CacheRequestImpl;-><init>(Llibcore/net/http/HttpResponseCache;Llibcore/io/DiskLruCache$Editor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v9, v10

    goto :goto_0

    :catch_1
    move-exception v0

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Llibcore/io/DiskLruCache$Editor;->abort()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v10

    goto :goto_0
.end method

.method declared-synchronized trackConditionalCacheHit()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Llibcore/net/http/HttpResponseCache;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Llibcore/net/http/HttpResponseCache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized trackResponse(Llibcore/net/http/ResponseSource;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Llibcore/net/http/HttpResponseCache;->requestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Llibcore/net/http/HttpResponseCache;->requestCount:I

    sget-object v0, Llibcore/net/http/HttpResponseCache$2;->$SwitchMap$libcore$net$http$ResponseSource:[I

    invoke-virtual {p1}, Llibcore/net/http/ResponseSource;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    monitor-exit p0

    return-void

    :pswitch_0
    :try_start_1
    iget v0, p0, Llibcore/net/http/HttpResponseCache;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Llibcore/net/http/HttpResponseCache;->hitCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_1
    :try_start_2
    iget v0, p0, Llibcore/net/http/HttpResponseCache;->networkCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Llibcore/net/http/HttpResponseCache;->networkCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
