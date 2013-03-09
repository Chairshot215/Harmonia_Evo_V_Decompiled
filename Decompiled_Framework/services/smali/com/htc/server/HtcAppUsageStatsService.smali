.class public final Lcom/htc/server/HtcAppUsageStatsService;
.super Lcom/android/internal/app/IHtcAppUsageStatsService$Stub;
.source "HtcAppUsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/server/HtcAppUsageStatsService$HtcAppDeathRecipient;,
        Lcom/htc/server/HtcAppUsageStatsService$ActiveTimeInfo;
    }
.end annotation


# static fields
.field private static final C2DM_PERMISSION_NAME:Ljava/lang/String; = "com.google.android.c2dm.permission.RECEIVE"

.field private static final FILE_PREFIX:Ljava/lang/String; = "HtcAppUsageStats"

.field private static final FILE_WRITE_INTERVAL:I = 0x1b7740

.field static final HTCAPPUSS_DELAYWRITE:I = 0x1

.field private static final HWTAG:Ljava/lang/String; = "com.android.settings.framework.activity.aboutphone.HtcAboutPhoneHardwareInformation"

.field public static final SERVICE_NAME:Ljava/lang/String; = "HtcAppUsageStatsService"

.field private static final SWTAG:Ljava/lang/String; = "com.android.settings.framework.activity.aboutphone.HtcAboutPhoneSoftwareInformation"

.field static final TAG:Ljava/lang/String; = "HtcAppUsageStats"

.field public static final VZW_APPWIFIOFFLOAD:Z

.field private static sEnableC2DMLogInfo:Z


# instance fields
.field private mActiveTimeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/server/HtcAppUsageStatsService$ActiveTimeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAppMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/HtcAppUsageStats;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAppWifiOffload:Lcom/htc/server/HtcAppWifiOffload;

.field private mContext:Landroid/content/Context;

.field private mDir:Ljava/io/File;

.field private mFile:Ljava/io/File;

.field final mFileLock:Ljava/lang/Object;

.field private final mHandler:Landroid/os/Handler;

.field private mLastWriteElapsedTime:J

.field private mObserverMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/internal/os/IHtcAppLaunchObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingPackage:Ljava/lang/String;

.field private mPendingTask:Ljava/lang/String;

.field private mRecipientMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/htc/server/HtcAppUsageStatsService$HtcAppDeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private mRedecideRootActivity:Z

.field private final mStatsLock:Ljava/lang/Object;

.field private mbSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa8

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/htc/server/HtcAppUsageStatsService;->VZW_APPWIFIOFFLOAD:Z

    invoke-static {}, Lcom/htc/utils/ulog/Util;->isUserRom()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/utils/ulog/Util;->isLessThanSense40()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    sput-boolean v2, Lcom/htc/server/HtcAppUsageStatsService;->sEnableC2DMLogInfo:Z

    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/internal/app/IHtcAppUsageStatsService$Stub;-><init>()V

    iput-boolean v0, p0, Lcom/htc/server/HtcAppUsageStatsService;->mRedecideRootActivity:Z

    iput-object v1, p0, Lcom/htc/server/HtcAppUsageStatsService;->mPendingTask:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/server/HtcAppUsageStatsService;->mPendingPackage:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/htc/server/HtcAppUsageStatsService;->mbSystemReady:Z

    new-instance v0, Lcom/htc/server/HtcAppUsageStatsService$1;

    invoke-direct {v0, p0}, Lcom/htc/server/HtcAppUsageStatsService$1;-><init>(Lcom/htc/server/HtcAppUsageStatsService;)V

    iput-object v0, p0, Lcom/htc/server/HtcAppUsageStatsService;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/server/HtcAppUsageStatsService;->mStatsLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/server/HtcAppUsageStatsService;->mFileLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/server/HtcAppUsageStatsService;->mAppMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/server/HtcAppUsageStatsService;->mAppCache:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/server/HtcAppUsageStatsService;->mObserverMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/server/HtcAppUsageStatsService;->mRecipientMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/server/HtcAppUsageStatsService;->mActiveTimeMap:Ljava/util/HashMap;

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/appusagestats"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/server/HtcAppUsageStatsService;->mDir:Ljava/io/File;

    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsService;->mDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/htc/server/HtcAppUsageStatsService;->mDir:Ljava/io/File;

    const-string v2, "HtcAppUsageStats"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/server/HtcAppUsageStatsService;->mFile:Ljava/io/File;

    invoke-direct {p0}, Lcom/htc/server/HtcAppUsageStatsService;->readStatsFromFile()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/server/HtcAppUsageStatsService;->mLastWriteElapsedTime:J

    return-void
.end method

.method static synthetic access$000(Lcom/htc/server/HtcAppUsageStatsService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsService;->mStatsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/server/HtcAppUsageStatsService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsService;->mObserverMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/server/HtcAppUsageStatsService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsService;->mRecipientMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/server/HtcAppUsageStatsService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/server/HtcAppUsageStatsService;->writeStatsToFileSLOCK(Z)V

    return-void
.end method

.method private addULog(Ljava/lang/String;Ljava/lang/String;JZZ)V
    .locals 4

    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-ltz v1, :cond_0

    const-wide/32 v1, 0x15752a00

    cmp-long v1, p3, v1

    if-lez v1, :cond_1

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Duration is not reasonable."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v1

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v0

    const-string v1, "system_server"

    invoke-virtual {v0, v1}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "activity_launch_history"

    invoke-interface {v1, v2}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "activity"

    invoke-interface {v1, v2, p1}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "duration"

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    if-eqz p5, :cond_2

    const-string v1, "isgroup"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    :cond_2
    if-eqz p6, :cond_3

    const-string v1, "cnt_tag"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    :cond_3
    const-string v1, "package"

    invoke-virtual {v0, v1, p2}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    invoke-static {v0}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    invoke-virtual {v0}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private getParcelForFile(Ljava/io/File;)Landroid/os/Parcel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v2}, Lcom/htc/server/HtcAppUsageStatsService;->readFully(Ljava/io/FileInputStream;)[B

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    array-length v3, v1

    invoke-virtual {v0, v1, v4, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    return-object v0
.end method

.method private getRootActivity(Lcom/android/server/am/HtcWrapTaskRecord;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/server/am/HtcWrapTaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/server/HtcAppUsageStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/HtcWrapTaskRecord;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    :goto_0
    iget-object v1, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/htc/server/HtcAppUsageStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/HtcWrapTaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    goto :goto_0
.end method

.method private notifyAllObserver(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object v5, p0, Lcom/htc/server/HtcAppUsageStatsService;->mAppMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/server/HtcAppUsageStatsService;->mAppMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/HtcAppUsageStats;

    iget-object v5, p0, Lcom/htc/server/HtcAppUsageStatsService;->mObserverMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/IHtcAppLaunchObserver;

    :try_start_0
    invoke-interface {v2, v3}, Lcom/android/internal/os/IHtcAppLaunchObserver;->onAppLaunch(Lcom/android/internal/os/HtcAppUsageStats;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v4

    const-string v5, "system_server"

    invoke-virtual {v4, v5}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v5

    const-string v6, "application_launch"

    invoke-interface {v5, v6}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v5

    const-string v6, "package"

    invoke-interface {v5, v6, p1}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v5

    const-string v6, "name"

    invoke-interface {v5, v6, p2}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lcom/htc/utils/ulog/ULogDataWritable;->setTimestamp(J)Lcom/htc/utils/ulog/ULogDataWritable;

    invoke-static {v4}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    invoke-virtual {v4}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method static readFully(Ljava/io/FileInputStream;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    new-array v2, v1, [B

    :cond_0
    :goto_0
    array-length v5, v2

    sub-int/2addr v5, v4

    invoke-virtual {p0, v2, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    if-gtz v0, :cond_1

    return-object v2

    :cond_1
    add-int/2addr v4, v0

    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    array-length v5, v2

    sub-int/2addr v5, v4

    if-le v1, v5, :cond_0

    add-int v5, v4, v1

    new-array v3, v5, [B

    invoke-static {v2, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v3

    goto :goto_0
.end method

.method private readStatsFLOCK(Ljava/io/File;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/htc/server/HtcAppUsageStatsService;->getParcelForFile(Ljava/io/File;)Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iget-object v8, p0, Lcom/htc/server/HtcAppUsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v8

    :goto_0
    if-lez v5, :cond_0

    add-int/lit8 v5, v5, -0x1

    :try_start_0
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    monitor-exit v8

    return-void

    :cond_1
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    :goto_1
    if-lez v3, :cond_2

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_2
    iget-object v7, p0, Lcom/htc/server/HtcAppUsageStatsService;->mAppMap:Ljava/util/HashMap;

    invoke-virtual {v7, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    :cond_3
    :try_start_1
    new-instance v0, Lcom/android/internal/os/HtcAppUsageStats;

    invoke-direct {v0, v1}, Lcom/android/internal/os/HtcAppUsageStats;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v6, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private readStatsFromFile()V
    .locals 3

    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsService;->mFile:Ljava/io/File;

    iget-object v2, p0, Lcom/htc/server/HtcAppUsageStatsService;->mFileLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/htc/server/HtcAppUsageStatsService;->readStatsFLOCK(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private static scanArgs([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    if-eqz p0, :cond_1

    move-object v1, p0

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private writeStatsFLOCK()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/htc/server/HtcAppUsageStatsService;->mFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/server/HtcAppUsageStatsService;->writeStatsToParcelFLOCK(Landroid/os/Parcel;)V

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw v2
.end method

.method private writeStatsToFileSLOCK(Z)V
    .locals 11

    iget-object v6, p0, Lcom/htc/server/HtcAppUsageStatsService;->mFileLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-wide v7, p0, Lcom/htc/server/HtcAppUsageStatsService;->mLastWriteElapsedTime:J

    sub-long v7, v2, v7

    const-wide/32 v9, 0x1b7740

    cmp-long v5, v7, v9

    if-gez v5, :cond_0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/htc/server/HtcAppUsageStatsService;->mFile:Ljava/io/File;

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/htc/server/HtcAppUsageStatsService;->mDir:Ljava/io/File;

    if-nez v5, :cond_1

    new-instance v5, Ljava/io/File;

    const-string v7, "/data/system/appusagestats"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/htc/server/HtcAppUsageStatsService;->mDir:Ljava/io/File;

    :cond_1
    iget-object v5, p0, Lcom/htc/server/HtcAppUsageStatsService;->mDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    new-instance v5, Ljava/io/File;

    iget-object v7, p0, Lcom/htc/server/HtcAppUsageStatsService;->mDir:Ljava/io/File;

    const-string v8, "HtcAppUsageStats"

    invoke-direct {v5, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/htc/server/HtcAppUsageStatsService;->mFile:Ljava/io/File;

    :cond_2
    iget-object v5, p0, Lcom/htc/server/HtcAppUsageStatsService;->mFile:Ljava/io/File;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/htc/server/HtcAppUsageStatsService;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/htc/server/HtcAppUsageStatsService;->mFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ".bak"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_3
    iget-object v5, p0, Lcom/htc/server/HtcAppUsageStatsService;->mFile:Ljava/io/File;

    invoke-virtual {v5, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v5

    if-nez v5, :cond_4

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    goto :goto_0

    :cond_4
    move-object v0, v1

    :cond_5
    :try_start_4
    iget-object v5, p0, Lcom/htc/server/HtcAppUsageStatsService;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/htc/server/HtcAppUsageStatsService;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    :cond_6
    invoke-direct {p0}, Lcom/htc/server/HtcAppUsageStatsService;->writeStatsFLOCK()V

    iput-wide v2, p0, Lcom/htc/server/HtcAppUsageStatsService;->mLastWriteElapsedTime:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_7
    :goto_1
    :try_start_5
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v5

    :catch_0
    move-exception v4

    :goto_2
    if-eqz v0, :cond_7

    :try_start_6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/htc/server/HtcAppUsageStatsService;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/htc/server/HtcAppUsageStatsService;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_8
    iget-object v5, p0, Lcom/htc/server/HtcAppUsageStatsService;->mFile:Ljava/io/File;

    invoke-virtual {v0, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v4

    move-object v0, v1

    goto :goto_2
.end method

.method private writeStatsToParcelFLOCK(Landroid/os/Parcel;)V
    .locals 9

    iget-object v8, p0, Lcom/htc/server/HtcAppUsageStatsService;->mAppMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/htc/server/HtcAppUsageStatsService;->mAppMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/htc/server/HtcAppUsageStatsService;->mAppMap:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/HtcAppUsageStats;

    const/4 v8, 0x0

    invoke-virtual {v0, p1, v8}, Lcom/android/internal/os/HtcAppUsageStats;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public changeRootActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/HtcWrapTaskRecord;)V
    .locals 6

    if-eqz p2, :cond_0

    iget-boolean v2, p0, Lcom/htc/server/HtcAppUsageStatsService;->mRedecideRootActivity:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/htc/server/HtcAppUsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/htc/server/HtcAppUsageStatsService;->mAppMap:Ljava/util/HashMap;

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/htc/server/HtcAppUsageStatsService;->mAppMap:Ljava/util/HashMap;

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/HtcAppUsageStats;

    iget v2, v1, Lcom/android/internal/os/HtcAppUsageStats;->launchCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/android/internal/os/HtcAppUsageStats;->launchCount:I

    :cond_2
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/HtcAppUsageStats;

    iget v2, v1, Lcom/android/internal/os/HtcAppUsageStats;->launchCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/internal/os/HtcAppUsageStats;->launchCount:I

    invoke-direct {p0, p4}, Lcom/htc/server/HtcAppUsageStatsService;->getRootActivity(Lcom/android/server/am/HtcWrapTaskRecord;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/os/HtcAppUsageStats;->lastRootActivity:Ljava/lang/String;

    :goto_1
    iget-object v2, p0, Lcom/htc/server/HtcAppUsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/htc/server/HtcAppUsageStatsService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/htc/server/HtcAppUsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    iput-object p2, p0, Lcom/htc/server/HtcAppUsageStatsService;->mPendingTask:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/server/HtcAppUsageStatsService;->mPendingPackage:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    :try_start_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_4
    :try_start_2
    new-instance v2, Lcom/android/internal/os/HtcAppUsageStats;

    const/4 v4, 0x1

    invoke-direct {p0, p4}, Lcom/htc/server/HtcAppUsageStatsService;->getRootActivity(Lcom/android/server/am/HtcWrapTaskRecord;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, p3, p2, v4, v5}, Lcom/android/internal/os/HtcAppUsageStats;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/android/internal/os/HtcAppUsageStats;

    const/4 v4, 0x1

    invoke-direct {p0, p4}, Lcom/htc/server/HtcAppUsageStatsService;->getRootActivity(Lcom/android/server/am/HtcWrapTaskRecord;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, p3, p2, v4, v5}, Lcom/android/internal/os/HtcAppUsageStats;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/htc/server/HtcAppUsageStatsService;->mAppMap:Ljava/util/HashMap;

    invoke-virtual {v2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getAllAppUsageStats()[Lcom/android/internal/os/HtcAppUsageStats;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcAppUsageStatsService;->mStatsLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcAppUsageStatsService;->mAppMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_3

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcAppUsageStatsService;->mAppMap:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    array-length v10, v3

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v10, :cond_0

    aget-object v13, v3, v7

    move-object v0, v13

    check-cast v0, Ljava/util/HashMap;

    move-object v12, v0

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v16

    add-int v15, v15, v16

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    new-array v2, v15, [Lcom/android/internal/os/HtcAppUsageStats;

    const/4 v5, 0x0

    move-object v3, v1

    array-length v10, v3

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    if-ge v8, v10, :cond_2

    aget-object v13, v3, v8

    move-object v0, v13

    check-cast v0, Ljava/util/HashMap;

    move-object v12, v0

    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v14

    move-object v4, v14

    array-length v11, v4

    const/4 v7, 0x0

    move v6, v5

    :goto_2
    if-ge v7, v11, :cond_1

    aget-object v9, v4, v7

    add-int/lit8 v5, v6, 0x1

    check-cast v9, Lcom/android/internal/os/HtcAppUsageStats;

    aput-object v9, v2, v6

    add-int/lit8 v7, v7, 0x1

    move v6, v5

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    move v5, v6

    goto :goto_1

    :cond_2
    monitor-exit v17

    :goto_3
    return-object v2

    :cond_3
    const/4 v2, 0x0

    monitor-exit v17

    goto :goto_3

    :catchall_0
    move-exception v16

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v16
.end method

.method public getAppLabel(Lcom/android/server/am/HtcWrapTaskRecord;)Ljava/lang/String;
    .locals 12

    const/4 v2, 0x0

    iget-object v9, p1, Lcom/android/server/am/HtcWrapTaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v9, p1, Lcom/android/server/am/HtcWrapTaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/htc/server/HtcAppUsageStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, p1, Lcom/android/server/am/HtcWrapTaskRecord;->origActivity:Landroid/content/ComponentName;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    :goto_0
    iget-object v0, v1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    iget-object v10, p0, Lcom/htc/server/HtcAppUsageStatsService;->mAppCache:Ljava/util/HashMap;

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v9, p0, Lcom/htc/server/HtcAppUsageStatsService;->mAppCache:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/htc/server/HtcAppUsageStatsService;->mAppCache:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    return-object v9

    :cond_0
    :try_start_2
    iget-object v9, p0, Lcom/htc/server/HtcAppUsageStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, p1, Lcom/android/server/am/HtcWrapTaskRecord;->realActivity:Landroid/content/ComponentName;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    goto :goto_0

    :cond_1
    :try_start_3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v9, p0, Lcom/htc/server/HtcAppUsageStatsService;->mAppCache:Ljava/util/HashMap;

    invoke-virtual {v9, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v9, p0, Lcom/htc/server/HtcAppUsageStatsService;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-virtual {v9, v7, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    new-instance v5, Landroid/content/res/Configuration;

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-direct {v5, v9}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    new-instance v4, Landroid/content/res/Configuration;

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-direct {v4, v9}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    iput-object v9, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const/4 v9, 0x0

    :try_start_5
    invoke-virtual {v8, v4, v9}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    iget-object v9, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v9, :cond_3

    iget-object v9, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v2

    :goto_2
    const/4 v9, 0x0

    :try_start_6
    invoke-virtual {v8, v5, v9}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    iget-object v10, p0, Lcom/htc/server/HtcAppUsageStatsService;->mAppCache:Ljava/util/HashMap;

    monitor-enter v10
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    iget-object v9, p0, Lcom/htc/server/HtcAppUsageStatsService;->mAppCache:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_3
    move-object v9, v2

    goto :goto_1

    :catchall_0
    move-exception v9

    :try_start_8
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v9
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :catch_0
    move-exception v9

    goto :goto_3

    :cond_3
    :try_start_a
    iget v9, v1, Landroid/content/pm/ActivityInfo;->labelRes:I

    if-eqz v9, :cond_4

    iget v9, v1, Landroid/content/pm/ActivityInfo;->labelRes:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    iget-object v9, v1, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v9, :cond_5

    iget-object v9, v1, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result-object v2

    goto :goto_2

    :catchall_1
    move-exception v9

    const/4 v10, 0x0

    :try_start_b
    invoke-virtual {v8, v5, v10}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    throw v9
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    :catchall_2
    move-exception v9

    :try_start_c
    monitor-exit v10
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v9
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
.end method

.method public noteAppDied(I)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/server/HtcAppUsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v15

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/server/HtcAppUsageStatsService;->mActiveTimeMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v12

    move-object v8, v12

    array-length v13, v8

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v13, :cond_1

    aget-object v14, v8, v9

    move-object v0, v14

    check-cast v0, Ljava/lang/Integer;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/server/HtcAppUsageStatsService;->mActiveTimeMap:Ljava/util/HashMap;

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/server/HtcAppUsageStatsService$ActiveTimeInfo;

    iget v1, v10, Lcom/htc/server/HtcAppUsageStatsService$ActiveTimeInfo;->pid:I

    move/from16 v0, p1

    if-ne v0, v1, :cond_0

    iget-object v2, v10, Lcom/htc/server/HtcAppUsageStatsService$ActiveTimeInfo;->activityName:Ljava/lang/String;

    iget-object v3, v10, Lcom/htc/server/HtcAppUsageStatsService$ActiveTimeInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, v10, Lcom/htc/server/HtcAppUsageStatsService$ActiveTimeInfo;->resumeTime:J

    sub-long/2addr v4, v6

    iget-boolean v6, v10, Lcom/htc/server/HtcAppUsageStatsService$ActiveTimeInfo;->isActivityGroup:Z

    iget-boolean v7, v10, Lcom/htc/server/HtcAppUsageStatsService$ActiveTimeInfo;->cnt_tag:Z

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/htc/server/HtcAppUsageStatsService;->addULog(Ljava/lang/String;Ljava/lang/String;JZZ)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/server/HtcAppUsageStatsService;->mActiveTimeMap:Ljava/util/HashMap;

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v15

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notePackageAdded(Ljava/lang/String;)V
    .locals 20

    if-eqz p1, :cond_3

    const/4 v7, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcAppUsageStatsService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_0

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x80

    move/from16 v18, v0

    if-eqz v18, :cond_3

    :cond_0
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    new-instance v10, Landroid/content/res/Configuration;

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    new-instance v9, Landroid/content/res/Configuration;

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    sget-object v18, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v18

    iput-object v0, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v18, 0x0

    :try_start_1
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->labelRes:I

    move/from16 v18, v0

    if-eqz v18, :cond_5

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->labelRes:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    :goto_0
    const/16 v18, 0x0

    :try_start_2
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v17

    const-string v18, "system_server"

    invoke-virtual/range {v17 .. v18}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v18

    const-string v19, "launcher_downloaded"

    invoke-interface/range {v18 .. v19}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v18

    const-string v19, "package"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v18

    const-string v19, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v7}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    sget-boolean v18, Lcom/htc/server/HtcAppUsageStatsService;->sEnableC2DMLogInfo:Z

    if-eqz v18, :cond_2

    const-string v6, "0"

    const-string v18, "package"

    invoke-static/range {v18 .. v18}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/PackageManagerService;

    if-eqz v15, :cond_1

    const/16 v18, 0x1000

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    if-eqz v14, :cond_1

    iget-object v12, v14, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v12, :cond_1

    move-object v4, v12

    array-length v8, v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v8, :cond_1

    aget-object v13, v4, v5

    if-eqz v13, :cond_6

    const-string v18, "com.google.android.c2dm.permission.RECEIVE"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    const-string v6, "1"

    :cond_1
    const-string v18, "C2DM"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    :cond_2
    invoke-static/range {v17 .. v17}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    invoke-virtual/range {v17 .. v17}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_2
    sget-boolean v18, Lcom/htc/server/HtcAppUsageStatsService;->VZW_APPWIFIOFFLOAD:Z

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcAppUsageStatsService;->mAppWifiOffload:Lcom/htc/server/HtcAppWifiOffload;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/HtcAppUsageStatsService;->mAppWifiOffload:Lcom/htc/server/HtcAppWifiOffload;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/server/HtcAppWifiOffload;->notePackageChanged()V

    :cond_4
    return-void

    :cond_5
    :try_start_3
    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v7

    goto/16 :goto_0

    :catchall_0
    move-exception v18

    const/16 v19, 0x0

    :try_start_4
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    throw v18
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v18

    goto :goto_2

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public notePackageRemoved(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v3, p0, Lcom/htc/server/HtcAppUsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/htc/server/HtcAppUsageStatsService;->mAppMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/htc/server/HtcAppUsageStatsService;->mAppMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/server/HtcAppUsageStatsService;->mAppMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v2, p0, Lcom/htc/server/HtcAppUsageStatsService;->mAppMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/htc/server/HtcAppUsageStatsService;->writeStatsToFileSLOCK(Z)V

    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    :try_start_1
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v1

    const-string v2, "system_server"

    invoke-virtual {v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v2

    const-string v3, "app_uninstalled"

    invoke-interface {v2, v3}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v2

    const-string v3, "package"

    invoke-interface {v2, v3, p1}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v2

    const-string v3, "name"

    invoke-interface {v2, v3, p2}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    invoke-static {v1}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    invoke-virtual {v1}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_0
    sget-boolean v2, Lcom/htc/server/HtcAppUsageStatsService;->VZW_APPWIFIOFFLOAD:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/server/HtcAppUsageStatsService;->mAppWifiOffload:Lcom/htc/server/HtcAppWifiOffload;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/server/HtcAppUsageStatsService;->mAppWifiOffload:Lcom/htc/server/HtcAppWifiOffload;

    invoke-virtual {v2}, Lcom/htc/server/HtcAppWifiOffload;->notePackageChanged()V

    :cond_3
    return-void

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public notePauseActivity(ILjava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v8, p0, Lcom/htc/server/HtcAppUsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsService;->mActiveTimeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsService;->mActiveTimeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/server/HtcAppUsageStatsService$ActiveTimeInfo;

    iget-object v1, v7, Lcom/htc/server/HtcAppUsageStatsService$ActiveTimeInfo;->activityName:Ljava/lang/String;

    iget-object v2, v7, Lcom/htc/server/HtcAppUsageStatsService$ActiveTimeInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, v7, Lcom/htc/server/HtcAppUsageStatsService$ActiveTimeInfo;->resumeTime:J

    sub-long/2addr v3, v5

    iget-boolean v5, v7, Lcom/htc/server/HtcAppUsageStatsService$ActiveTimeInfo;->isActivityGroup:Z

    iget-boolean v6, v7, Lcom/htc/server/HtcAppUsageStatsService$ActiveTimeInfo;->cnt_tag:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/server/HtcAppUsageStatsService;->addULog(Ljava/lang/String;Ljava/lang/String;JZZ)V

    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsService;->mActiveTimeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteRecentTaskChange(Lcom/android/server/am/HtcWrapTaskRecord;)V
    .locals 9

    iget-object v6, p0, Lcom/htc/server/HtcAppUsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v5, p1, Lcom/android/server/am/HtcWrapTaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/htc/server/HtcAppUsageStatsService;->getAppLabel(Lcom/android/server/am/HtcWrapTaskRecord;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    iget-object v5, p0, Lcom/htc/server/HtcAppUsageStatsService;->mAppMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/htc/server/HtcAppUsageStatsService;->mAppMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/HtcAppUsageStats;

    iget v5, v4, Lcom/android/internal/os/HtcAppUsageStats;->launchCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/android/internal/os/HtcAppUsageStats;->launchCount:I

    invoke-direct {p0, p1}, Lcom/htc/server/HtcAppUsageStatsService;->getRootActivity(Lcom/android/server/am/HtcWrapTaskRecord;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/os/HtcAppUsageStats;->lastRootActivity:Ljava/lang/String;

    :goto_0
    iget-object v5, p0, Lcom/htc/server/HtcAppUsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/htc/server/HtcAppUsageStatsService;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/htc/server/HtcAppUsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    iget-boolean v5, p0, Lcom/htc/server/HtcAppUsageStatsService;->mRedecideRootActivity:Z

    if-nez v5, :cond_3

    invoke-direct {p0, v2, v0}, Lcom/htc/server/HtcAppUsageStatsService;->notifyAllObserver(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_1
    :try_start_3
    new-instance v3, Lcom/android/internal/os/HtcAppUsageStats;

    const/4 v5, 0x1

    invoke-direct {p0, p1}, Lcom/htc/server/HtcAppUsageStatsService;->getRootActivity(Lcom/android/server/am/HtcWrapTaskRecord;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v2, v0, v5, v7}, Lcom/android/internal/os/HtcAppUsageStats;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v5

    goto :goto_1

    :cond_2
    new-instance v3, Lcom/android/internal/os/HtcAppUsageStats;

    const/4 v5, 0x1

    invoke-direct {p0, p1}, Lcom/htc/server/HtcAppUsageStatsService;->getRootActivity(Lcom/android/server/am/HtcWrapTaskRecord;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v2, v0, v5, v7}, Lcom/android/internal/os/HtcAppUsageStats;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/htc/server/HtcAppUsageStatsService;->mAppMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    :cond_3
    :try_start_5
    iput-object v0, p0, Lcom/htc/server/HtcAppUsageStatsService;->mPendingTask:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/server/HtcAppUsageStatsService;->mPendingPackage:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1
.end method

.method public noteResumeActivity(ILjava/lang/String;ZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/htc/server/HtcAppUsageStatsService$ActiveTimeInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/server/HtcAppUsageStatsService$ActiveTimeInfo;-><init>(Lcom/htc/server/HtcAppUsageStatsService;Lcom/htc/server/HtcAppUsageStatsService$1;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iput v1, v0, Lcom/htc/server/HtcAppUsageStatsService$ActiveTimeInfo;->pid:I

    iput-object p2, v0, Lcom/htc/server/HtcAppUsageStatsService$ActiveTimeInfo;->activityName:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/htc/server/HtcAppUsageStatsService$ActiveTimeInfo;->resumeTime:J

    iput-boolean p3, v0, Lcom/htc/server/HtcAppUsageStatsService$ActiveTimeInfo;->isActivityGroup:Z

    iput-boolean p4, v0, Lcom/htc/server/HtcAppUsageStatsService$ActiveTimeInfo;->cnt_tag:Z

    iget-object v2, p0, Lcom/htc/server/HtcAppUsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/htc/server/HtcAppUsageStatsService;->mActiveTimeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteResumeActivity_pkg(ILjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/htc/server/HtcAppUsageStatsService;->noteResumeActivity_pkg_frag(ILjava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)V

    return-void
.end method

.method public noteResumeActivity_pkg_frag(ILjava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v4, "user"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p6, :cond_3

    const-string v3, "fragmentlist"

    invoke-virtual {p6, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "com.android.settings.framework.activity.aboutphone.HtcAboutPhoneSoftwareInformation"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.htc.DEVICE_INFO_LogSWInfoTime"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/htc/server/HtcAppUsageStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    new-instance v2, Lcom/htc/server/HtcAppUsageStatsService$ActiveTimeInfo;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/htc/server/HtcAppUsageStatsService$ActiveTimeInfo;-><init>(Lcom/htc/server/HtcAppUsageStatsService;Lcom/htc/server/HtcAppUsageStatsService$1;)V

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    iput v3, v2, Lcom/htc/server/HtcAppUsageStatsService$ActiveTimeInfo;->pid:I

    iput-object p2, v2, Lcom/htc/server/HtcAppUsageStatsService$ActiveTimeInfo;->activityName:Ljava/lang/String;

    iput-object p3, v2, Lcom/htc/server/HtcAppUsageStatsService$ActiveTimeInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/htc/server/HtcAppUsageStatsService$ActiveTimeInfo;->resumeTime:J

    iput-boolean p4, v2, Lcom/htc/server/HtcAppUsageStatsService$ActiveTimeInfo;->isActivityGroup:Z

    iput-boolean p5, v2, Lcom/htc/server/HtcAppUsageStatsService$ActiveTimeInfo;->cnt_tag:Z

    iget-object v4, p0, Lcom/htc/server/HtcAppUsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/htc/server/HtcAppUsageStatsService;->mActiveTimeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-boolean v3, Lcom/htc/server/HtcAppUsageStatsService;->VZW_APPWIFIOFFLOAD:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/server/HtcAppUsageStatsService;->mAppWifiOffload:Lcom/htc/server/HtcAppWifiOffload;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/server/HtcAppUsageStatsService;->mAppWifiOffload:Lcom/htc/server/HtcAppWifiOffload;

    invoke-virtual {v3, p3, p2}, Lcom/htc/server/HtcAppWifiOffload;->noteActivityResume(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v3, "com.android.settings.framework.activity.aboutphone.HtcAboutPhoneHardwareInformation"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.htc.DEVICE_INFO_LogHWInfoTime"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/htc/server/HtcAppUsageStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_0

    const-string v3, "com.android.settings.framework.activity.aboutphone.HtcAboutPhoneSoftwareInformation"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.htc.DEVICE_INFO_LogSWInfoTime"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/htc/server/HtcAppUsageStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string v3, "com.android.settings.framework.activity.aboutphone.HtcAboutPhoneHardwareInformation"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.htc.DEVICE_INFO_LogHWInfoTime"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/htc/server/HtcAppUsageStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public publish(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/htc/server/HtcAppUsageStatsService;->mContext:Landroid/content/Context;

    const-string v0, "HtcAppUsageStatsService"

    invoke-virtual {p0}, Lcom/htc/server/HtcAppUsageStatsService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public registerAppLaunchObserver(Lcom/android/internal/os/IHtcAppLaunchObserver;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "You must pass a valid observer"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v2, p0, Lcom/htc/server/HtcAppUsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/htc/server/HtcAppUsageStatsService;->mObserverMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/internal/os/IHtcAppLaunchObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/server/HtcAppUsageStatsService;->mObserverMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/internal/os/IHtcAppLaunchObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Lcom/htc/server/HtcAppUsageStatsService$HtcAppDeathRecipient;

    invoke-interface {p1}, Lcom/android/internal/os/IHtcAppLaunchObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/server/HtcAppUsageStatsService$HtcAppDeathRecipient;-><init>(Lcom/htc/server/HtcAppUsageStatsService;Landroid/os/IBinder;)V

    invoke-interface {p1}, Lcom/android/internal/os/IHtcAppLaunchObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v1, p0, Lcom/htc/server/HtcAppUsageStatsService;->mRecipientMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/internal/os/IHtcAppLaunchObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setMayRedecideRootActivity(Z)V
    .locals 3

    iget-object v1, p0, Lcom/htc/server/HtcAppUsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/server/HtcAppUsageStatsService;->mRedecideRootActivity:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsService;->mPendingTask:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsService;->mPendingPackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/server/HtcAppUsageStatsService;->mPendingPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/server/HtcAppUsageStatsService;->mPendingTask:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/htc/server/HtcAppUsageStatsService;->notifyAllObserver(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/server/HtcAppUsageStatsService;->mPendingTask:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/server/HtcAppUsageStatsService;->mPendingPackage:Ljava/lang/String;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean p1, p0, Lcom/htc/server/HtcAppUsageStatsService;->mRedecideRootActivity:Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public shutdown()V
    .locals 2

    iget-object v1, p0, Lcom/htc/server/HtcAppUsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/htc/server/HtcAppUsageStatsService;->writeStatsToFileSLOCK(Z)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public systemReady()V
    .locals 2

    const/4 v1, 0x1

    sget-boolean v0, Lcom/htc/server/HtcAppUsageStatsService;->VZW_APPWIFIOFFLOAD:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/server/HtcAppUsageStatsService;->mbSystemReady:Z

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/htc/server/HtcAppUsageStatsService;->mbSystemReady:Z

    new-instance v0, Lcom/htc/server/HtcAppWifiOffload;

    iget-object v1, p0, Lcom/htc/server/HtcAppUsageStatsService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/server/HtcAppWifiOffload;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/server/HtcAppUsageStatsService;->mAppWifiOffload:Lcom/htc/server/HtcAppWifiOffload;

    goto :goto_0
.end method

.method public unregisterAppLaunchObserver(Lcom/android/internal/os/IHtcAppLaunchObserver;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "You must pass a valid observer"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v2, p0, Lcom/htc/server/HtcAppUsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/htc/server/HtcAppUsageStatsService;->mObserverMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/internal/os/IHtcAppLaunchObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/htc/server/HtcAppUsageStatsService;->mRecipientMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/internal/os/IHtcAppLaunchObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/server/HtcAppUsageStatsService;->mRecipientMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/internal/os/IHtcAppLaunchObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/server/HtcAppUsageStatsService$HtcAppDeathRecipient;

    invoke-interface {p1}, Lcom/android/internal/os/IHtcAppLaunchObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v1, p0, Lcom/htc/server/HtcAppUsageStatsService;->mRecipientMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/internal/os/IHtcAppLaunchObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method
