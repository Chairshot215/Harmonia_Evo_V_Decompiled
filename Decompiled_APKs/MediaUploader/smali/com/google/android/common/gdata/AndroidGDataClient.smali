.class public Lcom/google/android/common/gdata/AndroidGDataClient;
.super Ljava/lang/Object;
.source "AndroidGDataClient.java"

# interfaces
.implements Lcom/google/wireless/gdata/client/GDataClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/common/gdata/AndroidGDataClient$MediaPutRequestCreator;,
        Lcom/google/android/common/gdata/AndroidGDataClient$PostRequestCreator;,
        Lcom/google/android/common/gdata/AndroidGDataClient$GetRequestCreator;,
        Lcom/google/android/common/gdata/AndroidGDataClient$HttpRequestCreator;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_USER_AGENT_APP_VERSION:Ljava/lang/String; = "Android-GData/1.1"

.field private static final LOCAL_LOGV:Z = false

.field private static final MAX_REDIRECTS:I = 0xa

.field private static final TAG:Ljava/lang/String; = "GDataClient"

.field private static final X_HTTP_METHOD_OVERRIDE:Ljava/lang/String; = "X-HTTP-Method-Override"


# instance fields
.field private final mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 130
    const-string v0, "Android-GData/1.1"

    invoke-direct {p0, p1, v0}, Lcom/google/android/common/gdata/AndroidGDataClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v0, Lcom/google/android/common/http/GoogleHttpClient;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/common/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/common/gdata/AndroidGDataClient;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    .line 146
    iget-object v0, p0, Lcom/google/android/common/gdata/AndroidGDataClient;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    const-string v1, "GDataClient"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/common/http/GoogleHttpClient;->enableCurlLogging(Ljava/lang/String;I)V

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/common/gdata/AndroidGDataClient;->mResolver:Landroid/content/ContentResolver;

    .line 148
    return-void
.end method

.method private createAndExecuteMethod(Lcom/google/android/common/gdata/AndroidGDataClient$HttpRequestCreator;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 12
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/client/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    const/4 v0, 0x0

    .line 187
    const/16 v1, 0x1f4

    .line 188
    const/16 v2, 0xa

    .line 192
    :try_start_0
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v10, v3

    move-object v3, v0

    move-object v0, v10

    move v11, v1

    move v1, v2

    move v2, v11

    .line 202
    :goto_0
    if-lez v1, :cond_10

    .line 204
    invoke-interface {p1, v0}, Lcom/google/android/common/gdata/AndroidGDataClient$HttpRequestCreator;->createRequest(Ljava/net/URI;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    .line 205
    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V

    .line 209
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 210
    const-string v2, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GoogleLogin auth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_0
    const-string v2, "GDataClient"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 219
    const-string v2, "GDataClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Executing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/android/common/gdata/AndroidGDataClient;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    invoke-virtual {v2, v0}, Lcom/google/android/common/http/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 231
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    .line 232
    if-nez v2, :cond_2

    .line 233
    const-string v0, "GDataClient"

    const-string v1, "StatusLine is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "StatusLine is null -- should not happen."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    const-string v1, "GDataClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as URI."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 226
    :catch_1
    move-exception v0

    .line 227
    const-string v1, "GDataClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to execute HTTP request."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    throw v0

    .line 237
    :cond_2
    const-string v3, "GDataClient"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 238
    const-string v3, "GDataClient"

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 240
    const-string v7, "GDataClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 243
    :cond_3
    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 245
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 247
    const/16 v4, 0xc8

    if-lt v2, v4, :cond_5

    const/16 v4, 0x12c

    if-ge v2, v4, :cond_5

    if-eqz v3, :cond_5

    .line 248
    invoke-static {v3}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v0

    .line 249
    const-string v1, "GDataClient"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 250
    invoke-direct {p0, v0}, Lcom/google/android/common/gdata/AndroidGDataClient;->logInputStreamContents(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    .line 252
    :cond_4
    return-object v0

    .line 258
    :cond_5
    const/16 v4, 0x12e

    if-ne v2, v4, :cond_11

    .line 260
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 261
    const-string v3, "Location"

    invoke-interface {v0, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    .line 262
    if-nez v3, :cond_8

    .line 263
    const-string v1, "GDataClient"

    const/4 v3, 0x3

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 264
    const-string v1, "GDataClient"

    const-string v3, "Redirect requested but no Location specified."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v0

    move v0, v2

    .line 288
    :goto_2
    const-string v2, "GDataClient"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 289
    const-string v2, "GDataClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " status code."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_6
    const/4 v2, 0x0

    .line 292
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 294
    if-eqz v1, :cond_f

    if-eqz v3, :cond_f

    .line 295
    :try_start_2
    invoke-static {v3}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v1

    .line 296
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 297
    const/16 v4, 0x2000

    new-array v4, v4, [B

    .line 299
    :goto_3
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_b

    .line 300
    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 309
    :catchall_0
    move-exception v0

    if-eqz v3, :cond_7

    .line 310
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_7
    throw v0

    .line 269
    :cond_8
    const-string v4, "GDataClient"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 270
    const-string v4, "GDataClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Following redirect to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_9
    :try_start_3
    new-instance v4, Ljava/net/URI;

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_2

    .line 282
    add-int/lit8 v1, v1, -0x1

    move-object v3, v0

    move-object v0, v4

    .line 286
    goto/16 :goto_0

    .line 274
    :catch_2
    move-exception v1

    .line 275
    const-string v4, "GDataClient"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 276
    const-string v0, "GDataClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to parse "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " as URI."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as URI."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move-object v1, v0

    move v0, v2

    .line 280
    goto/16 :goto_2

    .line 303
    :cond_b
    :try_start_4
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 304
    const-string v2, "GDataClient"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 305
    const-string v2, "GDataClient"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 309
    :cond_c
    :goto_4
    if-eqz v3, :cond_d

    .line 310
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 313
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " status code"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 314
    if-eqz v1, :cond_e

    .line 315
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 317
    :goto_5
    new-instance v2, Lcom/google/wireless/gdata/client/HttpException;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lcom/google/wireless/gdata/client/HttpException;-><init>(Ljava/lang/String;ILjava/io/InputStream;)V

    throw v2

    :cond_e
    move-object v1, v2

    goto :goto_5

    :cond_f
    move-object v1, v2

    goto :goto_4

    :cond_10
    move v0, v2

    move-object v1, v3

    goto/16 :goto_2

    :cond_11
    move-object v1, v0

    move v0, v2

    goto/16 :goto_2
.end method

.method private createEntityForEntry(Lcom/google/wireless/gdata/serializer/GDataSerializer;I)Lorg/apache/http/HttpEntity;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 458
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 460
    :try_start_0
    invoke-interface {p1, v0, p2}, Lcom/google/wireless/gdata/serializer/GDataSerializer;->serialize(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 469
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 471
    if-eqz v0, :cond_0

    const-string v1, "GDataClient"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 473
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

    .line 482
    :cond_0
    iget-object v1, p0, Lcom/google/android/common/gdata/AndroidGDataClient;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Landroid/net/http/AndroidHttpClient;->getCompressedEntity([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v0

    .line 483
    invoke-interface {p1}, Lcom/google/wireless/gdata/serializer/GDataSerializer;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 484
    return-object v0

    .line 461
    :catch_0
    move-exception v0

    .line 462
    const-string v1, "GDataClient"

    const-string v2, "Unable to serialize entry."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 463
    throw v0

    .line 464
    :catch_1
    move-exception v0

    .line 465
    const-string v1, "GDataClient"

    const-string v2, "Unable to serialize entry."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 466
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to serialize entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/wireless/gdata/parser/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 474
    :catch_2
    move-exception v0

    .line 476
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

    .line 344
    if-nez p1, :cond_0

    move-object v0, p1

    .line 369
    :goto_0
    return-object v0

    .line 356
    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 357
    invoke-virtual {v0, v2}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 360
    new-array v1, v2, [B

    move v3, v2

    move v2, v6

    .line 361
    :goto_1
    if-lez v3, :cond_1

    .line 362
    invoke-virtual {v0, v1, v2, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    .line 363
    if-gtz v4, :cond_2

    .line 367
    :cond_1
    const-string v3, "GDataClient"

    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v1, v6, v2, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    goto :goto_0

    .line 364
    :cond_2
    sub-int/2addr v3, v4

    .line 365
    add-int/2addr v2, v4

    .line 366
    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/common/gdata/AndroidGDataClient;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    invoke-virtual {v0}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    .line 152
    return-void
.end method

.method public createEntry(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata/serializer/GDataSerializer;)Ljava/io/InputStream;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/client/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 391
    const/4 v0, 0x1

    invoke-direct {p0, p3, v0}, Lcom/google/android/common/gdata/AndroidGDataClient;->createEntityForEntry(Lcom/google/wireless/gdata/serializer/GDataSerializer;I)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 392
    new-instance v1, Lcom/google/android/common/gdata/AndroidGDataClient$PostRequestCreator;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/google/android/common/gdata/AndroidGDataClient$PostRequestCreator;-><init>(Ljava/lang/String;Lorg/apache/http/HttpEntity;)V

    invoke-direct {p0, v1, p1, p2}, Lcom/google/android/common/gdata/AndroidGDataClient;->createAndExecuteMethod(Lcom/google/android/common/gdata/AndroidGDataClient$HttpRequestCreator;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 396
    if-eqz v0, :cond_0

    .line 397
    return-object v0

    .line 399
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to create entry."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createQueryParams()Lcom/google/wireless/gdata/client/QueryParams;
    .locals 1

    .prologue
    .line 177
    new-instance v0, Lcom/google/android/common/gdata/QueryParamsImpl;

    invoke-direct {v0}, Lcom/google/android/common/gdata/QueryParamsImpl;-><init>()V

    return-object v0
.end method

.method public deleteEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/client/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 425
    invoke-static {p1}, Lcom/google/wireless/gdata/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "you must specify an non-empty edit url"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :cond_0
    new-instance v0, Lcom/google/android/common/gdata/AndroidGDataClient$PostRequestCreator;

    const-string v1, "DELETE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/common/gdata/AndroidGDataClient$PostRequestCreator;-><init>(Ljava/lang/String;Lorg/apache/http/HttpEntity;)V

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/common/gdata/AndroidGDataClient;->createAndExecuteMethod(Lcom/google/android/common/gdata/AndroidGDataClient$HttpRequestCreator;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 434
    if-nez v0, :cond_1

    .line 435
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to delete entry."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    :goto_0
    return-void

    .line 439
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public encodeUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 161
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 169
    :goto_0
    return-object v0

    .line 162
    :catch_0
    move-exception v0

    .line 164
    const-string v1, "JakartaGDataClient"

    const-string v2, "UTF-8 not supported -- should not happen.  Using default encoding."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFeedAsStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/client/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    new-instance v0, Lcom/google/android/common/gdata/AndroidGDataClient$GetRequestCreator;

    invoke-direct {v0}, Lcom/google/android/common/gdata/AndroidGDataClient$GetRequestCreator;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/common/gdata/AndroidGDataClient;->createAndExecuteMethod(Lcom/google/android/common/gdata/AndroidGDataClient$HttpRequestCreator;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 329
    if-eqz v0, :cond_0

    .line 330
    return-object v0

    .line 332
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to access feed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMediaEntryAsStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/client/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 375
    new-instance v0, Lcom/google/android/common/gdata/AndroidGDataClient$GetRequestCreator;

    invoke-direct {v0}, Lcom/google/android/common/gdata/AndroidGDataClient$GetRequestCreator;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/common/gdata/AndroidGDataClient;->createAndExecuteMethod(Lcom/google/android/common/gdata/AndroidGDataClient$HttpRequestCreator;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 377
    if-eqz v0, :cond_0

    .line 378
    return-object v0

    .line 380
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to access media entry."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateEntry(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata/serializer/GDataSerializer;)Ljava/io/InputStream;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/client/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 409
    const/4 v0, 0x2

    invoke-direct {p0, p3, v0}, Lcom/google/android/common/gdata/AndroidGDataClient;->createEntityForEntry(Lcom/google/wireless/gdata/serializer/GDataSerializer;I)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 410
    new-instance v1, Lcom/google/android/common/gdata/AndroidGDataClient$PostRequestCreator;

    const-string v2, "PUT"

    invoke-direct {v1, v2, v0}, Lcom/google/android/common/gdata/AndroidGDataClient$PostRequestCreator;-><init>(Ljava/lang/String;Lorg/apache/http/HttpEntity;)V

    invoke-direct {p0, v1, p1, p2}, Lcom/google/android/common/gdata/AndroidGDataClient;->createAndExecuteMethod(Lcom/google/android/common/gdata/AndroidGDataClient$HttpRequestCreator;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 414
    if-eqz v0, :cond_0

    .line 415
    return-object v0

    .line 417
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to update entry."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateMediaEntry(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/client/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 447
    new-instance v0, Lcom/google/android/common/gdata/AndroidGDataClient$MediaPutRequestCreator;

    invoke-direct {v0, p3, p4}, Lcom/google/android/common/gdata/AndroidGDataClient$MediaPutRequestCreator;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/common/gdata/AndroidGDataClient;->createAndExecuteMethod(Lcom/google/android/common/gdata/AndroidGDataClient$HttpRequestCreator;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 451
    if-eqz v0, :cond_0

    .line 452
    return-object v0

    .line 454
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to write media entry."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
