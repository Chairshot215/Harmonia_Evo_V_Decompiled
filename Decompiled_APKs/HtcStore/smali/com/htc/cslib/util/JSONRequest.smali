.class public Lcom/htc/cslib/util/JSONRequest;
.super Ljava/lang/Object;
.source "JSONRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cslib/util/JSONRequest$StreamableString;,
        Lcom/htc/cslib/util/JSONRequest$ReadStreamable;,
        Lcom/htc/cslib/util/JSONRequest$WriteStreamable;,
        Lcom/htc/cslib/util/JSONRequest$Method;
    }
.end annotation


# static fields
.field static connectionTimeout:I

.field static readTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const v0, 0xea60

    .line 74
    sput v0, Lcom/htc/cslib/util/JSONRequest;->connectionTimeout:I

    .line 76
    sput v0, Lcom/htc/cslib/util/JSONRequest;->readTimeout:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 172
    return-void
.end method

.method public static SafeStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .parameter "stream"

    .prologue
    .line 291
    :try_start_0
    invoke-static {p0}, Lcom/htc/cslib/util/JSONRequest;->StreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 303
    :goto_0
    return-object v1

    .line 295
    :catch_0
    move-exception v0

    .line 299
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "JSONRequest.SafeStreamToString"

    const-string v2, "Failed to convert: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const-string v1, ""

    goto :goto_0
.end method

.method public static StreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .local v2, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 269
    .local v1, reader:Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 271
    .local v0, line:Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 277
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static deserializeJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 7
    .parameter "jsonString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 625
    const/4 v1, 0x0

    .line 631
    .local v1, retVal:Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #retVal:Lorg/json/JSONObject;
    .local v2, retVal:Lorg/json/JSONObject;
    move-object v1, v2

    .line 665
    .end local v2           #retVal:Lorg/json/JSONObject;
    .restart local v1       #retVal:Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 635
    :catch_0
    move-exception v0

    .line 649
    .local v0, e:Lorg/json/JSONException;
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 651
    .end local v1           #retVal:Lorg/json/JSONObject;
    .restart local v2       #retVal:Lorg/json/JSONObject;
    :try_start_2
    const-string v4, "value"

    const-string v5, "\""

    const-string v6, ""

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v2

    .line 661
    .end local v2           #retVal:Lorg/json/JSONObject;
    .restart local v1       #retVal:Lorg/json/JSONObject;
    goto :goto_0

    .line 655
    :catch_1
    move-exception v3

    .line 659
    .local v3, xxx:Ljava/lang/Exception;
    :goto_1
    throw v0

    .line 655
    .end local v1           #retVal:Lorg/json/JSONObject;
    .end local v3           #xxx:Ljava/lang/Exception;
    .restart local v2       #retVal:Lorg/json/JSONObject;
    :catch_2
    move-exception v3

    move-object v1, v2

    .end local v2           #retVal:Lorg/json/JSONObject;
    .restart local v1       #retVal:Lorg/json/JSONObject;
    goto :goto_1
.end method

.method public static getConnectionTimeout()I
    .locals 1

    .prologue
    .line 82
    sget v0, Lcom/htc/cslib/util/JSONRequest;->connectionTimeout:I

    return v0
.end method

.method public static getReadTimeout()I
    .locals 1

    .prologue
    .line 94
    sget v0, Lcom/htc/cslib/util/JSONRequest;->readTimeout:I

    return v0
.end method

.method public static getSerialNumber()Ljava/util/UUID;
    .locals 3

    .prologue
    .line 314
    const-string v1, "ro.serialno"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, serialNo:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v1

    return-object v1
.end method

.method public static sendHttpRequestViaStreamables(Landroid/content/Context;Lcom/htc/cslib/util/CSCookie;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/htc/cslib/util/JSONRequest$Method;Ljava/lang/String;Lcom/htc/cslib/util/JSONRequest$WriteStreamable;Lcom/htc/cslib/util/JSONRequest$ReadStreamable;)V
    .locals 17
    .parameter "mContext"
    .parameter "cookie"
    .parameter "accountId"
    .parameter "deviceId"
    .parameter "url"
    .parameter "method"
    .parameter "authKey"
    .parameter "outParam"
    .parameter "inParam"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 338
    const/4 v5, 0x0

    .line 340
    .local v5, httpClient:Ljava/net/HttpURLConnection;
    const/4 v7, 0x0

    .line 342
    .local v7, inStream:Ljava/io/InputStream;
    if-eqz p6, :cond_7

    const-string v12, ""

    move-object/from16 v0, p6

    if-eq v0, v12, :cond_7

    const/4 v12, 0x1

    :goto_0
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 344
    .local v9, usingDeviceToken:Ljava/lang/Boolean;
    const/16 v8, 0xc8

    .line 352
    .local v8, statusCode:I
    :try_start_0
    const-string v12, "https:"

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 354
    new-instance v12, Ljava/net/URL;

    move-object/from16 v0, p4

    invoke-direct {v12, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljavax/net/ssl/HttpsURLConnection;

    .line 356
    .local v6, https:Ljavax/net/ssl/HttpsURLConnection;
    sget-object v12, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v6, v12}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 358
    move-object v5, v6

    .line 368
    .end local v6           #https:Ljavax/net/ssl/HttpsURLConnection;
    :goto_1
    sget v12, Lcom/htc/cslib/util/JSONRequest;->connectionTimeout:I

    invoke-virtual {v5, v12}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 370
    sget v12, Lcom/htc/cslib/util/JSONRequest;->readTimeout:I

    invoke-virtual {v5, v12}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 381
    const-string v12, "cslib"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " Locale.getDefault() =  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const-string v12, "cslib"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " Locale.getDefault() =  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    .line 388
    const-string v12, "AccountId"

    move-object/from16 v0, p2

    invoke-virtual {v5, v12, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1

    .line 391
    const-string v12, "DeviceId"

    move-object/from16 v0, p3

    invoke-virtual {v5, v12, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_1
    const-string v12, "accept"

    const-string v13, "application/json"

    invoke-virtual {v5, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v12, "Content-Type"

    const-string v13, "application/json;charset=utf-8"

    invoke-virtual {v5, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string v12, "Accept-Language"

    const-string v13, "%s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v12, "Content-Transfer-Encoding"

    const-string v13, "UTF-8"

    invoke-virtual {v5, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string v12, "X-HTC-SN"

    const-string v13, "profiler.csserialnum"

    const-string v14, "ro.serialno"

    const-string v15, ""

    invoke-static {v14, v15}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string v12, "X-HTC-DEVICE-SN"

    const-string v13, "profiler.csserialnum"

    const-string v14, "ro.serialno"

    const-string v15, ""

    invoke-static {v14, v15}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v12, "X-HTC-OPERATOR-PLMN"

    invoke-static/range {p0 .. p0}, Lcom/htc/cslib/util/CSEngineUtil;->getOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v12, "X-HTC-NETWORK-PLMN"

    invoke-static/range {p0 .. p0}, Lcom/htc/cslib/util/CSEngineUtil;->getNetwork(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string v12, "Cookie"

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/htc/cslib/util/CSCookie;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 431
    const-string v12, "AuthKey"

    move-object/from16 v0, p6

    invoke-virtual {v5, v12, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :cond_2
    sget-object v12, Lcom/htc/cslib/util/JSONRequest$Method;->GET:Lcom/htc/cslib/util/JSONRequest$Method;

    move-object/from16 v0, p5

    if-ne v0, v12, :cond_9

    .line 452
    const-string v12, "cslib"

    const-string v13, " GET "

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const-string v12, "GET"

    invoke-virtual {v5, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 491
    :goto_2
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 493
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    .line 512
    const-string v12, "Set-Cookie"

    invoke-virtual {v5, v12}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 513
    .local v3, cookies:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 515
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v3}, Lcom/htc/cslib/util/CSCookie;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    :cond_3
    const-string v12, "gzip"

    const-string v13, "Content-Encoding"

    invoke-virtual {v5, v13}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 521
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 523
    new-instance v11, Ljava/util/zip/GZIPInputStream;

    new-instance v12, Ljava/io/BufferedInputStream;

    invoke-direct {v12, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v11, v12}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 525
    .local v11, zis:Ljava/util/zip/GZIPInputStream;
    const/16 v12, 0x1000

    new-array v2, v12, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    .local v2, buffer:[B
    :try_start_1
    invoke-virtual {v11, v2}, Ljava/util/zip/GZIPInputStream;->read([B)I

    .line 533
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v2}, Ljava/lang/String;-><init>([B)V

    .line 535
    .local v10, value:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p8

    invoke-interface {v0, v12}, Lcom/htc/cslib/util/JSONRequest$ReadStreamable;->readFromString(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 539
    :try_start_2
    invoke-virtual {v11}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 581
    .end local v2           #buffer:[B
    .end local v10           #value:Ljava/lang/String;
    .end local v11           #zis:Ljava/util/zip/GZIPInputStream;
    :cond_4
    :goto_3
    const/16 v12, 0xc8

    if-lt v8, v12, :cond_5

    const/16 v12, 0x12c

    if-lt v8, v12, :cond_d

    .line 587
    :cond_5
    new-instance v12, Ljava/lang/Exception;

    const-string v13, "JSONRequest.sendRequest - invalid http status code %d calling: %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object p4, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 593
    .end local v3           #cookies:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 599
    .local v4, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    .line 600
    new-instance v12, Lcom/htc/cslib/exceptions/MyCSException;

    const-string v13, "JSonCloudRequest.sendRequest failed"

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-static {v14}, Lcom/htc/cslib/util/JSONRequest;->SafeStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v4, v14, v8}, Lcom/htc/cslib/exceptions/MyCSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;I)V

    throw v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 611
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 613
    :cond_6
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v12

    .line 342
    .end local v8           #statusCode:I
    .end local v9           #usingDeviceToken:Ljava/lang/Boolean;
    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 362
    .restart local v8       #statusCode:I
    .restart local v9       #usingDeviceToken:Ljava/lang/Boolean;
    :cond_8
    :try_start_4
    new-instance v12, Ljava/net/URL;

    move-object/from16 v0, p4

    invoke-direct {v12, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v5, v0

    goto/16 :goto_1

    .line 456
    :cond_9
    sget-object v12, Lcom/htc/cslib/util/JSONRequest$Method;->POST:Lcom/htc/cslib/util/JSONRequest$Method;

    move-object/from16 v0, p5

    if-ne v0, v12, :cond_a

    .line 458
    const-string v12, "POST"

    invoke-virtual {v5, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 460
    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 464
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    move-object/from16 v0, p7

    invoke-interface {v0, v12}, Lcom/htc/cslib/util/JSONRequest$WriteStreamable;->writeTo(Ljava/io/OutputStream;)V

    goto/16 :goto_2

    .line 469
    :cond_a
    sget-object v12, Lcom/htc/cslib/util/JSONRequest$Method;->PUT:Lcom/htc/cslib/util/JSONRequest$Method;

    move-object/from16 v0, p5

    if-ne v0, v12, :cond_b

    .line 473
    const-string v12, "PUT"

    invoke-virtual {v5, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 475
    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 477
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    move-object/from16 v0, p7

    invoke-interface {v0, v12}, Lcom/htc/cslib/util/JSONRequest$WriteStreamable;->writeTo(Ljava/io/OutputStream;)V

    goto/16 :goto_2

    .line 485
    :cond_b
    const-string v12, "DELETE"

    invoke-virtual {v5, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 539
    .restart local v2       #buffer:[B
    .restart local v3       #cookies:Ljava/lang/String;
    .restart local v11       #zis:Ljava/util/zip/GZIPInputStream;
    :catchall_1
    move-exception v12

    invoke-virtual {v11}, Ljava/util/zip/GZIPInputStream;->close()V

    throw v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 554
    .end local v2           #buffer:[B
    .end local v11           #zis:Ljava/util/zip/GZIPInputStream;
    :cond_c
    :try_start_5
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v7

    .line 568
    :goto_4
    if-eqz v7, :cond_4

    .line 572
    :try_start_6
    move-object/from16 v0, p8

    invoke-interface {v0, v7}, Lcom/htc/cslib/util/JSONRequest$ReadStreamable;->readFrom(Ljava/io/InputStream;)V

    goto/16 :goto_3

    .line 558
    :catch_1
    move-exception v4

    .line 562
    .restart local v4       #e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 563
    const-string v12, "getInputStream Exception %s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/htc/cslib/util/LogUtil;->Console(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_4

    .line 611
    .end local v4           #e:Ljava/lang/Exception;
    :cond_d
    if-eqz v7, :cond_e

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 613
    :cond_e
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 617
    return-void
.end method

.method public static setConnectionTimeout(I)V
    .locals 0
    .parameter "connectionTimeout"

    .prologue
    .line 88
    sput p0, Lcom/htc/cslib/util/JSONRequest;->connectionTimeout:I

    .line 90
    return-void
.end method

.method public static setReadTimeout(I)V
    .locals 0
    .parameter "readTimeout"

    .prologue
    .line 100
    sput p0, Lcom/htc/cslib/util/JSONRequest;->readTimeout:I

    .line 102
    return-void
.end method
