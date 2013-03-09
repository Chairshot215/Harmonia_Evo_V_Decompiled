.class public Lcom/google/android/gsf/checkin/CheckinTask;
.super Landroid/os/AsyncTask;
.source "CheckinTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/checkin/CheckinTask$Params;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/google/android/gsf/checkin/CheckinTask$Params;",
        "Ljava/lang/Void;",
        "Lcom/google/common/io/protocol/ProtoBuf;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 95
    return-void
.end method

.method private static combineResponses(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/common/io/protocol/ProtoBuf;)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 11
    .parameter "older"
    .parameter "newer"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x2

    .line 397
    invoke-virtual {p0, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v8

    .line 398
    .local v8, oldNum:I
    invoke-virtual {p1, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v5

    .line 399
    .local v5, newNum:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v8, :cond_2

    .line 400
    invoke-virtual {p0, v9, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v7

    .line 401
    .local v7, oldIntent:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v7, v10}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 405
    .local v6, oldAction:Ljava/lang/String;
    const/4 v1, 0x0

    .line 406
    .local v1, is_dupe:Z
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v5, :cond_0

    if-nez v1, :cond_0

    .line 407
    invoke-virtual {p1, v9, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 408
    .local v4, newIntent:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v4, v10}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 409
    .local v3, newAction:Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 406
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 412
    .end local v3           #newAction:Ljava/lang/String;
    .end local v4           #newIntent:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {p1, v9, v7}, Lcom/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 399
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 415
    .end local v1           #is_dupe:Z
    .end local v2           #j:I
    .end local v6           #oldAction:Ljava/lang/String;
    .end local v7           #oldIntent:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_2
    return-object p1
.end method

.method private static makeRequest(Lcom/google/android/gsf/checkin/CheckinTask$Params;Lcom/google/common/io/protocol/ProtoBuf;JLjava/lang/String;)J
    .locals 19
    .parameter "params"
    .parameter "request"
    .parameter "bookmark"
    .parameter "market"

    .prologue
    .line 225
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->context:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 226
    .local v10, cm:Ljava/lang/Object;
    check-cast v10, Landroid/net/ConnectivityManager;

    .end local v10           #cm:Ljava/lang/Object;
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v14

    .line 227
    .local v14, ni:Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->context:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/telephony/TelephonyManager;

    .line 230
    .local v17, tm:Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->context:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/wifi/WifiManager;

    .line 233
    .local v18, wm:Landroid/net/wifi/WifiManager;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->storage:Landroid/content/SharedPreferences;

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->addBuildProperties(Landroid/content/SharedPreferences;Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->context:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->addPackageProperties(Landroid/content/Context;Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 235
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-static {v0, v1, v14, v2}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->addNetworkProperties(Landroid/telephony/TelephonyManager;Landroid/net/wifi/WifiManager;Landroid/net/NetworkInfo;Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 236
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->addLocaleProperty(Ljava/util/Locale;Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 237
    const-wide/16 v15, 0x0

    .line 238
    .local v15, securityToken:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->storage:Landroid/content/SharedPreferences;

    if-eqz v3, :cond_0

    .line 239
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->storage:Landroid/content/SharedPreferences;

    const-string v4, "CheckinTask_securityToken"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v15

    .line 241
    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v3, v15, v3

    if-nez v3, :cond_1

    .line 243
    :try_start_0
    new-instance v12, Ljava/io/DataInputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->context:Landroid/content/Context;

    const-string v4, "security_token"

    invoke-virtual {v3, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    invoke-direct {v12, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 245
    .local v12, dis:Ljava/io/DataInputStream;
    invoke-virtual {v12}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v15

    .line 246
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    .end local v12           #dis:Ljava/io/DataInputStream;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->context:Landroid/content/Context;

    move-wide v0, v15

    move-object/from16 v2, p1

    invoke-static {v3, v0, v1, v2}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->addIdProperties(Landroid/content/Context;JLcom/google/common/io/protocol/ProtoBuf;)V

    .line 254
    if-eqz p4, :cond_2

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->addMarketProperty(Ljava/lang/String;Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 255
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->context:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->addAccountInfo(Landroid/content/Context;Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 256
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->addTimeZone(Ljava/util/TimeZone;Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->context:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->addDeviceConfiguration(Landroid/content/Context;Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->dropbox:Landroid/os/DropBoxManager;

    if-eqz v3, :cond_3

    .line 260
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 261
    .local v11, cr:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->dropbox:Landroid/os/DropBoxManager;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->maxRequestBytes:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->maxEventBytes:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "checkin_dropbox_upload"

    aput-object v8, v6, v7

    invoke-static {v11, v6}, Lcom/google/android/gsf/Gservices;->getStringsByPrefix(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    move-wide/from16 v7, p2

    move-object/from16 v9, p1

    invoke-static/range {v3 .. v9}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->addEvents(Landroid/os/DropBoxManager;IILjava/util/Map;JLcom/google/common/io/protocol/ProtoBuf;)J

    move-result-wide p2

    .line 267
    .end local v11           #cr:Landroid/content/ContentResolver;
    :cond_3
    return-wide p2

    .line 249
    :catch_0
    move-exception v13

    .line 250
    .local v13, e:Ljava/io/IOException;
    const-string v3, "CheckinTask"

    const-string v4, "Error reading backup security token file"

    invoke-static {v3, v4, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 247
    .end local v13           #e:Ljava/io/IOException;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private static maybeSetTime(Lorg/apache/http/client/HttpClient;Lcom/google/android/gsf/checkin/CheckinTask$Params;)Z
    .locals 12
    .parameter "client"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v7, 0x0

    .line 303
    iget-object v8, p1, Lcom/google/android/gsf/checkin/CheckinTask$Params;->serverUrl:Ljava/lang/String;

    const-string v9, "https:"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 329
    :goto_0
    return v7

    .line 304
    :cond_0
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/google/android/gsf/checkin/CheckinTask$Params;->serverUrl:Ljava/lang/String;

    const/4 v10, 0x6

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 305
    .local v1, request:Lorg/apache/http/client/methods/HttpPost;
    const-string v8, "Content-type"

    const-string v9, "application/x-protobuffer"

    invoke-virtual {v1, v8, v9}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    new-instance v8, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-static {}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->newRequest()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/common/io/protocol/ProtoBuf;->toByteArray()[B

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v1, v8}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 308
    invoke-interface {p0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    invoke-static {p1, v8}, Lcom/google/android/gsf/checkin/CheckinTask;->parseResponse(Lcom/google/android/gsf/checkin/CheckinTask$Params;Lorg/apache/http/HttpResponse;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 309
    .local v2, response:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v2, v11}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 310
    const-string v8, "CheckinTask"

    const-string v9, "No time of day in checkin server response"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 314
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 315
    .local v5, systemTime:J
    invoke-virtual {v2, v11}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v3

    .line 319
    .local v3, serverTime:J
    sub-long v8, v3, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    iget-wide v10, p1, Lcom/google/android/gsf/checkin/CheckinTask$Params;->minTimeAdjustmentMillis:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_2

    .line 320
    const-string v8, "CheckinTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Server time agrees: delta "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v3, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " msec"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 322
    :cond_2
    iget-wide v8, p1, Lcom/google/android/gsf/checkin/CheckinTask$Params;->minTimeSettingMillis:J

    cmp-long v8, v3, v8

    if-gez v8, :cond_3

    .line 323
    const-string v8, "CheckinTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Server time is curiously old: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 326
    :cond_3
    const-string v7, "CheckinTask"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Setting time from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v7, p1, Lcom/google/android/gsf/checkin/CheckinTask$Params;->context:Landroid/content/Context;

    const-string v8, "alarm"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 328
    .local v0, am:Landroid/app/AlarmManager;
    invoke-virtual {v0, v3, v4}, Landroid/app/AlarmManager;->setTime(J)V

    .line 329
    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method private static parseResponse(Lcom/google/android/gsf/checkin/CheckinTask$Params;Lorg/apache/http/HttpResponse;)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 14
    .parameter "params"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    .line 334
    const-string v10, "Retry-After"

    invoke-interface {p1, v10}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v8

    .line 335
    .local v8, retryAfter:Lorg/apache/http/Header;
    if-eqz v8, :cond_0

    iget-object v10, p0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->scheduler:Lcom/android/common/OperationScheduler;

    if-eqz v10, :cond_0

    .line 336
    iget-object v10, p0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->scheduler:Lcom/android/common/OperationScheduler;

    invoke-interface {v8}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/common/OperationScheduler;->setMoratoriumTimeHttp(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 337
    const-string v10, "CheckinTask"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Got Retry-After: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v8}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_0
    :goto_0
    const-string v10, "Content-Type"

    invoke-interface {p1, v10}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 348
    .local v0, contentType:Lorg/apache/http/Header;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_3

    .line 349
    :cond_1
    new-instance v10, Ljava/io/IOException;

    const-string v11, "No Content-Type header"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 339
    .end local v0           #contentType:Lorg/apache/http/Header;
    :cond_2
    const-string v10, "CheckinTask"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Can\'t parse Retry-After: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v8}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 351
    .restart local v0       #contentType:Lorg/apache/http/Header;
    :cond_3
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    const-string v11, "application/x-protobuffer"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 352
    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad Content-Type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 355
    :cond_4
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    .line 356
    .local v9, status:Lorg/apache/http/StatusLine;
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 357
    .local v3, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    const/16 v11, 0xc8

    if-eq v10, v11, :cond_6

    .line 358
    if-eqz v3, :cond_5

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 359
    :cond_5
    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Rejected response from server: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 361
    :cond_6
    if-nez v3, :cond_7

    .line 362
    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Empty response from server: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 365
    :cond_7
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 366
    .local v4, input:Ljava/io/InputStream;
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v2

    .line 367
    .local v2, encoding:Lorg/apache/http/Header;
    if-eqz v2, :cond_8

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    const-string v11, "gzip"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 368
    new-instance v5, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v5, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v4           #input:Ljava/io/InputStream;
    .local v5, input:Ljava/io/InputStream;
    move-object v4, v5

    .line 373
    .end local v5           #input:Ljava/io/InputStream;
    .restart local v4       #input:Ljava/io/InputStream;
    :cond_8
    :try_start_0
    new-instance v7, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v10, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->ANDROID_CHECKIN_RESPONSE:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v7, v10}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 374
    .local v7, parsed:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v7, v4}, Lcom/google/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;)Lcom/google/common/io/protocol/ProtoBuf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 383
    invoke-virtual {v7, v13}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-virtual {v7, v13}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v10

    if-nez v10, :cond_a

    .line 385
    :cond_9
    new-instance v10, Ljava/io/IOException;

    const-string v11, "Server refused checkin"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 375
    .end local v7           #parsed:Lcom/google/common/io/protocol/ProtoBuf;
    :catch_0
    move-exception v1

    .line 376
    .local v1, e:Ljava/lang/RuntimeException;
    :try_start_1
    new-instance v6, Ljava/io/IOException;

    const-string v10, "Can\'t parse checkin response"

    invoke-direct {v6, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 377
    .local v6, ioe:Ljava/io/IOException;
    invoke-virtual {v6, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 378
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 380
    .end local v1           #e:Ljava/lang/RuntimeException;
    .end local v6           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    throw v10

    .line 388
    .restart local v7       #parsed:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_a
    return-object v7
.end method

.method private static sendRequest(Lcom/google/android/gsf/checkin/CheckinTask$Params;Lorg/apache/http/client/HttpClient;Lcom/google/common/io/protocol/ProtoBuf;)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 10
    .parameter "params"
    .parameter "client"
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    iget-object v6, p0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->serverUrl:Ljava/lang/String;

    invoke-direct {v4, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 273
    .local v4, httpRequest:Lorg/apache/http/client/methods/HttpPost;
    const-string v6, "Content-type"

    const-string v7, "application/x-protobuffer"

    invoke-virtual {v4, v6, v7}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 276
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 277
    .local v3, gzipos:Ljava/util/zip/GZIPOutputStream;
    invoke-virtual {p2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    .line 278
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 280
    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v2, v6}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 281
    .local v2, entity:Lorg/apache/http/entity/ByteArrayEntity;
    const-string v6, "gzip"

    invoke-virtual {v2, v6}, Lorg/apache/http/entity/ByteArrayEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v4, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 283
    const-string v6, "Accept-Encoding"

    const-string v7, "gzip"

    invoke-virtual {v4, v6, v7}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :try_start_0
    const-string v6, "CheckinTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sending checkin request ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lorg/apache/http/entity/ByteArrayEntity;->getContentLength()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-interface {p1, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 295
    .local v5, httpResponse:Lorg/apache/http/HttpResponse;
    :goto_0
    invoke-static {p0, v5}, Lcom/google/android/gsf/checkin/CheckinTask;->parseResponse(Lcom/google/android/gsf/checkin/CheckinTask$Params;Lorg/apache/http/HttpResponse;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v6

    return-object v6

    .line 289
    .end local v5           #httpResponse:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v1

    .line 290
    .local v1, e:Ljavax/net/ssl/SSLException;
    const-string v6, "CheckinTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SSL error, attempting time correction: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-static {p1, p0}, Lcom/google/android/gsf/checkin/CheckinTask;->maybeSetTime(Lorg/apache/http/client/HttpClient;Lcom/google/android/gsf/checkin/CheckinTask$Params;)Z

    move-result v6

    if-nez v6, :cond_0

    throw v1

    .line 292
    :cond_0
    invoke-interface {p1, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .restart local v5       #httpResponse:Lorg/apache/http/HttpResponse;
    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/google/android/gsf/checkin/CheckinTask$Params;)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 29
    .parameter "args"

    .prologue
    .line 131
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    new-instance v25, Ljava/lang/IllegalArgumentException;

    const-string v26, "Must be one Params object"

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 132
    :cond_0
    const/16 v25, 0x0

    aget-object v19, p1, v25

    .line 134
    .local v19, params:Lcom/google/android/gsf/checkin/CheckinTask$Params;
    const/4 v6, 0x0

    .line 135
    .local v6, client:Lcom/google/android/common/http/GoogleHttpClient;
    const/4 v8, 0x0

    .line 136
    .local v8, combined:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v9, 0x0

    .line 139
    .local v9, count:I
    const-wide/16 v4, 0x0

    .line 140
    .local v4, bookmark:J
    :try_start_0
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->storage:Landroid/content/SharedPreferences;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->storage:Landroid/content/SharedPreferences;

    move-object/from16 v25, v0

    const-string v26, "CheckinTask_bookmark"

    const-wide/16 v27, 0x0

    invoke-interface/range {v25 .. v28}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 142
    :cond_1
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->marketData:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 143
    .local v16, marketData:Ljava/lang/String;
    if-eqz v16, :cond_2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->storage:Landroid/content/SharedPreferences;

    move-object/from16 v25, v0

    if-eqz v25, :cond_2

    .line 144
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->storage:Landroid/content/SharedPreferences;

    move-object/from16 v25, v0

    const-string v26, "CheckinTask_marketData"

    const/16 v27, 0x0

    invoke-interface/range {v25 .. v27}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 145
    .local v15, lastMarketData:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2

    const/16 v16, 0x0

    .line 148
    .end local v15           #lastMarketData:Ljava/lang/String;
    :cond_2
    new-instance v7, Lcom/google/android/common/http/GoogleHttpClient;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "Android-Checkin/2.0"

    const/16 v27, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v7, v0, v1, v2}, Lcom/google/android/common/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v6           #client:Lcom/google/android/common/http/GoogleHttpClient;
    .local v7, client:Lcom/google/android/common/http/GoogleHttpClient;
    :goto_0
    :try_start_1
    move-object/from16 v0, v19

    iget v0, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->maxRequests:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v9, v0, :cond_3

    .line 151
    move-wide/from16 v17, v4

    .line 152
    .local v17, oldBookmark:J
    invoke-static {}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->newRequest()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v20

    .line 153
    .local v20, request:Lcom/google/common/io/protocol/ProtoBuf;
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    invoke-static {v0, v1, v4, v5, v2}, Lcom/google/android/gsf/checkin/CheckinTask;->makeRequest(Lcom/google/android/gsf/checkin/CheckinTask$Params;Lcom/google/common/io/protocol/ProtoBuf;JLjava/lang/String;)J

    move-result-wide v4

    .line 154
    cmp-long v25, v17, v4

    if-nez v25, :cond_6

    if-lez v9, :cond_6

    .line 211
    .end local v17           #oldBookmark:J
    .end local v20           #request:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_3
    const-string v25, "CheckinTask"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Checkin success: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->serverUrl:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " ("

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " requests sent)"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->scheduler:Lcom/android/common/OperationScheduler;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->scheduler:Lcom/android/common/OperationScheduler;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/common/OperationScheduler;->onSuccess()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 218
    :cond_4
    if-eqz v7, :cond_11

    invoke-virtual {v7}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    move-object v6, v7

    .line 221
    .end local v7           #client:Lcom/google/android/common/http/GoogleHttpClient;
    .end local v16           #marketData:Ljava/lang/String;
    .restart local v6       #client:Lcom/google/android/common/http/GoogleHttpClient;
    :cond_5
    :goto_1
    return-object v8

    .line 156
    .end local v6           #client:Lcom/google/android/common/http/GoogleHttpClient;
    .restart local v7       #client:Lcom/google/android/common/http/GoogleHttpClient;
    .restart local v16       #marketData:Ljava/lang/String;
    .restart local v17       #oldBookmark:J
    .restart local v20       #request:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_6
    :try_start_2
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v7, v1}, Lcom/google/android/gsf/checkin/CheckinTask;->sendRequest(Lcom/google/android/gsf/checkin/CheckinTask$Params;Lorg/apache/http/client/HttpClient;Lcom/google/common/io/protocol/ProtoBuf;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v21

    .line 157
    .local v21, response:Lcom/google/common/io/protocol/ProtoBuf;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->scheduler:Lcom/android/common/OperationScheduler;

    move-object/from16 v25, v0

    if-eqz v25, :cond_7

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->scheduler:Lcom/android/common/OperationScheduler;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/common/OperationScheduler;->resetTransientError()V

    .line 158
    :cond_7
    if-nez v8, :cond_e

    move-object/from16 v8, v21

    .line 160
    :goto_2
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->storage:Landroid/content/SharedPreferences;

    move-object/from16 v25, v0

    if-eqz v25, :cond_a

    .line 161
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->storage:Landroid/content/SharedPreferences;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 163
    .local v13, edit:Landroid/content/SharedPreferences$Editor;
    const-string v25, "CheckinTask_bookmark"

    move-object/from16 v0, v25

    invoke-interface {v13, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 165
    if-eqz v21, :cond_9

    const/16 v25, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v25

    if-eqz v25, :cond_9

    .line 168
    const/16 v25, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v23

    .line 169
    .local v23, value:J
    const-wide/16 v25, 0x0

    cmp-long v25, v23, v25

    if-eqz v25, :cond_9

    .line 171
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->storage:Landroid/content/SharedPreferences;

    move-object/from16 v25, v0

    const-string v26, "CheckinTask_securityToken"

    const-wide/16 v27, 0x0

    invoke-interface/range {v25 .. v28}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v25

    cmp-long v25, v23, v25

    if-eqz v25, :cond_8

    .line 172
    const-string v25, "CheckinTask_securityToken"

    move-object/from16 v0, v25

    move-wide/from16 v1, v23

    invoke-interface {v13, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 176
    :cond_8
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    .line 177
    .local v10, dir:Ljava/io/File;
    new-instance v22, Ljava/io/File;

    const-string v25, "security_token"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-direct {v0, v10, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 178
    .local v22, tokenFile:Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v25

    if-nez v25, :cond_9

    .line 179
    new-instance v11, Ljava/io/DataOutputStream;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "security_token"

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v11, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 183
    .local v11, dos:Ljava/io/DataOutputStream;
    move-wide/from16 v0, v23

    invoke-virtual {v11, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 184
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->close()V

    .line 189
    .end local v10           #dir:Ljava/io/File;
    .end local v11           #dos:Ljava/io/DataOutputStream;
    .end local v22           #tokenFile:Ljava/io/File;
    .end local v23           #value:J
    :cond_9
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 192
    .end local v13           #edit:Landroid/content/SharedPreferences$Editor;
    :cond_a
    if-eqz v21, :cond_b

    .line 193
    invoke-static/range {v21 .. v21}, Lcom/google/android/gsf/checkin/CheckinResponseProcessor;->getGservices(Lcom/google/common/io/protocol/ProtoBuf;)Landroid/content/ContentValues;

    move-result-object v14

    .line 194
    .local v14, gs:Landroid/content/ContentValues;
    if-eqz v14, :cond_b

    .line 195
    const-string v25, "CheckinTask"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "From server: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v14}, Landroid/content/ContentValues;->size()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " gservices"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    sget-object v26, Lcom/google/android/gsf/gservices/GservicesProvider;->UPDATE_MAIN_URI:Landroid/net/Uri;

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v14, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 201
    .end local v14           #gs:Landroid/content/ContentValues;
    :cond_b
    if-eqz v16, :cond_d

    const/16 v25, 0x6

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v25

    if-eqz v25, :cond_d

    const/16 v25, 0x6

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v25

    if-eqz v25, :cond_d

    .line 204
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->storage:Landroid/content/SharedPreferences;

    move-object/from16 v25, v0

    if-eqz v25, :cond_c

    .line 205
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->storage:Landroid/content/SharedPreferences;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v25

    const-string v26, "CheckinTask_marketData"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 207
    :cond_c
    const/16 v16, 0x0

    .line 150
    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 158
    :cond_e
    move-object/from16 v0, v21

    invoke-static {v8, v0}, Lcom/google/android/gsf/checkin/CheckinTask;->combineResponses(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/common/io/protocol/ProtoBuf;)Lcom/google/common/io/protocol/ProtoBuf;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v8

    goto/16 :goto_2

    .line 213
    .end local v7           #client:Lcom/google/android/common/http/GoogleHttpClient;
    .end local v16           #marketData:Ljava/lang/String;
    .end local v17           #oldBookmark:J
    .end local v20           #request:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v21           #response:Lcom/google/common/io/protocol/ProtoBuf;
    .restart local v6       #client:Lcom/google/android/common/http/GoogleHttpClient;
    :catch_0
    move-exception v12

    .line 214
    .local v12, e:Ljava/io/IOException;
    :goto_3
    :try_start_3
    const-string v25, "CheckinTask"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Checkin failed: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->serverUrl:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " (request #"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "): "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->scheduler:Lcom/android/common/OperationScheduler;

    move-object/from16 v25, v0

    if-eqz v25, :cond_f

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/android/gsf/checkin/CheckinTask$Params;->scheduler:Lcom/android/common/OperationScheduler;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/common/OperationScheduler;->onTransientError()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 218
    :cond_f
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    goto/16 :goto_1

    .end local v12           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v25

    :goto_4
    if-eqz v6, :cond_10

    invoke-virtual {v6}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    :cond_10
    throw v25

    .end local v6           #client:Lcom/google/android/common/http/GoogleHttpClient;
    .restart local v7       #client:Lcom/google/android/common/http/GoogleHttpClient;
    .restart local v16       #marketData:Ljava/lang/String;
    :catchall_1
    move-exception v25

    move-object v6, v7

    .end local v7           #client:Lcom/google/android/common/http/GoogleHttpClient;
    .restart local v6       #client:Lcom/google/android/common/http/GoogleHttpClient;
    goto :goto_4

    .line 213
    .end local v6           #client:Lcom/google/android/common/http/GoogleHttpClient;
    .restart local v7       #client:Lcom/google/android/common/http/GoogleHttpClient;
    :catch_1
    move-exception v12

    move-object v6, v7

    .end local v7           #client:Lcom/google/android/common/http/GoogleHttpClient;
    .restart local v6       #client:Lcom/google/android/common/http/GoogleHttpClient;
    goto :goto_3

    .end local v6           #client:Lcom/google/android/common/http/GoogleHttpClient;
    .restart local v7       #client:Lcom/google/android/common/http/GoogleHttpClient;
    :cond_11
    move-object v6, v7

    .end local v7           #client:Lcom/google/android/common/http/GoogleHttpClient;
    .restart local v6       #client:Lcom/google/android/common/http/GoogleHttpClient;
    goto/16 :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    check-cast p1, [Lcom/google/android/gsf/checkin/CheckinTask$Params;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/checkin/CheckinTask;->doInBackground([Lcom/google/android/gsf/checkin/CheckinTask$Params;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method
