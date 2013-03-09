.class public Lcom/google/android/gsf/usagestats/StatsUploadService;
.super Landroid/app/IntentService;
.source "StatsUploadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/usagestats/StatsUploadService$Receiver;
    }
.end annotation


# static fields
.field protected static final LOCAL_LOGV:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const-string v0, "StatsUploadService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gsf/usagestats/StatsUploadService;->LOCAL_LOGV:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 90
    const-string v0, "StatsUploadService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-static {p0}, Lcom/google/android/gsf/usagestats/StatsUploadService;->scheduleNextUpload(Landroid/content/Context;)V

    return-void
.end method

.method private static buildOperationScheduler(Landroid/content/Context;)Lcom/android/common/OperationScheduler;
    .locals 3
    .parameter "context"

    .prologue
    .line 201
    const-string v1, "StatsUploadService"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 202
    .local v0, prefs:Landroid/content/SharedPreferences;
    new-instance v1, Lcom/android/common/OperationScheduler;

    invoke-direct {v1, v0}, Lcom/android/common/OperationScheduler;-><init>(Landroid/content/SharedPreferences;)V

    return-object v1
.end method

.method private getServerUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/StatsUploadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "usagestats:server_url"

    const-string v2, "https://android.clients.google.com/usagestats"

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isNetworkConnected(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 211
    invoke-static {p0}, Lcom/google/android/gsf/usagestats/StatsUploadService;->isUploadEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 216
    :cond_0
    :goto_0
    return v2

    .line 213
    :cond_1
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 215
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 216
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isUploadEnabled(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 260
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "usagestats:force_upload_disable"

    invoke-static {v5, v6, v4}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    move v0, v3

    .line 262
    .local v0, forceDisable:Z
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "usagestats:force_upload_enable"

    invoke-static {v5, v6, v4}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    move v1, v3

    .line 264
    .local v1, forceEnable:Z
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "usagestats:user_opt_in_upload_enable"

    invoke-static {v5, v6, v4}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_3

    move v2, v3

    .line 267
    .local v2, userOptIn:Z
    :goto_2
    if-nez v0, :cond_4

    if-nez v1, :cond_0

    if-eqz v2, :cond_4

    :cond_0
    :goto_3
    return v3

    .end local v0           #forceDisable:Z
    .end local v1           #forceEnable:Z
    .end local v2           #userOptIn:Z
    :cond_1
    move v0, v4

    .line 260
    goto :goto_0

    .restart local v0       #forceDisable:Z
    :cond_2
    move v1, v4

    .line 262
    goto :goto_1

    .restart local v1       #forceEnable:Z
    :cond_3
    move v2, v4

    .line 264
    goto :goto_2

    .restart local v2       #userOptIn:Z
    :cond_4
    move v3, v4

    .line 267
    goto :goto_3
.end method

.method private performUpload(Z)V
    .locals 24
    .parameter "uploadAllAppStats"

    .prologue
    .line 115
    sget-boolean v21, Lcom/google/android/gsf/usagestats/StatsUploadService;->LOCAL_LOGV:Z

    if-eqz v21, :cond_0

    const-string v21, "StatsUploadService"

    const-string v22, "Starting usagestats upload"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/google/android/gsf/usagestats/StatsUploadService;->buildOperationScheduler(Landroid/content/Context;)Lcom/android/common/OperationScheduler;

    move-result-object v17

    .line 118
    .local v17, sched:Lcom/android/common/OperationScheduler;
    invoke-virtual/range {v17 .. v17}, Lcom/android/common/OperationScheduler;->getLastSuccessTimeMillis()J

    move-result-wide v11

    .line 119
    .local v11, lastSuccess:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 120
    .local v13, now:J
    const-wide/32 v21, 0x48190800

    sub-long v21, v13, v21

    move-wide/from16 v0, v21

    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    .line 122
    .local v18, statStartTime:J
    new-instance v15, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;

    invoke-direct {v15}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;-><init>()V

    .line 123
    .local v15, report:Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;
    invoke-static/range {p0 .. p0}, Lcom/google/android/gsf/settings/IdUtils;->getAndroidId(Landroid/content/Context;)J

    move-result-wide v21

    move-wide/from16 v0, v21

    invoke-virtual {v15, v0, v1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->setAndroidId(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;

    .line 124
    invoke-static/range {p0 .. p0}, Lcom/google/android/gsf/settings/IdUtils;->getLoggingId(Landroid/content/Context;)J

    move-result-wide v21

    move-wide/from16 v0, v21

    invoke-virtual {v15, v0, v1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->setLoggingId(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;

    .line 127
    :try_start_0
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/usagestats/DataUsageReporter;->buildReport(Landroid/content/Context;JZ)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->setUsageStats(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_2

    .line 159
    :goto_0
    new-instance v5, Lcom/google/android/common/http/GoogleHttpClient;

    const-string v21, "Android-Stats/1.0"

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v5, v0, v1, v2}, Lcom/google/android/common/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 161
    .local v5, client:Lcom/google/android/common/http/GoogleHttpClient;
    :try_start_1
    new-instance v9, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gsf/usagestats/StatsUploadService;->getServerUrl()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v9, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 162
    .local v9, httpRequest:Lorg/apache/http/client/methods/HttpPost;
    const-string v21, "Content-type"

    const-string v22, "application/x-protobuffer"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 165
    .local v4, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v8, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v8, v4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 166
    .local v8, gzipos:Ljava/util/zip/GZIPOutputStream;
    invoke-virtual {v15}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidUsageStatsReport;->toByteArray()[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 167
    invoke-virtual {v8}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 169
    new-instance v7, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 170
    .local v7, entity:Lorg/apache/http/entity/ByteArrayEntity;
    const-string v21, "gzip"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lorg/apache/http/entity/ByteArrayEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v9, v7}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 172
    const-string v21, "Accept-Encoding"

    const-string v22, "gzip"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v5, v9}, Lcom/google/android/common/http/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 175
    .local v10, httpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v20

    .line 178
    .local v20, statusCode:I
    const/16 v21, 0xc8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 179
    sget-boolean v21, Lcom/google/android/gsf/usagestats/StatsUploadService;->LOCAL_LOGV:Z

    if-eqz v21, :cond_1

    const-string v21, "StatsUploadService"

    const-string v22, "Stats upload success"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_1
    invoke-virtual/range {v17 .. v17}, Lcom/android/common/OperationScheduler;->onSuccess()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 196
    :cond_2
    :goto_1
    invoke-virtual {v5}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    .line 198
    .end local v4           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v7           #entity:Lorg/apache/http/entity/ByteArrayEntity;
    .end local v8           #gzipos:Ljava/util/zip/GZIPOutputStream;
    .end local v9           #httpRequest:Lorg/apache/http/client/methods/HttpPost;
    .end local v10           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v20           #statusCode:I
    :goto_2
    return-void

    .line 129
    .end local v5           #client:Lcom/google/android/common/http/GoogleHttpClient;
    :catch_0
    move-exception v6

    .line 130
    .local v6, e:Ljava/lang/LinkageError;
    const-string v21, "StatsUploadService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "problem in DataUsageReporter: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 131
    .end local v6           #e:Ljava/lang/LinkageError;
    :catch_1
    move-exception v6

    .line 132
    .local v6, e:Ljava/lang/SecurityException;
    const-string v21, "StatsUploadService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "problem in DataUsageReporter: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 133
    .end local v6           #e:Ljava/lang/SecurityException;
    :catch_2
    move-exception v6

    .line 134
    .local v6, e:Landroid/os/BadParcelableException;
    const-string v21, "StatsUploadService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "problem in DataUsageReporter: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 183
    .end local v6           #e:Landroid/os/BadParcelableException;
    .restart local v4       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #client:Lcom/google/android/common/http/GoogleHttpClient;
    .restart local v7       #entity:Lorg/apache/http/entity/ByteArrayEntity;
    .restart local v8       #gzipos:Ljava/util/zip/GZIPOutputStream;
    .restart local v9       #httpRequest:Lorg/apache/http/client/methods/HttpPost;
    .restart local v10       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v20       #statusCode:I
    :cond_3
    :try_start_2
    const-string v21, "StatsUploadService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Stats upload error: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual/range {v17 .. v17}, Lcom/android/common/OperationScheduler;->onTransientError()V

    .line 185
    const/16 v21, 0x1f7

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 186
    const-string v21, "Retry-After"

    move-object/from16 v0, v21

    invoke-interface {v10, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v16

    .line 187
    .local v16, retryAfter:Lorg/apache/http/Header;
    if-eqz v16, :cond_2

    .line 188
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/common/OperationScheduler;->setMoratoriumTimeHttp(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_1

    .line 192
    .end local v4           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v7           #entity:Lorg/apache/http/entity/ByteArrayEntity;
    .end local v8           #gzipos:Ljava/util/zip/GZIPOutputStream;
    .end local v9           #httpRequest:Lorg/apache/http/client/methods/HttpPost;
    .end local v10           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v16           #retryAfter:Lorg/apache/http/Header;
    .end local v20           #statusCode:I
    :catch_3
    move-exception v6

    .line 193
    .local v6, e:Ljava/io/IOException;
    :try_start_3
    const-string v21, "StatsUploadService"

    const-string v22, "Stats upload exception"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual/range {v17 .. v17}, Lcom/android/common/OperationScheduler;->onTransientError()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 196
    invoke-virtual {v5}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    goto/16 :goto_2

    .end local v6           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v21

    invoke-virtual {v5}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    throw v21
.end method

.method private static scheduleNextUpload(Landroid/content/Context;)V
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 225
    invoke-static {p0}, Lcom/google/android/gsf/usagestats/StatsUploadService;->buildOperationScheduler(Landroid/content/Context;)Lcom/android/common/OperationScheduler;

    move-result-object v3

    .line 226
    invoke-static {p0}, Lcom/google/android/gsf/usagestats/StatsUploadService;->isUploadEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/google/android/gsf/usagestats/StatsUploadService;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/common/OperationScheduler;->setEnabledState(Z)V

    .line 229
    new-instance v4, Lcom/android/common/OperationScheduler$Options;

    invoke-direct {v4}, Lcom/android/common/OperationScheduler$Options;-><init>()V

    .line 231
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "usagestats:upload_interval_millis"

    const-wide/32 v6, 0xa4cb800

    invoke-static {v0, v5, v6, v7}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/common/OperationScheduler$Options;->periodicIntervalMillis:J

    .line 235
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 241
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/google/android/gsf/usagestats/StatsUploadService;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v2, v5, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 243
    invoke-virtual {v3, v4}, Lcom/android/common/OperationScheduler;->getNextTimeMillis(Lcom/android/common/OperationScheduler$Options;)J

    move-result-wide v3

    .line 244
    const-wide v5, 0x7fffffffffffffffL

    cmp-long v5, v3, v5

    if-nez v5, :cond_2

    .line 245
    sget-boolean v1, Lcom/google/android/gsf/usagestats/StatsUploadService;->LOCAL_LOGV:Z

    if-eqz v1, :cond_0

    const-string v1, "StatsUploadService"

    const-string v3, "Upload disabled"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 251
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 226
    goto :goto_0

    .line 248
    :cond_2
    sget-boolean v5, Lcom/google/android/gsf/usagestats/StatsUploadService;->LOCAL_LOGV:Z

    if-eqz v5, :cond_3

    const-string v5, "StatsUploadService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Scheduling next upload for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_3
    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_1
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 95
    const-string v4, "power"

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/usagestats/StatsUploadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 96
    .local v1, pm:Landroid/os/PowerManager;
    const-string v4, "StatsUploadService"

    invoke-virtual {v1, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 97
    .local v0, lock:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 99
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gsf/usagestats/StatsUploadService;->isUploadEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p0}, Lcom/google/android/gsf/usagestats/StatsUploadService;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/google/android/gsf/usagestats/StatsUploadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "usagestats:upload_all_app_stats"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    .line 102
    .local v2, uploadAllAppStats:Z
    :goto_0
    invoke-direct {p0, v2}, Lcom/google/android/gsf/usagestats/StatsUploadService;->performUpload(Z)V

    .line 104
    .end local v2           #uploadAllAppStats:Z
    :cond_0
    invoke-static {p0}, Lcom/google/android/gsf/usagestats/StatsUploadService;->scheduleNextUpload(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 108
    return-void

    :cond_1
    move v2, v3

    .line 100
    goto :goto_0

    .line 106
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v3
.end method
