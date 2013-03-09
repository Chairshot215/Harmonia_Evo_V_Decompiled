.class public Llibcore/net/http/HttpEngine;
.super Ljava/lang/Object;
.source "HttpEngine.java"


# static fields
.field private static final BAD_GATEWAY_RESPONSE:Ljava/net/CacheResponse; = null

.field public static final CONNECT:Ljava/lang/String; = "CONNECT"

.field public static final DEFAULT_CHUNK_LENGTH:I = 0x400

.field public static final DELETE:Ljava/lang/String; = "DELETE"

.field public static final GET:Ljava/lang/String; = "GET"

.field public static final HEAD:Ljava/lang/String; = "HEAD"

.field public static final HTTP_CONTINUE:I = 0x64

.field public static final MAX_REDIRECTS:I = 0x5

.field private static final MAX_REQUEST_BUFFER_LENGTH:I = 0x8000

.field public static final OPTIONS:Ljava/lang/String; = "OPTIONS"

.field public static final POST:Ljava/lang/String; = "POST"

.field public static final PUT:Ljava/lang/String; = "PUT"

.field public static final TRACE:Ljava/lang/String; = "TRACE"


# instance fields
.field private automaticallyReleaseConnectionToPool:Z

.field private cacheRequest:Ljava/net/CacheRequest;

.field private cacheResponse:Ljava/net/CacheResponse;

.field private cachedResponseBody:Ljava/io/InputStream;

.field private cachedResponseHeaders:Llibcore/net/http/ResponseHeaders;

.field protected connection:Llibcore/net/http/HttpConnection;

.field private connectionReleased:Z

.field private httpMinorVersion:I

.field protected final method:Ljava/lang/String;

.field protected final policy:Llibcore/net/http/HttpURLConnectionImpl;

.field private requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

.field private final requestHeaders:Llibcore/net/http/RequestHeaders;

.field private requestOut:Ljava/io/OutputStream;

.field private responseBodyIn:Ljava/io/InputStream;

.field private final responseCache:Ljava/net/ResponseCache;

.field private responseHeaders:Llibcore/net/http/ResponseHeaders;

.field private responseSource:Llibcore/net/http/ResponseSource;

.field sendChunked:Z

.field private sentRequestMillis:J

.field private socketIn:Ljava/io/InputStream;

.field private socketOut:Ljava/io/OutputStream;

.field private transparentGzip:Z

.field private final uri:Ljava/net/URI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Llibcore/net/http/HttpEngine$1;

    invoke-direct {v0}, Llibcore/net/http/HttpEngine$1;-><init>()V

    sput-object v0, Llibcore/net/http/HttpEngine;->BAD_GATEWAY_RESPONSE:Ljava/net/CacheResponse;

    return-void
.end method

.method public constructor <init>(Llibcore/net/http/HttpURLConnectionImpl;Ljava/lang/String;Llibcore/net/http/RawHeaders;Llibcore/net/http/HttpConnection;Llibcore/net/http/RetryableOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v1

    iput-object v1, p0, Llibcore/net/http/HttpEngine;->responseCache:Ljava/net/ResponseCache;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Llibcore/net/http/HttpEngine;->sentRequestMillis:J

    const/4 v1, 0x1

    iput v1, p0, Llibcore/net/http/HttpEngine;->httpMinorVersion:I

    iput-object p1, p0, Llibcore/net/http/HttpEngine;->policy:Llibcore/net/http/HttpURLConnectionImpl;

    iput-object p2, p0, Llibcore/net/http/HttpEngine;->method:Ljava/lang/String;

    iput-object p4, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    iput-object p5, p0, Llibcore/net/http/HttpEngine;->requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

    :try_start_0
    invoke-virtual {p1}, Llibcore/net/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toURILenient()Ljava/net/URI;

    move-result-object v1

    iput-object v1, p0, Llibcore/net/http/HttpEngine;->uri:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Llibcore/net/http/RequestHeaders;

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->uri:Ljava/net/URI;

    new-instance v3, Llibcore/net/http/RawHeaders;

    invoke-direct {v3, p3}, Llibcore/net/http/RawHeaders;-><init>(Llibcore/net/http/RawHeaders;)V

    invoke-direct {v1, v2, v3}, Llibcore/net/http/RequestHeaders;-><init>(Ljava/net/URI;Llibcore/net/http/RawHeaders;)V

    iput-object v1, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getRequestLine()Ljava/lang/String;
    .locals 3

    iget v1, p0, Llibcore/net/http/HttpEngine;->httpMinorVersion:I

    if-nez v1, :cond_0

    const-string v0, "HTTP/1.0"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Llibcore/net/http/HttpEngine;->requestString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v0, "HTTP/1.1"

    goto :goto_0
.end method

.method private getTransferStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Llibcore/net/http/HttpEngine;->hasResponseBody()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Llibcore/net/http/FixedLengthInputStream;

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->socketIn:Ljava/io/InputStream;

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->cacheRequest:Ljava/net/CacheRequest;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Llibcore/net/http/FixedLengthInputStream;-><init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Llibcore/net/http/HttpEngine;I)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    invoke-virtual {v0}, Llibcore/net/http/ResponseHeaders;->isChunked()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Llibcore/net/http/ChunkedInputStream;

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->socketIn:Ljava/io/InputStream;

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->cacheRequest:Ljava/net/CacheRequest;

    invoke-direct {v0, v1, v2, p0}, Llibcore/net/http/ChunkedInputStream;-><init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Llibcore/net/http/HttpEngine;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    invoke-virtual {v0}, Llibcore/net/http/ResponseHeaders;->getContentLength()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    new-instance v0, Llibcore/net/http/FixedLengthInputStream;

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->socketIn:Ljava/io/InputStream;

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->cacheRequest:Ljava/net/CacheRequest;

    iget-object v3, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    invoke-virtual {v3}, Llibcore/net/http/ResponseHeaders;->getContentLength()I

    move-result v3

    invoke-direct {v0, v1, v2, p0, v3}, Llibcore/net/http/FixedLengthInputStream;-><init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Llibcore/net/http/HttpEngine;I)V

    goto :goto_0

    :cond_2
    new-instance v0, Llibcore/net/http/UnknownLengthHttpInputStream;

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->socketIn:Ljava/io/InputStream;

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->cacheRequest:Ljava/net/CacheRequest;

    invoke-direct {v0, v1, v2, p0}, Llibcore/net/http/UnknownLengthHttpInputStream;-><init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Llibcore/net/http/HttpEngine;)V

    goto :goto_0
.end method

.method private hasConnectionCloseHeader()Z
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    invoke-virtual {v0}, Llibcore/net/http/ResponseHeaders;->hasConnectionClose()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v0}, Llibcore/net/http/RequestHeaders;->hasConnectionClose()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasRequestBody()Z
    .locals 2

    iget-object v0, p0, Llibcore/net/http/HttpEngine;->method:Ljava/lang/String;

    const-string v1, "POST"

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Llibcore/net/http/HttpEngine;->method:Ljava/lang/String;

    const-string v1, "PUT"

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initContentStream(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Llibcore/net/http/HttpEngine;->transparentGzip:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    invoke-virtual {v0}, Llibcore/net/http/ResponseHeaders;->isContentEncodingGzip()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    invoke-virtual {v0}, Llibcore/net/http/ResponseHeaders;->stripContentEncoding()V

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Llibcore/net/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Llibcore/net/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    goto :goto_0
.end method

.method private initResponseSource()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v5, Llibcore/net/http/ResponseSource;->NETWORK:Llibcore/net/http/ResponseSource;

    iput-object v5, p0, Llibcore/net/http/HttpEngine;->responseSource:Llibcore/net/http/ResponseSource;

    iget-object v5, p0, Llibcore/net/http/HttpEngine;->policy:Llibcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v5}, Llibcore/net/http/HttpURLConnectionImpl;->getUseCaches()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Llibcore/net/http/HttpEngine;->responseCache:Ljava/net/ResponseCache;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Llibcore/net/http/HttpEngine;->responseCache:Ljava/net/ResponseCache;

    iget-object v6, p0, Llibcore/net/http/HttpEngine;->uri:Ljava/net/URI;

    iget-object v7, p0, Llibcore/net/http/HttpEngine;->method:Ljava/lang/String;

    iget-object v8, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v8}, Llibcore/net/http/RequestHeaders;->getHeaders()Llibcore/net/http/RawHeaders;

    move-result-object v8

    invoke-virtual {v8}, Llibcore/net/http/RawHeaders;->toMultimap()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Ljava/net/ResponseCache;->get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/CacheResponse;->getHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/CacheResponse;->getBody()Ljava/io/InputStream;

    move-result-object v5

    iput-object v5, p0, Llibcore/net/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    invoke-virtual {p0, v0}, Llibcore/net/http/HttpEngine;->acceptCacheResponseType(Ljava/net/CacheResponse;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    iget-object v5, p0, Llibcore/net/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    if-nez v5, :cond_3

    :cond_2
    iget-object v5, p0, Llibcore/net/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    :cond_3
    invoke-static {v4}, Llibcore/net/http/RawHeaders;->fromMultimap(Ljava/util/Map;)Llibcore/net/http/RawHeaders;

    move-result-object v3

    new-instance v5, Llibcore/net/http/ResponseHeaders;

    iget-object v6, p0, Llibcore/net/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-direct {v5, v6, v3}, Llibcore/net/http/ResponseHeaders;-><init>(Ljava/net/URI;Llibcore/net/http/RawHeaders;)V

    iput-object v5, p0, Llibcore/net/http/HttpEngine;->cachedResponseHeaders:Llibcore/net/http/ResponseHeaders;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v5, p0, Llibcore/net/http/HttpEngine;->cachedResponseHeaders:Llibcore/net/http/ResponseHeaders;

    iget-object v6, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v5, v1, v2, v6}, Llibcore/net/http/ResponseHeaders;->chooseResponseSource(JLlibcore/net/http/RequestHeaders;)Llibcore/net/http/ResponseSource;

    move-result-object v5

    iput-object v5, p0, Llibcore/net/http/HttpEngine;->responseSource:Llibcore/net/http/ResponseSource;

    iget-object v5, p0, Llibcore/net/http/HttpEngine;->responseSource:Llibcore/net/http/ResponseSource;

    sget-object v6, Llibcore/net/http/ResponseSource;->CACHE:Llibcore/net/http/ResponseSource;

    if-ne v5, v6, :cond_4

    iput-object v0, p0, Llibcore/net/http/HttpEngine;->cacheResponse:Ljava/net/CacheResponse;

    iget-object v5, p0, Llibcore/net/http/HttpEngine;->cachedResponseHeaders:Llibcore/net/http/ResponseHeaders;

    iget-object v6, p0, Llibcore/net/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    invoke-direct {p0, v5, v6}, Llibcore/net/http/HttpEngine;->setResponse(Llibcore/net/http/ResponseHeaders;Ljava/io/InputStream;)V

    goto :goto_0

    :cond_4
    iget-object v5, p0, Llibcore/net/http/HttpEngine;->responseSource:Llibcore/net/http/ResponseSource;

    sget-object v6, Llibcore/net/http/ResponseSource;->CONDITIONAL_CACHE:Llibcore/net/http/ResponseSource;

    if-ne v5, v6, :cond_5

    iput-object v0, p0, Llibcore/net/http/HttpEngine;->cacheResponse:Ljava/net/CacheResponse;

    goto :goto_0

    :cond_5
    iget-object v5, p0, Llibcore/net/http/HttpEngine;->responseSource:Llibcore/net/http/ResponseSource;

    sget-object v6, Llibcore/net/http/ResponseSource;->NETWORK:Llibcore/net/http/ResponseSource;

    if-ne v5, v6, :cond_6

    iget-object v5, p0, Llibcore/net/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    :cond_6
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
.end method

.method private maybeCache()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/net/http/HttpEngine;->policy:Llibcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v0}, Llibcore/net/http/HttpURLConnectionImpl;->getUseCaches()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseCache:Ljava/net/ResponseCache;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v0, v1}, Llibcore/net/http/ResponseHeaders;->isCacheable(Llibcore/net/http/RequestHeaders;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseCache:Ljava/net/ResponseCache;

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-virtual {p0}, Llibcore/net/http/HttpEngine;->getHttpConnectionToCache()Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/ResponseCache;->put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;

    move-result-object v0

    iput-object v0, p0, Llibcore/net/http/HttpEngine;->cacheRequest:Ljava/net/CacheRequest;

    goto :goto_0
.end method

.method private prepareRawRequestHeaders()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v3}, Llibcore/net/http/RequestHeaders;->getHeaders()Llibcore/net/http/RawHeaders;

    move-result-object v3

    invoke-direct {p0}, Llibcore/net/http/HttpEngine;->getRequestLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Llibcore/net/http/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v3}, Llibcore/net/http/RequestHeaders;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {p0}, Llibcore/net/http/HttpEngine;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Llibcore/net/http/RequestHeaders;->setUserAgent(Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v3}, Llibcore/net/http/RequestHeaders;->getHost()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    iget-object v4, p0, Llibcore/net/http/HttpEngine;->policy:Llibcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v4}, Llibcore/net/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {p0, v4}, Llibcore/net/http/HttpEngine;->getOriginAddress(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Llibcore/net/http/RequestHeaders;->setHost(Ljava/lang/String;)V

    :cond_1
    iget v3, p0, Llibcore/net/http/HttpEngine;->httpMinorVersion:I

    if-lez v3, :cond_2

    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v3}, Llibcore/net/http/RequestHeaders;->getConnection()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    const-string v4, "Keep-Alive"

    invoke-virtual {v3, v4}, Llibcore/net/http/RequestHeaders;->setConnection(Ljava/lang/String;)V

    :cond_2
    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v3}, Llibcore/net/http/RequestHeaders;->getAcceptEncoding()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    iput-boolean v3, p0, Llibcore/net/http/HttpEngine;->transparentGzip:Z

    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    const-string v4, "gzip"

    invoke-virtual {v3, v4}, Llibcore/net/http/RequestHeaders;->setAcceptEncoding(Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Llibcore/net/http/HttpEngine;->hasRequestBody()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v3}, Llibcore/net/http/RequestHeaders;->getContentType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    const-string v4, "application/x-www-form-urlencoded"

    invoke-virtual {v3, v4}, Llibcore/net/http/RequestHeaders;->setContentType(Ljava/lang/String;)V

    :cond_4
    iget-object v3, p0, Llibcore/net/http/HttpEngine;->policy:Llibcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v3}, Llibcore/net/http/HttpURLConnectionImpl;->getIfModifiedSince()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Llibcore/net/http/RequestHeaders;->setIfModifiedSince(Ljava/util/Date;)V

    :cond_5
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    iget-object v4, p0, Llibcore/net/http/HttpEngine;->uri:Ljava/net/URI;

    iget-object v5, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v5}, Llibcore/net/http/RequestHeaders;->getHeaders()Llibcore/net/http/RawHeaders;

    move-result-object v5

    invoke-virtual {v5}, Llibcore/net/http/RawHeaders;->toMultimap()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Llibcore/net/http/RequestHeaders;->addCookies(Ljava/util/Map;)V

    :cond_6
    return-void
.end method

.method private readHeaders(Llibcore/net/http/RawHeaders;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->socketIn:Ljava/io/InputStream;

    invoke-static {v2}, Llibcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v1}, Llibcore/net/http/RawHeaders;->addLine(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-virtual {p1}, Llibcore/net/http/RawHeaders;->toMultimap()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/net/CookieHandler;->put(Ljava/net/URI;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method private readResponseHeaders()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    new-instance v0, Llibcore/net/http/RawHeaders;

    invoke-direct {v0}, Llibcore/net/http/RawHeaders;-><init>()V

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->socketIn:Ljava/io/InputStream;

    invoke-static {v1}, Llibcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Llibcore/net/http/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Llibcore/net/http/HttpEngine;->readHeaders(Llibcore/net/http/RawHeaders;)V

    invoke-virtual {v0}, Llibcore/net/http/RawHeaders;->getResponseCode()I

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_0

    new-instance v1, Llibcore/net/http/ResponseHeaders;

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-direct {v1, v2, v0}, Llibcore/net/http/ResponseHeaders;-><init>(Ljava/net/URI;Llibcore/net/http/RawHeaders;)V

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Llibcore/net/http/HttpEngine;->setResponse(Llibcore/net/http/ResponseHeaders;Ljava/io/InputStream;)V

    return-void
.end method

.method private requestString()Ljava/lang/String;
    .locals 4

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->policy:Llibcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v2}, Llibcore/net/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {p0}, Llibcore/net/http/HttpEngine;->includeAuthorityInRequestLine()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "/"

    goto :goto_0

    :cond_2
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private sendSocketRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Llibcore/net/http/HttpEngine;->connect()V

    :cond_0
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->socketOut:Ljava/io/OutputStream;

    if-nez v0, :cond_1

    iget-object v0, p0, Llibcore/net/http/HttpEngine;->requestOut:Ljava/io/OutputStream;

    if-nez v0, :cond_1

    iget-object v0, p0, Llibcore/net/http/HttpEngine;->socketIn:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_2
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    invoke-virtual {v0}, Llibcore/net/http/HttpConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Llibcore/net/http/HttpEngine;->socketOut:Ljava/io/OutputStream;

    iget-object v0, p0, Llibcore/net/http/HttpEngine;->socketOut:Ljava/io/OutputStream;

    iput-object v0, p0, Llibcore/net/http/HttpEngine;->requestOut:Ljava/io/OutputStream;

    iget-object v0, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    invoke-virtual {v0}, Llibcore/net/http/HttpConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Llibcore/net/http/HttpEngine;->socketIn:Ljava/io/InputStream;

    invoke-direct {p0}, Llibcore/net/http/HttpEngine;->hasRequestBody()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Llibcore/net/http/HttpEngine;->initRequestBodyOut()V

    :cond_3
    return-void
.end method

.method private setResponse(Llibcore/net/http/ResponseHeaders;Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    invoke-virtual {v0}, Llibcore/net/http/ResponseHeaders;->getHeaders()Llibcore/net/http/RawHeaders;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/net/http/RawHeaders;->getHttpMinorVersion()I

    move-result v0

    iput v0, p0, Llibcore/net/http/HttpEngine;->httpMinorVersion:I

    if-eqz p2, :cond_1

    invoke-direct {p0, p2}, Llibcore/net/http/HttpEngine;->initContentStream(Ljava/io/InputStream;)V

    :cond_1
    return-void
.end method

.method private writeRequestHeaders(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v2, p0, Llibcore/net/http/HttpEngine;->sentRequestMillis:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    :cond_0
    invoke-virtual {p0}, Llibcore/net/http/HttpEngine;->getNetworkRequestHeaders()Llibcore/net/http/RawHeaders;

    move-result-object v1

    invoke-virtual {v1}, Llibcore/net/http/RawHeaders;->toHeaderString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    array-length v2, v0

    add-int/2addr v2, p1

    const v3, 0x8000

    if-gt v2, v3, :cond_1

    new-instance v2, Ljava/io/BufferedOutputStream;

    iget-object v3, p0, Llibcore/net/http/HttpEngine;->socketOut:Ljava/io/OutputStream;

    array-length v4, v0

    add-int/2addr v4, p1

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v2, p0, Llibcore/net/http/HttpEngine;->requestOut:Ljava/io/OutputStream;

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Llibcore/net/http/HttpEngine;->sentRequestMillis:J

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->requestOut:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method protected acceptCacheResponseType(Ljava/net/CacheResponse;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final automaticallyReleaseConnectionToPool()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Llibcore/net/http/HttpEngine;->automaticallyReleaseConnectionToPool:Z

    iget-object v0, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Llibcore/net/http/HttpEngine;->connectionReleased:Z

    if-eqz v0, :cond_0

    sget-object v0, Llibcore/net/http/HttpConnectionPool;->INSTANCE:Llibcore/net/http/HttpConnectionPool;

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    invoke-virtual {v0, v1}, Llibcore/net/http/HttpConnectionPool;->recycle(Llibcore/net/http/HttpConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    :cond_0
    return-void
.end method

.method protected connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Llibcore/net/http/HttpEngine;->openSocketConnection()Llibcore/net/http/HttpConnection;

    move-result-object v0

    iput-object v0, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    :cond_0
    return-void
.end method

.method public final getCacheResponse()Ljava/net/CacheResponse;
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->cacheResponse:Ljava/net/CacheResponse;

    return-object v0
.end method

.method public final getConnection()Llibcore/net/http/HttpConnection;
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    return-object v0
.end method

.method protected final getDefaultUserAgent()Ljava/lang/String;
    .locals 3

    const-string v1, "http.agent"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Java"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "java.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getHttpConnectionToCache()Ljava/net/HttpURLConnection;
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpEngine;->policy:Llibcore/net/http/HttpURLConnectionImpl;

    return-object v0
.end method

.method protected getNetworkRequestHeaders()Llibcore/net/http/RawHeaders;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v2}, Llibcore/net/http/RequestHeaders;->getHeaders()Llibcore/net/http/RawHeaders;

    move-result-object v2

    invoke-direct {p0}, Llibcore/net/http/HttpEngine;->getRequestLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Llibcore/net/http/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->policy:Llibcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v2}, Llibcore/net/http/HttpURLConnectionImpl;->getFixedContentLength()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v2, v1}, Llibcore/net/http/RequestHeaders;->setContentLength(I)V

    :cond_0
    :goto_0
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v2}, Llibcore/net/http/RequestHeaders;->getHeaders()Llibcore/net/http/RawHeaders;

    move-result-object v2

    return-object v2

    :cond_1
    iget-boolean v2, p0, Llibcore/net/http/HttpEngine;->sendChunked:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v2}, Llibcore/net/http/RequestHeaders;->setChunked()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

    instance-of v2, v2, Llibcore/net/http/RetryableOutputStream;

    if-eqz v2, :cond_0

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

    check-cast v2, Llibcore/net/http/RetryableOutputStream;

    invoke-virtual {v2}, Llibcore/net/http/RetryableOutputStream;->contentLength()I

    move-result v0

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v2, v0}, Llibcore/net/http/RequestHeaders;->setContentLength(I)V

    goto :goto_0
.end method

.method protected final getOriginAddress(Ljava/net/URL;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v0

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    if-lez v0, :cond_0

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->policy:Llibcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v2}, Llibcore/net/http/HttpURLConnectionImpl;->getDefaultPort()I

    move-result v2

    if-eq v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public final getRequestBody()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseSource:Llibcore/net/http/ResponseSource;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

    return-object v0
.end method

.method public final getRequestHeaders()Llibcore/net/http/RequestHeaders;
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    return-object v0
.end method

.method public final getResponseBody()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    return-object v0
.end method

.method public final getResponseCode()I
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    invoke-virtual {v0}, Llibcore/net/http/ResponseHeaders;->getHeaders()Llibcore/net/http/RawHeaders;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/net/http/RawHeaders;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public final getResponseHeaders()Llibcore/net/http/ResponseHeaders;
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    return-object v0
.end method

.method public final hasResponse()Z
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasResponseBody()Z
    .locals 4

    const/4 v1, 0x1

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    invoke-virtual {v2}, Llibcore/net/http/ResponseHeaders;->getHeaders()Llibcore/net/http/RawHeaders;

    move-result-object v2

    invoke-virtual {v2}, Llibcore/net/http/RawHeaders;->getResponseCode()I

    move-result v0

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->method:Ljava/lang/String;

    const-string v3, "HEAD"

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->method:Ljava/lang/String;

    const-string v3, "CONNECT"

    if-eq v2, v3, :cond_2

    const/16 v2, 0x64

    if-lt v0, v2, :cond_0

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_2

    :cond_0
    const/16 v2, 0xcc

    if-eq v0, v2, :cond_2

    const/16 v2, 0x130

    if-eq v0, v2, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    invoke-virtual {v2}, Llibcore/net/http/ResponseHeaders;->getContentLength()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    invoke-virtual {v2}, Llibcore/net/http/ResponseHeaders;->isChunked()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected includeAuthorityInRequestLine()Z
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpEngine;->policy:Llibcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v0}, Llibcore/net/http/HttpURLConnectionImpl;->usingProxy()Z

    move-result v0

    return v0
.end method

.method protected initRequestBodyOut()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, -0x1

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->policy:Llibcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v2}, Llibcore/net/http/HttpURLConnectionImpl;->getChunkLength()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v2}, Llibcore/net/http/RequestHeaders;->isChunked()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Llibcore/net/http/HttpEngine;->sendChunked:Z

    if-ne v0, v3, :cond_1

    const/16 v0, 0x400

    :cond_1
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->socketOut:Ljava/io/OutputStream;

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No socket to write to; was a POST cached?"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    iget v2, p0, Llibcore/net/http/HttpEngine;->httpMinorVersion:I

    if-nez v2, :cond_3

    const/4 v2, 0x0

    iput-boolean v2, p0, Llibcore/net/http/HttpEngine;->sendChunked:Z

    :cond_3
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->policy:Llibcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v2}, Llibcore/net/http/HttpURLConnectionImpl;->getFixedContentLength()I

    move-result v1

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

    if-eqz v2, :cond_4

    :goto_0
    return-void

    :cond_4
    if-eq v1, v3, :cond_5

    invoke-direct {p0, v1}, Llibcore/net/http/HttpEngine;->writeRequestHeaders(I)V

    new-instance v2, Llibcore/net/http/FixedLengthOutputStream;

    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestOut:Ljava/io/OutputStream;

    invoke-direct {v2, v3, v1}, Llibcore/net/http/FixedLengthOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v2, p0, Llibcore/net/http/HttpEngine;->requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

    goto :goto_0

    :cond_5
    iget-boolean v2, p0, Llibcore/net/http/HttpEngine;->sendChunked:Z

    if-eqz v2, :cond_6

    invoke-direct {p0, v3}, Llibcore/net/http/HttpEngine;->writeRequestHeaders(I)V

    new-instance v2, Llibcore/net/http/ChunkedOutputStream;

    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestOut:Ljava/io/OutputStream;

    invoke-direct {v2, v3, v0}, Llibcore/net/http/ChunkedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v2, p0, Llibcore/net/http/HttpEngine;->requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

    goto :goto_0

    :cond_6
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v2}, Llibcore/net/http/RequestHeaders;->getContentLength()I

    move-result v2

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v2}, Llibcore/net/http/RequestHeaders;->getContentLength()I

    move-result v2

    invoke-direct {p0, v2}, Llibcore/net/http/HttpEngine;->writeRequestHeaders(I)V

    new-instance v2, Llibcore/net/http/RetryableOutputStream;

    iget-object v3, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v3}, Llibcore/net/http/RequestHeaders;->getContentLength()I

    move-result v3

    invoke-direct {v2, v3}, Llibcore/net/http/RetryableOutputStream;-><init>(I)V

    iput-object v2, p0, Llibcore/net/http/HttpEngine;->requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

    goto :goto_0

    :cond_7
    new-instance v2, Llibcore/net/http/RetryableOutputStream;

    invoke-direct {v2}, Llibcore/net/http/RetryableOutputStream;-><init>()V

    iput-object v2, p0, Llibcore/net/http/HttpEngine;->requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

    goto :goto_0
.end method

.method protected final openSocketConnection()Llibcore/net/http/HttpConnection;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->uri:Ljava/net/URI;

    iget-object v3, p0, Llibcore/net/http/HttpEngine;->policy:Llibcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v3}, Llibcore/net/http/HttpURLConnectionImpl;->getProxy()Ljava/net/Proxy;

    move-result-object v3

    invoke-virtual {p0}, Llibcore/net/http/HttpEngine;->requiresTunnel()Z

    move-result v4

    iget-object v5, p0, Llibcore/net/http/HttpEngine;->policy:Llibcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v5}, Llibcore/net/http/HttpURLConnectionImpl;->getConnectTimeout()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Llibcore/net/http/HttpConnection;->connect(Ljava/net/URI;Ljava/net/Proxy;ZI)Llibcore/net/http/HttpConnection;

    move-result-object v1

    invoke-virtual {v1}, Llibcore/net/http/HttpConnection;->getAddress()Llibcore/net/http/HttpConnection$Address;

    move-result-object v2

    invoke-virtual {v2}, Llibcore/net/http/HttpConnection$Address;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->policy:Llibcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v2, v0}, Llibcore/net/http/HttpURLConnectionImpl;->setProxy(Ljava/net/Proxy;)V

    :cond_0
    iget-object v2, p0, Llibcore/net/http/HttpEngine;->policy:Llibcore/net/http/HttpURLConnectionImpl;

    invoke-virtual {v2}, Llibcore/net/http/HttpURLConnectionImpl;->getReadTimeout()I

    move-result v2

    invoke-virtual {v1, v2}, Llibcore/net/http/HttpConnection;->setSoTimeout(I)V

    return-object v1
.end method

.method public final readResponse()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Llibcore/net/http/HttpEngine;->hasResponse()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->responseSource:Llibcore/net/http/ResponseSource;

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "readResponse() without sendRequest()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->responseSource:Llibcore/net/http/ResponseSource;

    invoke-virtual {v1}, Llibcore/net/http/ResponseSource;->requiresConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v1, p0, Llibcore/net/http/HttpEngine;->sentRequestMillis:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

    instance-of v1, v1, Llibcore/net/http/RetryableOutputStream;

    if-eqz v1, :cond_6

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

    check-cast v1, Llibcore/net/http/RetryableOutputStream;

    invoke-virtual {v1}, Llibcore/net/http/RetryableOutputStream;->contentLength()I

    move-result v0

    :goto_1
    invoke-direct {p0, v0}, Llibcore/net/http/HttpEngine;->writeRequestHeaders(I)V

    :cond_3
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

    if-eqz v1, :cond_4

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

    invoke-virtual {v1}, Llibcore/net/http/AbstractHttpOutputStream;->close()V

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

    instance-of v1, v1, Llibcore/net/http/RetryableOutputStream;

    if-eqz v1, :cond_4

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

    check-cast v1, Llibcore/net/http/RetryableOutputStream;

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->requestOut:Ljava/io/OutputStream;

    invoke-virtual {v1, v2}, Llibcore/net/http/RetryableOutputStream;->writeToSocket(Ljava/io/OutputStream;)V

    :cond_4
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->requestOut:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->socketOut:Ljava/io/OutputStream;

    iput-object v1, p0, Llibcore/net/http/HttpEngine;->requestOut:Ljava/io/OutputStream;

    invoke-direct {p0}, Llibcore/net/http/HttpEngine;->readResponseHeaders()V

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    iget-wide v2, p0, Llibcore/net/http/HttpEngine;->sentRequestMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Llibcore/net/http/ResponseHeaders;->setLocalTimestamps(JJ)V

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->responseSource:Llibcore/net/http/ResponseSource;

    sget-object v2, Llibcore/net/http/ResponseSource;->CONDITIONAL_CACHE:Llibcore/net/http/ResponseSource;

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->cachedResponseHeaders:Llibcore/net/http/ResponseHeaders;

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    invoke-virtual {v1, v2}, Llibcore/net/http/ResponseHeaders;->validate(Llibcore/net/http/ResponseHeaders;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->responseCache:Ljava/net/ResponseCache;

    instance-of v1, v1, Llibcore/net/http/HttpResponseCache;

    if-eqz v1, :cond_5

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->responseCache:Ljava/net/ResponseCache;

    check-cast v1, Llibcore/net/http/HttpResponseCache;

    invoke-virtual {v1}, Llibcore/net/http/HttpResponseCache;->trackConditionalCacheHit()V

    :cond_5
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Llibcore/net/http/HttpEngine;->release(Z)V

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->cachedResponseHeaders:Llibcore/net/http/ResponseHeaders;

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    invoke-virtual {v1, v2}, Llibcore/net/http/ResponseHeaders;->combine(Llibcore/net/http/ResponseHeaders;)Llibcore/net/http/ResponseHeaders;

    move-result-object v1

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    invoke-direct {p0, v1, v2}, Llibcore/net/http/HttpEngine;->setResponse(Llibcore/net/http/ResponseHeaders;Ljava/io/InputStream;)V

    goto/16 :goto_0

    :cond_6
    const/4 v0, -0x1

    goto :goto_1

    :cond_7
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_8
    invoke-virtual {p0}, Llibcore/net/http/HttpEngine;->hasResponseBody()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-direct {p0}, Llibcore/net/http/HttpEngine;->maybeCache()V

    :cond_9
    invoke-direct {p0}, Llibcore/net/http/HttpEngine;->getTransferStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1}, Llibcore/net/http/HttpEngine;->initContentStream(Ljava/io/InputStream;)V

    goto/16 :goto_0
.end method

.method final readTrailers()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/net/http/HttpEngine;->responseHeaders:Llibcore/net/http/ResponseHeaders;

    invoke-virtual {v0}, Llibcore/net/http/ResponseHeaders;->getHeaders()Llibcore/net/http/RawHeaders;

    move-result-object v0

    invoke-direct {p0, v0}, Llibcore/net/http/HttpEngine;->readHeaders(Llibcore/net/http/RawHeaders;)V

    return-void
.end method

.method public final release(Z)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_0
    iget-boolean v1, p0, Llibcore/net/http/HttpEngine;->connectionReleased:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    iput-boolean v1, p0, Llibcore/net/http/HttpEngine;->connectionReleased:Z

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

    if-eqz v1, :cond_1

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->requestBodyOut:Llibcore/net/http/AbstractHttpOutputStream;

    iget-boolean v1, v1, Llibcore/net/http/AbstractHttpOutputStream;->closed:Z

    if-nez v1, :cond_1

    const/4 p1, 0x0

    :cond_1
    invoke-direct {p0}, Llibcore/net/http/HttpEngine;->hasConnectionCloseHeader()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x0

    :cond_2
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    instance-of v1, v1, Llibcore/net/http/UnknownLengthHttpInputStream;

    if-eqz v1, :cond_3

    const/4 p1, 0x0

    :cond_3
    if-eqz p1, :cond_4

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    if-eqz v1, :cond_4

    :try_start_0
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    invoke-static {v1}, Llibcore/io/Streams;->skipAll(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    if-nez p1, :cond_6

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    invoke-virtual {v1}, Llibcore/net/http/HttpConnection;->closeSocketAndStreams()V

    iput-object v3, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    :cond_5
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const/4 p1, 0x0

    goto :goto_0

    :cond_6
    iget-boolean v1, p0, Llibcore/net/http/HttpEngine;->automaticallyReleaseConnectionToPool:Z

    if-eqz v1, :cond_5

    sget-object v1, Llibcore/net/http/HttpConnectionPool;->INSTANCE:Llibcore/net/http/HttpConnectionPool;

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    invoke-virtual {v1, v2}, Llibcore/net/http/HttpConnectionPool;->recycle(Llibcore/net/http/HttpConnection;)V

    iput-object v3, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    goto :goto_1
.end method

.method protected requiresTunnel()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final sendRequest()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->responseSource:Llibcore/net/http/ResponseSource;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Llibcore/net/http/HttpEngine;->prepareRawRequestHeaders()V

    invoke-direct {p0}, Llibcore/net/http/HttpEngine;->initResponseSource()V

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->responseCache:Ljava/net/ResponseCache;

    instance-of v1, v1, Llibcore/net/http/HttpResponseCache;

    if-eqz v1, :cond_2

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->responseCache:Ljava/net/ResponseCache;

    check-cast v1, Llibcore/net/http/HttpResponseCache;

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->responseSource:Llibcore/net/http/ResponseSource;

    invoke-virtual {v1, v2}, Llibcore/net/http/HttpResponseCache;->trackResponse(Llibcore/net/http/ResponseSource;)V

    :cond_2
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->requestHeaders:Llibcore/net/http/RequestHeaders;

    invoke-virtual {v1}, Llibcore/net/http/RequestHeaders;->isOnlyIfCached()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->responseSource:Llibcore/net/http/ResponseSource;

    invoke-virtual {v1}, Llibcore/net/http/ResponseSource;->requiresConnection()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->responseSource:Llibcore/net/http/ResponseSource;

    sget-object v2, Llibcore/net/http/ResponseSource;->CONDITIONAL_CACHE:Llibcore/net/http/ResponseSource;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_3
    sget-object v1, Llibcore/net/http/ResponseSource;->CACHE:Llibcore/net/http/ResponseSource;

    iput-object v1, p0, Llibcore/net/http/HttpEngine;->responseSource:Llibcore/net/http/ResponseSource;

    sget-object v1, Llibcore/net/http/HttpEngine;->BAD_GATEWAY_RESPONSE:Ljava/net/CacheResponse;

    iput-object v1, p0, Llibcore/net/http/HttpEngine;->cacheResponse:Ljava/net/CacheResponse;

    iget-object v1, p0, Llibcore/net/http/HttpEngine;->cacheResponse:Ljava/net/CacheResponse;

    invoke-virtual {v1}, Ljava/net/CacheResponse;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Llibcore/net/http/RawHeaders;->fromMultimap(Ljava/util/Map;)Llibcore/net/http/RawHeaders;

    move-result-object v0

    new-instance v1, Llibcore/net/http/ResponseHeaders;

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-direct {v1, v2, v0}, Llibcore/net/http/ResponseHeaders;-><init>(Ljava/net/URI;Llibcore/net/http/RawHeaders;)V

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->cacheResponse:Ljava/net/CacheResponse;

    invoke-virtual {v2}, Ljava/net/CacheResponse;->getBody()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Llibcore/net/http/HttpEngine;->setResponse(Llibcore/net/http/ResponseHeaders;Ljava/io/InputStream;)V

    :cond_4
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->responseSource:Llibcore/net/http/ResponseSource;

    invoke-virtual {v1}, Llibcore/net/http/ResponseSource;->requiresConnection()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Llibcore/net/http/HttpEngine;->sendSocketRequest()V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    if-eqz v1, :cond_0

    sget-object v1, Llibcore/net/http/HttpConnectionPool;->INSTANCE:Llibcore/net/http/HttpConnectionPool;

    iget-object v2, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    invoke-virtual {v1, v2}, Llibcore/net/http/HttpConnectionPool;->recycle(Llibcore/net/http/HttpConnection;)V

    const/4 v1, 0x0

    iput-object v1, p0, Llibcore/net/http/HttpEngine;->connection:Llibcore/net/http/HttpConnection;

    goto :goto_0
.end method
