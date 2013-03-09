.class public Lcom/htc/util/http/HtcServiceHttpClient;
.super Ljava/lang/Object;
.source "HtcServiceHttpClient.java"

# interfaces
.implements Lorg/apache/http/client/HttpClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/http/HtcServiceHttpClient$BlockedRequestException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcServiceHttpClient"


# instance fields
.field private final mClient:Landroid/net/http/AndroidHttpClient;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 1
    .parameter "resolver"
    .parameter "userAgent"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {p2}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/http/HtcServiceHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    .line 80
    iput-object p1, p0, Lcom/htc/util/http/HtcServiceHttpClient;->mResolver:Landroid/content/ContentResolver;

    .line 81
    iput-object p2, p0, Lcom/htc/util/http/HtcServiceHttpClient;->mUserAgent:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public static getGzipCapableUserAgent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "originalUserAgent"

    .prologue
    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; gzip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static wrapRequest(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/impl/client/RequestWrapper;
    .locals 3
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    :try_start_0
    instance-of v2, p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v2, :cond_0

    .line 244
    new-instance v1, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;

    check-cast p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    .end local p0
    invoke-direct {v1, p0}, Lorg/apache/http/impl/client/EntityEnclosingRequestWrapper;-><init>(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    .line 251
    .local v1, wrapped:Lorg/apache/http/impl/client/RequestWrapper;
    :goto_0
    invoke-virtual {v1}, Lorg/apache/http/impl/client/RequestWrapper;->resetHeaders()V

    .line 253
    return-object v1

    .line 247
    .end local v1           #wrapped:Lorg/apache/http/impl/client/RequestWrapper;
    .restart local p0
    :cond_0
    new-instance v1, Lorg/apache/http/impl/client/RequestWrapper;

    invoke-direct {v1, p0}, Lorg/apache/http/impl/client/RequestWrapper;-><init>(Lorg/apache/http/HttpRequest;)V
    :try_end_0
    .catch Lorg/apache/http/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v1       #wrapped:Lorg/apache/http/impl/client/RequestWrapper;
    goto :goto_0

    .line 254
    .end local v1           #wrapped:Lorg/apache/http/impl/client/RequestWrapper;
    .end local p0
    :catch_0
    move-exception v0

    .line 255
    .local v0, e:Lorg/apache/http/ProtocolException;
    new-instance v2, Lorg/apache/http/client/ClientProtocolException;

    invoke-direct {v2, v0}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/htc/util/http/HtcServiceHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 140
    return-void
.end method

.method public disableCurlLogging()V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/htc/util/http/HtcServiceHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->disableCurlLogging()V

    .line 336
    return-void
.end method

.method public enableCurlLogging(Ljava/lang/String;I)V
    .locals 1
    .parameter "name"
    .parameter "level"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/htc/util/http/HtcServiceHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0, p1, p2}, Landroid/net/http/AndroidHttpClient;->enableCurlLogging(Ljava/lang/String;I)V

    .line 329
    return-void
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1
    .parameter "target"
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 312
    .local p3, responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<+TT;>;"
    iget-object v0, p0, Lcom/htc/util/http/HtcServiceHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 1
    .parameter "target"
    .parameter "request"
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 318
    .local p3, responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<+TT;>;"
    iget-object v0, p0, Lcom/htc/util/http/HtcServiceHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 300
    .local p2, responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<+TT;>;"
    iget-object v0, p0, Lcom/htc/util/http/HtcServiceHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0, p1, p2}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 1
    .parameter "request"
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 306
    .local p2, responseHandler:Lorg/apache/http/client/ResponseHandler;,"Lorg/apache/http/client/ResponseHandler<+TT;>;"
    iget-object v0, p0, Lcom/htc/util/http/HtcServiceHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    .locals 1
    .parameter "target"
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Lcom/htc/util/http/HtcServiceHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0, p1, p2}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 1
    .parameter "target"
    .parameter "request"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    iget-object v0, p0, Lcom/htc/util/http/HtcServiceHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 1
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    const/4 v0, 0x0

    check-cast v0, Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {p0, p1, v0}, Lcom/htc/util/http/HtcServiceHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 10
    .parameter "request"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v5

    .line 206
    .local v5, uri:Ljava/net/URI;
    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, original:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/util/http/HtcServiceHttpClient;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v7}, Lcom/htc/util/http/HtcUrlRules;->getRules(Landroid/content/ContentResolver;)Lcom/htc/util/http/HtcUrlRules;

    move-result-object v4

    .line 208
    .local v4, rules:Lcom/htc/util/http/HtcUrlRules;
    invoke-virtual {v4, v1}, Lcom/htc/util/http/HtcUrlRules;->matchRule(Ljava/lang/String;)Lcom/htc/util/http/HtcUrlRules$Rule;

    move-result-object v3

    .line 209
    .local v3, rule:Lcom/htc/util/http/HtcUrlRules$Rule;
    invoke-virtual {v3, v1}, Lcom/htc/util/http/HtcUrlRules$Rule;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, rewritten:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 211
    const-string v7, "HtcServiceHttpClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Blocked by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/htc/util/http/HtcUrlRules$Rule;->mName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    new-instance v7, Lcom/htc/util/http/HtcServiceHttpClient$BlockedRequestException;

    invoke-direct {v7, v3}, Lcom/htc/util/http/HtcServiceHttpClient$BlockedRequestException;-><init>(Lcom/htc/util/http/HtcUrlRules$Rule;)V

    throw v7

    .line 213
    :cond_0
    if-ne v2, v1, :cond_1

    .line 214
    invoke-virtual {p0, p1, p2}, Lcom/htc/util/http/HtcServiceHttpClient;->executeWithoutRewriting(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 231
    :goto_0
    return-object v7

    .line 218
    :cond_1
    :try_start_0
    new-instance v5, Ljava/net/URI;

    .end local v5           #uri:Ljava/net/URI;
    invoke-direct {v5, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .restart local v5       #uri:Ljava/net/URI;
    invoke-static {p1}, Lcom/htc/util/http/HtcServiceHttpClient;->wrapRequest(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/impl/client/RequestWrapper;

    move-result-object v6

    .line 225
    .local v6, wrapper:Lorg/apache/http/impl/client/RequestWrapper;
    invoke-virtual {v6, v5}, Lorg/apache/http/impl/client/RequestWrapper;->setURI(Ljava/net/URI;)V

    .line 226
    move-object p1, v6

    .line 231
    invoke-virtual {p0, p1, p2}, Lcom/htc/util/http/HtcServiceHttpClient;->executeWithoutRewriting(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    goto :goto_0

    .line 219
    .end local v5           #uri:Ljava/net/URI;
    .end local v6           #wrapper:Lorg/apache/http/impl/client/RequestWrapper;
    :catch_0
    move-exception v0

    .line 220
    .local v0, e:Ljava/net/URISyntaxException;
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad URL from rule: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/htc/util/http/HtcUrlRules$Rule;->mName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method public executeWithoutRewriting(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 27
    .parameter "request"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    const-string v15, "Error"

    .line 147
    .local v15, code:Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    .line 154
    .local v19, start:J
    :try_start_0
    invoke-static {}, Lcom/google/android/net/NetworkStatsEntity;->shouldLogNetworkStats()Z

    move-result v17

    .line 156
    .local v17, logNetworkStats:Z
    if-eqz v17, :cond_2

    .line 157
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    .line 158
    .local v6, uid:I
    invoke-static {v6}, Landroid/os/NetStat;->getUidTxBytes(I)J

    move-result-wide v7

    .line 159
    .local v7, startTx:J
    invoke-static {v6}, Landroid/os/NetStat;->getUidRxBytes(I)J

    move-result-wide v9

    .line 161
    .local v9, startRx:J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/util/http/HtcServiceHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v5, v0, v1}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v18

    .line 162
    .local v18, response:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    .line 164
    if-nez v18, :cond_1

    const/4 v4, 0x0

    .line 165
    .local v4, origEntity:Lorg/apache/http/HttpEntity;
    :goto_0
    if-eqz v4, :cond_0

    .line 168
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 169
    .local v13, now:J
    sub-long v11, v13, v19

    .line 170
    .local v11, elapsed:J
    new-instance v3, Lcom/google/android/net/NetworkStatsEntity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/util/http/HtcServiceHttpClient;->mUserAgent:Ljava/lang/String;

    invoke-direct/range {v3 .. v14}, Lcom/google/android/net/NetworkStatsEntity;-><init>(Lorg/apache/http/HttpEntity;Ljava/lang/String;IJJJJ)V

    .line 173
    .local v3, entity:Lcom/google/android/net/NetworkStatsEntity;
    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 188
    .end local v3           #entity:Lcom/google/android/net/NetworkStatsEntity;
    .end local v4           #origEntity:Lorg/apache/http/HttpEntity;
    .end local v6           #uid:I
    .end local v7           #startTx:J
    .end local v9           #startRx:J
    .end local v11           #elapsed:J
    .end local v13           #now:J
    :cond_0
    :goto_1
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sub-long v11, v22, v19

    .line 189
    .restart local v11       #elapsed:J
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 190
    .local v21, values:Landroid/content/ContentValues;
    const-string v5, "tag"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v23, Landroid/provider/htcCheckin$Stats$Tag;->HTTP_STATUS:Landroid/provider/htcCheckin$Stats$Tag;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ":"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/http/HtcServiceHttpClient;->mUserAgent:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ":"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v5, "count"

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 194
    const-string v5, "sum"

    long-to-double v0, v11

    move-wide/from16 v22, v0

    const-wide v24, 0x408f400000000000L

    div-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/util/http/HtcServiceHttpClient;->mResolver:Landroid/content/ContentResolver;

    sget-object v22, Landroid/provider/htcCheckin$Stats;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 198
    .end local v11           #elapsed:J
    .end local v21           #values:Landroid/content/ContentValues;
    :goto_2
    return-object v18

    .line 164
    .restart local v6       #uid:I
    .restart local v7       #startTx:J
    .restart local v9       #startRx:J
    :cond_1
    :try_start_2
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    goto/16 :goto_0

    .line 176
    .end local v6           #uid:I
    .end local v7           #startTx:J
    .end local v9           #startRx:J
    .end local v18           #response:Lorg/apache/http/HttpResponse;
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/util/http/HtcServiceHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v5, v0, v1}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v18

    .line 177
    .restart local v18       #response:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v15

    goto/16 :goto_1

    .line 196
    :catch_0
    move-exception v16

    .line 197
    .local v16, e:Ljava/lang/Exception;
    const-string v5, "HtcServiceHttpClient"

    const-string v22, "Error recording stats"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-static {v5, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 181
    .end local v16           #e:Ljava/lang/Exception;
    .end local v17           #logNetworkStats:Z
    .end local v18           #response:Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v16

    .line 182
    .local v16, e:Ljava/io/IOException;
    :try_start_3
    const-string v15, "IOException"

    .line 183
    throw v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 187
    .end local v16           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 188
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sub-long v11, v22, v19

    .line 189
    .restart local v11       #elapsed:J
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 190
    .restart local v21       #values:Landroid/content/ContentValues;
    const-string v22, "tag"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v24, Landroid/provider/htcCheckin$Stats$Tag;->HTTP_STATUS:Landroid/provider/htcCheckin$Stats$Tag;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ":"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/http/HtcServiceHttpClient;->mUserAgent:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ":"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v22, "count"

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 194
    const-string v22, "sum"

    long-to-double v0, v11

    move-wide/from16 v23, v0

    const-wide v25, 0x408f400000000000L

    div-double v23, v23, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/http/HtcServiceHttpClient;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v22, v0

    sget-object v23, Landroid/provider/htcCheckin$Stats;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 198
    .end local v11           #elapsed:J
    .end local v21           #values:Landroid/content/ContentValues;
    :goto_3
    throw v5

    .line 196
    :catch_2
    move-exception v16

    .line 197
    .local v16, e:Ljava/lang/Exception;
    const-string v22, "HtcServiceHttpClient"

    const-string v23, "Error recording stats"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/htc/util/http/HtcServiceHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Lorg/apache/http/params/HttpParams;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/htc/util/http/HtcServiceHttpClient;->mClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    return-object v0
.end method
