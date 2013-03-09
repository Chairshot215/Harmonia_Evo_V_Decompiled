.class public final Lcom/htc/opensense/social/Uploads;
.super Ljava/lang/Object;
.source "Uploads.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final AID:Ljava/lang/String; = "aid"

.field public static final ALBUM_NAME:Ljava/lang/String; = "album_name"

.field public static final AUTHORUTY:Ljava/lang/String; = "uploads"

.field public static final BACK_BY_BACK_MODE:I = 0x0

.field public static final BACTH_CONTENT_URI:Landroid/net/Uri; = null

.field public static final BATCH_ID:Ljava/lang/String; = "batch_id"

.field public static final BATCH_ID_ACTION:Ljava/lang/String; = "UploadsObserver"

.field public static final BATCH_UPLOAD_MODE:I = 0x1

.field public static final BUNDLE_FILE_ID:Ljava/lang/String; = "message_file_id"

.field public static final BUNDLE_FILE_STATUS:Ljava/lang/String; = "message_file_status"

.field public static final BUNDLE_STATUS_CHANGE_TIME:Ljava/lang/String; = "message_status_change_time"

.field public static final CONTENT_TYPE_OTHER:I = 0x3

.field public static final CONTENT_TYPE_PHOTO:I = 0x1

.field public static final CONTENT_TYPE_SCREENSHOT:I = 0x2

.field public static final CONTROL:Ljava/lang/String; = "control"

.field public static final CONTROL_PAUSE:I = 0x1

.field public static final CONTROL_RUN:I = 0x0

.field public static final CONTROL_STOP:I = 0x2

.field public static final CREATE_ALBUM_AFTER_UPLOAD:I = 0x2

.field public static final CREATE_ALBUM_BEFORE_UPLOAD:I = 0x1

.field public static final CREATE_ALBUM_MODE:Ljava/lang/String; = "create_album_mode"

.field public static final CURRENT_BYTES:Ljava/lang/String; = "current_bytes"

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final DESTINATION_CACHE_PARTITION:I = 0x1

.field public static final DESTINATION_CACHE_PARTITION_PURGEABLE:I = 0x2

.field public static final DESTINATION_DATA_CACHE:I = 0x3

.field public static final DESTINATION_EXTERNAL:I = 0x0

.field public static final FAILED_CONNECTIONS:Ljava/lang/String; = "numfailed"

.field public static final FILENAME:Ljava/lang/String; = "_data"

.field public static final FILENAME_HINT:Ljava/lang/String; = "hint"

.field public static final FILE_URI:Ljava/lang/String; = "file_uri"

.field public static final HIDDEN_FROM_PUBLIC_SEARCH:I = 0x2

.field public static final HIDDEN_GLOBAL_SEARCH:I = 0x1

.field public static final INSERT_TIME:Ljava/lang/String; = "insert_time"

.field public static final INTENT_BATCH_ID_PARAM:Ljava/lang/String; = "com.htc.providers.uploads.intent_batch_id"

.field public static final INTENT_COMPLETE_BATCH_ID_PARAM:Ljava/lang/String; = "com.htc.providers.uploads.intent_complete_insert_time"

.field public static final INTENT_INSERT_TIME_PARAM:Ljava/lang/String; = "com.htc.providers.uploads.intent_insert_time"

.field public static final INTENT_MODE_PARAM:Ljava/lang/String; = "com.htc.providers.uploads.intent_mode"

.field public static final INTENT_PROVIDER_PARAM:Ljava/lang/String; = "com.htc.providers.uploads.intent_provider"

.field public static final INTENT_STATUS_CHANGE:Ljava/lang/String; = "com.htc.providers.uploads.INTENT_STATUS_CHANGE"

.field public static final INTENT_STATUS_PARAM:Ljava/lang/String; = "com.htc.providers.uploads.intent_status"

.field public static final INTENT_VISIBILITY_PARAM:Ljava/lang/String; = "com.htc.providers.uploads.intent_visibility"

.field public static final IS_FAMILY:B = 0x4t

.field public static final IS_FRIEND:B = 0x2t

.field public static final IS_PRIVATE:B = 0x0t

.field public static final IS_PUBLIC:B = 0x1t

.field public static final LAST_MODIFICATION:Ljava/lang/String; = "lastmod"

.field public static final LOCATION:Ljava/lang/String; = "location"

.field public static final MAXLENGTH:Ljava/lang/String; = "photo_max_length"

.field public static final MEDIA_SCANNED:Ljava/lang/String; = "scanned"

.field public static final MESSAGE_STATUS_CHANGE:I = 0x1

.field public static final METHOD:Ljava/lang/String; = "method"

.field public static final METHOD_GET:I = 0x0

.field public static final METHOD_POST:I = 0x1

.field public static final MIMETYPE:Ljava/lang/String; = "mimetype"

.field public static final MODE:Ljava/lang/String; = "mode"

.field public static final MOVE:I = 0x0

.field public static final MOVE_TO_ALBUM:Ljava/lang/String; = "move_to_album"

.field public static final NEWCREATEALBUMID:Ljava/lang/String; = "0"

.field public static final NOTIFICATION_CLICKED_ACTION:Ljava/lang/String; = "android.intent.action.UPLOAD_NOTIFICATION_CLICKED"

.field public static final NOT_CREATE_ALBUM:I = 0x0

.field public static final NOT_MOVE:I = 0x1

.field public static final PHOTOSTREAMID:Ljava/lang/String; = "-1"

.field public static final PHOTO_ID:Ljava/lang/String; = "photo_id"

.field public static final PRIVACY:Ljava/lang/String; = "privacy"

.field public static final RESP_STATUS:Ljava/lang/String; = "resp_status"

.field public static final SAFETY_LEVEL_MODERATE:I = 0x2

.field public static final SAFETY_LEVEL_RESTRICTED:I = 0x3

.field public static final SAFETY_LEVEL_SAFE:I = 0x1

.field public static final SERVICE_PROVIDER:Ljava/lang/String; = "service_provider"

.field public static final SERVICE_TITLE:Ljava/lang/String; = "service_title"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final STATUS_ALBUM_INVALID:I = 0x2bc

.field public static final STATUS_BAD_REQUEST:I = 0x190

.field public static final STATUS_BATCH_WAITING:I = 0xbc

.field public static final STATUS_CANCELED:I = 0x1ea

.field public static final STATUS_CANCELLED:I = 0x1ea

.field public static final STATUS_CHANGE_TIME:Ljava/lang/String; = "status_change_time"

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

.field public static final STATUS_PENDING:I = 0xbe

.field public static final STATUS_PENDING_PAUSED:I = 0xbf

.field public static final STATUS_PRECONDITION_FAILED:I = 0x19c

.field public static final STATUS_REDIRECTION:I = 0x12c

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

.field public static final TAGS:Ljava/lang/String; = "tags"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TOTAL_BYTES:Ljava/lang/String; = "total_bytes"

.field public static final TOTAL_NUMBER:Ljava/lang/String; = "total_number"

.field public static final UID:Ljava/lang/String; = "user_id"

.field public static final UPLOADS_CONTENT_URI:Landroid/net/Uri; = null

.field public static final UPLOAD_COMPLETED_ACTION:Ljava/lang/String; = "android.intent.action.UPLOAD_COMPLETED"

.field public static final VISIBILITY:Ljava/lang/String; = "visibility"

.field public static final VISIBILITY_HIDDEN:I = 0x2

.field public static final VISIBILITY_VISIBLE:I = 0x0

.field public static final VISIBILITY_VISIBLE_NOTIFY_COMPLETED:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "content://uploads/uploads"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/social/Uploads;->UPLOADS_CONTENT_URI:Landroid/net/Uri;

    .line 22
    const-string v0, "content://uploads/batchs"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense/social/Uploads;->BACTH_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static isStatusClientError(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 461
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
    .line 476
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
    .line 454
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
    .line 422
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
    .line 440
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
    .line 436
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
    .line 468
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
    .line 447
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
    .line 430
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
