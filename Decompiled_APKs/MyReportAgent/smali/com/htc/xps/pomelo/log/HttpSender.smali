.class public Lcom/htc/xps/pomelo/log/HttpSender;
.super Ljava/lang/Object;
.source "HttpSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/xps/pomelo/log/HttpSender$InflatingEntity;,
        Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;
    }
.end annotation


# static fields
.field private static final ACCEPT_ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field private static final CONTENT_ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field private static final HEADER_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field private static final HEADER_CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field private static final TAG:Ljava/lang/String; = "Pomelo"


# instance fields
.field public D:Z

.field protected hostPort:Ljava/lang/String;

.field protected requestPacketSize:I

.field protected responsePacketSize:I

.field protected timeout:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/xps/pomelo/log/HttpSender;->D:Z

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/xps/pomelo/log/HttpSender;->hostPort:Ljava/lang/String;

    .line 75
    const/16 v0, 0x2710

    iput v0, p0, Lcom/htc/xps/pomelo/log/HttpSender;->timeout:I

    .line 77
    iput v1, p0, Lcom/htc/xps/pomelo/log/HttpSender;->requestPacketSize:I

    .line 79
    iput v1, p0, Lcom/htc/xps/pomelo/log/HttpSender;->responsePacketSize:I

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .parameter "serverAndPort"
    .parameter "timeoutMsec"

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/xps/pomelo/log/HttpSender;->D:Z

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/xps/pomelo/log/HttpSender;->hostPort:Ljava/lang/String;

    .line 75
    const/16 v0, 0x2710

    iput v0, p0, Lcom/htc/xps/pomelo/log/HttpSender;->timeout:I

    .line 77
    iput v1, p0, Lcom/htc/xps/pomelo/log/HttpSender;->requestPacketSize:I

    .line 79
    iput v1, p0, Lcom/htc/xps/pomelo/log/HttpSender;->responsePacketSize:I

    .line 87
    iput-object p1, p0, Lcom/htc/xps/pomelo/log/HttpSender;->hostPort:Ljava/lang/String;

    .line 88
    if-lez p2, :cond_0

    .line 89
    iput p2, p0, Lcom/htc/xps/pomelo/log/HttpSender;->timeout:I

    .line 90
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/htc/xps/pomelo/log/HttpSender;Lorg/apache/http/HttpRequest;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/htc/xps/pomelo/log/HttpSender;->getRequestHeaderSize(Lorg/apache/http/HttpRequest;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/htc/xps/pomelo/log/HttpSender;Lorg/apache/http/HttpRequest;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/htc/xps/pomelo/log/HttpSender;->getPacketHeaderSize(Lorg/apache/http/HttpRequest;)I

    move-result v0

    return v0
.end method

.method private connect(Lorg/apache/http/client/methods/HttpRequestBase;[Lorg/apache/http/Header;)Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;
    .locals 15
    .parameter "method"
    .parameter "headers"

    .prologue
    .line 126
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/xps/pomelo/log/HttpSender;->requestPacketSize:I

    .line 127
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/xps/pomelo/log/HttpSender;->responsePacketSize:I

    .line 129
    new-instance v8, Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;

    invoke-direct {v8, p0}, Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;-><init>(Lcom/htc/xps/pomelo/log/HttpSender;)V

    .line 130
    .local v8, result:Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;
    const/4 v9, -0x1

    iput v9, v8, Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;->statusCode:I

    .line 132
    iget-object v9, p0, Lcom/htc/xps/pomelo/log/HttpSender;->hostPort:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/htc/xps/pomelo/log/HttpSender;->hostPort:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x7

    if-ge v9, v10, :cond_1

    .line 221
    .end local p1
    :cond_0
    :goto_0
    return-object v8

    .line 135
    .restart local p1
    :cond_1
    const/4 v3, 0x0

    .line 136
    .local v3, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v5, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v5}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 138
    .local v5, parameters:Lorg/apache/http/params/HttpParams;
    const/4 v7, 0x0

    .line 139
    .local v7, response:Lorg/apache/http/HttpResponse;
    iget-boolean v9, p0, Lcom/htc/xps/pomelo/log/HttpSender;->D:Z

    if-eqz v9, :cond_2

    const-string v9, "Pomelo"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Host="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/xps/pomelo/log/HttpSender;->hostPort:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_2
    :try_start_0
    iget v9, p0, Lcom/htc/xps/pomelo/log/HttpSender;->timeout:I

    invoke-static {v5, v9}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 143
    iget v9, p0, Lcom/htc/xps/pomelo/log/HttpSender;->timeout:I

    invoke-static {v5, v9}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 145
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v3           #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .local v4, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_start_1
    new-instance v9, Lcom/htc/xps/pomelo/log/HttpSender$1;

    move-object/from16 v0, p2

    invoke-direct {v9, p0, v0}, Lcom/htc/xps/pomelo/log/HttpSender$1;-><init>(Lcom/htc/xps/pomelo/log/HttpSender;[Lorg/apache/http/Header;)V

    invoke-virtual {v4, v9}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 169
    new-instance v9, Lcom/htc/xps/pomelo/log/HttpSender$2;

    invoke-direct {v9, p0}, Lcom/htc/xps/pomelo/log/HttpSender$2;-><init>(Lcom/htc/xps/pomelo/log/HttpSender;)V

    invoke-virtual {v4, v9}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 185
    iget-boolean v9, p0, Lcom/htc/xps/pomelo/log/HttpSender;->D:Z

    if-eqz v9, :cond_3

    const-string v9, "Pomelo"

    const-string v10, "Before HttpClient.execute()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 189
    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    move-result-object v9

    const-string v10, "POST"

    if-ne v9, v10, :cond_4

    .line 190
    iget v9, p0, Lcom/htc/xps/pomelo/log/HttpSender;->requestPacketSize:I

    int-to-long v9, v9

    check-cast p1, Lorg/apache/http/client/methods/HttpPost;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v11

    const-wide/16 v13, 0x3

    add-long/2addr v11, v13

    add-long/2addr v9, v11

    long-to-int v9, v9

    iput v9, p0, Lcom/htc/xps/pomelo/log/HttpSender;->requestPacketSize:I

    .line 191
    :cond_4
    iget-boolean v9, p0, Lcom/htc/xps/pomelo/log/HttpSender;->D:Z

    if-eqz v9, :cond_5

    const-string v9, "Pomelo"

    const-string v10, "After HttpClient.execute()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_5
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v9

    iput-object v9, v8, Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;->resultBytes:[B

    .line 194
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v9

    iput-object v9, v8, Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;->responseHeaders:[Lorg/apache/http/Header;

    .line 195
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    iput v9, v8, Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;->statusCode:I

    .line 196
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v6

    .line 197
    .local v6, reasonPhrase:Ljava/lang/String;
    iget-boolean v9, p0, Lcom/htc/xps/pomelo/log/HttpSender;->D:Z

    if-eqz v9, :cond_6

    const-string v9, "Pomelo"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "statusCode=["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v8, Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;->statusCode:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "], responseBody=["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v11, Ljava/lang/String;

    iget-object v12, v8, Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;->resultBytes:[B

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_6
    iget-object v9, v8, Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;->resultBytes:[B

    array-length v9, v9

    invoke-direct {p0, v7}, Lcom/htc/xps/pomelo/log/HttpSender;->getResponseHeaderSize(Lorg/apache/http/HttpResponse;)I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {p0, v7}, Lcom/htc/xps/pomelo/log/HttpSender;->getPacketHeaderSize(Lorg/apache/http/HttpResponse;)I

    move-result v10

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x3

    iput v9, p0, Lcom/htc/xps/pomelo/log/HttpSender;->responsePacketSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 208
    const/4 v7, 0x0

    .line 212
    const/4 v3, 0x0

    .line 213
    .end local v4           #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v3       #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    const/4 v5, 0x0

    .line 214
    iget-boolean v9, p0, Lcom/htc/xps/pomelo/log/HttpSender;->D:Z

    if-eqz v9, :cond_7

    const-string v9, "Pomelo"

    const-string v10, "Set Http stuff as null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_7
    iget v9, p0, Lcom/htc/xps/pomelo/log/HttpSender;->requestPacketSize:I

    iput v9, v8, Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;->uploadedSize:I

    .line 216
    iget v9, p0, Lcom/htc/xps/pomelo/log/HttpSender;->responsePacketSize:I

    iput v9, v8, Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;->downloadedSize:I

    .line 220
    .end local v6           #reasonPhrase:Ljava/lang/String;
    :goto_1
    iget-boolean v9, p0, Lcom/htc/xps/pomelo/log/HttpSender;->D:Z

    if-eqz v9, :cond_0

    const-string v9, "Pomelo"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HttpStatus="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v8, Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;->statusCode:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 202
    .restart local p1
    :catch_0
    move-exception v1

    .line 203
    .end local p1
    .local v1, ex:Ljava/lang/Exception;
    :goto_2
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, exMessage:Ljava/lang/String;
    const-string v9, "Pomelo"

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v9, -0x2

    iput v9, v8, Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;->statusCode:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 208
    const/4 v7, 0x0

    .line 212
    const/4 v3, 0x0

    .line 213
    const/4 v5, 0x0

    .line 214
    iget-boolean v9, p0, Lcom/htc/xps/pomelo/log/HttpSender;->D:Z

    if-eqz v9, :cond_8

    const-string v9, "Pomelo"

    const-string v10, "Set Http stuff as null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_8
    iget v9, p0, Lcom/htc/xps/pomelo/log/HttpSender;->requestPacketSize:I

    iput v9, v8, Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;->uploadedSize:I

    .line 216
    iget v9, p0, Lcom/htc/xps/pomelo/log/HttpSender;->responsePacketSize:I

    iput v9, v8, Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;->downloadedSize:I

    goto :goto_1

    .line 208
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v2           #exMessage:Ljava/lang/String;
    :catchall_0
    move-exception v9

    :goto_3
    const/4 v7, 0x0

    .line 212
    const/4 v3, 0x0

    .line 213
    const/4 v5, 0x0

    .line 214
    iget-boolean v10, p0, Lcom/htc/xps/pomelo/log/HttpSender;->D:Z

    if-eqz v10, :cond_9

    const-string v10, "Pomelo"

    const-string v11, "Set Http stuff as null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_9
    iget v10, p0, Lcom/htc/xps/pomelo/log/HttpSender;->requestPacketSize:I

    iput v10, v8, Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;->uploadedSize:I

    .line 216
    iget v10, p0, Lcom/htc/xps/pomelo/log/HttpSender;->responsePacketSize:I

    iput v10, v8, Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;->downloadedSize:I

    throw v9

    .line 208
    .end local v3           #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v4       #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4           #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v3       #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    goto :goto_3

    .line 202
    .end local v3           #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v4       #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4           #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v3       #httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    goto :goto_2
.end method

.method private getHeaderSize([Lorg/apache/http/Header;)I
    .locals 4
    .parameter "headers"

    .prologue
    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, headerLength:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 278
    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 279
    aget-object v2, p1, v1

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    aget-object v3, p1, v1

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x4

    add-int/2addr v0, v2

    .line 277
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 282
    :cond_1
    return v0
.end method

.method private getPacketHeaderSize(Lorg/apache/http/HttpRequest;)I
    .locals 5
    .parameter "request"

    .prologue
    .line 243
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/http/ProtocolVersion;->toString()Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, protocol:Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, method:Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v2

    .line 246
    .local v2, uri:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x3

    return v3
.end method

.method private getPacketHeaderSize(Lorg/apache/http/HttpResponse;)I
    .locals 6
    .parameter "response"

    .prologue
    .line 230
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/http/ProtocolVersion;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, protocol:Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    .line 232
    .local v3, statusLine:Lorg/apache/http/StatusLine;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, statusCode:Ljava/lang/String;
    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, reasonPhrase:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x3

    return v4
.end method

.method private getRequestHeaderSize(Lorg/apache/http/HttpRequest;)I
    .locals 2
    .parameter "request"

    .prologue
    .line 256
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    .line 257
    .local v0, headers:[Lorg/apache/http/Header;
    invoke-direct {p0, v0}, Lcom/htc/xps/pomelo/log/HttpSender;->getHeaderSize([Lorg/apache/http/Header;)I

    move-result v1

    return v1
.end method

.method private getResponseHeaderSize(Lorg/apache/http/HttpResponse;)I
    .locals 2
    .parameter "response"

    .prologue
    .line 266
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    .line 267
    .local v0, headers:[Lorg/apache/http/Header;
    invoke-direct {p0, v0}, Lcom/htc/xps/pomelo/log/HttpSender;->getHeaderSize([Lorg/apache/http/Header;)I

    move-result v1

    return v1
.end method


# virtual methods
.method public connectByGet([Lorg/apache/http/Header;)Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;
    .locals 2
    .parameter "headers"

    .prologue
    .line 115
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, p0, Lcom/htc/xps/pomelo/log/HttpSender;->hostPort:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, getMethod:Lorg/apache/http/client/methods/HttpGet;
    invoke-direct {p0, v0, p1}, Lcom/htc/xps/pomelo/log/HttpSender;->connect(Lorg/apache/http/client/methods/HttpRequestBase;[Lorg/apache/http/Header;)Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;

    move-result-object v1

    return-object v1
.end method

.method public connectByPost([B[Lorg/apache/http/Header;)Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;
    .locals 3
    .parameter "binaryBits"
    .parameter "headers"

    .prologue
    .line 102
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    iget-object v2, p0, Lcom/htc/xps/pomelo/log/HttpSender;->hostPort:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 103
    .local v1, postMethod:Lorg/apache/http/client/methods/HttpPost;
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-static {p1}, Lcom/htc/xps/pomelo/log/ZipUtil;->gzipCompress([B)[B

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 104
    .local v0, byteArrayEntity:Lorg/apache/http/entity/ByteArrayEntity;
    const-string v2, "application/octet-stream"

    invoke-virtual {v0, v2}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 105
    const-string v2, "gzip"

    invoke-virtual {v0, v2}, Lorg/apache/http/entity/ByteArrayEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 107
    invoke-direct {p0, v1, p2}, Lcom/htc/xps/pomelo/log/HttpSender;->connect(Lorg/apache/http/client/methods/HttpRequestBase;[Lorg/apache/http/Header;)Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;

    move-result-object v2

    return-object v2
.end method
