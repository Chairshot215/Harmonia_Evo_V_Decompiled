.class public Lcom/sprint/ce/updater/UpdaterService;
.super Landroid/app/Service;
.source "UpdaterService.java"


# static fields
.field public static final ACTION_CLEANUP_FILES:Ljava/lang/String; = "com.sprint.action.CLEANUP_FILES"

.field public static final ACTION_RESCHEDULE:Ljava/lang/String; = "com.sprint.action.RESCHEDULE"

.field public static final ACTION_RETRY_UPDATE:Ljava/lang/String; = "com.sprint.action.RETRY_UPDATE"

.field public static final ACTION_RUN_UPDATE:Ljava/lang/String; = "com.sprint.action.RUN_UPDATE"

.field public static final ACTION_VERSION_CHECK:Ljava/lang/String; = "com.sprint.action.VERSION_CHECK"

.field public static final ACTION_VERSION_UPDATE:Ljava/lang/String; = "com.sprint.action.VERSION_UPDATE"

.field public static final DEFAULT_MAX_RETRY_COUNT:I = 0x3

.field public static final DEFAULT_RETRY_INTERVAL:J = 0x5265c00L

.field public static final DEFAULT_UPDATE_INTERVAL:J = 0x9a7ec800L

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "com.sprint.ce.updater.EXTRA_PACKAGE_NAME"

.field public static final EXTRA_USE_SLOT0:Ljava/lang/String; = "com.sprint.ce.updater.EXTRA_USE_SLOT0"

.field public static final EXTRA_VERSION_AVAILABLE:Ljava/lang/String; = "com.sprint.ce.updater.EXTRA_VERSION_AVAILABLE"

.field public static final EXTRA_VERSION_CODE:Ljava/lang/String; = "com.sprint.ce.updater.EXTRA_VERSION_CODE"

.field public static final KEY_IS_RETRY_MODE:Ljava/lang/String; = "retry_mode"

.field public static final KEY_LAST_FAILED_ATTEMPT:Ljava/lang/String; = "last_failed_attempt"

.field public static final KEY_LAST_UPDATE:Ljava/lang/String; = "last_update"

.field public static final KEY_MAX_RETRY_COUNT:Ljava/lang/String; = "max_retry_count"

.field public static final KEY_RETRY_COUNT:Ljava/lang/String; = "retry_count"

.field public static final KEY_RETRY_INTERVAL:Ljava/lang/String; = "retry_interval"

.field public static final KEY_UPDATE_INTERVAL:Ljava/lang/String; = "update_interval"

.field private static final TAG:Ljava/lang/String; = "SprintUpdater"

.field public static final TRANSACTION_ABORT_TIMEOUT:J = 0x493e0L

.field private static sBusy:Z


# instance fields
.field private mAbortTimer:Ljava/util/Timer;

.field private final mAbortTimerTask:Ljava/util/TimerTask;

.field private mAltUrl:Ljava/lang/String;

.field private mAltUseSlot0:Z

.field private mFileMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mInstallObserver:Landroid/content/pm/IPackageInstallObserver;

.field private mPackage:Ljava/lang/String;

.field mResponse:Lcom/sprint/ce/updater/Response;

.field private mUpdateStartId:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sprint/ce/updater/UpdaterService;->sBusy:Z

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 179
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sprint/ce/updater/UpdaterService;->mAbortTimer:Ljava/util/Timer;

    .line 184
    new-instance v0, Lcom/sprint/ce/updater/UpdaterService$1;

    invoke-direct {v0, p0}, Lcom/sprint/ce/updater/UpdaterService$1;-><init>(Lcom/sprint/ce/updater/UpdaterService;)V

    iput-object v0, p0, Lcom/sprint/ce/updater/UpdaterService;->mAbortTimerTask:Ljava/util/TimerTask;

    .line 548
    new-instance v0, Lcom/sprint/ce/updater/UpdaterService$2;

    invoke-direct {v0, p0}, Lcom/sprint/ce/updater/UpdaterService$2;-><init>(Lcom/sprint/ce/updater/UpdaterService;)V

    iput-object v0, p0, Lcom/sprint/ce/updater/UpdaterService;->mInstallObserver:Landroid/content/pm/IPackageInstallObserver;

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/sprint/ce/updater/UpdaterService;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/sprint/ce/updater/UpdaterService;->handleFailedAttempt()V

    return-void
.end method

.method static synthetic access$1(Lcom/sprint/ce/updater/UpdaterService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 565
    invoke-direct {p0, p1}, Lcom/sprint/ce/updater/UpdaterService;->removeUpdatePackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10(Lcom/sprint/ce/updater/UpdaterService;)V
    .locals 0
    .parameter

    .prologue
    .line 613
    invoke-direct {p0}, Lcom/sprint/ce/updater/UpdaterService;->releaseWakeLock()V

    return-void
.end method

.method static synthetic access$11(Lcom/sprint/ce/updater/UpdaterService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sprint/ce/updater/UpdaterService;->mAltUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$12(Lcom/sprint/ce/updater/UpdaterService;)I
    .locals 1
    .parameter

    .prologue
    .line 67
    iget v0, p0, Lcom/sprint/ce/updater/UpdaterService;->mUpdateStartId:I

    return v0
.end method

.method static synthetic access$13(Lcom/sprint/ce/updater/UpdaterService;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterService;->mAltUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14(Lcom/sprint/ce/updater/UpdaterService;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sprint/ce/updater/UpdaterService;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15(Lcom/sprint/ce/updater/UpdaterService;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 373
    invoke-direct {p0, p1}, Lcom/sprint/ce/updater/UpdaterService;->performBroadcast(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$2(Lcom/sprint/ce/updater/UpdaterService;)V
    .locals 0
    .parameter

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/sprint/ce/updater/UpdaterService;->startAbortTimer()V

    return-void
.end method

.method static synthetic access$3(Lcom/sprint/ce/updater/UpdaterService;)Z
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/sprint/ce/updater/UpdaterService;->mAltUseSlot0:Z

    return v0
.end method

.method static synthetic access$4(Lcom/sprint/ce/updater/UpdaterService;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/sprint/ce/updater/UpdaterService;->cancelAbortTimer()V

    return-void
.end method

.method static synthetic access$5(Lcom/sprint/ce/updater/UpdaterService;)V
    .locals 0
    .parameter

    .prologue
    .line 601
    invoke-direct {p0}, Lcom/sprint/ce/updater/UpdaterService;->acquireWakeLock()V

    return-void
.end method

.method static synthetic access$6(Lcom/sprint/ce/updater/UpdaterService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/sprint/ce/updater/UpdaterService;->mAltUseSlot0:Z

    return-void
.end method

.method static synthetic access$7(Lcom/sprint/ce/updater/UpdaterService;)Z
    .locals 1
    .parameter

    .prologue
    .line 393
    invoke-direct {p0}, Lcom/sprint/ce/updater/UpdaterService;->performUpdateCheck()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8(Z)V
    .locals 0
    .parameter

    .prologue
    .line 65
    sput-boolean p0, Lcom/sprint/ce/updater/UpdaterService;->sBusy:Z

    return-void
.end method

.method static synthetic access$9(Lcom/sprint/ce/updater/UpdaterService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/sprint/ce/updater/UpdaterService;->reschedule(I)V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 4

    .prologue
    .line 602
    iget-object v2, p0, Lcom/sprint/ce/updater/UpdaterService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_0

    .line 604
    :try_start_0
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/sprint/ce/updater/UpdaterService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 605
    .local v1, pm:Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "SprintUpdater"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/sprint/ce/updater/UpdaterService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 606
    iget-object v2, p0, Lcom/sprint/ce/updater/UpdaterService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    .end local v1           #pm:Landroid/os/PowerManager;
    :cond_0
    :goto_0
    return-void

    .line 607
    :catch_0
    move-exception v0

    .line 608
    .local v0, e:Ljava/lang/Exception;
    const/high16 v2, 0x7f05

    invoke-virtual {p0, v2}, Lcom/sprint/ce/updater/UpdaterService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private cancelAbortTimer()V
    .locals 3

    .prologue
    .line 209
    sget-boolean v1, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SprintUpdater"

    const-string v2, "Cancelling abort timer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sprint/ce/updater/UpdaterService;->mAbortTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :cond_1
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, e:Ljava/lang/Exception;
    sget-boolean v1, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "SprintUpdater"

    const-string v2, "Failed to cancel abort timer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private checkForUpdates(Landroid/content/Intent;I)V
    .locals 5
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/4 v3, 0x1

    .line 319
    sget-boolean v2, Lcom/sprint/ce/updater/UpdaterService;->sBusy:Z

    if-nez v2, :cond_3

    .line 320
    sput-boolean v3, Lcom/sprint/ce/updater/UpdaterService;->sBusy:Z

    .line 321
    iput p2, p0, Lcom/sprint/ce/updater/UpdaterService;->mUpdateStartId:I

    .line 322
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sprint/ce/updater/UpdaterService;->mAltUrl:Ljava/lang/String;

    .line 323
    iget-object v2, p0, Lcom/sprint/ce/updater/UpdaterService;->mAltUrl:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 324
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sprint/ce/updater/UpdaterService;->mAltUseSlot0:Z

    .line 328
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 329
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 330
    const-string v2, "com.sprint.ce.updater.EXTRA_USE_SLOT0"

    iget-boolean v3, p0, Lcom/sprint/ce/updater/UpdaterService;->mAltUseSlot0:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sprint/ce/updater/UpdaterService;->mAltUseSlot0:Z

    .line 331
    const-string v2, "com.sprint.ce.updater.EXTRA_PACKAGE_NAME"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sprint/ce/updater/UpdaterService;->mPackage:Ljava/lang/String;

    .line 334
    :cond_0
    sget-boolean v2, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "SprintUpdater"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkForUpdates package: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sprint/ce/updater/UpdaterService;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_1
    new-instance v1, Lcom/sprint/ce/updater/UpdaterService$4;

    invoke-direct {v1, p0}, Lcom/sprint/ce/updater/UpdaterService$4;-><init>(Lcom/sprint/ce/updater/UpdaterService;)V

    .line 367
    .local v1, t:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 371
    .end local v0           #extras:Landroid/os/Bundle;
    .end local v1           #t:Ljava/lang/Thread;
    :goto_1
    return-void

    .line 326
    :cond_2
    iput-boolean v3, p0, Lcom/sprint/ce/updater/UpdaterService;->mAltUseSlot0:Z

    goto :goto_0

    .line 369
    :cond_3
    const-string v2, "SprintUpdater"

    const-string v3, "*** Busy ***"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private cleanupDownloads()V
    .locals 9

    .prologue
    .line 584
    invoke-virtual {p0}, Lcom/sprint/ce/updater/UpdaterService;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 586
    .local v2, path:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 587
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 588
    .local v1, dir:Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 589
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v5, :cond_1

    .line 597
    .end local v1           #dir:Ljava/io/File;
    :cond_0
    return-void

    .line 589
    .restart local v1       #dir:Ljava/io/File;
    :cond_1
    aget-object v0, v4, v3

    .line 590
    .local v0, child:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".apk"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "pkg."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 591
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 592
    sget-boolean v6, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v6, :cond_3

    const-string v6, "SprintUpdater"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "File removed: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private findOffHoursTime(J)J
    .locals 12
    .parameter "when"

    .prologue
    .line 281
    sget-boolean v6, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "SprintUpdater"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Potential scheduling in "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v8, p1, v8

    const-wide/32 v10, 0xea60

    div-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " min"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 281
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 285
    .local v0, cal:Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 287
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 288
    .local v2, dfm:Ljava/text/DateFormat;
    const-string v6, "America/Chicago"

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 289
    sget-boolean v6, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "SprintUpdater"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Current scheduled time: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_1
    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 293
    .local v1, curScheduledHour:I
    const/16 v6, 0x15

    if-ge v1, v6, :cond_3

    const/4 v6, 0x6

    if-le v1, v6, :cond_3

    .line 294
    sget-object v6, Lcom/sprint/ce/updater/DeviceUtil;->sMsid:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    .line 295
    .local v4, length:I
    sget-object v6, Lcom/sprint/ce/updater/DeviceUtil;->sMsid:Ljava/lang/String;

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 298
    .local v5, seed:I
    const/4 v6, 0x7

    if-ge v5, v6, :cond_4

    .line 299
    const/16 v6, 0xb

    invoke-virtual {v0, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 303
    :goto_0
    const/4 v6, 0x5

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->add(II)V

    .line 305
    sget-boolean v6, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "SprintUpdater"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "New scheduled time: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Seed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_2
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    .line 313
    .end local v0           #cal:Ljava/util/Calendar;
    .end local v1           #curScheduledHour:I
    .end local v2           #dfm:Ljava/text/DateFormat;
    .end local v4           #length:I
    .end local v5           #seed:I
    .end local p1
    :cond_3
    :goto_1
    return-wide p1

    .line 301
    .restart local v0       #cal:Ljava/util/Calendar;
    .restart local v1       #curScheduledHour:I
    .restart local v2       #dfm:Ljava/text/DateFormat;
    .restart local v4       #length:I
    .restart local v5       #seed:I
    .restart local p1
    :cond_4
    const/16 v6, 0xb

    add-int/lit8 v7, v5, 0xe

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->set(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 309
    .end local v0           #cal:Ljava/util/Calendar;
    .end local v1           #curScheduledHour:I
    .end local v2           #dfm:Ljava/text/DateFormat;
    .end local v4           #length:I
    .end local v5           #seed:I
    :catch_0
    move-exception v3

    .line 310
    .local v3, e:Ljava/lang/RuntimeException;
    const-string v6, "SprintUpdater"

    const-string v7, "Failed to rechedule for off hours"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private handleFailedAttempt()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 163
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sprint/ce/updater/UpdaterService;->setRetryMode(Z)V

    .line 164
    invoke-virtual {p0}, Lcom/sprint/ce/updater/UpdaterService;->updateLastFailedAttemptTimestamp()V

    .line 165
    invoke-direct {p0}, Lcom/sprint/ce/updater/UpdaterService;->scheduleRetry()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget v0, p0, Lcom/sprint/ce/updater/UpdaterService;->mUpdateStartId:I

    invoke-virtual {p0, v0}, Lcom/sprint/ce/updater/UpdaterService;->stopSelf(I)V

    .line 175
    :goto_0
    invoke-direct {p0}, Lcom/sprint/ce/updater/UpdaterService;->releaseWakeLock()V

    .line 176
    sput-boolean v1, Lcom/sprint/ce/updater/UpdaterService;->sBusy:Z

    .line 177
    return-void

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/sprint/ce/updater/UpdaterService;->resetRetryCount()V

    .line 170
    invoke-virtual {p0, v1}, Lcom/sprint/ce/updater/UpdaterService;->setRetryMode(Z)V

    .line 172
    invoke-virtual {p0}, Lcom/sprint/ce/updater/UpdaterService;->updateLastUpdateTimestamp()V

    .line 173
    iget v0, p0, Lcom/sprint/ce/updater/UpdaterService;->mUpdateStartId:I

    invoke-direct {p0, v0}, Lcom/sprint/ce/updater/UpdaterService;->reschedule(I)V

    goto :goto_0
.end method

.method private installUpdate(Ljava/lang/String;Z)Z
    .locals 12
    .parameter "filePath"
    .parameter "force"

    .prologue
    const/4 v8, 0x0

    .line 515
    invoke-virtual {p0}, Lcom/sprint/ce/updater/UpdaterService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 516
    .local v6, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v6, p1, v8}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 517
    .local v3, infoNew:Landroid/content/pm/PackageInfo;
    if-nez v3, :cond_0

    .line 518
    const-string v9, "SprintUpdater"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Downloaded apk not found or corrupt - path: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :goto_0
    return v8

    .line 522
    :cond_0
    iget-object v9, p0, Lcom/sprint/ce/updater/UpdaterService;->mFileMap:Ljava/util/Hashtable;

    iget-object v10, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    if-eqz p2, :cond_4

    const/4 v2, 0x2

    .line 525
    .local v2, flags:I
    :goto_1
    :try_start_0
    iget-object v9, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 526
    .local v4, infoOld:Landroid/content/pm/PackageInfo;
    sget-boolean v9, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v9, :cond_1

    const-string v9, "SprintUpdater"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Package "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " - installed versionCode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_1
    iget v9, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v10, v3, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v9, v10, :cond_2

    .line 528
    or-int/lit8 v2, v2, 0x2

    .line 534
    .end local v4           #infoOld:Landroid/content/pm/PackageInfo;
    :cond_2
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "file://"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 535
    .local v5, path:Ljava/lang/String;
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 536
    .local v7, uri:Landroid/net/Uri;
    sget-boolean v9, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v9, :cond_3

    const-string v9, "SprintUpdater"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Installing package: path="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";pkg="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";version="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_3
    :try_start_1
    iget-object v9, p0, Lcom/sprint/ce/updater/UpdaterService;->mInstallObserver:Landroid/content/pm/IPackageInstallObserver;

    invoke-virtual {p0}, Lcom/sprint/ce/updater/UpdaterService;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v7, v9, v2, v10}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 545
    const/4 v8, 0x1

    goto/16 :goto_0

    .end local v2           #flags:I
    .end local v5           #path:Ljava/lang/String;
    .end local v7           #uri:Landroid/net/Uri;
    :cond_4
    move v2, v8

    .line 523
    goto/16 :goto_1

    .line 530
    .restart local v2       #flags:I
    :catch_0
    move-exception v1

    .line 532
    .local v1, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v9, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v9, :cond_2

    if-eqz v3, :cond_2

    const-string v9, "SprintUpdater"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Package "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " - not yet installed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 539
    .end local v1           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5       #path:Ljava/lang/String;
    .restart local v7       #uri:Landroid/net/Uri;
    :catch_1
    move-exception v0

    .line 540
    .local v0, e:Ljava/lang/Exception;
    const-string v9, "SprintUpdater"

    const-string v10, "Failed to invoke installPackage"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 541
    sget-boolean v9, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v9, :cond_5

    if-eqz p1, :cond_5

    const-string v9, "SprintUpdater"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Removing file "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_5
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    goto/16 :goto_0
.end method

.method private performBroadcast(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sprint/ce/updater/Entry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 375
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/ce/updater/Entry;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 388
    return-void

    .line 375
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/ce/updater/Entry;

    .line 378
    .local v0, entry:Lcom/sprint/ce/updater/Entry;
    iget-object v3, p0, Lcom/sprint/ce/updater/UpdaterService;->mPackage:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/sprint/ce/updater/Entry;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/sprint/ce/updater/UpdaterService;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 379
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 380
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.sprint.action.VERSION_UPDATE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    const-string v3, "com.sprint.ce.updater.EXTRA_PACKAGE_NAME"

    iget-object v4, v0, Lcom/sprint/ce/updater/Entry;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    const-string v3, "com.sprint.ce.updater.EXTRA_VERSION_CODE"

    iget v4, v0, Lcom/sprint/ce/updater/Entry;->versionCode:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 383
    const-string v3, "com.sprint.ce.updater.EXTRA_VERSION_AVAILABLE"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 384
    sget-boolean v3, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "SprintUpdater"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Send broadcast: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_3
    invoke-virtual {p0, v1}, Lcom/sprint/ce/updater/UpdaterService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private performUpdateCheck()Z
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 394
    iget-boolean v0, p0, Lcom/sprint/ce/updater/UpdaterService;->mAltUseSlot0:Z

    invoke-static {p0, v12, v0}, Lcom/sprint/ce/updater/DownloadUtil;->checkForUpdate(Landroid/content/Context;Ljava/lang/String;Z)Lcom/sprint/ce/updater/Response;

    move-result-object v9

    iput-object v9, p0, Lcom/sprint/ce/updater/UpdaterService;->mResponse:Lcom/sprint/ce/updater/Response;

    .line 395
    .local v9, r:Lcom/sprint/ce/updater/Response;
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lcom/sprint/ce/updater/Response;->getError()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_3

    .line 396
    invoke-virtual {v9}, Lcom/sprint/ce/updater/Response;->getTtl()I

    move-result v0

    int-to-long v1, v0

    invoke-virtual {v9}, Lcom/sprint/ce/updater/Response;->getRetryInterval()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {v9}, Lcom/sprint/ce/updater/Response;->getMaxRetryCount()I

    move-result v5

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/sprint/ce/updater/DownloadUtil;->handleIntervalChanges(Landroid/content/Context;JJI)V

    .line 397
    invoke-virtual {v9, p0, v12, v11}, Lcom/sprint/ce/updater/Response;->getEligibleEntries(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v7

    .line 398
    .local v7, list:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/ce/updater/Entry;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 400
    const-string v0, "SprintUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Updates available: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v10

    .line 420
    .end local v7           #list:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/ce/updater/Entry;>;"
    :goto_1
    return v0

    .line 401
    .restart local v7       #list:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/ce/updater/Entry;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sprint/ce/updater/Entry;

    .line 402
    .local v6, e:Lcom/sprint/ce/updater/Entry;
    sget-boolean v1, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SprintUpdater"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "package="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v6, Lcom/sprint/ce/updater/Entry;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 403
    const-string v3, ";version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v6, Lcom/sprint/ce/updater/Entry;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 404
    const-string v3, ";versionCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v6, Lcom/sprint/ce/updater/Entry;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 402
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 409
    .end local v6           #e:Lcom/sprint/ce/updater/Entry;
    :cond_2
    const-string v0, "SprintUpdater"

    const-string v1, "No updates available"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 410
    goto :goto_1

    .line 414
    .end local v7           #list:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/ce/updater/Entry;>;"
    :cond_3
    const-string v8, ""

    .line 415
    .local v8, message:Ljava/lang/String;
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Lcom/sprint/ce/updater/Response;->getError()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 416
    invoke-virtual {v9}, Lcom/sprint/ce/updater/Response;->getError()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    .line 418
    :cond_4
    const-string v0, "SprintUpdater"

    const-string v1, "update check failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v11

    .line 420
    goto :goto_1
.end method

.method private releaseWakeLock()V
    .locals 3

    .prologue
    .line 615
    :try_start_0
    iget-object v1, p0, Lcom/sprint/ce/updater/UpdaterService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sprint/ce/updater/UpdaterService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 616
    iget-object v1, p0, Lcom/sprint/ce/updater/UpdaterService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 618
    :catch_0
    move-exception v0

    .line 619
    .local v0, e:Ljava/lang/Exception;
    const/high16 v1, 0x7f05

    invoke-virtual {p0, v1}, Lcom/sprint/ce/updater/UpdaterService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeUpdatePackage(Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"

    .prologue
    .line 566
    iget-object v2, p0, Lcom/sprint/ce/updater/UpdaterService;->mFileMap:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 567
    .local v1, path:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 568
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 569
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1

    .line 570
    sget-boolean v2, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SprintUpdater"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Couldn\'t remove file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    .end local v0           #f:Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 572
    .restart local v0       #f:Ljava/io/File;
    :cond_1
    sget-boolean v2, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SprintUpdater"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "File removed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 575
    .end local v0           #f:Ljava/io/File;
    :cond_2
    sget-boolean v2, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SprintUpdater"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "File path not found for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private reschedule(I)V
    .locals 19
    .parameter "startId"

    .prologue
    .line 218
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 219
    .local v10, sp:Landroid/content/SharedPreferences;
    const-string v13, "update_interval"

    const-wide v14, 0x9a7ec800L

    invoke-interface {v10, v13, v14, v15}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 220
    .local v3, interval:J
    const-string v13, "last_update"

    const-wide/16 v14, 0x0

    invoke-interface {v10, v13, v14, v15}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 221
    .local v5, lastUpdate:J
    move-wide v11, v3

    .line 222
    .local v11, when:J
    const-wide/16 v13, 0x0

    cmp-long v13, v5, v13

    if-lez v13, :cond_0

    .line 223
    add-long v13, v5, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/sprint/ce/updater/UpdaterService;->findOffHoursTime(J)J

    move-result-wide v11

    .line 225
    :cond_0
    const-string v13, "alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sprint/ce/updater/UpdaterService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 226
    .local v1, am:Landroid/app/AlarmManager;
    new-instance v2, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 227
    .local v2, i:Landroid/content/Intent;
    const-string v13, "com.sprint.action.RUN_UPDATE"

    invoke-virtual {v2, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v13, v2, v14}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 229
    .local v9, op:Landroid/app/PendingIntent;
    invoke-virtual {v1, v9}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 231
    .local v7, now:J
    cmp-long v13, v11, v7

    if-gez v13, :cond_1

    .line 232
    const-wide/16 v13, 0x1388

    add-long v11, v7, v13

    .line 234
    :cond_1
    const-string v13, "SprintUpdater"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Rescheduling to run in "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long v15, v11, v15

    const-wide/32 v17, 0xea60

    div-long v15, v15, v17

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " min"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 234
    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/4 v13, 0x0

    invoke-virtual {v1, v13, v11, v12, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 237
    invoke-virtual/range {p0 .. p1}, Lcom/sprint/ce/updater/UpdaterService;->stopSelf(I)V

    .line 238
    return-void
.end method

.method private runUpdate(I)V
    .locals 3
    .parameter "startId"

    .prologue
    .line 116
    sget-boolean v1, Lcom/sprint/ce/updater/UpdaterService;->sBusy:Z

    if-nez v1, :cond_0

    .line 117
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sprint/ce/updater/UpdaterService;->sBusy:Z

    .line 118
    iput p1, p0, Lcom/sprint/ce/updater/UpdaterService;->mUpdateStartId:I

    .line 119
    new-instance v0, Lcom/sprint/ce/updater/UpdaterService$3;

    invoke-direct {v0, p0, p1}, Lcom/sprint/ce/updater/UpdaterService$3;-><init>(Lcom/sprint/ce/updater/UpdaterService;I)V

    .line 156
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 160
    .end local v0           #t:Ljava/lang/Thread;
    :goto_0
    return-void

    .line 158
    :cond_0
    const-string v1, "SprintUpdater"

    const-string v2, "*** Busy ***"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private scheduleRetry()Z
    .locals 23

    .prologue
    .line 241
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 242
    .local v14, sp:Landroid/content/SharedPreferences;
    const-string v17, "retry_count"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 243
    .local v11, retryCount:I
    const-string v17, "max_retry_count"

    const/16 v18, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 244
    .local v7, maxRetryCount:I
    if-lt v11, v7, :cond_1

    .line 245
    sget-boolean v17, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v17, :cond_0

    const-string v17, "SprintUpdater"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Max retry count reached ("

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sprint/ce/updater/UpdaterService;->setRetryMode(Z)V

    .line 247
    invoke-virtual/range {p0 .. p0}, Lcom/sprint/ce/updater/UpdaterService;->resetRetryCount()V

    .line 248
    const/16 v17, 0x0

    .line 271
    :goto_0
    return v17

    .line 250
    :cond_1
    const-string v17, "retry_interval"

    const-wide/32 v18, 0x5265c00

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-interface {v14, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    .line 251
    .local v12, retryInterval:J
    const-string v17, "last_failed_attempt"

    const-wide/16 v18, 0x0

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-interface {v14, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 253
    .local v5, lastFailedAttempt:J
    move-wide v15, v12

    .line 254
    .local v15, when:J
    const-wide/16 v17, 0x0

    cmp-long v17, v5, v17

    if-lez v17, :cond_2

    .line 255
    add-long v17, v5, v12

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2}, Lcom/sprint/ce/updater/UpdaterService;->findOffHoursTime(J)J

    move-result-wide v15

    .line 257
    :cond_2
    const-string v17, "alarm"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sprint/ce/updater/UpdaterService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 258
    .local v3, am:Landroid/app/AlarmManager;
    new-instance v4, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 259
    .local v4, i:Landroid/content/Intent;
    const-string v17, "com.sprint.action.RETRY_UPDATE"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v4, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 261
    .local v10, op:Landroid/app/PendingIntent;
    invoke-virtual {v3, v10}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 263
    .local v8, now:J
    cmp-long v17, v15, v8

    if-gez v17, :cond_3

    .line 264
    const-wide/16 v17, 0x1388

    add-long v15, v8, v17

    .line 266
    :cond_3
    const-string v17, "SprintUpdater"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Scheduling retry in "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    sub-long v19, v15, v19

    const-wide/32 v21, 0xea60

    div-long v19, v19, v21

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " min"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 266
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const-wide/16 v17, 0x0

    cmp-long v17, v12, v17

    if-lez v17, :cond_4

    .line 269
    const/16 v17, 0x0

    move/from16 v0, v17

    move-wide v1, v15

    invoke-virtual {v3, v0, v1, v2, v10}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 271
    :cond_4
    const/16 v17, 0x1

    goto/16 :goto_0
.end method

.method private startAbortTimer()V
    .locals 5

    .prologue
    .line 200
    sget-boolean v1, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SprintUpdater"

    const-string v2, "Starting abort timer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sprint/ce/updater/UpdaterService;->mAbortTimer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/sprint/ce/updater/UpdaterService;->mAbortTimerTask:Ljava/util/TimerTask;

    const-wide/32 v3, 0x493e0

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :cond_1
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, e:Ljava/lang/Exception;
    sget-boolean v1, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "SprintUpdater"

    const-string v2, "Failed to start abort timer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected downloadAndInstallUpdates()Z
    .locals 12

    .prologue
    .line 424
    const/4 v7, 0x1

    .line 425
    .local v7, success:Z
    iget-object v8, p0, Lcom/sprint/ce/updater/UpdaterService;->mResponse:Lcom/sprint/ce/updater/Response;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/sprint/ce/updater/UpdaterService;->mResponse:Lcom/sprint/ce/updater/Response;

    invoke-virtual {v8}, Lcom/sprint/ce/updater/Response;->getEntries()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 426
    iget-object v8, p0, Lcom/sprint/ce/updater/UpdaterService;->mResponse:Lcom/sprint/ce/updater/Response;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, p0, v9, v10}, Lcom/sprint/ce/updater/Response;->getEligibleEntries(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v3

    .line 427
    .local v3, entries:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/ce/updater/Entry;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_2

    .line 452
    .end local v3           #entries:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/ce/updater/Entry;>;"
    :cond_1
    return v7

    .line 427
    .restart local v3       #entries:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/ce/updater/Entry;>;"
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprint/ce/updater/Entry;

    .line 428
    .local v1, e:Lcom/sprint/ce/updater/Entry;
    const/4 v0, 0x0

    .line 429
    .local v0, downloadOk:Z
    const/4 v5, 0x0

    .line 431
    .local v5, filePath:Ljava/lang/String;
    :try_start_0
    iget-object v9, v1, Lcom/sprint/ce/updater/Entry;->url:Ljava/lang/String;

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    .line 432
    .local v4, fileName:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sprint/ce/updater/UpdaterService;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 433
    iget-object v9, v1, Lcom/sprint/ce/updater/Entry;->url:Ljava/lang/String;

    invoke-virtual {p0, v9, v4}, Lcom/sprint/ce/updater/UpdaterService;->downloadUpdate(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    sget-boolean v9, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v9, :cond_3

    const-string v9, "SprintUpdater"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Successfully downloaded: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v1, Lcom/sprint/ce/updater/Entry;->url:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_3
    const/4 v0, 0x1

    .line 436
    iget-boolean v9, v1, Lcom/sprint/ce/updater/Entry;->force:Z

    invoke-direct {p0, v5, v9}, Lcom/sprint/ce/updater/UpdaterService;->installUpdate(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_0

    .line 437
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "Install update failed"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    .end local v4           #fileName:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 441
    .local v2, ee:Ljava/lang/Throwable;
    if-eqz v0, :cond_5

    const-string v6, "Installation failed"

    .line 442
    .local v6, message:Ljava/lang/String;
    :goto_1
    const-string v9, "SprintUpdater"

    invoke-static {v9, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 443
    if-nez v0, :cond_4

    if-eqz v5, :cond_4

    .line 444
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v9

    if-nez v9, :cond_4

    .line 445
    const-string v9, "SprintUpdater"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Couldn\'t remove file: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 441
    .end local v6           #message:Ljava/lang/String;
    :cond_5
    const-string v6, "Download failed"

    goto :goto_1
.end method

.method public downloadUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "url"
    .parameter "saveToFileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 499
    const/4 v0, 0x0

    .line 501
    .local v0, fos:Ljava/io/FileOutputStream;
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p2, v1}, Lcom/sprint/ce/updater/UpdaterService;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 502
    invoke-static {p0, p1, v0}, Lcom/sprint/ce/updater/DownloadUtil;->downloadUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/io/FileOutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    if-eqz v0, :cond_0

    .line 507
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 503
    :catchall_0
    move-exception v1

    .line 505
    if-eqz v0, :cond_1

    .line 507
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 511
    :cond_1
    :goto_1
    throw v1

    .line 508
    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method protected incrementRetryCount()V
    .locals 5

    .prologue
    .line 456
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 457
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "retry_count"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 458
    .local v0, count:I
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 459
    const-string v3, "retry_count"

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 460
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 461
    return-void
.end method

.method protected isRetryMode()Z
    .locals 3

    .prologue
    .line 465
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 466
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "retry_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "i"

    .prologue
    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 83
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sprint/ce/updater/UpdaterService;->mFileMap:Ljava/util/Hashtable;

    .line 84
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 88
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 89
    const/4 v0, 0x0

    .line 91
    .local v0, action:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 95
    :goto_0
    const-string v2, "com.sprint.action.RESCHEDULE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    invoke-virtual {p0}, Lcom/sprint/ce/updater/UpdaterService;->isRetryMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/sprint/ce/updater/UpdaterService;->scheduleRetry()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    invoke-virtual {p0, p2}, Lcom/sprint/ce/updater/UpdaterService;->stopSelf(I)V

    .line 113
    :goto_1
    return-void

    .line 92
    :catch_0
    move-exception v1

    .line 93
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "SprintUpdater"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 99
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    invoke-direct {p0, p2}, Lcom/sprint/ce/updater/UpdaterService;->reschedule(I)V

    goto :goto_1

    .line 101
    :cond_1
    const-string v2, "com.sprint.action.RUN_UPDATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 102
    invoke-direct {p0, p2}, Lcom/sprint/ce/updater/UpdaterService;->runUpdate(I)V

    goto :goto_1

    .line 103
    :cond_2
    const-string v2, "com.sprint.action.RETRY_UPDATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 104
    invoke-virtual {p0}, Lcom/sprint/ce/updater/UpdaterService;->incrementRetryCount()V

    .line 105
    invoke-direct {p0, p2}, Lcom/sprint/ce/updater/UpdaterService;->runUpdate(I)V

    goto :goto_1

    .line 106
    :cond_3
    const-string v2, "com.sprint.action.VERSION_CHECK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/sprint/ce/updater/UpdaterService;->checkForUpdates(Landroid/content/Intent;I)V

    goto :goto_1

    .line 108
    :cond_4
    const-string v2, "com.sprint.action.CLEANUP_FILES"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 109
    invoke-direct {p0}, Lcom/sprint/ce/updater/UpdaterService;->cleanupDownloads()V

    goto :goto_1

    .line 111
    :cond_5
    invoke-virtual {p0, p2}, Lcom/sprint/ce/updater/UpdaterService;->stopSelf(I)V

    goto :goto_1
.end method

.method protected resetRetryCount()V
    .locals 4

    .prologue
    .line 477
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 478
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 479
    const-string v2, "retry_count"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 480
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 481
    return-void
.end method

.method protected setRetryMode(Z)V
    .locals 3
    .parameter "value"

    .prologue
    .line 470
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 471
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 472
    const-string v2, "retry_mode"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 473
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 474
    return-void
.end method

.method protected updateLastFailedAttemptTimestamp()V
    .locals 5

    .prologue
    .line 491
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 492
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 493
    const-string v2, "last_failed_attempt"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 494
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 495
    return-void
.end method

.method protected updateLastUpdateTimestamp()V
    .locals 5

    .prologue
    .line 484
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 485
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 486
    const-string v2, "last_update"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 487
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 488
    return-void
.end method
