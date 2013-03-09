.class public Lcom/amazon/s3/GetResponse;
.super Lcom/amazon/s3/Response;
.source "GetResponse.java"


# instance fields
.field public object:Lcom/amazon/s3/S3Object;


# direct methods
.method public constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 4
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/amazon/s3/Response;-><init>(Ljava/net/HttpURLConnection;)V

    .line 32
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0x190

    if-ge v2, v3, :cond_0

    .line 33
    invoke-direct {p0, p1}, Lcom/amazon/s3/GetResponse;->extractMetadata(Ljava/net/HttpURLConnection;)Ljava/util/Map;

    move-result-object v1

    .line 34
    .local v1, metadata:Ljava/util/Map;
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/s3/GetResponse;->slurpInputStream(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 35
    .local v0, body:[B
    new-instance v2, Lcom/amazon/s3/S3Object;

    invoke-direct {v2, v0, v1}, Lcom/amazon/s3/S3Object;-><init>([BLjava/util/Map;)V

    iput-object v2, p0, Lcom/amazon/s3/GetResponse;->object:Lcom/amazon/s3/S3Object;

    .line 37
    .end local v0           #body:[B
    .end local v1           #metadata:Ljava/util/Map;
    :cond_0
    return-void
.end method

.method private extractMetadata(Ljava/net/HttpURLConnection;)Ljava/util/Map;
    .locals 6
    .parameter "connection"

    .prologue
    .line 44
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 45
    .local v3, metadata:Ljava/util/TreeMap;
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 46
    .local v0, headers:Ljava/util/Map;
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 47
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 48
    .local v2, key:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 49
    const-string v4, "x-amz-meta-"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 50
    const-string v4, "x-amz-meta-"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 54
    .end local v2           #key:Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method static slurpInputStream(Ljava/io/InputStream;)[B
    .locals 5
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x800

    .line 61
    const/16 v2, 0x800

    .line 62
    .local v2, chunkSize:I
    new-array v0, v4, [B

    .line 63
    .local v0, buf:[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 66
    .local v1, byteStream:Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, count:I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4
.end method
