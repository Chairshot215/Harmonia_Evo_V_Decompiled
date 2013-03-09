.class final Llibcore/net/http/HttpResponseCache$Entry;
.super Ljava/lang/Object;
.source "HttpResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/net/http/HttpResponseCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation


# instance fields
.field private final cipherSuite:Ljava/lang/String;

.field private final localCertificates:[Ljava/security/cert/Certificate;

.field private final peerCertificates:[Ljava/security/cert/Certificate;

.field private final requestMethod:Ljava/lang/String;

.field private final responseHeaders:Llibcore/net/http/RawHeaders;

.field private final uri:Ljava/lang/String;

.field private final varyHeaders:Llibcore/net/http/RawHeaders;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {p1}, Llibcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Llibcore/net/http/HttpResponseCache$Entry;->uri:Ljava/lang/String;

    invoke-static {p1}, Llibcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Llibcore/net/http/HttpResponseCache$Entry;->requestMethod:Ljava/lang/String;

    new-instance v4, Llibcore/net/http/RawHeaders;

    invoke-direct {v4}, Llibcore/net/http/RawHeaders;-><init>()V

    iput-object v4, p0, Llibcore/net/http/HttpResponseCache$Entry;->varyHeaders:Llibcore/net/http/RawHeaders;

    invoke-direct {p0, p1}, Llibcore/net/http/HttpResponseCache$Entry;->readInt(Ljava/io/InputStream;)I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v4, p0, Llibcore/net/http/HttpResponseCache$Entry;->varyHeaders:Llibcore/net/http/RawHeaders;

    invoke-static {p1}, Llibcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Llibcore/net/http/RawHeaders;->addLine(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Llibcore/net/http/RawHeaders;

    invoke-direct {v4}, Llibcore/net/http/RawHeaders;-><init>()V

    iput-object v4, p0, Llibcore/net/http/HttpResponseCache$Entry;->responseHeaders:Llibcore/net/http/RawHeaders;

    iget-object v4, p0, Llibcore/net/http/HttpResponseCache$Entry;->responseHeaders:Llibcore/net/http/RawHeaders;

    invoke-static {p1}, Llibcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Llibcore/net/http/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Llibcore/net/http/HttpResponseCache$Entry;->readInt(Ljava/io/InputStream;)I

    move-result v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    iget-object v4, p0, Llibcore/net/http/HttpResponseCache$Entry;->responseHeaders:Llibcore/net/http/RawHeaders;

    invoke-static {p1}, Llibcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Llibcore/net/http/RawHeaders;->addLine(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Llibcore/net/http/HttpResponseCache$Entry;->isHttps()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p1}, Llibcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expected \"\" but was \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw v4

    :cond_2
    :try_start_1
    invoke-static {p1}, Llibcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Llibcore/net/http/HttpResponseCache$Entry;->cipherSuite:Ljava/lang/String;

    invoke-direct {p0, p1}, Llibcore/net/http/HttpResponseCache$Entry;->readCertArray(Ljava/io/InputStream;)[Ljava/security/cert/Certificate;

    move-result-object v4

    iput-object v4, p0, Llibcore/net/http/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;

    invoke-direct {p0, p1}, Llibcore/net/http/HttpResponseCache$Entry;->readCertArray(Ljava/io/InputStream;)[Ljava/security/cert/Certificate;

    move-result-object v4

    iput-object v4, p0, Llibcore/net/http/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void

    :cond_3
    const/4 v4, 0x0

    :try_start_2
    iput-object v4, p0, Llibcore/net/http/HttpResponseCache$Entry;->cipherSuite:Ljava/lang/String;

    const/4 v4, 0x0

    iput-object v4, p0, Llibcore/net/http/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;

    const/4 v4, 0x0

    iput-object v4, p0, Llibcore/net/http/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public constructor <init>(Ljava/net/URI;Llibcore/net/http/RawHeaders;Ljava/net/HttpURLConnection;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Llibcore/net/http/HttpResponseCache$Entry;->uri:Ljava/lang/String;

    iput-object p2, p0, Llibcore/net/http/HttpResponseCache$Entry;->varyHeaders:Llibcore/net/http/RawHeaders;

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Llibcore/net/http/HttpResponseCache$Entry;->requestMethod:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Llibcore/net/http/RawHeaders;->fromMultimap(Ljava/util/Map;)Llibcore/net/http/RawHeaders;

    move-result-object v2

    iput-object v2, p0, Llibcore/net/http/HttpResponseCache$Entry;->responseHeaders:Llibcore/net/http/RawHeaders;

    invoke-direct {p0}, Llibcore/net/http/HttpResponseCache$Entry;->isHttps()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, p3

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getCipherSuite()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Llibcore/net/http/HttpResponseCache$Entry;->cipherSuite:Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    iput-object v1, p0, Llibcore/net/http/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v2

    iput-object v2, p0, Llibcore/net/http/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;

    :goto_1
    return-void

    :cond_0
    iput-object v3, p0, Llibcore/net/http/HttpResponseCache$Entry;->cipherSuite:Ljava/lang/String;

    iput-object v3, p0, Llibcore/net/http/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;

    iput-object v3, p0, Llibcore/net/http/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static synthetic access$000(Llibcore/net/http/HttpResponseCache$Entry;)Z
    .locals 1

    invoke-direct {p0}, Llibcore/net/http/HttpResponseCache$Entry;->isHttps()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Llibcore/net/http/HttpResponseCache$Entry;)Llibcore/net/http/RawHeaders;
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$Entry;->responseHeaders:Llibcore/net/http/RawHeaders;

    return-object v0
.end method

.method static synthetic access$500(Llibcore/net/http/HttpResponseCache$Entry;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$Entry;->cipherSuite:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Llibcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;

    return-object v0
.end method

.method static synthetic access$700(Llibcore/net/http/HttpResponseCache$Entry;)[Ljava/security/cert/Certificate;
    .locals 1

    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;

    return-object v0
.end method

.method private isHttps()Z
    .locals 2

    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$Entry;->uri:Ljava/lang/String;

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private readCertArray(Ljava/io/InputStream;)[Ljava/security/cert/Certificate;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Llibcore/net/http/HttpResponseCache$Entry;->readInt(Ljava/io/InputStream;)I

    move-result v4

    const/4 v7, -0x1

    if-ne v4, v7, :cond_1

    const/4 v6, 0x0

    :cond_0
    return-object v6

    :cond_1
    :try_start_0
    const-string v7, "X.509"

    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    new-array v6, v4, [Ljava/security/cert/Certificate;

    const/4 v3, 0x0

    :goto_0
    array-length v7, v6

    if-ge v3, v7, :cond_0

    invoke-static {p1}, Llibcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    sget-object v7, Ljava/nio/charset/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-static {v7}, Llibcore/io/Base64;->decode([B)[B

    move-result-object v0

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v7

    aput-object v7, v6, v3
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method private readInt(Ljava/io/InputStream;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Llibcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected an int but was \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private writeCertArray(Ljava/io/Writer;[Ljava/security/cert/Certificate;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_1

    const-string v7, "-1\n"

    invoke-virtual {p1, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    array-length v8, p2

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v0, p2

    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Llibcore/io/Base64;->encode([B)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7, v3}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method


# virtual methods
.method public matches(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 2
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
            ">;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$Entry;->uri:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llibcore/net/http/HttpResponseCache$Entry;->requestMethod:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Llibcore/net/http/ResponseHeaders;

    iget-object v1, p0, Llibcore/net/http/HttpResponseCache$Entry;->responseHeaders:Llibcore/net/http/RawHeaders;

    invoke-direct {v0, p1, v1}, Llibcore/net/http/ResponseHeaders;-><init>(Ljava/net/URI;Llibcore/net/http/RawHeaders;)V

    iget-object v1, p0, Llibcore/net/http/HttpResponseCache$Entry;->varyHeaders:Llibcore/net/http/RawHeaders;

    invoke-virtual {v1}, Llibcore/net/http/RawHeaders;->toMultimap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Llibcore/net/http/ResponseHeaders;->varyMatches(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newCacheResponse(Ljava/io/InputStream;)Ljava/net/CacheResponse;
    .locals 1

    new-instance v0, Llibcore/net/http/HttpResponseCache$Entry$1;

    invoke-direct {v0, p0, p1}, Llibcore/net/http/HttpResponseCache$Entry$1;-><init>(Llibcore/net/http/HttpResponseCache$Entry;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public newSecureCacheResponse(Ljava/io/InputStream;)Ljava/net/SecureCacheResponse;
    .locals 1

    new-instance v0, Llibcore/net/http/HttpResponseCache$Entry$2;

    invoke-direct {v0, p0, p1}, Llibcore/net/http/HttpResponseCache$Entry$2;-><init>(Llibcore/net/http/HttpResponseCache$Entry;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public writeTo(Llibcore/io/DiskLruCache$Editor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0xa

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Llibcore/io/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v1

    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    sget-object v4, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Llibcore/net/http/HttpResponseCache$Entry;->uri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Llibcore/net/http/HttpResponseCache$Entry;->requestMethod:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Llibcore/net/http/HttpResponseCache$Entry;->varyHeaders:Llibcore/net/http/RawHeaders;

    invoke-virtual {v4}, Llibcore/net/http/RawHeaders;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Llibcore/net/http/HttpResponseCache$Entry;->varyHeaders:Llibcore/net/http/RawHeaders;

    invoke-virtual {v3}, Llibcore/net/http/RawHeaders;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Llibcore/net/http/HttpResponseCache$Entry;->varyHeaders:Llibcore/net/http/RawHeaders;

    invoke-virtual {v4, v0}, Llibcore/net/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Llibcore/net/http/HttpResponseCache$Entry;->varyHeaders:Llibcore/net/http/RawHeaders;

    invoke-virtual {v4, v0}, Llibcore/net/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Llibcore/net/http/HttpResponseCache$Entry;->responseHeaders:Llibcore/net/http/RawHeaders;

    invoke-virtual {v4}, Llibcore/net/http/RawHeaders;->getStatusLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Llibcore/net/http/HttpResponseCache$Entry;->responseHeaders:Llibcore/net/http/RawHeaders;

    invoke-virtual {v4}, Llibcore/net/http/RawHeaders;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Llibcore/net/http/HttpResponseCache$Entry;->responseHeaders:Llibcore/net/http/RawHeaders;

    invoke-virtual {v3}, Llibcore/net/http/RawHeaders;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Llibcore/net/http/HttpResponseCache$Entry;->responseHeaders:Llibcore/net/http/RawHeaders;

    invoke-virtual {v4, v0}, Llibcore/net/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Llibcore/net/http/HttpResponseCache$Entry;->responseHeaders:Llibcore/net/http/RawHeaders;

    invoke-virtual {v4, v0}, Llibcore/net/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Llibcore/net/http/HttpResponseCache$Entry;->isHttps()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v5}, Ljava/io/BufferedWriter;->write(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Llibcore/net/http/HttpResponseCache$Entry;->cipherSuite:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    iget-object v3, p0, Llibcore/net/http/HttpResponseCache$Entry;->peerCertificates:[Ljava/security/cert/Certificate;

    invoke-direct {p0, v2, v3}, Llibcore/net/http/HttpResponseCache$Entry;->writeCertArray(Ljava/io/Writer;[Ljava/security/cert/Certificate;)V

    iget-object v3, p0, Llibcore/net/http/HttpResponseCache$Entry;->localCertificates:[Ljava/security/cert/Certificate;

    invoke-direct {p0, v2, v3}, Llibcore/net/http/HttpResponseCache$Entry;->writeCertArray(Ljava/io/Writer;[Ljava/security/cert/Certificate;)V

    :cond_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    return-void
.end method
