.class public abstract Lgnu/kawa/servlet/HttpRequestContext;
.super Ljava/lang/Object;
.source "HttpRequestContext.java"


# static fields
.field public static final HTTP_NOT_FOUND:I = 0x194

.field public static final HTTP_OK:I = 0xc8

.field static final STATUS_SENT:I = -0x3e7

.field public static importServletDefinitions:I

.field protected static final instance:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lgnu/kawa/servlet/HttpRequestContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field consumer:Lgnu/kawa/servlet/ServletPrinter;

.field localPath:Ljava/lang/String;

.field scriptPath:Ljava/lang/String;

.field public statusCode:I

.field public statusReasonPhrase:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lgnu/kawa/servlet/HttpRequestContext;->instance:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/16 v0, 0xc8

    iput v0, p0, Lgnu/kawa/servlet/HttpRequestContext;->statusCode:I

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lgnu/kawa/servlet/HttpRequestContext;->statusReasonPhrase:Ljava/lang/String;

    .line 141
    const-string v0, ""

    iput-object v0, p0, Lgnu/kawa/servlet/HttpRequestContext;->scriptPath:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lgnu/kawa/servlet/HttpRequestContext;->localPath:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lgnu/kawa/servlet/HttpRequestContext;
    .locals 3

    .prologue
    .line 39
    sget-object v1, Lgnu/kawa/servlet/HttpRequestContext;->instance:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/kawa/servlet/HttpRequestContext;

    .line 40
    .local v0, hctx:Lgnu/kawa/servlet/HttpRequestContext;
    if-nez v0, :cond_0

    .line 41
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "can only be called by http-server"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_0
    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lgnu/kawa/servlet/HttpRequestContext;
    .locals 4
    .parameter "command"

    .prologue
    .line 47
    sget-object v1, Lgnu/kawa/servlet/HttpRequestContext;->instance:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/kawa/servlet/HttpRequestContext;

    .line 48
    .local v0, hctx:Lgnu/kawa/servlet/HttpRequestContext;
    if-nez v0, :cond_0

    .line 49
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " can only be called within http-server"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    :cond_0
    return-object v0
.end method

.method public static setInstance(Lgnu/kawa/servlet/HttpRequestContext;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 55
    sget-object v0, Lgnu/kawa/servlet/HttpRequestContext;->instance:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 56
    return-void
.end method


# virtual methods
.method public abstract getAttribute(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public getConsumer()Lgnu/kawa/servlet/ServletPrinter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lgnu/kawa/servlet/HttpRequestContext;->consumer:Lgnu/kawa/servlet/ServletPrinter;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lgnu/kawa/servlet/ServletPrinter;

    const/16 v1, 0x2000

    invoke-direct {v0, p0, v1}, Lgnu/kawa/servlet/ServletPrinter;-><init>(Lgnu/kawa/servlet/HttpRequestContext;I)V

    iput-object v0, p0, Lgnu/kawa/servlet/HttpRequestContext;->consumer:Lgnu/kawa/servlet/ServletPrinter;

    .line 105
    :cond_0
    iget-object v0, p0, Lgnu/kawa/servlet/HttpRequestContext;->consumer:Lgnu/kawa/servlet/ServletPrinter;

    return-object v0
.end method

.method public abstract getContextPath()Ljava/lang/String;
.end method

.method public getLocalHost()Ljava/net/InetAddress;
    .locals 2

    .prologue
    .line 174
    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 176
    :catch_0
    move-exception v0

    .line 178
    .local v0, ex:Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getLocalIPAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lgnu/kawa/servlet/HttpRequestContext;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lgnu/kawa/servlet/HttpRequestContext;->localPath:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getLocalPort()I
.end method

.method public getLocalSocketAddress()Ljava/net/InetSocketAddress;
    .locals 3

    .prologue
    .line 162
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lgnu/kawa/servlet/HttpRequestContext;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Lgnu/kawa/servlet/HttpRequestContext;->getLocalPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method public abstract getPathTranslated()Ljava/lang/String;
.end method

.method public abstract getQueryString()Ljava/lang/String;
.end method

.method public abstract getRemoteHost()Ljava/net/InetAddress;
.end method

.method public abstract getRemoteIPAddress()Ljava/lang/String;
.end method

.method public abstract getRemotePort()I
.end method

.method public getRemoteSocketAddress()Ljava/net/InetSocketAddress;
    .locals 3

    .prologue
    .line 186
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lgnu/kawa/servlet/HttpRequestContext;->getRemoteHost()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Lgnu/kawa/servlet/HttpRequestContext;->getRemotePort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v0
.end method

.method public getRequestBodyChars()Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 68
    invoke-virtual {p0}, Lgnu/kawa/servlet/HttpRequestContext;->getRequestStream()Ljava/io/InputStream;

    move-result-object v4

    .line 69
    .local v4, is:Ljava/io/InputStream;
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 70
    .local v6, reader:Ljava/io/Reader;
    const/16 v2, 0x400

    .line 71
    .local v2, buflen:I
    new-array v1, v2, [C

    .line 72
    .local v1, buf:[C
    const/4 v5, 0x0

    .line 75
    .local v5, pos:I
    :goto_0
    sub-int v0, v2, v5

    .line 76
    .local v0, avail:I
    if-gtz v0, :cond_0

    .line 78
    mul-int/lit8 v9, v2, 0x2

    new-array v8, v9, [C

    .line 79
    .local v8, tmp:[C
    invoke-static {v1, v10, v8, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    move-object v1, v8

    .line 81
    add-int/2addr v2, v2

    .line 83
    .end local v8           #tmp:[C
    :cond_0
    invoke-virtual {v6, v1, v5, v0}, Ljava/io/Reader;->read([CII)I

    move-result v3

    .line 84
    .local v3, count:I
    if-gez v3, :cond_1

    .line 88
    invoke-virtual {v6}, Ljava/io/Reader;->close()V

    .line 89
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v1, v10, v5}, Ljava/lang/String;-><init>([CII)V

    .line 90
    .local v7, str:Ljava/lang/String;
    return-object v7

    .line 86
    .end local v7           #str:Ljava/lang/String;
    :cond_1
    add-int/2addr v5, v3

    .line 87
    goto :goto_0
.end method

.method public abstract getRequestHeader(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getRequestHeaders(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRequestHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getRequestMethod()Ljava/lang/String;
.end method

.method public getRequestParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 116
    invoke-virtual {p0}, Lgnu/kawa/servlet/HttpRequestContext;->getRequestParameters()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 117
    .local v0, p:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .end local p0
    :goto_0
    return-object v1

    .restart local p0
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v1, p0

    goto :goto_0
.end method

.method public abstract getRequestParameters()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public getRequestPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Lgnu/kawa/servlet/HttpRequestContext;->getRequestURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestPort()Lgnu/mapping/InPort;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lgnu/mapping/InPort;

    invoke-virtual {p0}, Lgnu/kawa/servlet/HttpRequestContext;->getRequestStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lgnu/mapping/InPort;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public getRequestScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    const-string v0, "http"

    return-object v0
.end method

.method public abstract getRequestStream()Ljava/io/InputStream;
.end method

.method public abstract getRequestURI()Ljava/net/URI;
.end method

.method public getRequestURLBuffer()Ljava/lang/StringBuffer;
    .locals 3

    .prologue
    .line 195
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 196
    .local v1, sbuf:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lgnu/kawa/servlet/HttpRequestContext;->getRequestScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    const-string v2, "Host"

    invoke-virtual {p0, v2}, Lgnu/kawa/servlet/HttpRequestContext;->getRequestHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, host:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    :goto_0
    invoke-virtual {p0}, Lgnu/kawa/servlet/HttpRequestContext;->getRequestPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    return-object v1

    .line 203
    :cond_0
    invoke-virtual {p0}, Lgnu/kawa/servlet/HttpRequestContext;->getLocalIPAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 205
    invoke-virtual {p0}, Lgnu/kawa/servlet/HttpRequestContext;->getLocalPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public abstract getResourceURL(Ljava/lang/String;)Ljava/net/URL;
.end method

.method public abstract getResponseStream()Ljava/io/OutputStream;
.end method

.method public getScriptPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lgnu/kawa/servlet/HttpRequestContext;->scriptPath:Ljava/lang/String;

    return-object v0
.end method

.method public abstract log(Ljava/lang/String;)V
.end method

.method public abstract log(Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method protected normalizeToContext(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 227
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    .line 228
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 231
    :goto_0
    const-string v0, ".."

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 233
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    .line 234
    const-string v0, "../"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    const/4 v0, 0x0

    .line 237
    :goto_1
    return-object v0

    .line 230
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgnu/kawa/servlet/HttpRequestContext;->getScriptPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 237
    goto :goto_1
.end method

.method public abstract reset(Z)Z
.end method

.method public sendNotFound(Ljava/lang/String;)V
    .locals 8
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The requested URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was not found on this server.\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, msg:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 267
    .local v0, bmsg:[B
    const/16 v4, 0x194

    const/4 v5, 0x0

    array-length v6, v0

    int-to-long v6, v6

    invoke-virtual {p0, v4, v5, v6, v7}, Lgnu/kawa/servlet/HttpRequestContext;->sendResponseHeaders(ILjava/lang/String;J)V

    .line 268
    invoke-virtual {p0}, Lgnu/kawa/servlet/HttpRequestContext;->getResponseStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 271
    .local v3, out:Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    return-void

    .line 273
    :catch_0
    move-exception v1

    .line 275
    .local v1, ex:Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public abstract sendResponseHeaders(ILjava/lang/String;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 222
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0, p1}, Lgnu/kawa/servlet/HttpRequestContext;->setResponseHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public abstract setResponseHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public setScriptAndLocalPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "scriptPath"
    .parameter "localPath"

    .prologue
    .line 144
    iput-object p1, p0, Lgnu/kawa/servlet/HttpRequestContext;->scriptPath:Ljava/lang/String;

    .line 145
    iput-object p2, p0, Lgnu/kawa/servlet/HttpRequestContext;->localPath:Ljava/lang/String;

    .line 146
    return-void
.end method
