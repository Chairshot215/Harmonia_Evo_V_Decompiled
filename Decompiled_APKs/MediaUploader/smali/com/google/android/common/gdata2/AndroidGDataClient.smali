.class public Lcom/google/android/common/gdata2/AndroidGDataClient;
.super Ljava/lang/Object;
.source "AndroidGDataClient.java"

# interfaces
.implements Lcom/google/wireless/gdata2/client/GDataClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/common/gdata2/AndroidGDataClient$MediaPutRequestCreator;,
        Lcom/google/android/common/gdata2/AndroidGDataClient$PostRequestCreator;,
        Lcom/google/android/common/gdata2/AndroidGDataClient$GetRequestCreator;,
        Lcom/google/android/common/gdata2/AndroidGDataClient$HttpRequestCreator;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static DEFAULT_GDATA_VERSION:Ljava/lang/String; = null

.field private static final DEFAULT_USER_AGENT_APP_VERSION:Ljava/lang/String; = "Android-GData/1.2"

.field private static final LOCAL_LOGV:Z = false

.field private static final MAX_REDIRECTS:I = 0xa

.field private static final TAG:Ljava/lang/String; = "GDataClient"

.field private static final X_HTTP_METHOD_OVERRIDE:Ljava/lang/String; = "X-HTTP-Method-Override"


# instance fields
.field private mGDataVersion:Ljava/lang/String;

.field private final mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-string v0, "2.0"

    sput-object v0, Lcom/google/android/common/gdata2/AndroidGDataClient;->DEFAULT_GDATA_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 135
    const-string v0, "Android-GData/1.2"

    invoke-direct {p0, p1, v0}, Lcom/google/android/common/gdata2/AndroidGDataClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 149
    sget-object v0, Lcom/google/android/common/gdata2/AndroidGDataClient;->DEFAULT_GDATA_VERSION:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/common/gdata2/AndroidGDataClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Lcom/google/android/common/http/GoogleHttpClient;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/common/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/common/gdata2/AndroidGDataClient;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    .line 168
    iget-object v0, p0, Lcom/google/android/common/gdata2/AndroidGDataClient;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    const-string v1, "GDataClient"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/common/http/GoogleHttpClient;->enableCurlLogging(Ljava/lang/String;I)V

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/common/gdata2/AndroidGDataClient;->mResolver:Landroid/content/ContentResolver;

    .line 170
    iput-object p3, p0, Lcom/google/android/common/gdata2/AndroidGDataClient;->mGDataVersion:Ljava/lang/String;

    .line 171
    return-void
.end method

.method private createAndExecuteMethod(Lcom/google/android/common/gdata2/AndroidGDataClient$HttpRequestCreator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    const/4 v3, 0x0

    .line 213
    const/16 v4, 0x1f4

    .line 214
    const/16 v5, 0xa

    .line 218
    :try_start_0
    new-instance v6, Ljava/net/URI;

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    const-wide/16 v7, 0x0

    move-object v15, v6

    move-object v6, v3

    move-object v3, v15

    move/from16 v16, v4

    move v4, v5

    move/from16 v5, v16

    .line 231
    :goto_0
    if-lez v4, :cond_17

    .line 233
    move-object/from16 v0, p1

    move-object v1, v3

    invoke-interface {v0, v1}, Lcom/google/android/common/gdata2/AndroidGDataClient$HttpRequestCreator;->createRequest(Ljava/net/URI;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v3

    .line 234
    invoke-static {v3}, Landroid/net/http/AndroidHttpClient;->modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V

    .line 238
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 239
    const-string v5, "Authorization"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GoogleLogin auth="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gdata2/AndroidGDataClient;->mGDataVersion:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 245
    const-string v5, "GData-Version"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gdata2/AndroidGDataClient;->mGDataVersion:Ljava/lang/String;

    move-object v6, v0

    invoke-interface {v3, v5, v6}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_1
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 250
    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v5

    .line 251
    const-string v6, "X-HTTP-Method-Override"

    invoke-interface {v3, v6}, Lorg/apache/http/client/methods/HttpUriRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v6

    .line 252
    if-eqz v6, :cond_2

    .line 253
    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 255
    :cond_2
    const-string v6, "GET"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 258
    const-string v5, "If-None-Match"

    move-object v0, v3

    move-object v1, v5

    move-object/from16 v2, p4

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_3
    :goto_1
    const-string v5, "GDataClient"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 276
    const-string v5, "GDataClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Executing "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gdata2/AndroidGDataClient;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    move-object v5, v0

    invoke-virtual {v5, v3}, Lcom/google/android/common/http/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 288
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    .line 289
    if-nez v5, :cond_7

    .line 290
    const-string v3, "GDataClient"

    const-string v4, "StatusLine is null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "StatusLine is null -- should not happen."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 219
    :catch_0
    move-exception v3

    .line 220
    const-string v4, "GDataClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to parse "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " as URI."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to parse "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " as URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 259
    :cond_5
    const-string v6, "DELETE"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "PUT"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 263
    :cond_6
    const-string v5, "W/"

    move-object/from16 v0, p4

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 264
    const-string v5, "If-Match"

    move-object v0, v3

    move-object v1, v5

    move-object/from16 v2, p4

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 283
    :catch_1
    move-exception v3

    .line 284
    const-string v4, "GDataClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to execute HTTP request."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    throw v3

    .line 294
    :cond_7
    const-string v6, "GDataClient"

    const/4 v9, 0x3

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 295
    const-string v6, "GDataClient"

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v6

    array-length v9, v6

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_8

    aget-object v11, v6, v10

    .line 297
    const-string v12, "GDataClient"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v11}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v11}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 300
    :cond_8
    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 302
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 304
    const/16 v9, 0xc8

    if-lt v5, v9, :cond_a

    const/16 v9, 0x12c

    if-ge v5, v9, :cond_a

    if-eqz v6, :cond_a

    .line 305
    invoke-static {v6}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v3

    .line 306
    const-string v4, "GDataClient"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 307
    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/common/gdata2/AndroidGDataClient;->logInputStreamContents(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v3

    .line 309
    :cond_9
    return-object v3

    .line 315
    :cond_a
    const/16 v9, 0x12e

    if-ne v5, v9, :cond_10

    .line 317
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 318
    const-string v6, "Location"

    invoke-interface {v3, v6}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v6

    .line 319
    if-nez v6, :cond_d

    .line 320
    const-string v4, "GDataClient"

    const/4 v6, 0x3

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 321
    const-string v4, "GDataClient"

    const-string v6, "Redirect requested but no Location specified."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v3

    move-wide v3, v7

    .line 369
    :goto_3
    const-string v7, "GDataClient"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 370
    const-string v7, "GDataClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " status code."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_b
    const/4 v7, 0x0

    .line 373
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 375
    if-eqz v6, :cond_16

    if-eqz v8, :cond_16

    .line 376
    :try_start_2
    invoke-static {v8}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v6

    .line 377
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 378
    const/16 v9, 0x2000

    new-array v9, v9, [B

    .line 380
    :goto_4
    invoke-virtual {v6, v9}, Ljava/io/InputStream;->read([B)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_11

    .line 381
    const/4 v11, 0x0

    invoke-virtual {v7, v9, v11, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 390
    :catchall_0
    move-exception v3

    if-eqz v8, :cond_c

    .line 391
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_c
    throw v3

    .line 326
    :cond_d
    const-string v9, "GDataClient"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 327
    const-string v9, "GDataClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Following redirect to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_e
    :try_start_3
    new-instance v9, Ljava/net/URI;

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_2

    .line 339
    add-int/lit8 v4, v4, -0x1

    move-object v6, v3

    move-object v3, v9

    .line 367
    goto/16 :goto_0

    .line 331
    :catch_2
    move-exception v4

    .line 332
    const-string v9, "GDataClient"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 333
    const-string v3, "GDataClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to parse "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " as URI."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 334
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to parse "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " as URI."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_f
    move-object v6, v3

    move-wide v3, v7

    .line 337
    goto/16 :goto_3

    .line 340
    :cond_10
    const/16 v4, 0x1f7

    if-ne v5, v4, :cond_18

    .line 341
    const-string v4, "Retry-After"

    invoke-interface {v3, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    .line 342
    if-eqz v4, :cond_18

    .line 346
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 350
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-wide v6

    add-long/2addr v6, v9

    :goto_5
    move-wide v15, v6

    move-object v6, v3

    move-wide v3, v15

    .line 362
    goto/16 :goto_3

    .line 352
    :catch_3
    move-exception v6

    .line 355
    :try_start_5
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 356
    invoke-virtual {v6, v4}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    .line 357
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long v6, v9, v11
    :try_end_5
    .catch Landroid/util/TimeFormatException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    .line 358
    :catch_4
    move-exception v6

    .line 359
    const-string v9, "GDataClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to parse "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v6, v7

    goto :goto_5

    .line 384
    :cond_11
    :try_start_6
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    .line 385
    const-string v7, "GDataClient"

    const/4 v9, 0x2

    invoke-static {v7, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 386
    const-string v7, "GDataClient"

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 390
    :cond_12
    :goto_6
    if-eqz v8, :cond_13

    .line 391
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 394
    :cond_13
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " status code"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 395
    if-eqz v6, :cond_15

    .line 396
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 398
    :goto_7
    new-instance v7, Lcom/google/wireless/gdata2/client/HttpException;

    const/4 v8, 0x0

    invoke-direct {v7, v6, v5, v8}, Lcom/google/wireless/gdata2/client/HttpException;-><init>(Ljava/lang/String;ILjava/io/InputStream;)V

    .line 400
    const/16 v6, 0x1f7

    if-ne v5, v6, :cond_14

    .line 401
    invoke-virtual {v7, v3, v4}, Lcom/google/wireless/gdata2/client/HttpException;->setRetryAfter(J)V

    .line 403
    :cond_14
    throw v7

    :cond_15
    move-object v6, v7

    goto :goto_7

    :cond_16
    move-object v6, v7

    goto :goto_6

    :cond_17
    move-wide v3, v7

    goto/16 :goto_3

    :cond_18
    move-object v6, v3

    move-wide v3, v7

    goto/16 :goto_3
.end method

.method private createEntityForEntry(Lcom/google/wireless/gdata2/serializer/GDataSerializer;I)Lorg/apache/http/HttpEntity;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 559
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 561
    :try_start_0
    invoke-interface {p1, v0, p2}, Lcom/google/wireless/gdata2/serializer/GDataSerializer;->serialize(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/wireless/gdata2/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 570
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 572
    if-eqz v0, :cond_0

    const-string v1, "GDataClient"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 574
    :try_start_1
    const-string v1, "GDataClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Serialized entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    .line 583
    :cond_0
    iget-object v1, p0, Lcom/google/android/common/gdata2/AndroidGDataClient;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Landroid/net/http/AndroidHttpClient;->getCompressedEntity([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v0

    .line 584
    invoke-interface {p1}, Lcom/google/wireless/gdata2/serializer/GDataSerializer;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 585
    return-object v0

    .line 562
    :catch_0
    move-exception v0

    .line 563
    const-string v1, "GDataClient"

    const-string v2, "Unable to serialize entry."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 564
    throw v0

    .line 565
    :catch_1
    move-exception v0

    .line 566
    const-string v1, "GDataClient"

    const-string v2, "Unable to serialize entry."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 567
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to serialize entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/wireless/gdata2/parser/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 575
    :catch_2
    move-exception v0

    .line 577
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "UTF-8 should be supported!"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private logInputStreamContents(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/16 v2, 0x4000

    .line 433
    if-nez p1, :cond_0

    move-object v0, p1

    .line 458
    :goto_0
    return-object v0

    .line 445
    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 446
    invoke-virtual {v0, v2}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 449
    new-array v1, v2, [B

    move v3, v2

    move v2, v6

    .line 450
    :goto_1
    if-lez v3, :cond_1

    .line 451
    invoke-virtual {v0, v1, v2, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    .line 452
    if-gtz v4, :cond_2

    .line 456
    :cond_1
    const-string v3, "GDataClient"

    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v1, v6, v2, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    goto :goto_0

    .line 453
    :cond_2
    sub-int/2addr v3, v4

    .line 454
    add-int/2addr v2, v4

    .line 455
    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/common/gdata2/AndroidGDataClient;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    invoke-virtual {v0}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    .line 176
    return-void
.end method

.method public createEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata2/serializer/GDataSerializer;)Ljava/io/InputStream;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 481
    const/4 v0, 0x1

    invoke-direct {p0, p4, v0}, Lcom/google/android/common/gdata2/AndroidGDataClient;->createEntityForEntry(Lcom/google/wireless/gdata2/serializer/GDataSerializer;I)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 482
    new-instance v1, Lcom/google/android/common/gdata2/AndroidGDataClient$PostRequestCreator;

    invoke-direct {v1, v4, v0}, Lcom/google/android/common/gdata2/AndroidGDataClient$PostRequestCreator;-><init>(Ljava/lang/String;Lorg/apache/http/HttpEntity;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/common/gdata2/AndroidGDataClient;->createAndExecuteMethod(Lcom/google/android/common/gdata2/AndroidGDataClient$HttpRequestCreator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 488
    if-eqz v0, :cond_0

    .line 489
    return-object v0

    .line 491
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to create entry."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createQueryParams()Lcom/google/wireless/gdata2/client/QueryParams;
    .locals 1

    .prologue
    .line 201
    new-instance v0, Lcom/google/android/common/gdata2/QueryParamsImpl;

    invoke-direct {v0}, Lcom/google/android/common/gdata2/QueryParamsImpl;-><init>()V

    return-object v0
.end method

.method public deleteEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 522
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "you must specify an non-empty edit url"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 526
    :cond_0
    new-instance v1, Lcom/google/android/common/gdata2/AndroidGDataClient$PostRequestCreator;

    const-string v0, "DELETE"

    invoke-direct {v1, v0, v5}, Lcom/google/android/common/gdata2/AndroidGDataClient$PostRequestCreator;-><init>(Ljava/lang/String;Lorg/apache/http/HttpEntity;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/common/gdata2/AndroidGDataClient;->createAndExecuteMethod(Lcom/google/android/common/gdata2/AndroidGDataClient$HttpRequestCreator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 533
    if-nez v0, :cond_1

    .line 534
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to delete entry."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 537
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    :goto_0
    return-void

    .line 538
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public encodeUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 185
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 193
    :goto_0
    return-object v0

    .line 186
    :catch_0
    move-exception v0

    .line 188
    const-string v1, "JakartaGDataClient"

    const-string v2, "UTF-8 not supported -- should not happen.  Using default encoding."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFeedAsStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 416
    new-instance v1, Lcom/google/android/common/gdata2/AndroidGDataClient$GetRequestCreator;

    invoke-direct {v1}, Lcom/google/android/common/gdata2/AndroidGDataClient$GetRequestCreator;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/common/gdata2/AndroidGDataClient;->createAndExecuteMethod(Lcom/google/android/common/gdata2/AndroidGDataClient$HttpRequestCreator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 418
    if-eqz v0, :cond_0

    .line 419
    return-object v0

    .line 421
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to access feed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMediaEntryAsStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 464
    new-instance v1, Lcom/google/android/common/gdata2/AndroidGDataClient$GetRequestCreator;

    invoke-direct {v1}, Lcom/google/android/common/gdata2/AndroidGDataClient$GetRequestCreator;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/common/gdata2/AndroidGDataClient;->createAndExecuteMethod(Lcom/google/android/common/gdata2/AndroidGDataClient$HttpRequestCreator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 466
    if-eqz v0, :cond_0

    .line 467
    return-object v0

    .line 469
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to access media entry."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public submitBatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata2/serializer/GDataSerializer;)Ljava/io/InputStream;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 610
    const/4 v0, 0x3

    invoke-direct {p0, p4, v0}, Lcom/google/android/common/gdata2/AndroidGDataClient;->createEntityForEntry(Lcom/google/wireless/gdata2/serializer/GDataSerializer;I)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 611
    new-instance v1, Lcom/google/android/common/gdata2/AndroidGDataClient$PostRequestCreator;

    const-string v2, "POST"

    invoke-direct {v1, v2, v0}, Lcom/google/android/common/gdata2/AndroidGDataClient$PostRequestCreator;-><init>(Ljava/lang/String;Lorg/apache/http/HttpEntity;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/common/gdata2/AndroidGDataClient;->createAndExecuteMethod(Lcom/google/android/common/gdata2/AndroidGDataClient$HttpRequestCreator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 617
    if-eqz v0, :cond_0

    .line 618
    return-object v0

    .line 620
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to process batch request."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata2/serializer/GDataSerializer;)Ljava/io/InputStream;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 503
    const/4 v0, 0x2

    invoke-direct {p0, p5, v0}, Lcom/google/android/common/gdata2/AndroidGDataClient;->createEntityForEntry(Lcom/google/wireless/gdata2/serializer/GDataSerializer;I)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 504
    invoke-interface {p5}, Lcom/google/wireless/gdata2/serializer/GDataSerializer;->getSupportsPartial()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PATCH"

    move-object v2, v1

    .line 505
    :goto_0
    new-instance v1, Lcom/google/android/common/gdata2/AndroidGDataClient$PostRequestCreator;

    invoke-direct {v1, v2, v0}, Lcom/google/android/common/gdata2/AndroidGDataClient$PostRequestCreator;-><init>(Ljava/lang/String;Lorg/apache/http/HttpEntity;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/common/gdata2/AndroidGDataClient;->createAndExecuteMethod(Lcom/google/android/common/gdata2/AndroidGDataClient$HttpRequestCreator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 511
    if-eqz v0, :cond_1

    .line 512
    return-object v0

    .line 504
    :cond_0
    const-string v1, "PUT"

    move-object v2, v1

    goto :goto_0

    .line 514
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to update entry."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateMediaEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 546
    new-instance v1, Lcom/google/android/common/gdata2/AndroidGDataClient$MediaPutRequestCreator;

    invoke-direct {v1, p5, p6}, Lcom/google/android/common/gdata2/AndroidGDataClient$MediaPutRequestCreator;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/common/gdata2/AndroidGDataClient;->createAndExecuteMethod(Lcom/google/android/common/gdata2/AndroidGDataClient$HttpRequestCreator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 552
    if-eqz v0, :cond_0

    .line 553
    return-object v0

    .line 555
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to write media entry."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
