.class public Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;
.super Ljava/lang/Object;
.source "RunAppUpdateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;,
        Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$DownloadInfo;,
        Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$ApkInstallObserver;,
        Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$ApkDownloadCompletedReceiver;
    }
.end annotation


# static fields
.field public static final APPUPDATE_TIMESTAMP:Ljava/lang/String; = "appupdate_timestamp"

.field private static final CACHE_SIZE_SCALE:F = 1.5f

.field private static final DM_NOTIFICATION_CLASS:Ljava/lang/String; = null

.field private static final DM_NOTIFICATION_PACKAGE:Ljava/lang/String; = "com.android.providers.htcCheckin"

.field private static final FAIL_CODE_CACHE_FULL:I = 0xa

.field private static final FAIL_CODE_DOWNLOAD:I = 0xb

.field private static final FAIL_CODE_FILE_CORRUPT:I = 0x14

.field private static final FAIL_CODE_INSTALL:I = 0x15

.field private static final FAIL_CODE_STORAGE_FULL:I = 0x1e

.field private static final FAIL_TYPE_DOWNLOAD:Ljava/lang/String; = "download"

.field private static final FAIL_TYPE_FILE:Ljava/lang/String; = "file"

.field private static final FAIL_TYPE_INSTALL:Ljava/lang/String; = "install"

.field private static final INTENT_APPUPDATE_DL_DISCARD:Ljava/lang/String; = "android.server.checkin.APP_DOWNLOAD_DISCARD"

.field private static final INTENT_APPUPDATE_DL_TRIGGERED:Ljava/lang/String; = "android.server.checkin.APP_DOWNLOAD_TRIGGERED"

.field private static final INTENT_APPUPDATE_FAIL:Ljava/lang/String; = "android.server.checkin.APPUPDATE_FAIL"

.field private static final INTENT_APPUPDATE_SUCCESS:Ljava/lang/String; = "android.server.checkin.APPUPDATE_SUCCESS"

.field private static final INTENT_APP_CANCEL:Ljava/lang/String; = "android.server.checkin.APP_CANCEL"

.field private static final INTENT_APP_NOTIFY:Ljava/lang/String; = "android.server.checkin.APP_NOTIFY"

.field private static final INTENT_APP_NOTIFY_DLPRGS:Ljava/lang/String; = "android.server.checkin.APP_NOTIFY_DLPROGRESS"

.field private static final LOCAL_LOGV:Z = false

.field private static final PRITITION_CACHE:Ljava/lang/String; = "cache"

.field private static final PRITITION_DATA:Ljava/lang/String; = "data"

.field private static final QUERY_ARGS_DELETE_APK_IN_DL:[Ljava/lang/String; = null

.field private static final QUERY_DL_TITLE:[Ljava/lang/String; = null

.field private static final QUERY_PROJECTION:[Ljava/lang/String; = null

.field private static final QUERY_WHERE_DELETE_APK_IN_DL:Ljava/lang/String; = "notificationpackage=? AND notificationclass=?"

.field private static final QUERY_WHERE_PACKAGENAME:Ljava/lang/String; = "packageName=?"

.field private static final QUERY_WHERE_SOURCE:Ljava/lang/String; = "source=?"

.field private static final Query_APInstallStatus:[Ljava/lang/String; = null

.field private static final Query_FindNextApk:[Ljava/lang/String; = null

.field private static final Query_SELECT_APKSize:[Ljava/lang/String; = null

.field private static final Query_SELECT_InstallType:[Ljava/lang/String; = null

.field private static final Query_SELECT_Source:[Ljava/lang/String; = null

.field static final STA_NEW:Ljava/lang/String; = "new"

.field static final STA_UPDATE:Ljava/lang/String; = "update"

.field private static final TABLE_APPUPDATE:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "FOTA.AppUpdate.Run"

.field private static final UPDATER_PACKAGE_NAME:Ljava/lang/String; = "com.android.updater"

.field private static final UPDATE_STATUS_FINISH:Ljava/lang/String; = "1"

.field private static final UPDATE_STATUS_NOT_FINISH:Ljava/lang/String; = "0"

.field private static final UPDATE_WHERE_FIND_NEXT_PROPERAPK:Ljava/lang/String; = "finished=?"

.field private static final UPDATE_WHERE_UPDATE_FINISHED:Ljava/lang/String; = "packageName=?"

.field private static final URI_APPUPDATE:Landroid/net/Uri;

.field private static bIndividualApu:Z

.field private static jobRunning:Z

.field private static final lockThread:Ljava/lang/Object;

.field private static mContext:Landroid/content/Context;

.field private static mDownLoadTitle:Ljava/lang/String;

.field private static mInstallableAPKNo:I

.field private static mIsWiFiOnly:Z

.field private static mTargetPackage:Ljava/lang/String;

.field private static mUpdateProgress:Ljava/lang/String;

.field private static mUpdateTypeMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final INTENT_APP_RUNCANCEL:Ljava/lang/String;

.field private final INTENT_APP_RUNUPDATE:Ljava/lang/String;

.field public final PERMISSION:Ljava/lang/String;

.field final SEPATATER:Ljava/lang/String;

.field private mDownloadDiscardReceiver:Landroid/content/BroadcastReceiver;

.field private mRunUpdateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    const-string v0, "content://android.server.htcCheckin/"

    const-string v1, "appupdate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->TABLE_APPUPDATE:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->lockThread:Ljava/lang/Object;

    .line 70
    sput-boolean v2, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->jobRunning:Z

    .line 73
    sput-boolean v3, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mIsWiFiOnly:Z

    .line 74
    sput v2, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mInstallableAPKNo:I

    .line 75
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mDownLoadTitle:Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mUpdateProgress:Ljava/lang/String;

    .line 100
    const-class v0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$ApkDownloadCompletedReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->DM_NOTIFICATION_CLASS:Ljava/lang/String;

    .line 102
    sget-object v0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->TABLE_APPUPDATE:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->URI_APPUPDATE:Landroid/net/Uri;

    .line 103
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "entity"

    aput-object v1, v0, v3

    const-string v1, "status"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v5

    const-string v1, "lastmod"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->QUERY_PROJECTION:[Ljava/lang/String;

    .line 107
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "title"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->QUERY_DL_TITLE:[Ljava/lang/String;

    .line 112
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "apkOrder"

    aput-object v1, v0, v2

    const-string v1, "source"

    aput-object v1, v0, v3

    const-string v1, "appSize"

    aput-object v1, v0, v4

    const-string v1, "timestamp"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->Query_FindNextApk:[Ljava/lang/String;

    .line 116
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "apkId"

    aput-object v1, v0, v2

    const-string v1, "packageName"

    aput-object v1, v0, v3

    const-string v1, "versionCode"

    aput-object v1, v0, v4

    const-string v1, "finished"

    aput-object v1, v0, v5

    const-string v1, "apkOrder"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->Query_APInstallStatus:[Ljava/lang/String;

    .line 120
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "installType"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->Query_SELECT_InstallType:[Ljava/lang/String;

    .line 122
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "source"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->Query_SELECT_Source:[Ljava/lang/String;

    .line 124
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "appSize"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->Query_SELECT_APKSize:[Ljava/lang/String;

    .line 142
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.android.providers.htcCheckin"

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->DM_NOTIFICATION_CLASS:Ljava/lang/String;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->QUERY_ARGS_DELETE_APK_IN_DL:[Ljava/lang/String;

    .line 145
    sput-boolean v2, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->bIndividualApu:Z

    .line 146
    const-string v0, ""

    sput-object v0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mTargetPackage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 148
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v2, "android.permission.HTC_APP_UPDATE"

    iput-object v2, p0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->PERMISSION:Ljava/lang/String;

    .line 50
    const-string v2, "android.server.checkin.APP_RUNUPDATE"

    iput-object v2, p0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->INTENT_APP_RUNUPDATE:Ljava/lang/String;

    .line 51
    const-string v2, "android.server.checkin.APP_RUNCANCEL"

    iput-object v2, p0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->INTENT_APP_RUNCANCEL:Ljava/lang/String;

    .line 63
    const-string v2, ","

    iput-object v2, p0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->SEPATATER:Ljava/lang/String;

    .line 171
    new-instance v2, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$1;

    invoke-direct {v2, p0}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$1;-><init>(Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;)V

    iput-object v2, p0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mRunUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 241
    new-instance v2, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$2;

    invoke-direct {v2, p0}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$2;-><init>(Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;)V

    iput-object v2, p0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mDownloadDiscardReceiver:Landroid/content/BroadcastReceiver;

    .line 149
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.server.checkin.APP_RUNUPDATE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 150
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.server.checkin.APP_RUNCANCEL"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    const-string v2, "android.server.checkin.APP_CANCEL"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    iget-object v2, p0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mRunUpdateReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "android.permission.HTC_APP_UPDATE"

    invoke-virtual {p1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 153
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.server.checkin.APP_DOWNLOAD_DISCARD"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 154
    .local v1, filter_DL:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mDownloadDiscardReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "android.permission.HTC_APP_UPDATE"

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 155
    sput-object p1, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mContext:Landroid/content/Context;

    .line 156
    return-void
.end method

.method private DumpArrayList(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 333
    .local p1, pAry:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 334
    const-string v2, "FOTA.AppUpdate.Run"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    :cond_0
    return-void
.end method

.method private DumpMap(Ljava/util/TreeMap;)V
    .locals 6
    .parameter "map"

    .prologue
    .line 407
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/TreeMap;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 408
    :cond_0
    const-string v3, "FOTA.AppUpdate.Run"

    const-string v4, "map is null or size is 0!"

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :cond_1
    return-void

    .line 411
    :cond_2
    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 412
    .local v2, set:Ljava/util/Set;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 413
    .local v1, itr:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 414
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 415
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/providers/htcCheckin/apkInfo;>;"
    const-string v4, "FOTA.AppUpdate.Run"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", Value:\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/htcCheckin/apkInfo;

    invoke-virtual {v3}, Lcom/android/providers/htcCheckin/apkInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v3}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mRunUpdateReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mInstallableAPKNo:I

    return v0
.end method

.method static synthetic access$1002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    sput p0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mInstallableAPKNo:I

    return p0
.end method

.method static synthetic access$1100(Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;Lorg/json/JSONObject;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->extractInstallableApkInfo(Lorg/json/JSONObject;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200()Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$DownloadInfo;
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->findNextProperAPK()Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$DownloadInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$DownloadInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-static {p0}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->downloadApk(Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$DownloadInfo;)V

    return-void
.end method

.method static synthetic access$1500()V
    .locals 0

    .prologue
    .line 45
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->saveSmallestTimestampOfUninstallAPK()V

    return-void
.end method

.method static synthetic access$1600(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-static {p0, p1}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->collectAPInstallStatus(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700()Z
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->bIndividualApu:Z

    return v0
.end method

.method static synthetic access$1800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mTargetPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900()Landroid/content/Context;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1902(Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    sput-object p0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mDownloadDiscardReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$2000()V
    .locals 0

    .prologue
    .line 45
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->removeDLMgrRecord()V

    return-void
.end method

.method static synthetic access$2500(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-static {p0, p1}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->restoreDatafromDownloadMgr(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$2600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->QUERY_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-static {p0}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->deleteDownloadedFile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Ljava/lang/String;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 45
    invoke-static {p0}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->getAPKSizeBySource(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2900(Ljava/lang/String;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 45
    invoke-static {p0}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->checkPartitionFreeSize(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->lockThread:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mUpdateProgress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-static {p0}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->getInstallType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-static {p0, p1}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->installAPK(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$3300(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-static {p0}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->getSourceByPackagName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-static {p0}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->markTaskAsFinished(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500()V
    .locals 0

    .prologue
    .line 45
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->saveBiggestTimestampOfInstallAPK()V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->jobRunning:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    sput-boolean p0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->jobRunning:Z

    return p0
.end method

.method static synthetic access$500()V
    .locals 0

    .prologue
    .line 45
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->removeAllAppRecord()V

    return-void
.end method

.method static synthetic access$600()Ljava/util/TreeMap;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mUpdateTypeMap:Ljava/util/TreeMap;

    return-object v0
.end method

.method static synthetic access$602(Ljava/util/TreeMap;)Ljava/util/TreeMap;
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    sput-object p0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mUpdateTypeMap:Ljava/util/TreeMap;

    return-object p0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mDownLoadTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    sput-object p0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mDownLoadTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->DumpArrayList(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$902(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    sput-boolean p0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mIsWiFiOnly:Z

    return p0
.end method

.method private static checkPartitionFreeSize(Ljava/lang/String;)J
    .locals 13
    .parameter "partition"

    .prologue
    .line 290
    const-wide/16 v4, 0x0

    .line 292
    .local v4, nFreeSize:J
    const/4 v9, 0x0

    .line 294
    .local v9, objPartitionFile:Ljava/io/File;
    :try_start_0
    const-string v10, "data"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 295
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v9

    .line 303
    :goto_0
    const-string v10, "FOTA.AppUpdate.Run"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Partition:["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]. Partition Path:["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    new-instance v8, Landroid/os/StatFs;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 305
    .local v8, objExtCacheStat:Landroid/os/StatFs;
    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v10

    int-to-long v2, v10

    .line 306
    .local v2, nAvailBlockNo:J
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    .line 307
    .local v0, blockSize:I
    int-to-long v10, v0

    mul-long v4, v2, v10

    .line 321
    const-string v10, "FOTA.AppUpdate.Run"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Available BlockNo:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", BlockSize:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " bytes, freeSize:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " bytes"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0           #blockSize:I
    .end local v2           #nAvailBlockNo:J
    .end local v8           #objExtCacheStat:Landroid/os/StatFs;
    :goto_1
    move-wide v6, v4

    .line 326
    .end local v4           #nFreeSize:J
    .local v6, nFreeSize:J
    :goto_2
    return-wide v6

    .line 296
    .end local v6           #nFreeSize:J
    .restart local v4       #nFreeSize:J
    :cond_0
    const-string v10, "cache"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 297
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v9

    goto/16 :goto_0

    .line 299
    :cond_1
    const-string v10, "FOTA.AppUpdate.Run"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown partition name:["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v6, v4

    .line 300
    .end local v4           #nFreeSize:J
    .restart local v6       #nFreeSize:J
    goto :goto_2

    .line 322
    .end local v6           #nFreeSize:J
    .restart local v4       #nFreeSize:J
    :catch_0
    move-exception v1

    .line 323
    .local v1, e:Ljava/lang/Exception;
    const-string v10, "FOTA.AppUpdate.Run"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "checkPartitionFreeSize(). error:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-wide/16 v4, 0x0

    goto :goto_1
.end method

.method private static collectAPInstallStatus(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 30
    .parameter "pErrorCode"
    .parameter "pErrorMsg"

    .prologue
    .line 426
    const-string v3, "FOTA.AppUpdate.Run"

    const-string v4, "Start to collectAPInstallStatus!"

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .local v14, objAPStatus:Lorg/json/JSONObject;
    const/16 v19, 0x0

    .local v19, objJsonTemp:Lorg/json/JSONObject;
    const/4 v15, 0x0

    .line 429
    .local v15, objFailedJson:Lorg/json/JSONObject;
    new-instance v21, Lorg/json/JSONObject;

    invoke-direct/range {v21 .. v21}, Lorg/json/JSONObject;-><init>()V

    .line 430
    .local v21, objUploadJson:Lorg/json/JSONObject;
    const/16 v17, 0x0

    .line 431
    .local v17, objInstalledJsonAry:Lorg/json/JSONArray;
    const/16 v27, 0x0

    .line 432
    .local v27, strOrderTemp:Ljava/lang/String;
    const/16 v23, 0x0

    .local v23, strFailedApkID:Ljava/lang/String;
    const/16 v24, 0x0

    .local v24, strFailedPackageName:Ljava/lang/String;
    const/16 v25, 0x0

    .line 433
    .local v25, strFailedVersionCode:Ljava/lang/String;
    const v12, 0x7fffffff

    .local v12, nOrder:I
    const v13, 0x7fffffff

    .line 434
    .local v13, nOrderTemp:I
    const/4 v11, 0x0

    .line 436
    .local v11, nInstallAPKCount:I
    const/4 v8, 0x0

    .line 440
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v3, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 442
    .local v2, cr:Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->URI_APPUPDATE:Landroid/net/Uri;

    sget-object v4, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->Query_APInstallStatus:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    move-object/from16 v18, v17

    .end local v17           #objInstalledJsonAry:Lorg/json/JSONArray;
    .local v18, objInstalledJsonAry:Lorg/json/JSONArray;
    move-object/from16 v16, v15

    .end local v15           #objFailedJson:Lorg/json/JSONObject;
    .local v16, objFailedJson:Lorg/json/JSONObject;
    move-object/from16 v20, v19

    .line 446
    .end local v19           #objJsonTemp:Lorg/json/JSONObject;
    .local v20, objJsonTemp:Lorg/json/JSONObject;
    :goto_0
    if-eqz v8, :cond_3

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 447
    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 448
    .local v22, strApkID:Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 449
    .local v28, strPackageName:Ljava/lang/String;
    const/4 v3, 0x2

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 450
    .local v29, strVersionCode:Ljava/lang/String;
    const/4 v3, 0x3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 451
    .local v26, strFinished:Ljava/lang/String;
    const/4 v3, 0x4

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 453
    const-string v3, "1"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 454
    const-string v3, "FOTA.AppUpdate.Run"

    const-string v4, "[Test] update succeed!"

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    if-nez v18, :cond_c

    new-instance v17, Lorg/json/JSONArray;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONArray;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 456
    .end local v18           #objInstalledJsonAry:Lorg/json/JSONArray;
    .restart local v17       #objInstalledJsonAry:Lorg/json/JSONArray;
    :goto_1
    :try_start_2
    new-instance v19, Lorg/json/JSONObject;

    invoke-direct/range {v19 .. v19}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 457
    .end local v20           #objJsonTemp:Lorg/json/JSONObject;
    .restart local v19       #objJsonTemp:Lorg/json/JSONObject;
    :try_start_3
    const-string v3, "apkId"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 461
    const-string v3, "className"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 464
    const-string v3, "versionCode"

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 465
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 466
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v18, v17

    .end local v17           #objInstalledJsonAry:Lorg/json/JSONArray;
    .restart local v18       #objInstalledJsonAry:Lorg/json/JSONArray;
    move-object/from16 v20, v19

    .end local v19           #objJsonTemp:Lorg/json/JSONObject;
    .restart local v20       #objJsonTemp:Lorg/json/JSONObject;
    goto :goto_0

    .line 470
    :cond_0
    if-nez p0, :cond_2

    if-nez p1, :cond_2

    .line 471
    :try_start_4
    const-string v3, "FOTA.AppUpdate.Run"

    const-string v4, "In collectAPInstallStatus(). It should be user discard mode."

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 514
    .end local v22           #strApkID:Ljava/lang/String;
    .end local v26           #strFinished:Ljava/lang/String;
    .end local v28           #strPackageName:Ljava/lang/String;
    .end local v29           #strVersionCode:Ljava/lang/String;
    .end local p0
    .end local p1
    :catch_0
    move-exception v9

    move-object/from16 v17, v18

    .end local v18           #objInstalledJsonAry:Lorg/json/JSONArray;
    .restart local v17       #objInstalledJsonAry:Lorg/json/JSONArray;
    move-object/from16 v15, v16

    .end local v16           #objFailedJson:Lorg/json/JSONObject;
    .restart local v15       #objFailedJson:Lorg/json/JSONObject;
    move-object/from16 v19, v20

    .line 515
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v20           #objJsonTemp:Lorg/json/JSONObject;
    .local v9, e:Ljava/lang/Exception;
    .restart local v19       #objJsonTemp:Lorg/json/JSONObject;
    :goto_2
    :try_start_5
    const-string v3, "FOTA.AppUpdate.Run"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in collectFailInfoinJsonobject. Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 517
    if-eqz v8, :cond_1

    .line 518
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 519
    const/4 v8, 0x0

    .line 521
    :cond_1
    const/4 v2, 0x0

    .line 524
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v2       #cr:Landroid/content/ContentResolver;
    :goto_3
    return-object v21

    .line 475
    .end local v15           #objFailedJson:Lorg/json/JSONObject;
    .end local v17           #objInstalledJsonAry:Lorg/json/JSONArray;
    .end local v19           #objJsonTemp:Lorg/json/JSONObject;
    .restart local v16       #objFailedJson:Lorg/json/JSONObject;
    .restart local v18       #objInstalledJsonAry:Lorg/json/JSONArray;
    .restart local v20       #objJsonTemp:Lorg/json/JSONObject;
    .restart local v22       #strApkID:Ljava/lang/String;
    .restart local v26       #strFinished:Ljava/lang/String;
    .restart local v28       #strPackageName:Ljava/lang/String;
    .restart local v29       #strVersionCode:Ljava/lang/String;
    .restart local p0
    .restart local p1
    :cond_2
    :try_start_6
    const-string v3, "FOTA.AppUpdate.Run"

    const-string v4, "Update not finished!"

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    if-nez v16, :cond_b

    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 477
    .end local v16           #objFailedJson:Lorg/json/JSONObject;
    .restart local v15       #objFailedJson:Lorg/json/JSONObject;
    :goto_4
    :try_start_7
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    move-result v13

    .line 478
    if-ge v13, v12, :cond_a

    .line 479
    move v12, v13

    .line 480
    move-object/from16 v23, v22

    .line 481
    move-object/from16 v24, v28

    .line 482
    move-object/from16 v25, v29

    move-object/from16 v16, v15

    .end local v15           #objFailedJson:Lorg/json/JSONObject;
    .restart local v16       #objFailedJson:Lorg/json/JSONObject;
    goto/16 :goto_0

    .line 487
    .end local v22           #strApkID:Ljava/lang/String;
    .end local v26           #strFinished:Ljava/lang/String;
    .end local v28           #strPackageName:Ljava/lang/String;
    .end local v29           #strVersionCode:Ljava/lang/String;
    :cond_3
    if-eqz v18, :cond_4

    .line 488
    :try_start_8
    const-string v3, "installed"

    move-object/from16 v0, v18

    invoke-virtual {v14, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 490
    :cond_4
    if-eqz v16, :cond_7

    .line 491
    const-string v3, "apkId"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 496
    const-string v3, "className"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 499
    const-string v3, "versionCode"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 500
    const-string v3, "errorCode"

    if-nez p0, :cond_5

    const-string p0, ""

    .end local p0
    :cond_5
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 501
    const-string v3, "errorMsg"

    if-nez p1, :cond_6

    const-string p1, ""

    .end local p1
    :cond_6
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 503
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 504
    .local v10, failJSONArray:Lorg/json/JSONArray;
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 505
    const-string v3, "FOTA.AppUpdate.Run"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get failed ap:["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v10, v5}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string v3, "failed"

    invoke-virtual {v14, v3, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 510
    .end local v10           #failJSONArray:Lorg/json/JSONArray;
    :cond_7
    const-string v3, "tag1"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 511
    const-string v3, "tag2"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 513
    const-string v3, "FOTA.AppUpdate.Run"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JSON Object in collectAPInstallStatus: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x4

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 517
    if-eqz v8, :cond_8

    .line 518
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 519
    const/4 v8, 0x0

    .line 521
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v17, v18

    .end local v18           #objInstalledJsonAry:Lorg/json/JSONArray;
    .restart local v17       #objInstalledJsonAry:Lorg/json/JSONArray;
    move-object/from16 v15, v16

    .end local v16           #objFailedJson:Lorg/json/JSONObject;
    .restart local v15       #objFailedJson:Lorg/json/JSONObject;
    move-object/from16 v19, v20

    .line 522
    .end local v20           #objJsonTemp:Lorg/json/JSONObject;
    .restart local v19       #objJsonTemp:Lorg/json/JSONObject;
    goto/16 :goto_3

    .line 517
    .end local v2           #cr:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v3

    :goto_5
    if-eqz v8, :cond_9

    .line 518
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 519
    const/4 v8, 0x0

    .line 521
    :cond_9
    const/4 v2, 0x0

    .restart local v2       #cr:Landroid/content/ContentResolver;
    throw v3

    .line 517
    .end local v15           #objFailedJson:Lorg/json/JSONObject;
    .end local v17           #objInstalledJsonAry:Lorg/json/JSONArray;
    .end local v19           #objJsonTemp:Lorg/json/JSONObject;
    .restart local v16       #objFailedJson:Lorg/json/JSONObject;
    .restart local v18       #objInstalledJsonAry:Lorg/json/JSONArray;
    .restart local v20       #objJsonTemp:Lorg/json/JSONObject;
    :catchall_1
    move-exception v3

    move-object/from16 v17, v18

    .end local v18           #objInstalledJsonAry:Lorg/json/JSONArray;
    .restart local v17       #objInstalledJsonAry:Lorg/json/JSONArray;
    move-object/from16 v15, v16

    .end local v16           #objFailedJson:Lorg/json/JSONObject;
    .restart local v15       #objFailedJson:Lorg/json/JSONObject;
    move-object/from16 v19, v20

    .end local v20           #objJsonTemp:Lorg/json/JSONObject;
    .restart local v19       #objJsonTemp:Lorg/json/JSONObject;
    goto :goto_5

    .end local v15           #objFailedJson:Lorg/json/JSONObject;
    .end local v19           #objJsonTemp:Lorg/json/JSONObject;
    .restart local v16       #objFailedJson:Lorg/json/JSONObject;
    .restart local v20       #objJsonTemp:Lorg/json/JSONObject;
    .restart local v22       #strApkID:Ljava/lang/String;
    .restart local v26       #strFinished:Ljava/lang/String;
    .restart local v28       #strPackageName:Ljava/lang/String;
    .restart local v29       #strVersionCode:Ljava/lang/String;
    .restart local p0
    .restart local p1
    :catchall_2
    move-exception v3

    move-object/from16 v15, v16

    .end local v16           #objFailedJson:Lorg/json/JSONObject;
    .restart local v15       #objFailedJson:Lorg/json/JSONObject;
    move-object/from16 v19, v20

    .end local v20           #objJsonTemp:Lorg/json/JSONObject;
    .restart local v19       #objJsonTemp:Lorg/json/JSONObject;
    goto :goto_5

    .end local v15           #objFailedJson:Lorg/json/JSONObject;
    .restart local v16       #objFailedJson:Lorg/json/JSONObject;
    :catchall_3
    move-exception v3

    move-object/from16 v15, v16

    .end local v16           #objFailedJson:Lorg/json/JSONObject;
    .restart local v15       #objFailedJson:Lorg/json/JSONObject;
    goto :goto_5

    .end local v17           #objInstalledJsonAry:Lorg/json/JSONArray;
    .end local v19           #objJsonTemp:Lorg/json/JSONObject;
    .restart local v18       #objInstalledJsonAry:Lorg/json/JSONArray;
    .restart local v20       #objJsonTemp:Lorg/json/JSONObject;
    :catchall_4
    move-exception v3

    move-object/from16 v17, v18

    .end local v18           #objInstalledJsonAry:Lorg/json/JSONArray;
    .restart local v17       #objInstalledJsonAry:Lorg/json/JSONArray;
    move-object/from16 v19, v20

    .end local v20           #objJsonTemp:Lorg/json/JSONObject;
    .restart local v19       #objJsonTemp:Lorg/json/JSONObject;
    goto :goto_5

    .line 514
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v22           #strApkID:Ljava/lang/String;
    .end local v26           #strFinished:Ljava/lang/String;
    .end local v28           #strPackageName:Ljava/lang/String;
    .end local v29           #strVersionCode:Ljava/lang/String;
    :catch_1
    move-exception v9

    goto/16 :goto_2

    .end local v15           #objFailedJson:Lorg/json/JSONObject;
    .end local v19           #objJsonTemp:Lorg/json/JSONObject;
    .restart local v2       #cr:Landroid/content/ContentResolver;
    .restart local v16       #objFailedJson:Lorg/json/JSONObject;
    .restart local v20       #objJsonTemp:Lorg/json/JSONObject;
    .restart local v22       #strApkID:Ljava/lang/String;
    .restart local v26       #strFinished:Ljava/lang/String;
    .restart local v28       #strPackageName:Ljava/lang/String;
    .restart local v29       #strVersionCode:Ljava/lang/String;
    :catch_2
    move-exception v9

    move-object/from16 v15, v16

    .end local v16           #objFailedJson:Lorg/json/JSONObject;
    .restart local v15       #objFailedJson:Lorg/json/JSONObject;
    move-object/from16 v19, v20

    .end local v20           #objJsonTemp:Lorg/json/JSONObject;
    .restart local v19       #objJsonTemp:Lorg/json/JSONObject;
    goto/16 :goto_2

    .end local v15           #objFailedJson:Lorg/json/JSONObject;
    .restart local v16       #objFailedJson:Lorg/json/JSONObject;
    :catch_3
    move-exception v9

    move-object/from16 v15, v16

    .end local v16           #objFailedJson:Lorg/json/JSONObject;
    .restart local v15       #objFailedJson:Lorg/json/JSONObject;
    goto/16 :goto_2

    .end local v17           #objInstalledJsonAry:Lorg/json/JSONArray;
    .end local v19           #objJsonTemp:Lorg/json/JSONObject;
    .restart local v18       #objInstalledJsonAry:Lorg/json/JSONArray;
    .restart local v20       #objJsonTemp:Lorg/json/JSONObject;
    :catch_4
    move-exception v9

    move-object/from16 v17, v18

    .end local v18           #objInstalledJsonAry:Lorg/json/JSONArray;
    .restart local v17       #objInstalledJsonAry:Lorg/json/JSONArray;
    move-object/from16 v19, v20

    .end local v20           #objJsonTemp:Lorg/json/JSONObject;
    .restart local v19       #objJsonTemp:Lorg/json/JSONObject;
    goto/16 :goto_2

    .end local v17           #objInstalledJsonAry:Lorg/json/JSONArray;
    .end local v19           #objJsonTemp:Lorg/json/JSONObject;
    .restart local v18       #objInstalledJsonAry:Lorg/json/JSONArray;
    .restart local v20       #objJsonTemp:Lorg/json/JSONObject;
    :cond_a
    move-object/from16 v16, v15

    .end local v15           #objFailedJson:Lorg/json/JSONObject;
    .restart local v16       #objFailedJson:Lorg/json/JSONObject;
    goto/16 :goto_0

    :cond_b
    move-object/from16 v15, v16

    .end local v16           #objFailedJson:Lorg/json/JSONObject;
    .restart local v15       #objFailedJson:Lorg/json/JSONObject;
    goto/16 :goto_4

    .end local v15           #objFailedJson:Lorg/json/JSONObject;
    .restart local v16       #objFailedJson:Lorg/json/JSONObject;
    :cond_c
    move-object/from16 v17, v18

    .end local v18           #objInstalledJsonAry:Lorg/json/JSONArray;
    .restart local v17       #objInstalledJsonAry:Lorg/json/JSONArray;
    goto/16 :goto_1
.end method

.method private static deleteAppupdateRecord(Ljava/lang/String;)V
    .locals 7
    .parameter "source"

    .prologue
    .line 1178
    const-string v4, "FOTA.AppUpdate.Run"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delete the installed APK file. Source: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 1180
    :cond_0
    const-string v4, "FOTA.AppUpdate.Run"

    const-string v5, "The content of source isn\'t correct."

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    :goto_0
    return-void

    .line 1186
    :cond_1
    :try_start_0
    sget-object v4, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1187
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v0, v4

    .line 1188
    .local v0, aryWhereArgs:[Ljava/lang/String;
    sget-object v4, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->URI_APPUPDATE:Landroid/net/Uri;

    const-string v5, "source=?"

    invoke-virtual {v1, v4, v5, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1189
    .local v3, nResult:I
    const/4 v0, 0x0

    .line 1190
    const-string v4, "FOTA.AppUpdate.Run"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The number of deleted rows:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1194
    const/4 v1, 0x0

    .line 1195
    goto :goto_0

    .line 1191
    .end local v0           #aryWhereArgs:[Ljava/lang/String;
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v3           #nResult:I
    :catch_0
    move-exception v2

    .line 1192
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    const-string v4, "FOTA.AppUpdate.Run"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in deleteInstalledApk(). Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1194
    const/4 v1, 0x0

    .line 1195
    .restart local v1       #cr:Landroid/content/ContentResolver;
    goto :goto_0

    .line 1194
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    const/4 v1, 0x0

    .restart local v1       #cr:Landroid/content/ContentResolver;
    throw v4
.end method

.method private static deleteDownloadedFile(Ljava/lang/String;)V
    .locals 5
    .parameter "strFilePath"

    .prologue
    .line 1380
    const-string v2, "FOTA.AppUpdate.Run"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteDownloadedFile(). File:["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1382
    :cond_0
    const-string v2, "FOTA.AppUpdate.Run"

    const-string v3, "File path is null or empty."

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    :goto_0
    return-void

    .line 1386
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1387
    .local v1, objFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1389
    .end local v1           #objFile:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1390
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FOTA.AppUpdate.Run"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in deleteDownloadedFile(). Err:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static downloadApk(Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$DownloadInfo;)V
    .locals 25
    .parameter "DLInfo"

    .prologue
    .line 534
    const-string v4, "cache"

    invoke-static {v4}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->checkPartitionFreeSize(Ljava/lang/String;)J

    move-result-wide v16

    .line 535
    .local v16, nFreeCacheSize:J
    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$DownloadInfo;->getApkSize()J
    invoke-static/range {p0 .. p0}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$DownloadInfo;->access$2100(Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$DownloadInfo;)J

    move-result-wide v4

    long-to-float v4, v4

    const/high16 v5, 0x3fc0

    mul-float/2addr v4, v5

    float-to-long v14, v4

    .line 536
    .local v14, nDesireFreeSize:J
    const-string v4, "FOTA.AppUpdate.Run"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FreeCacheSize:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]bytes. Needed CACHE Size:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]bytes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    cmp-long v4, v14, v16

    if-lez v4, :cond_1

    .line 538
    const-string v4, "FOTA.AppUpdate.Run"

    const-string v5, "No enough free cache space for download. Cancel the procedure"

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->saveSmallestTimestampOfUninstallAPK()V

    .line 542
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(In downloadApk) ApkSize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$DownloadInfo;->getApkSize()J
    invoke-static/range {p0 .. p0}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$DownloadInfo;->access$2100(Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$DownloadInfo;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". FreeCacheSize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 543
    .local v22, strErrMsg:Ljava/lang/String;
    new-instance v13, Landroid/content/Intent;

    const-string v4, "android.server.checkin.APPUPDATE_FAIL"

    invoke-direct {v13, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 544
    .local v13, failIntent:Landroid/content/Intent;
    const-string v4, "ErrCode"

    const/16 v5, 0xa

    invoke-virtual {v13, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 545
    const-string v4, "ErrType"

    const-string v5, "download"

    invoke-virtual {v13, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 546
    const-string v4, "ErrMessage"

    move-object/from16 v0, v22

    invoke-virtual {v13, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 548
    const-string v4, "ErrCode"

    const/4 v5, -0x1

    invoke-virtual {v13, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ErrMessage"

    invoke-virtual {v13, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->collectAPInstallStatus(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    .line 549
    .local v19, objAPStatus:Lorg/json/JSONObject;
    const-string v4, "apkinfo"

    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 550
    sget-boolean v4, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->bIndividualApu:Z

    if-eqz v4, :cond_0

    .line 551
    const-string v4, "package_name"

    sget-object v5, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mTargetPackage:Ljava/lang/String;

    invoke-virtual {v13, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 552
    :cond_0
    sget-object v4, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 554
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->removeAllAppRecord()V

    .line 637
    .end local v13           #failIntent:Landroid/content/Intent;
    .end local v19           #objAPStatus:Lorg/json/JSONObject;
    .end local v22           #strErrMsg:Ljava/lang/String;
    :goto_0
    return-void

    .line 558
    :cond_1
    sget-object v4, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 559
    .local v2, cr:Landroid/content/ContentResolver;
    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    .line 561
    .local v24, values:Landroid/content/ContentValues;
    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$DownloadInfo;->getSource()Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$DownloadInfo;->access$2200(Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$DownloadInfo;)Ljava/lang/String;

    move-result-object v20

    .line 562
    .local v20, source:Ljava/lang/String;
    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$DownloadInfo;->getOrder()I
    invoke-static/range {p0 .. p0}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$DownloadInfo;->access$2300(Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$DownloadInfo;)I

    move-result v18

    .line 563
    .local v18, nOrder:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mInstallableAPKNo:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mUpdateProgress:Ljava/lang/String;

    .line 564
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mDownLoadTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mUpdateProgress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 566
    .local v21, strDLTitle:Ljava/lang/String;
    sget-boolean v4, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mIsWiFiOnly:Z

    if-eqz v4, :cond_3

    .line 568
    const-string v4, "FOTA.AppUpdate.Run"

    const-string v5, "User selected to download APK by WIFI only."

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const-string v4, "restriction"

    const/16 v5, 0x11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 577
    :goto_1
    const-string v4, "otaupdate"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 578
    const-string v4, "uri"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    const-string v4, "entity"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const-string v4, "notificationextras"

    const-string v5, "skipcheckmimetype"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const-string v4, "destination"

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 583
    const-string v4, "visibility"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 584
    const-string v4, "title"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const-string v4, "hint"

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const-string v4, "no_integrity"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 592
    const-string v4, "notificationpackage"

    const-string v5, "com.android.providers.htcCheckin"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const-string v4, "notificationclass"

    sget-object v5, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->DM_NOTIFICATION_CLASS:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    :try_start_0
    sget-object v4, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.android.updater"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v10, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 603
    .local v10, OtherUid:I
    const-string v4, "FOTA.AppUpdate.Run"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Insert APK Download task: OTHER_UID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const-string v4, "otheruid"

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 610
    .end local v10           #OtherUid:I
    :goto_2
    const/4 v3, 0x0

    .line 611
    .local v3, rtnURI:Landroid/net/Uri;
    const/4 v11, 0x0

    .line 613
    .local v11, cursor:Landroid/database/Cursor;
    :try_start_1
    sget-object v4, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v24

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_4

    .line 614
    new-instance v4, Landroid/database/SQLException;

    const-string v5, "Could not insert APK download"

    invoke-direct {v4, v5}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 630
    :catch_0
    move-exception v12

    .line 631
    .local v12, e:Ljava/lang/Exception;
    :try_start_2
    const-string v4, "FOTA.AppUpdate.Run"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not start APK download:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$1400(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 633
    if-eqz v11, :cond_2

    .line 634
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 635
    :cond_2
    const/4 v11, 0x0

    .line 636
    goto/16 :goto_0

    .line 573
    .end local v3           #rtnURI:Landroid/net/Uri;
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v12           #e:Ljava/lang/Exception;
    :cond_3
    const-string v4, "FOTA.AppUpdate.Run"

    const-string v5, "Set Restriction: NO ROAMING"

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const-string v4, "restriction"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 605
    :catch_1
    move-exception v12

    .line 607
    .local v12, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "FOTA.AppUpdate.Run"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Insert APK Download task:NameNotFoundException. e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 617
    .end local v12           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3       #rtnURI:Landroid/net/Uri;
    .restart local v11       #cursor:Landroid/database/Cursor;
    :cond_4
    :try_start_3
    sget-object v4, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->QUERY_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 618
    if-eqz v11, :cond_5

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_7

    .line 619
    :cond_5
    const-string v4, "FOTA.AppUpdate.Run"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t find download: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$1400(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 633
    if-eqz v11, :cond_6

    .line 634
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 635
    :cond_6
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 622
    :cond_7
    const/4 v4, 0x0

    :try_start_4
    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 623
    .local v9, Id:I
    const/4 v4, 0x1

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 625
    .local v23, url:Ljava/lang/String;
    new-instance v8, Landroid/content/Intent;

    const-string v4, "android.server.checkin.APP_DOWNLOAD_TRIGGERED"

    invoke-direct {v8, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 626
    .local v8, DLTriggeredIntent:Landroid/content/Intent;
    const-string v4, "_ID"

    invoke-virtual {v8, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 627
    const-string v4, "URL"

    move-object/from16 v0, v23

    invoke-virtual {v8, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 628
    sget-object v4, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 629
    const-string v4, "FOTA.AppUpdate.Run"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Started a new APK download and notify Updater. Id:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], URL:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->i(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$2400(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 633
    if-eqz v11, :cond_8

    .line 634
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 635
    :cond_8
    const/4 v11, 0x0

    .line 636
    goto/16 :goto_0

    .line 633
    .end local v8           #DLTriggeredIntent:Landroid/content/Intent;
    .end local v9           #Id:I
    .end local v23           #url:Ljava/lang/String;
    :catchall_0
    move-exception v4

    if-eqz v11, :cond_9

    .line 634
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 635
    :cond_9
    const/4 v11, 0x0

    throw v4
.end method

.method private extractInstallableApkInfo(Lorg/json/JSONObject;)I
    .locals 16
    .parameter "apkInfo"

    .prologue
    .line 351
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    .line 352
    .local v12, vecCV:Ljava/util/Vector;,"Ljava/util/Vector<Landroid/content/ContentValues;>;"
    const/4 v9, 0x0

    .line 356
    .local v9, nInstallableNo:I
    const-string v13, "FOTA.AppUpdate.Run"

    const-string v14, "Writing updated APPs into database(appupdate)!"

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :try_start_0
    const-string v13, "apk"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 360
    .local v2, aryJsonApk:Lorg/json/JSONArray;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v6, v13, :cond_2

    .line 361
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 362
    .local v8, jsonAPK:Lorg/json/JSONObject;
    new-instance v11, Lcom/android/providers/htcCheckin/apkInfo;

    invoke-direct {v11, v8}, Lcom/android/providers/htcCheckin/apkInfo;-><init>(Lorg/json/JSONObject;)V

    .line 364
    .local v11, objAPKInfo:Lcom/android/providers/htcCheckin/apkInfo;
    sget-object v13, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mUpdateTypeMap:Ljava/util/TreeMap;

    iget-object v14, v11, Lcom/android/providers/htcCheckin/apkInfo;->className:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 365
    const-string v13, "FOTA.AppUpdate.Run"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v11, Lcom/android/providers/htcCheckin/apkInfo;->className:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] doesn\'t need to be installed!"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 368
    :cond_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 369
    .local v4, cvTemp:Landroid/content/ContentValues;
    const-string v13, "apkOrder"

    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v13, "source"

    iget-object v14, v11, Lcom/android/providers/htcCheckin/apkInfo;->source:Ljava/lang/String;

    invoke-virtual {v4, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v13, "packageName"

    iget-object v14, v11, Lcom/android/providers/htcCheckin/apkInfo;->className:Ljava/lang/String;

    invoke-virtual {v4, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v13, "timestamp"

    iget-object v14, v11, Lcom/android/providers/htcCheckin/apkInfo;->timestamp:Ljava/lang/String;

    invoke-virtual {v4, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v13, "appSize"

    iget-object v14, v11, Lcom/android/providers/htcCheckin/apkInfo;->appSize:Ljava/lang/String;

    invoke-virtual {v4, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v13, "apkId"

    iget-object v14, v11, Lcom/android/providers/htcCheckin/apkInfo;->apkId:Ljava/lang/String;

    invoke-virtual {v4, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string v13, "versionCode"

    iget-object v14, v11, Lcom/android/providers/htcCheckin/apkInfo;->versionCode:Ljava/lang/String;

    invoke-virtual {v4, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string v13, "finished"

    const-string v14, "0"

    invoke-virtual {v4, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v14, "installType"

    sget-object v13, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mUpdateTypeMap:Ljava/util/TreeMap;

    iget-object v15, v11, Lcom/android/providers/htcCheckin/apkInfo;->className:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v4, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-virtual {v12, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 388
    .end local v2           #aryJsonApk:Lorg/json/JSONArray;
    .end local v4           #cvTemp:Landroid/content/ContentValues;
    .end local v6           #i:I
    .end local v8           #jsonAPK:Lorg/json/JSONObject;
    .end local v11           #objAPKInfo:Lcom/android/providers/htcCheckin/apkInfo;
    :catch_0
    move-exception v5

    .line 389
    .local v5, e:Ljava/lang/Exception;
    :try_start_1
    const-string v13, "FOTA.AppUpdate.Run"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error in saveApkInfo(). Err:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$1400(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 390
    const/4 v9, 0x0

    .line 393
    const/4 v3, 0x0

    .line 394
    .local v3, cr:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 395
    .local v1, aryCtnValues:[Landroid/content/ContentValues;
    if-eqz v12, :cond_1

    .line 396
    invoke-virtual {v12}, Ljava/util/Vector;->clear()V

    .line 397
    :cond_1
    const/4 v12, 0x0

    .line 400
    .end local v5           #e:Ljava/lang/Exception;
    :goto_2
    return v9

    .line 381
    .end local v1           #aryCtnValues:[Landroid/content/ContentValues;
    .end local v3           #cr:Landroid/content/ContentResolver;
    .restart local v2       #aryJsonApk:Lorg/json/JSONArray;
    .restart local v6       #i:I
    :cond_2
    :try_start_2
    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v13

    new-array v1, v13, [Landroid/content/ContentValues;

    .line 382
    .restart local v1       #aryCtnValues:[Landroid/content/ContentValues;
    const/4 v7, 0x0

    .local v7, j:I
    :goto_3
    array-length v13, v1

    if-ge v7, v13, :cond_3

    .line 383
    invoke-virtual {v12, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ContentValues;

    aput-object v13, v1, v7

    .line 382
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 384
    :cond_3
    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v9

    .line 385
    sget-object v13, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 386
    .restart local v3       #cr:Landroid/content/ContentResolver;
    sget-object v13, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->URI_APPUPDATE:Landroid/net/Uri;

    invoke-virtual {v3, v13, v1}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v10

    .line 387
    .local v10, nResult:I
    const-string v13, "FOTA.AppUpdate.Run"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "return value:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", aryJsonApk.length():"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 393
    const/4 v3, 0x0

    .line 394
    const/4 v1, 0x0

    .line 395
    if-eqz v12, :cond_4

    .line 396
    invoke-virtual {v12}, Ljava/util/Vector;->clear()V

    .line 397
    :cond_4
    const/4 v12, 0x0

    .line 398
    goto :goto_2

    .line 393
    .end local v1           #aryCtnValues:[Landroid/content/ContentValues;
    .end local v2           #aryJsonApk:Lorg/json/JSONArray;
    .end local v3           #cr:Landroid/content/ContentResolver;
    .end local v6           #i:I
    .end local v7           #j:I
    .end local v10           #nResult:I
    :catchall_0
    move-exception v13

    const/4 v3, 0x0

    .line 394
    .restart local v3       #cr:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 395
    .restart local v1       #aryCtnValues:[Landroid/content/ContentValues;
    if-eqz v12, :cond_5

    .line 396
    invoke-virtual {v12}, Ljava/util/Vector;->clear()V

    .line 397
    :cond_5
    const/4 v12, 0x0

    throw v13
.end method

.method private static findNextProperAPK()Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$DownloadInfo;
    .locals 19

    .prologue
    .line 1013
    const/4 v7, 0x0

    .line 1015
    .local v7, cursor:Landroid/database/Cursor;
    const/16 v17, 0x0

    .local v17, strSource:Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, strOrderTemp:Ljava/lang/String;
    const/16 v18, 0x0

    .local v18, strSourceTemp:Ljava/lang/String;
    const/16 v16, 0x0

    .line 1016
    .local v16, strSizeTemp:Ljava/lang/String;
    const v9, 0x7fffffff

    .local v9, nOrder:I
    const v10, 0x7fffffff

    .line 1017
    .local v10, nOrderTemp:I
    const-wide/16 v11, -0x1

    .local v11, nSize:J
    const-wide/16 v13, -0x1

    .line 1019
    .local v13, nSizeTemp:J
    const-string v2, "FOTA.AppUpdate.Run"

    const-string v3, "Fine next proper APK by order!"

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    :try_start_0
    sget-object v2, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1022
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "0"

    aput-object v3, v5, v2

    .line 1024
    .local v5, aryStatusNotFinished:[Ljava/lang/String;
    sget-object v2, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->URI_APPUPDATE:Landroid/net/Uri;

    sget-object v3, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->Query_FindNextApk:[Ljava/lang/String;

    const-string v4, "finished=?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1026
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1027
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1028
    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1029
    const/4 v2, 0x2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1031
    const-string v2, "FOTA.AppUpdate.Run"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Record from [appupdate] Order:["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], Source:["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], Size:["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1033
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 1034
    if-ge v10, v9, :cond_0

    .line 1035
    move v9, v10

    .line 1036
    move-object/from16 v17, v18

    .line 1037
    move-wide v11, v13

    goto :goto_0

    .line 1041
    :cond_1
    const v2, 0x7fffffff

    if-ne v9, v2, :cond_2

    if-nez v17, :cond_2

    .line 1042
    const/4 v9, -0x1

    .line 1043
    const-string v17, "NoAppUpdate"

    .line 1044
    const-wide/16 v11, -0x1

    .line 1047
    :cond_2
    const-string v2, "FOTA.AppUpdate.Run"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finally, we get Order:["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], Source:["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], Size:["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1052
    if-eqz v7, :cond_3

    .line 1053
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1054
    const/4 v7, 0x0

    .line 1056
    :cond_3
    const/4 v1, 0x0

    .line 1058
    .end local v5           #aryStatusNotFinished:[Ljava/lang/String;
    :goto_1
    new-instance v2, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$DownloadInfo;

    move-object/from16 v0, v17

    invoke-direct {v2, v0, v9, v11, v12}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$DownloadInfo;-><init>(Ljava/lang/String;IJ)V

    return-object v2

    .line 1048
    .end local v1           #cr:Landroid/content/ContentResolver;
    :catch_0
    move-exception v8

    .line 1049
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    const-string v2, "FOTA.AppUpdate.Run"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error when querying appupdate. Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1050
    const/16 v17, 0x0

    .line 1052
    if-eqz v7, :cond_4

    .line 1053
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1054
    const/4 v7, 0x0

    .line 1056
    :cond_4
    const/4 v1, 0x0

    .line 1057
    .restart local v1       #cr:Landroid/content/ContentResolver;
    goto :goto_1

    .line 1052
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_5

    .line 1053
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1054
    const/4 v7, 0x0

    .line 1056
    :cond_5
    const/4 v1, 0x0

    .restart local v1       #cr:Landroid/content/ContentResolver;
    throw v2
.end method

.method private static getAPKSizeBySource(Ljava/lang/String;)J
    .locals 11
    .parameter "source"

    .prologue
    const/4 v5, 0x0

    .line 901
    const/4 v7, 0x0

    .line 903
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 904
    .local v6, apkSize:Ljava/lang/String;
    const-wide/16 v9, 0x0

    .line 906
    .local v9, nApkSize:J
    const-string v1, "FOTA.AppUpdate.Run"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get the size of an APK by source! Source:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    aput-object p0, v4, v5

    .line 909
    .local v4, arySource:[Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 910
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->URI_APPUPDATE:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->Query_SELECT_APKSize:[Ljava/lang/String;

    const-string v3, "source=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 912
    :goto_0
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 913
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 915
    :cond_0
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v9

    .line 920
    if-eqz v7, :cond_1

    .line 921
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 922
    :cond_1
    const/4 v7, 0x0

    .line 923
    const/4 v0, 0x0

    .line 925
    :goto_1
    const-string v1, "FOTA.AppUpdate.Run"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Source:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], ApkSize:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    return-wide v9

    .line 916
    .end local v0           #cr:Landroid/content/ContentResolver;
    :catch_0
    move-exception v8

    .line 917
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "FOTA.AppUpdate.Run"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in getAPKSizeBySource. Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 918
    const-wide/16 v9, 0x0

    .line 920
    if-eqz v7, :cond_2

    .line 921
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 922
    :cond_2
    const/4 v7, 0x0

    .line 923
    const/4 v0, 0x0

    .line 924
    .restart local v0       #cr:Landroid/content/ContentResolver;
    goto :goto_1

    .line 920
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_3

    .line 921
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 922
    :cond_3
    const/4 v7, 0x0

    .line 923
    const/4 v0, 0x0

    .restart local v0       #cr:Landroid/content/ContentResolver;
    throw v1
.end method

.method private static getInstallType(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "url"

    .prologue
    const/4 v5, 0x0

    .line 840
    const/4 v6, 0x0

    .line 842
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 844
    .local v8, installType:Ljava/lang/String;
    const-string v1, "FOTA.AppUpdate.Run"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get the install type of a APK! ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    aput-object p0, v4, v5

    .line 847
    .local v4, aryURL:[Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 848
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->URI_APPUPDATE:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->Query_SELECT_InstallType:[Ljava/lang/String;

    const-string v3, "source=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 850
    :goto_0
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 851
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_0

    .line 856
    :cond_0
    if-eqz v6, :cond_1

    .line 857
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 858
    :cond_1
    const/4 v6, 0x0

    .line 859
    const/4 v0, 0x0

    .line 861
    :goto_1
    const-string v1, "FOTA.AppUpdate.Run"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Record from [appupdate] Install type:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    return-object v8

    .line 853
    .end local v0           #cr:Landroid/content/ContentResolver;
    :catch_0
    move-exception v7

    .line 854
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "FOTA.AppUpdate.Run"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in getInstallType. Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 856
    if-eqz v6, :cond_2

    .line 857
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 858
    :cond_2
    const/4 v6, 0x0

    .line 859
    const/4 v0, 0x0

    .line 860
    .restart local v0       #cr:Landroid/content/ContentResolver;
    goto :goto_1

    .line 856
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    .line 857
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 858
    :cond_3
    const/4 v6, 0x0

    .line 859
    const/4 v0, 0x0

    .restart local v0       #cr:Landroid/content/ContentResolver;
    throw v1
.end method

.method private static getSourceByPackagName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "pkgName"

    .prologue
    const/4 v5, 0x0

    .line 870
    const/4 v6, 0x0

    .line 872
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 874
    .local v8, source:Ljava/lang/String;
    const-string v1, "FOTA.AppUpdate.Run"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get the source of an APK by the package name! Package Name:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    aput-object p0, v4, v5

    .line 877
    .local v4, aryPackageName:[Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 878
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->URI_APPUPDATE:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->Query_SELECT_Source:[Ljava/lang/String;

    const-string v3, "packageName=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 880
    :goto_0
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 881
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_0

    .line 887
    :cond_0
    if-eqz v6, :cond_1

    .line 888
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 889
    :cond_1
    const/4 v6, 0x0

    .line 890
    const/4 v0, 0x0

    .line 892
    :goto_1
    const-string v1, "FOTA.AppUpdate.Run"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package Name:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], source:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    return-object v8

    .line 883
    .end local v0           #cr:Landroid/content/ContentResolver;
    :catch_0
    move-exception v7

    .line 884
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "FOTA.AppUpdate.Run"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in getSourceByPackagName. Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    const-string v8, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 887
    if-eqz v6, :cond_2

    .line 888
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 889
    :cond_2
    const/4 v6, 0x0

    .line 890
    const/4 v0, 0x0

    .line 891
    .restart local v0       #cr:Landroid/content/ContentResolver;
    goto :goto_1

    .line 887
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    .line 888
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 889
    :cond_3
    const/4 v6, 0x0

    .line 890
    const/4 v0, 0x0

    .restart local v0       #cr:Landroid/content/ContentResolver;
    throw v1
.end method

.method private static installAPK(Ljava/lang/String;I)V
    .locals 7
    .parameter "strApkPath"
    .parameter "nFlag"

    .prologue
    .line 991
    :try_start_0
    sget-object v4, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 992
    .local v2, objPM:Landroid/content/pm/PackageManager;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 993
    .local v3, objUri:Landroid/net/Uri;
    const-string v4, "FOTA.AppUpdate.Run"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEncodedPath:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    new-instance v1, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$ApkInstallObserver;

    invoke-direct {v1, p0}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$ApkInstallObserver;-><init>(Ljava/lang/String;)V

    .line 995
    .local v1, objObs:Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$ApkInstallObserver;
    const-string v4, "HTCInstaller"

    invoke-virtual {v2, v3, v1, p1, v4}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 997
    iget v4, v1, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$ApkInstallObserver;->returnCode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    iget v4, v1, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$ApkInstallObserver;->returnCode:I

    if-eqz v4, :cond_0

    .line 998
    const-string v4, "FOTA.AppUpdate.Run"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Install package fail ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]. Return Code:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$ApkInstallObserver;->returnCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1002
    .end local v1           #objObs:Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$ApkInstallObserver;
    .end local v2           #objPM:Landroid/content/pm/PackageManager;
    .end local v3           #objUri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 999
    :catch_0
    move-exception v0

    .line 1000
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "FOTA.AppUpdate.Run"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in installAPK(). Err:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$1400(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static markTaskAsFinished(Ljava/lang/String;)V
    .locals 8
    .parameter "pkgName"

    .prologue
    .line 1355
    const-string v5, "FOTA.AppUpdate.Run"

    const-string v6, "Mark appupdate task as finished"

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 1357
    :cond_0
    const-string v5, "FOTA.AppUpdate.Run"

    const-string v6, "Can\'t mark a task is finished because the package name is null or empty."

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    :goto_0
    return-void

    .line 1361
    :cond_1
    sget-object v5, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1364
    .local v1, cr:Landroid/content/ContentResolver;
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1365
    .local v2, cvTemp:Landroid/content/ContentValues;
    const-string v5, "finished"

    const-string v6, "1"

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v0, v5

    .line 1367
    .local v0, aryPackageName:[Ljava/lang/String;
    sget-object v5, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->URI_APPUPDATE:Landroid/net/Uri;

    const-string v6, "packageName=?"

    invoke-virtual {v1, v5, v2, v6, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1368
    .local v4, result:I
    const-string v5, "FOTA.AppUpdate.Run"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Mark a task is finished. Result:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1372
    const/4 v1, 0x0

    .line 1373
    goto :goto_0

    .line 1369
    .end local v0           #aryPackageName:[Ljava/lang/String;
    .end local v2           #cvTemp:Landroid/content/ContentValues;
    .end local v4           #result:I
    :catch_0
    move-exception v3

    .line 1370
    .local v3, e:Ljava/lang/Exception;
    :try_start_1
    const-string v5, "FOTA.AppUpdate.Run"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "markTaskAsFinished failed. Error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1372
    const/4 v1, 0x0

    .line 1373
    goto :goto_0

    .line 1372
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    const/4 v1, 0x0

    throw v5
.end method

.method private static removeAllAppRecord()V
    .locals 5

    .prologue
    .line 1204
    const-string v1, "FOTA.AppUpdate.Run"

    const-string v2, "Remove all AppUpdate record."

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    :try_start_0
    sget-object v1, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->URI_APPUPDATE:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1210
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 1207
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 1208
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "FOTA.AppUpdate.Run"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not remove from table appupdate. error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static removeDLMgrRecord()V
    .locals 6

    .prologue
    .line 1221
    :try_start_0
    sget-object v2, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "notificationpackage=? AND notificationclass=?"

    sget-object v5, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->QUERY_ARGS_DELETE_APK_IN_DL:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1223
    .local v1, nResult:I
    const-string v2, "FOTA.AppUpdate.Run"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delete record in Download Manager DB:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1227
    :goto_0
    return-void

    .line 1224
    :catch_0
    move-exception v0

    .line 1225
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FOTA.AppUpdate.Run"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in removeDLMgrRecord(). Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static restoreDatafromDownloadMgr(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 14
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 933
    const/4 v7, 0x0

    .line 934
    .local v7, cursor:Landroid/database/Cursor;
    const-string v0, "N/A"

    sput-object v0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mDownLoadTitle:Ljava/lang/String;

    .line 935
    const/4 v0, 0x0

    sput v0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mInstallableAPKNo:I

    .line 936
    const-string v0, "N/A"

    sput-object v0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mUpdateProgress:Ljava/lang/String;

    .line 937
    const-string v0, "FOTA.AppUpdate.Run"

    const-string v1, "restoreDatafromDownloadMgr()!"

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    :try_start_0
    sget-object v2, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->QUERY_DL_TITLE:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 940
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 941
    :cond_0
    const-string v0, "FOTA.AppUpdate.Run"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find download: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$1400(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 978
    if-eqz v7, :cond_1

    .line 979
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 980
    :cond_1
    const/4 v7, 0x0

    .line 982
    :goto_0
    return-void

    .line 945
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 946
    .local v13, strDLTitle:Ljava/lang/String;
    const/4 v6, 0x0

    .line 947
    .local v6, apkNOTemp:Ljava/lang/String;
    const-string v0, "FOTA.AppUpdate.Run"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download title from DownloadManager DB:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    const/4 v9, -0x1

    .local v9, nAnchor_1:I
    const/4 v10, -0x1

    .local v10, nAnchor_2:I
    const/4 v11, -0x1

    .local v11, nAnchor_3:I
    const/4 v12, -0x1

    .line 951
    .local v12, nAnchor_4:I
    const-string v0, "("

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 952
    const/4 v0, -0x1

    if-le v9, v0, :cond_4

    .line 953
    const/4 v0, 0x0

    add-int/lit8 v1, v9, -0x1

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mDownLoadTitle:Ljava/lang/String;

    .line 957
    :goto_1
    const-string v0, "/"

    invoke-virtual {v13, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 958
    const-string v0, ")"

    invoke-virtual {v13, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    .line 959
    const/4 v0, 0x1

    if-lt v10, v0, :cond_6

    const/4 v0, -0x1

    if-le v11, v0, :cond_6

    .line 960
    add-int/lit8 v0, v10, 0x1

    invoke-virtual {v13, v0, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 963
    :goto_2
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mInstallableAPKNo:I

    .line 965
    const-string v0, "("

    invoke-virtual {v13, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    .line 966
    const/4 v0, 0x1

    if-lt v11, v0, :cond_8

    const/4 v0, -0x1

    if-le v12, v0, :cond_8

    .line 967
    add-int/lit8 v0, v12, 0x1

    invoke-virtual {v13, v0, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mUpdateProgress:Ljava/lang/String;

    .line 971
    :goto_3
    const-string v0, "FOTA.AppUpdate.Run"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restored mDownLoadTitle:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mDownLoadTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], mInstallableAPKNo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mInstallableAPKNo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 978
    if-eqz v7, :cond_3

    .line 979
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 980
    :cond_3
    const/4 v7, 0x0

    .line 981
    goto/16 :goto_0

    .line 955
    :cond_4
    :try_start_2
    const-string v0, "FOTA.AppUpdate.Run"

    const-string v1, "Can\'t find download title from download manager"

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 972
    .end local v6           #apkNOTemp:Ljava/lang/String;
    .end local v9           #nAnchor_1:I
    .end local v10           #nAnchor_2:I
    .end local v11           #nAnchor_3:I
    .end local v12           #nAnchor_4:I
    .end local v13           #strDLTitle:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 973
    .local v8, e:Ljava/lang/Exception;
    :try_start_3
    const-string v0, "FOTA.AppUpdate.Run"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in restoreDatafromDownloadMgr(). error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    const-string v0, "N/A"

    sput-object v0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mDownLoadTitle:Ljava/lang/String;

    .line 975
    const/4 v0, 0x0

    sput v0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mInstallableAPKNo:I

    .line 976
    const-string v0, "N/A"

    sput-object v0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mUpdateProgress:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 978
    if-eqz v7, :cond_5

    .line 979
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 980
    :cond_5
    const/4 v7, 0x0

    .line 981
    goto/16 :goto_0

    .line 962
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v6       #apkNOTemp:Ljava/lang/String;
    .restart local v9       #nAnchor_1:I
    .restart local v10       #nAnchor_2:I
    .restart local v11       #nAnchor_3:I
    .restart local v12       #nAnchor_4:I
    .restart local v13       #strDLTitle:Ljava/lang/String;
    :cond_6
    :try_start_4
    const-string v0, "FOTA.AppUpdate.Run"

    const-string v1, "Can\'t find Installable APKNo from download manager"

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .line 978
    .end local v6           #apkNOTemp:Ljava/lang/String;
    .end local v9           #nAnchor_1:I
    .end local v10           #nAnchor_2:I
    .end local v11           #nAnchor_3:I
    .end local v12           #nAnchor_4:I
    .end local v13           #strDLTitle:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_7

    .line 979
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 980
    :cond_7
    const/4 v7, 0x0

    throw v0

    .line 969
    .restart local v6       #apkNOTemp:Ljava/lang/String;
    .restart local v9       #nAnchor_1:I
    .restart local v10       #nAnchor_2:I
    .restart local v11       #nAnchor_3:I
    .restart local v12       #nAnchor_4:I
    .restart local v13       #strDLTitle:Ljava/lang/String;
    :cond_8
    :try_start_5
    const-string v0, "FOTA.AppUpdate.Run"

    const-string v1, "Can\'t find mUpdateProgress from download manager"

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3
.end method

.method private static saveBiggestTimestampOfInstallAPK()V
    .locals 13

    .prologue
    .line 1114
    const/4 v6, 0x0

    .line 1116
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 1117
    .local v12, strTimeStamp:Ljava/lang/String;
    const-wide/16 v8, -0x1

    .local v8, nTimeStamp:J
    const-wide/16 v10, -0x1

    .line 1119
    .local v10, nTimeStampTemp:J
    const-string v1, "FOTA.AppUpdate.Run"

    const-string v2, "Save the maximum Timestamp Of Install APK!"

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    :try_start_0
    sget-object v1, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1123
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->URI_APPUPDATE:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->Query_FindNextApk:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1125
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1126
    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1128
    const-string v1, "FOTA.AppUpdate.Run"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Record from [appupdate] TimeStamp:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 1130
    cmp-long v1, v10, v8

    if-lez v1, :cond_0

    .line 1131
    move-wide v8, v10

    goto :goto_0

    .line 1135
    :cond_1
    const-string v1, "FOTA.AppUpdate.Run"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finally, get the Maximum timestamp:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    invoke-static {v8, v9}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->updateTimestampToHTCservices(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1140
    if-eqz v6, :cond_2

    .line 1141
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1142
    const/4 v6, 0x0

    .line 1144
    :cond_2
    const/4 v0, 0x0

    .line 1146
    :goto_1
    return-void

    .line 1137
    .end local v0           #cr:Landroid/content/ContentResolver;
    :catch_0
    move-exception v7

    .line 1138
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "FOTA.AppUpdate.Run"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in saveBiggestTimestampOfInstallAPK. Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1140
    if-eqz v6, :cond_3

    .line 1141
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1142
    const/4 v6, 0x0

    .line 1144
    :cond_3
    const/4 v0, 0x0

    .line 1145
    .restart local v0       #cr:Landroid/content/ContentResolver;
    goto :goto_1

    .line 1140
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    .line 1141
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1142
    const/4 v6, 0x0

    .line 1144
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #cr:Landroid/content/ContentResolver;
    throw v1
.end method

.method private static saveSmallestTimestampOfUninstallAPK()V
    .locals 13

    .prologue
    .line 1068
    const/4 v6, 0x0

    .line 1070
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 1071
    .local v12, strTimeStamp:Ljava/lang/String;
    const-wide v8, 0x7fffffffffffffffL

    .local v8, nTimeStamp:J
    const-wide v10, 0x7fffffffffffffffL

    .line 1072
    .local v10, nTimeStampTemp:J
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0"

    aput-object v2, v4, v1

    .line 1074
    .local v4, aryStatusNotFinished:[Ljava/lang/String;
    const-string v1, "FOTA.AppUpdate.Run"

    const-string v2, "save Smallest Timestamp Of Uninstall APK!"

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    :try_start_0
    sget-object v1, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1079
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->URI_APPUPDATE:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->Query_FindNextApk:[Ljava/lang/String;

    const-string v3, "finished=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1081
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1082
    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1084
    const-string v1, "FOTA.AppUpdate.Run"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Record from [appupdate] TimeStamp:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 1086
    cmp-long v1, v10, v8

    if-gez v1, :cond_0

    .line 1087
    move-wide v8, v10

    goto :goto_0

    .line 1091
    :cond_1
    const-string v1, "FOTA.AppUpdate.Run"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finally, get the minimum timestamp:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, v8, v1

    if-nez v1, :cond_3

    .line 1094
    const-string v1, "FOTA.AppUpdate.Run"

    const-string v2, "Finally, no timestamp selected. Do not save to DB."

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1100
    :goto_1
    if-eqz v6, :cond_2

    .line 1101
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1102
    const/4 v6, 0x0

    .line 1104
    :cond_2
    const/4 v0, 0x0

    .line 1106
    :goto_2
    return-void

    .line 1096
    :cond_3
    const-wide/16 v1, 0x1

    sub-long v1, v8, v1

    :try_start_1
    invoke-static {v1, v2}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->updateTimestampToHTCservices(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1097
    .end local v0           #cr:Landroid/content/ContentResolver;
    :catch_0
    move-exception v7

    .line 1098
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    const-string v1, "FOTA.AppUpdate.Run"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in saveSmallestTimestampOfUninstallAPK. Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1100
    if-eqz v6, :cond_4

    .line 1101
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1102
    const/4 v6, 0x0

    .line 1104
    :cond_4
    const/4 v0, 0x0

    .line 1105
    .restart local v0       #cr:Landroid/content/ContentResolver;
    goto :goto_2

    .line 1100
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_5

    .line 1101
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1102
    const/4 v6, 0x0

    .line 1104
    :cond_5
    const/4 v0, 0x0

    .restart local v0       #cr:Landroid/content/ContentResolver;
    throw v1
.end method

.method private static updateTimestampToHTCservices(J)V
    .locals 7
    .parameter "timeStamp"

    .prologue
    .line 1153
    const-string v4, "FOTA.AppUpdate.Run"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Write time stamp to HTCservices:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    sget-boolean v4, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->bIndividualApu:Z

    if-eqz v4, :cond_0

    .line 1156
    const-string v4, "FOTA.AppUpdate.Run"

    const-string v5, "No need to update timestamp to HTCservices"

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    :goto_0
    return-void

    .line 1160
    :cond_0
    sget-object v4, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1162
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 1163
    .local v3, strTimeStamp:Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1164
    .local v1, cv:Landroid/content/ContentValues;
    const-string v4, "name"

    const-string v5, "appupdate_timestamp"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    const-string v4, "value"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    sget-object v4, Landroid/provider/Settings$HTCservices;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1170
    const/4 v0, 0x0

    .line 1171
    goto :goto_0

    .line 1167
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v3           #strTimeStamp:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1168
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    const-string v4, "FOTA.AppUpdate.Run"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateTimestampToHTCservices failed. Error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1170
    const/4 v0, 0x0

    .line 1171
    goto :goto_0

    .line 1170
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    const/4 v0, 0x0

    throw v4
.end method


# virtual methods
.method protected setIndividualUpdate(Z)V
    .locals 0
    .parameter "isIndividualApu"

    .prologue
    .line 163
    sput-boolean p1, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->bIndividualApu:Z

    .line 164
    return-void
.end method

.method protected setTargetPackage(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 159
    sput-object p1, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->mTargetPackage:Ljava/lang/String;

    .line 160
    return-void
.end method
