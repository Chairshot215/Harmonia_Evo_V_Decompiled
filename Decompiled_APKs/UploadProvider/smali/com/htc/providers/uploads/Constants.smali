.class public Lcom/htc/providers/uploads/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ACTION_HIDE:Ljava/lang/String; = "android.intent.action.UPLOAD_HIDE"

.field public static final ACTION_LIST:Ljava/lang/String; = "android.intent.action.UPLOAD_LIST"

.field public static final ACTION_OPEN:Ljava/lang/String; = "android.intent.action.UPLOAD_OPEN"

.field public static final ACTION_RETRY:Ljava/lang/String; = "android.intent.action.UPLOAD_WAKEUP"

.field public static final ALARM_REASON:Ljava/lang/String; = "alarm_reason"

.field public static final BUFFER_SIZE:I = 0x1000

.field public static final DEFAULT_DL_BINARY_EXTENSION:Ljava/lang/String; = ".bin"

.field public static final DEFAULT_DL_FILENAME:Ljava/lang/String; = "uploadfile"

.field public static final DEFAULT_DL_HTML_EXTENSION:Ljava/lang/String; = ".html"

.field public static final DEFAULT_DL_SUBDIR:Ljava/lang/String; = "/upload"

.field public static final DEFAULT_DL_TEXT_EXTENSION:Ljava/lang/String; = ".txt"

.field public static final DEFAULT_USER_AGENT:Ljava/lang/String; = "AndroidUploadManager"

.field public static final FACEBOOK:Ljava/lang/String; = "facebook"

.field public static final FILENAME_SEQUENCE_SEPARATOR:Ljava/lang/String; = "-"

.field public static final FLICKR:Ljava/lang/String; = "flickr"

.field public static final INSERT_LIMIT:I = 0xa

.field public static final KNOWN_SPURIOUS_FILENAME:Ljava/lang/String; = "lost+found"

.field private static final LOCAL_LOGV:Z = false

.field private static final LOCAL_LOGVV:Z = false

#the value of this static final field might be set in the static constructor
.field public static final LOGV:Z = false

.field public static final LOGVV:Z = true

.field public static final LOG_HTTP_POST:Z = false

.field public static final LOG_SERVICE:Z = false

.field public static final LOG_THREAD:Z = false

.field public static final MAXMUM_PHOTO_NUM:I = 0x10000

.field public static final MAX_RETRIES:I = 0x3

.field public static final MAX_UPLOADS:I = 0x3e8

.field public static final MIMETYPE_APK:Ljava/lang/String; = "application/vnd.android.package"

.field public static final MIMETYPE_DRM_MESSAGE:Ljava/lang/String; = "application/vnd.oma.drm.message"

.field public static final MIN_PROGRESS_STEP:I = 0x1000

.field public static final MIN_PROGRESS_TIME:J = 0x1f4L

.field public static final NEWCREATEALBUMID:Ljava/lang/String; = "0"

.field public static final PHOTOSTREAMID:Ljava/lang/String; = "-1"

.field public static final RETRY_FIRST_DELAY:I = 0x1e

.field public static final SCHEDULER_ALARM:Ljava/lang/String; = "scheduler_alarm"

.field public static final START_AUTO_UPLOAD_SERVICE_REASON:Ljava/lang/String; = "auto_upload_service_reason"

.field public static final START_UPLOAD:Ljava/lang/String; = "start_upload"

.field public static final TAG:Ljava/lang/String; = "UploadManager"

.field public static final T_MOBILE:Ljava/lang/String; = "tmobile"

.field public static final UI_PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_UPLOAD_DATA"

.field public static final UPDATE_NOTIFY:Ljava/lang/String; = "UPDATE_NOTIFY"

.field public static final WIFI_AVAILABLE:Ljava/lang/String; = "wifi_available"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/providers/uploads/Constants;->LOGV:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
