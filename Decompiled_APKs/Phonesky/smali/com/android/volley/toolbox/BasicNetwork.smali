.class public Lcom/android/volley/toolbox/BasicNetwork;
.super Ljava/lang/Object;
.source "BasicNetwork.java"

# interfaces
.implements Lcom/android/volley/Network;


# static fields
.field protected static final DEBUG:Z

.field private static DEFAULT_POOL_SIZE:I

.field private static SLOW_REQUEST_THRESHOLD_MS:I


# instance fields
.field protected final mHttpStack:Lcom/android/volley/toolbox/HttpStack;

.field protected final mPool:Lcom/android/volley/toolbox/ByteArrayPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/android/volley/VolleyLog;->DEBUG:Z

    sput-boolean v0, Lcom/android/volley/toolbox/BasicNetwork;->DEBUG:Z

    .line 56
    const/16 v0, 0xbb8

    sput v0, Lcom/android/volley/toolbox/BasicNetwork;->SLOW_REQUEST_THRESHOLD_MS:I

    .line 58
    const/16 v0, 0x1000

    sput v0, Lcom/android/volley/toolbox/BasicNetwork;->DEFAULT_POOL_SIZE:I

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/HttpStack;)V
    .locals 2
    .parameter "httpStack"

    .prologue
    .line 70
    new-instance v0, Lcom/android/volley/toolbox/ByteArrayPool;

    sget v1, Lcom/android/volley/toolbox/BasicNetwork;->DEFAULT_POOL_SIZE:I

    invoke-direct {v0, v1}, Lcom/android/volley/toolbox/ByteArrayPool;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;Lcom/android/volley/toolbox/ByteArrayPool;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/HttpStack;Lcom/android/volley/toolbox/ByteArrayPool;)V
    .locals 0
    .parameter "httpStack"
    .parameter "pool"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/volley/toolbox/BasicNetwork;->mHttpStack:Lcom/android/volley/toolbox/HttpStack;

    .line 79
    iput-object p2, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    .line 80
    return-void
.end method

.method private addCacheHeaders(Ljava/util/Map;Lcom/android/volley/Cache$Entry;)V
    .locals 5
    .parameter
    .parameter "entry"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/Cache$Entry;",
            ")V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-object v1, p2, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 186
    const-string v1, "If-None-Match"

    iget-object v2, p2, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :cond_2
    iget-wide v1, p2, Lcom/android/volley/Cache$Entry;->serverDate:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 190
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p2, Lcom/android/volley/Cache$Entry;->serverDate:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 191
    .local v0, refTime:Ljava/util/Date;
    const-string v1, "If-Modified-Since"

    invoke-static {v0}, Lorg/apache/http/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V
    .locals 7
    .parameter "logPrefix"
    .parameter
    .parameter "exception"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Request",
            "<*>;",
            "Lcom/android/volley/VolleyError;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/VolleyError;
        }
    .end annotation

    .prologue
    .local p1, request:Lcom/android/volley/Request;,"Lcom/android/volley/Request<*>;"
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 166
    invoke-virtual {p1}, Lcom/android/volley/Request;->getRetryPolicy()Lcom/android/volley/RetryPolicy;

    move-result-object v2

    .line 167
    .local v2, retryPolicy:Lcom/android/volley/RetryPolicy;
    invoke-virtual {p1}, Lcom/android/volley/Request;->getTimeoutMs()I

    move-result v1

    .line 170
    .local v1, oldTimeout:I
    :try_start_0
    invoke-interface {v2, p2}, Lcom/android/volley/RetryPolicy;->retry(Lcom/android/volley/VolleyError;)V
    :try_end_0
    .catch Lcom/android/volley/VolleyError; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    const-string v3, "%s-retry [timeout=%s]"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 177
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, e:Lcom/android/volley/VolleyError;
    const-string v3, "%s-timeout-giveup [timeout=%s]"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 174
    throw v0
.end method

.method private static convertHeaders([Lorg/apache/http/Header;)Ljava/util/Map;
    .locals 4
    .parameter "headers"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/http/Header;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 235
    .local v1, result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 236
    aget-object v2, p0, v0

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    :cond_0
    return-object v1
.end method

.method private entityToBytes(Lorg/apache/http/HttpEntity;)[B
    .locals 9
    .parameter "entity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/volley/ServerError;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 202
    new-instance v1, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;

    iget-object v5, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-direct {v1, v5, v6}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;-><init>(Lcom/android/volley/toolbox/ByteArrayPool;I)V

    .line 204
    .local v1, bytes:Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;
    const/4 v0, 0x0

    .line 206
    .local v0, buffer:[B
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 207
    .local v4, in:Ljava/io/InputStream;
    if-nez v4, :cond_0

    .line 208
    new-instance v5, Lcom/android/volley/ServerError;

    invoke-direct {v5}, Lcom/android/volley/ServerError;-><init>()V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    .end local v4           #in:Ljava/io/InputStream;
    :catchall_0
    move-exception v5

    .line 219
    :try_start_1
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 225
    :goto_0
    iget-object v6, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    invoke-virtual {v6, v0}, Lcom/android/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    .line 226
    invoke-virtual {v1}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->close()V

    throw v5

    .line 210
    .restart local v4       #in:Ljava/io/InputStream;
    :cond_0
    :try_start_2
    iget-object v5, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    const/16 v6, 0x400

    invoke-virtual {v5, v6}, Lcom/android/volley/toolbox/ByteArrayPool;->getBuf(I)[B

    move-result-object v0

    .line 212
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, count:I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    .line 213
    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v2}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 215
    :cond_1
    invoke-virtual {v1}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 219
    :try_start_3
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 225
    :goto_2
    iget-object v6, p0, Lcom/android/volley/toolbox/BasicNetwork;->mPool:Lcom/android/volley/toolbox/ByteArrayPool;

    invoke-virtual {v6, v0}, Lcom/android/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    .line 226
    invoke-virtual {v1}, Lcom/android/volley/toolbox/PoolingByteArrayOutputStream;->close()V

    return-object v5

    .line 220
    :catch_0
    move-exception v3

    .line 223
    .local v3, e:Ljava/io/IOException;
    const-string v6, "Error occured when calling consumingContent"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 220
    .end local v2           #count:I
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #in:Ljava/io/InputStream;
    :catch_1
    move-exception v3

    .line 223
    .restart local v3       #e:Ljava/io/IOException;
    const-string v6, "Error occured when calling consumingContent"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/android/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private logSlowRequests(JLcom/android/volley/Request;[BLorg/apache/http/StatusLine;)V
    .locals 4
    .parameter "requestLifetime"
    .parameter
    .parameter "responseContents"
    .parameter "statusLine"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/android/volley/Request",
            "<*>;[B",
            "Lorg/apache/http/StatusLine;",
            ")V"
        }
    .end annotation

    .prologue
    .line 151
    .local p3, request:Lcom/android/volley/Request;,"Lcom/android/volley/Request<*>;"
    sget-boolean v0, Lcom/android/volley/toolbox/BasicNetwork;->DEBUG:Z

    if-nez v0, :cond_0

    sget v0, Lcom/android/volley/toolbox/BasicNetwork;->SLOW_REQUEST_THRESHOLD_MS:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 152
    :cond_0
    const-string v1, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, v2, v0

    const/4 v0, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x2

    if-eqz p4, :cond_2

    array-length v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x3

    invoke-interface {p5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    invoke-virtual {p3}, Lcom/android/volley/Request;->getRetryPolicy()Lcom/android/volley/RetryPolicy;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/volley/RetryPolicy;->getCurrentRetryCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    :cond_1
    return-void

    .line 152
    :cond_2
    const-string v0, "null"

    goto :goto_0
.end method


# virtual methods
.method public performRequest(Lcom/android/volley/Request;)Lcom/android/volley/NetworkResponse;
    .locals 17
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;)",
            "Lcom/android/volley/NetworkResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/VolleyError;
        }
    .end annotation

    .prologue
    .line 84
    .local p1, request:Lcom/android/volley/Request;,"Lcom/android/volley/Request<*>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 86
    .local v11, requestStart:J
    :goto_0
    const/4 v9, 0x0

    .line 87
    .local v9, httpResponse:Lorg/apache/http/HttpResponse;
    const/4 v5, 0x0

    .line 88
    .local v5, responseContents:[B
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 91
    .local v13, responseHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 92
    .local v8, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getCacheEntry()Lcom/android/volley/Cache$Entry;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v1}, Lcom/android/volley/toolbox/BasicNetwork;->addCacheHeaders(Ljava/util/Map;Lcom/android/volley/Cache$Entry;)V

    .line 93
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/volley/toolbox/BasicNetwork;->mHttpStack:Lcom/android/volley/toolbox/HttpStack;

    move-object/from16 v0, p1

    invoke-interface {v1, v0, v8}, Lcom/android/volley/toolbox/HttpStack;->performRequest(Lcom/android/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 94
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    .line 96
    .local v6, statusLine:Lorg/apache/http/StatusLine;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    invoke-static {v1}, Lcom/android/volley/toolbox/BasicNetwork;->convertHeaders([Lorg/apache/http/Header;)Ljava/util/Map;

    move-result-object v13

    .line 98
    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v4, 0x130

    if-ne v1, v4, :cond_0

    .line 99
    new-instance v1, Lcom/android/volley/NetworkResponse;

    const/16 v4, 0x130

    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getCacheEntry()Lcom/android/volley/Cache$Entry;

    move-result-object v15

    iget-object v15, v15, Lcom/android/volley/Cache$Entry;->data:[B

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-direct {v1, v4, v15, v13, v0}, Lcom/android/volley/NetworkResponse;-><init>(I[BLjava/util/Map;Z)V

    .line 111
    :goto_1
    return-object v1

    .line 103
    :cond_0
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/volley/toolbox/BasicNetwork;->entityToBytes(Lorg/apache/http/HttpEntity;)[B

    move-result-object v5

    .line 105
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    sub-long v2, v15, v11

    .local v2, requestLifetime:J
    move-object/from16 v1, p0

    move-object/from16 v4, p1

    .line 106
    invoke-direct/range {v1 .. v6}, Lcom/android/volley/toolbox/BasicNetwork;->logSlowRequests(JLcom/android/volley/Request;[BLorg/apache/http/StatusLine;)V

    .line 108
    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v4, 0xc8

    if-eq v1, v4, :cond_1

    .line 109
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 113
    .end local v2           #requestLifetime:J
    .end local v6           #statusLine:Lorg/apache/http/StatusLine;
    .end local v8           #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    .line 114
    .local v7, e:Ljava/net/SocketTimeoutException;
    const-string v1, "socket"

    new-instance v4, Lcom/android/volley/TimeoutError;

    invoke-direct {v4}, Lcom/android/volley/TimeoutError;-><init>()V

    move-object/from16 v0, p1

    invoke-static {v1, v0, v4}, Lcom/android/volley/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto :goto_0

    .line 111
    .end local v7           #e:Ljava/net/SocketTimeoutException;
    .restart local v2       #requestLifetime:J
    .restart local v6       #statusLine:Lorg/apache/http/StatusLine;
    .restart local v8       #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    new-instance v1, Lcom/android/volley/NetworkResponse;

    const/16 v4, 0xc8

    const/4 v15, 0x0

    invoke-direct {v1, v4, v5, v13, v15}, Lcom/android/volley/NetworkResponse;-><init>(I[BLjava/util/Map;Z)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 115
    .end local v2           #requestLifetime:J
    .end local v6           #statusLine:Lorg/apache/http/StatusLine;
    .end local v8           #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_1
    move-exception v7

    .line 116
    .local v7, e:Lorg/apache/http/conn/ConnectTimeoutException;
    const-string v1, "connection"

    new-instance v4, Lcom/android/volley/TimeoutError;

    invoke-direct {v4}, Lcom/android/volley/TimeoutError;-><init>()V

    move-object/from16 v0, p1

    invoke-static {v1, v0, v4}, Lcom/android/volley/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto/16 :goto_0

    .line 117
    .end local v7           #e:Lorg/apache/http/conn/ConnectTimeoutException;
    :catch_2
    move-exception v7

    .line 118
    .local v7, e:Ljava/net/MalformedURLException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Bad URL "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 119
    .end local v7           #e:Ljava/net/MalformedURLException;
    :catch_3
    move-exception v7

    .line 120
    .local v7, e:Ljava/io/IOException;
    const/4 v14, 0x0

    .line 121
    .local v14, statusCode:I
    const/4 v10, 0x0

    .line 122
    .local v10, networkResponse:Lcom/android/volley/NetworkResponse;
    if-eqz v9, :cond_3

    .line 123
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    .line 127
    const-string v1, "Unexpected response code %d for %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v4, v15

    const/4 v15, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v4, v15

    invoke-static {v1, v4}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    if-eqz v5, :cond_5

    .line 129
    new-instance v10, Lcom/android/volley/NetworkResponse;

    .end local v10           #networkResponse:Lcom/android/volley/NetworkResponse;
    const/4 v1, 0x0

    invoke-direct {v10, v14, v5, v13, v1}, Lcom/android/volley/NetworkResponse;-><init>(I[BLjava/util/Map;Z)V

    .line 131
    .restart local v10       #networkResponse:Lcom/android/volley/NetworkResponse;
    const/16 v1, 0x191

    if-eq v14, v1, :cond_2

    const/16 v1, 0x193

    if-ne v14, v1, :cond_4

    .line 133
    :cond_2
    const-string v1, "auth"

    new-instance v4, Lcom/android/volley/AuthFailureError;

    invoke-direct {v4, v10}, Lcom/android/volley/AuthFailureError;-><init>(Lcom/android/volley/NetworkResponse;)V

    move-object/from16 v0, p1

    invoke-static {v1, v0, v4}, Lcom/android/volley/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto/16 :goto_0

    .line 125
    :cond_3
    new-instance v1, Lcom/android/volley/NoConnectionError;

    invoke-direct {v1, v7}, Lcom/android/volley/NoConnectionError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 137
    :cond_4
    new-instance v1, Lcom/android/volley/ServerError;

    invoke-direct {v1, v10}, Lcom/android/volley/ServerError;-><init>(Lcom/android/volley/NetworkResponse;)V

    throw v1

    .line 140
    :cond_5
    new-instance v1, Lcom/android/volley/NetworkError;

    invoke-direct {v1, v10}, Lcom/android/volley/NetworkError;-><init>(Lcom/android/volley/NetworkResponse;)V

    throw v1
.end method
