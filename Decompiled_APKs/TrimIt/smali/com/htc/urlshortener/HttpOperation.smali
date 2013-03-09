.class public Lcom/htc/urlshortener/HttpOperation;
.super Ljava/lang/Thread;
.source "HttpOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/urlshortener/HttpOperation$HttpOperationListener;
    }
.end annotation


# static fields
.field private static final BUFFER_CACHE_SIZE:I = 0x1

.field private static final CONNECT_TIMEOUT:I = 0x4e20

.field private static final JSON_SIZE_LIMIT:I = 0x9eb10

.field private static final LOG_TAG:Ljava/lang/String; = "HttpOperation"

.field private static final READ_TIMEOUT:I = 0x19a28

.field private static final mSupportedSchemes:Lorg/apache/http/conn/scheme/SchemeRegistry;

.field private static final m_bufferCache:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

.field private final mListener:Lcom/htc/urlshortener/HttpOperation$HttpOperationListener;

.field private final mOutputStream:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 34
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1, v3}, Ljava/util/Vector;-><init>(I)V

    sput-object v1, Lcom/htc/urlshortener/HttpOperation;->m_bufferCache:Ljava/util/Vector;

    .line 37
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 38
    sget-object v1, Lcom/htc/urlshortener/HttpOperation;->m_bufferCache:Ljava/util/Vector;

    const/16 v2, 0x800

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_0
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    sput-object v1, Lcom/htc/urlshortener/HttpOperation;->mSupportedSchemes:Lorg/apache/http/conn/scheme/SchemeRegistry;

    .line 51
    sget-object v1, Lcom/htc/urlshortener/HttpOperation;->mSupportedSchemes:Lorg/apache/http/conn/scheme/SchemeRegistry;

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/OutputStream;Lcom/htc/urlshortener/HttpOperation$HttpOperationListener;)V
    .locals 1
    .parameter "url"
    .parameter "outputStream"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 64
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/urlshortener/HttpOperation;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 65
    iput-object p2, p0, Lcom/htc/urlshortener/HttpOperation;->mOutputStream:Ljava/io/OutputStream;

    .line 66
    iput-object p3, p0, Lcom/htc/urlshortener/HttpOperation;->mListener:Lcom/htc/urlshortener/HttpOperation$HttpOperationListener;

    .line 67
    return-void
.end method

.method private readFromHTTPStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11
    .parameter "is"
    .parameter "contentType"
    .parameter "contentEncoding"
    .parameter "contentLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    .line 138
    if-nez p2, :cond_0

    .line 216
    :goto_0
    return-void

    .line 140
    :cond_0
    const-string v8, "application/json"

    invoke-virtual {p2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "text/html"

    invoke-virtual {p2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "text/plain"

    invoke-virtual {p2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 143
    :cond_1
    const v5, 0x9eb10

    .line 144
    .local v5, contentLengthLimit:I
    if-eqz p3, :cond_2

    .line 145
    const-string v8, "gzip"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 146
    new-instance v7, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v7, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1
    .local v7, is:Ljava/io/InputStream;
    move-object p1, v7

    .line 157
    .end local v7           #is:Ljava/io/InputStream;
    .restart local p1
    :cond_2
    :try_start_0
    sget-object v8, Lcom/htc/urlshortener/HttpOperation;->m_bufferCache:Ljava/util/Vector;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .local v0, buffer:[B
    const/4 v1, 0x1

    .line 165
    .local v1, bufferFromCache:Z
    :goto_1
    const/4 v3, 0x0

    .line 166
    .local v3, bytesReceived:I
    if-ne p4, v10, :cond_7

    .line 167
    :cond_3
    const/4 v8, 0x0

    :try_start_1
    array-length v9, v0

    invoke-virtual {p1, v0, v8, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .local v2, bytesRead:I
    if-eq v2, v10, :cond_c

    .line 168
    iget-object v8, p0, Lcom/htc/urlshortener/HttpOperation;->mOutputStream:Ljava/io/OutputStream;

    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 169
    add-int/2addr v3, v2

    .line 170
    if-le v3, v5, :cond_3

    .line 171
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Content too large (length unknown): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    .end local v2           #bytesRead:I
    :catchall_0
    move-exception v8

    if-eqz v1, :cond_4

    .line 205
    sget-object v9, Lcom/htc/urlshortener/HttpOperation;->m_bufferCache:Ljava/util/Vector;

    invoke-virtual {v9, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_4
    if-eqz p1, :cond_5

    .line 209
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 211
    :cond_5
    iget-object v9, p0, Lcom/htc/urlshortener/HttpOperation;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    .line 212
    iget-object v9, p0, Lcom/htc/urlshortener/HttpOperation;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 204
    :goto_2
    throw v8

    .line 150
    .end local v0           #buffer:[B
    .end local v1           #bufferFromCache:Z
    .end local v3           #bytesReceived:I
    .end local v5           #contentLengthLimit:I
    :cond_6
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unsupported content type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 159
    .restart local v5       #contentLengthLimit:I
    :catch_0
    move-exception v6

    .line 160
    .local v6, ex:Ljava/lang/IndexOutOfBoundsException;
    const/16 v8, 0x800

    new-array v0, v8, [B

    .line 161
    .restart local v0       #buffer:[B
    const/4 v1, 0x0

    .restart local v1       #bufferFromCache:Z
    goto :goto_1

    .line 177
    .end local v6           #ex:Ljava/lang/IndexOutOfBoundsException;
    .restart local v3       #bytesReceived:I
    :cond_7
    if-le p4, v5, :cond_8

    .line 178
    :try_start_3
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Content too large: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 181
    :cond_8
    const/4 v4, 0x0

    .line 182
    .local v4, bytesRemaining:I
    move v4, p4

    .line 183
    :cond_9
    :goto_3
    if-lez v4, :cond_b

    .line 184
    const/4 v8, 0x0

    array-length v9, v0

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-virtual {p1, v0, v8, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 186
    .restart local v2       #bytesRead:I
    if-ne v2, v10, :cond_a

    .line 187
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid content length: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 189
    :cond_a
    if-lez v2, :cond_9

    .line 190
    sub-int/2addr v4, v2

    .line 191
    iget-object v8, p0, Lcom/htc/urlshortener/HttpOperation;->mOutputStream:Ljava/io/OutputStream;

    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 192
    add-int/2addr v3, v2

    goto :goto_3

    .line 197
    .end local v2           #bytesRead:I
    :cond_b
    :goto_4
    const/4 v8, 0x0

    array-length v9, v0

    invoke-virtual {p1, v0, v8, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .restart local v2       #bytesRead:I
    if-eq v2, v10, :cond_c

    .line 198
    add-int/2addr v3, v2

    .line 199
    iget-object v8, p0, Lcom/htc/urlshortener/HttpOperation;->mOutputStream:Ljava/io/OutputStream;

    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 204
    .end local v4           #bytesRemaining:I
    :cond_c
    if-eqz v1, :cond_d

    .line 205
    sget-object v8, Lcom/htc/urlshortener/HttpOperation;->m_bufferCache:Ljava/util/Vector;

    invoke-virtual {v8, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_d
    if-eqz p1, :cond_e

    .line 209
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 211
    :cond_e
    iget-object v8, p0, Lcom/htc/urlshortener/HttpOperation;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    .line 212
    iget-object v8, p0, Lcom/htc/urlshortener/HttpOperation;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 213
    :catch_1
    move-exception v8

    goto/16 :goto_0

    .end local v2           #bytesRead:I
    :catch_2
    move-exception v9

    goto/16 :goto_2
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/htc/urlshortener/HttpOperation;->interrupt()V

    .line 74
    return-void
.end method

.method public run()V
    .locals 17

    .prologue
    .line 78
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/urlshortener/HttpOperation;->setPriority(I)V

    .line 81
    new-instance v15, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v15}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 82
    .local v15, params:Lorg/apache/http/params/HttpParams;
    const-string v1, "http.socket.timeout"

    new-instance v2, Ljava/lang/Integer;

    const v5, 0x19a28

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v15, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 83
    const-string v1, "http.connection.timeout"

    new-instance v2, Ljava/lang/Integer;

    const/16 v5, 0x4e20

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v15, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 87
    new-instance v11, Lorg/apache/http/impl/conn/SingleClientConnManager;

    sget-object v1, Lcom/htc/urlshortener/HttpOperation;->mSupportedSchemes:Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v11, v15, v1}, Lorg/apache/http/impl/conn/SingleClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 91
    .local v11, connMgr:Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v14, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v14, v11, v15}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 93
    .local v14, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    const-class v1, Lorg/apache/http/client/protocol/RequestAddCookies;

    invoke-virtual {v14, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->removeRequestInterceptorByClass(Ljava/lang/Class;)V

    .line 94
    const-class v1, Lorg/apache/http/client/protocol/ResponseProcessCookies;

    invoke-virtual {v14, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->removeResponseInterceptorByClass(Ljava/lang/Class;)V

    .line 98
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/urlshortener/HttpOperation;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v14, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v16

    .line 99
    .local v16, resp:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 101
    .local v3, statusCode:I
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, statusPhrase:Ljava/lang/String;
    const/16 v1, 0xc8

    if-ne v3, v1, :cond_0

    .line 105
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    .line 107
    .local v13, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 108
    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    .line 113
    .local v12, contentEncoding:Ljava/lang/String;
    :goto_0
    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v5

    long-to-int v5, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v12, v5}, Lcom/htc/urlshortener/HttpOperation;->readFromHTTPStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;I)V

    .line 124
    .end local v12           #contentEncoding:Ljava/lang/String;
    .end local v13           #entity:Lorg/apache/http/HttpEntity;
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/urlshortener/HttpOperation;->mListener:Lcom/htc/urlshortener/HttpOperation$HttpOperationListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/urlshortener/HttpOperation;->mOutputStream:Ljava/io/OutputStream;

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-interface/range {v1 .. v6}, Lcom/htc/urlshortener/HttpOperation$HttpOperationListener;->onHttpOperationComplete(Lcom/htc/urlshortener/HttpOperation;ILjava/lang/String;Ljava/io/OutputStream;Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v3           #statusCode:I
    .end local v4           #statusPhrase:Ljava/lang/String;
    .end local v16           #resp:Lorg/apache/http/HttpResponse;
    :goto_1
    invoke-interface {v11}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 133
    return-void

    .line 111
    .restart local v3       #statusCode:I
    .restart local v4       #statusPhrase:Ljava/lang/String;
    .restart local v13       #entity:Lorg/apache/http/HttpEntity;
    .restart local v16       #resp:Lorg/apache/http/HttpResponse;
    :cond_1
    const/4 v12, 0x0

    .restart local v12       #contentEncoding:Ljava/lang/String;
    goto :goto_0

    .line 126
    .end local v3           #statusCode:I
    .end local v4           #statusPhrase:Ljava/lang/String;
    .end local v12           #contentEncoding:Ljava/lang/String;
    .end local v13           #entity:Lorg/apache/http/HttpEntity;
    .end local v16           #resp:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v10

    .line 127
    .local v10, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "HttpOperation"

    const-string v2, "HttpOperation failed!"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/urlshortener/HttpOperation;->mListener:Lcom/htc/urlshortener/HttpOperation$HttpOperationListener;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v6, p0

    invoke-interface/range {v5 .. v10}, Lcom/htc/urlshortener/HttpOperation$HttpOperationListener;->onHttpOperationComplete(Lcom/htc/urlshortener/HttpOperation;ILjava/lang/String;Ljava/io/OutputStream;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 130
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-interface {v11}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v1
.end method
