.class public final Lcom/android/bluetooth/opp/BluetoothShare;
.super Ljava/lang/Object;
.source "BluetoothShare.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CURRENT_BYTES:Ljava/lang/String; = "current_bytes"

.field public static final DESTINATION:Ljava/lang/String; = "destination"

.field public static final DIRECTION:Ljava/lang/String; = "direction"

.field public static final DIRECTION_INBOUND:I = 0x1

.field public static final DIRECTION_OUTBOUND:I = 0x0

.field public static final FILENAME_HINT:Ljava/lang/String; = "hint"

.field public static final INCOMING_FILE_CONFIRMATION_REQUEST_ACTION:Ljava/lang/String; = "android.btopp.intent.action.INCOMING_FILE_NOTIFICATION"

.field public static final MIMETYPE:Ljava/lang/String; = "mimetype"

.field public static final PERMISSION_ACCESS:Ljava/lang/String; = "android.permission.ACCESS_BLUETOOTH_SHARE"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final STATUS_BAD_REQUEST:I = 0x190

.field public static final STATUS_CANCELED:I = 0x1ea

.field public static final STATUS_CONNECTION_ERROR:I = 0x1f1

.field public static final STATUS_ERROR_NO_SDCARD:I = 0x1ed

.field public static final STATUS_ERROR_SDCARD_FULL:I = 0x1ee

.field public static final STATUS_FILE_ERROR:I = 0x1ec

.field public static final STATUS_FORBIDDEN:I = 0x193

.field public static final STATUS_LENGTH_REQUIRED:I = 0x19b

.field public static final STATUS_NOT_ACCEPTABLE:I = 0x196

.field public static final STATUS_OBEX_DATA_ERROR:I = 0x1f0

.field public static final STATUS_PENDING:I = 0xbe

.field public static final STATUS_PRECONDITION_FAILED:I = 0x19c

.field public static final STATUS_RUNNING:I = 0xc0

.field public static final STATUS_SUCCESS:I = 0xc8

.field public static final STATUS_UNHANDLED_OBEX_CODE:I = 0x1ef

.field public static final STATUS_UNKNOWN_ERROR:I = 0x1eb

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final TOTAL_BYTES:Ljava/lang/String; = "total_bytes"

.field public static final TRANSFER_COMPLETED_ACTION:Ljava/lang/String; = "android.btopp.intent.action.TRANSFER_COMPLETE"

.field public static final URI:Ljava/lang/String; = "uri"

.field public static final USER_CONFIRMATION:Ljava/lang/String; = "confirm"

.field public static final USER_CONFIRMATION_AUTO_CONFIRMED:I = 0x2

.field public static final USER_CONFIRMATION_CONFIRMED:I = 0x1

.field public static final USER_CONFIRMATION_DENIED:I = 0x3

.field public static final USER_CONFIRMATION_PENDING:I = 0x0

.field public static final USER_CONFIRMATION_TIMEOUT:I = 0x4

.field public static final USER_CONFIRMATION_TIMEOUT_ACTION:Ljava/lang/String; = "android.btopp.intent.action.USER_CONFIRMATION_TIMEOUT"

.field public static final VISIBILITY:Ljava/lang/String; = "visibility"

.field public static final VISIBILITY_HIDDEN:I = 0x1

.field public static final VISIBILITY_VISIBLE:I = 0x0

.field public static final _DATA:Ljava/lang/String; = "_data"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "content://com.android.bluetooth.opp/btopp"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static isStatusClientError(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 304
    const/16 v0, 0x190

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1f4

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
    .line 319
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
    .line 297
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
    .line 275
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

.method public static isStatusServerError(I)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 311
    const/16 v0, 0x1f4

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
    .line 290
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
    .line 283
    const/16 v0, 0xbe

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
