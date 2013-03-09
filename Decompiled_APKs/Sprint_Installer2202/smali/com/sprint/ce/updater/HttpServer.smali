.class public Lcom/sprint/ce/updater/HttpServer;
.super Ljava/lang/Object;
.source "HttpServer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SprintUpdater"


# instance fields
.field protected isError:Z

.field protected mContext:Landroid/content/Context;

.field protected mData:Ljava/lang/StringBuilder;

.field protected mProgress:Lcom/sprint/ce/updater/IProgress;

.field protected mResponse:Ljava/lang/String;

.field protected mResponseCode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v1, p0, Lcom/sprint/ce/updater/HttpServer;->mProgress:Lcom/sprint/ce/updater/IProgress;

    .line 33
    iput v0, p0, Lcom/sprint/ce/updater/HttpServer;->mResponseCode:I

    .line 34
    iput-boolean v0, p0, Lcom/sprint/ce/updater/HttpServer;->isError:Z

    .line 35
    iput-object v1, p0, Lcom/sprint/ce/updater/HttpServer;->mResponse:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sprint/ce/updater/HttpServer;->mData:Ljava/lang/StringBuilder;

    .line 40
    iput-object p1, p0, Lcom/sprint/ce/updater/HttpServer;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sprint/ce/updater/IProgress;)V
    .locals 2
    .parameter "context"
    .parameter "progress"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v1, p0, Lcom/sprint/ce/updater/HttpServer;->mProgress:Lcom/sprint/ce/updater/IProgress;

    .line 33
    iput v0, p0, Lcom/sprint/ce/updater/HttpServer;->mResponseCode:I

    .line 34
    iput-boolean v0, p0, Lcom/sprint/ce/updater/HttpServer;->isError:Z

    .line 35
    iput-object v1, p0, Lcom/sprint/ce/updater/HttpServer;->mResponse:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sprint/ce/updater/HttpServer;->mData:Ljava/lang/StringBuilder;

    .line 45
    iput-object p2, p0, Lcom/sprint/ce/updater/HttpServer;->mProgress:Lcom/sprint/ce/updater/IProgress;

    .line 46
    return-void
.end method


# virtual methods
.method public doRequest(Ljava/lang/String;)I
    .locals 12
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 112
    const/4 v7, 0x0

    .line 113
    .local v7, totalSize:I
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sprint/ce/updater/HttpServer;->isError:Z

    .line 114
    iget-object v8, p0, Lcom/sprint/ce/updater/HttpServer;->mContext:Landroid/content/Context;

    invoke-static {v8, p1}, Lcom/sprint/ce/updater/DownloadUtil;->getHttpClient(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v1

    .line 115
    .local v1, client:Lorg/apache/http/impl/client/DefaultHttpClient;
    sget-boolean v8, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "SprintUpdater"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Opening URL: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 118
    .local v3, get:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v1, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 119
    .local v5, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    iput v8, p0, Lcom/sprint/ce/updater/HttpServer;->mResponseCode:I

    .line 120
    sget-boolean v8, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v8, :cond_1

    const-string v8, "SprintUpdater"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "server response: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lcom/sprint/ce/updater/HttpServer;->mResponseCode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_1
    iget v8, p0, Lcom/sprint/ce/updater/HttpServer;->mResponseCode:I

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_2

    .line 123
    iput-boolean v11, p0, Lcom/sprint/ce/updater/HttpServer;->isError:Z

    .line 124
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 125
    .local v2, content:Ljava/io/InputStream;
    const/16 v8, 0x1000

    new-array v0, v8, [B

    .line 127
    .local v0, buffer:[B
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .local v6, sb:Ljava/lang/StringBuilder;
    :goto_0
    const/4 v8, -0x1

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, length:I
    if-ne v8, v4, :cond_3

    .line 133
    iput-object v6, p0, Lcom/sprint/ce/updater/HttpServer;->mData:Ljava/lang/StringBuilder;

    .line 136
    .end local v0           #buffer:[B
    .end local v2           #content:Ljava/io/InputStream;
    .end local v4           #length:I
    .end local v6           #sb:Ljava/lang/StringBuilder;
    :cond_2
    return v7

    .line 129
    .restart local v0       #buffer:[B
    .restart local v2       #content:Ljava/io/InputStream;
    .restart local v4       #length:I
    .restart local v6       #sb:Ljava/lang/StringBuilder;
    :cond_3
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0, v11, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    add-int/2addr v7, v4

    .line 131
    invoke-virtual {p0, v7}, Lcom/sprint/ce/updater/HttpServer;->onDownloadProgress(I)Z

    goto :goto_0
.end method

.method public getData()Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sprint/ce/updater/HttpServer;->mData:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public getDataAsByte()[B
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sprint/ce/updater/HttpServer;->mData:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/sprint/ce/updater/HttpServer;->mData:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDownloadProgress(I)Z
    .locals 3
    .parameter "progress"

    .prologue
    .line 165
    const/4 v1, 0x1

    .line 167
    .local v1, ret:Z
    :try_start_0
    iget-object v2, p0, Lcom/sprint/ce/updater/HttpServer;->mProgress:Lcom/sprint/ce/updater/IProgress;

    if-eqz v2, :cond_0

    .line 168
    iget-object v2, p0, Lcom/sprint/ce/updater/HttpServer;->mProgress:Lcom/sprint/ce/updater/IProgress;

    invoke-interface {v2, p1}, Lcom/sprint/ce/updater/IProgress;->onDownloadProgress(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 172
    :cond_0
    :goto_0
    return v1

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onFinished(I)V
    .locals 2
    .parameter "responseCode"

    .prologue
    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/sprint/ce/updater/HttpServer;->mProgress:Lcom/sprint/ce/updater/IProgress;

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/sprint/ce/updater/HttpServer;->mProgress:Lcom/sprint/ce/updater/IProgress;

    invoke-interface {v1, p0, p1}, Lcom/sprint/ce/updater/IProgress;->onFinishedProgress(Lcom/sprint/ce/updater/HttpServer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 142
    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lcom/sprint/ce/updater/HttpServer;->mResponseCode:I

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/sprint/ce/updater/HttpServer;->mData:Ljava/lang/StringBuilder;

    .line 144
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sprint/ce/updater/HttpServer;->isError:Z

    .line 146
    iget-object v1, p0, Lcom/sprint/ce/updater/HttpServer;->mProgress:Lcom/sprint/ce/updater/IProgress;

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/sprint/ce/updater/HttpServer;->mProgress:Lcom/sprint/ce/updater/IProgress;

    invoke-interface {v1, p0}, Lcom/sprint/ce/updater/IProgress;->onStartProgress(Lcom/sprint/ce/updater/HttpServer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public process(Ljava/lang/String;)Z
    .locals 7
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 63
    const/4 v0, 0x0

    .line 65
    .local v0, bReturn:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/sprint/ce/updater/HttpServer;->onStart()V

    .line 67
    invoke-virtual {p0, p1}, Lcom/sprint/ce/updater/HttpServer;->doRequest(Ljava/lang/String;)I

    move-result v2

    .line 68
    .local v2, size:I
    if-lez v2, :cond_1

    .line 69
    const/4 v0, 0x1

    .line 70
    sget-boolean v3, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SprintUpdater"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "returned "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/sprint/ce/updater/HttpServer;->processResponse()Z
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 106
    .end local v2           #size:I
    :cond_1
    :goto_0
    iget v3, p0, Lcom/sprint/ce/updater/HttpServer;->mResponseCode:I

    invoke-virtual {p0, v3}, Lcom/sprint/ce/updater/HttpServer;->onFinished(I)V

    .line 107
    return v0

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, e:Ljava/net/SocketTimeoutException;
    const/16 v3, 0x198

    iput v3, p0, Lcom/sprint/ce/updater/HttpServer;->mResponseCode:I

    .line 76
    const-string v3, "SprintUpdater"

    const-string v4, "mResponseCode = HttpURLConnection.HTTP_CLIENT_TIMEOUT"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    const/4 v0, 0x0

    .line 78
    iput-boolean v6, p0, Lcom/sprint/ce/updater/HttpServer;->isError:Z

    goto :goto_0

    .line 80
    .end local v1           #e:Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v1

    .line 81
    .local v1, e:Ljava/net/MalformedURLException;
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 82
    const/16 v3, 0x1f4

    iput v3, p0, Lcom/sprint/ce/updater/HttpServer;->mResponseCode:I

    .line 83
    sget-boolean v3, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "SprintUpdater"

    const-string v4, "mResponseCode = HttpURLConnection.HTTP_INTERNAL_ERROR"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_2
    const/4 v0, 0x0

    .line 85
    iput-boolean v6, p0, Lcom/sprint/ce/updater/HttpServer;->isError:Z

    goto :goto_0

    .line 87
    .end local v1           #e:Ljava/net/MalformedURLException;
    :catch_2
    move-exception v1

    .line 88
    .local v1, e:Ljava/io/IOException;
    const/16 v3, 0x1f7

    iput v3, p0, Lcom/sprint/ce/updater/HttpServer;->mResponseCode:I

    .line 89
    const-string v3, "SprintUpdater"

    const-string v4, "mResponseCode = HttpURLConnection.HTTP_UNAVAILABLE"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    iget-object v3, p0, Lcom/sprint/ce/updater/HttpServer;->mContext:Landroid/content/Context;

    const v4, 0x7f050026

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sprint/ce/updater/HttpServer;->mResponse:Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    .line 93
    iput-boolean v6, p0, Lcom/sprint/ce/updater/HttpServer;->isError:Z

    goto :goto_0

    .line 95
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 96
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v3, "SprintUpdater"

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    const/4 v0, 0x0

    .line 98
    iput-boolean v6, p0, Lcom/sprint/ce/updater/HttpServer;->isError:Z

    goto :goto_0

    .line 100
    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catch_4
    move-exception v1

    .line 101
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "SprintUpdater"

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    const/4 v0, 0x0

    .line 103
    iput-boolean v6, p0, Lcom/sprint/ce/updater/HttpServer;->isError:Z

    goto :goto_0
.end method

.method protected processResponse()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public processXMLResponse(Lorg/xml/sax/helpers/DefaultHandler;)Z
    .locals 7
    .parameter "xmlHandler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 190
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Lcom/sprint/ce/updater/HttpServer;->getDataAsByte()[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 191
    .local v3, stm:Ljava/io/ByteArrayInputStream;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    .line 192
    .local v2, spf:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 193
    .local v1, sp:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    .line 195
    .local v4, xr:Lorg/xml/sax/XMLReader;
    invoke-interface {v4, p1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 196
    new-instance v5, Lorg/xml/sax/InputSource;

    invoke-direct {v5, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v4, v5}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 197
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 198
    const/4 v5, 0x1

    .line 210
    .end local v1           #sp:Ljavax/xml/parsers/SAXParser;
    .end local v2           #spf:Ljavax/xml/parsers/SAXParserFactory;
    .end local v3           #stm:Ljava/io/ByteArrayInputStream;
    .end local v4           #xr:Lorg/xml/sax/XMLReader;
    :goto_0
    return v5

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, e:Ljava/io/IOException;
    const-string v5, "SprintUpdater"

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    .end local v0           #e:Ljava/io/IOException;
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 202
    :catch_1
    move-exception v0

    .line 203
    .local v0, e:Lorg/xml/sax/SAXException;
    const-string v5, "SprintUpdater"

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 204
    .end local v0           #e:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v0

    .line 205
    .local v0, e:Ljavax/xml/parsers/ParserConfigurationException;
    const-string v5, "SprintUpdater"

    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 206
    .end local v0           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_3
    move-exception v0

    .line 207
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "SprintUpdater"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
