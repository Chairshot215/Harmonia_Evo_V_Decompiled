.class public Lcom/android/providers/downloads/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ACTION_HIDE:Ljava/lang/String; = "android.intent.action.DOWNLOAD_HIDE"

.field public static final ACTION_LIST:Ljava/lang/String; = "android.intent.action.DOWNLOAD_LIST"

.field public static final ACTION_OPEN:Ljava/lang/String; = "android.intent.action.DOWNLOAD_OPEN"

.field public static final ACTION_RETRY:Ljava/lang/String; = "android.intent.action.DOWNLOAD_WAKEUP"

.field public static final BUFFER_SIZE:I = 0x1000

.field public static final COLUMN_AUTH_HEADER_NAME:Ljava/lang/String; = "auth_header_name"

.field public static final COLUMN_AUTH_HEADER_VALUE:Ljava/lang/String; = "auth_header_value"

.field public static final DEFAULT_DL_BINARY_EXTENSION:Ljava/lang/String; = ".bin"

.field public static final DEFAULT_DL_FILENAME:Ljava/lang/String; = "downloadfile"

.field public static final DEFAULT_DL_HTML_EXTENSION:Ljava/lang/String; = ".html"

.field public static final DEFAULT_DL_SUBDIR:Ljava/lang/String; = null

.field public static final DEFAULT_DL_TEXT_EXTENSION:Ljava/lang/String; = ".txt"

.field public static final DEFAULT_USER_AGENT:Ljava/lang/String; = "AndroidDownloadManager"

.field public static final ETAG:Ljava/lang/String; = "etag"

.field public static final FAILED_CONNECTIONS:Ljava/lang/String; = "numfailed"

.field public static final FILENAME_SEQUENCE_SEPARATOR:Ljava/lang/String; = "-"

.field public static final KNOWN_SPURIOUS_FILENAME:Ljava/lang/String; = "lost+found"

.field private static final LOCAL_LOGV:Z = false

.field private static final LOCAL_LOGVV:Z = false

.field public static final LOG:Z = false

#the value of this static final field might be set in the static constructor
.field public static final LOGV:Z = false

#the value of this static final field might be set in the static constructor
.field public static final LOGVV:Z = false

.field static final LOGX:Z = false

.field public static final MARKET_PACKAGE_NAME:Ljava/lang/String; = "com.android.vending"

.field public static final MAX_DOWNLOADS:I = 0x1f4

.field public static final MAX_DOWNLOADS_INSERVICE:I = 0x258

.field public static final MAX_REDIRECTS:I = 0x5

.field public static final MAX_RETRIES:I = 0x5

.field public static final MAX_RETRY_AFTER:I = 0x15180

.field public static final MAX_TRIMDBCOUNT:I = 0x64

.field public static final MEDIA_SCANNED:Ljava/lang/String; = "scanned"

.field public static final MIMETYPE_APK:Ljava/lang/String; = "application/vnd.android.package"

.field public static final MIMETYPE_DRM_MESSAGE:Ljava/lang/String; = "application/vnd.oma.drm.message"

.field public static final MIN_PROGRESS_STEP:I = 0x1000

.field public static final MIN_PROGRESS_TIME:J = 0x5dcL

.field public static final MIN_RETRY_AFTER:I = 0x1e

.field public static final NO_SYSTEM_FILES:Ljava/lang/String; = "no_system"

.field public static final OTA_UPDATE:Ljava/lang/String; = "otaupdate"

.field public static final RECOVERY_DIRECTORY:Ljava/lang/String; = "recovery"

.field public static final RETRY_AFTER_X_REDIRECT_COUNT:Ljava/lang/String; = "method"

.field public static final RETRY_FIRST_DELAY:I = 0x1e

.field public static final TAG:Ljava/lang/String; = "DownloadManager"

.field public static final UID:Ljava/lang/String; = "uid"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/downloads/Constants;->DEFAULT_DL_SUBDIR:Ljava/lang/String;

    .line 177
    sput-boolean v2, Lcom/android/providers/downloads/Constants;->LOGV:Z

    .line 181
    sput-boolean v2, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
