.class public Lcom/google/android/common/gdata2/AndroidGDataClient;
.super Ljava/lang/Object;
.source "AndroidGDataClient.java"

# interfaces
.implements Lcom/google/wireless/gdata2/client/GDataClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/common/gdata2/AndroidGDataClient$PostRequestCreator;,
        Lcom/google/android/common/gdata2/AndroidGDataClient$GetRequestCreator;,
        Lcom/google/android/common/gdata2/AndroidGDataClient$HttpRequestCreator;
    }
.end annotation


# static fields
.field private static DEFAULT_GDATA_VERSION:Ljava/lang/String;


# instance fields
.field private mGDataVersion:Ljava/lang/String;

.field private final mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "2.0"

    sput-object v0, Lcom/google/android/common/gdata2/AndroidGDataClient;->DEFAULT_GDATA_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "appAndVersion"
    .parameter "gdataVersion"

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

.method private createEntityForEntry(Lcom/google/wireless/gdata2/serializer/GDataSerializer;I)Lorg/apache/http/HttpEntity;
    .locals 9
    .parameter "entry"
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 559
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 561
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-interface {p1, v0, p2}, Lcom/google/wireless/gdata2/serializer/GDataSerializer;->serialize(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 569
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 571
    .local v3, entryBytes:[B
    if-eqz v3, :cond_0

    const-string v5, "GDataClient"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 573
    :try_start_1
    const-string v5, "GDataClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Serialized entry: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v7, v3, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    .line 580
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/google/android/common/gdata2/AndroidGDataClient;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v3, v5}, Landroid/net/http/AndroidHttpClient;->getCompressedEntity([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v2

    .line 581
    .local v2, entity:Lorg/apache/http/entity/AbstractHttpEntity;
    invoke-interface {p1}, Lcom/google/wireless/gdata2/serializer/GDataSerializer;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 582
    return-object v2

    .line 562
    .end local v2           #entity:Lorg/apache/http/entity/AbstractHttpEntity;
    .end local v3           #entryBytes:[B
    :catch_0
    move-exception v4

    .line 563
    .local v4, ioe:Ljava/io/IOException;
    const-string v5, "GDataClient"

    const-string v6, "Unable to serialize entry."

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 564
    throw v4

    .line 565
    .end local v4           #ioe:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 566
    .local v1, e:Ljava/lang/IllegalArgumentException;
    new-instance v5, Lcom/google/wireless/gdata2/parser/ParseException;

    const-string v6, "Unable to serialize entry: "

    invoke-direct {v5, v6, v1}, Lcom/google/wireless/gdata2/parser/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 574
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v3       #entryBytes:[B
    :catch_2
    move-exception v5

    goto :goto_0
.end method

.method private logInputStreamContents(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 10
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x4000

    .line 432
    if-nez p1, :cond_0

    .line 457
    .end local p1
    :goto_0
    return-object p1

    .line 443
    .restart local p1
    :cond_0
    const/16 v2, 0x4000

    .line 444
    .local v2, bufferSize:I
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 445
    .local v0, bin:Ljava/io/BufferedInputStream;
    invoke-virtual {v0, v6}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 446
    const/16 v5, 0x4000

    .line 447
    .local v5, wanted:I
    const/4 v4, 0x0

    .line 448
    .local v4, totalReceived:I
    new-array v1, v5, [B

    .line 449
    .local v1, buf:[B
    :goto_1
    if-lez v5, :cond_1

    .line 450
    invoke-virtual {v0, v1, v4, v5}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    .line 451
    .local v3, got:I
    if-gtz v3, :cond_2

    .line 455
    .end local v3           #got:I
    :cond_1
    const-string v6, "GDataClient"

    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "UTF-8"

    invoke-direct {v7, v1, v8, v4, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    move-object p1, v0

    .line 457
    goto :goto_0

    .line 452
    .restart local v3       #got:I
    :cond_2
    sub-int/2addr v5, v3

    .line 453
    add-int/2addr v4, v3

    .line 454
    goto :goto_1
.end method


# virtual methods
.method protected createAndExecuteMethod(Lcom/google/android/common/gdata2/AndroidGDataClient$HttpRequestCreator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 38
    .parameter "creator"
    .parameter "uriString"
    .parameter "authToken"
    .parameter "eTag"
    .parameter "protocolVersion"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    const/16 v24, 0x0

    .line 213
    .local v24, response:Lorg/apache/http/HttpResponse;
    const/16 v29, 0x1f4

    .line 214
    .local v29, status:I
    const/16 v22, 0xa

    .line 218
    .local v22, redirectsLeft:I
    :try_start_0
    new-instance v32, Ljava/net/URI;

    move-object/from16 v0, v32

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .local v32, uri:Ljava/net/URI;
    const-wide/16 v25, 0x0

    .line 231
    .local v25, retryAfter:J
    :goto_0
    if-lez v22, :cond_b

    .line 233
    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lcom/google/android/common/gdata2/AndroidGDataClient$HttpRequestCreator;->createRequest(Ljava/net/URI;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v23

    .line 234
    .local v23, request:Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-static/range {v23 .. v23}, Landroid/net/http/AndroidHttpClient;->modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V

    .line 238
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    if-nez v34, :cond_0

    .line 239
    const-string v34, "Authorization"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "GoogleLogin auth="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gdata2/AndroidGDataClient;->mGDataVersion:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    if-nez v34, :cond_1

    .line 245
    const-string v34, "GData-Version"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gdata2/AndroidGDataClient;->mGDataVersion:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_1
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    if-nez v34, :cond_3

    .line 250
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v20

    .line 251
    .local v20, method:Ljava/lang/String;
    const-string v34, "X-HTTP-Method-Override"

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v21

    .line 252
    .local v21, overrideMethodHeader:Lorg/apache/http/Header;
    if-eqz v21, :cond_2

    .line 253
    invoke-interface/range {v21 .. v21}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v20

    .line 255
    :cond_2
    const-string v34, "GET"

    move-object/from16 v0, v34

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_5

    .line 258
    const-string v34, "If-None-Match"

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    move-object/from16 v2, p4

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .end local v20           #method:Ljava/lang/String;
    .end local v21           #overrideMethodHeader:Lorg/apache/http/Header;
    :cond_3
    :goto_1
    const-string v34, "GDataClient"

    const/16 v35, 0x3

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v34

    if-eqz v34, :cond_4

    .line 277
    const-string v34, "GDataClient"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Executing "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-interface/range {v23 .. v23}, Lorg/apache/http/client/methods/HttpUriRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/gdata2/AndroidGDataClient;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/common/http/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v24

    .line 287
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v30

    .line 288
    .local v30, statusLine:Lorg/apache/http/StatusLine;
    if-nez v30, :cond_7

    .line 289
    const-string v34, "GDataClient"

    const-string v35, "StatusLine is null."

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    new-instance v34, Ljava/lang/NullPointerException;

    const-string v35, "StatusLine is null -- should not happen."

    invoke-direct/range {v34 .. v35}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v34

    .line 219
    .end local v23           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v25           #retryAfter:J
    .end local v30           #statusLine:Lorg/apache/http/StatusLine;
    .end local v32           #uri:Ljava/net/URI;
    :catch_0
    move-exception v33

    .line 220
    .local v33, use:Ljava/net/URISyntaxException;
    const-string v34, "GDataClient"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Unable to parse "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " as URI."

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    new-instance v34, Ljava/io/IOException;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Unable to parse "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " as URI: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v33 .. v33}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v34

    .line 259
    .end local v33           #use:Ljava/net/URISyntaxException;
    .restart local v20       #method:Ljava/lang/String;
    .restart local v21       #overrideMethodHeader:Lorg/apache/http/Header;
    .restart local v23       #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v25       #retryAfter:J
    .restart local v32       #uri:Ljava/net/URI;
    :cond_5
    const-string v34, "DELETE"

    move-object/from16 v0, v34

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_6

    const-string v34, "PUT"

    move-object/from16 v0, v34

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_6

    const-string v34, "PATCH"

    move-object/from16 v0, v34

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_3

    .line 264
    :cond_6
    const-string v34, "W/"

    move-object/from16 v0, p4

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_3

    .line 265
    const-string v34, "If-Match"

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    move-object/from16 v2, p4

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 282
    .end local v20           #method:Ljava/lang/String;
    .end local v21           #overrideMethodHeader:Lorg/apache/http/Header;
    :catch_1
    move-exception v17

    .line 283
    .local v17, ioe:Ljava/io/IOException;
    const-string v34, "GDataClient"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Unable to execute HTTP request."

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    throw v17

    .line 293
    .end local v17           #ioe:Ljava/io/IOException;
    .restart local v30       #statusLine:Lorg/apache/http/StatusLine;
    :cond_7
    const-string v34, "GDataClient"

    const/16 v35, 0x3

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v34

    if-eqz v34, :cond_8

    .line 294
    const-string v34, "GDataClient"

    invoke-interface/range {v24 .. v24}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    .local v3, arr$:[Lorg/apache/http/Header;
    array-length v0, v3

    move/from16 v18, v0

    .local v18, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_2
    move/from16 v0, v18

    if-ge v15, v0, :cond_8

    aget-object v13, v3, v15

    .line 296
    .local v13, h:Lorg/apache/http/Header;
    const-string v34, "GDataClient"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v13}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ": "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-interface {v13}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 299
    .end local v3           #arr$:[Lorg/apache/http/Header;
    .end local v13           #h:Lorg/apache/http/Header;
    .end local v15           #i$:I
    .end local v18           #len$:I
    :cond_8
    invoke-interface/range {v30 .. v30}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v29

    .line 301
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    .line 303
    .local v9, entity:Lorg/apache/http/HttpEntity;
    const/16 v34, 0xc8

    move/from16 v0, v29

    move/from16 v1, v34

    if-lt v0, v1, :cond_a

    const/16 v34, 0x12c

    move/from16 v0, v29

    move/from16 v1, v34

    if-ge v0, v1, :cond_a

    if-eqz v9, :cond_a

    .line 304
    invoke-static {v9}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v16

    .line 305
    .local v16, in:Ljava/io/InputStream;
    const-string v34, "GDataClient"

    const/16 v35, 0x3

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v34

    if-eqz v34, :cond_9

    .line 306
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/common/gdata2/AndroidGDataClient;->logInputStreamContents(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v16

    .line 308
    :cond_9
    return-object v16

    .line 314
    .end local v16           #in:Ljava/io/InputStream;
    :cond_a
    const/16 v34, 0x12e

    move/from16 v0, v29

    move/from16 v1, v34

    if-ne v0, v1, :cond_10

    .line 316
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 317
    const-string v34, "Location"

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v19

    .line 318
    .local v19, location:Lorg/apache/http/Header;
    if-nez v19, :cond_e

    .line 319
    const-string v34, "GDataClient"

    const/16 v35, 0x3

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v34

    if-eqz v34, :cond_b

    .line 320
    const-string v34, "GDataClient"

    const-string v35, "Redirect requested but no Location specified."

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    .end local v9           #entity:Lorg/apache/http/HttpEntity;
    .end local v19           #location:Lorg/apache/http/Header;
    .end local v23           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v30           #statusLine:Lorg/apache/http/StatusLine;
    .end local v32           #uri:Ljava/net/URI;
    :cond_b
    :goto_3
    const-string v34, "GDataClient"

    const/16 v35, 0x2

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v34

    if-eqz v34, :cond_c

    .line 369
    const-string v34, "GDataClient"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Received "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " status code."

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_c
    const/4 v10, 0x0

    .line 372
    .local v10, errorMessage:Ljava/lang/String;
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    .line 374
    .restart local v9       #entity:Lorg/apache/http/HttpEntity;
    if-eqz v24, :cond_13

    if-eqz v9, :cond_13

    .line 375
    :try_start_2
    invoke-static {v9}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v16

    .line 376
    .restart local v16       #in:Ljava/io/InputStream;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 377
    .local v4, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v34, 0x2000

    move/from16 v0, v34

    new-array v5, v0, [B

    .line 378
    .local v5, buf:[B
    const/4 v6, -0x1

    .line 379
    .local v6, bytesRead:I
    :goto_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/16 v34, -0x1

    move/from16 v0, v34

    if-eq v6, v0, :cond_11

    .line 380
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v4, v5, v0, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 389
    .end local v4           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v5           #buf:[B
    .end local v6           #bytesRead:I
    .end local v16           #in:Ljava/io/InputStream;
    :catchall_0
    move-exception v34

    :goto_5
    if-eqz v9, :cond_d

    .line 390
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_d
    throw v34

    .line 325
    .end local v10           #errorMessage:Ljava/lang/String;
    .restart local v19       #location:Lorg/apache/http/Header;
    .restart local v23       #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v30       #statusLine:Lorg/apache/http/StatusLine;
    .restart local v32       #uri:Ljava/net/URI;
    :cond_e
    const-string v34, "GDataClient"

    const/16 v35, 0x3

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v34

    if-eqz v34, :cond_f

    .line 326
    const-string v34, "GDataClient"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Following redirect to "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_f
    :try_start_3
    new-instance v32, Ljava/net/URI;

    .end local v32           #uri:Ljava/net/URI;
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_2

    .line 338
    .restart local v32       #uri:Ljava/net/URI;
    add-int/lit8 v22, v22, -0x1

    .line 339
    goto/16 :goto_0

    .line 330
    .end local v32           #uri:Ljava/net/URI;
    :catch_2
    move-exception v33

    .line 331
    .restart local v33       #use:Ljava/net/URISyntaxException;
    const-string v34, "GDataClient"

    const/16 v35, 0x3

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v34

    if-eqz v34, :cond_b

    .line 332
    const-string v34, "GDataClient"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Unable to parse "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " as URI."

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 333
    new-instance v34, Ljava/io/IOException;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Unable to parse "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " as URI."

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v34

    .line 339
    .end local v19           #location:Lorg/apache/http/Header;
    .end local v33           #use:Ljava/net/URISyntaxException;
    .restart local v32       #uri:Ljava/net/URI;
    :cond_10
    const/16 v34, 0x1f7

    move/from16 v0, v29

    move/from16 v1, v34

    if-ne v0, v1, :cond_b

    .line 340
    const-string v34, "Retry-After"

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v27

    .line 341
    .local v27, retryAfterHeader:Lorg/apache/http/Header;
    if-eqz v27, :cond_b

    .line 345
    invoke-interface/range {v27 .. v27}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v28

    .line 349
    .local v28, retryAfterString:Ljava/lang/String;
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    const-wide/16 v36, 0x3e8

    div-long v34, v34, v36

    invoke-static/range {v28 .. v28}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-wide v36

    add-long v25, v34, v36

    goto/16 :goto_3

    .line 351
    :catch_3
    move-exception v7

    .line 354
    .local v7, e:Ljava/lang/NumberFormatException;
    :try_start_5
    new-instance v31, Landroid/text/format/Time;

    invoke-direct/range {v31 .. v31}, Landroid/text/format/Time;-><init>()V

    .line 355
    .local v31, time:Landroid/text/format/Time;
    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    .line 356
    const/16 v34, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v34

    const-wide/16 v36, 0x3e8

    div-long v25, v34, v36
    :try_end_5
    .catch Landroid/util/TimeFormatException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_3

    .line 357
    .end local v31           #time:Landroid/text/format/Time;
    :catch_4
    move-exception v8

    .line 358
    .local v8, e2:Landroid/util/TimeFormatException;
    const-string v34, "GDataClient"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Unable to parse "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-static {v0, v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 383
    .end local v7           #e:Ljava/lang/NumberFormatException;
    .end local v8           #e2:Landroid/util/TimeFormatException;
    .end local v23           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v27           #retryAfterHeader:Lorg/apache/http/Header;
    .end local v28           #retryAfterString:Ljava/lang/String;
    .end local v30           #statusLine:Lorg/apache/http/StatusLine;
    .end local v32           #uri:Ljava/net/URI;
    .restart local v4       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #buf:[B
    .restart local v6       #bytesRead:I
    .restart local v10       #errorMessage:Ljava/lang/String;
    .restart local v16       #in:Ljava/io/InputStream;
    :cond_11
    :try_start_6
    new-instance v11, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v34

    move-object/from16 v0, v34

    invoke-direct {v11, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 384
    .end local v10           #errorMessage:Ljava/lang/String;
    .local v11, errorMessage:Ljava/lang/String;
    :try_start_7
    const-string v34, "GDataClient"

    const/16 v35, 0x2

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v34

    if-eqz v34, :cond_12

    .line 385
    const-string v34, "GDataClient"

    move-object/from16 v0, v34

    invoke-static {v0, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_12
    move-object v10, v11

    .line 389
    .end local v4           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v5           #buf:[B
    .end local v6           #bytesRead:I
    .end local v11           #errorMessage:Ljava/lang/String;
    .end local v16           #in:Ljava/io/InputStream;
    .restart local v10       #errorMessage:Ljava/lang/String;
    :cond_13
    if-eqz v9, :cond_14

    .line 390
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 393
    :cond_14
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Received "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " status code"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 394
    .local v12, exceptionMessage:Ljava/lang/String;
    if-eqz v10, :cond_15

    .line 395
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ": "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 397
    :cond_15
    new-instance v14, Lcom/google/wireless/gdata2/client/HttpException;

    const/16 v34, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v34

    invoke-direct {v14, v12, v0, v1}, Lcom/google/wireless/gdata2/client/HttpException;-><init>(Ljava/lang/String;ILjava/io/InputStream;)V

    .line 399
    .local v14, httpException:Lcom/google/wireless/gdata2/client/HttpException;
    const/16 v34, 0x1f7

    move/from16 v0, v29

    move/from16 v1, v34

    if-ne v0, v1, :cond_16

    .line 400
    move-wide/from16 v0, v25

    invoke-virtual {v14, v0, v1}, Lcom/google/wireless/gdata2/client/HttpException;->setRetryAfter(J)V

    .line 402
    :cond_16
    throw v14

    .line 389
    .end local v10           #errorMessage:Ljava/lang/String;
    .end local v12           #exceptionMessage:Ljava/lang/String;
    .end local v14           #httpException:Lcom/google/wireless/gdata2/client/HttpException;
    .restart local v4       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #buf:[B
    .restart local v6       #bytesRead:I
    .restart local v11       #errorMessage:Ljava/lang/String;
    .restart local v16       #in:Ljava/io/InputStream;
    :catchall_1
    move-exception v34

    move-object v10, v11

    .end local v11           #errorMessage:Ljava/lang/String;
    .restart local v10       #errorMessage:Ljava/lang/String;
    goto/16 :goto_5
.end method

.method public createEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata2/serializer/GDataSerializer;)Ljava/io/InputStream;
    .locals 8
    .parameter "feedUrl"
    .parameter "authToken"
    .parameter "protocolVersion"
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/HttpException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 480
    const/4 v0, 0x1

    invoke-direct {p0, p4, v0}, Lcom/google/android/common/gdata2/AndroidGDataClient;->createEntityForEntry(Lcom/google/wireless/gdata2/serializer/GDataSerializer;I)Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 481
    .local v6, entity:Lorg/apache/http/HttpEntity;
    new-instance v1, Lcom/google/android/common/gdata2/AndroidGDataClient$PostRequestCreator;

    invoke-direct {v1, v4, v6}, Lcom/google/android/common/gdata2/AndroidGDataClient$PostRequestCreator;-><init>(Ljava/lang/String;Lorg/apache/http/HttpEntity;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/common/gdata2/AndroidGDataClient;->createAndExecuteMethod(Lcom/google/android/common/gdata2/AndroidGDataClient$HttpRequestCreator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 487
    .local v7, in:Ljava/io/InputStream;
    if-eqz v7, :cond_0

    .line 488
    return-object v7

    .line 490
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
    .locals 7
    .parameter "editUri"
    .parameter "authToken"
    .parameter "eTag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 521
    invoke-static {p1}, Lcom/google/wireless/gdata2/data/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "you must specify an non-empty edit url"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 525
    :cond_0
    new-instance v1, Lcom/google/android/common/gdata2/AndroidGDataClient$PostRequestCreator;

    const-string v0, "DELETE"

    invoke-direct {v1, v0, v5}, Lcom/google/android/common/gdata2/AndroidGDataClient$PostRequestCreator;-><init>(Ljava/lang/String;Lorg/apache/http/HttpEntity;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/common/gdata2/AndroidGDataClient;->createAndExecuteMethod(Lcom/google/android/common/gdata2/AndroidGDataClient$HttpRequestCreator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 532
    .local v6, in:Ljava/io/InputStream;
    if-nez v6, :cond_1

    .line 533
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to delete entry."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 536
    :cond_1
    :try_start_0
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    :goto_0
    return-void

    .line 537
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public encodeUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "uri"

    .prologue
    .line 185
    :try_start_0
    const-string v2, "UTF-8"

    invoke-static {p1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 193
    .local v0, encodedUri:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 186
    .end local v0           #encodedUri:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 188
    .local v1, uee:Ljava/io/UnsupportedEncodingException;
    const-string v2, "JakartaGDataClient"

    const-string v3, "UTF-8 not supported -- should not happen.  Using default encoding."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #encodedUri:Ljava/lang/String;
    goto :goto_0
.end method

.method public getFeedAsStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7
    .parameter "feedUrl"
    .parameter "authToken"
    .parameter "eTag"
    .parameter "protocolVersion"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 415
    new-instance v1, Lcom/google/android/common/gdata2/AndroidGDataClient$GetRequestCreator;

    invoke-direct {v1}, Lcom/google/android/common/gdata2/AndroidGDataClient$GetRequestCreator;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/common/gdata2/AndroidGDataClient;->createAndExecuteMethod(Lcom/google/android/common/gdata2/AndroidGDataClient$HttpRequestCreator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 417
    .local v6, in:Ljava/io/InputStream;
    if-eqz v6, :cond_0

    .line 418
    return-object v6

    .line 420
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to access feed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata2/serializer/GDataSerializer;)Ljava/io/InputStream;
    .locals 9
    .parameter "editUri"
    .parameter "authToken"
    .parameter "eTag"
    .parameter "protocolVersion"
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/client/HttpException;,
            Ljava/io/IOException;,
            Lcom/google/wireless/gdata2/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 502
    const/4 v0, 0x2

    invoke-direct {p0, p5, v0}, Lcom/google/android/common/gdata2/AndroidGDataClient;->createEntityForEntry(Lcom/google/wireless/gdata2/serializer/GDataSerializer;I)Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 503
    .local v6, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {p5}, Lcom/google/wireless/gdata2/serializer/GDataSerializer;->isPartial()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v8, "PATCH"

    .line 504
    .local v8, method:Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/google/android/common/gdata2/AndroidGDataClient$PostRequestCreator;

    invoke-direct {v1, v8, v6}, Lcom/google/android/common/gdata2/AndroidGDataClient$PostRequestCreator;-><init>(Ljava/lang/String;Lorg/apache/http/HttpEntity;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/common/gdata2/AndroidGDataClient;->createAndExecuteMethod(Lcom/google/android/common/gdata2/AndroidGDataClient$HttpRequestCreator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 510
    .local v7, in:Ljava/io/InputStream;
    if-eqz v7, :cond_1

    .line 511
    return-object v7

    .line 503
    .end local v7           #in:Ljava/io/InputStream;
    .end local v8           #method:Ljava/lang/String;
    :cond_0
    const-string v8, "PUT"

    goto :goto_0

    .line 513
    .restart local v7       #in:Ljava/io/InputStream;
    .restart local v8       #method:Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to update entry."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
