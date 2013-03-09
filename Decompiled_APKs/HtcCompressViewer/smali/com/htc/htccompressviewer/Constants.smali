.class public Lcom/htc/htccompressviewer/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final EXCHANGE_ACCOUNT_TYPE:Ljava/lang/String; = "com.android.exchange"

.field public static final FLICKR_ACCOUNT_TYPE:Ljava/lang/String; = "com.htc.socialnetwork.flickr"

.field public static final GOOGLE_ACCOUNT_TYPE:Ljava/lang/String; = "com.google"

.field public static final HTCEXCHANGE_ACCOUNT_TYPE:Ljava/lang/String; = "com.htc.android.mail.eas"

.field public static final HTCSYNCADAPTER_ACCOUNT_TYPE:Ljava/lang/String; = "com.htc.android.mail.eas"

.field public static MAX_DISPLAY_NAME_LENGTH:I = 0x0

.field public static final MNT_SDCARD:Ljava/lang/String; = "/mnt/sdcard"

.field public static final MYPHONEBOOK_ACCOUNT_TYPE:Ljava/lang/String; = "com.htc.android.myphonebook"

.field public static final SDCARD:Ljava/lang/String; = "/sdcard"

.field public static final STATUS_LIST_FILE_NO_LONGER_EXIST:I = -0x6

.field public static final STATUS_LIST_INTERRUPT:I = -0x5

.field public static final STATUS_LIST_IO_EXCEPTION:I = -0x7

.field public static final STATUS_LIST_SUCCESS:I = 0x0

.field public static final STATUS_UMCOMPRESS_ALL_SUCCESS:I = 0x1

.field public static final STATUS_UMCOMPRESS_CRC_CHECK_FAIL:I = -0x3

.field public static final STATUS_UMCOMPRESS_FAIL:I = -0x1

.field public static final STATUS_UMCOMPRESS_INTERRUPT:I = -0x4

.field public static final STATUS_UMCOMPRESS_OUT_OF_STORAGE:I = -0x2

.field public static final STATUS_UMCOMPRESS_SUCCESS:I = 0x0

.field public static final TAG:Ljava/lang/String; = "HtcCompressViewer"

.field public static final VODAFONE360_ACCOUNT_TYPE:Ljava/lang/String; = "com.htc.socialnetwork.flickr"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x7

    sput v0, Lcom/htc/htccompressviewer/Constants;->MAX_DISPLAY_NAME_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
