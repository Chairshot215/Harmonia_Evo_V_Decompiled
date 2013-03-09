.class public Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;
.super Landroid/app/IntentService;
.source "DFUsageDataCollectionService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DFPI.DFUsageDataCollectionService"

.field static mDeviceInfoHelper:Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;


# instance fields
.field private mAlarmEveryHour:Landroid/app/AlarmManager;

.field private mApkIdSP:Landroid/content/SharedPreferences;

.field private mApkIdSPEditor:Landroid/content/SharedPreferences$Editor;

.field private mDownManager:Lcom/htc/demoflopackageinstaller/net/DownloadManager;

.field private mDownloadApkFolder:Ljava/lang/String;

.field private mPerHourHandler:Landroid/os/Handler;

.field private mPerHourRunnable:Ljava/lang/Runnable;

.field private mUpManager:Lcom/htc/demoflopackageinstaller/net/UploadManager;

.field private mUploadFilesFolder:Ljava/lang/String;

.field private mUploadFlag:Z

.field private mUsageReportHelper:Lcom/htc/demoflopackageinstaller/UsageReportHelper;

.field private mVideoReportHelper:Lcom/htc/demoflopackageinstaller/VideoReportHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDeviceInfoHelper:Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    const-string v0, "DFUsageDataCollectionService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mUploadFlag:Z

    .line 45
    iput-object v1, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mUploadFilesFolder:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDownloadApkFolder:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mUpManager:Lcom/htc/demoflopackageinstaller/net/UploadManager;

    .line 48
    iput-object v1, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDownManager:Lcom/htc/demoflopackageinstaller/net/DownloadManager;

    .line 50
    iput-object v1, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mUsageReportHelper:Lcom/htc/demoflopackageinstaller/UsageReportHelper;

    .line 51
    iput-object v1, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mVideoReportHelper:Lcom/htc/demoflopackageinstaller/VideoReportHelper;

    .line 52
    iput-object v1, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mAlarmEveryHour:Landroid/app/AlarmManager;

    .line 53
    iput-object v1, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mApkIdSP:Landroid/content/SharedPreferences;

    .line 54
    iput-object v1, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mApkIdSPEditor:Landroid/content/SharedPreferences$Editor;

    .line 55
    iput-object v1, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mPerHourHandler:Landroid/os/Handler;

    .line 56
    new-instance v0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService$1;

    invoke-direct {v0, p0}, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService$1;-><init>(Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;)V

    iput-object v0, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mPerHourRunnable:Ljava/lang/Runnable;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;)Lcom/htc/demoflopackageinstaller/UsageReportHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mUsageReportHelper:Lcom/htc/demoflopackageinstaller/UsageReportHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;)Lcom/htc/demoflopackageinstaller/VideoReportHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mVideoReportHelper:Lcom/htc/demoflopackageinstaller/VideoReportHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->addFileToUpList()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;)Lcom/htc/demoflopackageinstaller/net/UploadManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mUpManager:Lcom/htc/demoflopackageinstaller/net/UploadManager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mUploadFlag:Z

    return p1
.end method

.method static synthetic access$500(Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->isNetworkOK()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->writeTempXmlForQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDownloadApkFolder:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;)Lcom/htc/demoflopackageinstaller/net/DownloadManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDownManager:Lcom/htc/demoflopackageinstaller/net/DownloadManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mApkIdSPEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method private addFileToUpList()V
    .locals 8

    .prologue
    .line 114
    const-string v6, "DFPI.DFUsageDataCollectionService"

    const-string v7, "DFUsageDataCollectionService addFileToUpList()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v2, Ljava/io/File;

    iget-object v6, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mUploadFilesFolder:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .local v2, fileFolder:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 129
    :cond_0
    return-void

    .line 120
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 122
    .local v3, files:[Ljava/io/File;
    if-eqz v3, :cond_0

    .line 125
    move-object v0, v3

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v0, v4

    .line 126
    .local v1, f:Ljava/io/File;
    iget-object v6, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mUpManager:Lcom/htc/demoflopackageinstaller/net/UploadManager;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/demoflopackageinstaller/net/UploadManager;->isExistInQueue(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 127
    iget-object v6, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mUpManager:Lcom/htc/demoflopackageinstaller/net/UploadManager;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/demoflopackageinstaller/net/UploadManager;->addToQueue(Ljava/lang/String;)Z

    .line 125
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private handleApkInstallIntents(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 363
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, action:Ljava/lang/String;
    const-string v1, "DFPI.DFUsageDataCollectionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onHandleIntent action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.htc.dfpi.install_demoflo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 367
    const-string v1, "Demo.apk"

    const-string v2, "com.htc.demoflo"

    iget-object v3, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDownloadApkFolder:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/htc/demoflopackageinstaller/ApkInstallHelper;->silentInstall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.htc.dfpi.install_demorecovery"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    const-string v1, "DemoRecovery.apk"

    const-string v2, "com.htc.DemoFLORecovery"

    iget-object v3, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDownloadApkFolder:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/htc/demoflopackageinstaller/ApkInstallHelper;->silentInstall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleNetworkIntents(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 292
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, action:Ljava/lang/String;
    const-string v2, "DFPI.DFUsageDataCollectionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onHandleIntent action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 296
    const-string v2, "noConnectivity"

    invoke-virtual {p1, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 297
    .local v1, bConnectionNotEstablished:Z
    const-string v2, "DFPI.DFUsageDataCollectionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get bConnectionNotEstablished = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    if-nez v1, :cond_2

    .line 301
    sget-object v2, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDeviceInfoHelper:Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;

    if-eqz v2, :cond_0

    .line 302
    sget-object v2, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDeviceInfoHelper:Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;

    invoke-virtual {v2}, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->collectDeviceInfo()V

    .line 303
    :cond_0
    iget-object v2, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mUpManager:Lcom/htc/demoflopackageinstaller/net/UploadManager;

    if-eqz v2, :cond_1

    .line 305
    iget-boolean v2, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mUploadFlag:Z

    if-eqz v2, :cond_1

    .line 306
    iget-object v2, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mUpManager:Lcom/htc/demoflopackageinstaller/net/UploadManager;

    invoke-virtual {v2}, Lcom/htc/demoflopackageinstaller/net/UploadManager;->startUpload()V

    .line 325
    .end local v1           #bConnectionNotEstablished:Z
    :cond_1
    :goto_0
    return-void

    .line 311
    .restart local v1       #bConnectionNotEstablished:Z
    :cond_2
    iget-object v2, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mUpManager:Lcom/htc/demoflopackageinstaller/net/UploadManager;

    invoke-virtual {v2}, Lcom/htc/demoflopackageinstaller/net/UploadManager;->stopUpload()V

    goto :goto_0

    .line 314
    .end local v1           #bConnectionNotEstablished:Z
    :cond_3
    const-string v2, "action_net_schedule_everyhour"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 316
    const-string v2, "DFPI.DFUsageDataCollectionService"

    const-string v3, "ACTION_NET_SCHEDULE_PERHOUR"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v2, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mPerHourHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mPerHourRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 319
    :cond_4
    const-string v2, "action_net_schedule_cancel"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 321
    iget-object v2, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mAlarmEveryHour:Landroid/app/AlarmManager;

    if-eqz v2, :cond_1

    .line 322
    iget-object v2, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mAlarmEveryHour:Landroid/app/AlarmManager;

    invoke-virtual {p0}, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "action_net_schedule_everyhour"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v6, v4, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private handleVideoReportIntents(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 329
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, action:Ljava/lang/String;
    const-string v1, "DFPI.DFUsageDataCollectionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onHandleIntent action"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const-string v1, "com.fema.beginvideo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 333
    iget-object v1, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mVideoReportHelper:Lcom/htc/demoflopackageinstaller/VideoReportHelper;

    if-nez v1, :cond_0

    .line 335
    new-instance v1, Lcom/htc/demoflopackageinstaller/VideoReportHelper;

    invoke-direct {v1, p1}, Lcom/htc/demoflopackageinstaller/VideoReportHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mVideoReportHelper:Lcom/htc/demoflopackageinstaller/VideoReportHelper;

    .line 337
    :cond_0
    iget-object v1, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mVideoReportHelper:Lcom/htc/demoflopackageinstaller/VideoReportHelper;

    invoke-virtual {v1}, Lcom/htc/demoflopackageinstaller/VideoReportHelper;->videoBegin()V

    .line 359
    :cond_1
    :goto_0
    return-void

    .line 339
    :cond_2
    const-string v1, "com.fema.endvideo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 341
    iget-object v1, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mVideoReportHelper:Lcom/htc/demoflopackageinstaller/VideoReportHelper;

    if-eqz v1, :cond_1

    .line 343
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "VIDEONAME"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 344
    iget-object v1, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mVideoReportHelper:Lcom/htc/demoflopackageinstaller/VideoReportHelper;

    const-string v2, "NONAME"

    invoke-virtual {v1, v2}, Lcom/htc/demoflopackageinstaller/VideoReportHelper;->videoEnd(Ljava/lang/String;)V

    goto :goto_0

    .line 346
    :cond_3
    iget-object v1, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mVideoReportHelper:Lcom/htc/demoflopackageinstaller/VideoReportHelper;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "VIDEONAME"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/demoflopackageinstaller/VideoReportHelper;->videoEnd(Ljava/lang/String;)V

    goto :goto_0

    .line 349
    :cond_4
    const-string v1, "com.fema.interruptvideo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 351
    iget-object v1, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mVideoReportHelper:Lcom/htc/demoflopackageinstaller/VideoReportHelper;

    if-eqz v1, :cond_1

    .line 353
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "VIDEONAME"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    .line 354
    iget-object v1, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mVideoReportHelper:Lcom/htc/demoflopackageinstaller/VideoReportHelper;

    const-string v2, "NONAME"

    invoke-virtual {v1, v2}, Lcom/htc/demoflopackageinstaller/VideoReportHelper;->videoInterrupt(Ljava/lang/String;)V

    goto :goto_0

    .line 356
    :cond_5
    iget-object v1, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mVideoReportHelper:Lcom/htc/demoflopackageinstaller/VideoReportHelper;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "VIDEONAME"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/demoflopackageinstaller/VideoReportHelper;->videoInterrupt(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initFields()V
    .locals 15

    .prologue
    const/16 v14, 0xb

    const/4 v13, 0x5

    const/4 v12, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 379
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 380
    .local v9, myDate:Ljava/util/Date;
    const-string v0, "DFPI.DFUsageDataCollectionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current Time is = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 383
    .local v8, myCalendar:Ljava/util/Calendar;
    const-string v0, "DFPI.DFUsageDataCollectionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Year = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const-string v0, "DFPI.DFUsageDataCollectionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Month = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8, v12}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const-string v0, "DFPI.DFUsageDataCollectionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Day = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8, v13}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/upload/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mUploadFilesFolder:Ljava/lang/String;

    .line 388
    new-instance v7, Ljava/io/File;

    iget-object v0, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mUploadFilesFolder:Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 389
    .local v7, f:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {v7, v5, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 394
    invoke-virtual {v7, v5, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 395
    invoke-virtual {v7, v5, v1}, Ljava/io/File;->setWritable(ZZ)Z

    .line 399
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/apk/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDownloadApkFolder:Ljava/lang/String;

    .line 400
    new-instance v7, Ljava/io/File;

    .end local v7           #f:Ljava/io/File;
    iget-object v0, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDownloadApkFolder:Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 401
    .restart local v7       #f:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 402
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 404
    invoke-virtual {v7, v5, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 405
    invoke-virtual {v7, v5, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 406
    invoke-virtual {v7, v5, v1}, Ljava/io/File;->setWritable(ZZ)Z

    .line 409
    :cond_1
    const-string v0, "DFPI.DFUsageDataCollectionService"

    const-string v2, "write apk id to"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const-string v0, "apkid"

    invoke-virtual {p0, v0, v12}, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mApkIdSP:Landroid/content/SharedPreferences;

    .line 411
    iget-object v0, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mApkIdSP:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mApkIdSPEditor:Landroid/content/SharedPreferences$Editor;

    .line 412
    iget-object v0, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mApkIdSP:Landroid/content/SharedPreferences;

    const-string v2, "Demo"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 413
    .local v10, s:Ljava/lang/String;
    if-nez v10, :cond_2

    .line 415
    iget-object v0, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mApkIdSPEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "Demo"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 416
    iget-object v0, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mApkIdSPEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 418
    :cond_2
    iget-object v0, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mApkIdSP:Landroid/content/SharedPreferences;

    const-string v2, "DemoRecovery"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 419
    if-nez v10, :cond_3

    .line 421
    iget-object v0, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mApkIdSPEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "DemoRecovery"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 422
    iget-object v0, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mApkIdSPEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 424
    :cond_3
    const-string v0, "DFPI.DFUsageDataCollectionService"

    const-string v2, "init upload manager"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v0, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mUpManager:Lcom/htc/demoflopackageinstaller/net/UploadManager;

    if-nez v0, :cond_4

    .line 427
    new-instance v0, Lcom/htc/demoflopackageinstaller/net/UploadManager;

    new-instance v2, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService$2;

    invoke-direct {v2, p0}, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService$2;-><init>(Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;)V

    invoke-direct {v0, v2}, Lcom/htc/demoflopackageinstaller/net/UploadManager;-><init>(Lcom/htc/demoflopackageinstaller/net/IUploadCallback;)V

    iput-object v0, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mUpManager:Lcom/htc/demoflopackageinstaller/net/UploadManager;

    .line 447
    :cond_4
    const-string v0, "DFPI.DFUsageDataCollectionService"

    const-string v2, "init download manager"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v0, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDownManager:Lcom/htc/demoflopackageinstaller/net/DownloadManager;

    if-nez v0, :cond_5

    .line 450
    new-instance v0, Lcom/htc/demoflopackageinstaller/net/DownloadManager;

    iget-object v2, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDownloadApkFolder:Ljava/lang/String;

    new-instance v3, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService$3;

    invoke-direct {v3, p0}, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService$3;-><init>(Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;)V

    invoke-direct {v0, v2, v3}, Lcom/htc/demoflopackageinstaller/net/DownloadManager;-><init>(Ljava/lang/String;Lcom/htc/demoflopackageinstaller/net/IDownloadCallback;)V

    iput-object v0, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDownManager:Lcom/htc/demoflopackageinstaller/net/DownloadManager;

    .line 478
    :cond_5
    const-string v0, "DFPI.DFUsageDataCollectionService"

    const-string v2, "init deviceinfo helper"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    sget-object v0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDeviceInfoHelper:Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;

    if-nez v0, :cond_6

    .line 481
    new-instance v0, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;

    invoke-virtual {p0}, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDeviceInfoHelper:Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;

    .line 482
    sget-object v0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDeviceInfoHelper:Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;

    invoke-virtual {v0}, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->collectDeviceInfo()V

    .line 484
    :cond_6
    const-string v0, "DFPI.DFUsageDataCollectionService"

    const-string v2, "init video report helper"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v0, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mVideoReportHelper:Lcom/htc/demoflopackageinstaller/VideoReportHelper;

    if-nez v0, :cond_7

    .line 486
    new-instance v0, Lcom/htc/demoflopackageinstaller/VideoReportHelper;

    invoke-virtual {p0}, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/htc/demoflopackageinstaller/VideoReportHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mVideoReportHelper:Lcom/htc/demoflopackageinstaller/VideoReportHelper;

    .line 488
    :cond_7
    const-string v0, "DFPI.DFUsageDataCollectionService"

    const-string v2, "init usage report helper"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v0, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mUsageReportHelper:Lcom/htc/demoflopackageinstaller/UsageReportHelper;

    if-nez v0, :cond_8

    .line 491
    new-instance v0, Lcom/htc/demoflopackageinstaller/UsageReportHelper;

    invoke-virtual {p0}, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/htc/demoflopackageinstaller/UsageReportHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mUsageReportHelper:Lcom/htc/demoflopackageinstaller/UsageReportHelper;

    .line 492
    iget-object v0, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mUsageReportHelper:Lcom/htc/demoflopackageinstaller/UsageReportHelper;

    invoke-virtual {v0}, Lcom/htc/demoflopackageinstaller/UsageReportHelper;->getReport()V

    .line 495
    :cond_8
    iget-object v0, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mPerHourHandler:Landroid/os/Handler;

    if-nez v0, :cond_9

    .line 497
    new-instance v11, Landroid/os/HandlerThread;

    const-string v0, "DFPI_Hour_Handler"

    invoke-direct {v11, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 498
    .local v11, thread:Landroid/os/HandlerThread;
    invoke-virtual {v11}, Landroid/os/HandlerThread;->start()V

    .line 499
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v11}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mPerHourHandler:Landroid/os/Handler;

    .line 502
    .end local v11           #thread:Landroid/os/HandlerThread;
    :cond_9
    const-string v0, "DFPI.DFUsageDataCollectionService"

    const-string v2, "init PerHourHandler Thread"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const-string v0, "DFPI.DFUsageDataCollectionService"

    const-string v2, "register mAlarmEveryHour"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mAlarmEveryHour:Landroid/app/AlarmManager;

    .line 506
    invoke-virtual {p0}, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "action_net_schedule_everyhour"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 508
    .local v6, pend:Landroid/app/PendingIntent;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 509
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 510
    invoke-virtual {v8, v14, v5}, Ljava/util/Calendar;->add(II)V

    .line 511
    const/16 v0, 0xc

    invoke-virtual {v8, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 512
    const/16 v0, 0xd

    invoke-virtual {v8, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 513
    const-string v0, "DFPI.DFUsageDataCollectionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8, v12}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8, v13}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8, v14}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v8, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {v8, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v0, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mAlarmEveryHour:Landroid/app/AlarmManager;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 517
    return-void
.end method

.method private isNetworkOK()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 137
    const-string v3, "DFPI.DFUsageDataCollectionService"

    const-string v4, "DeviceInfoHelper.isNetworkOK()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 139
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 141
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 142
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    .line 145
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_0
    return v2
.end method

.method private writeTempXmlForQuery()Ljava/lang/String;
    .locals 15

    .prologue
    .line 151
    const-string v11, "DFPI.DFUsageDataCollectionService"

    const-string v12, "DFUsageDataCollectionService writeTempXmlForQuery()"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v11, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mApkIdSP:Landroid/content/SharedPreferences;

    const-string v12, "Demo"

    const-string v13, "0"

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, DemoApkID:Ljava/lang/String;
    iget-object v11, p0, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mApkIdSP:Landroid/content/SharedPreferences;

    const-string v12, "DemoRecovery"

    const-string v13, "0"

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, RecoveryApkId:Ljava/lang/String;
    const-string v11, "DFPI.DFUsageDataCollectionService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Demo.apkid = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", DemoRecovery.apkid = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->getFilesDir()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/temp/query/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 157
    .local v8, tempXmlPath:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    .local v5, file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    .line 159
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 160
    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "queryTemp.xml"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 161
    new-instance v5, Ljava/io/File;

    .end local v5           #file:Ljava/io/File;
    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .restart local v5       #file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 164
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 166
    :cond_1
    const/4 v9, 0x0

    .line 169
    .local v9, xmlOutStream:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 170
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .end local v9           #xmlOutStream:Ljava/io/FileOutputStream;
    .local v10, xmlOutStream:Ljava/io/FileOutputStream;
    const-string v11, "DFPI.DFUsageDataCollectionService"

    const-string v12, "prepare XmlSerializer"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v7

    .line 184
    .local v7, serializer:Lorg/xmlpull/v1/XmlSerializer;
    :try_start_1
    const-string v11, "UTF-8"

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 185
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-interface {v7, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 187
    const-string v11, ""

    const-string v12, "DeploymentRequest"

    invoke-interface {v7, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 188
    sget-object v11, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDeviceInfoHelper:Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;

    if-eqz v11, :cond_2

    .line 190
    const-string v11, ""

    const-string v12, "longitude"

    sget-object v13, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDeviceInfoHelper:Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;

    invoke-virtual {v13}, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->getLog()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 191
    const-string v11, ""

    const-string v12, "latitude"

    sget-object v13, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDeviceInfoHelper:Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;

    invoke-virtual {v13}, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->getLat()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 192
    const-string v11, ""

    const-string v12, "cityName"

    sget-object v13, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDeviceInfoHelper:Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;

    invoke-virtual {v13}, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->getCityName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 193
    const-string v11, ""

    const-string v12, "countryCode"

    sget-object v13, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDeviceInfoHelper:Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;

    invoke-virtual {v13}, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->getCountryCode()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 194
    const-string v11, ""

    const-string v12, "mccMnc"

    sget-object v13, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDeviceInfoHelper:Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;

    invoke-virtual {v13}, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->getMNC_MCC()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 195
    const-string v11, ""

    const-string v12, "modelId"

    sget-object v13, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDeviceInfoHelper:Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;

    invoke-virtual {v13}, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->getMID()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 196
    const-string v11, ""

    const-string v12, "customerId"

    sget-object v13, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDeviceInfoHelper:Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;

    invoke-virtual {v13}, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->getCID()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 197
    const-string v11, ""

    const-string v12, "deviceId"

    sget-object v13, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDeviceInfoHelper:Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;

    invoke-virtual {v13}, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->getDeviceId()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 198
    const-string v11, ""

    const-string v12, "swSku"

    sget-object v13, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDeviceInfoHelper:Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;

    invoke-virtual {v13}, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->getSKU()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 199
    const-string v11, ""

    const-string v12, "romCode"

    sget-object v13, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->mDeviceInfoHelper:Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;

    invoke-virtual {v13}, Lcom/htc/demoflopackageinstaller/DeviceInfoHelper;->getRomVersion()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 212
    :try_start_2
    invoke-virtual {p0}, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string v12, "com.htc.demoflo"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v6

    .line 221
    .local v6, pi:Landroid/content/pm/PackageInfo;
    :try_start_3
    const-string v11, ""

    const-string v12, "Application"

    invoke-interface {v7, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 222
    const-string v11, ""

    const-string v12, "packageVersion"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 223
    const-string v11, ""

    const-string v12, "packageName"

    iget-object v13, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v7, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 224
    const-string v11, ""

    const-string v12, "apkId"

    invoke-interface {v7, v11, v12, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 225
    const-string v11, ""

    const-string v12, "Application"

    invoke-interface {v7, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 230
    :try_start_4
    invoke-virtual {p0}, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string v12, "com.htc.DemoFLORecovery"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v6

    .line 239
    :try_start_5
    const-string v11, ""

    const-string v12, "Application"

    invoke-interface {v7, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 240
    const-string v11, ""

    const-string v12, "packageVersion"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 241
    const-string v11, ""

    const-string v12, "packageName"

    iget-object v13, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v7, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 242
    const-string v11, ""

    const-string v12, "apkId"

    invoke-interface {v7, v11, v12, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 243
    const-string v11, ""

    const-string v12, "Application"

    invoke-interface {v7, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 244
    const-string v11, ""

    const-string v12, "DeploymentRequest"

    invoke-interface {v7, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 245
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 247
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 248
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-object v9, v10

    .line 256
    .end local v6           #pi:Landroid/content/pm/PackageInfo;
    .end local v7           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .end local v8           #tempXmlPath:Ljava/lang/String;
    .end local v10           #xmlOutStream:Ljava/io/FileOutputStream;
    .restart local v9       #xmlOutStream:Ljava/io/FileOutputStream;
    :goto_0
    return-object v8

    .line 172
    .restart local v8       #tempXmlPath:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 174
    .local v3, e1:Ljava/io/IOException;
    const-string v11, "DFPI.DFUsageDataCollectionService"

    const-string v12, "create File failed"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string v11, "DFPI.DFUsageDataCollectionService"

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 177
    const/4 v8, 0x0

    goto :goto_0

    .line 203
    .end local v3           #e1:Ljava/io/IOException;
    .end local v9           #xmlOutStream:Ljava/io/FileOutputStream;
    .restart local v7       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v10       #xmlOutStream:Ljava/io/FileOutputStream;
    :cond_2
    :try_start_6
    const-string v11, "DFPI.DFUsageDataCollectionService"

    const-string v12, "DeviceInfoHelper == null"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 205
    const/4 v8, 0x0

    .end local v8           #tempXmlPath:Ljava/lang/String;
    move-object v9, v10

    .end local v10           #xmlOutStream:Ljava/io/FileOutputStream;
    .restart local v9       #xmlOutStream:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 214
    .end local v9           #xmlOutStream:Ljava/io/FileOutputStream;
    .restart local v8       #tempXmlPath:Ljava/lang/String;
    .restart local v10       #xmlOutStream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v4

    .line 216
    .local v4, en1:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v11, "DFPI.DFUsageDataCollectionService"

    const-string v12, "can\'t get package info for demoflo"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 218
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 219
    const/4 v8, 0x0

    .end local v8           #tempXmlPath:Ljava/lang/String;
    move-object v9, v10

    .end local v10           #xmlOutStream:Ljava/io/FileOutputStream;
    .restart local v9       #xmlOutStream:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 232
    .end local v4           #en1:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v9           #xmlOutStream:Ljava/io/FileOutputStream;
    .restart local v6       #pi:Landroid/content/pm/PackageInfo;
    .restart local v8       #tempXmlPath:Ljava/lang/String;
    .restart local v10       #xmlOutStream:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v4

    .line 234
    .restart local v4       #en1:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v11, "DFPI.DFUsageDataCollectionService"

    const-string v12, "can\'t get package info for demofloRecovery"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 236
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 237
    const/4 v8, 0x0

    .end local v8           #tempXmlPath:Ljava/lang/String;
    move-object v9, v10

    .end local v10           #xmlOutStream:Ljava/io/FileOutputStream;
    .restart local v9       #xmlOutStream:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 250
    .end local v4           #en1:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6           #pi:Landroid/content/pm/PackageInfo;
    .end local v9           #xmlOutStream:Ljava/io/FileOutputStream;
    .restart local v8       #tempXmlPath:Ljava/lang/String;
    .restart local v10       #xmlOutStream:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v2

    .line 252
    .local v2, e:Ljava/lang/Exception;
    const-string v11, "DFPI.DFUsageDataCollectionService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "DFUsageDataCollectionService.writeTempXmlForQuery : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 254
    const/4 v8, 0x0

    move-object v9, v10

    .end local v10           #xmlOutStream:Ljava/io/FileOutputStream;
    .restart local v9       #xmlOutStream:Ljava/io/FileOutputStream;
    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 262
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 263
    invoke-direct {p0}, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->initFields()V

    .line 264
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 269
    const-string v1, "DFPI.DFUsageDataCollectionService"

    const-string v2, "DFUsageDataCollectionService onHandleIntent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.htc.dfpi.install_demoflo"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.htc.dfpi.install_demorecovery"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->handleApkInstallIntents(Landroid/content/Context;Landroid/content/Intent;)V

    .line 288
    :cond_1
    :goto_0
    return-void

    .line 276
    :cond_2
    const-string v1, "action_net_schedule_everyhour"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "action_net_schedule_cancel"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 280
    :cond_3
    invoke-direct {p0, p1}, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->handleNetworkIntents(Landroid/content/Intent;)V

    goto :goto_0

    .line 282
    :cond_4
    const-string v1, "com.fema.beginvideo"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "com.fema.endvideo"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "com.fema.interruptvideo"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 286
    :cond_5
    invoke-virtual {p0}, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/htc/demoflopackageinstaller/DFUsageDataCollectionService;->handleVideoReportIntents(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
