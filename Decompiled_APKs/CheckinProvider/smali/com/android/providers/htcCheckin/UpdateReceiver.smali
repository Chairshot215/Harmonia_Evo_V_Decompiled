.class public Lcom/android/providers/htcCheckin/UpdateReceiver;
.super Ljava/lang/Object;
.source "UpdateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/htcCheckin/UpdateReceiver$DownloadCompletedBroadcastReceiver;,
        Lcom/android/providers/htcCheckin/UpdateReceiver$InstallRunner;
    }
.end annotation


# static fields
.field public static final CANCEL_ACTION:Ljava/lang/String; = "android.server.checkin.FOTA_CANCEL"

.field private static final DM_NOTIFICATION_CLASS:Ljava/lang/String; = null

.field private static final DM_NOTIFICATION_PACKAGE:Ljava/lang/String; = "com.android.providers.htcCheckin"

.field public static final DOWNLOAD_FAIL:Ljava/lang/String; = "android.server.checkin.DOWNLOAD_FAIL"

.field public static final INSTALL_ACTION:Ljava/lang/String; = "android.server.checkin.FOTA_INSTALL"

.field private static final LOCAL_LOGV:Z = true

.field public static final PERMISSION:Ljava/lang/String; = "android.permission.HTC_FOTA_UPDATE"

.field private static final QUERY_PROJECTION:[Ljava/lang/String; = null

.field private static final QUERY_WHERE_ARGS:[Ljava/lang/String; = null

.field private static final QUERY_WHERE_CLAUSE:Ljava/lang/String; = "notificationpackage=? AND notificationclass=?"

.field public static final READY_ACTION:Ljava/lang/String; = "android.server.checkin.FOTA_READY"

.field private static final REDOWNLOAD_MSEC:J = 0x5265c00L

.field private static final REVERIFY_MSEC:J = 0x2932e00L

.field private static final SETTINGS_PACKAGE_NAME:Ljava/lang/String; = "com.android.settings"

.field private static final TAG:Ljava/lang/String; = "htcCheckinService"

.field private static final UPDATER_PACKAGE_NAME:Ljava/lang/String; = "com.android.updater"

.field public static final UPDATE_ACTION:Ljava/lang/String; = "android.server.checkin.FOTA_UPDATE"

.field private static final UPDATE_SCRIPT_ENTRY:Ljava/lang/String; = "META-INF/com/google/android/updater-script"

.field public static final VZW_WIPEDATA_ACTION:Ljava/lang/String; = "android.server.checkin.FOTA_WIPE_DATA_VZW_HPST"

.field private static cleanUserdata:Z

.field private static jobRunning:Z

.field private static final lockPkg:Ljava/lang/Object;

.field private static mUpdateIntent:Landroid/content/Intent;

.field private static mVerificationStarted:J


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mCancelReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mInstallReceiver:Landroid/content/BroadcastReceiver;

.field private mUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mVZWWipeDataReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 115
    const-class v0, Lcom/android/providers/htcCheckin/UpdateReceiver$DownloadCompletedBroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/htcCheckin/UpdateReceiver;->DM_NOTIFICATION_CLASS:Ljava/lang/String;

    .line 119
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "entity"

    aput-object v1, v0, v4

    const-string v1, "status"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "lastmod"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/htcCheckin/UpdateReceiver;->QUERY_PROJECTION:[Ljava/lang/String;

    .line 128
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "com.android.providers.htcCheckin"

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/providers/htcCheckin/UpdateReceiver;->DM_NOTIFICATION_CLASS:Ljava/lang/String;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/htcCheckin/UpdateReceiver;->QUERY_WHERE_ARGS:[Ljava/lang/String;

    .line 144
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/htcCheckin/UpdateReceiver;->mUpdateIntent:Landroid/content/Intent;

    .line 147
    const-wide/32 v0, -0x2932e00

    sput-wide v0, Lcom/android/providers/htcCheckin/UpdateReceiver;->mVerificationStarted:J

    .line 157
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/providers/htcCheckin/UpdateReceiver;->lockPkg:Ljava/lang/Object;

    .line 158
    sput-boolean v3, Lcom/android/providers/htcCheckin/UpdateReceiver;->jobRunning:Z

    .line 160
    sput-boolean v3, Lcom/android/providers/htcCheckin/UpdateReceiver;->cleanUserdata:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 525
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 178
    new-instance v1, Lcom/android/providers/htcCheckin/UpdateReceiver$1;

    invoke-direct {v1, p0}, Lcom/android/providers/htcCheckin/UpdateReceiver$1;-><init>(Lcom/android/providers/htcCheckin/UpdateReceiver;)V

    iput-object v1, p0, Lcom/android/providers/htcCheckin/UpdateReceiver;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 346
    new-instance v1, Lcom/android/providers/htcCheckin/UpdateReceiver$2;

    invoke-direct {v1, p0}, Lcom/android/providers/htcCheckin/UpdateReceiver$2;-><init>(Lcom/android/providers/htcCheckin/UpdateReceiver;)V

    iput-object v1, p0, Lcom/android/providers/htcCheckin/UpdateReceiver;->mInstallReceiver:Landroid/content/BroadcastReceiver;

    .line 379
    new-instance v1, Lcom/android/providers/htcCheckin/UpdateReceiver$3;

    invoke-direct {v1, p0}, Lcom/android/providers/htcCheckin/UpdateReceiver$3;-><init>(Lcom/android/providers/htcCheckin/UpdateReceiver;)V

    iput-object v1, p0, Lcom/android/providers/htcCheckin/UpdateReceiver;->mVZWWipeDataReceiver:Landroid/content/BroadcastReceiver;

    .line 417
    new-instance v1, Lcom/android/providers/htcCheckin/UpdateReceiver$4;

    invoke-direct {v1, p0}, Lcom/android/providers/htcCheckin/UpdateReceiver$4;-><init>(Lcom/android/providers/htcCheckin/UpdateReceiver;)V

    iput-object v1, p0, Lcom/android/providers/htcCheckin/UpdateReceiver;->mCancelReceiver:Landroid/content/BroadcastReceiver;

    .line 526
    iput-object p1, p0, Lcom/android/providers/htcCheckin/UpdateReceiver;->mContext:Landroid/content/Context;

    .line 528
    const-string v1, "alarm"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/providers/htcCheckin/UpdateReceiver;->mAlarmManager:Landroid/app/AlarmManager;

    .line 530
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.server.checkin.FOTA_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 531
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 532
    const-string v1, "https"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 533
    iget-object v1, p0, Lcom/android/providers/htcCheckin/UpdateReceiver;->mUpdateReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "android.permission.HTC_FOTA_UPDATE"

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 535
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    const-string v1, "android.server.checkin.FOTA_INSTALL"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 536
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 537
    iget-object v1, p0, Lcom/android/providers/htcCheckin/UpdateReceiver;->mInstallReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "android.permission.HTC_FOTA_UPDATE"

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 539
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    const-string v1, "android.server.checkin.FOTA_CANCEL"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 540
    .restart local v0       #filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/providers/htcCheckin/UpdateReceiver;->mCancelReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "android.permission.HTC_FOTA_UPDATE"

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 544
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    const-string v1, "android.server.checkin.FOTA_WIPE_DATA_VZW_HPST"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 545
    .restart local v0       #filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/providers/htcCheckin/UpdateReceiver;->mVZWWipeDataReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "android.permission.HTC_FOTA_UPDATE"

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 547
    return-void
.end method

.method private IsHtcCheckin(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    .line 166
    const-string v1, "name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, strChk:Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 168
    :goto_0
    return v1

    :cond_0
    const-string v1, "android.server.HTCcheckin.CHECKIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/providers/htcCheckin/UpdateReceiver;Landroid/content/Intent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/providers/htcCheckin/UpdateReceiver;->IsHtcCheckin(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/providers/htcCheckin/UpdateReceiver;->mUpdateIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-static {p0}, Lcom/android/providers/htcCheckin/UpdateReceiver;->runWipe_data_vzw_hpst(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$102(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    sput-object p0, Lcom/android/providers/htcCheckin/UpdateReceiver;->mUpdateIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$200()J
    .locals 2

    .prologue
    .line 65
    sget-wide v0, Lcom/android/providers/htcCheckin/UpdateReceiver;->mVerificationStarted:J

    return-wide v0
.end method

.method static synthetic access$202(J)J
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    sput-wide p0, Lcom/android/providers/htcCheckin/UpdateReceiver;->mVerificationStarted:J

    return-wide p0
.end method

.method static synthetic access$300(Lcom/android/providers/htcCheckin/UpdateReceiver;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/providers/htcCheckin/UpdateReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-static {p0}, Lcom/android/providers/htcCheckin/UpdateReceiver;->removeAllDownloads(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/providers/htcCheckin/UpdateReceiver;->DM_NOTIFICATION_CLASS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Landroid/content/ContentResolver;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-static {p0, p1}, Lcom/android/providers/htcCheckin/UpdateReceiver;->saveUpdateInfo(Landroid/content/ContentResolver;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/providers/htcCheckin/UpdateReceiver;->QUERY_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-static {p0, p1}, Lcom/android/providers/htcCheckin/UpdateReceiver;->installMultipleUpdate(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Landroid/content/Context;Ljava/io/File;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-static {p0, p1}, Lcom/android/providers/htcCheckin/UpdateReceiver;->installUpdate(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method

.method private static installMultipleUpdate(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "pathList"

    .prologue
    .line 575
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->FOTA_INSTALL:Landroid/provider/Checkin$Events$Tag;

    invoke-static {v1, v2, p1}, Landroid/provider/htcCheckin;->logEvent(Landroid/content/ContentResolver;Landroid/provider/Checkin$Events$Tag;Ljava/lang/String;)Landroid/net/Uri;

    .line 580
    :try_start_0
    const-string v1, "htcCheckinService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!! REBOOTING TO INSTALL MULTIPLE PACKAGE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " !!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-static {p0, p1}, Landroid/os/RecoverySystem;->installMultiplePackage(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    :goto_0
    return-void

    .line 582
    :catch_0
    move-exception v0

    .line 583
    .local v0, e:Ljava/io/IOException;
    const-string v1, "htcCheckinService"

    const-string v2, "Update installation failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 584
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->FOTA_FAILURE:Landroid/provider/Checkin$Events$Tag;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/htcCheckin;->logEvent(Landroid/content/ContentResolver;Landroid/provider/Checkin$Events$Tag;Ljava/lang/String;)Landroid/net/Uri;

    goto :goto_0
.end method

.method private static installUpdate(Landroid/content/Context;Ljava/io/File;)V
    .locals 4
    .parameter "context"
    .parameter "update"

    .prologue
    .line 555
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->FOTA_INSTALL:Landroid/provider/Checkin$Events$Tag;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/htcCheckin;->logEvent(Landroid/content/ContentResolver;Landroid/provider/Checkin$Events$Tag;Ljava/lang/String;)Landroid/net/Uri;

    .line 560
    :try_start_0
    const-string v1, "htcCheckinService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!! REBOOTING TO INSTALL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " !!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-static {p0, p1}, Landroid/os/RecoverySystem;->installPackage(Landroid/content/Context;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    :goto_0
    return-void

    .line 562
    :catch_0
    move-exception v0

    .line 563
    .local v0, e:Ljava/io/IOException;
    const-string v1, "htcCheckinService"

    const-string v2, "Update installation failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 564
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->FOTA_FAILURE:Landroid/provider/Checkin$Events$Tag;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/htcCheckin;->logEvent(Landroid/content/ContentResolver;Landroid/provider/Checkin$Events$Tag;Ljava/lang/String;)Landroid/net/Uri;

    goto :goto_0
.end method

.method protected static isSavetoExternal()Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 681
    const-string v9, "ro.product.device"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 682
    .local v2, device:Ljava/lang/String;
    const-string v9, "settings.fota.saveto"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 684
    .local v6, saveto:Ljava/lang/String;
    const-string v9, "external"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 708
    :goto_0
    return v7

    .line 688
    :cond_0
    const-string v9, "cache_noroaming"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "cache"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_1
    move v7, v8

    .line 690
    goto :goto_0

    .line 695
    :cond_2
    const/4 v9, 0x7

    new-array v3, v9, [Ljava/lang/String;

    const-string v9, "hero"

    aput-object v9, v3, v8

    const-string v9, "heroc"

    aput-object v9, v3, v7

    const/4 v9, 0x2

    const-string v10, "bahamas"

    aput-object v10, v3, v9

    const/4 v9, 0x3

    const-string v10, "desirec"

    aput-object v10, v3, v9

    const/4 v9, 0x4

    const-string v10, "inc"

    aput-object v10, v3, v9

    const/4 v9, 0x5

    const-string v10, "suc"

    aput-object v10, v3, v9

    const/4 v9, 0x6

    const-string v10, "supersonic"

    aput-object v10, v3, v9

    .line 696
    .local v3, deviceList:[Ljava/lang/String;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_4

    aget-object v1, v0, v4

    .line 698
    .local v1, dev:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 701
    const-string v7, "htcCheckinService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Save to cache partition because device is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 702
    goto :goto_0

    .line 696
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 707
    .end local v1           #dev:Ljava/lang/String;
    :cond_4
    const-string v8, "htcCheckinService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Save to SD card because device is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static loadUpdateInfo(Landroid/content/Context;)Landroid/content/Intent;
    .locals 19
    .parameter "context"

    .prologue
    .line 634
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 635
    .local v1, cr:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/htcCheckin$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 637
    .local v11, cursor:Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 639
    .local v14, intent:Landroid/content/Intent;
    if-eqz v11, :cond_2

    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 640
    const-string v2, "link"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 641
    .local v8, colLink:I
    const-string v2, "version"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 642
    .local v10, colVersion:I
    const-string v2, "feature"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 643
    .local v7, colFeature:I
    const-string v2, "size"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 644
    .local v9, colSize:I
    invoke-interface {v11, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 645
    .local v16, link:Ljava/lang/String;
    invoke-interface {v11, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 646
    .local v18, version:Ljava/lang/String;
    invoke-interface {v11, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 647
    .local v13, feature:Ljava/lang/String;
    invoke-interface {v11, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 649
    .local v17, size:Ljava/lang/String;
    if-eqz v16, :cond_4

    if-eqz v18, :cond_4

    if-eqz v13, :cond_4

    .line 651
    const-string v2, "htcCheckinService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There is no message from server. Let\'s try local database. /Link: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " /Version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " /Feature: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    new-instance v15, Landroid/content/Intent;

    const-string v2, "android.server.checkin.FOTA_UPDATE"

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v15, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    .end local v14           #intent:Landroid/content/Intent;
    .local v15, intent:Landroid/content/Intent;
    :try_start_1
    const-string v2, "name"

    const-string v3, "android.server.HTCcheckin.CHECKIN"

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 656
    const-string v2, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 657
    const-string v2, "promptVersion"

    move-object/from16 v0, v18

    invoke-virtual {v15, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 658
    :cond_0
    const-string v2, ""

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 659
    const-string v2, "promptFeature"

    invoke-virtual {v15, v2, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 660
    :cond_1
    const-string v2, ""

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 661
    const-string v2, "promptSize"

    move-object/from16 v0, v17

    invoke-virtual {v15, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v14, v15

    .line 670
    .end local v7           #colFeature:I
    .end local v8           #colLink:I
    .end local v9           #colSize:I
    .end local v10           #colVersion:I
    .end local v13           #feature:Ljava/lang/String;
    .end local v15           #intent:Landroid/content/Intent;
    .end local v16           #link:Ljava/lang/String;
    .end local v17           #size:Ljava/lang/String;
    .end local v18           #version:Ljava/lang/String;
    .restart local v14       #intent:Landroid/content/Intent;
    :cond_2
    :goto_0
    if-eqz v11, :cond_3

    .line 671
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 672
    const/4 v11, 0x0

    .line 675
    :cond_3
    :goto_1
    return-object v14

    .line 663
    .restart local v7       #colFeature:I
    .restart local v8       #colLink:I
    .restart local v9       #colSize:I
    .restart local v10       #colVersion:I
    .restart local v13       #feature:Ljava/lang/String;
    .restart local v16       #link:Ljava/lang/String;
    .restart local v17       #size:Ljava/lang/String;
    .restart local v18       #version:Ljava/lang/String;
    :cond_4
    :try_start_2
    const-string v2, "htcCheckinService"

    const-string v3, "There is no message from server and either in database."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 666
    .end local v7           #colFeature:I
    .end local v8           #colLink:I
    .end local v9           #colSize:I
    .end local v10           #colVersion:I
    .end local v13           #feature:Ljava/lang/String;
    .end local v16           #link:Ljava/lang/String;
    .end local v17           #size:Ljava/lang/String;
    .end local v18           #version:Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 667
    .local v12, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v2, "htcCheckinService"

    const-string v3, "Fail to get messages from local database."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 670
    if-eqz v11, :cond_3

    .line 671
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 672
    const/4 v11, 0x0

    goto :goto_1

    .line 670
    .end local v12           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    :goto_3
    if-eqz v11, :cond_5

    .line 671
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 672
    const/4 v11, 0x0

    :cond_5
    throw v2

    .line 670
    .end local v14           #intent:Landroid/content/Intent;
    .restart local v7       #colFeature:I
    .restart local v8       #colLink:I
    .restart local v9       #colSize:I
    .restart local v10       #colVersion:I
    .restart local v13       #feature:Ljava/lang/String;
    .restart local v15       #intent:Landroid/content/Intent;
    .restart local v16       #link:Ljava/lang/String;
    .restart local v17       #size:Ljava/lang/String;
    .restart local v18       #version:Ljava/lang/String;
    :catchall_1
    move-exception v2

    move-object v14, v15

    .end local v15           #intent:Landroid/content/Intent;
    .restart local v14       #intent:Landroid/content/Intent;
    goto :goto_3

    .line 666
    .end local v14           #intent:Landroid/content/Intent;
    .restart local v15       #intent:Landroid/content/Intent;
    :catch_1
    move-exception v12

    move-object v14, v15

    .end local v15           #intent:Landroid/content/Intent;
    .restart local v14       #intent:Landroid/content/Intent;
    goto :goto_2

    .end local v14           #intent:Landroid/content/Intent;
    .restart local v15       #intent:Landroid/content/Intent;
    :cond_6
    move-object v14, v15

    .end local v15           #intent:Landroid/content/Intent;
    .restart local v14       #intent:Landroid/content/Intent;
    goto :goto_0
.end method

.method private static removeAllDownloads(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 593
    sget-object v2, Lcom/android/providers/htcCheckin/UpdateReceiver;->lockPkg:Ljava/lang/Object;

    monitor-enter v2

    .line 594
    :try_start_0
    sget-boolean v1, Lcom/android/providers/htcCheckin/UpdateReceiver;->jobRunning:Z

    if-eqz v1, :cond_0

    .line 595
    const-string v1, "htcCheckinService"

    const-string v3, "Can\'t remove! Another thread is running for OTA Package."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    monitor-exit v2

    .line 615
    :goto_0
    return-void

    .line 599
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/providers/htcCheckin/UpdateReceiver;->jobRunning:Z

    .line 600
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 603
    const-string v1, "htcCheckinService"

    const-string v2, "removeAllDownloads()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "notificationpackage=? AND notificationclass=?"

    sget-object v4, Lcom/android/providers/htcCheckin/UpdateReceiver;->QUERY_WHERE_ARGS:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 610
    sget-object v2, Lcom/android/providers/htcCheckin/UpdateReceiver;->lockPkg:Ljava/lang/Object;

    monitor-enter v2

    .line 611
    const/4 v1, 0x0

    :try_start_2
    sput-boolean v1, Lcom/android/providers/htcCheckin/UpdateReceiver;->jobRunning:Z

    .line 612
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 614
    :goto_1
    const-wide/32 v1, -0x2932e00

    sput-wide v1, Lcom/android/providers/htcCheckin/UpdateReceiver;->mVerificationStarted:J

    goto :goto_0

    .line 600
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 612
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 607
    :catch_0
    move-exception v0

    .line 608
    .local v0, e:Ljava/lang/Exception;
    :try_start_5
    const-string v1, "htcCheckinService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not remove from download provider. error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 610
    sget-object v2, Lcom/android/providers/htcCheckin/UpdateReceiver;->lockPkg:Ljava/lang/Object;

    monitor-enter v2

    .line 611
    const/4 v1, 0x0

    :try_start_6
    sput-boolean v1, Lcom/android/providers/htcCheckin/UpdateReceiver;->jobRunning:Z

    .line 612
    monitor-exit v2

    goto :goto_1

    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1

    .line 610
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_3
    move-exception v1

    sget-object v2, Lcom/android/providers/htcCheckin/UpdateReceiver;->lockPkg:Ljava/lang/Object;

    monitor-enter v2

    .line 611
    const/4 v3, 0x0

    :try_start_7
    sput-boolean v3, Lcom/android/providers/htcCheckin/UpdateReceiver;->jobRunning:Z

    .line 612
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v1

    :catchall_4
    move-exception v1

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v1
.end method

.method private static runWipe_data_vzw_hpst(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 403
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->FOTA_INSTALL:Landroid/provider/Checkin$Events$Tag;

    const-string v3, "runWipe_data_vzw_hpst"

    invoke-static {v1, v2, v3}, Landroid/provider/htcCheckin;->logEvent(Landroid/content/ContentResolver;Landroid/provider/Checkin$Events$Tag;Ljava/lang/String;)Landroid/net/Uri;

    .line 406
    :try_start_0
    const-string v1, "htcCheckinService"

    const-string v2, "!!! REBOOTING TO PERFORM VZW WIPE DATA !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-static {p0}, Landroid/os/RecoverySystem;->rebootWipeDataVzwHpst(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :goto_0
    return-void

    .line 408
    :catch_0
    move-exception v0

    .line 409
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "htcCheckinService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runWipe_data_vzw_hpst failed!! Err Msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Checkin$Events$Tag;->FOTA_FAILURE:Landroid/provider/Checkin$Events$Tag;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/htcCheckin;->logEvent(Landroid/content/ContentResolver;Landroid/provider/Checkin$Events$Tag;Ljava/lang/String;)Landroid/net/Uri;

    goto :goto_0
.end method

.method private static saveUpdateInfo(Landroid/content/ContentResolver;Landroid/content/Intent;)V
    .locals 5
    .parameter "cr"
    .parameter "intent"

    .prologue
    .line 622
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 623
    .local v2, updateUrl:Ljava/lang/String;
    const-string v4, "promptVersion"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 624
    .local v3, version:Ljava/lang/String;
    const-string v4, "promptFeature"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 625
    .local v0, feature:Ljava/lang/String;
    const-string v4, "promptSize"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 626
    .local v1, size:Ljava/lang/String;
    if-nez v3, :cond_0

    const-string v3, ""

    .end local v3           #version:Ljava/lang/String;
    :cond_0
    if-nez v0, :cond_1

    const-string v0, ""

    .end local v0           #feature:Ljava/lang/String;
    :cond_1
    if-nez v1, :cond_2

    const-string v1, ""

    .end local v1           #size:Ljava/lang/String;
    :cond_2
    invoke-static {p0, v2, v3, v0, v1}, Landroid/provider/htcCheckin;->saveMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 628
    return-void
.end method

.method protected static startVerify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "intent"
    .parameter "update"

    .prologue
    .line 712
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.updater.VERIFY"

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 713
    .local v2, verfyIntent:Landroid/content/Intent;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 715
    .local v0, realtime:J
    sget-wide v3, Lcom/android/providers/htcCheckin/UpdateReceiver;->mVerificationStarted:J

    sub-long v3, v0, v3

    const-wide/32 v5, 0x2932e00

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 716
    const-string v3, "enable_verify"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 720
    :goto_0
    invoke-virtual {v2, p1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 721
    const-string v3, "update"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 722
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 723
    return-void

    .line 718
    :cond_0
    sput-wide v0, Lcom/android/providers/htcCheckin/UpdateReceiver;->mVerificationStarted:J

    goto :goto_0
.end method
