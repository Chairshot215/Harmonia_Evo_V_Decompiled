.class public Lcom/htc/htcCOTAClient/DownloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DownloadReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/htcCOTAClient/DownloadReceiver$CancelInstallReceiver;,
        Lcom/htc/htcCOTAClient/DownloadReceiver$CWPkgDownloadCompletedReceiver;
    }
.end annotation


# static fields
.field private static final DM_NOTIFICATION_CLASS:Ljava/lang/String; = null

.field private static final DM_NOTIFICATION_PACKAGE:Ljava/lang/String; = "com.htc.htcCOTAClient"

.field private static final ENTRY_CRC:Ljava/lang/String; = "cw.crc"

.field private static final ENTRY_CWPACKAGE:Ljava/lang/String; = "cwpkg.zip"

.field private static final ENTRY_PROP:Ljava/lang/String; = "cw.prop"

.field private static final EXTRACT_FAILED_CRCERROR:I = 0x4

.field private static final EXTRACT_FAILED_GENERICERROR:I = 0x0

.field private static final EXTRACT_FAILED_GETFILE:I = 0x3

.field private static final EXTRACT_FAILED_GET_CWCRC:I = 0x2

.field private static final EXTRACT_FAILED_SAVEFILE:I = 0x5

.field private static final EXTRACT_FAILED_UNZIP:I = 0x1

.field private static final FOLDER_CW_OUTPUT:Ljava/lang/String; = "/data/data/cwtemp/"

.field private static final INTENT_COTA_CONFIRM_INSTALL:Ljava/lang/String; = "android.server.HTCCOTA.CONFIRM_INSTALL"

.field private static final INTENT_COTA_DL_FAILED:Ljava/lang/String; = "android.server.HTCCOTA.DOWNLOAD_FAIL"

.field private static final INTENT_COTA_DL_PROGRESS:Ljava/lang/String; = "android.server.HTCCOTA.SHOW_DOWNLOAD_PROGRESS"

.field private static final INTENT_COTA_EXTRACT_FAILED:Ljava/lang/String; = "android.server.HTCCOTA.EXTRACT_FAIL"

.field public static LOCAL_LOGV:Z = false

.field private static final QUERY_ARGS_DELETE_APK_IN_DL:[Ljava/lang/String; = null

.field private static final QUERY_PROJECTION:[Ljava/lang/String; = null

.field private static final QUERY_WHERE_DELETE_APK_IN_DL:Ljava/lang/String; = "notificationpackage=? AND notificationclass=?"

.field public static TAG:Ljava/lang/String; = null

.field private static final UPDATER_PACKAGE_NAME:Ljava/lang/String; = "com.android.updater"

.field private static final lockThread:Ljava/lang/Object;

.field private static mContext:Landroid/content/Context;

.field private static mErrCode:I

.field private static mErrMsg:Ljava/lang/String;

.field private static mJobRunning:Z

.field private static mRemoveDLjob:Z


# instance fields
.field private mIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    const-string v0, "htcCOTAClient"

    sput-object v0, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    .line 37
    sput-boolean v2, Lcom/htc/htcCOTAClient/DownloadReceiver;->LOCAL_LOGV:Z

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/htcCOTAClient/DownloadReceiver;->lockThread:Ljava/lang/Object;

    .line 41
    sput-boolean v2, Lcom/htc/htcCOTAClient/DownloadReceiver;->mJobRunning:Z

    .line 42
    sput-boolean v2, Lcom/htc/htcCOTAClient/DownloadReceiver;->mRemoveDLjob:Z

    .line 47
    const-class v0, Lcom/htc/htcCOTAClient/DownloadReceiver$CWPkgDownloadCompletedReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/htcCOTAClient/DownloadReceiver;->DM_NOTIFICATION_CLASS:Ljava/lang/String;

    .line 54
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.htc.htcCOTAClient"

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/htcCOTAClient/DownloadReceiver;->DM_NOTIFICATION_CLASS:Ljava/lang/String;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/htcCOTAClient/DownloadReceiver;->QUERY_ARGS_DELETE_APK_IN_DL:[Ljava/lang/String;

    .line 57
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "entity"

    aput-object v1, v0, v3

    const-string v1, "status"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "lastmod"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/htcCOTAClient/DownloadReceiver;->QUERY_PROJECTION:[Ljava/lang/String;

    .line 85
    const/4 v0, -0x1

    sput v0, Lcom/htc/htcCOTAClient/DownloadReceiver;->mErrCode:I

    .line 86
    const-string v0, "NA"

    sput-object v0, Lcom/htc/htcCOTAClient/DownloadReceiver;->mErrMsg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 93
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/htc/htcCOTAClient/DownloadReceiver;->QUERY_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 33
    invoke-static {}, Lcom/htc/htcCOTAClient/DownloadReceiver;->removeAllCOTADownloads()V

    return-void
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 33
    sget v0, Lcom/htc/htcCOTAClient/DownloadReceiver;->mErrCode:I

    return v0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    sput p0, Lcom/htc/htcCOTAClient/DownloadReceiver;->mErrCode:I

    return p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/htc/htcCOTAClient/DownloadReceiver;->mErrMsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    sput-object p0, Lcom/htc/htcCOTAClient/DownloadReceiver;->mErrMsg:Ljava/lang/String;

    return-object p0
.end method

.method private static removeAllCOTADownloads()V
    .locals 5

    .prologue
    .line 216
    sget-object v2, Lcom/htc/htcCOTAClient/DownloadReceiver;->lockThread:Ljava/lang/Object;

    monitor-enter v2

    .line 217
    :try_start_0
    sget-boolean v1, Lcom/htc/htcCOTAClient/DownloadReceiver;->mRemoveDLjob:Z

    if-eqz v1, :cond_0

    .line 218
    sget-object v1, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    const-string v3, "Can\'t remove! Another thread is running for COTA Package."

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    monitor-exit v2

    .line 237
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 222
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/htc/htcCOTAClient/DownloadReceiver;->mRemoveDLjob:Z

    .line 223
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 226
    sget-object v1, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    const-string v2, "remove All COTA Downloads!"

    invoke-static {v1, v2}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :try_start_1
    sget-object v1, Lcom/htc/htcCOTAClient/DownloadReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "notificationpackage=? AND notificationclass=?"

    sget-object v4, Lcom/htc/htcCOTAClient/DownloadReceiver;->QUERY_ARGS_DELETE_APK_IN_DL:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 233
    sget-object v2, Lcom/htc/htcCOTAClient/DownloadReceiver;->lockThread:Ljava/lang/Object;

    monitor-enter v2

    .line 234
    const/4 v1, 0x0

    :try_start_2
    sput-boolean v1, Lcom/htc/htcCOTAClient/DownloadReceiver;->mRemoveDLjob:Z

    .line 235
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 223
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_4
    sget-object v1, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not remove COTA download record from download provider. error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 233
    sget-object v2, Lcom/htc/htcCOTAClient/DownloadReceiver;->lockThread:Ljava/lang/Object;

    monitor-enter v2

    .line 234
    const/4 v1, 0x0

    :try_start_5
    sput-boolean v1, Lcom/htc/htcCOTAClient/DownloadReceiver;->mRemoveDLjob:Z

    .line 235
    monitor-exit v2

    goto :goto_0

    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1

    .line 233
    :catchall_3
    move-exception v1

    sget-object v2, Lcom/htc/htcCOTAClient/DownloadReceiver;->lockThread:Ljava/lang/Object;

    monitor-enter v2

    .line 234
    const/4 v3, 0x0

    :try_start_6
    sput-boolean v3, Lcom/htc/htcCOTAClient/DownloadReceiver;->mRemoveDLjob:Z

    .line 235
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v1

    :catchall_4
    move-exception v1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v1
.end method

.method private triggerDownload()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 140
    iget-object v9, p0, Lcom/htc/htcCOTAClient/DownloadReceiver;->mIntent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v5

    .line 141
    .local v5, pkgURL:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/htcCOTAClient/DownloadReceiver;->mIntent:Landroid/content/Intent;

    const-string v10, "wifiOnly"

    invoke-virtual {v9, v10, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 142
    .local v1, bWiFiOnly:Z
    iget-object v9, p0, Lcom/htc/htcCOTAClient/DownloadReceiver;->mIntent:Landroid/content/Intent;

    const-string v10, "NotifyCaption"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 143
    .local v7, strNotifyCaption:Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    const-string v7, "NA"

    .line 144
    :cond_1
    sget-object v9, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CW package URL:["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    sget-object v9, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Is Wifi only:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    sget-object v9, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "strNotifyCaption:["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    sget-object v9, Lcom/htc/htcCOTAClient/DownloadReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 149
    .local v2, cr:Landroid/content/ContentResolver;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 151
    .local v8, values:Landroid/content/ContentValues;
    if-eqz v1, :cond_3

    .line 153
    sget-object v9, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    const-string v10, "User selected to download APK by WIFI only."

    invoke-static {v9, v10}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v9, "restriction"

    const/16 v10, 0x11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 161
    :goto_0
    const-string v9, "otaupdate"

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 162
    const-string v9, "uri"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v9, "entity"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v9, "notificationextras"

    const-string v10, "skipcheckmimetype"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v9, "destination"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 168
    const-string v9, "visibility"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 169
    const-string v9, "title"

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v9, "hint"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v9, "no_integrity"

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 175
    const-string v9, "notificationpackage"

    const-string v10, "com.htc.htcCOTAClient"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v9, "notificationclass"

    sget-object v10, Lcom/htc/htcCOTAClient/DownloadReceiver;->DM_NOTIFICATION_CLASS:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :try_start_0
    sget-object v9, Lcom/htc/htcCOTAClient/DownloadReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "com.android.updater"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget v0, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 186
    .local v0, OtherUid:I
    sget-object v9, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Insert APK Download task: OTHER_UID = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v9, "otheruid"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 193
    .end local v0           #OtherUid:I
    :goto_1
    const/4 v6, 0x0

    .line 194
    .local v6, rtnURI:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 196
    .local v3, cursor:Landroid/database/Cursor;
    :try_start_1
    sget-object v9, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v9, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    if-nez v6, :cond_4

    .line 197
    new-instance v9, Landroid/database/SQLException;

    const-string v10, "Could not insert CW package download"

    invoke-direct {v9, v10}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 200
    :catch_0
    move-exception v4

    .line 201
    .local v4, e:Ljava/lang/Exception;
    :try_start_2
    sget-object v9, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not start CW package download:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    if-eqz v3, :cond_2

    .line 204
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 205
    :cond_2
    const/4 v3, 0x0

    .line 206
    const/4 v6, 0x0

    .line 208
    .end local v4           #e:Ljava/lang/Exception;
    :goto_2
    return-void

    .line 157
    .end local v3           #cursor:Landroid/database/Cursor;
    .end local v6           #rtnURI:Landroid/net/Uri;
    :cond_3
    sget-object v9, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    const-string v10, "Set Restriction: NO ROAMING"

    invoke-static {v9, v10}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v9, "restriction"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 188
    :catch_1
    move-exception v4

    .line 190
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v9, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Insert APK Download task:NameNotFoundException. e:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 199
    .end local v4           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3       #cursor:Landroid/database/Cursor;
    .restart local v6       #rtnURI:Landroid/net/Uri;
    :cond_4
    :try_start_3
    sget-object v9, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Start a new download, URL:["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 203
    if-eqz v3, :cond_5

    .line 204
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 205
    :cond_5
    const/4 v3, 0x0

    .line 206
    const/4 v6, 0x0

    .line 207
    goto :goto_2

    .line 203
    :catchall_0
    move-exception v9

    if-eqz v3, :cond_6

    .line 204
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 205
    :cond_6
    const/4 v3, 0x0

    .line 206
    const/4 v6, 0x0

    throw v9
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 96
    sget-object v2, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    const-string v3, "Receive COTA download intent"

    invoke-static {v2, v3}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 99
    .local v0, nStart:J
    sput-object p1, Lcom/htc/htcCOTAClient/DownloadReceiver;->mContext:Landroid/content/Context;

    .line 100
    iput-object p2, p0, Lcom/htc/htcCOTAClient/DownloadReceiver;->mIntent:Landroid/content/Intent;

    .line 101
    new-instance v2, Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 102
    sget-object v2, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time in DownloadReceiver main thread:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " milli-seconds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 111
    sget-object v2, Lcom/htc/htcCOTAClient/DownloadReceiver;->lockThread:Ljava/lang/Object;

    monitor-enter v2

    .line 112
    :try_start_0
    sget-boolean v1, Lcom/htc/htcCOTAClient/DownloadReceiver;->mJobRunning:Z

    if-eqz v1, :cond_0

    .line 113
    sget-object v1, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    const-string v3, "Another thread is running for DownloadReceiver."

    invoke-static {v1, v3}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    monitor-exit v2

    .line 134
    :goto_0
    return-void

    .line 117
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/htc/htcCOTAClient/DownloadReceiver;->mJobRunning:Z

    .line 119
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 120
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 123
    :try_start_1
    invoke-static {}, Lcom/htc/htcCOTAClient/DownloadReceiver;->removeAllCOTADownloads()V

    .line 124
    invoke-direct {p0}, Lcom/htc/htcCOTAClient/DownloadReceiver;->triggerDownload()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 129
    sget-object v2, Lcom/htc/htcCOTAClient/DownloadReceiver;->lockThread:Ljava/lang/Object;

    monitor-enter v2

    .line 130
    const/4 v1, 0x0

    :try_start_2
    sput-boolean v1, Lcom/htc/htcCOTAClient/DownloadReceiver;->mJobRunning:Z

    .line 131
    sget-object v1, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    const-string v3, "== DownloadReceiver finished =="

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 119
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    sget-object v1, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trigger download error. Err:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/htcCOTAClient/COTAReceiver$CLOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 129
    sget-object v2, Lcom/htc/htcCOTAClient/DownloadReceiver;->lockThread:Ljava/lang/Object;

    monitor-enter v2

    .line 130
    const/4 v1, 0x0

    :try_start_5
    sput-boolean v1, Lcom/htc/htcCOTAClient/DownloadReceiver;->mJobRunning:Z

    .line 131
    sget-object v1, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    const-string v3, "== DownloadReceiver finished =="

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    monitor-exit v2

    goto :goto_0

    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1

    .line 129
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_3
    move-exception v1

    sget-object v2, Lcom/htc/htcCOTAClient/DownloadReceiver;->lockThread:Ljava/lang/Object;

    monitor-enter v2

    .line 130
    const/4 v3, 0x0

    :try_start_6
    sput-boolean v3, Lcom/htc/htcCOTAClient/DownloadReceiver;->mJobRunning:Z

    .line 131
    sget-object v3, Lcom/htc/htcCOTAClient/DownloadReceiver;->TAG:Ljava/lang/String;

    const-string v4, "== DownloadReceiver finished =="

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v1

    :catchall_4
    move-exception v1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v1
.end method
