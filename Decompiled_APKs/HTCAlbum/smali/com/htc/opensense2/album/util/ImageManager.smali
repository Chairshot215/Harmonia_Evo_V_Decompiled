.class public Lcom/htc/opensense2/album/util/ImageManager;
.super Ljava/lang/Object;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense2/album/util/ImageManager$NonCursorImageList;,
        Lcom/htc/opensense2/album/util/ImageManager$VideoObject;,
        Lcom/htc/opensense2/album/util/ImageManager$VideoList;,
        Lcom/htc/opensense2/album/util/ImageManager$ThreadSafeOutputStream;,
        Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;,
        Lcom/htc/opensense2/album/util/ImageManager$SimpleBaseImage;,
        Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;,
        Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;,
        Lcom/htc/opensense2/album/util/ImageManager$DrmVideo;,
        Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;,
        Lcom/htc/opensense2/album/util/ImageManager$DrmImage;,
        Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;,
        Lcom/htc/opensense2/album/util/ImageManager$ImageList;,
        Lcom/htc/opensense2/album/util/ImageManager$Image;,
        Lcom/htc/opensense2/album/util/ImageManager$IImageList;,
        Lcom/htc/opensense2/album/util/ImageManager$IImage;,
        Lcom/htc/opensense2/album/util/ImageManager$IGetBoolean_cancelable;,
        Lcom/htc/opensense2/album/util/ImageManager$IGetBitmap_cancelable;,
        Lcom/htc/opensense2/album/util/ImageManager$ICancelable;,
        Lcom/htc/opensense2/album/util/ImageManager$IAddImage_cancelable;,
        Lcom/htc/opensense2/album/util/ImageManager$DataLocation;,
        Lcom/htc/opensense2/album/util/ImageManager$CanceledException;,
        Lcom/htc/opensense2/album/util/ImageManager$BaseImageList;,
        Lcom/htc/opensense2/album/util/ImageManager$BaseImage;,
        Lcom/htc/opensense2/album/util/ImageManager$BaseCancelable;
    }
.end annotation


# static fields
.field public static final ALL_DRM_IMAGES:I = 0xe

.field public static final ALL_DRM_VIDEOS:I = 0xe0

.field private static final BATCH_SIZE:I = 0x1

.field private static final DRM_IMAGE_PROJECTION:[Ljava/lang/String; = null

.field private static final DRM_VIDEO_PROJECTION:[Ljava/lang/String; = null

.field static final ERR_INCOMPLETE_IMAGE:I = 0x1b

.field static final ERR_OK:I = 0x0

.field static final ERR_RENDER_INCOMPLETE:I = -0x1

.field static final ERR_UNSUPPORT_TYPE:I = 0x14

.field public static final EXCLUDE_WMDRM_VIDEOS:I = 0x100

.field private static final IMAGE_PROJECTION:[Ljava/lang/String; = null

.field public static final INCLUDE_DRM_CD_IMAGES:I = 0x4

.field public static final INCLUDE_DRM_CD_VIDEOS:I = 0x40

.field public static final INCLUDE_DRM_FL_IMAGES:I = 0x2

.field public static final INCLUDE_DRM_FL_VIDEOS:I = 0x20

.field public static final INCLUDE_DRM_SD_IMAGES:I = 0x8

.field public static final INCLUDE_DRM_SD_VIDEOS:I = 0x80

.field public static final INCLUDE_IMAGES:I = 0x1

.field public static final INCLUDE_VIDEOS:I = 0x10

.field private static final JVM_LIMITED_BMP_SIZE:I = 0x1f4

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final MINI_THUMB_DATA_FILE_VERSION:I = 0x3

#the value of this static final field might be set in the static constructor
.field private static final MINI_THUMB_TARGET_SIZE:I = 0x0

.field public static final SORT_ASCENDING:I = 0x1

.field public static final SORT_DESCENDING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ImageManager"

.field private static final THUMBNAIL_TARGET_SIZE:I = 0x140

.field public static final THUMB_EXTENSION:Ljava/lang/String; = ".thm"

.field private static final THUMB_PROJECTION:[Ljava/lang/String; = null

.field private static final VERBOSE:Z = false

.field private static final sAcceptableImageTypes:[Ljava/lang/String; = null

.field private static final sBytesPerMiniThumb:I = 0x2710

.field private static final sFavoriteQueryStatement:Ljava/lang/String; = "favorite & 1"

.field private static sInstance:Lcom/htc/opensense2/album/util/ImageManager;

.field private static final sMiniThumbData:[B

.field public static sScreenHeight:I

.field public static sScreenWidth:I


# instance fields
.field private CANCEL_DELETE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 82
    const-class v0, Lcom/htc/opensense2/album/util/ImageManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/opensense2/album/util/ImageManager;->LOG_TAG:Ljava/lang/String;

    .line 222
    const/16 v0, 0x2710

    new-array v0, v0, [B

    sput-object v0, Lcom/htc/opensense2/album/util/ImageManager;->sMiniThumbData:[B

    .line 3314
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/htc/opensense2/album/util/ImageManager;->sAcceptableImageTypes:[Ljava/lang/String;

    .line 3316
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "date_added"

    aput-object v1, v0, v5

    const-string v1, "date_modified"

    aput-object v1, v0, v6

    const-string v1, "datetaken"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "mini_thumb_magic"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "orientation"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "bucket_display_name"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "favorite"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/opensense2/album/util/ImageManager;->IMAGE_PROJECTION:[Ljava/lang/String;

    .line 3332
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "_size"

    aput-object v1, v0, v5

    const-string v1, "_display_name"

    aput-object v1, v0, v6

    const-string v1, "mime_type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "delivery_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "bucket_display_name"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "existence"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "favorite"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/opensense2/album/util/ImageManager;->DRM_IMAGE_PROJECTION:[Ljava/lang/String;

    .line 3345
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "_size"

    aput-object v1, v0, v5

    const-string v1, "_display_name"

    aput-object v1, v0, v6

    const-string v1, "mime_type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "delivery_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "bucket_display_name"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "existence"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "content_offset"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "content_id"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "content_boundary_offset"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "favorite"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/opensense2/album/util/ImageManager;->DRM_VIDEO_PROJECTION:[Ljava/lang/String;

    .line 8433
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/opensense2/album/util/ImageManager;->sInstance:Lcom/htc/opensense2/album/util/ImageManager;

    .line 8434
    sget v0, Lcom/htc/opensense2/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    sput v0, Lcom/htc/opensense2/album/util/ImageManager;->MINI_THUMB_TARGET_SIZE:I

    .line 8443
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "image_id"

    aput-object v1, v0, v4

    const-string v1, "width"

    aput-object v1, v0, v5

    const-string v1, "height"

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/opensense2/album/util/ImageManager;->THUMB_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9686
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager;->CANCEL_DELETE:Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/htc/opensense2/album/util/ImageManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()[B
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/htc/opensense2/album/util/ImageManager;->sMiniThumbData:[B

    return-object v0
.end method

.method static synthetic access$1100(ZZLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 80
    invoke-static {p0, p1, p2}, Lcom/htc/opensense2/album/util/ImageManager;->getWhereClause(ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/htc/opensense2/album/util/ImageManager;->DRM_IMAGE_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/htc/opensense2/album/util/ImageManager;->DRM_VIDEO_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/htc/opensense2/album/util/ImageManager;->THUMB_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 80
    sget v0, Lcom/htc/opensense2/album/util/ImageManager;->MINI_THUMB_TARGET_SIZE:I

    return v0
.end method

.method static synthetic access$500(ZLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-static {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager;->getWhereClause(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/htc/opensense2/album/util/ImageManager;->sAcceptableImageTypes:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/opensense2/album/util/ImageManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/htc/opensense2/album/util/ImageManager;->CANCEL_DELETE:Z

    return v0
.end method

.method static synthetic access$702(Lcom/htc/opensense2/album/util/ImageManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/htc/opensense2/album/util/ImageManager;->CANCEL_DELETE:Z

    return p1
.end method

.method static synthetic access$800()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/htc/opensense2/album/util/ImageManager;->IMAGE_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900([Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-static {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I
    .locals 7
    .parameter "options"
    .parameter "target"

    .prologue
    const/4 v5, 0x1

    .line 130
    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 131
    .local v4, w:I
    iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 133
    .local v3, h:I
    div-int v2, v4, p1

    .line 134
    .local v2, candidateW:I
    div-int v1, v3, p1

    .line 135
    .local v1, candidateH:I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 137
    .local v0, candidate:I
    if-nez v0, :cond_0

    .line 153
    :goto_0
    return v5

    .line 140
    :cond_0
    if-le v0, v5, :cond_1

    .line 141
    if-le v4, p1, :cond_1

    div-int v6, v4, v0

    if-ge v6, p1, :cond_1

    .line 142
    add-int/lit8 v0, v0, -0x1

    .line 145
    :cond_1
    if-le v0, v5, :cond_2

    .line 146
    if-le v3, p1, :cond_2

    div-int v5, v3, v0

    if-ge v5, p1, :cond_2

    .line 147
    add-int/lit8 v0, v0, -0x1

    :cond_2
    move v5, v0

    .line 153
    goto :goto_0
.end method

.method public static debug_where(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 106
    :try_start_0
    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :catch_0
    move-exception v1

    .line 108
    .local v1, ex:Ljava/lang/Exception;
    if-eqz p1, :cond_0

    .line 109
    invoke-static {p0, p1}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_0
    const/4 v2, 0x1

    .line 112
    .local v2, first:Z
    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/StackTraceElement;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v5, v0, v3

    .line 113
    .local v5, s:Ljava/lang/StackTraceElement;
    if-eqz v2, :cond_1

    .line 114
    const/4 v2, 0x0

    .line 112
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 116
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 119
    .end local v5           #s:Ljava/lang/StackTraceElement;
    :cond_2
    return-void
.end method

.method static forceSync(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 4
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 8516
    move-object v0, p0

    .line 8517
    .local v0, finalcr:Landroid/content/ContentResolver;
    move-object v1, p1

    .line 8518
    .local v1, finaluri:Landroid/net/Uri;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/htc/opensense2/album/util/ImageManager$1;

    invoke-direct {v3, v0, v1}, Lcom/htc/opensense2/album/util/ImageManager$1;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 8558
    return-void
.end method

.method public static getDefaultDataLocation()Lcom/htc/opensense2/album/util/ImageManager$DataLocation;
    .locals 1

    .prologue
    .line 8485
    sget-object v0, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->EXTERNAL:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    return-object v0
.end method

.method private getSort(I)Ljava/lang/String;
    .locals 1
    .parameter "sort"

    .prologue
    .line 9536
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, " ASC"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, " DESC"

    goto :goto_0
.end method

.method private static final getWhereClause(ZLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "isImage"
    .parameter "typeFilter"

    .prologue
    .line 3307
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/htc/opensense2/album/util/ImageManager;->getWhereClause(ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final getWhereClause(ZZLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "isImage"
    .parameter "filterAlbumArt"
    .parameter "typeFilter"

    .prologue
    .line 3311
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0, p2}, Lcom/htc/opensense2/album/util/AlbumObjectManager;->getSupportedMediaFormatWhereClause(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v0, 0x10

    goto :goto_0
.end method

.method private static indexOf([Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "array"
    .parameter "s"

    .prologue
    .line 8488
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 8489
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8493
    .end local v0           #i:I
    :goto_1
    return v0

    .line 8488
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8493
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static instance()Lcom/htc/opensense2/album/util/ImageManager;
    .locals 1

    .prologue
    .line 8501
    sget-object v0, Lcom/htc/opensense2/album/util/ImageManager;->sInstance:Lcom/htc/opensense2/album/util/ImageManager;

    if-nez v0, :cond_0

    .line 8502
    new-instance v0, Lcom/htc/opensense2/album/util/ImageManager;

    invoke-direct {v0}, Lcom/htc/opensense2/album/util/ImageManager;-><init>()V

    sput-object v0, Lcom/htc/opensense2/album/util/ImageManager;->sInstance:Lcom/htc/opensense2/album/util/ImageManager;

    .line 8504
    const/16 v0, 0x140

    sput v0, Lcom/htc/opensense2/album/util/ImageManager;->sScreenWidth:I

    .line 8505
    const/16 v0, 0x1e0

    sput v0, Lcom/htc/opensense2/album/util/ImageManager;->sScreenHeight:I

    .line 8509
    :cond_0
    sget-object v0, Lcom/htc/opensense2/album/util/ImageManager;->sInstance:Lcom/htc/opensense2/album/util/ImageManager;

    return-object v0
.end method

.method public static isMediaScannerScanning(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 9670
    const/4 v7, 0x0

    .line 9671
    .local v7, result:Z
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "volume"

    aput-object v0, v2, v8

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/htc/opensense2/album/util/ImageManager;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 9673
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 9674
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_0

    .line 9675
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 9676
    const-string v0, "external"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 9678
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 9683
    :cond_1
    return v7
.end method

.method public static makeImageList(Landroid/net/Uri;Landroid/content/Context;IZZ)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 6
    .parameter "uri"
    .parameter "ctx"
    .parameter "sort"
    .parameter "viewSingleImage"
    .parameter "shareAndDelete"

    .prologue
    .line 9042
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/htc/opensense2/album/util/ImageManager;->makeImageList(Landroid/net/Uri;Landroid/content/Context;IZZZ)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    return-object v0
.end method

.method public static makeImageList(Landroid/net/Uri;Landroid/content/Context;IZZZ)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 11
    .parameter "uri"
    .parameter "ctx"
    .parameter "sort"
    .parameter "viewSingleImage"
    .parameter "shareAndDelete"
    .parameter "filterAlbumArt"

    .prologue
    .line 9052
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 9053
    .local v3, cr:Landroid/content/ContentResolver;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    .line 9064
    .local v10, uriString:Ljava/lang/String;
    :goto_0
    if-eqz p3, :cond_2

    .line 9066
    if-nez p4, :cond_1

    .line 9069
    new-instance v0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p1, v3, p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 9104
    .local v0, imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :goto_1
    return-object v0

    .line 9053
    .end local v0           #imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .end local v10           #uriString:Ljava/lang/String;
    :cond_0
    const-string v10, ""

    goto :goto_0

    .line 9071
    .restart local v10       #uriString:Ljava/lang/String;
    :cond_1
    new-instance v0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalPhotosUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalPhotosThumbsUri()Landroid/net/Uri;

    move-result-object v5

    move-object v2, p1

    move v6, p2

    move-object v7, p0

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILandroid/net/Uri;Z)V

    .restart local v0       #imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    goto :goto_1

    .line 9077
    .end local v0           #imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_2
    const-string v1, "content://drm"

    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    .line 9078
    .local v9, queryDRM:Z
    const/4 v7, 0x0

    .line 9079
    .local v7, bucketId:Ljava/lang/String;
    if-eqz p0, :cond_3

    .line 9080
    const-string v1, "bucketId"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 9081
    :cond_3
    const/16 v5, 0xf

    .line 9082
    .local v5, inclusion:I
    if-nez v7, :cond_4

    .line 9083
    if-eqz v9, :cond_5

    .line 9084
    const/16 v5, 0xe

    .line 9090
    :cond_4
    :goto_2
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v1

    sget-object v4, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->ALL:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    move-object v2, p1

    move v6, p2

    move/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/htc/opensense2/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IILjava/lang/String;Z)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    .restart local v0       #imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    goto :goto_1

    .line 9086
    .end local v0           #imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_5
    const/4 v5, 0x1

    goto :goto_2
.end method

.method public static makeSingleImageListFromImageIds(Landroid/content/Context;[I)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 10
    .parameter "context"
    .parameter "imageIds"

    .prologue
    const/4 v4, 0x1

    .line 9028
    const/4 v9, 0x0

    .line 9029
    .local v9, imageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->ALL:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    invoke-static {p1}, Lcom/htc/opensense2/album/util/ImageManager;->whereClauseImageIds([I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v1, p0

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v8}, Lcom/htc/opensense2/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IIZLjava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v9

    .line 9039
    return-object v9
.end method

.method public static makeSingleImageListfromUri(Landroid/net/Uri;Landroid/content/Context;Landroid/content/ContentResolver;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 10
    .parameter "uri"
    .parameter "ctx"
    .parameter "cr"

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 9004
    const/4 v0, 0x0

    .line 9007
    .local v0, mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9010
    invoke-static {p0, p1, v5, v5, v8}, Lcom/htc/opensense2/album/util/ImageManager;->makeImageList(Landroid/net/Uri;Landroid/content/Context;IZZ)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    .line 9024
    :goto_0
    return-object v0

    .line 9012
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9015
    new-instance v0, Lcom/htc/opensense2/album/util/ImageManager$VideoList;

    .end local v0           #mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object v7, v6

    move-object v9, v6

    invoke-direct/range {v0 .. v9}, Lcom/htc/opensense2/album/util/ImageManager$VideoList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .restart local v0       #mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    goto :goto_0

    .line 9019
    :cond_1
    const-string v1, "ImageManager"

    const-string v2, "[HTCAlbum][makeSingleImageListfromUri]: uri is not images or video."

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9021
    new-instance v0, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    .end local v0           #mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p1, p2, p0}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .restart local v0       #mList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    goto :goto_0
.end method

.method public static miniThumbData(Landroid/graphics/Bitmap;)[B
    .locals 9
    .parameter "source"

    .prologue
    const/4 v0, 0x0

    .line 8592
    if-nez p0, :cond_0

    .line 8620
    :goto_0
    return-object v0

    .line 8596
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 8597
    sget v6, Lcom/htc/opensense2/album/util/ImageManager;->MINI_THUMB_TARGET_SIZE:I

    int-to-float v6, v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float v5, v6, v7

    .line 8601
    .local v5, scale:F
    :goto_1
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 8602
    .local v2, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v2, v5, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 8603
    sget v6, Lcom/htc/opensense2/album/util/ImageManager;->MINI_THUMB_TARGET_SIZE:I

    sget v7, Lcom/htc/opensense2/album/util/ImageManager;->MINI_THUMB_TARGET_SIZE:I

    const/4 v8, 0x0

    invoke-static {v2, p0, v6, v7, v8}, Lcom/htc/opensense2/album/util/MediaUtils;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 8606
    .local v4, miniThumbnail:Landroid/graphics/Bitmap;
    if-eq v4, p0, :cond_1

    .line 8607
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 8609
    :cond_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 8610
    .local v3, miniOutStream:Ljava/io/ByteArrayOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x4b

    invoke-virtual {v4, v6, v7, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 8611
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 8614
    :try_start_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 8615
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 8616
    .local v0, data:[B
    goto :goto_0

    .line 8599
    .end local v0           #data:[B
    .end local v2           #matrix:Landroid/graphics/Matrix;
    .end local v3           #miniOutStream:Ljava/io/ByteArrayOutputStream;
    .end local v4           #miniThumbnail:Landroid/graphics/Bitmap;
    .end local v5           #scale:F
    :cond_2
    sget v6, Lcom/htc/opensense2/album/util/ImageManager;->MINI_THUMB_TARGET_SIZE:I

    int-to-float v6, v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v5, v6, v7

    .restart local v5       #scale:F
    goto :goto_1

    .line 8617
    .restart local v2       #matrix:Landroid/graphics/Matrix;
    .restart local v3       #miniOutStream:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #miniThumbnail:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 8618
    .local v1, ex:Ljava/io/IOException;
    const-string v6, "ImageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "got exception ex "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v7, 0x0

    .line 9657
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 9658
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    move-object v1, v7

    .line 9664
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :goto_0
    return-object v1

    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 9661
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 9662
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v6

    .line 9663
    .local v6, ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v6}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    move-object v1, v7

    .line 9664
    goto :goto_0
.end method

.method private rejectWMDRM(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "where"

    .prologue
    .line 9207
    if-nez p1, :cond_0

    .line 9208
    const-string v0, "mime_type!=\'video/x-wmv-drm\'"

    .line 9210
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND mime_type!=\'video/x-wmv-drm\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "b"
    .parameter "degrees"

    .prologue
    const/4 v1, 0x0

    const/high16 v4, 0x4000

    .line 8624
    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    .line 8625
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 8626
    .local v5, m:Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v5, v0, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 8628
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 8630
    .local v7, b2:Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_0

    .line 8631
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 8632
    const/4 p0, 0x0

    .line 8634
    :cond_0
    move-object p0, v7

    .line 8636
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #b2:Landroid/graphics/Bitmap;
    :cond_1
    return-object p0
.end method

.method public static rotateIgnoreJavaHeap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "b"
    .parameter "degrees"

    .prologue
    .line 8643
    const-string v0, "ImgMgr"

    const-string v1, "Use default"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8644
    invoke-static {p0, p1}, Lcom/htc/opensense2/album/util/ImageManager;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static roundOrientation(I)I
    .locals 3
    .parameter "orientationInput"

    .prologue
    .line 8662
    move v0, p0

    .line 8663
    .local v0, orientation:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 8664
    const/4 v0, 0x0

    .line 8666
    :cond_0
    rem-int/lit16 v0, v0, 0x168

    .line 8668
    const/16 v2, 0x2d

    if-ge v0, v2, :cond_1

    .line 8669
    const/4 v1, 0x0

    .line 8681
    .local v1, retVal:I
    :goto_0
    return v1

    .line 8670
    .end local v1           #retVal:I
    :cond_1
    const/16 v2, 0x87

    if-ge v0, v2, :cond_2

    .line 8671
    const/16 v1, 0x5a

    .restart local v1       #retVal:I
    goto :goto_0

    .line 8672
    .end local v1           #retVal:I
    :cond_2
    const/16 v2, 0xe1

    if-ge v0, v2, :cond_3

    .line 8673
    const/16 v1, 0xb4

    .restart local v1       #retVal:I
    goto :goto_0

    .line 8674
    .end local v1           #retVal:I
    :cond_3
    const/16 v2, 0x13b

    if-ge v0, v2, :cond_4

    .line 8675
    const/16 v1, 0x10e

    .restart local v1       #retVal:I
    goto :goto_0

    .line 8677
    .end local v1           #retVal:I
    :cond_4
    const/4 v1, 0x0

    .restart local v1       #retVal:I
    goto :goto_0
.end method

.method public static whereClauseImageIds([I)Ljava/lang/String;
    .locals 5
    .parameter "imageIds"

    .prologue
    .line 9520
    const-string v2, "_id in ("

    .line 9521
    .local v2, szWhere:Ljava/lang/String;
    array-length v0, p0

    .line 9522
    .local v0, nIds:I
    const/4 v1, 0x0

    .local v1, nIndex:I
    :goto_0
    if-le v0, v1, :cond_1

    .line 9524
    add-int/lit8 v3, v0, -0x1

    if-ne v3, v1, :cond_0

    .line 9525
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9522
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9527
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 9529
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9533
    return-object v2
.end method


# virtual methods
.method public addImage(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JLandroid/location/Location;ILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 20
    .parameter "ctx"
    .parameter "cr"
    .parameter "imageName"
    .parameter "description"
    .parameter "dateTaken"
    .parameter "location"
    .parameter "orientation"
    .parameter "directory"
    .parameter "filename"

    .prologue
    .line 8694
    new-instance v19, Landroid/content/ContentValues;

    const/4 v2, 0x7

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 8695
    .local v19, values:Landroid/content/ContentValues;
    const-string v2, "title"

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8696
    const-string v2, "_display_name"

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8697
    const-string v2, "description"

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8698
    const-string v2, "datetaken"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 8699
    const-string v2, "mime_type"

    const-string v4, "image/jpeg"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8700
    const-string v2, "orientation"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8702
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p9

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8703
    .local v12, parentFile:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    .line 8704
    .local v13, path:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 8706
    .local v11, name:Ljava/lang/String;
    const-string v2, "bucket_id"

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8707
    const-string v2, "bucket_display_name"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8711
    if-eqz p7, :cond_0

    .line 8715
    const-string v2, "latitude"

    invoke-virtual/range {p7 .. p7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 8716
    const-string v2, "longitude"

    invoke-virtual/range {p7 .. p7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 8719
    :cond_0
    if-eqz p9, :cond_1

    if-eqz p10, :cond_1

    .line 8720
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p10

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 8721
    .local v18, value:Ljava/lang/String;
    const-string v2, "_data"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8724
    .end local v18           #value:Ljava/lang/String;
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 8725
    .local v15, t3:J
    const/4 v3, 0x0

    .line 8726
    .local v3, uri:Landroid/net/Uri;
    invoke-static/range {p9 .. p9}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isFileOnPhoneStorage(Ljava/lang/String;)Z

    move-result v10

    .line 8727
    .local v10, isPhoneStorage:Z
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalPhotosUri()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 8733
    if-eqz v3, :cond_3

    .line 8734
    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "_display_name"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "_data"

    aput-object v5, v4, v2

    const/4 v2, 0x3

    const-string v5, "title"

    aput-object v5, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 8740
    .local v8, c:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8741
    const/4 v2, 0x2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 8742
    .local v9, filePath:Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 8743
    const-string v2, "/"

    invoke-virtual {v9, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    .line 8744
    .local v14, pos:I
    if-ltz v14, :cond_2

    .line 8745
    add-int/lit8 v2, v14, 0x1

    invoke-virtual {v9, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 8746
    const/4 v2, 0x0

    const-string v4, "."

    invoke-virtual {v9, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v9, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 8753
    .local v17, title:Ljava/lang/String;
    new-instance v19, Landroid/content/ContentValues;

    .end local v19           #values:Landroid/content/ContentValues;
    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 8754
    .restart local v19       #values:Landroid/content/ContentValues;
    const-string v2, "_display_name"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8755
    const-string v2, "title"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8756
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 8760
    .end local v9           #filePath:Ljava/lang/String;
    .end local v14           #pos:I
    .end local v17           #title:Ljava/lang/String;
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 8762
    .end local v8           #c:Landroid/database/Cursor;
    :cond_3
    return-object v3
.end method

.method public addVideo(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JLandroid/location/Location;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 12
    .parameter "ctx"
    .parameter "cr"
    .parameter "imageName"
    .parameter "description"
    .parameter "dateTaken"
    .parameter "location"
    .parameter "orientation"
    .parameter "directory"
    .parameter "filename"
    .parameter "mineType"

    .prologue
    .line 8776
    new-instance v8, Landroid/content/ContentValues;

    const/4 v9, 0x7

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 8778
    .local v8, values:Landroid/content/ContentValues;
    const-string v9, "title"

    invoke-virtual {v8, v9, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8779
    const-string v9, "_display_name"

    invoke-virtual {v8, v9, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8780
    const-string v9, "description"

    move-object/from16 v0, p4

    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8781
    const-string v9, "datetaken"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 8782
    const-string v9, "mime_type"

    move-object/from16 v0, p11

    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8785
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p9

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8786
    .local v2, parentFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 8787
    .local v3, path:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 8791
    .local v1, name:Ljava/lang/String;
    if-eqz p7, :cond_0

    .line 8795
    const-string v9, "latitude"

    invoke-virtual/range {p7 .. p7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 8796
    const-string v9, "longitude"

    invoke-virtual/range {p7 .. p7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 8799
    :cond_0
    if-eqz p9, :cond_1

    if-eqz p10, :cond_1

    .line 8800
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p10

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 8801
    .local v7, value:Ljava/lang/String;
    const-string v9, "_data"

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8804
    .end local v7           #value:Ljava/lang/String;
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 8805
    .local v4, t3:J
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalVideosUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {p2, v9, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 8807
    .local v6, uri:Landroid/net/Uri;
    return-object v6
.end method

.method public allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IILjava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 12
    .parameter "ctx"
    .parameter "cr"
    .parameter "location"
    .parameter "inclusion"
    .parameter "sort"
    .parameter "typeFilter"

    .prologue
    .line 9178
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v11, p6

    invoke-virtual/range {v0 .. v11}, Lcom/htc/opensense2/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IILjava/lang/String;Landroid/net/Uri;ZZLjava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    return-object v0
.end method

.method public allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IILjava/lang/String;Landroid/net/Uri;ZZLjava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 22
    .parameter "ctx"
    .parameter "cr"
    .parameter "location"
    .parameter "inclusion"
    .parameter "sort"
    .parameter "bucketId"
    .parameter "specificImageUri"
    .parameter "filterAlbumArt"
    .parameter "isFavorite"
    .parameter "where"
    .parameter "typeFilter"

    .prologue
    .line 9289
    if-nez p2, :cond_0

    .line 9290
    const/4 v4, 0x0

    .line 9491
    :goto_0
    return-object v4

    .line 9292
    :cond_0
    move/from16 v0, p4

    and-int/lit16 v4, v0, 0x100

    if-eqz v4, :cond_1

    .line 9294
    move-object/from16 v0, p0

    move-object/from16 v1, p10

    invoke-direct {v0, v1}, Lcom/htc/opensense2/album/util/ImageManager;->rejectWMDRM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p10

    .line 9297
    :cond_1
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isExternalStorageReady(Z)Z

    move-result v18

    .line 9298
    .local v18, haveSdCard:Z
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isPhoneStorageReady(Z)Z

    move-result v17

    .line 9302
    .local v17, havePhoneStorage:Z
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 9307
    .local v21, l:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImageList;>;"
    if-eqz p7, :cond_6

    .line 9309
    :try_start_0
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalPhotosUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const/16 v20, 0x1

    .line 9310
    .local v20, isPhoneStorage:Z
    :goto_1
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "content"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 9312
    new-instance v4, Lcom/htc/opensense2/album/util/ImageManager$ImageList;

    if-eqz v20, :cond_4

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhonePhotosUri()Landroid/net/Uri;

    move-result-object v9

    :goto_2
    const/4 v12, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p7

    move/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v13, p10

    move/from16 v14, p9

    move-object/from16 v15, p11

    invoke-direct/range {v4 .. v15}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9490
    .end local v20           #isPhoneStorage:Z
    :cond_2
    :goto_3
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 9491
    .local v19, imageList:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    new-instance v4, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p5

    invoke-direct {v4, v0, v1, v2}, Lcom/htc/opensense2/album/util/ImageManager$ImageListUber;-><init>(Lcom/htc/opensense2/album/util/ImageManager;[Lcom/htc/opensense2/album/util/ImageManager$IImageList;I)V

    goto :goto_0

    .line 9309
    .end local v19           #imageList:[Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    :cond_3
    const/16 v20, 0x0

    goto :goto_1

    .line 9312
    .restart local v20       #isPhoneStorage:Z
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalPhotosUri()Landroid/net/Uri;

    move-result-object v9

    goto :goto_2

    .line 9319
    :cond_5
    new-instance v4, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p7

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 9321
    .end local v20           #isPhoneStorage:Z
    :catch_0
    move-exception v16

    .line 9322
    .local v16, ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_3

    .line 9326
    .end local v16           #ex:Ljava/lang/UnsupportedOperationException;
    :cond_6
    if-eqz v18, :cond_a

    sget-object v4, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->EXTERNAL:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    move-object/from16 v0, p3

    if-ne v0, v4, :cond_a

    .line 9327
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_7

    .line 9329
    :try_start_2
    new-instance v4, Lcom/htc/opensense2/album/util/ImageManager$ImageList;

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalPhotosUri()Landroid/net/Uri;

    move-result-object v8

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalPhotosThumbsUri()Landroid/net/Uri;

    move-result-object v9

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p8

    move-object/from16 v13, p10

    move/from16 v14, p9

    move-object/from16 v15, p11

    invoke-direct/range {v4 .. v15}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 9337
    :cond_7
    :goto_4
    and-int/lit8 v4, p4, 0xe

    if-eqz v4, :cond_8

    .line 9339
    :try_start_3
    new-instance v4, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;

    sget-object v8, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p4

    move-object/from16 v12, p10

    move/from16 v13, p9

    invoke-direct/range {v4 .. v13}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;ILjava/lang/String;Z)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_3

    .line 9346
    :cond_8
    :goto_5
    and-int/lit8 v4, p4, 0x10

    if-eqz v4, :cond_9

    .line 9348
    :try_start_4
    new-instance v4, Lcom/htc/opensense2/album/util/ImageManager$VideoList;

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalVideosUri()Landroid/net/Uri;

    move-result-object v8

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p10

    move/from16 v12, p9

    move-object/from16 v13, p11

    invoke-direct/range {v4 .. v13}, Lcom/htc/opensense2/album/util/ImageManager$VideoList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_4

    .line 9355
    :cond_9
    :goto_6
    move/from16 v0, p4

    and-int/lit16 v4, v0, 0xe0

    if-eqz v4, :cond_a

    .line 9357
    :try_start_5
    new-instance v4, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;

    sget-object v8, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p4

    move-object/from16 v12, p10

    move/from16 v13, p9

    invoke-direct/range {v4 .. v13}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;ILjava/lang/String;Z)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_5} :catch_5

    .line 9366
    :cond_a
    :goto_7
    if-eqz v17, :cond_c

    sget-object v4, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->PHONE:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    move-object/from16 v0, p3

    if-ne v0, v4, :cond_c

    .line 9368
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_b

    .line 9370
    :try_start_6
    new-instance v4, Lcom/htc/opensense2/album/util/ImageManager$ImageList;

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhonePhotosUri()Landroid/net/Uri;

    move-result-object v8

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhonePhotosThumbsUri()Landroid/net/Uri;

    move-result-object v9

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p8

    move-object/from16 v13, p10

    move/from16 v14, p9

    move-object/from16 v15, p11

    invoke-direct/range {v4 .. v15}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_6} :catch_6

    .line 9377
    :cond_b
    :goto_8
    and-int/lit8 v4, p4, 0x10

    if-eqz v4, :cond_c

    .line 9379
    :try_start_7
    new-instance v4, Lcom/htc/opensense2/album/util/ImageManager$VideoList;

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneVideosUri()Landroid/net/Uri;

    move-result-object v8

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p10

    move/from16 v12, p9

    move-object/from16 v13, p11

    invoke-direct/range {v4 .. v13}, Lcom/htc/opensense2/album/util/ImageManager$VideoList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_7 .. :try_end_7} :catch_7

    .line 9387
    :cond_c
    :goto_9
    sget-object v4, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->INTERNAL:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    move-object/from16 v0, p3

    if-ne v0, v4, :cond_f

    .line 9388
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_d

    .line 9390
    :try_start_8
    new-instance v4, Lcom/htc/opensense2/album/util/ImageManager$ImageList;

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getInternalPhotosUri()Landroid/net/Uri;

    move-result-object v8

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getInternalPhotosThumbsUri()Landroid/net/Uri;

    move-result-object v9

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p8

    move-object/from16 v13, p10

    move/from16 v14, p9

    move-object/from16 v15, p11

    invoke-direct/range {v4 .. v15}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_8 .. :try_end_8} :catch_8

    .line 9398
    :cond_d
    :goto_a
    and-int/lit8 v4, p4, 0xe

    if-eqz v4, :cond_e

    .line 9400
    :try_start_9
    new-instance v4, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;

    sget-object v8, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p4

    move-object/from16 v12, p10

    move/from16 v13, p9

    invoke-direct/range {v4 .. v13}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;ILjava/lang/String;Z)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_9 .. :try_end_9} :catch_9

    .line 9407
    :cond_e
    :goto_b
    and-int/lit8 v4, p4, 0x10

    if-eqz v4, :cond_f

    .line 9409
    :try_start_a
    new-instance v4, Lcom/htc/opensense2/album/util/ImageManager$VideoList;

    sget-object v8, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p10

    move/from16 v12, p9

    move-object/from16 v13, p11

    invoke-direct/range {v4 .. v13}, Lcom/htc/opensense2/album/util/ImageManager$VideoList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_a .. :try_end_a} :catch_a

    .line 9417
    :cond_f
    :goto_c
    sget-object v4, Lcom/htc/opensense2/album/util/ImageManager$DataLocation;->ALL:Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    move-object/from16 v0, p3

    if-ne v0, v4, :cond_2

    .line 9432
    if-eqz v18, :cond_10

    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_10

    .line 9434
    :try_start_b
    new-instance v4, Lcom/htc/opensense2/album/util/ImageManager$ImageList;

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalPhotosUri()Landroid/net/Uri;

    move-result-object v8

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalPhotosThumbsUri()Landroid/net/Uri;

    move-result-object v9

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p8

    move-object/from16 v13, p10

    move/from16 v14, p9

    move-object/from16 v15, p11

    invoke-direct/range {v4 .. v15}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_b .. :try_end_b} :catch_b

    .line 9441
    :cond_10
    :goto_d
    if-nez v17, :cond_11

    if-eqz v18, :cond_12

    :cond_11
    and-int/lit8 v4, p4, 0xe

    if-eqz v4, :cond_12

    .line 9443
    :try_start_c
    new-instance v4, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;

    sget-object v8, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p4

    move-object/from16 v12, p10

    move/from16 v13, p9

    invoke-direct/range {v4 .. v13}, Lcom/htc/opensense2/album/util/ImageManager$DrmImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;ILjava/lang/String;Z)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_c .. :try_end_c} :catch_c

    .line 9450
    :cond_12
    :goto_e
    if-eqz v17, :cond_13

    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_13

    .line 9452
    :try_start_d
    new-instance v4, Lcom/htc/opensense2/album/util/ImageManager$ImageList;

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhonePhotosUri()Landroid/net/Uri;

    move-result-object v8

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhonePhotosThumbsUri()Landroid/net/Uri;

    move-result-object v9

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p8

    move-object/from16 v13, p10

    move/from16 v14, p9

    move-object/from16 v15, p11

    invoke-direct/range {v4 .. v15}, Lcom/htc/opensense2/album/util/ImageManager$ImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_d .. :try_end_d} :catch_d

    .line 9459
    :cond_13
    :goto_f
    if-eqz v17, :cond_14

    and-int/lit8 v4, p4, 0x10

    if-eqz v4, :cond_14

    .line 9461
    :try_start_e
    new-instance v4, Lcom/htc/opensense2/album/util/ImageManager$VideoList;

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getPhoneVideosUri()Landroid/net/Uri;

    move-result-object v8

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p10

    move/from16 v12, p9

    move-object/from16 v13, p11

    invoke-direct/range {v4 .. v13}, Lcom/htc/opensense2/album/util/ImageManager$VideoList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_e .. :try_end_e} :catch_e

    .line 9468
    :cond_14
    :goto_10
    if-eqz v18, :cond_15

    and-int/lit8 v4, p4, 0x10

    if-eqz v4, :cond_15

    .line 9470
    :try_start_f
    new-instance v4, Lcom/htc/opensense2/album/util/ImageManager$VideoList;

    invoke-static {}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->getExternalVideosUri()Landroid/net/Uri;

    move-result-object v8

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p10

    move/from16 v12, p9

    move-object/from16 v13, p11

    invoke-direct/range {v4 .. v13}, Lcom/htc/opensense2/album/util/ImageManager$VideoList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_f .. :try_end_f} :catch_f

    .line 9477
    :cond_15
    :goto_11
    if-nez v17, :cond_16

    if-eqz v18, :cond_2

    :cond_16
    move/from16 v0, p4

    and-int/lit16 v4, v0, 0xe0

    if-eqz v4, :cond_2

    .line 9479
    :try_start_10
    new-instance v4, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;

    sget-object v8, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p4

    move-object/from16 v12, p10

    move/from16 v13, p9

    invoke-direct/range {v4 .. v13}, Lcom/htc/opensense2/album/util/ImageManager$DrmVideoList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;ILjava/lang/String;Z)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_10 .. :try_end_10} :catch_1

    goto/16 :goto_3

    .line 9482
    :catch_1
    move-exception v16

    .line 9483
    .restart local v16       #ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/16 :goto_3

    .line 9333
    .end local v16           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_2
    move-exception v16

    .line 9334
    .restart local v16       #ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/16 :goto_4

    .line 9342
    .end local v16           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_3
    move-exception v16

    .line 9343
    .restart local v16       #ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/16 :goto_5

    .line 9351
    .end local v16           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_4
    move-exception v16

    .line 9352
    .restart local v16       #ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/16 :goto_6

    .line 9360
    .end local v16           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_5
    move-exception v16

    .line 9361
    .restart local v16       #ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/16 :goto_7

    .line 9373
    .end local v16           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_6
    move-exception v16

    .line 9374
    .restart local v16       #ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/16 :goto_8

    .line 9382
    .end local v16           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_7
    move-exception v16

    .line 9383
    .restart local v16       #ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/16 :goto_9

    .line 9394
    .end local v16           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_8
    move-exception v16

    .line 9395
    .restart local v16       #ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/16 :goto_a

    .line 9403
    .end local v16           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_9
    move-exception v16

    .line 9404
    .restart local v16       #ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/16 :goto_b

    .line 9412
    .end local v16           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_a
    move-exception v16

    .line 9413
    .restart local v16       #ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/16 :goto_c

    .line 9437
    .end local v16           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_b
    move-exception v16

    .line 9438
    .restart local v16       #ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/16 :goto_d

    .line 9446
    .end local v16           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_c
    move-exception v16

    .line 9447
    .restart local v16       #ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/16 :goto_e

    .line 9455
    .end local v16           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_d
    move-exception v16

    .line 9456
    .restart local v16       #ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/16 :goto_f

    .line 9464
    .end local v16           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_e
    move-exception v16

    .line 9465
    .restart local v16       #ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/16 :goto_10

    .line 9473
    .end local v16           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_f
    move-exception v16

    .line 9474
    .restart local v16       #ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_11
.end method

.method public allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IILjava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 12
    .parameter "ctx"
    .parameter "cr"
    .parameter "location"
    .parameter "inclusion"
    .parameter "sort"
    .parameter "bucketId"
    .parameter "typeFilter"

    .prologue
    .line 9182
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v11, p7

    invoke-virtual/range {v0 .. v11}, Lcom/htc/opensense2/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IILjava/lang/String;Landroid/net/Uri;ZZLjava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    return-object v0
.end method

.method public allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IILjava/lang/String;Z)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 12
    .parameter "ctx"
    .parameter "cr"
    .parameter "location"
    .parameter "inclusion"
    .parameter "sort"
    .parameter "bucketId"
    .parameter "filterAlbumArt"

    .prologue
    .line 9186
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v11}, Lcom/htc/opensense2/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IILjava/lang/String;Landroid/net/Uri;ZZLjava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    return-object v0
.end method

.method public allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IIZLjava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 13
    .parameter "ctx"
    .parameter "cr"
    .parameter "location"
    .parameter "inclusion"
    .parameter "sort"
    .parameter "filterAlbumArt"
    .parameter "where"
    .parameter "typeFilter"

    .prologue
    .line 9190
    const/4 v10, 0x0

    .line 9191
    .local v10, isFavorite:Z
    if-eqz p7, :cond_0

    .line 9192
    const-string v1, "favorite & 1"

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    .line 9194
    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v9, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    invoke-virtual/range {v1 .. v12}, Lcom/htc/opensense2/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IILjava/lang/String;Landroid/net/Uri;ZZLjava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v1

    return-object v1
.end method

.method public allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IIZZLjava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 12
    .parameter "ctx"
    .parameter "cr"
    .parameter "location"
    .parameter "inclusion"
    .parameter "sort"
    .parameter "filterAlbumArt"
    .parameter "isFavorite"
    .parameter "typeFilter"

    .prologue
    .line 9198
    const/4 v10, 0x0

    .line 9199
    .local v10, where:Ljava/lang/String;
    if-eqz p7, :cond_0

    .line 9200
    const-string v10, "favorite & 1"

    .line 9202
    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v11, p8

    invoke-virtual/range {v0 .. v11}, Lcom/htc/opensense2/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IILjava/lang/String;Landroid/net/Uri;ZZLjava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    return-object v0
.end method

.method public createNonCursorList(Ljava/util/ArrayList;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            ">;)",
            "Lcom/htc/opensense2/album/util/ImageManager$IImageList;"
        }
    .end annotation

    .prologue
    .line 9540
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    new-instance v0, Lcom/htc/opensense2/album/util/ImageManager$NonCursorImageList;

    invoke-direct {v0, p0, p1}, Lcom/htc/opensense2/album/util/ImageManager$NonCursorImageList;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public emptyImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    .locals 1

    .prologue
    .line 9108
    new-instance v0, Lcom/htc/opensense2/album/util/ImageManager$2;

    invoke-direct {v0, p0}, Lcom/htc/opensense2/album/util/ImageManager$2;-><init>(Lcom/htc/opensense2/album/util/ImageManager;)V

    return-object v0
.end method

.method public storeImage(Landroid/net/Uri;Landroid/content/Context;Landroid/content/ContentResolver;ILandroid/graphics/Bitmap;[BLjava/util/HashMap;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IAddImage_cancelable;
    .locals 9
    .parameter "uri"
    .parameter "ctx"
    .parameter "cr"
    .parameter "orientation"
    .parameter "source"
    .parameter "jpegData"
    .parameter
    .parameter "directory"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/content/Context;",
            "Landroid/content/ContentResolver;",
            "I",
            "Landroid/graphics/Bitmap;",
            "[B",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/htc/opensense2/album/util/ImageManager$IAddImage_cancelable;"
        }
    .end annotation

    .prologue
    .line 8999
    .local p7, exifData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/htc/opensense2/album/util/ImageManager$1AddImageCancelable;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p6

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/htc/opensense2/album/util/ImageManager$1AddImageCancelable;-><init>(Lcom/htc/opensense2/album/util/ImageManager;Landroid/graphics/Bitmap;[BLandroid/net/Uri;Landroid/content/Context;Landroid/content/ContentResolver;ILjava/util/HashMap;)V

    return-object v0
.end method
