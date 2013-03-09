.class public Lcom/google/android/apps/uploader/UploadService;
.super Landroid/app/Service;
.source "UploadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/uploader/UploadService$DataConnectionStateListener;,
        Lcom/google/android/apps/uploader/UploadService$ProgressListener;,
        Lcom/google/android/apps/uploader/UploadService$UploadServiceBinder;
    }
.end annotation


# static fields
.field private static final PROGRESS_UPDATE_TIMEOUT:J = 0xea60L


# instance fields
.field private application:Lcom/google/android/apps/uploader/UploaderApplication;

.field private binder:Landroid/os/IBinder;

.field private currentConnector:Lcom/google/android/apps/uploader/UploadConnector;

.field private dataConnected:Z

.field private dataConnectionStateListener:Lcom/google/android/apps/uploader/UploadService$DataConnectionStateListener;

.field private intentParser:Lcom/google/android/apps/uploader/UploadIntentParser;

.field private lastProgressUpdate:J

.field private notificationManager:Lcom/google/android/apps/uploader/UploadsNotificationManager;

.field private pauseBlocker:Landroid/os/ConditionVariable;

.field private paused:Z

.field private progressListener:Lcom/google/android/apps/uploader/UploadService$ProgressListener;

.field private queue:Lcom/google/android/apps/uploader/UploadsQueue;

.field private retryPolicy:Lcom/google/android/apps/uploader/RetryPolicy;

.field private secondChance:Z

.field private uploadBlocker:Landroid/os/ConditionVariable;

.field private uploadThread:Ljava/lang/Thread;

.field private wifiConnected:Z

.field private wifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 258
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->uploadBlocker:Landroid/os/ConditionVariable;

    .line 522
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/apps/uploader/UploadService;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/apps/uploader/UploadService;->cancelCurrentUpload()V

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/apps/uploader/UploadService;J)J
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/google/android/apps/uploader/UploadService;->lastProgressUpdate:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/UploadsQueue;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->queue:Lcom/google/android/apps/uploader/UploadsQueue;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/UploadService$ProgressListener;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->progressListener:Lcom/google/android/apps/uploader/UploadService$ProgressListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/RetryPolicy;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->retryPolicy:Lcom/google/android/apps/uploader/RetryPolicy;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/uploader/UploadService;)Landroid/os/ConditionVariable;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->uploadBlocker:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/android/apps/uploader/UploadService;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/google/android/apps/uploader/UploadService;->secondChance:Z

    return p1
.end method

.method static synthetic access$700(Lcom/google/android/apps/uploader/UploadService;)Z
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/google/android/apps/uploader/UploadService;->dataConnected:Z

    return v0
.end method

.method static synthetic access$702(Lcom/google/android/apps/uploader/UploadService;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/google/android/apps/uploader/UploadService;->dataConnected:Z

    return p1
.end method

.method static synthetic access$800(Lcom/google/android/apps/uploader/UploadService;)Z
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/google/android/apps/uploader/UploadService;->wifiConnected:Z

    return v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/UploadsNotificationManager;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->notificationManager:Lcom/google/android/apps/uploader/UploadsNotificationManager;

    return-object v0
.end method

.method private declared-synchronized cancelCurrentUpload()V
    .locals 1

    .prologue
    .line 437
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->currentConnector:Lcom/google/android/apps/uploader/UploadConnector;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->currentConnector:Lcom/google/android/apps/uploader/UploadConnector;

    invoke-interface {v0}, Lcom/google/android/apps/uploader/UploadConnector;->cancelCurrentUploadRequest()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    :cond_0
    monitor-exit p0

    return-void

    .line 437
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getUploadConnector(Ljava/lang/String;)Lcom/google/android/apps/uploader/UploadConnector;
    .locals 2
    .parameter

    .prologue
    .line 168
    const-string v0, "youtube.com/resumable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "resumable/photos"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    :cond_0
    new-instance v0, Lcom/google/android/apps/uploader/GDataUploadConnector;

    iget-object v1, p0, Lcom/google/android/apps/uploader/UploadService;->application:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/UploaderApplication;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/uploader/GDataUploadConnector;-><init>(Lorg/apache/http/client/HttpClient;)V

    .line 171
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/apps/uploader/MasfUploadConnector;

    iget-object v1, p0, Lcom/google/android/apps/uploader/UploadService;->application:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-direct {v0, v1}, Lcom/google/android/apps/uploader/MasfUploadConnector;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private handleNewUpload(Lcom/google/android/apps/uploader/UploadInfo;)V
    .locals 3
    .parameter

    .prologue
    .line 150
    invoke-direct {p0, p1}, Lcom/google/android/apps/uploader/UploadService;->initState(Lcom/google/android/apps/uploader/UploadInfo;)V

    .line 151
    monitor-enter p0

    .line 152
    :try_start_0
    const-string v0, "MediaUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UploadService adding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->queue:Lcom/google/android/apps/uploader/UploadsQueue;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/UploadsQueue;->add(Lcom/google/android/apps/uploader/UploadInfo;)V

    .line 154
    monitor-exit p0

    .line 155
    return-void

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleRetryUpload(Lcom/google/android/apps/uploader/UploadInfo;)V
    .locals 3
    .parameter

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/google/android/apps/uploader/UploadService;->initState(Lcom/google/android/apps/uploader/UploadInfo;)V

    .line 159
    monitor-enter p0

    .line 160
    :try_start_0
    const-string v0, "MediaUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UploadService will retry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->queue:Lcom/google/android/apps/uploader/UploadsQueue;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/UploadsQueue;->updateState(Lcom/google/android/apps/uploader/UploadInfo;)V

    .line 162
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->retryPolicy:Lcom/google/android/apps/uploader/RetryPolicy;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/RetryPolicy;->resetAndOpen()V

    .line 163
    monitor-exit p0

    .line 164
    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initState(Lcom/google/android/apps/uploader/UploadInfo;)V
    .locals 1
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->application:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/UploaderApplication;->needsWifi(Lcom/google/android/apps/uploader/UploadInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/apps/uploader/UploadService;->wifiConnected:Z

    if-nez v0, :cond_0

    .line 143
    sget-object v0, Lcom/google/android/apps/uploader/UploadInfo$UploadState;->WAITING_FOR_WIFI:Lcom/google/android/apps/uploader/UploadInfo$UploadState;

    invoke-virtual {p1, v0}, Lcom/google/android/apps/uploader/UploadInfo;->setState(Lcom/google/android/apps/uploader/UploadInfo$UploadState;)V

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    sget-object v0, Lcom/google/android/apps/uploader/UploadInfo$UploadState;->QUEUED:Lcom/google/android/apps/uploader/UploadInfo$UploadState;

    invoke-virtual {p1, v0}, Lcom/google/android/apps/uploader/UploadInfo;->setState(Lcom/google/android/apps/uploader/UploadInfo$UploadState;)V

    goto :goto_0
.end method

.method private declared-synchronized updateWifiState()V
    .locals 2

    .prologue
    .line 503
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->application:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploaderApplication;->wifiConnected()Z

    move-result v0

    .line 505
    iget-boolean v1, p0, Lcom/google/android/apps/uploader/UploadService;->wifiConnected:Z

    if-eq v0, v1, :cond_0

    .line 506
    iput-boolean v0, p0, Lcom/google/android/apps/uploader/UploadService;->wifiConnected:Z

    .line 507
    iget-boolean v0, p0, Lcom/google/android/apps/uploader/UploadService;->wifiConnected:Z

    if-eqz v0, :cond_1

    .line 508
    const-string v0, "MediaUploader"

    const-string v1, "Acquring WiFi lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 517
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->queue:Lcom/google/android/apps/uploader/UploadsQueue;

    iget-boolean v1, p0, Lcom/google/android/apps/uploader/UploadService;->wifiConnected:Z

    invoke-virtual {v0, v1}, Lcom/google/android/apps/uploader/UploadsQueue;->updatePendingWifi(Z)V

    .line 518
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->uploadBlocker:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    :cond_0
    monitor-exit p0

    return-void

    .line 511
    :cond_1
    :try_start_1
    const-string v0, "MediaUploader"

    const-string v1, "Releasing WiFi lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 515
    invoke-direct {p0}, Lcom/google/android/apps/uploader/UploadService;->cancelCurrentUpload()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 503
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private upload(Lcom/google/android/apps/uploader/UploadInfo;)V
    .locals 8
    .parameter

    .prologue
    const-wide/32 v6, 0xea60

    .line 281
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/UploadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/UploadInfo;->getFileUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 292
    new-instance v5, Lcom/google/android/apps/uploader/UploadService$1;

    invoke-direct {v5, p0, p1}, Lcom/google/android/apps/uploader/UploadService$1;-><init>(Lcom/google/android/apps/uploader/UploadService;Lcom/google/android/apps/uploader/UploadInfo;)V

    .line 387
    monitor-enter p0

    .line 388
    :try_start_1
    sget-object v0, Lcom/google/android/apps/uploader/UploadInfo$UploadState;->UPLOADING:Lcom/google/android/apps/uploader/UploadInfo$UploadState;

    invoke-virtual {p1, v0}, Lcom/google/android/apps/uploader/UploadInfo;->setState(Lcom/google/android/apps/uploader/UploadInfo$UploadState;)V

    .line 389
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->queue:Lcom/google/android/apps/uploader/UploadsQueue;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/UploadsQueue;->updateState(Lcom/google/android/apps/uploader/UploadInfo;)V

    .line 390
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->notificationManager:Lcom/google/android/apps/uploader/UploadsNotificationManager;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/UploadsNotificationManager;->showUploadState(Lcom/google/android/apps/uploader/UploadInfo;)V

    .line 392
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->uploadBlocker:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 393
    invoke-virtual {p1}, Lcom/google/android/apps/uploader/UploadInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/uploader/UploadService;->getUploadConnector(Ljava/lang/String;)Lcom/google/android/apps/uploader/UploadConnector;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->currentConnector:Lcom/google/android/apps/uploader/UploadConnector;

    .line 394
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->currentConnector:Lcom/google/android/apps/uploader/UploadConnector;

    iget-object v1, p0, Lcom/google/android/apps/uploader/UploadService;->application:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/UploadInfo;->getAuthTokenType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/apps/uploader/UploaderApplication;->getAuthorizer(Ljava/lang/String;)Lcom/google/android/apps/uploader/Authorizer;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/apps/uploader/UploadService;->secondChance:Z

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/apps/uploader/UploadConnector;->makeUploadRequest(Lcom/google/android/apps/uploader/UploadInfo;Ljava/io/InputStream;Lcom/google/android/apps/uploader/Authorizer;ZLcom/google/android/apps/uploader/UploadConnector$UploadListener;)V

    .line 400
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/uploader/UploadService;->lastProgressUpdate:J

    .line 401
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/uploader/UploadService;->secondChance:Z

    .line 402
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 404
    const-string v0, "MediaUploader"

    const-string v1, "Waiting for upload request ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->uploadBlocker:Landroid/os/ConditionVariable;

    invoke-virtual {v0, v6, v7}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    monitor-enter p0

    .line 408
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/google/android/apps/uploader/UploadService;->lastProgressUpdate:J

    sub-long/2addr v0, v3

    cmp-long v0, v0, v6

    if-lez v0, :cond_3

    .line 409
    const-string v0, "MediaUploader"

    const-string v1, "Progress update timed out, notifying as a network failure"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const/4 v0, 0x0

    invoke-interface {v5, v0}, Lcom/google/android/apps/uploader/UploadConnector$UploadListener;->onUploadNetworkFailure(Lcom/google/android/apps/uploader/NetworkException;)V

    .line 411
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 415
    :cond_0
    const-string v0, "MediaUploader"

    const-string v1, "... continuing after upload request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    if-eqz v2, :cond_1

    .line 419
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 426
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/google/android/apps/uploader/UploadService;->secondChance:Z

    if-eqz v0, :cond_2

    .line 427
    const-string v0, "MediaUploader"

    const-string v1, "Going for a second chance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-direct {p0, p1}, Lcom/google/android/apps/uploader/UploadService;->upload(Lcom/google/android/apps/uploader/UploadInfo;)V

    .line 431
    :cond_2
    :goto_2
    return-void

    .line 282
    :catch_0
    move-exception v0

    .line 284
    const-string v1, "MediaUploader"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    sget-object v0, Lcom/google/android/apps/uploader/UploadInfo$UploadState;->FAILED:Lcom/google/android/apps/uploader/UploadInfo$UploadState;

    const v1, 0x7f06002a

    invoke-virtual {p0, v1}, Lcom/google/android/apps/uploader/UploadService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/apps/uploader/UploadInfo;->setState(Lcom/google/android/apps/uploader/UploadInfo$UploadState;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->queue:Lcom/google/android/apps/uploader/UploadsQueue;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/UploadsQueue;->updateState(Lcom/google/android/apps/uploader/UploadInfo;)V

    .line 287
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->notificationManager:Lcom/google/android/apps/uploader/UploadsNotificationManager;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/UploadsNotificationManager;->showUploadState(Lcom/google/android/apps/uploader/UploadInfo;)V

    goto :goto_2

    .line 402
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 413
    :cond_3
    :try_start_5
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 421
    :catch_1
    move-exception v0

    .line 422
    const-string v1, "MediaUploader"

    const-string v2, "Couldn\'t close stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private wakeUp()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->uploadThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 180
    const-string v0, "MediaUploader"

    const-string v1, "UploadService starting new thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->uploadThread:Ljava/lang/Thread;

    .line 182
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->uploadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 184
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized cancelUpload(Lcom/google/android/apps/uploader/UploadInfo;)V
    .locals 3
    .parameter

    .prologue
    .line 447
    monitor-enter p0

    :try_start_0
    const-string v0, "MediaUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Canceling upload "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->queue:Lcom/google/android/apps/uploader/UploadsQueue;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/UploadsQueue;->delete(Lcom/google/android/apps/uploader/UploadInfo;)V

    .line 450
    invoke-virtual {p1}, Lcom/google/android/apps/uploader/UploadInfo;->isCurrent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    invoke-direct {p0}, Lcom/google/android/apps/uploader/UploadService;->cancelCurrentUpload()V

    .line 452
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->uploadBlocker:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 453
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->retryPolicy:Lcom/google/android/apps/uploader/RetryPolicy;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/RetryPolicy;->resetAndOpen()V

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->queue:Lcom/google/android/apps/uploader/UploadsQueue;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploadsQueue;->getPendingCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 457
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->notificationManager:Lcom/google/android/apps/uploader/UploadsNotificationManager;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploadsNotificationManager;->clear()V

    .line 458
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/UploadService;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 461
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/UploadService;->resume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 465
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/apps/uploader/UploadService;->wakeUp()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 447
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPaused()Z
    .locals 1

    .prologue
    .line 497
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/uploader/UploadService;->paused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->binder:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Lcom/google/android/apps/uploader/UploadService$UploadServiceBinder;

    invoke-direct {v0, p0}, Lcom/google/android/apps/uploader/UploadService$UploadServiceBinder;-><init>(Lcom/google/android/apps/uploader/UploadService;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->binder:Landroid/os/IBinder;

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 76
    const-string v0, "MediaUploader"

    const-string v1, "UploadService.onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/UploadService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/UploaderApplication;

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->application:Lcom/google/android/apps/uploader/UploaderApplication;

    .line 79
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->application:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploaderApplication;->initMasf()V

    .line 80
    new-instance v0, Lcom/google/android/apps/uploader/UploadIntentParser;

    invoke-direct {v0, p0}, Lcom/google/android/apps/uploader/UploadIntentParser;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->intentParser:Lcom/google/android/apps/uploader/UploadIntentParser;

    .line 81
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->application:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploaderApplication;->getQueue()Lcom/google/android/apps/uploader/UploadsQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->queue:Lcom/google/android/apps/uploader/UploadsQueue;

    .line 82
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->application:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploaderApplication;->getNotificationManager()Lcom/google/android/apps/uploader/UploadsNotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->notificationManager:Lcom/google/android/apps/uploader/UploadsNotificationManager;

    .line 84
    new-instance v0, Lcom/google/android/apps/uploader/RetryPolicy;

    invoke-direct {v0}, Lcom/google/android/apps/uploader/RetryPolicy;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->retryPolicy:Lcom/google/android/apps/uploader/RetryPolicy;

    .line 85
    new-instance v0, Lcom/google/android/apps/uploader/UploadService$DataConnectionStateListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/uploader/UploadService$DataConnectionStateListener;-><init>(Lcom/google/android/apps/uploader/UploadService;Lcom/google/android/apps/uploader/UploadService$1;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->dataConnectionStateListener:Lcom/google/android/apps/uploader/UploadService$DataConnectionStateListener;

    .line 86
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->dataConnectionStateListener:Lcom/google/android/apps/uploader/UploadService$DataConnectionStateListener;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploadService$DataConnectionStateListener;->register()V

    .line 88
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/UploadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 89
    const-string v1, "MediaUploader"

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 90
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 93
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->pauseBlocker:Landroid/os/ConditionVariable;

    .line 96
    invoke-direct {p0}, Lcom/google/android/apps/uploader/UploadService;->updateWifiState()V

    .line 97
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 226
    const-string v0, "MediaUploader"

    const-string v1, "UploadService.onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 101
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 102
    const-string v0, "MediaUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UploadService.onStart "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    if-nez p1, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->intentParser:Lcom/google/android/apps/uploader/UploadIntentParser;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/UploadIntentParser;->isSingleUploadIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 108
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->intentParser:Lcom/google/android/apps/uploader/UploadIntentParser;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/UploadIntentParser;->parseSingleUploadIntent(Landroid/content/Intent;)Lcom/google/android/apps/uploader/UploadInfo;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_2

    .line 112
    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploadInfo;->getState()Lcom/google/android/apps/uploader/UploadInfo$UploadState;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/uploader/UploadInfo$UploadState;->NEW:Lcom/google/android/apps/uploader/UploadInfo$UploadState;

    if-ne v1, v2, :cond_4

    .line 113
    invoke-direct {p0, v0}, Lcom/google/android/apps/uploader/UploadService;->handleNewUpload(Lcom/google/android/apps/uploader/UploadInfo;)V

    .line 117
    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->application:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/uploader/UploaderApplication;->setWakeUpPref(Z)V

    .line 129
    :cond_2
    :goto_2
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 131
    invoke-direct {p0}, Lcom/google/android/apps/uploader/UploadService;->updateWifiState()V

    .line 134
    :cond_3
    invoke-direct {p0}, Lcom/google/android/apps/uploader/UploadService;->wakeUp()V

    .line 136
    iget-boolean v0, p0, Lcom/google/android/apps/uploader/UploadService;->paused:Z

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->notificationManager:Lcom/google/android/apps/uploader/UploadsNotificationManager;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploadsNotificationManager;->showPaused()V

    goto :goto_0

    .line 115
    :cond_4
    invoke-direct {p0, v0}, Lcom/google/android/apps/uploader/UploadService;->handleRetryUpload(Lcom/google/android/apps/uploader/UploadInfo;)V

    goto :goto_1

    .line 119
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->intentParser:Lcom/google/android/apps/uploader/UploadIntentParser;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/UploadIntentParser;->isMultipleUploadIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->intentParser:Lcom/google/android/apps/uploader/UploadIntentParser;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/UploadIntentParser;->parseMultipleUploadIntent(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_2

    .line 122
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/UploadInfo;

    .line 123
    invoke-direct {p0, v0}, Lcom/google/android/apps/uploader/UploadService;->handleNewUpload(Lcom/google/android/apps/uploader/UploadInfo;)V

    goto :goto_3

    .line 125
    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->application:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/uploader/UploaderApplication;->setWakeUpPref(Z)V

    goto :goto_2
.end method

.method public declared-synchronized pause()V
    .locals 2

    .prologue
    .line 474
    monitor-enter p0

    :try_start_0
    const-string v0, "MediaUploader"

    const-string v1, "Pause on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/uploader/UploadService;->paused:Z

    .line 477
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->pauseBlocker:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 479
    invoke-direct {p0}, Lcom/google/android/apps/uploader/UploadService;->cancelCurrentUpload()V

    .line 480
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->uploadBlocker:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 481
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->retryPolicy:Lcom/google/android/apps/uploader/RetryPolicy;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/RetryPolicy;->resetAndOpen()V

    .line 483
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->notificationManager:Lcom/google/android/apps/uploader/UploadsNotificationManager;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploadsNotificationManager;->showPaused()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    monitor-exit p0

    return-void

    .line 474
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resume()V
    .locals 2

    .prologue
    .line 487
    monitor-enter p0

    :try_start_0
    const-string v0, "MediaUploader"

    const-string v1, "Pause off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/uploader/UploadService;->paused:Z

    .line 490
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->pauseBlocker:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 493
    invoke-direct {p0}, Lcom/google/android/apps/uploader/UploadService;->wakeUp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    monitor-exit p0

    return-void

    .line 487
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    move v0, v3

    .line 191
    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/uploader/UploadService;->retryPolicy:Lcom/google/android/apps/uploader/RetryPolicy;

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/RetryPolicy;->block()V

    .line 193
    iget-object v1, p0, Lcom/google/android/apps/uploader/UploadService;->pauseBlocker:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    .line 195
    iget-object v1, p0, Lcom/google/android/apps/uploader/UploadService;->queue:Lcom/google/android/apps/uploader/UploadsQueue;

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/UploadsQueue;->getFirstPending()Lcom/google/android/apps/uploader/UploadInfo;

    move-result-object v1

    .line 196
    if-eqz v1, :cond_4

    .line 197
    iget-object v2, p0, Lcom/google/android/apps/uploader/UploadService;->application:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/uploader/UploaderApplication;->needsWifi(Lcom/google/android/apps/uploader/UploadInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/apps/uploader/UploadService;->wifiConnected:Z

    if-eqz v2, :cond_2

    .line 198
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/apps/uploader/UploadService;->upload(Lcom/google/android/apps/uploader/UploadInfo;)V

    .line 199
    add-int/lit8 v0, v0, 0x1

    move-object v5, v1

    move v1, v0

    move-object v0, v5

    .line 207
    :goto_1
    if-nez v0, :cond_3

    .line 208
    iput-object v4, p0, Lcom/google/android/apps/uploader/UploadService;->uploadThread:Ljava/lang/Thread;

    .line 210
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->queue:Lcom/google/android/apps/uploader/UploadsQueue;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploadsQueue;->getPendingCount()I

    move-result v0

    if-nez v0, :cond_1

    if-lez v1, :cond_1

    .line 213
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->notificationManager:Lcom/google/android/apps/uploader/UploadsNotificationManager;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploadsNotificationManager;->showFinished()V

    .line 214
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->application:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/uploader/UploaderApplication;->setWakeUpPref(Z)V

    .line 217
    :cond_1
    const-string v0, "MediaUploader"

    const-string v1, "Releasing WiFi lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 220
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/UploadService;->stopSelf()V

    .line 221
    const-string v0, "MediaUploader"

    const-string v1, "UploadService stopping self"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return-void

    .line 202
    :cond_2
    iget-object v2, p0, Lcom/google/android/apps/uploader/UploadService;->notificationManager:Lcom/google/android/apps/uploader/UploadsNotificationManager;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/uploader/UploadsNotificationManager;->showUploadState(Lcom/google/android/apps/uploader/UploadInfo;)V

    move v1, v0

    move-object v0, v4

    .line 203
    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move-object v5, v1

    move v1, v0

    move-object v0, v5

    goto :goto_1
.end method

.method public setProgressListener(Lcom/google/android/apps/uploader/UploadService$ProgressListener;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/google/android/apps/uploader/UploadService;->progressListener:Lcom/google/android/apps/uploader/UploadService$ProgressListener;

    .line 251
    return-void
.end method
