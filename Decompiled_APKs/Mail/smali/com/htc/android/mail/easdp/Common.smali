.class public Lcom/htc/android/mail/easdp/Common;
.super Ljava/lang/Object;
.source "Common.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/easdp/Common$AccountInfo;
    }
.end annotation


# static fields
.field public static final AUTHORIZATION:Ljava/lang/String; = "Authorization"

.field public static final DEBUG:Z = false

.field public static final EAS_AUTD_STATE:Ljava/lang/String; = "AutdState"

.field public static final EAS_CALENDAR:Ljava/lang/String; = "Calendar"

.field public static final EAS_CLASS:Ljava/lang/String; = "Class"

.field public static final EAS_CONTACTS:Ljava/lang/String; = "Contacts"

.field public static final EAS_DIRECTPUSH_CONFIG_FILE:Ljava/lang/String; = "dp_config.prefs"

.field public static final EAS_DIRECTPUSH_TEMP_DIRECTORY:Ljava/lang/String; = "/data/data/com.htc.android.mail/app_temp/"

.field public static final EAS_DP_CHANGE_OCCURRED:I = 0x2

.field public static final EAS_DP_ERROR:I = 0x8

.field public static final EAS_DP_HEARTBEAT_OUT_RANGE:I = 0x5

.field public static final EAS_DP_HTC_EXT_ERR_NETWORK:I = 0xc

.field public static final EAS_DP_HTC_EXT_FORCE_SHUTDOWN:I = 0x14

.field public static final EAS_DP_HTC_EXT_RETRY_NOW:I = 0xb

.field public static final EAS_DP_NEED_FOLDER_SYNC:I = 0x7

.field public static final EAS_DP_TIMEOUT:I = 0x1

.field public static final EAS_EMAIL:Ljava/lang/String; = "Email"

.field public static final EAS_ENCODING:Ljava/lang/String; = "UTF-8"

.field public static final EAS_FOLDER:Ljava/lang/String; = "Folder"

.field public static final EAS_FOLDERS:Ljava/lang/String; = "Folders"

.field public static final EAS_FOLDER_CALENDARS_TYPE:I = 0x8

.field public static final EAS_FOLDER_CONTACTS_TYPE:I = 0x9

.field public static final EAS_FOLDER_DELETE_ITEMS_TYPE:I = 0x4

.field public static final EAS_FOLDER_DRAFTS_TYPE:I = 0x3

.field public static final EAS_FOLDER_INBOX_TYPE:I = 0x2

.field public static final EAS_FOLDER_JOURNAL_TYPE:I = 0xb

.field public static final EAS_FOLDER_NOTES_TYPE:I = 0xa

.field public static final EAS_FOLDER_OUTBOX_TYPE:I = 0x6

.field public static final EAS_FOLDER_SENT_ITEMS_TYPE:I = 0x5

.field public static final EAS_FOLDER_TASKS_TYPE:I = 0x7

.field public static final EAS_FOLDER_USER_CREATE_TYPE:I = 0x1

.field public static final EAS_HB_INTVAL:Ljava/lang/String; = "HeartbeatInterval"

.field public static EAS_HTTP_AGENT:Ljava/lang/String; = null

.field public static final EAS_HTTP_DEFAULT_AGENT:Ljava/lang/String; = "Android-EAS/4.00"

.field public static final EAS_ID:Ljava/lang/String; = "Id"

.field public static final EAS_MAX_FOLDERS:Ljava/lang/String; = "MaxFolders"

.field public static final EAS_PING:Ljava/lang/String; = "Ping"

.field public static final EAS_PING_CHANGE_OCCURRED:Ljava/lang/String; = "2"

.field public static final EAS_PING_CP:I = 0xd

.field public static final EAS_PING_HB_INTVAL:I = 0x4b0

.field public static final EAS_PING_HEARTBEAT_OUT_RANGE:Ljava/lang/String; = "5"

.field public static final EAS_PING_NEED_FOLDER_SYNC:Ljava/lang/String; = "7"

.field public static final EAS_PING_TBL:[Ljava/lang/String; = null

.field public static final EAS_PING_TIMEOUT:Ljava/lang/String; = "1"

.field public static final EAS_STATUS:Ljava/lang/String; = "Status"

.field public static final EAS_TASKS:Ljava/lang/String; = "Tasks"

.field public static final ERROR_BACKEND_ERROR:I = 0x1fa

.field public static final ERROR_CERTIFICATE_EXPIRED:I = 0x206

.field public static final ERROR_CERTIFICATE_MISMATCH:I = 0x205

.field public static final ERROR_CERTIFICATE_NOT_VALID_YET:I = 0x207

.field public static final ERROR_CERTIFICATE_UNTRUST:I = 0x204

.field public static final ERROR_CONNECTION_ABORT:I = 0x1c5

.field public static final ERROR_CONNECTION_FAIL:I = 0x1c2

.field public static final ERROR_HOST_DOWN_ERROR:I = 0x1c4

.field public static final ERROR_HTTP_BAD_REQUEST:I = 0x190

.field public static final ERROR_HTTP_UNAUTHORIZED:I = 0x191

.field public static final ERROR_IO_ERROR:I = 0x322

.field public static final ERROR_NETWORK_NOT_READY:I = 0x2be

.field public static final ERROR_NETWORK_UNREACHABLE:I = 0x1c6

.field public static final ERROR_SERVER_BUSY:I = 0x1f7

.field public static final ERROR_SERVER_ERROR:I = 0x1f4

.field public static final ERROR_SOCKET_ERROR:I = 0x1fc

.field public static final ERROR_SOCKET_NOT_CONNECTED:I = 0x1fb

.field public static final ERROR_SOCKET_TIMEOUT:I = 0x1fd

.field public static final ERROR_SSL_FAIL:I = 0x203

.field public static final ERROR_UNDEFINE_ERROR:I = 0x320

.field public static final ERROR_UNKNOW_HTTP_ERROR:I = 0x1c3

.field public static final HTTP_400_ERROR:Ljava/lang/String; = "Directpush connection response a error 400."

.field public static final HTTP_401_ERROR:Ljava/lang/String; = "Directpush connection response a error 401."

.field public static final SYNC_FAIL_POSTFIX:Ljava/lang/String; = "_fail"

.field public static final SYNC_FLAG_PREFIX:Ljava/lang/String; = "in_sync_"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/mail/easdp/Common;->EAS_HTTP_AGENT:Ljava/lang/String;

    .line 115
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Ping"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "AutdState"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Status"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "HeartbeatInterval"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Folders"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Folder"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Class"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "MaxFolders"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/mail/easdp/Common;->EAS_PING_TBL:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 103
    return-void
.end method

.method public static setUserAgent(Landroid/content/Context;)V
    .locals 5
    .parameter "mContext"

    .prologue
    .line 129
    :try_start_0
    sget-object v2, Lcom/htc/android/mail/easdp/Common;->EAS_HTTP_AGENT:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 131
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android-EAS/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/android/mail/easdp/Common;->EAS_HTTP_AGENT:Ljava/lang/String;

    .line 141
    .end local v1           #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-void

    .line 134
    .restart local v1       #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_1
    const-string v2, "Android-EAS/4.00"

    sput-object v2, Lcom/htc/android/mail/easdp/Common;->EAS_HTTP_AGENT:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    .end local v1           #packageInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "Android-EAS/4.00"

    sput-object v2, Lcom/htc/android/mail/easdp/Common;->EAS_HTTP_AGENT:Ljava/lang/String;

    .line 139
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
