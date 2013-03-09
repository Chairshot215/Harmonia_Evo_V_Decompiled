.class public Lcom/android/providers/downloads/DownloadThread;
.super Ljava/lang/Thread;
.source "DownloadThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/DownloadThread$RetryDownload;,
        Lcom/android/providers/downloads/DownloadThread$StopRequest;,
        Lcom/android/providers/downloads/DownloadThread$InnerState;,
        Lcom/android/providers/downloads/DownloadThread$State;
    }
.end annotation


# static fields
.field static final CTS_PKGNAME:Ljava/lang/String; = "com.android.cts.stub"

.field static final VENDING_PKGNAME:Ljava/lang/String; = "com.android.vending"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInfo:Lcom/android/providers/downloads/DownloadInfo;

.field private volatile mPolicyDirty:Z

.field private mPolicyListener:Landroid/net/INetworkPolicyListener;

.field private final mStorageManager:Lcom/android/providers/downloads/StorageManager;

.field private final mSystemFacade:Lcom/android/providers/downloads/SystemFacade;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/downloads/SystemFacade;Lcom/android/providers/downloads/DownloadInfo;Lcom/android/providers/downloads/StorageManager;)V
    .locals 1
    .parameter "context"
    .parameter "systemFacade"
    .parameter "info"
    .parameter "storageManager"

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1406
    new-instance v0, Lcom/android/providers/downloads/DownloadThread$1;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/DownloadThread$1;-><init>(Lcom/android/providers/downloads/DownloadThread;)V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    .line 99
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    .line 100
    iput-object p2, p0, Lcom/android/providers/downloads/DownloadThread;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    .line 101
    iput-object p3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    .line 102
    iput-object p4, p0, Lcom/android/providers/downloads/DownloadThread;->mStorageManager:Lcom/android/providers/downloads/StorageManager;

    .line 103
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-static {p0}, Lcom/android/providers/downloads/DownloadThread;->sanitizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/providers/downloads/DownloadThread;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/providers/downloads/DownloadThread;)Lcom/android/providers/downloads/DownloadInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/providers/downloads/DownloadThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/providers/downloads/DownloadThread;->mPolicyDirty:Z

    return p1
.end method

.method private addRequestHeaders(Lcom/android/providers/downloads/DownloadThread$State;Lorg/apache/http/client/methods/HttpGet;)V
    .locals 6
    .parameter "state"
    .parameter "request"

    .prologue
    .line 1289
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v2}, Lcom/android/providers/downloads/DownloadInfo;->getHeaders()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1290
    .local v0, header:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1293
    .end local v0           #header:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-boolean v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mContinuingDownload:Z

    if-eqz v2, :cond_2

    .line 1294
    iget-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mHeaderETag:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1295
    const-string v2, "If-Match"

    iget-object v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mHeaderETag:Ljava/lang/String;

    invoke-virtual {p2, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    :cond_1
    const-string v2, "Range"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    sget-boolean v2, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v2, :cond_2

    .line 1299
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding Range header: bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  totalBytes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/android/providers/downloads/DownloadThread$State;->mTotalBytes:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    :cond_2
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mAuthHeaderName:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mAuthHeaderValue:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 1308
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mAuthHeaderName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mAuthHeaderValue:Ljava/lang/String;

    invoke-virtual {p2, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    :cond_3
    return-void
.end method

.method private cannotResume(Lcom/android/providers/downloads/DownloadThread$State;)Z
    .locals 4
    .parameter "state"

    .prologue
    .line 802
    iget-wide v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-boolean v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mNoIntegrity:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mHeaderETag:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkConnectivity()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 424
    iput-boolean v3, p0, Lcom/android/providers/downloads/DownloadThread;->mPolicyDirty:Z

    .line 426
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v2}, Lcom/android/providers/downloads/DownloadInfo;->checkCanUseNetwork()I

    move-result v0

    .line 427
    .local v0, networkUsable:I
    if-eq v0, v4, :cond_3

    .line 428
    const/16 v1, 0xc3

    .line 429
    .local v1, status:I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 430
    const/16 v1, 0xc4

    .line 431
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v2, v4}, Lcom/android/providers/downloads/DownloadInfo;->notifyPauseDueToSize(Z)V

    .line 438
    :cond_0
    :goto_0
    new-instance v2, Lcom/android/providers/downloads/StopRequestException;

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v3, v0}, Lcom/android/providers/downloads/DownloadInfo;->getLogMessageForNetworkError(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 432
    :cond_1
    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 433
    const/16 v1, 0xc4

    .line 434
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v2, v3}, Lcom/android/providers/downloads/DownloadInfo;->notifyPauseDueToSize(Z)V

    goto :goto_0

    .line 435
    :cond_2
    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    .line 436
    const/16 v1, 0x1f2

    goto :goto_0

    .line 441
    .end local v1           #status:I
    :cond_3
    return-void
.end method

.method private checkPausedOrCanceled(Lcom/android/providers/downloads/DownloadThread$State;)V
    .locals 4
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x1ea

    .line 637
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    monitor-enter v1

    .line 638
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mControl:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 643
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-boolean v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mIsPublicApi:Z

    if-eqz v0, :cond_0

    .line 644
    new-instance v0, Lcom/android/providers/downloads/StopRequestException;

    const/16 v2, 0xc1

    const-string v3, "download paused by owner"

    invoke-direct {v0, v2, v3}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 654
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 647
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/providers/downloads/StopRequestException;

    const/16 v2, 0xc5

    const-string v3, "download paused by owner"

    invoke-direct {v0, v2, v3}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 651
    :cond_1
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    if-ne v0, v3, :cond_2

    .line 652
    new-instance v0, Lcom/android/providers/downloads/StopRequestException;

    const/16 v2, 0x1ea

    const-string v3, "download canceled"

    invoke-direct {v0, v2, v3}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 654
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 657
    iget-boolean v0, p0, Lcom/android/providers/downloads/DownloadThread;->mPolicyDirty:Z

    if-eqz v0, :cond_3

    .line 658
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadThread;->checkConnectivity()V

    .line 660
    :cond_3
    return-void
.end method

.method private cleanupDestination(Lcom/android/providers/downloads/DownloadThread$State;I)V
    .locals 2
    .parameter "state"
    .parameter "finalStatus"

    .prologue
    .line 525
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->closeDestination(Lcom/android/providers/downloads/DownloadThread$State;)V

    .line 526
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 528
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    .line 530
    :cond_0
    return-void
.end method

.method private closeDestination(Lcom/android/providers/downloads/DownloadThread$State;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 620
    :try_start_0
    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    .line 621
    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 622
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 624
    :catch_0
    move-exception v0

    .line 625
    .local v0, ex:Ljava/io/IOException;
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v1, :cond_0

    .line 626
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception when closing the file after download : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private executeDownload(Lcom/android/providers/downloads/DownloadThread$State;Landroid/net/http/AndroidHttpClient;Lorg/apache/http/client/methods/HttpGet;)V
    .locals 8
    .parameter "state"
    .parameter "client"
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;,
            Lcom/android/providers/downloads/DownloadThread$RetryDownload;
        }
    .end annotation

    .prologue
    .line 391
    new-instance v2, Lcom/android/providers/downloads/DownloadThread$InnerState;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/android/providers/downloads/DownloadThread$InnerState;-><init>(Lcom/android/providers/downloads/DownloadThread$1;)V

    .line 392
    .local v2, innerState:Lcom/android/providers/downloads/DownloadThread$InnerState;
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 394
    .local v0, data:[B
    invoke-direct {p0, p1, v2}, Lcom/android/providers/downloads/DownloadThread;->setupDestinationFile(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;)V

    .line 395
    invoke-direct {p0, p1, p3}, Lcom/android/providers/downloads/DownloadThread;->addRequestHeaders(Lcom/android/providers/downloads/DownloadThread$State;Lorg/apache/http/client/methods/HttpGet;)V

    .line 398
    iget-wide v4, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    iget-wide v6, p1, Lcom/android/providers/downloads/DownloadThread$State;->mTotalBytes:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 399
    const-string v4, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping initiating request for download "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v6, v6, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; already completed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :goto_0
    return-void

    .line 405
    :cond_0
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadThread;->checkConnectivity()V

    .line 407
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/downloads/DownloadThread;->sendRequest(Lcom/android/providers/downloads/DownloadThread$State;Landroid/net/http/AndroidHttpClient;Lorg/apache/http/client/methods/HttpGet;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 408
    .local v3, response:Lorg/apache/http/HttpResponse;
    invoke-direct {p0, p1, v2, v3}, Lcom/android/providers/downloads/DownloadThread;->handleExceptionalStatus(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;Lorg/apache/http/HttpResponse;)V

    .line 410
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v4, :cond_1

    .line 411
    const-string v4, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "received response for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v6, v6, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_1
    invoke-direct {p0, p1, v2, v3}, Lcom/android/providers/downloads/DownloadThread;->processResponseHeaders(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;Lorg/apache/http/HttpResponse;)V

    .line 415
    invoke-direct {p0, p1, v3}, Lcom/android/providers/downloads/DownloadThread;->openResponseEntity(Lcom/android/providers/downloads/DownloadThread$State;Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;

    move-result-object v1

    .line 416
    .local v1, entityStream:Ljava/io/InputStream;
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/providers/downloads/DownloadThread;->transferData(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;[BLjava/io/InputStream;)V

    goto :goto_0
.end method

.method private finalizeDestinationFile(Lcom/android/providers/downloads/DownloadThread$State;)V
    .locals 4
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 495
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->isDrmFile(Lcom/android/providers/downloads/DownloadThread$State;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 496
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->transferToDrm(Lcom/android/providers/downloads/DownloadThread$State;)V

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    const/16 v2, 0x1a4

    invoke-static {v1, v2, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 501
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->syncDestination(Lcom/android/providers/downloads/DownloadThread$State;)V

    .line 504
    invoke-static {}, Lcom/android/providers/downloads/Helpers;->getDownloadUserCacheDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, mUserCache:Ljava/lang/String;
    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 507
    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    const/16 v2, 0x1b6

    invoke-static {v1, v2, v3, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    goto :goto_0
.end method

.method private getFinalStatusForHttpError(Lcom/android/providers/downloads/DownloadThread$State;)I
    .locals 5
    .parameter "state"

    .prologue
    const/16 v1, 0xc5

    const/4 v4, 0x1

    .line 1170
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v2}, Lcom/android/providers/downloads/DownloadInfo;->checkCanUseNetwork()I

    move-result v0

    .line 1171
    .local v0, networkUsable:I
    if-eq v0, v4, :cond_1

    .line 1174
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-boolean v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mIsPublicApi:Z

    if-eqz v2, :cond_0

    .line 1175
    packed-switch v0, :pswitch_data_0

    .line 1182
    :pswitch_0
    const/16 v1, 0xc3

    .line 1201
    :cond_0
    :goto_0
    return v1

    .line 1178
    :pswitch_1
    const/16 v1, 0xc4

    goto :goto_0

    .line 1180
    :pswitch_2
    const/16 v1, 0x1f2

    goto :goto_0

    .line 1189
    :cond_1
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mNumFailed:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_2

    .line 1190
    iput-boolean v4, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCountRetry:Z

    .line 1194
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-boolean v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mIsPublicApi:Z

    if-eqz v2, :cond_0

    .line 1195
    const/16 v1, 0xc2

    goto :goto_0

    .line 1200
    :cond_2
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reached max retries for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    const/16 v1, 0x1ef

    goto :goto_0

    .line 1175
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private handleEndOfStream(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;)V
    .locals 6
    .parameter "state"
    .parameter "innerState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 781
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 782
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "current_bytes"

    iget-wide v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 783
    iget-object v2, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 784
    const-string v2, "total_bytes"

    iget-wide v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 786
    :cond_0
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v3}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 788
    iget-object v2, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-wide v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    iget-object v4, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 790
    .local v0, lengthMismatched:Z
    :goto_0
    if-eqz v0, :cond_3

    .line 791
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->cannotResume(Lcom/android/providers/downloads/DownloadThread$State;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 792
    new-instance v2, Lcom/android/providers/downloads/StopRequestException;

    const/16 v3, 0x1e9

    const-string v4, "mismatched content length"

    invoke-direct {v2, v3, v4}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 788
    .end local v0           #lengthMismatched:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 795
    .restart local v0       #lengthMismatched:Z
    :cond_2
    new-instance v2, Lcom/android/providers/downloads/StopRequestException;

    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->getFinalStatusForHttpError(Lcom/android/providers/downloads/DownloadThread$State;)I

    move-result v3

    const-string v4, "closed socket before end of file"

    invoke-direct {v2, v3, v4}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 799
    :cond_3
    return-void
.end method

.method private handleExceptionalStatus(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;Lorg/apache/http/HttpResponse;)V
    .locals 5
    .parameter "state"
    .parameter "innerState"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;,
            Lcom/android/providers/downloads/DownloadThread$RetryDownload;
        }
    .end annotation

    .prologue
    .line 1026
    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 1027
    .local v1, statusCode:I
    const/16 v2, 0x1f7

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mNumFailed:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    .line 1028
    invoke-direct {p0, p1, p3}, Lcom/android/providers/downloads/DownloadThread;->handleServiceUnavailable(Lcom/android/providers/downloads/DownloadThread$State;Lorg/apache/http/HttpResponse;)V

    .line 1030
    :cond_0
    const/16 v2, 0x12d

    if-eq v1, v2, :cond_1

    const/16 v2, 0x12e

    if-eq v1, v2, :cond_1

    const/16 v2, 0x12f

    if-eq v1, v2, :cond_1

    const/16 v2, 0x133

    if-ne v1, v2, :cond_2

    .line 1031
    :cond_1
    invoke-direct {p0, p1, p3, v1}, Lcom/android/providers/downloads/DownloadThread;->handleRedirect(Lcom/android/providers/downloads/DownloadThread$State;Lorg/apache/http/HttpResponse;I)V

    .line 1034
    :cond_2
    sget-boolean v2, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v2, :cond_3

    .line 1035
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recevd_status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mContinuingDownload = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p1, Lcom/android/providers/downloads/DownloadThread$State;->mContinuingDownload:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    :cond_3
    iget-boolean v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mContinuingDownload:Z

    if-eqz v2, :cond_5

    const/16 v0, 0xce

    .line 1039
    .local v0, expectedStatus:I
    :goto_0
    if-eq v1, v0, :cond_4

    .line 1040
    invoke-direct {p0, p1, p2, v1}, Lcom/android/providers/downloads/DownloadThread;->handleOtherStatus(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;I)V

    .line 1042
    :cond_4
    return-void

    .line 1038
    .end local v0           #expectedStatus:I
    :cond_5
    const/16 v0, 0xc8

    goto :goto_0
.end method

.method private handleOtherStatus(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;I)V
    .locals 5
    .parameter "state"
    .parameter "innerState"
    .parameter "statusCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 1049
    const/16 v1, 0x1a0

    if-ne p3, v1, :cond_0

    .line 1051
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Http Range request failure: totalBytes = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mTotalBytes:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bytes recvd so far: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1055
    :cond_0
    invoke-static {p3}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1056
    move v0, p3

    .line 1064
    .local v0, finalStatus:I
    :goto_0
    new-instance v1, Lcom/android/providers/downloads/StopRequestException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mContinuingDownload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mContinuingDownload:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1057
    .end local v0           #finalStatus:I
    :cond_1
    const/16 v1, 0x12c

    if-lt p3, v1, :cond_2

    const/16 v1, 0x190

    if-ge p3, v1, :cond_2

    .line 1058
    const/16 v0, 0x1ed

    .restart local v0       #finalStatus:I
    goto :goto_0

    .line 1059
    .end local v0           #finalStatus:I
    :cond_2
    iget-boolean v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mContinuingDownload:Z

    if-eqz v1, :cond_3

    const/16 v1, 0xc8

    if-ne p3, v1, :cond_3

    .line 1060
    const/16 v0, 0x1e9

    .restart local v0       #finalStatus:I
    goto :goto_0

    .line 1062
    .end local v0           #finalStatus:I
    :cond_3
    const/16 v0, 0x1ee

    .restart local v0       #finalStatus:I
    goto :goto_0
.end method

.method private handleRedirect(Lcom/android/providers/downloads/DownloadThread$State;Lorg/apache/http/HttpResponse;I)V
    .locals 6
    .parameter "state"
    .parameter "response"
    .parameter "statusCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;,
            Lcom/android/providers/downloads/DownloadThread$RetryDownload;
        }
    .end annotation

    .prologue
    .line 1073
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v3, :cond_0

    .line 1074
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got HTTP redirect "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    :cond_0
    iget v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRedirectCount:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_1

    .line 1077
    new-instance v3, Lcom/android/providers/downloads/StopRequestException;

    const/16 v4, 0x1f1

    const-string v5, "too many redirects"

    invoke-direct {v3, v4, v5}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1080
    :cond_1
    const-string v3, "Location"

    invoke-interface {p2, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 1081
    .local v1, header:Lorg/apache/http/Header;
    if-nez v1, :cond_2

    .line 1082
    return-void

    .line 1084
    :cond_2
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v3, :cond_3

    .line 1085
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Location :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    :cond_3
    :try_start_0
    new-instance v3, Ljava/net/URI;

    iget-object v4, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v4, v4, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/net/URI;

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1099
    .local v2, newUri:Ljava/lang/String;
    iget v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRedirectCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRedirectCount:I

    .line 1100
    iput-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRequestUri:Ljava/lang/String;

    .line 1101
    const/16 v3, 0x12d

    if-eq p3, v3, :cond_4

    const/16 v3, 0x12f

    if-ne p3, v3, :cond_5

    .line 1103
    :cond_4
    iput-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mNewUri:Ljava/lang/String;

    .line 1105
    :cond_5
    new-instance v3, Lcom/android/providers/downloads/DownloadThread$RetryDownload;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/providers/downloads/DownloadThread$RetryDownload;-><init>(Lcom/android/providers/downloads/DownloadThread;Lcom/android/providers/downloads/DownloadThread$1;)V

    throw v3

    .line 1091
    .end local v2           #newUri:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1092
    .local v0, ex:Ljava/net/URISyntaxException;
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v3, :cond_6

    .line 1093
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t resolve redirect URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v5, v5, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    :cond_6
    new-instance v3, Lcom/android/providers/downloads/StopRequestException;

    const/16 v4, 0x1ef

    const-string v5, "Couldn\'t resolve redirect URI"

    invoke-direct {v3, v4, v5}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method private handleServiceUnavailable(Lcom/android/providers/downloads/DownloadThread$State;Lorg/apache/http/HttpResponse;)V
    .locals 6
    .parameter "state"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    const v5, 0x15180

    const/16 v4, 0x1e

    .line 1113
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_0

    .line 1114
    const-string v1, "DownloadManager"

    const-string v2, "got HTTP response code 503"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCountRetry:Z

    .line 1117
    const-string v1, "Retry-After"

    invoke-interface {p2, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 1118
    .local v0, header:Lorg/apache/http/Header;
    if-eqz v0, :cond_2

    .line 1120
    :try_start_0
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_1

    .line 1121
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retry-After :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    :cond_1
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    .line 1124
    iget v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    if-gez v1, :cond_3

    .line 1125
    const/4 v1, 0x0

    iput v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1143
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-boolean v1, v1, Lcom/android/providers/downloads/DownloadInfo;->mIsPublicApi:Z

    if-eqz v1, :cond_6

    .line 1144
    new-instance v1, Lcom/android/providers/downloads/StopRequestException;

    const/16 v2, 0xc2

    const-string v3, "got 503 Service Unavailable, will retry later"

    invoke-direct {v1, v2, v3}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1127
    :cond_3
    :try_start_1
    iget v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    if-ge v1, v4, :cond_5

    .line 1128
    const/16 v1, 0x1e

    iput v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    .line 1132
    :cond_4
    :goto_1
    iget v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    sget-object v2, Lcom/android/providers/downloads/Helpers;->sRandom:Ljava/util/Random;

    const/16 v3, 0x1f

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    .line 1133
    iget v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    mul-int/lit16 v1, v1, 0x3e8

    iput v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    goto :goto_0

    .line 1135
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1129
    :cond_5
    iget v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    if-le v1, v5, :cond_4

    .line 1130
    const v1, 0x15180

    iput v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1147
    :cond_6
    new-instance v1, Lcom/android/providers/downloads/StopRequestException;

    const/16 v2, 0xc5

    const-string v3, "got 503 Service Unavailable, will retry later"

    invoke-direct {v1, v2, v3}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method private isDrmFile(Lcom/android/providers/downloads/DownloadThread$State;)Z
    .locals 2
    .parameter "state"

    .prologue
    .line 567
    const-string v0, "application/vnd.oma.drm.message"

    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/vnd.oma.drm.content"

    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/vnd.oma.drm.rights+wbxml"

    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/vnd.oma.drm.rights+xml"

    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logNetworkState(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 852
    return-void
.end method

.method private notifyDownloadCompleted(IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "status"
    .parameter "countRetry"
    .parameter "retryAfter"
    .parameter "gotData"
    .parameter "filename"
    .parameter "uri"
    .parameter "mimeType"
    .parameter "errorMsg"

    .prologue
    .line 1319
    invoke-direct/range {p0 .. p8}, Lcom/android/providers/downloads/DownloadThread;->notifyThroughDatabase(IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDownloadCompleted status/ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  the filename is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    invoke-static {p1}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1328
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v1}, Lcom/android/providers/downloads/DownloadInfo;->sendIntentIfRequested()V

    .line 1331
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v0

    .line 1333
    .local v0, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v1, v1, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v1, v1, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    const-string v2, "com.android.vending"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1334
    const-string v1, "download_manager"

    invoke-virtual {v0, v1}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "download"

    invoke-interface {v1, v2}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "requester"

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v2

    const-string v3, "display_name"

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v1, v1, Lcom/android/providers/downloads/DownloadInfo;->mTitle:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v1, v1, Lcom/android/providers/downloads/DownloadInfo;->mExtras:Ljava/lang/String;

    :goto_0
    invoke-interface {v2, v3, v1}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 1345
    :goto_1
    invoke-static {v0}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 1347
    invoke-virtual {v0}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 1349
    invoke-static {p1}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1350
    const-string v1, "DownloadManager"

    const-string v2, "isStatusError"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p6, :cond_0

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object p6, v3, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    .end local p6
    :cond_0
    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mimeType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    .end local v0           #uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    :cond_1
    return-void

    .line 1334
    .restart local v0       #uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    .restart local p6
    :cond_2
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v1, v1, Lcom/android/providers/downloads/DownloadInfo;->mTitle:Ljava/lang/String;

    goto :goto_0

    .line 1339
    :cond_3
    const-string v1, "download_manager"

    invoke-virtual {v0, v1}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "download"

    invoke-interface {v1, v2}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v2

    const-string v3, "requester"

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v1, v1, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    if-nez v1, :cond_4

    const-string v1, "Unknown"

    :goto_2
    invoke-interface {v2, v3, v1}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    goto/16 :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v1, v1, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    goto :goto_2
.end method

.method private notifyThroughDatabase(IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "status"
    .parameter "countRetry"
    .parameter "retryAfter"
    .parameter "gotData"
    .parameter "filename"
    .parameter "uri"
    .parameter "mimeType"
    .parameter "errorMsg"

    .prologue
    const/4 v4, 0x0

    .line 1362
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1363
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "status"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1364
    const-string v1, "_data"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    if-eqz p6, :cond_0

    .line 1366
    const-string v1, "uri"

    invoke-virtual {v0, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    :cond_0
    const-string v1, "mimetype"

    invoke-virtual {v0, v1, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    const-string v1, "lastmod"

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v2}, Lcom/android/providers/downloads/SystemFacade;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1370
    const-string v1, "method"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1371
    if-nez p2, :cond_2

    .line 1372
    const-string v1, "numfailed"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1379
    :goto_0
    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1380
    const-string v1, "errorMsg"

    invoke-virtual {v0, v1, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    :cond_1
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v2}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1383
    return-void

    .line 1373
    :cond_2
    if-eqz p4, :cond_3

    .line 1374
    const-string v1, "numfailed"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1376
    :cond_3
    const-string v1, "numfailed"

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mNumFailed:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method private openResponseEntity(Lcom/android/providers/downloads/DownloadThread$State;Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;
    .locals 5
    .parameter "state"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 839
    :try_start_0
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 840
    :catch_0
    move-exception v0

    .line 841
    .local v0, ex:Ljava/io/IOException;
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v1, v1, Lcom/android/providers/downloads/DownloadInfo;->mUid:I

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadThread;->logNetworkState(I)V

    .line 842
    new-instance v1, Lcom/android/providers/downloads/StopRequestException;

    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->getFinalStatusForHttpError(Lcom/android/providers/downloads/DownloadThread$State;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "while getting entity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private processResponseHeaders(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;Lorg/apache/http/HttpResponse;)V
    .locals 15
    .parameter "state"
    .parameter "innerState"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 860
    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/android/providers/downloads/DownloadThread$State;->mContinuingDownload:Z

    if-eqz v1, :cond_0

    .line 920
    :goto_0
    return-void

    .line 865
    :cond_0
    invoke-direct/range {p0 .. p3}, Lcom/android/providers/downloads/DownloadThread;->readResponseHeaders(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;Lorg/apache/http/HttpResponse;)V

    .line 879
    const/4 v8, 0x0

    .line 880
    .local v8, isMarketAP:Z
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v1, v1, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 881
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v1, v1, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.android.vending"

    const/4 v4, 0x0

    const-string v5, "com.android.vending"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    .line 882
    if-nez v8, :cond_1

    .line 883
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v1, v1, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.android.cts.stub"

    const/4 v4, 0x0

    const-string v5, "com.android.cts.stub"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    .line 888
    :cond_1
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mHint:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentDisposition:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLocation:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v7, v7, Lcom/android/providers/downloads/DownloadInfo;->mExtras:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v9, v9, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    if-eqz v10, :cond_3

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    :goto_1
    iget-object v12, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-boolean v12, v12, Lcom/android/providers/downloads/DownloadInfo;->mIsPublicApi:Z

    iget-object v13, p0, Lcom/android/providers/downloads/DownloadThread;->mStorageManager:Lcom/android/providers/downloads/StorageManager;

    invoke-static/range {v1 .. v13}, Lcom/android/providers/downloads/Helpers;->generateSaveFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIJZLcom/android/providers/downloads/StorageManager;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    iput-object v1, v0, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    .line 908
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iput-object v1, v0, Lcom/android/providers/downloads/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 913
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v1, :cond_2

    .line 914
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    :cond_2
    invoke-direct/range {p0 .. p2}, Lcom/android/providers/downloads/DownloadThread;->updateDatabaseFromHeaders(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;)V

    .line 919
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadThread;->checkConnectivity()V

    goto/16 :goto_0

    .line 888
    :cond_3
    const-wide/16 v10, 0x0

    goto :goto_1

    .line 909
    :catch_0
    move-exception v14

    .line 910
    .local v14, exc:Ljava/io/FileNotFoundException;
    new-instance v1, Lcom/android/providers/downloads/StopRequestException;

    const/16 v2, 0x1ec

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "while opening destination file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v14}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private readFromResponse(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;[BLjava/io/InputStream;)I
    .locals 7
    .parameter "state"
    .parameter "innerState"
    .parameter "data"
    .parameter "entityStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 814
    :try_start_0
    invoke-virtual {p4, p3}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 815
    :catch_0
    move-exception v0

    .line 816
    .local v0, ex:Ljava/io/IOException;
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mUid:I

    invoke-direct {p0, v3}, Lcom/android/providers/downloads/DownloadThread;->logNetworkState(I)V

    .line 817
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 818
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "current_bytes"

    iget-wide v4, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 819
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v4}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 820
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->cannotResume(Lcom/android/providers/downloads/DownloadThread$State;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 821
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "while reading response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", can\'t resume interrupted download with no ETag"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 823
    .local v1, message:Ljava/lang/String;
    new-instance v3, Lcom/android/providers/downloads/StopRequestException;

    const/16 v4, 0x1e9

    invoke-direct {v3, v4, v1, v0}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 826
    .end local v1           #message:Ljava/lang/String;
    :cond_0
    new-instance v3, Lcom/android/providers/downloads/StopRequestException;

    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->getFinalStatusForHttpError(Lcom/android/providers/downloads/DownloadThread$State;)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "while reading response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private readResponseHeaders(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;Lorg/apache/http/HttpResponse;)V
    .locals 8
    .parameter "state"
    .parameter "innerState"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 944
    const-string v4, "Content-Disposition"

    invoke-interface {p3, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 945
    .local v0, header:Lorg/apache/http/Header;
    if-eqz v0, :cond_0

    .line 946
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentDisposition:Ljava/lang/String;

    .line 948
    :cond_0
    const-string v4, "Content-Location"

    invoke-interface {p3, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 949
    if-eqz v0, :cond_1

    .line 950
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLocation:Ljava/lang/String;

    .line 952
    :cond_1
    iget-object v4, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 953
    const-string v4, "Content-Type"

    invoke-interface {p3, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 954
    if-eqz v0, :cond_3

    .line 955
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/providers/downloads/DownloadThread;->sanitizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    .line 961
    iget-object v4, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    const-string v5, "text/plain"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    const-string v5, "application/octet-stream"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 964
    :cond_2
    iget-object v4, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v4, v4, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentDisposition:Ljava/lang/String;

    iget-object v6, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLocation:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v7, v7, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    invoke-static {v4, v5, v6, v7}, Lcom/android/providers/downloads/Helpers;->guessRealMimeType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 967
    .local v3, realMimeType:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 968
    iput-object v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    .line 974
    .end local v3           #realMimeType:Ljava/lang/String;
    :cond_3
    const-string v4, "ETag"

    invoke-interface {p3, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 975
    if-eqz v0, :cond_4

    .line 976
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/providers/downloads/DownloadThread$State;->mHeaderETag:Ljava/lang/String;

    .line 978
    :cond_4
    const/4 v1, 0x0

    .line 979
    .local v1, headerTransferEncoding:Ljava/lang/String;
    const-string v4, "Transfer-Encoding"

    invoke-interface {p3, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 980
    if-eqz v0, :cond_5

    .line 981
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 983
    :cond_5
    if-nez v1, :cond_9

    .line 984
    const-string v4, "Content-Length"

    invoke-interface {p3, v4}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 985
    if-eqz v0, :cond_6

    .line 986
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    .line 987
    iget-object v4, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v5, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    iput-wide v5, p1, Lcom/android/providers/downloads/DownloadThread$State;->mTotalBytes:J

    .line 992
    iget-object v4, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v4, v4, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    const-wide/16 v6, 0x5

    div-long/2addr v4, v6

    iput-wide v4, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mSyncThreshold:J

    .line 1002
    :cond_6
    :goto_0
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v4, :cond_7

    .line 1003
    const-string v4, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Content-Disposition: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentDisposition:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    const-string v4, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Content-Length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    const-string v4, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Content-Location: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLocation:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    const-string v4, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Content-Type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    const-string v4, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ETag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/providers/downloads/DownloadThread$State;->mHeaderETag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    const-string v4, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Transfer-Encoding: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    :cond_7
    iget-object v4, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    if-nez v4, :cond_a

    if-eqz v1, :cond_8

    const-string v4, "chunked"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    :cond_8
    const/4 v2, 0x1

    .line 1015
    .local v2, noSizeInfo:Z
    :goto_1
    iget-object v4, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-boolean v4, v4, Lcom/android/providers/downloads/DownloadInfo;->mNoIntegrity:Z

    if-nez v4, :cond_b

    if-eqz v2, :cond_b

    .line 1016
    new-instance v4, Lcom/android/providers/downloads/StopRequestException;

    const/16 v5, 0x1ef

    const-string v6, "can\'t know size of download, giving up"

    invoke-direct {v4, v5, v6}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 997
    .end local v2           #noSizeInfo:Z
    :cond_9
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v4, :cond_6

    .line 998
    const-string v4, "DownloadManager"

    const-string v5, "ignoring content-length because of xfer-encoding"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1012
    :cond_a
    const/4 v2, 0x0

    goto :goto_1

    .line 1019
    .restart local v2       #noSizeInfo:Z
    :cond_b
    return-void
.end method

.method private reportProgress(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;)V
    .locals 8
    .parameter "state"
    .parameter "innerState"

    .prologue
    const/4 v7, 0x0

    .line 666
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v3}, Lcom/android/providers/downloads/SystemFacade;->currentTimeMillis()J

    move-result-wide v0

    .line 667
    .local v0, now:J
    iget-wide v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    iget-wide v5, p1, Lcom/android/providers/downloads/DownloadThread$State;->mBytesNotified:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1000

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    iget-wide v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mTimeLastNotification:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x5dc

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 669
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 670
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "current_bytes"

    iget-wide v4, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 671
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v4}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 672
    iget-wide v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    iput-wide v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mBytesNotified:J

    .line 673
    iput-wide v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mTimeLastNotification:J

    .line 675
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private static sanitizeMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "mimeType"

    .prologue
    .line 1394
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 1396
    const/16 v2, 0x3b

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1397
    .local v1, semicolonIndex:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1398
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 1402
    .end local v1           #semicolonIndex:I
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 1401
    .restart local p0
    :catch_0
    move-exception v0

    .line 1402
    .local v0, npe:Ljava/lang/NullPointerException;
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private sendRequest(Lcom/android/providers/downloads/DownloadThread$State;Landroid/net/http/AndroidHttpClient;Lorg/apache/http/client/methods/HttpGet;)Lorg/apache/http/HttpResponse;
    .locals 5
    .parameter "state"
    .parameter "client"
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 1158
    :try_start_0
    invoke-virtual {p2, p3}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 1159
    :catch_0
    move-exception v0

    .line 1160
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    new-instance v1, Lcom/android/providers/downloads/StopRequestException;

    const/16 v2, 0x1ef

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "while trying to execute request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1162
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 1163
    .local v0, ex:Ljava/io/IOException;
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v1, v1, Lcom/android/providers/downloads/DownloadInfo;->mUid:I

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/DownloadThread;->logNetworkState(I)V

    .line 1164
    new-instance v1, Lcom/android/providers/downloads/StopRequestException;

    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->getFinalStatusForHttpError(Lcom/android/providers/downloads/DownloadThread$State;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "while trying to execute request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setAPNProxy(Landroid/net/http/AndroidHttpClient;)V
    .locals 4
    .parameter "client"

    .prologue
    .line 359
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v1, v1, Lcom/android/providers/downloads/DownloadInfo;->mRestriction:I

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/android/providers/downloads/Helpers;->existRestriction(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/providers/downloads/Helpers;->getProxyHost(Landroid/content/Context;)Lorg/apache/http/HttpHost;

    move-result-object v0

    .line 361
    .local v0, proxy:Lorg/apache/http/HttpHost;
    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {p1}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.route.default-proxy"

    invoke-interface {v1, v2, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 363
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "will execute request to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " via proxy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    .end local v0           #proxy:Lorg/apache/http/HttpHost;
    :cond_0
    return-void
.end method

.method private setRouteIfNeed(Lcom/android/providers/downloads/DownloadThread$State;)Z
    .locals 9
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    .line 343
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-boolean v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mIgnoreSpecificAPN:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v0}, Lcom/android/providers/downloads/DownloadInfo;->canStartSpecificAPN()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mConnectivityHelper:Landroid/net/HtcNetworkConnectivityHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mConnectivityHelper:Landroid/net/HtcNetworkConnectivityHelper;

    invoke-virtual {v0}, Landroid/net/HtcNetworkConnectivityHelper;->getState()Landroid/net/HtcNetworkConnectivityHelper$State;

    move-result-object v0

    sget-object v3, Landroid/net/HtcNetworkConnectivityHelper$State;->CONNECTED:Landroid/net/HtcNetworkConnectivityHelper$State;

    if-ne v0, v3, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mAPNType:I

    iget-object v4, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-static {v0, v3, v4}, Lcom/android/providers/downloads/Helpers;->ensureRouteToHost(Ljava/lang/String;ILandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    const/16 v1, 0x1e7

    .line 347
    .local v1, finalStatus:I
    const-string v8, "Fail to set routing table APN"

    .line 348
    .local v8, errorMsg:Ljava/lang/String;
    iget-object v5, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v7, v0, Lcom/android/providers/downloads/DownloadInfo;->mMimeType:Ljava/lang/String;

    move-object v0, p0

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v8}, Lcom/android/providers/downloads/DownloadThread;->notifyDownloadCompleted(IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v0, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to set routing table APN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v4, v4, Lcom/android/providers/downloads/DownloadInfo;->mAPNType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    .end local v1           #finalStatus:I
    .end local v8           #errorMsg:Ljava/lang/String;
    :goto_0
    return v2

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iput-boolean v2, v0, Lcom/android/providers/downloads/DownloadInfo;->mIgnoreSpecificAPN:Z

    .line 355
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private setupDestinationFile(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;)V
    .locals 10
    .parameter "state"
    .parameter "innerState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x1ec

    const/4 v8, 0x1

    .line 1211
    iget-object v4, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1212
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v4, :cond_0

    .line 1213
    const-string v4, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "have run thread before for id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v6, v6, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", and state.mFilename: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    :cond_0
    iget-object v4, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/providers/downloads/DownloadThread;->mStorageManager:Lcom/android/providers/downloads/StorageManager;

    invoke-virtual {v5}, Lcom/android/providers/downloads/StorageManager;->getDownloadDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/providers/downloads/Helpers;->isFilenameValid(Ljava/lang/String;Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1219
    new-instance v4, Lcom/android/providers/downloads/StopRequestException;

    const-string v5, "found invalid internal destination filename"

    invoke-direct {v4, v9, v5}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 1223
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v4, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1224
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1225
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v4, :cond_2

    .line 1226
    const-string v4, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resuming download for id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v6, v6, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", and state.mFilename: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 1230
    .local v2, fileLength:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_5

    .line 1232
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1233
    const/4 v4, 0x0

    iput-object v4, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    .line 1234
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v4, :cond_3

    .line 1235
    const-string v4, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resuming download for id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v6, v6, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", BUT starting from scratch again: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    .end local v1           #f:Ljava/io/File;
    .end local v2           #fileLength:J
    :cond_3
    :goto_0
    iget-object v4, p1, Lcom/android/providers/downloads/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    if-eqz v4, :cond_4

    .line 1281
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->closeDestination(Lcom/android/providers/downloads/DownloadThread$State;)V

    .line 1283
    :cond_4
    return-void

    .line 1238
    .restart local v1       #f:Ljava/io/File;
    .restart local v2       #fileLength:J
    :cond_5
    iget-object v4, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v4, v4, Lcom/android/providers/downloads/DownloadInfo;->mETag:Ljava/lang/String;

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-boolean v4, v4, Lcom/android/providers/downloads/DownloadInfo;->mNoIntegrity:Z

    if-nez v4, :cond_6

    .line 1240
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1241
    new-instance v4, Lcom/android/providers/downloads/StopRequestException;

    const/16 v5, 0x1e9

    const-string v6, "Trying to resume a download that can\'t be resumed"

    invoke-direct {v4, v5, v6}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 1245
    :cond_6
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v4, :cond_7

    .line 1246
    const-string v4, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resuming download for id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v6, v6, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", and starting with file of length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    :cond_7
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v4, p1, Lcom/android/providers/downloads/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1255
    long-to-int v4, v2

    int-to-long v4, v4

    iput-wide v4, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    .line 1256
    iget-object v4, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v4, v4, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_8

    .line 1257
    iget-object v4, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v4, v4, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    .line 1260
    iget-object v4, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v4, v4, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    const-wide/16 v6, 0x5

    div-long/2addr v4, v6

    iput-wide v4, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mSyncThreshold:J

    .line 1263
    :cond_8
    iget-object v4, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v4, v4, Lcom/android/providers/downloads/DownloadInfo;->mETag:Ljava/lang/String;

    iput-object v4, p1, Lcom/android/providers/downloads/DownloadThread$State;->mHeaderETag:Ljava/lang/String;

    .line 1264
    iput-boolean v8, p1, Lcom/android/providers/downloads/DownloadThread$State;->mContinuingDownload:Z

    .line 1265
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v4, :cond_3

    .line 1266
    const-string v4, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resuming download for id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v6, v6, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", state.mCurrentBytes: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", and setting mContinuingDownload to true: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1251
    :catch_0
    move-exception v0

    .line 1252
    .local v0, exc:Ljava/io/FileNotFoundException;
    new-instance v4, Lcom/android/providers/downloads/StopRequestException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "while opening destination for resuming: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v9, v5, v0}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private stopNetworkFeature()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 371
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mConnectivityHelper:Landroid/net/HtcNetworkConnectivityHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mConnectivityHelper:Landroid/net/HtcNetworkConnectivityHelper;

    invoke-virtual {v0}, Landroid/net/HtcNetworkConnectivityHelper;->getState()Landroid/net/HtcNetworkConnectivityHelper$State;

    move-result-object v0

    sget-object v1, Landroid/net/HtcNetworkConnectivityHelper$State;->CONNECTED:Landroid/net/HtcNetworkConnectivityHelper$State;

    if-ne v0, v1, :cond_1

    .line 372
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mConnectivityHelper:Landroid/net/HtcNetworkConnectivityHelper;

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v1, v1, Lcom/android/providers/downloads/DownloadInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/net/HtcNetworkConnectivityHelper;->stopUsingNetworkFeature(Landroid/os/Handler;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 374
    const-string v0, "DownloadManager"

    const-string v1, "Fail to stop using FOTA network feature"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iput-object v3, v0, Lcom/android/providers/downloads/DownloadInfo;->mConnectivityHelper:Landroid/net/HtcNetworkConnectivityHelper;

    .line 377
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iput-boolean v2, v0, Lcom/android/providers/downloads/DownloadInfo;->mIgnoreSpecificAPN:Z

    .line 378
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iput-boolean v2, v0, Lcom/android/providers/downloads/DownloadInfo;->mHasAPNResult:Z

    .line 379
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iput-object v3, v0, Lcom/android/providers/downloads/DownloadInfo;->mHandler:Landroid/os/Handler;

    .line 382
    :cond_1
    return-void
.end method

.method private syncDestination(Lcom/android/providers/downloads/DownloadThread$State;)V
    .locals 6
    .parameter "state"

    .prologue
    .line 536
    const/4 v0, 0x0

    .line 538
    .local v0, downloadedFileStream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/SyncFailedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6

    .line 539
    .end local v0           #downloadedFileStream:Ljava/io/FileOutputStream;
    .local v1, downloadedFileStream:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/io/SyncFailedException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_10

    .line 549
    if-eqz v1, :cond_0

    .line 551
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_f

    :cond_0
    :goto_0
    move-object v0, v1

    .line 559
    .end local v1           #downloadedFileStream:Ljava/io/FileOutputStream;
    .restart local v0       #downloadedFileStream:Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    return-void

    .line 540
    :catch_0
    move-exception v2

    .line 541
    .local v2, ex:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 549
    if-eqz v0, :cond_1

    .line 551
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_a

    goto :goto_1

    .line 552
    :catch_1
    move-exception v2

    .line 553
    .local v2, ex:Ljava/io/IOException;
    const-string v3, "DownloadManager"

    const-string v4, "IOException while closing synced file: "

    :goto_3
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 542
    .end local v2           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 543
    .local v2, ex:Ljava/io/SyncFailedException;
    :goto_4
    :try_start_5
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sync failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 549
    if-eqz v0, :cond_1

    .line 551
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_b

    goto :goto_1

    .line 552
    :catch_3
    move-exception v2

    .line 553
    .local v2, ex:Ljava/io/IOException;
    const-string v3, "DownloadManager"

    const-string v4, "IOException while closing synced file: "

    goto :goto_3

    .line 544
    .end local v2           #ex:Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 545
    .restart local v2       #ex:Ljava/io/IOException;
    :goto_5
    :try_start_7
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException trying to sync "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 549
    if-eqz v0, :cond_1

    .line 551
    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_c

    goto/16 :goto_1

    .line 552
    :catch_5
    move-exception v2

    .line 553
    const-string v3, "DownloadManager"

    const-string v4, "IOException while closing synced file: "

    goto :goto_3

    .line 546
    .end local v2           #ex:Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 547
    .local v2, ex:Ljava/lang/RuntimeException;
    :goto_6
    :try_start_9
    const-string v3, "DownloadManager"

    const-string v4, "exception while syncing file: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 549
    if-eqz v0, :cond_1

    .line 551
    :try_start_a
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_d

    goto/16 :goto_1

    .line 552
    :catch_7
    move-exception v2

    .line 553
    .local v2, ex:Ljava/io/IOException;
    const-string v3, "DownloadManager"

    const-string v4, "IOException while closing synced file: "

    goto :goto_3

    .line 549
    .end local v2           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_7
    if-eqz v0, :cond_2

    .line 551
    :try_start_b
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_9

    .line 549
    :cond_2
    :goto_8
    throw v3

    .line 552
    :catch_8
    move-exception v2

    .line 553
    .restart local v2       #ex:Ljava/io/IOException;
    const-string v4, "DownloadManager"

    const-string v5, "IOException while closing synced file: "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 554
    .end local v2           #ex:Ljava/io/IOException;
    :catch_9
    move-exception v2

    .line 555
    .local v2, ex:Ljava/lang/RuntimeException;
    const-string v4, "DownloadManager"

    const-string v5, "exception while closing file: "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 554
    .local v2, ex:Ljava/io/FileNotFoundException;
    :catch_a
    move-exception v2

    .line 555
    .local v2, ex:Ljava/lang/RuntimeException;
    const-string v3, "DownloadManager"

    const-string v4, "exception while closing file: "

    :goto_9
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 554
    .local v2, ex:Ljava/io/SyncFailedException;
    :catch_b
    move-exception v2

    .line 555
    .local v2, ex:Ljava/lang/RuntimeException;
    const-string v3, "DownloadManager"

    const-string v4, "exception while closing file: "

    goto :goto_9

    .line 554
    .local v2, ex:Ljava/io/IOException;
    :catch_c
    move-exception v2

    .line 555
    .local v2, ex:Ljava/lang/RuntimeException;
    const-string v3, "DownloadManager"

    const-string v4, "exception while closing file: "

    goto :goto_9

    .line 554
    :catch_d
    move-exception v2

    .line 555
    const-string v3, "DownloadManager"

    const-string v4, "exception while closing file: "

    goto :goto_9

    .line 552
    .end local v0           #downloadedFileStream:Ljava/io/FileOutputStream;
    .end local v2           #ex:Ljava/lang/RuntimeException;
    .restart local v1       #downloadedFileStream:Ljava/io/FileOutputStream;
    :catch_e
    move-exception v2

    .line 553
    .local v2, ex:Ljava/io/IOException;
    const-string v3, "DownloadManager"

    const-string v4, "IOException while closing synced file: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 554
    .end local v2           #ex:Ljava/io/IOException;
    :catch_f
    move-exception v2

    .line 555
    .local v2, ex:Ljava/lang/RuntimeException;
    const-string v3, "DownloadManager"

    const-string v4, "exception while closing file: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 549
    .end local v2           #ex:Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1           #downloadedFileStream:Ljava/io/FileOutputStream;
    .restart local v0       #downloadedFileStream:Ljava/io/FileOutputStream;
    goto :goto_7

    .line 546
    .end local v0           #downloadedFileStream:Ljava/io/FileOutputStream;
    .restart local v1       #downloadedFileStream:Ljava/io/FileOutputStream;
    :catch_10
    move-exception v2

    move-object v0, v1

    .end local v1           #downloadedFileStream:Ljava/io/FileOutputStream;
    .restart local v0       #downloadedFileStream:Ljava/io/FileOutputStream;
    goto :goto_6

    .line 544
    .end local v0           #downloadedFileStream:Ljava/io/FileOutputStream;
    .restart local v1       #downloadedFileStream:Ljava/io/FileOutputStream;
    :catch_11
    move-exception v2

    move-object v0, v1

    .end local v1           #downloadedFileStream:Ljava/io/FileOutputStream;
    .restart local v0       #downloadedFileStream:Ljava/io/FileOutputStream;
    goto/16 :goto_5

    .line 542
    .end local v0           #downloadedFileStream:Ljava/io/FileOutputStream;
    .restart local v1       #downloadedFileStream:Ljava/io/FileOutputStream;
    :catch_12
    move-exception v2

    move-object v0, v1

    .end local v1           #downloadedFileStream:Ljava/io/FileOutputStream;
    .restart local v0       #downloadedFileStream:Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .line 540
    .end local v0           #downloadedFileStream:Ljava/io/FileOutputStream;
    .restart local v1       #downloadedFileStream:Ljava/io/FileOutputStream;
    :catch_13
    move-exception v2

    move-object v0, v1

    .end local v1           #downloadedFileStream:Ljava/io/FileOutputStream;
    .restart local v0       #downloadedFileStream:Ljava/io/FileOutputStream;
    goto/16 :goto_2
.end method

.method private transferData(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;[BLjava/io/InputStream;)V
    .locals 6
    .parameter "state"
    .parameter "innerState"
    .parameter "data"
    .parameter "entityStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 452
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/downloads/DownloadThread;->readFromResponse(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;[BLjava/io/InputStream;)I

    move-result v0

    .line 455
    .local v0, bytesRead:I
    iget-wide v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    const-string v2, "application/vnd.oma.drm.message"

    iget-object v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "application/vnd.oma.drm.content"

    iget-object v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 458
    :cond_0
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    invoke-static {v2, p3, v3}, Landroid/provider/DrmStore;->checkBeforeDownload(Landroid/content/Context;[BLjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 459
    const-string v1, "DRM check fail."

    .line 460
    .local v1, message:Ljava/lang/String;
    new-instance v2, Lcom/android/providers/downloads/StopRequestException;

    const/16 v3, 0x196

    invoke-direct {v2, v3, v1}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 466
    .end local v1           #message:Ljava/lang/String;
    :cond_1
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 467
    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/DownloadThread;->handleEndOfStream(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;)V

    .line 468
    return-void

    .line 471
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mGotData:Z

    .line 475
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/downloads/DownloadThread;->writeDataToDestination(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;[BI)V

    .line 477
    iget-wide v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    .line 478
    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/DownloadThread;->reportProgress(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;)V

    .line 480
    sget-boolean v2, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v2, :cond_3

    .line 481
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloaded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v4, v4, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->checkPausedOrCanceled(Lcom/android/providers/downloads/DownloadThread$State;)V

    goto :goto_0
.end method

.method private transferToDrm(Lcom/android/providers/downloads/DownloadThread$State;)V
    .locals 11
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 577
    new-instance v1, Ljava/io/File;

    iget-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 584
    .local v1, file:Ljava/io/File;
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v4, v4, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v5, v5, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    invoke-static/range {v0 .. v5}, Landroid/provider/DrmStore;->addDrmFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    .line 586
    .local v7, item:Landroid/content/Intent;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 588
    if-nez v7, :cond_0

    .line 589
    new-instance v0, Lcom/android/providers/downloads/StopRequestException;

    const/16 v2, 0x1eb

    const-string v3, "unable to add file to DrmProvider"

    invoke-direct {v0, v2, v3}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 592
    :cond_0
    invoke-virtual {v7}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    .line 593
    invoke-virtual {v7}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    .line 596
    const-string v0, "title"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 598
    .local v8, modifiedTitle:Ljava/lang/String;
    const/4 v6, 0x0

    .line 599
    .local v6, fileTitle:Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 600
    const-string v0, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "modifiedTitle:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :goto_0
    if-nez v8, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 607
    :goto_1
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 608
    .local v9, values:Landroid/content/ContentValues;
    const-string v0, "title"

    invoke-virtual {v9, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v2}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v9, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 612
    return-void

    .line 602
    .end local v9           #values:Landroid/content/ContentValues;
    :cond_1
    const-string v0, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "item.getDataString():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object v6, v8

    .line 604
    goto :goto_1
.end method

.method private updateDatabaseFromHeaders(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;)V
    .locals 5
    .parameter "state"
    .parameter "innerState"

    .prologue
    const/4 v4, 0x0

    .line 927
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 928
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "_data"

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mHeaderETag:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 930
    const-string v1, "etag"

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mHeaderETag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    :cond_0
    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 933
    const-string v1, "mimetype"

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    :cond_1
    const-string v1, "total_bytes"

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 936
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v2}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 937
    return-void
.end method

.method private userAgent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v0, v1, Lcom/android/providers/downloads/DownloadInfo;->mUserAgent:Ljava/lang/String;

    .line 110
    .local v0, userAgent:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 112
    :cond_0
    if-nez v0, :cond_1

    .line 113
    const-string v0, "AndroidDownloadManager"

    .line 115
    :cond_1
    return-object v0
.end method

.method private wifiPowerModeControl(Lcom/android/providers/downloads/DownloadThread$State;Z)V
    .locals 4
    .parameter "state"
    .parameter "enable"

    .prologue
    const/4 v3, 0x1

    .line 322
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-boolean v1, v1, Lcom/android/providers/downloads/DownloadInfo;->mIsOTAUpdate:Z

    if-ne v1, v3, :cond_0

    .line 323
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 325
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_0

    .line 326
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/providers/downloads/Helpers;->getNetworkAvailableType(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 327
    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->enablePowerActiveForFotaDownload(Z)Z

    move-result v1

    iput-boolean v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mWifiControl:Z

    .line 340
    .end local v0           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_0
    :goto_0
    return-void

    .line 332
    .restart local v0       #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_1
    if-nez p2, :cond_0

    iget-boolean v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mWifiControl:Z

    if-ne v1, v3, :cond_0

    .line 333
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->enablePowerActiveForFotaDownload(Z)Z

    move-result v1

    iput-boolean v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mWifiControl:Z

    goto :goto_0
.end method

.method private writeDataToDestination(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;[BI)V
    .locals 6
    .parameter "state"
    .parameter "innerState"
    .parameter "data"
    .parameter "bytesRead"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/StopRequestException;
        }
    .end annotation

    .prologue
    .line 690
    :try_start_0
    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    if-nez v1, :cond_0

    .line 691
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 698
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/providers/downloads/DownloadInfo;->mStorageInsufficient:Z

    .line 699
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mStorageManager:Lcom/android/providers/downloads/StorageManager;

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    iget-object v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    int-to-long v4, p4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/providers/downloads/StorageManager;->verifySpaceBeforeWritingToFile(ILjava/lang/String;J)V
    :try_end_1
    .catch Lcom/android/providers/downloads/StopRequestException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 709
    :goto_0
    :try_start_2
    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, p3, v2, p4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 712
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->isDrmFile(Lcom/android/providers/downloads/DownloadThread$State;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    if-nez v1, :cond_2

    .line 717
    :try_start_3
    iget-wide v1, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mSyncThreshold:J

    const-wide/32 v3, 0x99999

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    iget-wide v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    iget-wide v3, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mBytesSync:J

    sub-long/2addr v1, v3

    iget-wide v3, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mSyncThreshold:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 719
    iget-wide v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCurrentBytes:J

    iput-wide v1, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mBytesSync:J

    .line 720
    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_3
    .catch Ljava/io/SyncFailedException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 739
    :cond_1
    :goto_1
    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->closeDestination(Lcom/android/providers/downloads/DownloadThread$State;)V

    .line 751
    :cond_2
    return-void

    .line 701
    :catch_0
    move-exception v0

    .line 702
    .local v0, ex:Lcom/android/providers/downloads/StopRequestException;
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/providers/downloads/DownloadInfo;->mStorageInsufficient:Z

    .line 703
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insufficent storage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 752
    .end local v0           #ex:Lcom/android/providers/downloads/StopRequestException;
    :catch_1
    move-exception v0

    .line 756
    .local v0, ex:Ljava/io/IOException;
    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_3

    .line 757
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mStorageManager:Lcom/android/providers/downloads/StorageManager;

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    iget-object v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    int-to-long v4, p4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/providers/downloads/StorageManager;->verifySpace(ILjava/lang/String;J)V

    .line 762
    :cond_3
    new-instance v1, Lcom/android/providers/downloads/StopRequestException;

    const/16 v2, 0x1ec

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "while opening destination file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/android/providers/downloads/StopRequestException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 731
    .end local v0           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v1

    goto :goto_1

    .line 726
    :catch_3
    move-exception v1

    goto :goto_1

    .line 722
    :catch_4
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 200
    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 202
    new-instance v21, Lcom/android/providers/downloads/DownloadThread$State;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Lcom/android/providers/downloads/DownloadThread$State;-><init>(Lcom/android/providers/downloads/DownloadInfo;)V

    .line 203
    .local v21, state:Lcom/android/providers/downloads/DownloadThread$State;
    const/4 v12, 0x0

    .line 204
    .local v12, client:Landroid/net/http/AndroidHttpClient;
    const/16 v22, 0x0

    .line 205
    .local v22, wakeLock:Landroid/os/PowerManager$WakeLock;
    const/16 v4, 0x1eb

    .line 206
    .local v4, finalStatus:I
    const/4 v11, 0x0

    .line 208
    .local v11, errorMsg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/net/NetworkPolicyManager;->getSystemService(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v18

    .line 209
    .local v18, netPolicy:Landroid/net/NetworkPolicyManager;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/PowerManager;

    .line 212
    .local v19, pm:Landroid/os/PowerManager;
    const/4 v3, 0x1

    :try_start_0
    const-string v5, "DownloadManager"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v22

    .line 213
    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadThread;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/net/NetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V

    .line 218
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v3, :cond_0

    .line 219
    const-string v3, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initiating download for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v6, v6, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadThread;->userAgent()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-static {v3, v5}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v12

    .line 226
    const/16 v3, -0xff

    invoke-static {v3}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 227
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mUid:I

    invoke-static {v3}, Landroid/net/TrafficStats;->setThreadStatsUid(I)V

    .line 231
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/providers/downloads/DownloadThread;->setRouteIfNeed(Lcom/android/providers/downloads/DownloadThread$State;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/android/providers/downloads/StopRequestException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_3

    .line 282
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 283
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V

    .line 285
    if-eqz v12, :cond_1

    .line 286
    invoke-virtual {v12}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 287
    const/4 v12, 0x0

    .line 291
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v3}, Lcom/android/providers/downloads/DownloadThread;->wifiPowerModeControl(Lcom/android/providers/downloads/DownloadThread$State;Z)V

    .line 292
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadThread;->stopNetworkFeature()V

    .line 294
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v4}, Lcom/android/providers/downloads/DownloadThread;->cleanupDestination(Lcom/android/providers/downloads/DownloadThread$State;I)V

    .line 295
    move-object/from16 v0, v21

    iget-boolean v5, v0, Lcom/android/providers/downloads/DownloadThread$State;->mCountRetry:Z

    move-object/from16 v0, v21

    iget v6, v0, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    move-object/from16 v0, v21

    iget-boolean v7, v0, Lcom/android/providers/downloads/DownloadThread$State;->mGotData:Z

    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v9, v0, Lcom/android/providers/downloads/DownloadThread$State;->mNewUri:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v10, v0, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/android/providers/downloads/DownloadThread;->notifyDownloadCompleted(IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-static {}, Lcom/android/providers/downloads/DownloadHandler;->getInstance()Lcom/android/providers/downloads/DownloadHandler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v5, v5, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v3, v5, v6}, Lcom/android/providers/downloads/DownloadHandler;->dequeueDownload(J)V

    .line 302
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadThread;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/net/NetworkPolicyManager;->unregisterListener(Landroid/net/INetworkPolicyListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 311
    :goto_0
    if-eqz v22, :cond_2

    .line 312
    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 313
    const/16 v22, 0x0

    .line 317
    :cond_2
    :goto_1
    return-void

    .line 234
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/providers/downloads/DownloadThread;->setAPNProxy(Landroid/net/http/AndroidHttpClient;)V

    .line 237
    const/16 v16, 0x0

    .line 238
    .local v16, finished:Z
    :goto_2
    if-nez v16, :cond_7

    .line 239
    const-string v3, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Initiating request for download "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v6, v6, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {v12}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/providers/downloads/DownloadThread$State;->mRequestUri:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/net/Proxy;->getPreferredHttpHost(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/HttpHost;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 244
    new-instance v20, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadThread$State;->mRequestUri:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lcom/android/providers/downloads/StopRequestException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 248
    .local v20, request:Lorg/apache/http/client/methods/HttpGet;
    :try_start_3
    invoke-virtual {v12}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    const v5, 0xea60

    invoke-static {v3, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 250
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v12, v2}, Lcom/android/providers/downloads/DownloadThread;->executeDownload(Lcom/android/providers/downloads/DownloadThread$State;Landroid/net/http/AndroidHttpClient;Lorg/apache/http/client/methods/HttpGet;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/android/providers/downloads/DownloadThread$RetryDownload; {:try_start_3 .. :try_end_3} :catch_6

    .line 251
    const/16 v16, 0x1

    .line 255
    :try_start_4
    invoke-virtual/range {v20 .. v20}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 256
    :goto_3
    const/16 v20, 0x0

    goto :goto_2

    .line 255
    :catchall_0
    move-exception v3

    invoke-virtual/range {v20 .. v20}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 256
    const/16 v20, 0x0

    .line 255
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Lcom/android/providers/downloads/StopRequestException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 265
    .end local v16           #finished:Z
    .end local v20           #request:Lorg/apache/http/client/methods/HttpGet;
    :catch_0
    move-exception v14

    .line 267
    .local v14, error:Lcom/android/providers/downloads/StopRequestException;
    :try_start_5
    invoke-virtual {v14}, Lcom/android/providers/downloads/StopRequestException;->getMessage()Ljava/lang/String;

    move-result-object v11

    .line 268
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Aborting request for download "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v5, v5, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 269
    .local v17, msg:Ljava/lang/String;
    const-string v3, "DownloadManager"

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v3, :cond_4

    .line 271
    const-string v3, "DownloadManager"

    move-object/from16 v0, v17

    invoke-static {v3, v0, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    :cond_4
    iget v4, v14, Lcom/android/providers/downloads/StopRequestException;->mFinalStatus:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 282
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 283
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V

    .line 285
    if-eqz v12, :cond_5

    .line 286
    invoke-virtual {v12}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 287
    const/4 v12, 0x0

    .line 291
    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v3}, Lcom/android/providers/downloads/DownloadThread;->wifiPowerModeControl(Lcom/android/providers/downloads/DownloadThread$State;Z)V

    .line 292
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadThread;->stopNetworkFeature()V

    .line 294
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v4}, Lcom/android/providers/downloads/DownloadThread;->cleanupDestination(Lcom/android/providers/downloads/DownloadThread$State;I)V

    .line 295
    move-object/from16 v0, v21

    iget-boolean v5, v0, Lcom/android/providers/downloads/DownloadThread$State;->mCountRetry:Z

    move-object/from16 v0, v21

    iget v6, v0, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    move-object/from16 v0, v21

    iget-boolean v7, v0, Lcom/android/providers/downloads/DownloadThread$State;->mGotData:Z

    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v9, v0, Lcom/android/providers/downloads/DownloadThread$State;->mNewUri:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v10, v0, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/android/providers/downloads/DownloadThread;->notifyDownloadCompleted(IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-static {}, Lcom/android/providers/downloads/DownloadHandler;->getInstance()Lcom/android/providers/downloads/DownloadHandler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v5, v5, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v3, v5, v6}, Lcom/android/providers/downloads/DownloadHandler;->dequeueDownload(J)V

    .line 302
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadThread;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/net/NetworkPolicyManager;->unregisterListener(Landroid/net/INetworkPolicyListener;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 311
    :goto_4
    if-eqz v22, :cond_6

    .line 312
    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 313
    .end local v14           #error:Lcom/android/providers/downloads/StopRequestException;
    .end local v17           #msg:Ljava/lang/String;
    :goto_5
    const/16 v22, 0x0

    .line 316
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadThread;->mStorageManager:Lcom/android/providers/downloads/StorageManager;

    invoke-virtual {v3}, Lcom/android/providers/downloads/StorageManager;->incrementNumDownloadsSoFar()V

    goto/16 :goto_1

    .line 260
    .restart local v16       #finished:Z
    :cond_7
    :try_start_7
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v3, :cond_8

    .line 261
    const-string v3, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "download completed for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v6, v6, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/providers/downloads/DownloadThread;->finalizeDestinationFile(Lcom/android/providers/downloads/DownloadThread$State;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Lcom/android/providers/downloads/StopRequestException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    .line 264
    const/16 v4, 0xc8

    .line 282
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 283
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V

    .line 285
    if-eqz v12, :cond_9

    .line 286
    invoke-virtual {v12}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 287
    const/4 v12, 0x0

    .line 291
    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v3}, Lcom/android/providers/downloads/DownloadThread;->wifiPowerModeControl(Lcom/android/providers/downloads/DownloadThread$State;Z)V

    .line 292
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadThread;->stopNetworkFeature()V

    .line 294
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v4}, Lcom/android/providers/downloads/DownloadThread;->cleanupDestination(Lcom/android/providers/downloads/DownloadThread$State;I)V

    .line 295
    move-object/from16 v0, v21

    iget-boolean v5, v0, Lcom/android/providers/downloads/DownloadThread$State;->mCountRetry:Z

    move-object/from16 v0, v21

    iget v6, v0, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    move-object/from16 v0, v21

    iget-boolean v7, v0, Lcom/android/providers/downloads/DownloadThread$State;->mGotData:Z

    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v9, v0, Lcom/android/providers/downloads/DownloadThread$State;->mNewUri:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v10, v0, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/android/providers/downloads/DownloadThread;->notifyDownloadCompleted(IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-static {}, Lcom/android/providers/downloads/DownloadHandler;->getInstance()Lcom/android/providers/downloads/DownloadHandler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v5, v5, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v3, v5, v6}, Lcom/android/providers/downloads/DownloadHandler;->dequeueDownload(J)V

    .line 302
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadThread;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/net/NetworkPolicyManager;->unregisterListener(Landroid/net/INetworkPolicyListener;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 311
    :goto_6
    if-eqz v22, :cond_6

    .line 312
    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_5

    .line 275
    .end local v16           #finished:Z
    :catch_1
    move-exception v15

    .line 276
    .local v15, ex:Ljava/lang/Throwable;
    :try_start_9
    invoke-virtual {v15}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    .line 277
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception for id "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v5, v5, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 278
    .restart local v17       #msg:Ljava/lang/String;
    const-string v3, "DownloadManager"

    move-object/from16 v0, v17

    invoke-static {v3, v0, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 279
    const/16 v4, 0x1eb

    .line 282
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 283
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V

    .line 285
    if-eqz v12, :cond_a

    .line 286
    invoke-virtual {v12}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 287
    const/4 v12, 0x0

    .line 291
    :cond_a
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v3}, Lcom/android/providers/downloads/DownloadThread;->wifiPowerModeControl(Lcom/android/providers/downloads/DownloadThread$State;Z)V

    .line 292
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadThread;->stopNetworkFeature()V

    .line 294
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v4}, Lcom/android/providers/downloads/DownloadThread;->cleanupDestination(Lcom/android/providers/downloads/DownloadThread$State;I)V

    .line 295
    move-object/from16 v0, v21

    iget-boolean v5, v0, Lcom/android/providers/downloads/DownloadThread$State;->mCountRetry:Z

    move-object/from16 v0, v21

    iget v6, v0, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    move-object/from16 v0, v21

    iget-boolean v7, v0, Lcom/android/providers/downloads/DownloadThread$State;->mGotData:Z

    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v9, v0, Lcom/android/providers/downloads/DownloadThread$State;->mNewUri:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v10, v0, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/android/providers/downloads/DownloadThread;->notifyDownloadCompleted(IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-static {}, Lcom/android/providers/downloads/DownloadHandler;->getInstance()Lcom/android/providers/downloads/DownloadHandler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v5, v5, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v3, v5, v6}, Lcom/android/providers/downloads/DownloadHandler;->dequeueDownload(J)V

    .line 302
    :try_start_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadThread;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/net/NetworkPolicyManager;->unregisterListener(Landroid/net/INetworkPolicyListener;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 311
    :goto_7
    if-eqz v22, :cond_6

    .line 312
    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_5

    .line 282
    .end local v15           #ex:Ljava/lang/Throwable;
    .end local v17           #msg:Ljava/lang/String;
    :catchall_1
    move-exception v3

    move-object/from16 v23, v3

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 283
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V

    .line 285
    if-eqz v12, :cond_b

    .line 286
    invoke-virtual {v12}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 287
    const/4 v12, 0x0

    .line 291
    :cond_b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v3}, Lcom/android/providers/downloads/DownloadThread;->wifiPowerModeControl(Lcom/android/providers/downloads/DownloadThread$State;Z)V

    .line 292
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadThread;->stopNetworkFeature()V

    .line 294
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v4}, Lcom/android/providers/downloads/DownloadThread;->cleanupDestination(Lcom/android/providers/downloads/DownloadThread$State;I)V

    .line 295
    move-object/from16 v0, v21

    iget-boolean v5, v0, Lcom/android/providers/downloads/DownloadThread$State;->mCountRetry:Z

    move-object/from16 v0, v21

    iget v6, v0, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    move-object/from16 v0, v21

    iget-boolean v7, v0, Lcom/android/providers/downloads/DownloadThread$State;->mGotData:Z

    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v9, v0, Lcom/android/providers/downloads/DownloadThread$State;->mNewUri:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v10, v0, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/android/providers/downloads/DownloadThread;->notifyDownloadCompleted(IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-static {}, Lcom/android/providers/downloads/DownloadHandler;->getInstance()Lcom/android/providers/downloads/DownloadHandler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v5, v5, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v3, v5, v6}, Lcom/android/providers/downloads/DownloadHandler;->dequeueDownload(J)V

    .line 302
    :try_start_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/downloads/DownloadThread;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/net/NetworkPolicyManager;->unregisterListener(Landroid/net/INetworkPolicyListener;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .line 311
    :goto_8
    if-eqz v22, :cond_c

    .line 312
    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 313
    const/16 v22, 0x0

    .line 282
    :cond_c
    throw v23

    .line 304
    :catch_2
    move-exception v13

    .line 305
    .local v13, e:Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    .line 306
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception for id "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v5, v5, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 307
    .restart local v17       #msg:Ljava/lang/String;
    const-string v3, "DownloadManager"

    move-object/from16 v0, v17

    invoke-static {v3, v0, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 304
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v14       #error:Lcom/android/providers/downloads/StopRequestException;
    :catch_3
    move-exception v13

    .line 305
    .restart local v13       #e:Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    .line 306
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception for id "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v5, v5, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 307
    const-string v3, "DownloadManager"

    move-object/from16 v0, v17

    invoke-static {v3, v0, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 304
    .end local v13           #e:Ljava/lang/Exception;
    .end local v14           #error:Lcom/android/providers/downloads/StopRequestException;
    .restart local v15       #ex:Ljava/lang/Throwable;
    :catch_4
    move-exception v13

    .line 305
    .restart local v13       #e:Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    .line 306
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception for id "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v5, v5, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 307
    const-string v3, "DownloadManager"

    move-object/from16 v0, v17

    invoke-static {v3, v0, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 304
    .end local v13           #e:Ljava/lang/Exception;
    .end local v15           #ex:Ljava/lang/Throwable;
    .end local v17           #msg:Ljava/lang/String;
    :catch_5
    move-exception v13

    .line 305
    .restart local v13       #e:Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    .line 306
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception for id "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v5, v5, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 307
    .restart local v17       #msg:Ljava/lang/String;
    const-string v3, "DownloadManager"

    move-object/from16 v0, v17

    invoke-static {v3, v0, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 252
    .end local v13           #e:Ljava/lang/Exception;
    .end local v17           #msg:Ljava/lang/String;
    .restart local v16       #finished:Z
    .restart local v20       #request:Lorg/apache/http/client/methods/HttpGet;
    :catch_6
    move-exception v3

    .line 255
    :try_start_c
    invoke-virtual/range {v20 .. v20}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Lcom/android/providers/downloads/StopRequestException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1

    goto/16 :goto_3

    .line 304
    .end local v20           #request:Lorg/apache/http/client/methods/HttpGet;
    :catch_7
    move-exception v13

    .line 305
    .restart local v13       #e:Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    .line 306
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception for id "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v5, v5, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 307
    .restart local v17       #msg:Ljava/lang/String;
    const-string v3, "DownloadManager"

    move-object/from16 v0, v17

    invoke-static {v3, v0, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6
.end method
