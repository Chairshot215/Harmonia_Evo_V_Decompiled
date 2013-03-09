.class public Lcom/htc/photowidget3d/image/ImageProvider;
.super Ljava/lang/Object;
.source "ImageProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;,
        Lcom/htc/photowidget3d/image/ImageProvider$ListContentObserver;,
        Lcom/htc/photowidget3d/image/ImageProvider$DataRefreshListener;
    }
.end annotation


# static fields
.field private static final BITMAP_CACHE_SIZE:I = 0x5

.field private static final CACHE_SET_PHOTO_WIDGET:I = 0x1e5c2

.field private static final FILE_CACHE_SIZE:I = 0x1f

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field mCacheManager:Lcom/htc/opensense/album/util/CacheManager;

.field mContext:Landroid/content/Context;

.field mDataRefreshListener:Lcom/htc/photowidget3d/image/ImageProvider$DataRefreshListener;

.field mHQImageDecoder:Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;

.field mHandler:Landroid/os/Handler;

.field mImageHeight:I

.field mImageWidth:I

.field mIsContentChanged:Z

.field mList:Lcom/htc/photowidget3d/image/IImageList;

.field mListParam:Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;

.field mObserver:Lcom/htc/photowidget3d/image/ImageProvider$ListContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/htc/photowidget3d/image/ImageProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/photowidget3d/image/ImageProvider;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;II)V
    .locals 4
    .parameter "context"
    .parameter "handler"
    .parameter "outW"
    .parameter "outH"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mList:Lcom/htc/photowidget3d/image/IImageList;

    .line 42
    iput-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mContext:Landroid/content/Context;

    .line 43
    iput-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mHandler:Landroid/os/Handler;

    .line 44
    iput-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mListParam:Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;

    .line 45
    iput-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mObserver:Lcom/htc/photowidget3d/image/ImageProvider$ListContentObserver;

    .line 49
    iput-boolean v2, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mIsContentChanged:Z

    .line 56
    iput-object p1, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mHandler:Landroid/os/Handler;

    .line 58
    iput p3, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mImageWidth:I

    .line 59
    iput p4, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mImageHeight:I

    .line 60
    new-instance v0, Lcom/htc/photowidget3d/image/ImageProvider$ListContentObserver;

    iget-object v1, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/htc/photowidget3d/image/ImageProvider$ListContentObserver;-><init>(Lcom/htc/photowidget3d/image/ImageProvider;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mObserver:Lcom/htc/photowidget3d/image/ImageProvider$ListContentObserver;

    .line 61
    new-instance v0, Lcom/htc/opensense/album/util/CacheManager;

    const/16 v1, 0x1f

    invoke-direct {v0, p1, v3, v1}, Lcom/htc/opensense/album/util/CacheManager;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mCacheManager:Lcom/htc/opensense/album/util/CacheManager;

    .line 62
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mCacheManager:Lcom/htc/opensense/album/util/CacheManager;

    const v1, 0x1e5c2

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/opensense/album/util/CacheManager;->resetMemoryCacheSize(IIZ)V

    .line 63
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/htc/photowidget3d/image/ImageProvider;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/photowidget3d/image/ImageProvider;Ljava/lang/String;Ljava/lang/String;IIIII)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 25
    invoke-direct/range {p0 .. p7}, Lcom/htc/photowidget3d/image/ImageProvider;->getHQBitmap(Ljava/lang/String;Ljava/lang/String;IIIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getHQBitmap(Ljava/lang/String;Ljava/lang/String;IIIII)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "dataPath"
    .parameter "mimeType"
    .parameter "outputW"
    .parameter "outputH"
    .parameter "imageW"
    .parameter "imageH"
    .parameter "orientation"

    .prologue
    .line 337
    move v4, p3

    .line 338
    .local v4, outW:I
    move v3, p4

    .line 340
    .local v3, outH:I
    if-nez p1, :cond_0

    .line 341
    const/4 v5, 0x0

    .line 367
    :goto_0
    return-object v5

    .line 345
    :cond_0
    int-to-float v5, v3

    int-to-float v6, p6

    div-float v0, v5, v6

    .line 346
    .local v0, aspect:F
    int-to-float v5, p5

    mul-float/2addr v5, v0

    :try_start_0
    invoke-static {v5}, Ljava/lang/Math;->round(F)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 355
    :goto_1
    const/4 v1, 0x0

    .line 356
    .local v1, decodeType:I
    invoke-static {}, Lcom/htc/photowidget3d/util/CustomizeSetting;->isSupport3DContent()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 358
    const-string v5, "image/jps"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 359
    const/4 v1, 0x1

    .line 364
    :cond_1
    :goto_2
    sget-object v5, Lcom/htc/photowidget3d/image/ImageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getHQBitmap] Size requested, W = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", H = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", decode type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-static {p1, v4, v3, p7, v1}, Lcom/htc/photowidget3d/util/ImageUtils;->decodeByScalado(Ljava/lang/String;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0

    .line 348
    .end local v1           #decodeType:I
    :catch_0
    move-exception v2

    .line 350
    .local v2, ex:Ljava/lang/Exception;
    sget-object v5, Lcom/htc/photowidget3d/image/ImageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getHQBitmap] Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/photowidget3d/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    move v4, p3

    .line 352
    move v3, p4

    goto :goto_1

    .line 360
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v1       #decodeType:I
    :cond_2
    const-string v5, "image/mpo"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 361
    const/4 v1, 0x2

    goto :goto_2
.end method


# virtual methods
.method public addDecodeTask(I)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mHQImageDecoder:Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mHQImageDecoder:Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;->addTask(Ljava/lang/Integer;)Z

    .line 204
    :cond_0
    return-void
.end method

.method public doCreateImageList(Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;)V
    .locals 2
    .parameter "param"

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/htc/photowidget3d/image/ImageProvider;->stopDecoder()V

    .line 115
    invoke-virtual {p0}, Lcom/htc/photowidget3d/image/ImageProvider;->releaseResource()V

    .line 117
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mObserver:Lcom/htc/photowidget3d/image/ImageProvider$ListContentObserver;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mObserver:Lcom/htc/photowidget3d/image/ImageProvider$ListContentObserver;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/image/ImageProvider$ListContentObserver;->stopMonitor()V

    .line 120
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mIsContentChanged:Z

    .line 122
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mList:Lcom/htc/photowidget3d/image/IImageList;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mList:Lcom/htc/photowidget3d/image/IImageList;

    invoke-interface {v0}, Lcom/htc/photowidget3d/image/IImageList;->close()V

    .line 125
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mList:Lcom/htc/photowidget3d/image/IImageList;

    .line 127
    iput-object p1, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mListParam:Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;

    .line 129
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mListParam:Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;

    if-nez v0, :cond_3

    .line 155
    :cond_2
    :goto_0
    return-void

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mListParam:Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/image/ImageManager;->makeCollectionList(Landroid/content/ContentResolver;Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;)Lcom/htc/photowidget3d/image/IImageList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mList:Lcom/htc/photowidget3d/image/IImageList;

    .line 134
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mList:Lcom/htc/photowidget3d/image/IImageList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mList:Lcom/htc/photowidget3d/image/IImageList;

    invoke-interface {v0}, Lcom/htc/photowidget3d/image/IImageList;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 136
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mCacheManager:Lcom/htc/opensense/album/util/CacheManager;

    if-eqz v0, :cond_4

    .line 138
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mCacheManager:Lcom/htc/opensense/album/util/CacheManager;

    iget-object v1, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mList:Lcom/htc/photowidget3d/image/IImageList;

    invoke-interface {v1}, Lcom/htc/photowidget3d/image/IImageList;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/util/CacheManager;->setRangeBoundary(I)V

    .line 147
    :cond_4
    invoke-virtual {p0}, Lcom/htc/photowidget3d/image/ImageProvider;->startDecoder()V

    .line 150
    :cond_5
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mObserver:Lcom/htc/photowidget3d/image/ImageProvider$ListContentObserver;

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mObserver:Lcom/htc/photowidget3d/image/ImageProvider$ListContentObserver;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/image/ImageProvider$ListContentObserver;->startMonitor()V

    goto :goto_0
.end method

.method public getBitmap(III)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "pos"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v1, 0x0

    .line 227
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mList:Lcom/htc/photowidget3d/image/IImageList;

    if-nez v0, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-object v1

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mList:Lcom/htc/photowidget3d/image/IImageList;

    invoke-interface {v0, p1}, Lcom/htc/photowidget3d/image/IImageList;->getImageAt(I)Lcom/htc/photowidget3d/image/IImage;

    move-result-object v9

    .line 231
    .local v9, image:Lcom/htc/photowidget3d/image/IImage;
    if-eqz v9, :cond_0

    .line 234
    invoke-interface {v9}, Lcom/htc/photowidget3d/image/IImage;->getDataPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9}, Lcom/htc/photowidget3d/image/IImage;->getMimeType()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mImageWidth:I

    iget v4, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mImageHeight:I

    invoke-interface {v9}, Lcom/htc/photowidget3d/image/IImage;->getWidth()I

    move-result v5

    invoke-interface {v9}, Lcom/htc/photowidget3d/image/IImage;->getHeight()I

    move-result v6

    invoke-interface {v9}, Lcom/htc/photowidget3d/image/IImage;->getDegreesRotated()I

    move-result v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/htc/photowidget3d/image/ImageProvider;->getHQBitmap(Ljava/lang/String;Ljava/lang/String;IIIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 239
    .local v1, bitmap:Landroid/graphics/Bitmap;
    sget-object v0, Lcom/htc/photowidget3d/image/ImageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getBitmap] Position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Bitmap = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    if-eqz v1, :cond_2

    .line 243
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mCacheManager:Lcom/htc/opensense/album/util/CacheManager;

    const v3, 0x1e5c2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v9}, Lcom/htc/photowidget3d/image/IImage;->getDataPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v9}, Lcom/htc/photowidget3d/image/IImage;->getDegreesRotated()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v9}, Lcom/htc/photowidget3d/image/IImage;->getDateModified()J

    move-result-wide v5

    invoke-interface {v9}, Lcom/htc/photowidget3d/image/IImage;->getFileSize()J

    move-result-wide v7

    long-to-int v7, v7

    const/4 v8, 0x3

    move v2, p1

    invoke-virtual/range {v0 .. v8}, Lcom/htc/opensense/album/util/CacheManager;->push(Landroid/graphics/Bitmap;IILjava/lang/String;JII)V

    .line 248
    :cond_2
    sget-object v0, Lcom/htc/photowidget3d/image/ImageProvider;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[getBitmap] ---"

    invoke-static {v0, v2}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCachedBitmap(IZ)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "pos"
    .parameter "checkFile"

    .prologue
    const/4 v8, 0x0

    .line 255
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mList:Lcom/htc/photowidget3d/image/IImageList;

    if-nez v0, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-object v8

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mList:Lcom/htc/photowidget3d/image/IImageList;

    invoke-interface {v0, p1}, Lcom/htc/photowidget3d/image/IImageList;->getImageAt(I)Lcom/htc/photowidget3d/image/IImage;

    move-result-object v9

    .line 259
    .local v9, image:Lcom/htc/photowidget3d/image/IImage;
    if-eqz v9, :cond_0

    .line 262
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mCacheManager:Lcom/htc/opensense/album/util/CacheManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v9}, Lcom/htc/photowidget3d/image/IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v9}, Lcom/htc/photowidget3d/image/IImage;->getDegreesRotated()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9}, Lcom/htc/photowidget3d/image/IImage;->getDateModified()J

    move-result-wide v3

    invoke-interface {v9}, Lcom/htc/photowidget3d/image/IImage;->getFileSize()J

    move-result-wide v5

    long-to-int v5, v5

    const v6, 0x1e5c2

    if-eqz p2, :cond_2

    const/4 v7, 0x3

    :goto_1
    move v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/htc/opensense/album/util/CacheManager;->pull(Ljava/lang/String;IJIII)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 267
    .local v8, bitmap:Landroid/graphics/Bitmap;
    sget-object v0, Lcom/htc/photowidget3d/image/ImageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getCachedBitmap] Cached: Position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Bitmap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 262
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    const/4 v7, 0x1

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mList:Lcom/htc/photowidget3d/image/IImageList;

    if-nez v0, :cond_0

    .line 160
    const/4 v0, 0x0

    .line 162
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mList:Lcom/htc/photowidget3d/image/IImageList;

    invoke-interface {v0}, Lcom/htc/photowidget3d/image/IImageList;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getFastBitmap(IZ)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "pos"
    .parameter "requestCallback"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 301
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mList:Lcom/htc/photowidget3d/image/IImageList;

    if-nez v0, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-object v8

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mList:Lcom/htc/photowidget3d/image/IImageList;

    invoke-interface {v0, p1}, Lcom/htc/photowidget3d/image/IImageList;->getImageAt(I)Lcom/htc/photowidget3d/image/IImage;

    move-result-object v9

    .line 305
    .local v9, image:Lcom/htc/photowidget3d/image/IImage;
    if-eqz v9, :cond_0

    .line 308
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mCacheManager:Lcom/htc/opensense/album/util/CacheManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v9}, Lcom/htc/photowidget3d/image/IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v9}, Lcom/htc/photowidget3d/image/IImage;->getDegreesRotated()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9}, Lcom/htc/photowidget3d/image/IImage;->getDateModified()J

    move-result-wide v3

    invoke-interface {v9}, Lcom/htc/photowidget3d/image/IImage;->getFileSize()J

    move-result-wide v5

    long-to-int v5, v5

    const v6, 0x1e5c2

    const/4 v7, 0x1

    move v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/htc/opensense/album/util/CacheManager;->pull(Ljava/lang/String;IJIII)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 312
    .local v8, bitmap:Landroid/graphics/Bitmap;
    sget-object v0, Lcom/htc/photowidget3d/image/ImageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getFastBitmap] Cached: Position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Bitmap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    if-nez v8, :cond_0

    if-eqz p2, :cond_0

    .line 317
    const-string v0, "image/jpeg"

    invoke-interface {v9}, Lcom/htc/photowidget3d/image/IImage;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 318
    invoke-interface {v9}, Lcom/htc/photowidget3d/image/IImage;->getDataPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/photowidget3d/util/ImageUtils;->getExifBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 320
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/photowidget3d/image/ImageProvider;->addDecodeTask(I)V

    .line 322
    if-eqz v8, :cond_0

    .line 324
    sget-object v0, Lcom/htc/photowidget3d/image/ImageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getFastBitmap] Exif: Position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Bitmap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", W = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", H = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getImageAt(I)Lcom/htc/photowidget3d/image/IImage;
    .locals 1
    .parameter "pos"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mList:Lcom/htc/photowidget3d/image/IImageList;

    if-nez v0, :cond_0

    .line 168
    const/4 v0, 0x0

    .line 170
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mList:Lcom/htc/photowidget3d/image/IImageList;

    invoke-interface {v0, p1}, Lcom/htc/photowidget3d/image/IImageList;->getImageAt(I)Lcom/htc/photowidget3d/image/IImage;

    move-result-object v0

    goto :goto_0
.end method

.method public getImageExif(I)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "pos"

    .prologue
    const/4 v0, 0x0

    .line 274
    iget-object v2, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mList:Lcom/htc/photowidget3d/image/IImageList;

    if-nez v2, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-object v0

    .line 277
    :cond_1
    iget-object v2, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mList:Lcom/htc/photowidget3d/image/IImageList;

    invoke-interface {v2, p1}, Lcom/htc/photowidget3d/image/IImageList;->getImageAt(I)Lcom/htc/photowidget3d/image/IImage;

    move-result-object v1

    .line 278
    .local v1, image:Lcom/htc/photowidget3d/image/IImage;
    if-eqz v1, :cond_0

    .line 281
    const/4 v0, 0x0

    .line 283
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const-string v2, "image/jpeg"

    invoke-interface {v1}, Lcom/htc/photowidget3d/image/IImage;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 284
    invoke-interface {v1}, Lcom/htc/photowidget3d/image/IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/photowidget3d/util/ImageUtils;->getExifBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 286
    :cond_2
    invoke-virtual {p0, p1}, Lcom/htc/photowidget3d/image/ImageProvider;->addDecodeTask(I)V

    .line 288
    if-eqz v0, :cond_0

    .line 290
    sget-object v2, Lcom/htc/photowidget3d/image/ImageProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getImageExif] Exif: Position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Bitmap = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", W = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", H = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getImageListParam()Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mListParam:Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;

    return-object v0
.end method

.method public isContentChanged()Z
    .locals 2

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mIsContentChanged:Z

    .line 101
    .local v0, bRet:Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mIsContentChanged:Z

    .line 102
    return v0
.end method

.method public onMediaMounted()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mCacheManager:Lcom/htc/opensense/album/util/CacheManager;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mCacheManager:Lcom/htc/opensense/album/util/CacheManager;

    invoke-virtual {v0}, Lcom/htc/opensense/album/util/CacheManager;->onMediaMounted()V

    .line 109
    :cond_0
    return-void
.end method

.method public pauseDecoder()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mHQImageDecoder:Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mHQImageDecoder:Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;->doPause()V

    .line 191
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-virtual {p0}, Lcom/htc/photowidget3d/image/ImageProvider;->stopDecoder()V

    .line 74
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mObserver:Lcom/htc/photowidget3d/image/ImageProvider$ListContentObserver;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mObserver:Lcom/htc/photowidget3d/image/ImageProvider$ListContentObserver;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/image/ImageProvider$ListContentObserver;->stopMonitor()V

    .line 76
    :cond_0
    iput-object v1, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mObserver:Lcom/htc/photowidget3d/image/ImageProvider$ListContentObserver;

    .line 78
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mList:Lcom/htc/photowidget3d/image/IImageList;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mList:Lcom/htc/photowidget3d/image/IImageList;

    invoke-interface {v0}, Lcom/htc/photowidget3d/image/IImageList;->close()V

    .line 80
    :cond_1
    iput-object v1, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mList:Lcom/htc/photowidget3d/image/IImageList;

    .line 82
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mCacheManager:Lcom/htc/opensense/album/util/CacheManager;

    if-eqz v0, :cond_2

    .line 83
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mCacheManager:Lcom/htc/opensense/album/util/CacheManager;

    invoke-virtual {v0}, Lcom/htc/opensense/album/util/CacheManager;->release()V

    .line 84
    :cond_2
    iput-object v1, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mCacheManager:Lcom/htc/opensense/album/util/CacheManager;

    .line 86
    iput-object v1, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mListParam:Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;

    .line 87
    iput-object v1, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mContext:Landroid/content/Context;

    .line 88
    iput-object v1, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mHandler:Landroid/os/Handler;

    .line 89
    iput-object v1, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mDataRefreshListener:Lcom/htc/photowidget3d/image/ImageProvider$DataRefreshListener;

    .line 90
    return-void
.end method

.method public declared-synchronized releaseResource()V
    .locals 1

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mCacheManager:Lcom/htc/opensense/album/util/CacheManager;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mCacheManager:Lcom/htc/opensense/album/util/CacheManager;

    invoke-virtual {v0}, Lcom/htc/opensense/album/util/CacheManager;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_0
    monitor-exit p0

    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeDecodeTask(I)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mHQImageDecoder:Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mHQImageDecoder:Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;->removeTask(Ljava/lang/Integer;)V

    .line 210
    :cond_0
    return-void
.end method

.method public resumeDecoder()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mHQImageDecoder:Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mHQImageDecoder:Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;->doResume()V

    .line 185
    :cond_0
    return-void
.end method

.method public setDataRefreshListener(Lcom/htc/photowidget3d/image/ImageProvider$DataRefreshListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mDataRefreshListener:Lcom/htc/photowidget3d/image/ImageProvider$DataRefreshListener;

    .line 68
    return-void
.end method

.method public setVisibleRange(II)V
    .locals 1
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mCacheManager:Lcom/htc/opensense/album/util/CacheManager;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mCacheManager:Lcom/htc/opensense/album/util/CacheManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense/album/util/CacheManager;->setVisibleRange(II)V

    .line 223
    :cond_0
    return-void
.end method

.method public startDecoder()V
    .locals 3

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/htc/photowidget3d/image/ImageProvider;->stopDecoder()V

    .line 177
    new-instance v0, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;

    iget v1, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mImageWidth:I

    iget v2, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mImageHeight:I

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;-><init>(Lcom/htc/photowidget3d/image/ImageProvider;II)V

    iput-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mHQImageDecoder:Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;

    .line 178
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mHQImageDecoder:Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;->start()V

    .line 179
    return-void
.end method

.method public stopDecoder()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mHQImageDecoder:Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mHQImageDecoder:Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;->cancel()V

    .line 197
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/photowidget3d/image/ImageProvider;->mHQImageDecoder:Lcom/htc/photowidget3d/image/ImageProvider$HQImageDecoder;

    .line 198
    return-void
.end method
