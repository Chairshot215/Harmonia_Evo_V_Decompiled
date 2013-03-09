.class public Lcom/htc/opensense/album/util/ImageManager;
.super Ljava/lang/Object;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/album/util/ImageManager$NonCursorImageList;,
        Lcom/htc/opensense/album/util/ImageManager$VideoObject;,
        Lcom/htc/opensense/album/util/ImageManager$VideoList;,
        Lcom/htc/opensense/album/util/ImageManager$ThreadSafeOutputStream;,
        Lcom/htc/opensense/album/util/ImageManager$SingleImageList;,
        Lcom/htc/opensense/album/util/ImageManager$SimpleBaseImage;,
        Lcom/htc/opensense/album/util/ImageManager$ImageListUber;,
        Lcom/htc/opensense/album/util/ImageManager$DrmVideoList;,
        Lcom/htc/opensense/album/util/ImageManager$DrmVideo;,
        Lcom/htc/opensense/album/util/ImageManager$DrmImageList;,
        Lcom/htc/opensense/album/util/ImageManager$DrmImage;,
        Lcom/htc/opensense/album/util/ImageManager$DrmMedia;,
        Lcom/htc/opensense/album/util/ImageManager$ImageList;,
        Lcom/htc/opensense/album/util/ImageManager$Image;,
        Lcom/htc/opensense/album/util/ImageManager$IImageList;,
        Lcom/htc/opensense/album/util/ImageManager$IImage;,
        Lcom/htc/opensense/album/util/ImageManager$IGetBoolean_cancelable;,
        Lcom/htc/opensense/album/util/ImageManager$IGetBitmap_cancelable;,
        Lcom/htc/opensense/album/util/ImageManager$ICancelable;,
        Lcom/htc/opensense/album/util/ImageManager$IAddImage_cancelable;,
        Lcom/htc/opensense/album/util/ImageManager$DataLocation;,
        Lcom/htc/opensense/album/util/ImageManager$CanceledException;,
        Lcom/htc/opensense/album/util/ImageManager$BaseImageList;,
        Lcom/htc/opensense/album/util/ImageManager$BaseImage;,
        Lcom/htc/opensense/album/util/ImageManager$BaseCancelable;
    }
.end annotation


# static fields
.field public static final ALL_DRM_IMAGES:I = 0xe

.field public static final ALL_DRM_VIDEOS:I = 0xe0

.field private static final BATCH_SIZE:I = 0x1

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

.field private static final sFavoriteQueryStatement:Ljava/lang/String; = "favorite=1"

.field private static sInstance:Lcom/htc/opensense/album/util/ImageManager;

.field private static final sMiniThumbData:[B

.field public static sScreenHeight:I

.field public static sScreenWidth:I


# instance fields
.field private CANCEL_DELETE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x2710

    new-array v0, v0, [B

    sput-object v0, Lcom/htc/opensense/album/util/ImageManager;->sMiniThumbData:[B

    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/htc/opensense/album/util/ImageManager;->sAcceptableImageTypes:[Ljava/lang/String;

    const/16 v0, 0xa

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

    sput-object v0, Lcom/htc/opensense/album/util/ImageManager;->IMAGE_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/opensense/album/util/ImageManager;->sInstance:Lcom/htc/opensense/album/util/ImageManager;

    sget v0, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    sput v0, Lcom/htc/opensense/album/util/ImageManager;->MINI_THUMB_TARGET_SIZE:I

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "image_id"

    aput-object v1, v0, v4

    const-string v1, "width"

    aput-object v1, v0, v5

    const-string v1, "height"

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/opensense/album/util/ImageManager;->THUMB_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager;->CANCEL_DELETE:Z

    return-void
.end method

.method static synthetic access$000()[B
    .locals 1

    sget-object v0, Lcom/htc/opensense/album/util/ImageManager;->sMiniThumbData:[B

    return-object v0
.end method

.method static synthetic access$1000(ZZ)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/htc/opensense/album/util/ImageManager;->getWhereClause(ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/opensense/album/util/ImageManager;->THUMB_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    sget v0, Lcom/htc/opensense/album/util/ImageManager;->MINI_THUMB_TARGET_SIZE:I

    return v0
.end method

.method static synthetic access$400(Z)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/htc/opensense/album/util/ImageManager;->getWhereClause(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/opensense/album/util/ImageManager;->sAcceptableImageTypes:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/opensense/album/util/ImageManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager;->CANCEL_DELETE:Z

    return v0
.end method

.method static synthetic access$602(Lcom/htc/opensense/album/util/ImageManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/opensense/album/util/ImageManager;->CANCEL_DELETE:Z

    return p1
.end method

.method static synthetic access$700()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/htc/opensense/album/util/ImageManager;->IMAGE_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800([Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {p0, p1}, Lcom/htc/opensense/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I
    .locals 7

    const/4 v5, 0x1

    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int v2, v4, p1

    div-int v1, v3, p1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v5

    :cond_0
    if-le v0, v5, :cond_1

    if-le v4, p1, :cond_1

    div-int v6, v4, v0

    if-ge v6, p1, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    if-le v0, v5, :cond_2

    if-le v3, p1, :cond_2

    div-int v5, v3, v0

    if-ge v5, p1, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    move v5, v0

    goto :goto_0
.end method

.method public static debug_where(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    :try_start_0
    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Lcom/htc/opensense/album/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v5, v0, v3

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/htc/opensense/album/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method static forceSync(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/htc/opensense/album/util/ImageManager$1;

    invoke-direct {v3, v0, v1}, Lcom/htc/opensense/album/util/ImageManager$1;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static getDefaultDataLocation()Lcom/htc/opensense/album/util/ImageManager$DataLocation;
    .locals 1

    sget-object v0, Lcom/htc/opensense/album/util/ImageManager$DataLocation;->EXTERNAL:Lcom/htc/opensense/album/util/ImageManager$DataLocation;

    return-object v0
.end method

.method private getSort(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, " ASC"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, " DESC"

    goto :goto_0
.end method

.method private static final getWhereClause(Z)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/htc/opensense/album/util/ImageManager;->getWhereClause(ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final getWhereClause(ZZ)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0, p1}, Lcom/htc/opensense/album/util/AlbumObjectManager;->getSupportedMediaFormatWhereClause(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v0, 0x10

    goto :goto_0
.end method

.method private static indexOf([Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static instance()Lcom/htc/opensense/album/util/ImageManager;
    .locals 1

    sget-object v0, Lcom/htc/opensense/album/util/ImageManager;->sInstance:Lcom/htc/opensense/album/util/ImageManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/opensense/album/util/ImageManager;

    invoke-direct {v0}, Lcom/htc/opensense/album/util/ImageManager;-><init>()V

    sput-object v0, Lcom/htc/opensense/album/util/ImageManager;->sInstance:Lcom/htc/opensense/album/util/ImageManager;

    const/16 v0, 0x140

    sput v0, Lcom/htc/opensense/album/util/ImageManager;->sScreenWidth:I

    const/16 v0, 0x1e0

    sput v0, Lcom/htc/opensense/album/util/ImageManager;->sScreenHeight:I

    :cond_0
    sget-object v0, Lcom/htc/opensense/album/util/ImageManager;->sInstance:Lcom/htc/opensense/album/util/ImageManager;

    return-object v0
.end method

.method public static isMediaScannerScanning(Landroid/content/Context;)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "volume"

    aput-object v0, v2, v8

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/htc/opensense/album/util/ImageManager;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "external"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return v7
.end method

.method public static makeImageList(Landroid/net/Uri;Landroid/content/Context;IZZ)Lcom/htc/opensense/album/util/ImageManager$IImageList;
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/htc/opensense/album/util/ImageManager;->makeImageList(Landroid/net/Uri;Landroid/content/Context;IZZZ)Lcom/htc/opensense/album/util/ImageManager$IImageList;

    move-result-object v0

    return-object v0
.end method

.method public static makeImageList(Landroid/net/Uri;Landroid/content/Context;IZZZ)Lcom/htc/opensense/album/util/ImageManager$IImageList;
    .locals 11

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_0
    if-eqz p3, :cond_2

    if-nez p4, :cond_1

    new-instance v0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    invoke-static {}, Lcom/htc/opensense/album/util/ImageManager;->instance()Lcom/htc/opensense/album/util/ImageManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p1, v3, p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;-><init>(Lcom/htc/opensense/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :goto_1
    return-object v0

    :cond_0
    const-string v10, ""

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    invoke-static {}, Lcom/htc/opensense/album/util/ImageManager;->instance()Lcom/htc/opensense/album/util/ImageManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalPhotosUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalPhotosThumbsUri()Landroid/net/Uri;

    move-result-object v5

    move-object v2, p1

    move v6, p2

    move-object v7, p0

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;-><init>(Lcom/htc/opensense/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILandroid/net/Uri;Z)V

    goto :goto_1

    :cond_2
    const-string v1, "content://drm"

    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    const/4 v7, 0x0

    if-eqz p0, :cond_3

    const-string v1, "bucketId"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_3
    const/16 v5, 0xf

    if-nez v7, :cond_4

    if-eqz v9, :cond_5

    const/16 v5, 0xe

    :cond_4
    :goto_2
    invoke-static {}, Lcom/htc/opensense/album/util/ImageManager;->instance()Lcom/htc/opensense/album/util/ImageManager;

    move-result-object v1

    sget-object v4, Lcom/htc/opensense/album/util/ImageManager$DataLocation;->ALL:Lcom/htc/opensense/album/util/ImageManager$DataLocation;

    move-object v2, p1

    move v6, p2

    move/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/htc/opensense/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense/album/util/ImageManager$DataLocation;IILjava/lang/String;Z)Lcom/htc/opensense/album/util/ImageManager$IImageList;

    move-result-object v0

    goto :goto_1

    :cond_5
    const/4 v5, 0x1

    goto :goto_2
.end method

.method public static makeSingleImageListfromUri(Landroid/net/Uri;Landroid/content/Context;Landroid/content/ContentResolver;)Lcom/htc/opensense/album/util/ImageManager$IImageList;
    .locals 9

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v0, 0x0

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

    invoke-static {p0, p1, v5, v5, v8}, Lcom/htc/opensense/album/util/ImageManager;->makeImageList(Landroid/net/Uri;Landroid/content/Context;IZZ)Lcom/htc/opensense/album/util/ImageManager$IImageList;

    move-result-object v0

    :goto_0
    return-object v0

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

    new-instance v0, Lcom/htc/opensense/album/util/ImageManager$VideoList;

    invoke-static {}, Lcom/htc/opensense/album/util/ImageManager;->instance()Lcom/htc/opensense/album/util/ImageManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object v7, v6

    invoke-direct/range {v0 .. v8}, Lcom/htc/opensense/album/util/ImageManager$VideoList;-><init>(Lcom/htc/opensense/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const-string v1, "ImageManager"

    const-string v2, "[HTCAlbum][makeSingleImageListfromUri]: uri is not images or video."

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    invoke-static {}, Lcom/htc/opensense/album/util/ImageManager;->instance()Lcom/htc/opensense/album/util/ImageManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p1, p2, p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;-><init>(Lcom/htc/opensense/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public static miniThumbData(Landroid/graphics/Bitmap;)[B
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-ge v6, v7, :cond_2

    sget v6, Lcom/htc/opensense/album/util/ImageManager;->MINI_THUMB_TARGET_SIZE:I

    int-to-float v6, v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float v5, v6, v7

    :goto_1
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v2, v5, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    sget v6, Lcom/htc/opensense/album/util/ImageManager;->MINI_THUMB_TARGET_SIZE:I

    sget v7, Lcom/htc/opensense/album/util/ImageManager;->MINI_THUMB_TARGET_SIZE:I

    const/4 v8, 0x0

    invoke-static {v2, p0, v6, v7, v8}, Lcom/htc/opensense/album/util/MediaUtils;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eq v4, p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x4b

    invoke-virtual {v4, v6, v7, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :try_start_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :cond_2
    sget v6, Lcom/htc/opensense/album/util/ImageManager;->MINI_THUMB_TARGET_SIZE:I

    int-to-float v6, v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v5, v6, v7

    goto :goto_1

    :catch_0
    move-exception v1

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

    invoke-static {v6, v7}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v1, v7

    :goto_0
    return-object v1

    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    move-object v1, v7

    goto :goto_0
.end method

.method private rejectWMDRM(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "mime_type!=\'video/x-wmv-drm\'"

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

    const/4 v1, 0x0

    const/high16 v4, 0x4000

    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

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

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eq p0, v7, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p0, 0x0

    :cond_0
    move-object p0, v7

    :cond_1
    return-object p0
.end method

.method public static rotateIgnoreJavaHeap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 2

    const-string v0, "ImgMgr"

    const-string v1, "Use default"

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/htc/opensense/album/util/ImageManager;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static roundOrientation(I)I
    .locals 3

    move v0, p0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    rem-int/lit16 v0, v0, 0x168

    const/16 v2, 0x2d

    if-ge v0, v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/16 v2, 0x87

    if-ge v0, v2, :cond_2

    const/16 v1, 0x5a

    goto :goto_0

    :cond_2
    const/16 v2, 0xe1

    if-ge v0, v2, :cond_3

    const/16 v1, 0xb4

    goto :goto_0

    :cond_3
    const/16 v2, 0x13b

    if-ge v0, v2, :cond_4

    const/16 v1, 0x10e

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addImage(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JLandroid/location/Location;ILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 20

    new-instance v19, Landroid/content/ContentValues;

    const/4 v2, 0x7

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    const-string v2, "title"

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_display_name"

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "description"

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "datetaken"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "mime_type"

    const-string v4, "image/jpeg"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "orientation"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p9

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string v2, "bucket_id"

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "bucket_display_name"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p7, :cond_0

    const-string v2, "latitude"

    invoke-virtual/range {p7 .. p7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v2, "longitude"

    invoke-virtual/range {p7 .. p7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_0
    if-eqz p9, :cond_1

    if-eqz p10, :cond_1

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

    const-string v2, "_data"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    const/4 v3, 0x0

    invoke-static/range {p9 .. p9}, Lcom/htc/opensense/album/util/DeviceStorageManager;->isFileOnPhoneStorage(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getPhonePhotosUri()Landroid/net/Uri;

    move-result-object v2

    :goto_0
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_3

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

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    const-string v2, "/"

    invoke-virtual {v9, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_2

    add-int/lit8 v2, v14, 0x1

    invoke-virtual {v9, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const/4 v2, 0x0

    const-string v4, "."

    invoke-virtual {v9, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v9, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "_display_name"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "title"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v3

    :cond_4
    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalPhotosUri()Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method public addVideo(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JLandroid/location/Location;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 12

    new-instance v8, Landroid/content/ContentValues;

    const/4 v9, 0x7

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    const-string v9, "title"

    invoke-virtual {v8, v9, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "_display_name"

    invoke-virtual {v8, v9, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "description"

    move-object/from16 v0, p4

    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "datetaken"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v9, "mime_type"

    move-object/from16 v0, p11

    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p9

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    if-eqz p7, :cond_0

    const-string v9, "latitude"

    invoke-virtual/range {p7 .. p7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v9, "longitude"

    invoke-virtual/range {p7 .. p7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_0
    if-eqz p9, :cond_1

    if-eqz p10, :cond_1

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

    const-string v9, "_data"

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalVideosUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {p2, v9, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    return-object v6
.end method

.method public allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense/album/util/ImageManager$DataLocation;II)Lcom/htc/opensense/album/util/ImageManager$IImageList;
    .locals 11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v10}, Lcom/htc/opensense/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense/album/util/ImageManager$DataLocation;IILjava/lang/String;Landroid/net/Uri;ZZLjava/lang/String;)Lcom/htc/opensense/album/util/ImageManager$IImageList;

    move-result-object v0

    return-object v0
.end method

.method public allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense/album/util/ImageManager$DataLocation;IILjava/lang/String;)Lcom/htc/opensense/album/util/ImageManager$IImageList;
    .locals 11

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v10}, Lcom/htc/opensense/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense/album/util/ImageManager$DataLocation;IILjava/lang/String;Landroid/net/Uri;ZZLjava/lang/String;)Lcom/htc/opensense/album/util/ImageManager$IImageList;

    move-result-object v0

    return-object v0
.end method

.method public allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense/album/util/ImageManager$DataLocation;IILjava/lang/String;Landroid/net/Uri;ZZLjava/lang/String;)Lcom/htc/opensense/album/util/ImageManager$IImageList;
    .locals 21

    if-nez p2, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    move/from16 v0, p4

    and-int/lit16 v4, v0, 0x100

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p10

    invoke-direct {v0, v1}, Lcom/htc/opensense/album/util/ImageManager;->rejectWMDRM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p10

    :cond_1
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/htc/opensense/album/util/DeviceStorageManager;->isExternalStorageReady(Z)Z

    move-result v17

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/htc/opensense/album/util/DeviceStorageManager;->isPhoneStorageReady(Z)Z

    move-result v16

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    if-eqz p7, :cond_6

    :try_start_0
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalPhotosUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const/16 v19, 0x1

    :goto_1
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "content"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Lcom/htc/opensense/album/util/ImageManager$ImageList;

    if-eqz v19, :cond_4

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getPhonePhotosUri()Landroid/net/Uri;

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

    invoke-direct/range {v4 .. v14}, Lcom/htc/opensense/album/util/ImageManager$ImageList;-><init>(Lcom/htc/opensense/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;Z)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_3
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/htc/opensense/album/util/ImageManager$IImageList;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Lcom/htc/opensense/album/util/ImageManager$IImageList;

    new-instance v4, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p5

    invoke-direct {v4, v0, v1, v2}, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;-><init>(Lcom/htc/opensense/album/util/ImageManager;[Lcom/htc/opensense/album/util/ImageManager$IImageList;I)V

    goto :goto_0

    :cond_3
    const/16 v19, 0x0

    goto :goto_1

    :cond_4
    :try_start_1
    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalPhotosUri()Landroid/net/Uri;

    move-result-object v9

    goto :goto_2

    :cond_5
    new-instance v4, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p7

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;-><init>(Lcom/htc/opensense/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v15

    invoke-virtual {v15}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_3

    :cond_6
    if-eqz v17, :cond_8

    sget-object v4, Lcom/htc/opensense/album/util/ImageManager$DataLocation;->EXTERNAL:Lcom/htc/opensense/album/util/ImageManager$DataLocation;

    move-object/from16 v0, p3

    if-ne v0, v4, :cond_8

    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_7

    :try_start_2
    new-instance v4, Lcom/htc/opensense/album/util/ImageManager$ImageList;

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalPhotosUri()Landroid/net/Uri;

    move-result-object v8

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalPhotosThumbsUri()Landroid/net/Uri;

    move-result-object v9

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p8

    move-object/from16 v13, p10

    move/from16 v14, p9

    invoke-direct/range {v4 .. v14}, Lcom/htc/opensense/album/util/ImageManager$ImageList;-><init>(Lcom/htc/opensense/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;Z)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_7
    :goto_4
    and-int/lit8 v4, p4, 0x10

    if-eqz v4, :cond_8

    :try_start_3
    new-instance v4, Lcom/htc/opensense/album/util/ImageManager$VideoList;

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalVideosUri()Landroid/net/Uri;

    move-result-object v8

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p10

    move/from16 v12, p9

    invoke-direct/range {v4 .. v12}, Lcom/htc/opensense/album/util/ImageManager$VideoList;-><init>(Lcom/htc/opensense/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_8
    :goto_5
    if-eqz v16, :cond_a

    sget-object v4, Lcom/htc/opensense/album/util/ImageManager$DataLocation;->PHONE:Lcom/htc/opensense/album/util/ImageManager$DataLocation;

    move-object/from16 v0, p3

    if-ne v0, v4, :cond_a

    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_9

    :try_start_4
    new-instance v4, Lcom/htc/opensense/album/util/ImageManager$ImageList;

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getPhonePhotosUri()Landroid/net/Uri;

    move-result-object v8

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getPhonePhotosThumbsUri()Landroid/net/Uri;

    move-result-object v9

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p8

    move-object/from16 v13, p10

    move/from16 v14, p9

    invoke-direct/range {v4 .. v14}, Lcom/htc/opensense/album/util/ImageManager$ImageList;-><init>(Lcom/htc/opensense/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;Z)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_9
    :goto_6
    and-int/lit8 v4, p4, 0x10

    if-eqz v4, :cond_a

    :try_start_5
    new-instance v4, Lcom/htc/opensense/album/util/ImageManager$VideoList;

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getPhoneVideosUri()Landroid/net/Uri;

    move-result-object v8

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p10

    move/from16 v12, p9

    invoke-direct/range {v4 .. v12}, Lcom/htc/opensense/album/util/ImageManager$VideoList;-><init>(Lcom/htc/opensense/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_a
    :goto_7
    sget-object v4, Lcom/htc/opensense/album/util/ImageManager$DataLocation;->INTERNAL:Lcom/htc/opensense/album/util/ImageManager$DataLocation;

    move-object/from16 v0, p3

    if-ne v0, v4, :cond_c

    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_b

    :try_start_6
    new-instance v4, Lcom/htc/opensense/album/util/ImageManager$ImageList;

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getInternalPhotosUri()Landroid/net/Uri;

    move-result-object v8

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getInternalPhotosThumbsUri()Landroid/net/Uri;

    move-result-object v9

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p8

    move-object/from16 v13, p10

    move/from16 v14, p9

    invoke-direct/range {v4 .. v14}, Lcom/htc/opensense/album/util/ImageManager$ImageList;-><init>(Lcom/htc/opensense/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;Z)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_6} :catch_6

    :cond_b
    :goto_8
    and-int/lit8 v4, p4, 0x10

    if-eqz v4, :cond_c

    :try_start_7
    new-instance v4, Lcom/htc/opensense/album/util/ImageManager$VideoList;

    sget-object v8, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p10

    move/from16 v12, p9

    invoke-direct/range {v4 .. v12}, Lcom/htc/opensense/album/util/ImageManager$VideoList;-><init>(Lcom/htc/opensense/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_7 .. :try_end_7} :catch_7

    :cond_c
    :goto_9
    sget-object v4, Lcom/htc/opensense/album/util/ImageManager$DataLocation;->ALL:Lcom/htc/opensense/album/util/ImageManager$DataLocation;

    move-object/from16 v0, p3

    if-ne v0, v4, :cond_2

    if-eqz v17, :cond_d

    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_d

    :try_start_8
    new-instance v4, Lcom/htc/opensense/album/util/ImageManager$ImageList;

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalPhotosUri()Landroid/net/Uri;

    move-result-object v8

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalPhotosThumbsUri()Landroid/net/Uri;

    move-result-object v9

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p8

    move-object/from16 v13, p10

    move/from16 v14, p9

    invoke-direct/range {v4 .. v14}, Lcom/htc/opensense/album/util/ImageManager$ImageList;-><init>(Lcom/htc/opensense/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;Z)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_8 .. :try_end_8} :catch_8

    :cond_d
    :goto_a
    if-eqz v16, :cond_e

    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_e

    :try_start_9
    new-instance v4, Lcom/htc/opensense/album/util/ImageManager$ImageList;

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getPhonePhotosUri()Landroid/net/Uri;

    move-result-object v8

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getPhonePhotosThumbsUri()Landroid/net/Uri;

    move-result-object v9

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p8

    move-object/from16 v13, p10

    move/from16 v14, p9

    invoke-direct/range {v4 .. v14}, Lcom/htc/opensense/album/util/ImageManager$ImageList;-><init>(Lcom/htc/opensense/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;ZLjava/lang/String;Z)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_9 .. :try_end_9} :catch_9

    :cond_e
    :goto_b
    if-eqz v16, :cond_f

    and-int/lit8 v4, p4, 0x10

    if-eqz v4, :cond_f

    :try_start_a
    new-instance v4, Lcom/htc/opensense/album/util/ImageManager$VideoList;

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getPhoneVideosUri()Landroid/net/Uri;

    move-result-object v8

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p10

    move/from16 v12, p9

    invoke-direct/range {v4 .. v12}, Lcom/htc/opensense/album/util/ImageManager$VideoList;-><init>(Lcom/htc/opensense/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_a .. :try_end_a} :catch_a

    :cond_f
    :goto_c
    if-eqz v17, :cond_2

    and-int/lit8 v4, p4, 0x10

    if-eqz v4, :cond_2

    :try_start_b
    new-instance v4, Lcom/htc/opensense/album/util/ImageManager$VideoList;

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalVideosUri()Landroid/net/Uri;

    move-result-object v8

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p10

    move/from16 v12, p9

    invoke-direct/range {v4 .. v12}, Lcom/htc/opensense/album/util/ImageManager$VideoList;-><init>(Lcom/htc/opensense/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v15

    invoke-virtual {v15}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/16 :goto_3

    :catch_2
    move-exception v15

    invoke-virtual {v15}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/16 :goto_4

    :catch_3
    move-exception v15

    invoke-virtual {v15}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/16 :goto_5

    :catch_4
    move-exception v15

    invoke-virtual {v15}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/16 :goto_6

    :catch_5
    move-exception v15

    invoke-virtual {v15}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/16 :goto_7

    :catch_6
    move-exception v15

    invoke-virtual {v15}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/16 :goto_8

    :catch_7
    move-exception v15

    invoke-virtual {v15}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/16 :goto_9

    :catch_8
    move-exception v15

    invoke-virtual {v15}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/16 :goto_a

    :catch_9
    move-exception v15

    invoke-virtual {v15}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_b

    :catch_a
    move-exception v15

    invoke-virtual {v15}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_c
.end method

.method public allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense/album/util/ImageManager$DataLocation;IILjava/lang/String;Z)Lcom/htc/opensense/album/util/ImageManager$IImageList;
    .locals 11

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v10}, Lcom/htc/opensense/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense/album/util/ImageManager$DataLocation;IILjava/lang/String;Landroid/net/Uri;ZZLjava/lang/String;)Lcom/htc/opensense/album/util/ImageManager$IImageList;

    move-result-object v0

    return-object v0
.end method

.method public allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense/album/util/ImageManager$DataLocation;IIZLjava/lang/String;)Lcom/htc/opensense/album/util/ImageManager$IImageList;
    .locals 12

    const/4 v10, 0x0

    if-eqz p7, :cond_0

    const-string v1, "favorite=1"

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v9, p6

    move-object/from16 v11, p7

    invoke-virtual/range {v1 .. v11}, Lcom/htc/opensense/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense/album/util/ImageManager$DataLocation;IILjava/lang/String;Landroid/net/Uri;ZZLjava/lang/String;)Lcom/htc/opensense/album/util/ImageManager$IImageList;

    move-result-object v1

    return-object v1
.end method

.method public allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense/album/util/ImageManager$DataLocation;IIZZ)Lcom/htc/opensense/album/util/ImageManager$IImageList;
    .locals 11

    const/4 v10, 0x0

    if-eqz p7, :cond_0

    const-string v10, "favorite=1"

    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v10}, Lcom/htc/opensense/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense/album/util/ImageManager$DataLocation;IILjava/lang/String;Landroid/net/Uri;ZZLjava/lang/String;)Lcom/htc/opensense/album/util/ImageManager$IImageList;

    move-result-object v0

    return-object v0
.end method

.method public createNonCursorList(Ljava/util/ArrayList;)Lcom/htc/opensense/album/util/ImageManager$IImageList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense/album/util/ImageManager$IImage;",
            ">;)",
            "Lcom/htc/opensense/album/util/ImageManager$IImageList;"
        }
    .end annotation

    new-instance v0, Lcom/htc/opensense/album/util/ImageManager$NonCursorImageList;

    invoke-direct {v0, p0, p1}, Lcom/htc/opensense/album/util/ImageManager$NonCursorImageList;-><init>(Lcom/htc/opensense/album/util/ImageManager;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public emptyImageList()Lcom/htc/opensense/album/util/ImageManager$IImageList;
    .locals 1

    new-instance v0, Lcom/htc/opensense/album/util/ImageManager$2;

    invoke-direct {v0, p0}, Lcom/htc/opensense/album/util/ImageManager$2;-><init>(Lcom/htc/opensense/album/util/ImageManager;)V

    return-object v0
.end method

.method public storeImage(Landroid/net/Uri;Landroid/content/Context;Landroid/content/ContentResolver;ILandroid/graphics/Bitmap;[BLjava/util/HashMap;Ljava/lang/String;)Lcom/htc/opensense/album/util/ImageManager$IAddImage_cancelable;
    .locals 10
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
            "Lcom/htc/opensense/album/util/ImageManager$IAddImage_cancelable;"
        }
    .end annotation

    new-instance v0, Lcom/htc/opensense/album/util/ImageManager$1AddImageCancelable;

    move-object v1, p0

    move-object v2, p5

    move-object/from16 v3, p6

    move-object v4, p1

    move-object/from16 v5, p8

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/htc/opensense/album/util/ImageManager$1AddImageCancelable;-><init>(Lcom/htc/opensense/album/util/ImageManager;Landroid/graphics/Bitmap;[BLandroid/net/Uri;Ljava/lang/String;Landroid/content/Context;Landroid/content/ContentResolver;ILjava/util/HashMap;)V

    return-object v0
.end method
