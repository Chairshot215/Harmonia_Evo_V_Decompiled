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

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 230
    const/16 v0, 0x2710

    new-array v0, v0, [B

    sput-object v0, Lcom/htc/opensense/album/util/ImageManager;->sMiniThumbData:[B

    .line 3081
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/htc/opensense/album/util/ImageManager;->sAcceptableImageTypes:[Ljava/lang/String;

    .line 3083
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

    .line 7813
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/opensense/album/util/ImageManager;->sInstance:Lcom/htc/opensense/album/util/ImageManager;

    .line 7814
    sget v0, Lcom/htc/opensense/album/AlbumCommon/LayoutConstants;->HEIGHT_GRID:I

    sput v0, Lcom/htc/opensense/album/util/ImageManager;->MINI_THUMB_TARGET_SIZE:I

    .line 7823
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

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8946
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager;->CANCEL_DELETE:Z

    return-void
.end method

.method static synthetic access$000()[B
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/htc/opensense/album/util/ImageManager;->sMiniThumbData:[B

    return-object v0
.end method

.method static synthetic access$1000(ZZ)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-static {p0, p1}, Lcom/htc/opensense/album/util/ImageManager;->getWhereClause(ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/htc/opensense/album/util/ImageManager;->THUMB_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 91
    sget v0, Lcom/htc/opensense/album/util/ImageManager;->MINI_THUMB_TARGET_SIZE:I

    return v0
.end method

.method static synthetic access$400(Z)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-static {p0}, Lcom/htc/opensense/album/util/ImageManager;->getWhereClause(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/htc/opensense/album/util/ImageManager;->sAcceptableImageTypes:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/opensense/album/util/ImageManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/htc/opensense/album/util/ImageManager;->CANCEL_DELETE:Z

    return v0
.end method

.method static synthetic access$602(Lcom/htc/opensense/album/util/ImageManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/htc/opensense/album/util/ImageManager;->CANCEL_DELETE:Z

    return p1
.end method

.method static synthetic access$700()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/htc/opensense/album/util/ImageManager;->IMAGE_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800([Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-static {p0, p1}, Lcom/htc/opensense/album/util/ImageManager;->indexOf([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I
    .locals 7
    .parameter "options"
    .parameter "target"

    .prologue
    const/4 v5, 0x1

    .line 138
    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 139
    .local v4, w:I
    iget v3, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 141
    .local v3, h:I
    div-int v2, v4, p1

    .line 142
    .local v2, candidateW:I
    div-int v1, v3, p1

    .line 143
    .local v1, candidateH:I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 145
    .local v0, candidate:I
    if-nez v0, :cond_0

    .line 161
    :goto_0
    return v5

    .line 148
    :cond_0
    if-le v0, v5, :cond_1

    .line 149
    if-le v4, p1, :cond_1

    div-int v6, v4, v0

    if-ge v6, p1, :cond_1

    .line 150
    add-int/lit8 v0, v0, -0x1

    .line 153
    :cond_1
    if-le v0, v5, :cond_2

    .line 154
    if-le v3, p1, :cond_2

    div-int v5, v3, v0

    if-ge v5, p1, :cond_2

    .line 155
    add-int/lit8 v0, v0, -0x1

    :cond_2
    move v5, v0

    .line 161
    goto :goto_0
.end method

.method public static debug_where(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 114
    :try_start_0
    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, ex:Ljava/lang/Exception;
    if-eqz p1, :cond_0

    .line 117
    invoke-static {p0, p1}, Lcom/htc/opensense/album/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_0
    const/4 v2, 0x1

    .line 120
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

    .line 121
    .local v5, s:Ljava/lang/StackTraceElement;
    if-eqz v2, :cond_1

    .line 122
    const/4 v2, 0x0

    .line 120
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/htc/opensense/album/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 127
    .end local v5           #s:Ljava/lang/StackTraceElement;
    :cond_2
    return-void
.end method

.method static forceSync(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 4
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 7896
    move-object v0, p0

    .line 7897
    .local v0, finalcr:Landroid/content/ContentResolver;
    move-object v1, p1

    .line 7898
    .local v1, finaluri:Landroid/net/Uri;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/htc/opensense/album/util/ImageManager$1;

    invoke-direct {v3, v0, v1}, Lcom/htc/opensense/album/util/ImageManager$1;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 7938
    return-void
.end method

.method public static getDefaultDataLocation()Lcom/htc/opensense/album/util/ImageManager$DataLocation;
    .locals 1

    .prologue
    .line 7865
    sget-object v0, Lcom/htc/opensense/album/util/ImageManager$DataLocation;->EXTERNAL:Lcom/htc/opensense/album/util/ImageManager$DataLocation;

    return-object v0
.end method

.method private getSort(I)Ljava/lang/String;
    .locals 1
    .parameter "sort"

    .prologue
    .line 8809
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
    .parameter "isImage"

    .prologue
    .line 3074
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/htc/opensense/album/util/ImageManager;->getWhereClause(ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final getWhereClause(ZZ)Ljava/lang/String;
    .locals 1
    .parameter "isImage"
    .parameter "filterAlbumArt"

    .prologue
    .line 3078
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
    .parameter "array"
    .parameter "s"

    .prologue
    .line 7868
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 7869
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7873
    .end local v0           #i:I
    :goto_1
    return v0

    .line 7868
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7873
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static instance()Lcom/htc/opensense/album/util/ImageManager;
    .locals 1

    .prologue
    .line 7881
    sget-object v0, Lcom/htc/opensense/album/util/ImageManager;->sInstance:Lcom/htc/opensense/album/util/ImageManager;

    if-nez v0, :cond_0

    .line 7882
    new-instance v0, Lcom/htc/opensense/album/util/ImageManager;

    invoke-direct {v0}, Lcom/htc/opensense/album/util/ImageManager;-><init>()V

    sput-object v0, Lcom/htc/opensense/album/util/ImageManager;->sInstance:Lcom/htc/opensense/album/util/ImageManager;

    .line 7884
    const/16 v0, 0x140

    sput v0, Lcom/htc/opensense/album/util/ImageManager;->sScreenWidth:I

    .line 7885
    const/16 v0, 0x1e0

    sput v0, Lcom/htc/opensense/album/util/ImageManager;->sScreenHeight:I

    .line 7889
    :cond_0
    sget-object v0, Lcom/htc/opensense/album/util/ImageManager;->sInstance:Lcom/htc/opensense/album/util/ImageManager;

    return-object v0
.end method

.method public static isMediaScannerScanning(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 8930
    const/4 v7, 0x0

    .line 8931
    .local v7, result:Z
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

    .line 8933
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 8934
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_0

    .line 8935
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 8936
    const-string v0, "external"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 8938
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 8943
    :cond_1
    return v7
.end method

.method public static makeImageList(Landroid/net/Uri;Landroid/content/Context;IZZ)Lcom/htc/opensense/album/util/ImageManager$IImageList;
    .locals 6
    .parameter "uri"
    .parameter "ctx"
    .parameter "sort"
    .parameter "viewSingleImage"
    .parameter "shareAndDelete"

    .prologue
    .line 8404
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
    .parameter "uri"
    .parameter "ctx"
    .parameter "sort"
    .parameter "viewSingleImage"
    .parameter "shareAndDelete"
    .parameter "filterAlbumArt"

    .prologue
    .line 8414
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 8415
    .local v3, cr:Landroid/content/ContentResolver;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    .line 8426
    .local v10, uriString:Ljava/lang/String;
    :goto_0
    if-eqz p3, :cond_2

    .line 8428
    if-nez p4, :cond_1

    .line 8431
    new-instance v0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    invoke-static {}, Lcom/htc/opensense/album/util/ImageManager;->instance()Lcom/htc/opensense/album/util/ImageManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p1, v3, p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;-><init>(Lcom/htc/opensense/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 8466
    .local v0, imageList:Lcom/htc/opensense/album/util/ImageManager$IImageList;
    :goto_1
    return-object v0

    .line 8415
    .end local v0           #imageList:Lcom/htc/opensense/album/util/ImageManager$IImageList;
    .end local v10           #uriString:Ljava/lang/String;
    :cond_0
    const-string v10, ""

    goto :goto_0

    .line 8433
    .restart local v10       #uriString:Ljava/lang/String;
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

    .restart local v0       #imageList:Lcom/htc/opensense/album/util/ImageManager$IImageList;
    goto :goto_1

    .line 8439
    .end local v0           #imageList:Lcom/htc/opensense/album/util/ImageManager$IImageList;
    :cond_2
    const-string v1, "content://drm"

    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    .line 8440
    .local v9, queryDRM:Z
    const/4 v7, 0x0

    .line 8441
    .local v7, bucketId:Ljava/lang/String;
    if-eqz p0, :cond_3

    .line 8442
    const-string v1, "bucketId"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 8443
    :cond_3
    const/16 v5, 0xf

    .line 8444
    .local v5, inclusion:I
    if-nez v7, :cond_4

    .line 8445
    if-eqz v9, :cond_5

    .line 8446
    const/16 v5, 0xe

    .line 8452
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

    .restart local v0       #imageList:Lcom/htc/opensense/album/util/ImageManager$IImageList;
    goto :goto_1

    .line 8448
    .end local v0           #imageList:Lcom/htc/opensense/album/util/ImageManager$IImageList;
    :cond_5
    const/4 v5, 0x1

    goto :goto_2
.end method

.method public static makeSingleImageListfromUri(Landroid/net/Uri;Landroid/content/Context;Landroid/content/ContentResolver;)Lcom/htc/opensense/album/util/ImageManager$IImageList;
    .locals 9
    .parameter "uri"
    .parameter "ctx"
    .parameter "cr"

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 8380
    const/4 v0, 0x0

    .line 8383
    .local v0, mList:Lcom/htc/opensense/album/util/ImageManager$IImageList;
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

    .line 8386
    invoke-static {p0, p1, v5, v5, v8}, Lcom/htc/opensense/album/util/ImageManager;->makeImageList(Landroid/net/Uri;Landroid/content/Context;IZZ)Lcom/htc/opensense/album/util/ImageManager$IImageList;

    move-result-object v0

    .line 8400
    :goto_0
    return-object v0

    .line 8388
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

    .line 8391
    new-instance v0, Lcom/htc/opensense/album/util/ImageManager$VideoList;

    .end local v0           #mList:Lcom/htc/opensense/album/util/ImageManager$IImageList;
    invoke-static {}, Lcom/htc/opensense/album/util/ImageManager;->instance()Lcom/htc/opensense/album/util/ImageManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object v7, v6

    invoke-direct/range {v0 .. v8}, Lcom/htc/opensense/album/util/ImageManager$VideoList;-><init>(Lcom/htc/opensense/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;Z)V

    .restart local v0       #mList:Lcom/htc/opensense/album/util/ImageManager$IImageList;
    goto :goto_0

    .line 8395
    :cond_1
    const-string v1, "ImageManager"

    const-string v2, "[HTCAlbum][makeSingleImageListfromUri]: uri is not images or video."

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8397
    new-instance v0, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;

    .end local v0           #mList:Lcom/htc/opensense/album/util/ImageManager$IImageList;
    invoke-static {}, Lcom/htc/opensense/album/util/ImageManager;->instance()Lcom/htc/opensense/album/util/ImageManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p1, p2, p0}, Lcom/htc/opensense/album/util/ImageManager$SingleImageList;-><init>(Lcom/htc/opensense/album/util/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .restart local v0       #mList:Lcom/htc/opensense/album/util/ImageManager$IImageList;
    goto :goto_0
.end method

.method public static miniThumbData(Landroid/graphics/Bitmap;)[B
    .locals 9
    .parameter "source"

    .prologue
    const/4 v0, 0x0

    .line 7972
    if-nez p0, :cond_0

    .line 8000
    :goto_0
    return-object v0

    .line 7976
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 7977
    sget v6, Lcom/htc/opensense/album/util/ImageManager;->MINI_THUMB_TARGET_SIZE:I

    int-to-float v6, v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float v5, v6, v7

    .line 7981
    .local v5, scale:F
    :goto_1
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 7982
    .local v2, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v2, v5, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 7983
    sget v6, Lcom/htc/opensense/album/util/ImageManager;->MINI_THUMB_TARGET_SIZE:I

    sget v7, Lcom/htc/opensense/album/util/ImageManager;->MINI_THUMB_TARGET_SIZE:I

    const/4 v8, 0x0

    invoke-static {v2, p0, v6, v7, v8}, Lcom/htc/opensense/album/util/MediaUtils;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 7986
    .local v4, miniThumbnail:Landroid/graphics/Bitmap;
    if-eq v4, p0, :cond_1

    .line 7987
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 7989
    :cond_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 7990
    .local v3, miniOutStream:Ljava/io/ByteArrayOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x4b

    invoke-virtual {v4, v6, v7, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 7991
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 7994
    :try_start_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 7995
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 7996
    .local v0, data:[B
    goto :goto_0

    .line 7979
    .end local v0           #data:[B
    .end local v2           #matrix:Landroid/graphics/Matrix;
    .end local v3           #miniOutStream:Ljava/io/ByteArrayOutputStream;
    .end local v4           #miniThumbnail:Landroid/graphics/Bitmap;
    .end local v5           #scale:F
    :cond_2
    sget v6, Lcom/htc/opensense/album/util/ImageManager;->MINI_THUMB_TARGET_SIZE:I

    int-to-float v6, v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v5, v6, v7

    .restart local v5       #scale:F
    goto :goto_1

    .line 7997
    .restart local v2       #matrix:Landroid/graphics/Matrix;
    .restart local v3       #miniOutStream:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #miniThumbnail:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 7998
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

    invoke-static {v6, v7}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

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

    .line 8917
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 8918
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    move-object v1, v7

    .line 8924
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

    .line 8921
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 8922
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v6

    .line 8923
    .local v6, ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v6}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    move-object v1, v7

    .line 8924
    goto :goto_0
.end method

.method private rejectWMDRM(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "where"

    .prologue
    .line 8569
    if-nez p1, :cond_0

    .line 8570
    const-string v0, "mime_type!=\'video/x-wmv-drm\'"

    .line 8572
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

    .line 8004
    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    .line 8005
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 8006
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

    .line 8008
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 8010
    .local v7, b2:Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_0

    .line 8011
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 8012
    const/4 p0, 0x0

    .line 8014
    :cond_0
    move-object p0, v7

    .line 8016
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
    .line 8023
    const-string v0, "ImgMgr"

    const-string v1, "Use default"

    invoke-static {v0, v1}, Lcom/htc/opensense/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8024
    invoke-static {p0, p1}, Lcom/htc/opensense/album/util/ImageManager;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static roundOrientation(I)I
    .locals 3
    .parameter "orientationInput"

    .prologue
    .line 8042
    move v0, p0

    .line 8043
    .local v0, orientation:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 8044
    const/4 v0, 0x0

    .line 8046
    :cond_0
    rem-int/lit16 v0, v0, 0x168

    .line 8048
    const/16 v2, 0x2d

    if-ge v0, v2, :cond_1

    .line 8049
    const/4 v1, 0x0

    .line 8061
    .local v1, retVal:I
    :goto_0
    return v1

    .line 8050
    .end local v1           #retVal:I
    :cond_1
    const/16 v2, 0x87

    if-ge v0, v2, :cond_2

    .line 8051
    const/16 v1, 0x5a

    .restart local v1       #retVal:I
    goto :goto_0

    .line 8052
    .end local v1           #retVal:I
    :cond_2
    const/16 v2, 0xe1

    if-ge v0, v2, :cond_3

    .line 8053
    const/16 v1, 0xb4

    .restart local v1       #retVal:I
    goto :goto_0

    .line 8054
    .end local v1           #retVal:I
    :cond_3
    const/16 v2, 0x13b

    if-ge v0, v2, :cond_4

    .line 8055
    const/16 v1, 0x10e

    .restart local v1       #retVal:I
    goto :goto_0

    .line 8057
    .end local v1           #retVal:I
    :cond_4
    const/4 v1, 0x0

    .restart local v1       #retVal:I
    goto :goto_0
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
    .line 8074
    new-instance v19, Landroid/content/ContentValues;

    const/4 v2, 0x7

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 8075
    .local v19, values:Landroid/content/ContentValues;
    const-string v2, "title"

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8076
    const-string v2, "_display_name"

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8077
    const-string v2, "description"

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8078
    const-string v2, "datetaken"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 8079
    const-string v2, "mime_type"

    const-string v4, "image/jpeg"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8080
    const-string v2, "orientation"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8082
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p9

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8083
    .local v12, parentFile:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    .line 8084
    .local v13, path:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 8086
    .local v11, name:Ljava/lang/String;
    const-string v2, "bucket_id"

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8087
    const-string v2, "bucket_display_name"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8091
    if-eqz p7, :cond_0

    .line 8095
    const-string v2, "latitude"

    invoke-virtual/range {p7 .. p7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 8096
    const-string v2, "longitude"

    invoke-virtual/range {p7 .. p7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 8099
    :cond_0
    if-eqz p9, :cond_1

    if-eqz p10, :cond_1

    .line 8100
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

    .line 8101
    .local v18, value:Ljava/lang/String;
    const-string v2, "_data"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8104
    .end local v18           #value:Ljava/lang/String;
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 8105
    .local v15, t3:J
    const/4 v3, 0x0

    .line 8106
    .local v3, uri:Landroid/net/Uri;
    invoke-static/range {p9 .. p9}, Lcom/htc/opensense/album/util/DeviceStorageManager;->isFileOnPhoneStorage(Ljava/lang/String;)Z

    move-result v10

    .line 8107
    .local v10, isPhoneStorage:Z
    if-eqz v10, :cond_4

    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getPhonePhotosUri()Landroid/net/Uri;

    move-result-object v2

    :goto_0
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 8114
    if-eqz v3, :cond_3

    .line 8115
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

    .line 8121
    .local v8, c:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8122
    const/4 v2, 0x2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 8123
    .local v9, filePath:Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 8124
    const-string v2, "/"

    invoke-virtual {v9, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    .line 8125
    .local v14, pos:I
    if-ltz v14, :cond_2

    .line 8126
    add-int/lit8 v2, v14, 0x1

    invoke-virtual {v9, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 8127
    const/4 v2, 0x0

    const-string v4, "."

    invoke-virtual {v9, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v9, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 8134
    .local v17, title:Ljava/lang/String;
    new-instance v19, Landroid/content/ContentValues;

    .end local v19           #values:Landroid/content/ContentValues;
    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 8135
    .restart local v19       #values:Landroid/content/ContentValues;
    const-string v2, "_display_name"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8136
    const-string v2, "title"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8137
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 8141
    .end local v9           #filePath:Ljava/lang/String;
    .end local v14           #pos:I
    .end local v17           #title:Ljava/lang/String;
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 8143
    .end local v8           #c:Landroid/database/Cursor;
    :cond_3
    return-object v3

    .line 8107
    :cond_4
    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalPhotosUri()Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
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
    .line 8157
    new-instance v8, Landroid/content/ContentValues;

    const/4 v9, 0x7

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 8159
    .local v8, values:Landroid/content/ContentValues;
    const-string v9, "title"

    invoke-virtual {v8, v9, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8160
    const-string v9, "_display_name"

    invoke-virtual {v8, v9, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8161
    const-string v9, "description"

    move-object/from16 v0, p4

    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8162
    const-string v9, "datetaken"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 8163
    const-string v9, "mime_type"

    move-object/from16 v0, p11

    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8166
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p9

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8167
    .local v2, parentFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 8168
    .local v3, path:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 8172
    .local v1, name:Ljava/lang/String;
    if-eqz p7, :cond_0

    .line 8176
    const-string v9, "latitude"

    invoke-virtual/range {p7 .. p7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 8177
    const-string v9, "longitude"

    invoke-virtual/range {p7 .. p7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 8180
    :cond_0
    if-eqz p9, :cond_1

    if-eqz p10, :cond_1

    .line 8181
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

    .line 8182
    .local v7, value:Ljava/lang/String;
    const-string v9, "_data"

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8185
    .end local v7           #value:Ljava/lang/String;
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 8186
    .local v4, t3:J
    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalVideosUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {p2, v9, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 8188
    .local v6, uri:Landroid/net/Uri;
    return-object v6
.end method

.method public allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense/album/util/ImageManager$DataLocation;II)Lcom/htc/opensense/album/util/ImageManager$IImageList;
    .locals 11
    .parameter "ctx"
    .parameter "cr"
    .parameter "location"
    .parameter "inclusion"
    .parameter "sort"

    .prologue
    .line 8540
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
    .parameter "ctx"
    .parameter "cr"
    .parameter "location"
    .parameter "inclusion"
    .parameter "sort"
    .parameter "bucketId"

    .prologue
    .line 8544
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

    .prologue
    .line 8582
    if-nez p2, :cond_0

    .line 8583
    const/4 v4, 0x0

    .line 8784
    :goto_0
    return-object v4

    .line 8585
    :cond_0
    move/from16 v0, p4

    and-int/lit16 v4, v0, 0x100

    if-eqz v4, :cond_1

    .line 8587
    move-object/from16 v0, p0

    move-object/from16 v1, p10

    invoke-direct {v0, v1}, Lcom/htc/opensense/album/util/ImageManager;->rejectWMDRM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p10

    .line 8590
    :cond_1
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/htc/opensense/album/util/DeviceStorageManager;->isExternalStorageReady(Z)Z

    move-result v17

    .line 8591
    .local v17, haveSdCard:Z
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/htc/opensense/album/util/DeviceStorageManager;->isPhoneStorageReady(Z)Z

    move-result v16

    .line 8595
    .local v16, havePhoneStorage:Z
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 8600
    .local v20, l:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/util/ImageManager$IImageList;>;"
    if-eqz p7, :cond_6

    .line 8602
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

    .line 8603
    .local v19, isPhoneStorage:Z
    :goto_1
    invoke-virtual/range {p7 .. p7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "content"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 8605
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

    .line 8783
    .end local v19           #isPhoneStorage:Z
    :cond_2
    :goto_3
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/htc/opensense/album/util/ImageManager$IImageList;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Lcom/htc/opensense/album/util/ImageManager$IImageList;

    .line 8784
    .local v18, imageList:[Lcom/htc/opensense/album/util/ImageManager$IImageList;
    new-instance v4, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p5

    invoke-direct {v4, v0, v1, v2}, Lcom/htc/opensense/album/util/ImageManager$ImageListUber;-><init>(Lcom/htc/opensense/album/util/ImageManager;[Lcom/htc/opensense/album/util/ImageManager$IImageList;I)V

    goto :goto_0

    .line 8602
    .end local v18           #imageList:[Lcom/htc/opensense/album/util/ImageManager$IImageList;
    :cond_3
    const/16 v19, 0x0

    goto :goto_1

    .line 8605
    .restart local v19       #isPhoneStorage:Z
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalPhotosUri()Landroid/net/Uri;

    move-result-object v9

    goto :goto_2

    .line 8612
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

    .line 8614
    .end local v19           #isPhoneStorage:Z
    :catch_0
    move-exception v15

    .line 8615
    .local v15, ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v15}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_3

    .line 8619
    .end local v15           #ex:Ljava/lang/UnsupportedOperationException;
    :cond_6
    if-eqz v17, :cond_8

    sget-object v4, Lcom/htc/opensense/album/util/ImageManager$DataLocation;->EXTERNAL:Lcom/htc/opensense/album/util/ImageManager$DataLocation;

    move-object/from16 v0, p3

    if-ne v0, v4, :cond_8

    .line 8620
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_7

    .line 8622
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

    .line 8639
    :cond_7
    :goto_4
    and-int/lit8 v4, p4, 0x10

    if-eqz v4, :cond_8

    .line 8641
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

    .line 8659
    :cond_8
    :goto_5
    if-eqz v16, :cond_a

    sget-object v4, Lcom/htc/opensense/album/util/ImageManager$DataLocation;->PHONE:Lcom/htc/opensense/album/util/ImageManager$DataLocation;

    move-object/from16 v0, p3

    if-ne v0, v4, :cond_a

    .line 8661
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_9

    .line 8663
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

    .line 8670
    :cond_9
    :goto_6
    and-int/lit8 v4, p4, 0x10

    if-eqz v4, :cond_a

    .line 8672
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

    .line 8680
    :cond_a
    :goto_7
    sget-object v4, Lcom/htc/opensense/album/util/ImageManager$DataLocation;->INTERNAL:Lcom/htc/opensense/album/util/ImageManager$DataLocation;

    move-object/from16 v0, p3

    if-ne v0, v4, :cond_c

    .line 8681
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_b

    .line 8683
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

    .line 8700
    :cond_b
    :goto_8
    and-int/lit8 v4, p4, 0x10

    if-eqz v4, :cond_c

    .line 8702
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

    .line 8710
    :cond_c
    :goto_9
    sget-object v4, Lcom/htc/opensense/album/util/ImageManager$DataLocation;->ALL:Lcom/htc/opensense/album/util/ImageManager$DataLocation;

    move-object/from16 v0, p3

    if-ne v0, v4, :cond_2

    .line 8725
    if-eqz v17, :cond_d

    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_d

    .line 8727
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

    .line 8743
    :cond_d
    :goto_a
    if-eqz v16, :cond_e

    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_e

    .line 8745
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

    .line 8752
    :cond_e
    :goto_b
    if-eqz v16, :cond_f

    and-int/lit8 v4, p4, 0x10

    if-eqz v4, :cond_f

    .line 8754
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

    .line 8761
    :cond_f
    :goto_c
    if-eqz v17, :cond_2

    and-int/lit8 v4, p4, 0x10

    if-eqz v4, :cond_2

    .line 8763
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

    .line 8766
    :catch_1
    move-exception v15

    .line 8767
    .restart local v15       #ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v15}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/16 :goto_3

    .line 8626
    .end local v15           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_2
    move-exception v15

    .line 8627
    .restart local v15       #ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v15}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/16 :goto_4

    .line 8644
    .end local v15           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_3
    move-exception v15

    .line 8645
    .restart local v15       #ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v15}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/16 :goto_5

    .line 8666
    .end local v15           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_4
    move-exception v15

    .line 8667
    .restart local v15       #ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v15}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/16 :goto_6

    .line 8675
    .end local v15           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_5
    move-exception v15

    .line 8676
    .restart local v15       #ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v15}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/16 :goto_7

    .line 8687
    .end local v15           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_6
    move-exception v15

    .line 8688
    .restart local v15       #ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v15}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/16 :goto_8

    .line 8705
    .end local v15           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_7
    move-exception v15

    .line 8706
    .restart local v15       #ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v15}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/16 :goto_9

    .line 8730
    .end local v15           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_8
    move-exception v15

    .line 8731
    .restart local v15       #ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v15}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto/16 :goto_a

    .line 8748
    .end local v15           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_9
    move-exception v15

    .line 8749
    .restart local v15       #ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v15}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_b

    .line 8757
    .end local v15           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_a
    move-exception v15

    .line 8758
    .restart local v15       #ex:Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v15}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_c
.end method

.method public allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense/album/util/ImageManager$DataLocation;IILjava/lang/String;Z)Lcom/htc/opensense/album/util/ImageManager$IImageList;
    .locals 11
    .parameter "ctx"
    .parameter "cr"
    .parameter "location"
    .parameter "inclusion"
    .parameter "sort"
    .parameter "bucketId"
    .parameter "filterAlbumArt"

    .prologue
    .line 8548
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
    .parameter "ctx"
    .parameter "cr"
    .parameter "location"
    .parameter "inclusion"
    .parameter "sort"
    .parameter "filterAlbumArt"
    .parameter "where"

    .prologue
    .line 8552
    const/4 v10, 0x0

    .line 8553
    .local v10, isFavorite:Z
    if-eqz p7, :cond_0

    .line 8554
    const-string v1, "favorite=1"

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    .line 8556
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
    .parameter "ctx"
    .parameter "cr"
    .parameter "location"
    .parameter "inclusion"
    .parameter "sort"
    .parameter "filterAlbumArt"
    .parameter "isFavorite"

    .prologue
    .line 8560
    const/4 v10, 0x0

    .line 8561
    .local v10, where:Ljava/lang/String;
    if-eqz p7, :cond_0

    .line 8562
    const-string v10, "favorite=1"

    .line 8564
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
    .parameter
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

    .prologue
    .line 8813
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense/album/util/ImageManager$IImage;>;"
    new-instance v0, Lcom/htc/opensense/album/util/ImageManager$NonCursorImageList;

    invoke-direct {v0, p0, p1}, Lcom/htc/opensense/album/util/ImageManager$NonCursorImageList;-><init>(Lcom/htc/opensense/album/util/ImageManager;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public emptyImageList()Lcom/htc/opensense/album/util/ImageManager$IImageList;
    .locals 1

    .prologue
    .line 8470
    new-instance v0, Lcom/htc/opensense/album/util/ImageManager$2;

    invoke-direct {v0, p0}, Lcom/htc/opensense/album/util/ImageManager$2;-><init>(Lcom/htc/opensense/album/util/ImageManager;)V

    return-object v0
.end method

.method public storeImage(Landroid/net/Uri;Landroid/content/Context;Landroid/content/ContentResolver;ILandroid/graphics/Bitmap;[BLjava/util/HashMap;Ljava/lang/String;)Lcom/htc/opensense/album/util/ImageManager$IAddImage_cancelable;
    .locals 10
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
            "Lcom/htc/opensense/album/util/ImageManager$IAddImage_cancelable;"
        }
    .end annotation

    .prologue
    .line 8375
    .local p7, exifData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
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
