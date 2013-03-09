.class public Lcom/google/android/play/analytics/EventLogger;
.super Lcom/google/android/play/utils/LoggableHandler;
.source "EventLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/play/analytics/EventLogger$LogSource;
    }
.end annotation


# static fields
.field protected static final LOG_FILE_DIRECTORY:Ljava/lang/String; = "logs"


# instance fields
.field private final mAndroidId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mDelayBetweenUploadsMs:J

.field private final mHttpClient:Lcom/google/android/volley/GoogleHttpClient;

.field private volatile mIsLoggingEnabled:Z

.field private final mLogSource:I

.field private final mLoggingId:Ljava/lang/String;

.field private volatile mNextAllowedUploadTime:J

.field private volatile mOutputStream:Ljava/io/OutputStream;

.field private volatile mProtoWriter:Lcom/google/protobuf/micro/CodedOutputStreamMicro;

.field private final mRollingFileStream:Lcom/google/android/play/analytics/RollingFileStream;

.field private volatile mUploadAccount:Landroid/accounts/Account;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;Lcom/google/android/play/analytics/EventLogger$LogSource;Ljava/lang/String;)V
    .locals 13
    .parameter "context"
    .parameter "loggingId"
    .parameter "uploadAccount"
    .parameter "logSource"
    .parameter "useragent"

    .prologue
    .line 140
    const-string v1, "PlayEventLogger"

    invoke-direct {p0, v1}, Lcom/google/android/play/utils/LoggableHandler;-><init>(Ljava/lang/String;)V

    .line 102
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/play/analytics/EventLogger;->mProtoWriter:Lcom/google/protobuf/micro/CodedOutputStreamMicro;

    .line 103
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/play/analytics/EventLogger;->mOutputStream:Ljava/io/OutputStream;

    .line 114
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/play/analytics/EventLogger;->mNextAllowedUploadTime:J

    .line 116
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/play/analytics/EventLogger;->mIsLoggingEnabled:Z

    .line 141
    iput-object p1, p0, Lcom/google/android/play/analytics/EventLogger;->mContext:Landroid/content/Context;

    .line 142
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/play/analytics/EventLogger$LogSource;->getProtoValue()I

    move-result v1

    iput v1, p0, Lcom/google/android/play/analytics/EventLogger;->mLogSource:I

    .line 143
    iput-object p2, p0, Lcom/google/android/play/analytics/EventLogger;->mLoggingId:Ljava/lang/String;

    .line 144
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/google/android/play/analytics/EventLogger;->setUploadAccount(Landroid/accounts/Account;)V

    .line 146
    if-nez p5, :cond_0

    .line 147
    iget-object v1, p0, Lcom/google/android/play/analytics/EventLogger;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/play/utils/PlayUtils;->getDefaultUserAgentString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p5

    .line 149
    :cond_0
    new-instance v1, Lcom/google/android/volley/GoogleHttpClient;

    iget-object v2, p0, Lcom/google/android/play/analytics/EventLogger;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    move-object/from16 v0, p5

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/volley/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/google/android/play/analytics/EventLogger;->mHttpClient:Lcom/google/android/volley/GoogleHttpClient;

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 152
    .local v12, resolver:Landroid/content/ContentResolver;
    const-string v1, "android_id"

    const-wide/16 v2, 0x0

    invoke-static {v12, v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/play/analytics/EventLogger;->mAndroidId:Ljava/lang/String;

    .line 154
    iget-object v1, p0, Lcom/google/android/play/analytics/EventLogger;->mAndroidId:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 155
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/play/analytics/EventLogger;->mIsLoggingEnabled:Z

    .line 158
    :cond_1
    const-string v1, "playlog_enabled_sources"

    invoke-static {v12, v1}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 160
    .local v9, enabledSources:Ljava/lang/String;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p4 .. p4}, Lcom/google/android/play/analytics/EventLogger$LogSource;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 162
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/play/analytics/EventLogger;->mIsLoggingEnabled:Z

    .line 165
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/play/analytics/EventLogger;->getDelayBetweenUploads()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/play/analytics/EventLogger;->mDelayBetweenUploadsMs:J

    .line 167
    invoke-virtual {p0}, Lcom/google/android/play/analytics/EventLogger;->getRecommendedLogFileSize()J

    move-result-wide v5

    .line 169
    .local v5, logFileSize:J
    invoke-virtual {p0}, Lcom/google/android/play/analytics/EventLogger;->getMaxStoreSize()J

    move-result-wide v10

    .line 170
    .local v10, maxStoreSize:J
    invoke-virtual {p0}, Lcom/google/android/play/analytics/EventLogger;->getNumberOfFiles()J

    move-result-wide v1

    long-to-int v4, v1

    .line 174
    .local v4, numOfFiles:I
    new-instance v1, Lcom/google/android/play/analytics/RollingFileStream;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/google/android/play/analytics/EventLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const-string v7, "logs"

    invoke-direct {v2, v3, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/play/analytics/EventLogger;->getStoreFilenamePrefix()Ljava/lang/String;

    move-result-object v3

    int-to-long v7, v4

    div-long v7, v10, v7

    invoke-direct/range {v1 .. v8}, Lcom/google/android/play/analytics/RollingFileStream;-><init>(Ljava/io/File;Ljava/lang/String;IJJ)V

    iput-object v1, p0, Lcom/google/android/play/analytics/EventLogger;->mRollingFileStream:Lcom/google/android/play/analytics/RollingFileStream;

    .line 177
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/play/analytics/EventLogger;->sendEmptyMessage(I)Z

    .line 178
    return-void
.end method

.method private addEventImpl(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 344
    iget-object v2, p0, Lcom/google/android/play/analytics/EventLogger;->mProtoWriter:Lcom/google/protobuf/micro/CodedOutputStreamMicro;

    if-nez v2, :cond_0

    .line 346
    const-string v2, "PlayEventLogger"

    const-string v3, "addEventImpl: mProtoWriter was null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :goto_0
    return-void

    .line 350
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;

    .line 353
    .local v1, event:Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;
    const-string v2, "PlayEventLogger"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addEventImpl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;->getSerializedSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :try_start_0
    iget-object v2, p0, Lcom/google/android/play/analytics/EventLogger;->mProtoWriter:Lcom/google/protobuf/micro/CodedOutputStreamMicro;

    invoke-virtual {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessageNoTag(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 357
    iget-object v2, p0, Lcom/google/android/play/analytics/EventLogger;->mProtoWriter:Lcom/google/protobuf/micro/CodedOutputStreamMicro;

    invoke-virtual {v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->flush()V

    .line 358
    invoke-direct {p0}, Lcom/google/android/play/analytics/EventLogger;->checkIfShouldUpload()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    invoke-static {v1}, Lcom/google/android/play/analytics/ProtoCache;->recycle(Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;)V

    goto :goto_0

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    const-string v2, "PlayEventLogger"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not write string ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") to file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    invoke-static {v1}, Lcom/google/android/play/analytics/ProtoCache;->recycle(Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;)V

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/google/android/play/analytics/ProtoCache;->recycle(Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;)V

    throw v2
.end method

.method private checkIfShouldUpload()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/android/play/analytics/EventLogger;->mRollingFileStream:Lcom/google/android/play/analytics/RollingFileStream;

    invoke-virtual {v0}, Lcom/google/android/play/analytics/RollingFileStream;->hasFileReadyToSend()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/play/analytics/EventLogger;->queueUpload(J)V

    .line 295
    :cond_0
    return-void
.end method

.method private getGservicesValue(Ljava/lang/String;JJ)J
    .locals 3
    .parameter "key"
    .parameter "defaultValue"
    .parameter "minValue"

    .prologue
    .line 220
    iget-object v2, p0, Lcom/google/android/play/analytics/EventLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, p2, p3}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 221
    .local v0, value:J
    cmp-long v2, v0, p4

    if-gtz v2, :cond_0

    .line 222
    move-wide v0, p2

    .line 224
    :cond_0
    return-wide v0
.end method

.method private loadFileImpl(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 324
    iget-boolean v1, p0, Lcom/google/android/play/analytics/EventLogger;->mIsLoggingEnabled:Z

    if-nez v1, :cond_0

    .line 326
    const-string v1, "PlayEventLogger"

    const-string v2, "loadFileImpl: not continuing since logging disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :goto_0
    return-void

    .line 332
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/analytics/EventLogger;->mRollingFileStream:Lcom/google/android/play/analytics/RollingFileStream;

    invoke-virtual {v1}, Lcom/google/android/play/analytics/RollingFileStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/play/analytics/EventLogger;->mOutputStream:Ljava/io/OutputStream;

    .line 333
    iget-object v1, p0, Lcom/google/android/play/analytics/EventLogger;->mOutputStream:Ljava/io/OutputStream;

    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->newInstance(Ljava/io/OutputStream;)Lcom/google/protobuf/micro/CodedOutputStreamMicro;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/play/analytics/EventLogger;->mProtoWriter:Lcom/google/protobuf/micro/CodedOutputStreamMicro;

    .line 336
    const-string v1, "PlayEventLogger"

    const-string v2, "loadFileImpl succeeded"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, e:Ljava/io/IOException;
    const-string v1, "PlayEventLogger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not open log file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private queueUpload(J)V
    .locals 10
    .parameter "delay"

    .prologue
    const/4 v8, 0x3

    const-wide/16 v4, 0x0

    .line 271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v2, p1, v4

    if-lez v2, :cond_1

    move-wide v2, p1

    :goto_0
    add-long v0, v6, v2

    .line 272
    .local v0, scheduledUpload:J
    iget-wide v2, p0, Lcom/google/android/play/analytics/EventLogger;->mNextAllowedUploadTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 273
    iget-wide v2, p0, Lcom/google/android/play/analytics/EventLogger;->mNextAllowedUploadTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long p1, v2, v6

    .line 275
    :cond_0
    cmp-long v2, p1, v4

    if-lez v2, :cond_2

    .line 276
    invoke-virtual {p0, v8, p1, p2}, Lcom/google/android/play/analytics/EventLogger;->sendEmptyMessageDelayed(IJ)Z

    .line 282
    :goto_1
    const-string v2, "PlayEventLogger"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Upload queued for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-wide v2, p0, Lcom/google/android/play/analytics/EventLogger;->mNextAllowedUploadTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/android/play/analytics/EventLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "play_event_logging_min_delay"

    const-wide/32 v8, 0xea60

    invoke-static {v6, v7, v8, v9}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/play/analytics/EventLogger;->mNextAllowedUploadTime:J

    .line 289
    return-void

    .end local v0           #scheduledUpload:J
    :cond_1
    move-wide v2, v4

    .line 271
    goto :goto_0

    .line 278
    .restart local v0       #scheduledUpload:J
    :cond_2
    invoke-virtual {p0, v8}, Lcom/google/android/play/analytics/EventLogger;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method private uploadEventsImpl()V
    .locals 11

    .prologue
    .line 367
    iget-object v7, p0, Lcom/google/android/play/analytics/EventLogger;->mProtoWriter:Lcom/google/protobuf/micro/CodedOutputStreamMicro;

    if-nez v7, :cond_1

    .line 369
    const-string v7, "PlayEventLogger"

    const-string v8, "uploadEventsImpl: not continuing since proto writer was null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    iget-object v6, p0, Lcom/google/android/play/analytics/EventLogger;->mUploadAccount:Landroid/accounts/Account;

    .line 376
    .local v6, uploadAccount:Landroid/accounts/Account;
    const/4 v3, 0x0

    .line 377
    .local v3, fileInputStream:Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 380
    .local v0, canDeleteLog:Z
    if-nez v6, :cond_2

    .line 381
    :try_start_0
    const-string v7, "PlayEventLogger"

    const-string v8, "No account available for uploading logs.  Skipping upload"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 429
    if-eqz v3, :cond_0

    .line 431
    :try_start_1
    iget-object v7, p0, Lcom/google/android/play/analytics/EventLogger;->mRollingFileStream:Lcom/google/android/play/analytics/RollingFileStream;

    invoke-virtual {v7, v3, v0}, Lcom/google/android/play/analytics/RollingFileStream;->closeInputStream(Ljava/io/InputStream;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 432
    :catch_0
    move-exception v1

    .line 433
    .local v1, e:Ljava/io/IOException;
    const-string v7, "PlayEventLogger"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error closing input stream: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 385
    .end local v1           #e:Ljava/io/IOException;
    :cond_2
    :try_start_2
    iget-object v7, p0, Lcom/google/android/play/analytics/EventLogger;->mRollingFileStream:Lcom/google/android/play/analytics/RollingFileStream;

    invoke-virtual {v7}, Lcom/google/android/play/analytics/RollingFileStream;->hasFileReadyToSend()Z

    move-result v7

    if-nez v7, :cond_3

    .line 387
    const-string v7, "PlayEventLogger"

    const-string v8, "uploadEventsImpl: no file ready to send"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 429
    if-eqz v3, :cond_0

    .line 431
    :try_start_3
    iget-object v7, p0, Lcom/google/android/play/analytics/EventLogger;->mRollingFileStream:Lcom/google/android/play/analytics/RollingFileStream;

    invoke-virtual {v7, v3, v0}, Lcom/google/android/play/analytics/RollingFileStream;->closeInputStream(Ljava/io/InputStream;Z)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 432
    :catch_1
    move-exception v1

    .line 433
    .restart local v1       #e:Ljava/io/IOException;
    const-string v7, "PlayEventLogger"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error closing input stream: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 393
    .end local v1           #e:Ljava/io/IOException;
    :cond_3
    :try_start_4
    const-string v7, "PlayEventLogger"

    const-string v8, "loadFileImpl: uploading Events"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    new-instance v4, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;

    invoke-direct {v4}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;-><init>()V

    .line 396
    .local v4, logRequest:Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v7}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->setSdkVersion(I)Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;

    .line 397
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->setModel(Ljava/lang/String;)Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;

    .line 398
    sget-object v7, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->setBuildId(Ljava/lang/String;)Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;

    .line 399
    iget-object v7, p0, Lcom/google/android/play/analytics/EventLogger;->mLoggingId:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 400
    iget-object v7, p0, Lcom/google/android/play/analytics/EventLogger;->mLoggingId:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->setLoggingId(Ljava/lang/String;)Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;

    .line 402
    :cond_4
    iget-object v7, p0, Lcom/google/android/play/analytics/EventLogger;->mAndroidId:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->setAndroidId(Ljava/lang/String;)Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;

    .line 403
    iget v7, p0, Lcom/google/android/play/analytics/EventLogger;->mLogSource:I

    invoke-virtual {v4, v7}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->setLogSource(I)Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;

    .line 406
    const-string v7, "PlayEventLogger"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "uploadLog: logrequest created with: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->getClickEventList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " events"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 411
    :try_start_5
    iget-object v7, p0, Lcom/google/android/play/analytics/EventLogger;->mRollingFileStream:Lcom/google/android/play/analytics/RollingFileStream;

    invoke-virtual {v7}, Lcom/google/android/play/analytics/RollingFileStream;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 412
    invoke-static {v3}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->newInstance(Ljava/io/InputStream;)Lcom/google/protobuf/micro/CodedInputStreamMicro;

    move-result-object v5

    .line 414
    .local v5, protoInput:Lcom/google/protobuf/micro/CodedInputStreamMicro;
    :goto_1
    invoke-virtual {v5}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->isAtEnd()Z

    move-result v7

    if-nez v7, :cond_5

    .line 415
    invoke-static {}, Lcom/google/android/play/analytics/ProtoCache;->obtainEvent()Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;

    move-result-object v2

    .line 416
    .local v2, event:Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;
    invoke-virtual {v5, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 417
    invoke-virtual {v4, v2}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->addClickEvent(Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;)Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 420
    .end local v2           #event:Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;
    .end local v5           #protoInput:Lcom/google/protobuf/micro/CodedInputStreamMicro;
    :catch_2
    move-exception v1

    .line 421
    .restart local v1       #e:Ljava/io/IOException;
    :try_start_6
    const-string v7, "PlayEventLogger"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error reading file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 422
    const/4 v0, 0x1

    .line 425
    :try_start_7
    invoke-static {v4}, Lcom/google/android/play/analytics/ProtoCache;->recycleLogRequest(Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 429
    if-eqz v3, :cond_0

    .line 431
    :try_start_8
    iget-object v7, p0, Lcom/google/android/play/analytics/EventLogger;->mRollingFileStream:Lcom/google/android/play/analytics/RollingFileStream;

    invoke-virtual {v7, v3, v0}, Lcom/google/android/play/analytics/RollingFileStream;->closeInputStream(Ljava/io/InputStream;Z)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    .line 432
    :catch_3
    move-exception v1

    .line 433
    const-string v7, "PlayEventLogger"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error closing input stream: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 419
    .end local v1           #e:Ljava/io/IOException;
    .restart local v5       #protoInput:Lcom/google/protobuf/micro/CodedInputStreamMicro;
    :cond_5
    :try_start_9
    invoke-virtual {p0, v6, v4}, Lcom/google/android/play/analytics/EventLogger;->uploadLog(Landroid/accounts/Account;Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    move-result v0

    .line 425
    :try_start_a
    invoke-static {v4}, Lcom/google/android/play/analytics/ProtoCache;->recycleLogRequest(Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 429
    if-eqz v3, :cond_0

    .line 431
    :try_start_b
    iget-object v7, p0, Lcom/google/android/play/analytics/EventLogger;->mRollingFileStream:Lcom/google/android/play/analytics/RollingFileStream;

    invoke-virtual {v7, v3, v0}, Lcom/google/android/play/analytics/RollingFileStream;->closeInputStream(Ljava/io/InputStream;Z)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_0

    .line 432
    :catch_4
    move-exception v1

    .line 433
    .restart local v1       #e:Ljava/io/IOException;
    const-string v7, "PlayEventLogger"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error closing input stream: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 425
    .end local v1           #e:Ljava/io/IOException;
    .end local v5           #protoInput:Lcom/google/protobuf/micro/CodedInputStreamMicro;
    :catchall_0
    move-exception v7

    :try_start_c
    invoke-static {v4}, Lcom/google/android/play/analytics/ProtoCache;->recycleLogRequest(Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;)V

    throw v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 429
    .end local v4           #logRequest:Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;
    :catchall_1
    move-exception v7

    if-eqz v3, :cond_6

    .line 431
    :try_start_d
    iget-object v8, p0, Lcom/google/android/play/analytics/EventLogger;->mRollingFileStream:Lcom/google/android/play/analytics/RollingFileStream;

    invoke-virtual {v8, v3, v0}, Lcom/google/android/play/analytics/RollingFileStream;->closeInputStream(Ljava/io/InputStream;Z)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    .line 434
    :cond_6
    :goto_2
    throw v7

    .line 432
    :catch_5
    move-exception v1

    .line 433
    .restart local v1       #e:Ljava/io/IOException;
    const-string v8, "PlayEventLogger"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error closing input stream: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/google/android/play/analytics/EventLogger;->mIsLoggingEnabled:Z

    if-nez v0, :cond_0

    .line 321
    :goto_0
    return-void

    .line 302
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 319
    const-string v0, "PlayEventLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 304
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/play/analytics/EventLogger;->loadFileImpl(Landroid/os/Message;)V

    .line 305
    iget-wide v0, p0, Lcom/google/android/play/analytics/EventLogger;->mDelayBetweenUploadsMs:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/play/analytics/EventLogger;->queueUpload(J)V

    goto :goto_0

    .line 308
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/google/android/play/analytics/EventLogger;->addEventImpl(Landroid/os/Message;)V

    goto :goto_0

    .line 311
    :pswitch_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/play/analytics/EventLogger;->removeMessages(I)V

    .line 312
    invoke-direct {p0}, Lcom/google/android/play/analytics/EventLogger;->uploadEventsImpl()V

    .line 313
    iget-wide v0, p0, Lcom/google/android/play/analytics/EventLogger;->mDelayBetweenUploadsMs:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/play/analytics/EventLogger;->queueUpload(J)V

    .line 316
    invoke-direct {p0}, Lcom/google/android/play/analytics/EventLogger;->checkIfShouldUpload()V

    goto :goto_0

    .line 302
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getAuthToken(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 5
    .parameter "account"

    .prologue
    const/4 v0, 0x0

    .line 487
    if-nez p1, :cond_0

    .line 488
    const-string v3, "PlayEventLogger"

    const-string v4, "No account for auth token provided"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :goto_0
    return-object v0

    .line 492
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/google/android/play/analytics/EventLogger;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 493
    .local v2, manager:Landroid/accounts/AccountManager;
    const-string v3, "androidmarket"

    const/4 v4, 0x1

    invoke-virtual {v2, p1, v3, v4}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 495
    .local v0, authToken:Ljava/lang/String;
    goto :goto_0

    .line 496
    .end local v0           #authToken:Ljava/lang/String;
    .end local v2           #manager:Landroid/accounts/AccountManager;
    :catch_0
    move-exception v1

    .line 497
    .local v1, e:Landroid/accounts/OperationCanceledException;
    const-string v3, "PlayEventLogger"

    invoke-virtual {v1}, Landroid/accounts/OperationCanceledException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 498
    .end local v1           #e:Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v1

    .line 499
    .local v1, e:Landroid/accounts/AuthenticatorException;
    const-string v3, "PlayEventLogger"

    invoke-virtual {v1}, Landroid/accounts/AuthenticatorException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 500
    .end local v1           #e:Landroid/accounts/AuthenticatorException;
    :catch_2
    move-exception v1

    .line 501
    .local v1, e:Ljava/io/IOException;
    const-string v3, "PlayEventLogger"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getDelayBetweenUploads()J
    .locals 6

    .prologue
    .line 187
    const-string v1, "play_event_logging_message_size"

    const-wide/32 v2, 0x493e0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/play/analytics/EventLogger;->getGservicesValue(Ljava/lang/String;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getMaxStoreSize()J
    .locals 6

    .prologue
    .line 199
    const-string v1, "play_event_logging_max_buffer_size"

    const-wide/32 v2, 0x200000

    const-wide/16 v4, 0x400

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/play/analytics/EventLogger;->getGservicesValue(Ljava/lang/String;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getNumberOfFiles()J
    .locals 6

    .prologue
    const-wide/16 v2, 0x2

    .line 182
    const-string v1, "play_event_logging_numfiles"

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/play/analytics/EventLogger;->getGservicesValue(Ljava/lang/String;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getRecommendedLogFileSize()J
    .locals 6

    .prologue
    .line 193
    const-string v1, "play_event_logging_message_size"

    const-wide/32 v2, 0xc800

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/play/analytics/EventLogger;->getGservicesValue(Ljava/lang/String;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getStoreFilenamePrefix()Ljava/lang/String;
    .locals 4

    .prologue
    .line 207
    invoke-static {}, Lcom/google/android/play/utils/PlayUtils;->getProcessName()Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, processName:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "eventlog.store"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    .local v1, fileName:Ljava/lang/StringBuilder;
    if-eqz v2, :cond_0

    .line 210
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 211
    .local v0, colonIndex:I
    if-lez v0, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    if-ge v0, v3, :cond_0

    .line 212
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .end local v0           #colonIndex:I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public varargs logEvent(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .parameter "tag"
    .parameter "extras"

    .prologue
    .line 244
    iget-boolean v3, p0, Lcom/google/android/play/analytics/EventLogger;->mIsLoggingEnabled:Z

    if-nez v3, :cond_0

    .line 268
    :goto_0
    return-void

    .line 249
    :cond_0
    const-string v3, "PlayEventLogger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "logEvent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    if-eqz p2, :cond_1

    array-length v3, p2

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 253
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Extras must be in the format <key>, <value>, <key>, <value>...  incorrect: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 256
    :cond_1
    invoke-static {}, Lcom/google/android/play/analytics/ProtoCache;->obtainEvent()Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;

    move-result-object v0

    .line 257
    .local v0, event:Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;->setEventTime(J)Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;

    .line 258
    invoke-virtual {v0, p1}, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;->setTag(Ljava/lang/String;)Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;

    .line 259
    if-eqz p2, :cond_3

    .line 260
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, p2

    if-ge v1, v3, :cond_3

    .line 261
    invoke-static {}, Lcom/google/android/play/analytics/ProtoCache;->obtainKeyValue()Lcom/google/android/play/analytics/ClientsAnalytics$LogEventKeyValues;

    move-result-object v2

    .line 262
    .local v2, keyValue:Lcom/google/android/play/analytics/ClientsAnalytics$LogEventKeyValues;
    aget-object v3, p2, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/play/analytics/ClientsAnalytics$LogEventKeyValues;->setKey(Ljava/lang/String;)Lcom/google/android/play/analytics/ClientsAnalytics$LogEventKeyValues;

    .line 263
    add-int/lit8 v3, v1, 0x1

    aget-object v3, p2, v3

    if-eqz v3, :cond_2

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p2, v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v2, v3}, Lcom/google/android/play/analytics/ClientsAnalytics$LogEventKeyValues;->setValue(Ljava/lang/String;)Lcom/google/android/play/analytics/ClientsAnalytics$LogEventKeyValues;

    .line 264
    invoke-virtual {v0, v2}, Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;->addValues(Lcom/google/android/play/analytics/ClientsAnalytics$LogEventKeyValues;)Lcom/google/android/play/analytics/ClientsAnalytics$LogEvent;

    .line 260
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 263
    :cond_2
    const-string v3, "null"

    goto :goto_2

    .line 267
    .end local v1           #i:I
    .end local v2           #keyValue:Lcom/google/android/play/analytics/ClientsAnalytics$LogEventKeyValues;
    :cond_3
    const/4 v3, 0x2

    invoke-virtual {p0, v3, v0}, Lcom/google/android/play/analytics/EventLogger;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/play/analytics/EventLogger;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method public setUploadAccount(Landroid/accounts/Account;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 234
    iput-object p1, p0, Lcom/google/android/play/analytics/EventLogger;->mUploadAccount:Landroid/accounts/Account;

    .line 235
    return-void
.end method

.method protected uploadLog(Landroid/accounts/Account;Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;)Z
    .locals 13
    .parameter "uploadAccount"
    .parameter "logRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 441
    const/4 v1, 0x0

    .line 442
    .local v1, canDeleteLog:Z
    invoke-virtual {p0, p1}, Lcom/google/android/play/analytics/EventLogger;->getAuthToken(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, authToken:Ljava/lang/String;
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    const-string v10, "https://android.clients.google.com/play/log"

    invoke-direct {v4, v10}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 444
    .local v4, post:Lorg/apache/http/client/methods/HttpPost;
    const-string v10, "Authorization"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "GoogleLogin auth="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    new-instance v10, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {p2}, Lcom/google/android/play/analytics/ClientsAnalytics$LogRequest;->toByteArray()[B

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v4, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 446
    iget-object v10, p0, Lcom/google/android/play/analytics/EventLogger;->mHttpClient:Lcom/google/android/volley/GoogleHttpClient;

    invoke-virtual {v10, v4}, Lcom/google/android/volley/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 447
    .local v5, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    .line 448
    .local v9, statusLine:Lorg/apache/http/StatusLine;
    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    .line 449
    .local v8, statusCode:I
    const/16 v10, 0xc8

    if-ne v8, v10, :cond_0

    .line 451
    const-string v10, "PlayEventLogger"

    const-string v11, "Successfully uploaded logs."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const/4 v1, 0x1

    .line 481
    :goto_0
    return v1

    .line 454
    :cond_0
    const/16 v10, 0x1f7

    if-ne v8, v10, :cond_1

    const-string v10, "Retry-After"

    invoke-interface {v5, v10}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 457
    :try_start_0
    const-string v10, "Retry-After"

    invoke-interface {v5, v10}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 459
    .local v6, retryAfterInSeconds:J
    const-string v10, "PlayEventLogger"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Server said to retry after "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " seconds"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    add-long/2addr v10, v6

    iput-wide v10, p0, Lcom/google/android/play/analytics/EventLogger;->mNextAllowedUploadTime:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 463
    .end local v6           #retryAfterInSeconds:J
    :catch_0
    move-exception v3

    .line 464
    .local v3, ne:Ljava/lang/NumberFormatException;
    const-string v10, "PlayEventLogger"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown retry value: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Retry-After"

    invoke-interface {v5, v12}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 467
    .end local v3           #ne:Ljava/lang/NumberFormatException;
    :cond_1
    const/16 v10, 0x190

    if-ne v8, v10, :cond_2

    .line 468
    const-string v10, "PlayEventLogger"

    const-string v11, "Server returned 400... deleting local malformed logs"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const/4 v1, 0x1

    goto :goto_0

    .line 470
    :cond_2
    const/16 v10, 0x191

    if-ne v8, v10, :cond_3

    .line 471
    const-string v10, "PlayEventLogger"

    const-string v11, "Server returned 401... invalidating auth token"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v10, p0, Lcom/google/android/play/analytics/EventLogger;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 473
    .local v2, manager:Landroid/accounts/AccountManager;
    iget-object v10, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v10, v0}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const/4 v1, 0x0

    .line 475
    goto/16 :goto_0

    .line 476
    .end local v2           #manager:Landroid/accounts/AccountManager;
    :cond_3
    const-string v10, "PlayEventLogger"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error received from server: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
