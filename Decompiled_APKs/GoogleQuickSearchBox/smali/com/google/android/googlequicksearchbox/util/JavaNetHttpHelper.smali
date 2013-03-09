.class public Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;
.super Ljava/lang/Object;
.source "JavaNetHttpHelper.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/util/HttpHelper;


# instance fields
.field private mConnectTimeout:I

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mReadTimeout:I

.field private final mRewriter:Lcom/google/android/googlequicksearchbox/util/HttpHelper$UrlRewriter;

.field private final mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/util/HttpHelper$UrlRewriter;Ljava/lang/String;IILandroid/content/Context;)V
    .locals 2
    .parameter "rewriter"
    .parameter "userAgent"
    .parameter "connectTimeoutMillis"
    .parameter "readTimeoutMillis"
    .parameter "context"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->mUserAgent:Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->mRewriter:Lcom/google/android/googlequicksearchbox/util/HttpHelper$UrlRewriter;

    .line 67
    iput p3, p0, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->mConnectTimeout:I

    .line 68
    iput p4, p0, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->mReadTimeout:I

    .line 69
    iput-object p5, p0, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->mContext:Landroid/content/Context;

    .line 70
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->createConnectivityManager()V

    .line 71
    return-void
.end method

.method private createConnection(Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;
    .locals 8
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/googlequicksearchbox/util/HttpHelper$HttpException;
        }
    .end annotation

    .prologue
    .line 156
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/net/URL;

    iget-object v6, p0, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->mRewriter:Lcom/google/android/googlequicksearchbox/util/HttpHelper$UrlRewriter;

    invoke-interface {v6, p1}, Lcom/google/android/googlequicksearchbox/util/HttpHelper$UrlRewriter;->rewrite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 158
    .local v4, u:Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 159
    .local v0, c:Ljava/net/HttpURLConnection;
    if-eqz p2, :cond_0

    .line 160
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 161
    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 162
    .local v3, name:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 164
    .local v5, value:Ljava/lang/String;
    invoke-virtual {v0, v3, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 167
    .end local v1           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    :cond_0
    const-string v6, "User-Agent"

    iget-object v7, p0, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget v6, p0, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->mConnectTimeout:I

    if-eqz v6, :cond_1

    .line 169
    iget v6, p0, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->mConnectTimeout:I

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 171
    :cond_1
    iget v6, p0, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->mReadTimeout:I

    if-eqz v6, :cond_2

    .line 172
    iget v6, p0, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->mReadTimeout:I

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 174
    :cond_2
    return-object v0
.end method

.method private createConnectivityManager()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 246
    :cond_0
    return-void
.end method

.method private extractCharset(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 7
    .parameter "c"

    .prologue
    .line 180
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, contentType:Ljava/lang/String;
    if-nez v2, :cond_1

    const-string v0, "UTF-8"

    .line 197
    :cond_0
    :goto_0
    return-object v0

    .line 183
    :cond_1
    const-string v4, "charset="

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 184
    .local v1, charsetIndex:I
    if-gez v1, :cond_2

    const-string v0, "UTF-8"

    goto :goto_0

    .line 185
    :cond_2
    const-string v4, "charset="

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, charset:Ljava/lang/String;
    if-nez v0, :cond_3

    const-string v0, "UTF-8"

    goto :goto_0

    .line 189
    :cond_3
    :try_start_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 190
    const-string v4, "QSB.JavaNetHttpHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported charset: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const-string v0, "UTF-8"
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 193
    :catch_0
    move-exception v3

    .line 194
    .local v3, ex:Ljava/nio/charset/IllegalCharsetNameException;
    const-string v4, "QSB.JavaNetHttpHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal charset name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string v0, "UTF-8"

    goto :goto_0
.end method

.method private getResponseFrom(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 3
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/googlequicksearchbox/util/HttpHelper$HttpException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 202
    new-instance v0, Lcom/google/android/googlequicksearchbox/util/HttpHelper$HttpException;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/util/HttpHelper$HttpException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->extractCharset(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/common/io/CharStreams;->toString(Ljava/lang/Readable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get(Lcom/google/android/googlequicksearchbox/util/HttpHelper$GetRequest;I)Ljava/lang/String;
    .locals 2
    .parameter "request"
    .parameter "trafficTag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/googlequicksearchbox/util/HttpHelper$HttpException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/util/HttpHelper$GetRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/util/HttpHelper$GetRequest;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->get(Ljava/lang/String;Ljava/util/Map;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/util/Map;I)Ljava/lang/String;
    .locals 2
    .parameter "url"
    .parameter
    .parameter "trafficTag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/googlequicksearchbox/util/HttpHelper$HttpException;
        }
    .end annotation

    .prologue
    .line 98
    .local p2, requestHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->haveNetworkConnection()Z

    move-result v1

    if-nez v1, :cond_1

    .line 100
    const/4 v1, 0x0

    .line 112
    :cond_0
    :goto_0
    return-object v1

    .line 102
    :cond_1
    const/4 v0, 0x0

    .line 103
    .local v0, c:Ljava/net/HttpURLConnection;
    invoke-static {p3}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 105
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->createConnection(Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 106
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 108
    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->getResponseFrom(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 110
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 111
    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 111
    if-eqz v0, :cond_2

    .line 112
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw v1
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->createConnectivityManager()V

    .line 230
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 231
    const/4 v0, 0x0

    .line 233
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public haveNetworkConnection()Z
    .locals 2

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 221
    .local v0, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 223
    :cond_0
    const/4 v1, 0x0

    .line 225
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public post(Lcom/google/android/googlequicksearchbox/util/HttpHelper$PostRequest;I)Ljava/lang/String;
    .locals 3
    .parameter "request"
    .parameter "trafficTag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/googlequicksearchbox/util/HttpHelper$HttpException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/util/HttpHelper$PostRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/util/HttpHelper$PostRequest;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/util/HttpHelper$PostRequest;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->post(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .parameter "url"
    .parameter
    .parameter "content"
    .parameter "trafficTag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/googlequicksearchbox/util/HttpHelper$HttpException;
        }
    .end annotation

    .prologue
    .local p2, requestHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 124
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->haveNetworkConnection()Z

    move-result v4

    if-nez v4, :cond_1

    .line 126
    const/4 v3, 0x0

    .line 149
    :cond_0
    :goto_0
    return-object v3

    .line 128
    :cond_1
    const/4 v0, 0x0

    .line 129
    .local v0, c:Ljava/net/HttpURLConnection;
    invoke-static {p4}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 131
    if-nez p2, :cond_2

    .line 132
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .end local p2           #requestHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v1, requestHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object p2, v1

    .line 134
    .end local v1           #requestHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p2       #requestHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string v5, "Content-Length"

    if-nez p3, :cond_5

    move v4, v3

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->createConnection(Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 137
    if-eqz p3, :cond_3

    const/4 v3, 0x1

    :cond_3
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 138
    const-string v3, "POST"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 140
    if-eqz p3, :cond_4

    .line 141
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 142
    .local v2, writer:Ljava/io/OutputStreamWriter;
    invoke-virtual {v2, p3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    .line 145
    .end local v2           #writer:Ljava/io/OutputStreamWriter;
    :cond_4
    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/util/JavaNetHttpHelper;->getResponseFrom(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 147
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 148
    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 134
    :cond_5
    :try_start_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    goto :goto_1

    .line 147
    :catchall_0
    move-exception v3

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 148
    if-eqz v0, :cond_6

    .line 149
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    throw v3
.end method
