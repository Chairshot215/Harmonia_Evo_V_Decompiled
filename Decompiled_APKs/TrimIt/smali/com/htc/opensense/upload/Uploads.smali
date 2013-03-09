.class public final Lcom/htc/opensense/upload/Uploads;
.super Ljava/lang/Object;
.source "Uploads.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/upload/Uploads$AutoUploadUploadColumns;,
        Lcom/htc/opensense/upload/Uploads$TagColumns;,
        Lcom/htc/opensense/upload/Uploads$BatchColumns;,
        Lcom/htc/opensense/upload/Uploads$UploadColumns;,
        Lcom/htc/opensense/upload/Uploads$TagExtra;,
        Lcom/htc/opensense/upload/Uploads$MediumExtra;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.htc.providers.uploads"

.field public static final AUTHORITY_URI:Landroid/net/Uri; = null

.field public static final BATCH_ID_ACTION:Ljava/lang/String; = "UploadsObserver"

.field public static final BUNDLE_FILE_ID:Ljava/lang/String; = "message_file_id"

.field public static final BUNDLE_FILE_STATUS:Ljava/lang/String; = "message_file_status"

.field public static final BUNDLE_STATUS_CHANGE_TIME:Ljava/lang/String; = "message_status_change_time"

.field public static final CONTROL_PAUSE:I = 0x1

.field public static final CONTROL_RUN:I = 0x0

.field public static final CONTROL_STOP:I = 0x2

.field public static final CREATE_ALBUM_MODE_CREATE:I = 0x1

.field public static final CREATE_ALBUM_MODE_NOT_CREATE:I = 0x0

.field public static final DESTINATION_CACHE_PARTITION:I = 0x1

.field public static final DESTINATION_CACHE_PARTITION_PURGEABLE:I = 0x2

.field public static final DESTINATION_DATA_CACHE:I = 0x3

.field public static final DESTINATION_EXTERNAL:I = 0x0

.field public static final EXTRA_AUTO_UPLOAD_DAILY:Ljava/lang/String; = "daily"

.field public static final EXTRA_AUTO_UPLOAD_DEFAULT_ALBUM:Ljava/lang/String; = "default_album"

.field public static final EXTRA_AUTO_UPLOAD_DEFAULT_ALBUM_NAME:Ljava/lang/String; = "default_album_name"

.field public static final EXTRA_AUTO_UPLOAD_DEFAULT_ALBUM_PRIVACY:Ljava/lang/String; = "default_album_privacy"

.field public static final EXTRA_AUTO_UPLOAD_DEFAULT_PRIVACY:Ljava/lang/String; = "default_privacy"

.field public static final EXTRA_AUTO_UPLOAD_FREQUENCY:Ljava/lang/String; = "frequency"

.field public static final EXTRA_AUTO_UPLOAD_GET_ALBUM:Ljava/lang/String; = "get_album"

.field public static final EXTRA_AUTO_UPLOAD_GET_ALBUM_LIST:Ljava/lang/String; = "get_album_list"

.field public static final EXTRA_AUTO_UPLOAD_IMMEDIATELY:Ljava/lang/String; = "immediately"

.field public static final EXTRA_AUTO_UPLOAD_REQUEST:Ljava/lang/String; = "request"

.field public static final EXTRA_AUTO_UPLOAD_REQUEST_RESULT:Ljava/lang/String; = "request_result"

.field public static final EXTRA_AUTO_UPLOAD_SERVICE_ACCOUNT_TYPE:Ljava/lang/String; = "service_account_type"

.field public static final EXTRA_AUTO_UPLOAD_SERVICE_NAME:Ljava/lang/String; = "service_name"

.field public static final EXTRA_AUTO_UPLOAD_SERVICE_TITLE:Ljava/lang/String; = "service_title"

.field public static final EXTRA_AUTO_UPLOAD_UPLOAD_SERVICE_COMPONENT:Ljava/lang/String; = "upload_service_component"

.field public static final EXTRA_AUTO_UPLOAD_WIFI_ONLY:Ljava/lang/String; = "wifi_only"

.field public static final HTC_UPLOADER_AUTO_UPLOAD_SERVICE_CLASS:Ljava/lang/String; = "com.htc.providers.uploads.AutoUploadService"

.field public static final HTC_UPLOADER_PACKAGE:Ljava/lang/String; = "com.htc.providers.uploads"

.field public static final INTENT_AUTO_UPLOAD_REQUEST:Ljava/lang/String; = "com.htc.providers.uploads.action.AUTO_UPLOAD_REQUEST"

.field public static final INTENT_AUTO_UPLOAD_RESPONSE:Ljava/lang/String; = "com.htc.providers.uploads.action.AUTO_UPLOAD_RESPONSE"

.field public static final INTENT_BATCH_ID_PARAM:Ljava/lang/String; = "com.htc.providers.uploads.intent_batch_id"

.field public static final INTENT_COMPLETE_BATCH_ID_PARAM:Ljava/lang/String; = "com.htc.providers.uploads.intent_complete_insert_time"

.field public static final INTENT_INSERT_TIME_PARAM:Ljava/lang/String; = "com.htc.providers.uploads.intent_insert_time"

.field public static final INTENT_MODE_PARAM:Ljava/lang/String; = "com.htc.providers.uploads.intent_mode"

.field public static final INTENT_PROVIDER_PARAM:Ljava/lang/String; = "com.htc.providers.uploads.intent_provider"

.field public static final INTENT_STATUS_CHANGE:Ljava/lang/String; = "com.htc.providers.uploads.INTENT_STATUS_CHANGE"

.field public static final INTENT_STATUS_PARAM:Ljava/lang/String; = "com.htc.providers.uploads.intent_status"

.field public static final INTENT_VISIBILITY_PARAM:Ljava/lang/String; = "com.htc.providers.uploads.intent_visibility"

.field public static final MESSAGE_STATUS_CHANGE:I = 0x1

.field public static final NEWCREATEALBUMID:Ljava/lang/String; = "0"

.field public static final NOTIFICATION_CLICKED_ACTION:Ljava/lang/String; = "android.intent.action.UPLOAD_NOTIFICATION_CLICKED"

.field public static final PHOTOSTREAMID:Ljava/lang/String; = "-1"

.field public static final RAWQUERY:Ljava/lang/String; = "rawquery"

.field public static final RAWQUERY_URI:Landroid/net/Uri; = null

.field public static final STATUS_ALBUM_INVALID:I = 0x2bc

.field public static final STATUS_BAD_REQUEST:I = 0x190

.field public static final STATUS_BATCH_WAITING:I = 0xbc

.field public static final STATUS_CANCELED:I = 0x1ea

.field public static final STATUS_CANCELLED:I = 0x1ea

.field public static final STATUS_ERROR:I = 0x1eb

.field public static final STATUS_FILE_ERROR:I = 0x1ec

.field public static final STATUS_HTTP_DATA_ERROR:I = 0x1ef

.field public static final STATUS_HTTP_EXCEPTION:I = 0x1f0

.field public static final STATUS_HTTP_SERVER_ERROR:I = 0x1f6

.field public static final STATUS_LENGTH_REQUIRED:I = 0x19b

.field public static final STATUS_LOGIN_SESSION_INVALID:I = 0x1e9

.field public static final STATUS_NETWORK_ERROR:I = 0x1f5

.field public static final STATUS_NOT_ACCEPTABLE:I = 0x196

.field public static final STATUS_NOT_AUTHORIZED:I = 0x191

.field public static final STATUS_NOT_LOGIN:I = 0x322

.field public static final STATUS_PENDING:I = 0xbe

.field public static final STATUS_PENDING_PAUSED:I = 0xbf

.field public static final STATUS_PRECONDITION_FAILED:I = 0x19c

.field public static final STATUS_REDIRECTION:I = 0x12c

.field public static final STATUS_REQUEST_FAILED:I = 0x321

.field public static final STATUS_REQUEST_SUCCESSFUL:I = 0x320

.field public static final STATUS_RESOURCE_WAITING:I = 0xbd

.field public static final STATUS_RUNNING:I = 0xc0

.field public static final STATUS_RUNNING_PAUSED:I = 0xc1

.field public static final STATUS_SEND_COMPLETE_NO_ACK:I = 0xc2

.field public static final STATUS_SUCCESS:I = 0xc8

.field public static final STATUS_UNHANDLED_HTTP_CODE:I = 0x1ee

.field public static final STATUS_UNHANDLED_REDIRECT:I = 0x1ed

.field public static final STATUS_UNKNOWN_ERROR:I = 0x1eb

.field public static final STATUS_UNKNOW_STATUS:I = 0x258

.field public static final STATUS_WAITING:I = 0x64

.field public static final UPLOAD_COMPLETED_ACTION:Ljava/lang/String; = "android.intent.action.UPLOAD_COMPLETED"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    const-string v0, "content://com.htc.providers.uploads"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/upload/Uploads;->AUTHORITY_URI:Landroid/net/Uri;

    .line 55
    sget-object v0, Lcom/htc/opensense/upload/Uploads;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "rawquery"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/upload/Uploads;->RAWQUERY_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static isStatusClientError(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 558
    const/16 v0, 0x190

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1f5

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStatusCompleted(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 573
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x12c

    if-lt p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x190

    if-lt p0, v0, :cond_2

    const/16 v0, 0x258

    if-ge p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStatusError(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 551
    const/16 v0, 0x190

    if-lt p0, v0, :cond_0

    const/16 v0, 0x258

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStatusInformational(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 519
    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    const/16 v0, 0xc8

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStatusPending(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 537
    const/16 v0, 0xbe

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStatusRunning(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 533
    const/16 v0, 0xc0

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc2

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStatusServerError(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 565
    const/16 v0, 0x1f0

    if-lt p0, v0, :cond_0

    const/16 v0, 0x258

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStatusSuccess(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 544
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStatusSuspended(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 527
    const/16 v0, 0xbf

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc1

    if-eq p0, v0, :cond_0

    const/16 v0, 0xbc

    if-eq p0, v0, :cond_0

    const/16 v0, 0xbd

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
