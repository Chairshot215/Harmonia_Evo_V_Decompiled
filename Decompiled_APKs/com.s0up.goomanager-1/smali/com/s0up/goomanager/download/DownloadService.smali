.class public Lcom/s0up/goomanager/download/DownloadService;
.super Landroid/app/Service;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/s0up/goomanager/download/DownloadService$DownloadHandler;,
        Lcom/s0up/goomanager/download/DownloadService$DownloadTask;,
        Lcom/s0up/goomanager/download/DownloadService$LocalBinder;,
        Lcom/s0up/goomanager/download/DownloadService$OnUpdateListener;
    }
.end annotation


# static fields
.field public static final ARG1_STATUS_CANCELLED:I = 0x5

.field public static final ARG1_STATUS_CHECKING_MD5SUM:I = 0x6

.field public static final ARG1_STATUS_ERRORED:I = 0x4

.field public static final ARG1_STATUS_FINISHED:I = 0x3

.field public static final ARG1_STATUS_STARTED:I = 0x1

.field public static final ARG1_STATUS_UPDATE:I = 0x2

.field public static final ARG2_ERRORED_CHECKSUM_DOESNT_MATCH:I = 0x2

.field public static final ARG2_ERRORED_NON_200_STATUS:I = 0x8

.field public static final ARG2_ERRORED_NO_SPACE_LEFT_ON_DEVICE:I = 0x4

.field public static final ARG2_ERRORED_OUTPUT_FILE_IS_FOLDER:I = 0x7

.field public static final ARG2_ERRORED_STORAGE_NOT_WRITEABLE:I = 0x5

.field public static final ARG2_ERRORED_TIMEOUT:I = 0x1

.field public static final ARG2_ERRORED_UNABLE_TO_CONNECT:I = 0x3

.field public static final ARG2_ERRORED_UNABLE_TO_WRITE:I = 0x6

.field private static final DOWNLOAD_BUFFER_SIZE:I = 0xfa000

.field public static final DOWNLOAD_BUNDLE_KEY:Ljava/lang/String; = "downloadFile"

.field private static final DOWNLOAD_HASH_CODE:Ljava/lang/String; = "downloadKey"

.field private static final NOTIFICATION_ONGOING_ID:I = 0x1

.field private static final NUMBER_OF_CONCURRENT_DOWNLOADS:I = 0x1

.field private static final TIMES_TO_RETRY:I = 0x50

.field public static final WHAT_DOWNLOAD_FILE:I = 0x1

.field public static final WHAT_UPDATE_STATUS:I = 0x2


# instance fields
.field private checkingMd5Sum:Z

.field private downloadProgress:I

.field private hasOngoingNotification:Z

.field private mBinder:Landroid/os/IBinder;

.field private mDownloads:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/s0up/goomanager/download/Download;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mOnUpdateListener:Lcom/s0up/goomanager/download/DownloadService$OnUpdateListener;

.field private mThreadPool:Ljava/util/concurrent/ExecutorService;

.field private resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 85
    new-instance v0, Lcom/s0up/goomanager/download/DownloadService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/s0up/goomanager/download/DownloadService$LocalBinder;-><init>(Lcom/s0up/goomanager/download/DownloadService;)V

    iput-object v0, p0, Lcom/s0up/goomanager/download/DownloadService;->mBinder:Landroid/os/IBinder;

    .line 97
    iput-boolean v1, p0, Lcom/s0up/goomanager/download/DownloadService;->hasOngoingNotification:Z

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Lcom/s0up/goomanager/download/DownloadService;->downloadProgress:I

    .line 104
    iput-boolean v1, p0, Lcom/s0up/goomanager/download/DownloadService;->checkingMd5Sum:Z

    .line 57
    return-void
.end method

.method static synthetic access$0(Lcom/s0up/goomanager/download/DownloadService;Lcom/s0up/goomanager/download/Download;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/s0up/goomanager/download/DownloadService;->submitPendingDownload(Lcom/s0up/goomanager/download/Download;)V

    return-void
.end method

.method static synthetic access$1(Lcom/s0up/goomanager/download/DownloadService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/s0up/goomanager/download/DownloadService;->mDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$10(Lcom/s0up/goomanager/download/DownloadService;Lcom/s0up/goomanager/download/Download;IILjava/lang/Throwable;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 686
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/s0up/goomanager/download/DownloadService;->sendUpdateMessage(Lcom/s0up/goomanager/download/Download;IILjava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$11(Lcom/s0up/goomanager/download/DownloadService;Lcom/s0up/goomanager/download/DownloadService$OnUpdateListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/s0up/goomanager/download/DownloadService;->mOnUpdateListener:Lcom/s0up/goomanager/download/DownloadService$OnUpdateListener;

    return-void
.end method

.method static synthetic access$12(Lcom/s0up/goomanager/download/DownloadService;)Lcom/s0up/goomanager/download/DownloadService$OnUpdateListener;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/s0up/goomanager/download/DownloadService;->mOnUpdateListener:Lcom/s0up/goomanager/download/DownloadService$OnUpdateListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/s0up/goomanager/download/DownloadService;Lcom/s0up/goomanager/download/Download;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lcom/s0up/goomanager/download/DownloadService;->onDownloadStarted(Lcom/s0up/goomanager/download/Download;)V

    return-void
.end method

.method static synthetic access$3(Lcom/s0up/goomanager/download/DownloadService;Lcom/s0up/goomanager/download/Download;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 235
    invoke-direct {p0, p1, p2, p3}, Lcom/s0up/goomanager/download/DownloadService;->onDownloadUpdated(Lcom/s0up/goomanager/download/Download;J)V

    return-void
.end method

.method static synthetic access$4(Lcom/s0up/goomanager/download/DownloadService;Lcom/s0up/goomanager/download/Download;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lcom/s0up/goomanager/download/DownloadService;->onDownloadFinished(Lcom/s0up/goomanager/download/Download;)V

    return-void
.end method

.method static synthetic access$5(Lcom/s0up/goomanager/download/DownloadService;Lcom/s0up/goomanager/download/Download;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 369
    invoke-direct {p0, p1, p2}, Lcom/s0up/goomanager/download/DownloadService;->onDownloadErrored(Lcom/s0up/goomanager/download/Download;I)V

    return-void
.end method

.method static synthetic access$6(Lcom/s0up/goomanager/download/DownloadService;Lcom/s0up/goomanager/download/Download;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 400
    invoke-direct {p0, p1}, Lcom/s0up/goomanager/download/DownloadService;->onDownloadCancelled(Lcom/s0up/goomanager/download/Download;)V

    return-void
.end method

.method static synthetic access$7(Lcom/s0up/goomanager/download/DownloadService;Lcom/s0up/goomanager/download/Download;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 406
    invoke-direct {p0, p1}, Lcom/s0up/goomanager/download/DownloadService;->onDownloadCheckingMD5Sum(Lcom/s0up/goomanager/download/Download;)V

    return-void
.end method

.method static synthetic access$8(Lcom/s0up/goomanager/download/DownloadService;Lcom/s0up/goomanager/download/Download;II)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 691
    invoke-direct {p0, p1, p2, p3}, Lcom/s0up/goomanager/download/DownloadService;->sendUpdateMessage(Lcom/s0up/goomanager/download/Download;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9(Lcom/s0up/goomanager/download/DownloadService;Lcom/s0up/goomanager/download/Download;IILjava/lang/String;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 681
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/s0up/goomanager/download/DownloadService;->sendUpdateMessage(Lcom/s0up/goomanager/download/Download;IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private generateNotification(Lcom/s0up/goomanager/download/Download;ILandroid/app/PendingIntent;)V
    .locals 9
    .parameter "download"
    .parameter "title"
    .parameter "pendingIntent"

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f020006

    .line 335
    iget-object v4, p0, Lcom/s0up/goomanager/download/DownloadService;->resources:Landroid/content/res/Resources;

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/s0up/goomanager/download/DownloadService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, p0, Lcom/s0up/goomanager/download/DownloadService;->resources:Landroid/content/res/Resources;

    .line 336
    :cond_0
    invoke-direct {p0, p1}, Lcom/s0up/goomanager/download/DownloadService;->handleDownloadCompletedOnGoingNotification(Lcom/s0up/goomanager/download/Download;)V

    .line 337
    const/4 v2, 0x0

    .line 338
    .local v2, notification:Landroid/app/Notification;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-ge v4, v5, :cond_1

    .line 339
    new-instance v2, Landroid/app/Notification;

    .end local v2           #notification:Landroid/app/Notification;
    const-string v4, "Downloading file..."

    .line 340
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 339
    invoke-direct {v2, v7, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 341
    .restart local v2       #notification:Landroid/app/Notification;
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/s0up/goomanager/download/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 342
    const v6, 0x7f030001

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 341
    iput-object v4, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 343
    const/4 v4, 0x0

    iput-object v4, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 344
    iget-object v4, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v5, 0x7f090004

    invoke-virtual {v4, v5, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 345
    iget-object v4, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v5, 0x7f090005

    iget-object v6, p0, Lcom/s0up/goomanager/download/DownloadService;->resources:Landroid/content/res/Resources;

    invoke-virtual {v6, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 346
    iget-object v4, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v5, 0x7f090006

    new-instance v6, Ljava/io/File;

    .line 347
    iget-object v7, p1, Lcom/s0up/goomanager/download/Download;->outputFile:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 346
    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 348
    iget-object v4, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v5, 0x7f090007

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 356
    :goto_0
    if-nez p3, :cond_2

    .line 357
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/s0up/goomanager/GooManagerActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 358
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p0, v8, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 360
    .local v1, newPendingIntent:Landroid/app/PendingIntent;
    iput-object v1, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 364
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #newPendingIntent:Landroid/app/PendingIntent;
    :goto_1
    iget v4, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x11

    iput v4, v2, Landroid/app/Notification;->flags:I

    .line 365
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Lcom/s0up/goomanager/download/DownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 366
    .local v3, ns:Landroid/app/NotificationManager;
    invoke-virtual {p1}, Lcom/s0up/goomanager/download/Download;->hashCode()I

    move-result v4

    add-int/lit8 v4, v4, 0xa

    invoke-virtual {v3, v4, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 367
    return-void

    .line 350
    .end local v3           #ns:Landroid/app/NotificationManager;
    :cond_1
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 351
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 352
    iget-object v5, p0, Lcom/s0up/goomanager/download/DownloadService;->resources:Landroid/content/res/Resources;

    invoke-virtual {v5, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 353
    new-instance v5, Ljava/io/File;

    iget-object v6, p1, Lcom/s0up/goomanager/download/Download;->outputFile:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 350
    goto :goto_0

    .line 362
    :cond_2
    iput-object p3, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_1
.end method

.method private handleDownloadCompletedOnGoingNotification(Lcom/s0up/goomanager/download/Download;)V
    .locals 5
    .parameter "download"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 280
    if-eqz p1, :cond_0

    .line 281
    iget-object v1, p1, Lcom/s0up/goomanager/download/Download;->isDownloading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 282
    iget-object v1, p0, Lcom/s0up/goomanager/download/DownloadService;->mDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/s0up/goomanager/download/Download;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/s0up/goomanager/download/DownloadService;->mDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/s0up/goomanager/download/DownloadService;->hasOngoingNotification:Z

    if-eqz v1, :cond_1

    .line 285
    iput-boolean v3, p0, Lcom/s0up/goomanager/download/DownloadService;->hasOngoingNotification:Z

    .line 286
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/s0up/goomanager/download/DownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 287
    .local v0, ns:Landroid/app/NotificationManager;
    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 288
    invoke-virtual {p0, v4}, Lcom/s0up/goomanager/download/DownloadService;->stopForeground(Z)V

    .line 291
    .end local v0           #ns:Landroid/app/NotificationManager;
    :cond_1
    const-string v1, "GooManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handling completed download. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/s0up/goomanager/download/DownloadService;->mDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-void
.end method

.method private onDownloadCancelled(Lcom/s0up/goomanager/download/Download;)V
    .locals 2
    .parameter "download"

    .prologue
    .line 401
    invoke-direct {p0, p1}, Lcom/s0up/goomanager/download/DownloadService;->handleDownloadCompletedOnGoingNotification(Lcom/s0up/goomanager/download/Download;)V

    .line 402
    invoke-direct {p0, p1}, Lcom/s0up/goomanager/download/DownloadService;->sendDownloadCancelledMessage(Lcom/s0up/goomanager/download/Download;)V

    .line 403
    const-string v0, "GooManager"

    const-string v1, "download cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    return-void
.end method

.method private onDownloadCheckingMD5Sum(Lcom/s0up/goomanager/download/Download;)V
    .locals 11
    .parameter "download"

    .prologue
    const v8, 0x7f070014

    const/4 v10, 0x0

    const v7, 0x7f020006

    const/4 v9, 0x1

    .line 407
    iget-object v4, p0, Lcom/s0up/goomanager/download/DownloadService;->resources:Landroid/content/res/Resources;

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/s0up/goomanager/download/DownloadService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, p0, Lcom/s0up/goomanager/download/DownloadService;->resources:Landroid/content/res/Resources;

    .line 408
    :cond_0
    const/4 v1, 0x0

    .line 410
    .local v1, notification:Landroid/app/Notification;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-ge v4, v5, :cond_1

    .line 411
    new-instance v1, Landroid/app/Notification;

    .end local v1           #notification:Landroid/app/Notification;
    const-string v4, "Downloading file..."

    .line 412
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 411
    invoke-direct {v1, v7, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 413
    .restart local v1       #notification:Landroid/app/Notification;
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/s0up/goomanager/download/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 414
    const v6, 0x7f030001

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 413
    iput-object v4, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 415
    const/4 v4, 0x0

    iput-object v4, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 416
    iget-object v4, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v5, 0x7f090004

    invoke-virtual {v4, v5, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 417
    iget-object v4, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v5, 0x7f090005

    .line 418
    iget-object v6, p0, Lcom/s0up/goomanager/download/DownloadService;->resources:Landroid/content/res/Resources;

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 417
    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 419
    iget-object v4, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v5, 0x7f090006

    new-instance v6, Ljava/lang/StringBuilder;

    new-instance v7, Ljava/io/File;

    .line 420
    iget-object v8, p1, Lcom/s0up/goomanager/download/Download;->outputFile:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " (1 / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/s0up/goomanager/download/DownloadService;->mDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 419
    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 421
    iget-object v4, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v5, 0x7f090007

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 422
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/s0up/goomanager/GooManagerActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 423
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p0, v10, v0, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 425
    .local v3, pendingIntent:Landroid/app/PendingIntent;
    iput-object v3, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 436
    .end local v0           #intent:Landroid/content/Intent;
    .end local v3           #pendingIntent:Landroid/app/PendingIntent;
    :goto_0
    const/16 v4, 0x42

    iput v4, v1, Landroid/app/Notification;->flags:I

    .line 438
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Lcom/s0up/goomanager/download/DownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 439
    .local v2, ns:Landroid/app/NotificationManager;
    invoke-virtual {v2, v9, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 440
    invoke-direct {p0, p1}, Lcom/s0up/goomanager/download/DownloadService;->sendDownloadCheckingMD5SumMessage(Lcom/s0up/goomanager/download/Download;)V

    .line 441
    return-void

    .line 427
    .end local v2           #ns:Landroid/app/NotificationManager;
    :cond_1
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 428
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 430
    iget-object v5, p0, Lcom/s0up/goomanager/download/DownloadService;->resources:Landroid/content/res/Resources;

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 429
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 431
    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    const/16 v5, 0x64

    iget v6, p0, Lcom/s0up/goomanager/download/DownloadService;->downloadProgress:I

    invoke-virtual {v4, v5, v6, v9}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 432
    new-instance v5, Ljava/io/File;

    iget-object v6, p1, Lcom/s0up/goomanager/download/Download;->outputFile:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 433
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "1 / "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/s0up/goomanager/download/DownloadService;->mDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 427
    goto :goto_0
.end method

.method private onDownloadErrored(Lcom/s0up/goomanager/download/Download;I)V
    .locals 5
    .parameter "download"
    .parameter "arg2Error"

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 370
    invoke-direct {p0, p1}, Lcom/s0up/goomanager/download/DownloadService;->handleDownloadCompletedOnGoingNotification(Lcom/s0up/goomanager/download/Download;)V

    .line 372
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 374
    const v1, 0x7f070011

    .line 373
    invoke-direct {p0, p1, v1, v3}, Lcom/s0up/goomanager/download/DownloadService;->generateNotification(Lcom/s0up/goomanager/download/Download;ILandroid/app/PendingIntent;)V

    .line 396
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/s0up/goomanager/download/DownloadService;->sendDownloadErroredMessage(Lcom/s0up/goomanager/download/Download;I)V

    .line 397
    const-string v1, "GooManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "download errored "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    return-void

    .line 375
    :cond_0
    if-eq p2, v2, :cond_1

    if-eq p2, v4, :cond_1

    .line 376
    const/16 v1, 0x8

    if-ne p2, v1, :cond_5

    .line 377
    :cond_1
    if-eq p2, v2, :cond_2

    if-ne p2, v4, :cond_3

    .line 379
    :cond_2
    :try_start_0
    const-string v1, "GOO"

    const-string v2, "Sleeping to wait for possible reconnect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const-wide/16 v1, 0x2710

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :cond_3
    :goto_1
    iget v1, p1, Lcom/s0up/goomanager/download/Download;->numberOfTimesTried:I

    const/16 v2, 0x50

    if-ge v1, v2, :cond_4

    .line 387
    iget v1, p1, Lcom/s0up/goomanager/download/Download;->numberOfTimesTried:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/s0up/goomanager/download/Download;->numberOfTimesTried:I

    .line 388
    invoke-direct {p0, p1}, Lcom/s0up/goomanager/download/DownloadService;->submitPendingDownload(Lcom/s0up/goomanager/download/Download;)V

    goto :goto_0

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "GOO"

    const-string v2, "Unable to sleep thread"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 390
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    const v1, 0x7f070012

    invoke-direct {p0, p1, v1, v3}, Lcom/s0up/goomanager/download/DownloadService;->generateNotification(Lcom/s0up/goomanager/download/Download;ILandroid/app/PendingIntent;)V

    goto :goto_0

    .line 394
    :cond_5
    const v1, 0x7f070010

    invoke-direct {p0, p1, v1, v3}, Lcom/s0up/goomanager/download/DownloadService;->generateNotification(Lcom/s0up/goomanager/download/Download;ILandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private onDownloadFinished(Lcom/s0up/goomanager/download/Download;)V
    .locals 8
    .parameter "download"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 295
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 296
    .local v3, show_notification:Ljava/lang/Boolean;
    iget-object v4, p1, Lcom/s0up/goomanager/download/Download;->outputFile:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 300
    .local v1, fileUri:Landroid/net/Uri;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".zip"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 301
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    const-string v5, "openrecovery-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 302
    invoke-static {}, Lcom/s0up/goomanager/Singleton;->getInstance()Lcom/s0up/goomanager/Singleton;

    move-result-object v4

    iget-object v5, p1, Lcom/s0up/goomanager/download/Download;->outputFile:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .line 303
    const-string v6, "DOWNLOADED"

    .line 302
    invoke-virtual {v4, v5, v6}, Lcom/s0up/goomanager/Singleton;->setExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/s0up/goomanager/FlashActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 322
    .local v2, notificationIntent:Landroid/content/Intent;
    :goto_0
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 323
    invoke-static {p0, v7, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 325
    .local v0, contentIntent:Landroid/app/PendingIntent;
    const v4, 0x7f07000e

    invoke-direct {p0, p1, v4, v0}, Lcom/s0up/goomanager/download/DownloadService;->generateNotification(Lcom/s0up/goomanager/download/Download;ILandroid/app/PendingIntent;)V

    .line 327
    .end local v0           #contentIntent:Landroid/app/PendingIntent;
    :cond_0
    invoke-direct {p0, p1}, Lcom/s0up/goomanager/download/DownloadService;->sendDownloadFinishedMessage(Lcom/s0up/goomanager/download/Download;)V

    .line 328
    const-string v4, "GooManager"

    const-string v5, "download finished"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    return-void

    .line 306
    .end local v2           #notificationIntent:Landroid/content/Intent;
    :cond_1
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    const-string v5, "openrecovery-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 307
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 308
    invoke-direct {p0, p1}, Lcom/s0up/goomanager/download/DownloadService;->handleDownloadCompletedOnGoingNotification(Lcom/s0up/goomanager/download/Download;)V

    .line 309
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/s0up/goomanager/GetRecoveryActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 310
    .restart local v2       #notificationIntent:Landroid/content/Intent;
    const-string v4, "is_recovery"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 311
    const-string v4, "downloadedFile"

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".img"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 313
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".blob"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 314
    :cond_2
    const-string v4, "is_img"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 315
    const-string v4, "GOO"

    const-string v5, "File downloaded is a .img"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_3
    const/high16 v4, 0x1000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 318
    invoke-virtual {p0, v2}, Lcom/s0up/goomanager/download/DownloadService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 320
    .end local v2           #notificationIntent:Landroid/content/Intent;
    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/s0up/goomanager/NullActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v2       #notificationIntent:Landroid/content/Intent;
    goto :goto_0
.end method

.method private onDownloadStarted(Lcom/s0up/goomanager/download/Download;)V
    .locals 13
    .parameter "download"

    .prologue
    const v12, 0x102000d

    const/16 v11, 0x64

    const v10, 0x7f020006

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 183
    const-string v0, ""

    .line 184
    .local v0, downloadName:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 185
    iget-object v5, p1, Lcom/s0up/goomanager/download/Download;->outputFile:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 186
    new-instance v5, Ljava/io/File;

    iget-object v6, p1, Lcom/s0up/goomanager/download/Download;->outputFile:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 192
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/s0up/goomanager/download/DownloadService;->resources:Landroid/content/res/Resources;

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/s0up/goomanager/download/DownloadService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iput-object v5, p0, Lcom/s0up/goomanager/download/DownloadService;->resources:Landroid/content/res/Resources;

    .line 193
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/s0up/goomanager/ManageDownloadActivity;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    .local v1, manageDownloadIntent:Landroid/content/Intent;
    invoke-static {p0, v8, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 196
    .local v2, manageDownloadPendingIntent:Landroid/app/PendingIntent;
    const/4 v3, 0x0

    .line 197
    .local v3, notification:Landroid/app/Notification;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-ge v5, v6, :cond_3

    .line 198
    new-instance v3, Landroid/app/Notification;

    .end local v3           #notification:Landroid/app/Notification;
    const-string v5, "Downloading file..."

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 198
    invoke-direct {v3, v10, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 200
    .restart local v3       #notification:Landroid/app/Notification;
    new-instance v5, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/s0up/goomanager/download/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 201
    const v7, 0x7f030001

    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 200
    iput-object v5, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 202
    const/4 v5, 0x0

    iput-object v5, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 203
    iget-object v5, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v6, 0x7f090004

    invoke-virtual {v5, v6, v10}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 204
    iget-object v5, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v6, 0x7f090005

    .line 205
    iget-object v7, p0, Lcom/s0up/goomanager/download/DownloadService;->resources:Landroid/content/res/Resources;

    const v8, 0x7f070015

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 204
    invoke-virtual {v5, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 206
    iget-object v5, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v6, 0x7f090006

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    const-string v8, " (1 / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/s0up/goomanager/download/DownloadService;->mDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 206
    invoke-virtual {v5, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 208
    iget-object v5, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v6, 0x7f090007

    iget v7, p0, Lcom/s0up/goomanager/download/DownloadService;->downloadProgress:I

    invoke-virtual {v5, v6, v11, v7, v9}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 220
    :goto_1
    const/16 v5, 0x42

    iput v5, v3, Landroid/app/Notification;->flags:I

    .line 221
    iput-object v2, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 222
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Lcom/s0up/goomanager/download/DownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 223
    .local v4, ns:Landroid/app/NotificationManager;
    invoke-virtual {v4, v9, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 225
    iget-boolean v5, p0, Lcom/s0up/goomanager/download/DownloadService;->hasOngoingNotification:Z

    if-eqz v5, :cond_4

    .line 226
    invoke-virtual {v4, v9, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 231
    :goto_2
    invoke-direct {p0, p1}, Lcom/s0up/goomanager/download/DownloadService;->sendDownloadStartedMessage(Lcom/s0up/goomanager/download/Download;)V

    .line 232
    const-string v5, "GooManager"

    const-string v6, "starting download"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return-void

    .line 188
    .end local v1           #manageDownloadIntent:Landroid/content/Intent;
    .end local v2           #manageDownloadPendingIntent:Landroid/app/PendingIntent;
    .end local v3           #notification:Landroid/app/Notification;
    .end local v4           #ns:Landroid/app/NotificationManager;
    :cond_2
    iget-object v5, p1, Lcom/s0up/goomanager/download/Download;->url:Ljava/lang/String;

    iget-object v6, p1, Lcom/s0up/goomanager/download/Download;->url:Ljava/lang/String;

    const/16 v7, 0x2f

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 211
    .restart local v1       #manageDownloadIntent:Landroid/content/Intent;
    .restart local v2       #manageDownloadPendingIntent:Landroid/app/PendingIntent;
    .restart local v3       #notification:Landroid/app/Notification;
    :cond_3
    new-instance v5, Landroid/app/Notification$Builder;

    invoke-direct {v5, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 212
    invoke-virtual {v5, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 214
    iget-object v6, p0, Lcom/s0up/goomanager/download/DownloadService;->resources:Landroid/content/res/Resources;

    const v7, 0x7f070015

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 213
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 215
    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 216
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "1 / "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/s0up/goomanager/download/DownloadService;->mDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .line 217
    iget-object v5, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget v6, p0, Lcom/s0up/goomanager/download/DownloadService;->downloadProgress:I

    invoke-virtual {v5, v12, v11, v6, v9}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 218
    iget-object v5, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v5, v12, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1

    .line 228
    .restart local v4       #ns:Landroid/app/NotificationManager;
    :cond_4
    iput-boolean v9, p0, Lcom/s0up/goomanager/download/DownloadService;->hasOngoingNotification:Z

    .line 229
    invoke-virtual {p0, v9, v3}, Lcom/s0up/goomanager/download/DownloadService;->startForeground(ILandroid/app/Notification;)V

    goto :goto_2
.end method

.method private onDownloadUpdated(Lcom/s0up/goomanager/download/Download;J)V
    .locals 10
    .parameter "download"
    .parameter "count"

    .prologue
    .line 236
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/s0up/goomanager/ManageDownloadActivity;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 238
    .local v0, manageDownloadIntent:Landroid/content/Intent;
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 237
    invoke-static {p0, v5, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 239
    .local v1, manageDownloadPendingIntent:Landroid/app/PendingIntent;
    iget-object v5, p1, Lcom/s0up/goomanager/download/Download;->downloadedAmount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v5

    const-wide/16 v7, 0x64

    mul-long/2addr v5, v7

    iget-wide v7, p1, Lcom/s0up/goomanager/download/Download;->fileLength:J

    div-long/2addr v5, v7

    long-to-int v4, v5

    .line 240
    .local v4, percent:I
    iget v5, p0, Lcom/s0up/goomanager/download/DownloadService;->downloadProgress:I

    if-eq v4, v5, :cond_0

    .line 241
    iput v4, p0, Lcom/s0up/goomanager/download/DownloadService;->downloadProgress:I

    .line 242
    const/4 v2, 0x0

    .line 243
    .local v2, notification:Landroid/app/Notification;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-ge v5, v6, :cond_1

    .line 244
    new-instance v2, Landroid/app/Notification;

    .end local v2           #notification:Landroid/app/Notification;
    const v5, 0x7f020006

    const-string v6, "Downloading file..."

    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 244
    invoke-direct {v2, v5, v6, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 246
    .restart local v2       #notification:Landroid/app/Notification;
    new-instance v5, Landroid/widget/RemoteViews;

    .line 247
    invoke-virtual {p0}, Lcom/s0up/goomanager/download/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f030001

    invoke-direct {v5, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 246
    iput-object v5, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 248
    const/4 v5, 0x0

    iput-object v5, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 249
    iget-object v5, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v6, 0x7f090004

    .line 250
    const v7, 0x7f020006

    .line 249
    invoke-virtual {v5, v6, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 251
    iget-object v5, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v6, 0x7f090005

    .line 252
    iget-object v7, p0, Lcom/s0up/goomanager/download/DownloadService;->resources:Landroid/content/res/Resources;

    const v8, 0x7f070015

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 251
    invoke-virtual {v5, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 253
    iget-object v5, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v6, 0x7f090006

    new-instance v7, Ljava/io/File;

    .line 254
    iget-object v8, p1, Lcom/s0up/goomanager/download/Download;->outputFile:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 253
    invoke-virtual {v5, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 255
    iget-object v5, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v6, 0x7f090007

    const/16 v7, 0x64

    .line 256
    iget v8, p0, Lcom/s0up/goomanager/download/DownloadService;->downloadProgress:I

    const/4 v9, 0x0

    .line 255
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 267
    :goto_0
    iput-object v1, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 268
    const/16 v5, 0x42

    iput v5, v2, Landroid/app/Notification;->flags:I

    .line 271
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Lcom/s0up/goomanager/download/DownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 272
    .local v3, ns:Landroid/app/NotificationManager;
    const/4 v5, 0x1

    invoke-virtual {v3, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 274
    .end local v2           #notification:Landroid/app/Notification;
    .end local v3           #ns:Landroid/app/NotificationManager;
    :cond_0
    invoke-direct {p0, p1}, Lcom/s0up/goomanager/download/DownloadService;->sendDownloadUpdatedMessage(Lcom/s0up/goomanager/download/Download;)V

    .line 277
    return-void

    .line 258
    .restart local v2       #notification:Landroid/app/Notification;
    :cond_1
    new-instance v5, Landroid/app/Notification$Builder;

    invoke-direct {v5, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 259
    const v6, 0x7f020006

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 261
    iget-object v6, p0, Lcom/s0up/goomanager/download/DownloadService;->resources:Landroid/content/res/Resources;

    const v7, 0x7f070015

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 260
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 262
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    iget-object v7, p1, Lcom/s0up/goomanager/download/Download;->outputFile:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 263
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "1 / "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/s0up/goomanager/download/DownloadService;->mDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 264
    iget-object v5, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v6, 0x102000d

    const/16 v7, 0x64

    iget v8, p0, Lcom/s0up/goomanager/download/DownloadService;->downloadProgress:I

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 265
    iget-object v5, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v6, 0x102000d

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0
.end method

.method private sendDownloadCancelledMessage(Lcom/s0up/goomanager/download/Download;)V
    .locals 2
    .parameter "download"

    .prologue
    .line 794
    iget-object v0, p0, Lcom/s0up/goomanager/download/DownloadService;->mOnUpdateListener:Lcom/s0up/goomanager/download/DownloadService$OnUpdateListener;

    if-nez v0, :cond_0

    .line 804
    :goto_0
    return-void

    .line 795
    :cond_0
    new-instance v0, Lcom/s0up/goomanager/download/DownloadService$6;

    invoke-direct {v0, p0, p1}, Lcom/s0up/goomanager/download/DownloadService$6;-><init>(Lcom/s0up/goomanager/download/DownloadService;Lcom/s0up/goomanager/download/Download;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 803
    invoke-virtual {v0, v1}, Lcom/s0up/goomanager/download/DownloadService$6;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private sendDownloadCheckingMD5SumMessage(Lcom/s0up/goomanager/download/Download;)V
    .locals 2
    .parameter "download"

    .prologue
    .line 781
    iget-object v0, p0, Lcom/s0up/goomanager/download/DownloadService;->mOnUpdateListener:Lcom/s0up/goomanager/download/DownloadService$OnUpdateListener;

    if-nez v0, :cond_0

    .line 791
    :goto_0
    return-void

    .line 782
    :cond_0
    new-instance v0, Lcom/s0up/goomanager/download/DownloadService$5;

    invoke-direct {v0, p0, p1}, Lcom/s0up/goomanager/download/DownloadService$5;-><init>(Lcom/s0up/goomanager/download/DownloadService;Lcom/s0up/goomanager/download/Download;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 790
    invoke-virtual {v0, v1}, Lcom/s0up/goomanager/download/DownloadService$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private sendDownloadErroredMessage(Lcom/s0up/goomanager/download/Download;I)V
    .locals 2
    .parameter "download"
    .parameter "arg2Error"

    .prologue
    .line 768
    iget-object v0, p0, Lcom/s0up/goomanager/download/DownloadService;->mOnUpdateListener:Lcom/s0up/goomanager/download/DownloadService$OnUpdateListener;

    if-nez v0, :cond_0

    .line 778
    :goto_0
    return-void

    .line 769
    :cond_0
    new-instance v0, Lcom/s0up/goomanager/download/DownloadService$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/s0up/goomanager/download/DownloadService$4;-><init>(Lcom/s0up/goomanager/download/DownloadService;Lcom/s0up/goomanager/download/Download;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 777
    invoke-virtual {v0, v1}, Lcom/s0up/goomanager/download/DownloadService$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private sendDownloadFinishedMessage(Lcom/s0up/goomanager/download/Download;)V
    .locals 2
    .parameter "download"

    .prologue
    .line 755
    iget-object v0, p0, Lcom/s0up/goomanager/download/DownloadService;->mOnUpdateListener:Lcom/s0up/goomanager/download/DownloadService$OnUpdateListener;

    if-nez v0, :cond_0

    .line 765
    :goto_0
    return-void

    .line 756
    :cond_0
    new-instance v0, Lcom/s0up/goomanager/download/DownloadService$3;

    invoke-direct {v0, p0, p1}, Lcom/s0up/goomanager/download/DownloadService$3;-><init>(Lcom/s0up/goomanager/download/DownloadService;Lcom/s0up/goomanager/download/Download;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 764
    invoke-virtual {v0, v1}, Lcom/s0up/goomanager/download/DownloadService$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private sendDownloadStartedMessage(Lcom/s0up/goomanager/download/Download;)V
    .locals 2
    .parameter "download"

    .prologue
    .line 725
    iget-object v0, p0, Lcom/s0up/goomanager/download/DownloadService;->mOnUpdateListener:Lcom/s0up/goomanager/download/DownloadService$OnUpdateListener;

    if-nez v0, :cond_0

    .line 735
    :goto_0
    return-void

    .line 726
    :cond_0
    new-instance v0, Lcom/s0up/goomanager/download/DownloadService$1;

    invoke-direct {v0, p0, p1}, Lcom/s0up/goomanager/download/DownloadService$1;-><init>(Lcom/s0up/goomanager/download/DownloadService;Lcom/s0up/goomanager/download/Download;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 734
    invoke-virtual {v0, v1}, Lcom/s0up/goomanager/download/DownloadService$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private sendDownloadUpdatedMessage(Lcom/s0up/goomanager/download/Download;)V
    .locals 2
    .parameter "download"

    .prologue
    .line 738
    iget-object v0, p0, Lcom/s0up/goomanager/download/DownloadService;->mOnUpdateListener:Lcom/s0up/goomanager/download/DownloadService$OnUpdateListener;

    if-nez v0, :cond_0

    .line 752
    :goto_0
    return-void

    .line 740
    :cond_0
    :try_start_0
    new-instance v0, Lcom/s0up/goomanager/download/DownloadService$2;

    invoke-direct {v0, p0, p1}, Lcom/s0up/goomanager/download/DownloadService$2;-><init>(Lcom/s0up/goomanager/download/DownloadService;Lcom/s0up/goomanager/download/Download;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 748
    invoke-virtual {v0, v1}, Lcom/s0up/goomanager/download/DownloadService$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 749
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private sendUpdateMessage(Lcom/s0up/goomanager/download/Download;II)Z
    .locals 4
    .parameter "download"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 692
    iget-object v2, p0, Lcom/s0up/goomanager/download/DownloadService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 693
    .local v1, message:Landroid/os/Message;
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 694
    iput p3, v1, Landroid/os/Message;->arg2:I

    .line 695
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 696
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "downloadKey"

    invoke-virtual {p1}, Lcom/s0up/goomanager/download/Download;->hashCode()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 697
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 698
    iget-object v2, p0, Lcom/s0up/goomanager/download/DownloadService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v2

    return v2
.end method

.method private sendUpdateMessage(Lcom/s0up/goomanager/download/Download;IILjava/lang/String;)Z
    .locals 1
    .parameter "download"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "text"

    .prologue
    .line 682
    const-string v0, "GooManager"

    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    invoke-direct {p0, p1, p2, p3}, Lcom/s0up/goomanager/download/DownloadService;->sendUpdateMessage(Lcom/s0up/goomanager/download/Download;II)Z

    move-result v0

    return v0
.end method

.method private sendUpdateMessage(Lcom/s0up/goomanager/download/Download;IILjava/lang/Throwable;)Z
    .locals 2
    .parameter "download"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "throwable"

    .prologue
    .line 687
    const-string v0, "GooManager"

    const-string v1, ""

    invoke-static {v0, v1, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 688
    invoke-direct {p0, p1, p2, p3}, Lcom/s0up/goomanager/download/DownloadService;->sendUpdateMessage(Lcom/s0up/goomanager/download/Download;II)Z

    move-result v0

    return v0
.end method

.method private submitPendingDownload(Lcom/s0up/goomanager/download/Download;)V
    .locals 2
    .parameter "downloadInformation"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/s0up/goomanager/download/DownloadService;->mDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/s0up/goomanager/download/Download;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v0, p0, Lcom/s0up/goomanager/download/DownloadService;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;

    invoke-direct {v1, p0, p1}, Lcom/s0up/goomanager/download/DownloadService$DownloadTask;-><init>(Lcom/s0up/goomanager/download/DownloadService;Lcom/s0up/goomanager/download/Download;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 179
    const-string v0, "GooManager"

    const-string v1, "starting download"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/s0up/goomanager/download/DownloadService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 108
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 109
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/s0up/goomanager/download/DownloadService;->mDownloads:Ljava/util/concurrent/ConcurrentHashMap;

    .line 110
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/s0up/goomanager/download/DownloadService;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 111
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DownloadLooper"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/s0up/goomanager/download/DownloadService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 112
    iget-object v0, p0, Lcom/s0up/goomanager/download/DownloadService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/s0up/goomanager/download/DownloadService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Lcom/s0up/goomanager/download/DownloadService$DownloadHandler;

    iget-object v1, p0, Lcom/s0up/goomanager/download/DownloadService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/s0up/goomanager/download/DownloadService$DownloadHandler;-><init>(Lcom/s0up/goomanager/download/DownloadService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/s0up/goomanager/download/DownloadService;->mHandler:Landroid/os/Handler;

    .line 117
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 808
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 809
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/s0up/goomanager/download/DownloadService;->hasOngoingNotification:Z

    .line 810
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/s0up/goomanager/download/DownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 811
    .local v0, ns:Landroid/app/NotificationManager;
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 812
    invoke-virtual {p0, v2}, Lcom/s0up/goomanager/download/DownloadService;->stopForeground(Z)V

    .line 813
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v4, 0x1

    .line 126
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 127
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "downloadFile"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    iget-object v2, p0, Lcom/s0up/goomanager/download/DownloadService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 129
    .local v1, m:Landroid/os/Message;
    iput v4, v1, Landroid/os/Message;->what:I

    .line 130
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 131
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "downloadFile"

    const-string v3, "downloadFile"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 132
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 133
    iget-object v2, p0, Lcom/s0up/goomanager/download/DownloadService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 135
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #m:Landroid/os/Message;
    :cond_0
    return v4
.end method
