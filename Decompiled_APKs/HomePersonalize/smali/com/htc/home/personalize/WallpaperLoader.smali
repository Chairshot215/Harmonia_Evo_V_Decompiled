.class public Lcom/htc/home/personalize/WallpaperLoader;
.super Ljava/lang/Object;
.source "WallpaperLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/WallpaperLoader$UIUpdateCallback;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field public static WALLPAPER_PATH:Ljava/lang/String;


# instance fields
.field private final WHAT_ON_IMAGE_FILE:I

.field private final WHAT_ON_REMOVE_CACHES:I

.field private mContext:Landroid/content/Context;

.field private mCustomized:Z

.field private mDeleteMode:Z

.field private mDockMode:Z

.field private mGalleryData:Lcom/htc/home/personalize/config/GalleryData;

.field protected mHandlerThread:Landroid/os/HandlerThread;

.field public final mImageCaches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mImagePosition:I

.field private mLiveData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<*>;"
        }
    .end annotation
.end field

.field protected mLooper:Landroid/os/Looper;

.field private mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

.field private mNonUIHandler:Landroid/os/Handler;

.field private mOptions:Landroid/graphics/BitmapFactory$Options;

.field private mOrientation:I

.field private mRes:Landroid/content/res/Resources;

.field private mScrolling:[Z

.field private mSelectedPosition:I

.field private mUIUpdateCallback:Lcom/htc/home/personalize/WallpaperLoader$UIUpdateCallback;

.field private mWallpapers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field preEnd:I

.field preStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "WallpaperLoader"

    sput-object v0, Lcom/htc/home/personalize/WallpaperLoader;->TAG:Ljava/lang/String;

    .line 33
    const-string v0, "/system/customize/resource/"

    sput-object v0, Lcom/htc/home/personalize/WallpaperLoader;->WALLPAPER_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v2, p0, Lcom/htc/home/personalize/WallpaperLoader;->mHandlerThread:Landroid/os/HandlerThread;

    .line 36
    iput-object v2, p0, Lcom/htc/home/personalize/WallpaperLoader;->mLooper:Landroid/os/Looper;

    .line 38
    iput v1, p0, Lcom/htc/home/personalize/WallpaperLoader;->mSelectedPosition:I

    .line 39
    iput v1, p0, Lcom/htc/home/personalize/WallpaperLoader;->mImagePosition:I

    .line 45
    iput-boolean v0, p0, Lcom/htc/home/personalize/WallpaperLoader;->mDeleteMode:Z

    .line 46
    iput-boolean v0, p0, Lcom/htc/home/personalize/WallpaperLoader;->mDockMode:Z

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperLoader;->mImageCaches:Ljava/util/Map;

    .line 52
    iput-object v2, p0, Lcom/htc/home/personalize/WallpaperLoader;->mNonUIHandler:Landroid/os/Handler;

    .line 53
    iput v3, p0, Lcom/htc/home/personalize/WallpaperLoader;->WHAT_ON_IMAGE_FILE:I

    .line 54
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/home/personalize/WallpaperLoader;->WHAT_ON_REMOVE_CACHES:I

    .line 56
    iput v3, p0, Lcom/htc/home/personalize/WallpaperLoader;->mOrientation:I

    .line 58
    iput v1, p0, Lcom/htc/home/personalize/WallpaperLoader;->preStart:I

    .line 59
    iput v1, p0, Lcom/htc/home/personalize/WallpaperLoader;->preEnd:I

    .line 69
    iput-object p1, p0, Lcom/htc/home/personalize/WallpaperLoader;->mContext:Landroid/content/Context;

    .line 70
    invoke-static {}, Lcom/htc/home/personalize/util/BitmapUtils;->getWallpaperOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperLoader;->mRes:Landroid/content/res/Resources;

    .line 72
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLoader;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/home/personalize/WallpaperLoader;->mOrientation:I

    .line 73
    return-void
.end method

.method private getWallpaperKey(I)Ljava/lang/String;
    .locals 6
    .parameter "position"

    .prologue
    .line 360
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperLoader;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    if-eqz v3, :cond_5

    .line 361
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperLoader;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v3}, Lcom/htc/home/personalize/config/GalleryData;->size()I

    move-result v1

    .line 363
    .local v1, networkSize:I
    if-ge p1, v1, :cond_1

    .line 364
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperLoader;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v3, p1}, Lcom/htc/home/personalize/config/GalleryData;->getPreviewPath(I)Ljava/lang/String;

    move-result-object v2

    .line 395
    .end local v1           #networkSize:I
    :cond_0
    :goto_0
    return-object v2

    .line 367
    .restart local v1       #networkSize:I
    :cond_1
    iget-boolean v3, p0, Lcom/htc/home/personalize/WallpaperLoader;->mCustomized:Z

    if-eqz v3, :cond_4

    .line 368
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eqz v3, :cond_2

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0xa8

    if-eq v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/htc/home/personalize/WallpaperLoader;->mDockMode:Z

    if-eqz v3, :cond_3

    .line 369
    :cond_2
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperLoader;->mGalleryData:Lcom/htc/home/personalize/config/GalleryData;

    sub-int v4, p1, v1

    invoke-virtual {v3, v4}, Lcom/htc/home/personalize/config/GalleryData;->getPreviewPath(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 372
    :cond_3
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperLoader;->mGalleryData:Lcom/htc/home/personalize/config/GalleryData;

    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperLoader;->mContext:Landroid/content/Context;

    sub-int v5, p1, v1

    invoke-virtual {v3, v4, v5}, Lcom/htc/home/personalize/config/GalleryData;->getPreviewInCache(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 376
    :cond_4
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperLoader;->mWallpapers:Ljava/util/ArrayList;

    sub-int v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 380
    .end local v1           #networkSize:I
    :cond_5
    const-string v2, ""

    .line 381
    .local v2, serviceName:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperLoader;->mLiveData:Ljava/util/ArrayList;

    if-nez v3, :cond_6

    .line 382
    sget-object v3, Lcom/htc/home/personalize/WallpaperLoader;->TAG:Ljava/lang/String;

    const-string v4, "mLiveData == null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 383
    :cond_6
    if-ltz p1, :cond_8

    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperLoader;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_8

    .line 384
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperLoader;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/app/WallpaperInfo;

    if-eqz v3, :cond_7

    .line 385
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperLoader;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperInfo;

    .line 386
    .local v0, info:Landroid/app/WallpaperInfo;
    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->getServiceName()Ljava/lang/String;

    move-result-object v2

    .line 387
    goto :goto_0

    .end local v0           #info:Landroid/app/WallpaperInfo;
    :cond_7
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperLoader;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;

    if-eqz v3, :cond_0

    .line 388
    iget-object v3, p0, Lcom/htc/home/personalize/WallpaperLoader;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;

    .line 389
    .local v0, info:Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;
    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->getServiceName()Ljava/lang/String;

    move-result-object v2

    .line 390
    goto :goto_0

    .line 392
    .end local v0           #info:Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;
    :cond_8
    sget-object v3, Lcom/htc/home/personalize/WallpaperLoader;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Incorrect position = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mLiveData.size() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/home/personalize/WallpaperLoader;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getWallpaperPath(I)Ljava/lang/Object;
    .locals 5
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 329
    iget-object v2, p0, Lcom/htc/home/personalize/WallpaperLoader;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    if-eqz v2, :cond_2

    .line 330
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperLoader;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v1}, Lcom/htc/home/personalize/config/GalleryData;->size()I

    move-result v0

    .line 332
    .local v0, networkSize:I
    if-ge p1, v0, :cond_0

    .line 333
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperLoader;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v1, p1}, Lcom/htc/home/personalize/config/GalleryData;->getPreviewPath(I)Ljava/lang/String;

    move-result-object v1

    .line 354
    .end local v0           #networkSize:I
    :goto_0
    return-object v1

    .line 336
    .restart local v0       #networkSize:I
    :cond_0
    iget-boolean v1, p0, Lcom/htc/home/personalize/WallpaperLoader;->mCustomized:Z

    if-eqz v1, :cond_1

    .line 340
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperLoader;->mGalleryData:Lcom/htc/home/personalize/config/GalleryData;

    sub-int v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/htc/home/personalize/config/GalleryData;->getPreviewPath(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 343
    :cond_1
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperLoader;->mWallpapers:Ljava/util/ArrayList;

    sub-int v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 347
    .end local v0           #networkSize:I
    :cond_2
    iget-object v2, p0, Lcom/htc/home/personalize/WallpaperLoader;->mLiveData:Ljava/util/ArrayList;

    if-nez v2, :cond_3

    .line 348
    sget-object v2, Lcom/htc/home/personalize/WallpaperLoader;->TAG:Ljava/lang/String;

    const-string v3, "mLiveData == null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 350
    :cond_3
    if-ltz p1, :cond_4

    iget-object v2, p0, Lcom/htc/home/personalize/WallpaperLoader;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_4

    .line 351
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperLoader;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 353
    :cond_4
    sget-object v2, Lcom/htc/home/personalize/WallpaperLoader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Incorrect position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mLiveData.size() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/home/personalize/WallpaperLoader;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isWallpaperExist(Ljava/lang/String;)Z
    .locals 3
    .parameter "filePath"

    .prologue
    .line 419
    const/4 v0, 0x0

    .line 420
    .local v0, exist:Z
    iget-object v2, p0, Lcom/htc/home/personalize/WallpaperLoader;->mImageCaches:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 421
    .local v1, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_0

    .line 422
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 423
    const/4 v0, 0x1

    .line 425
    :cond_0
    return v0
.end method

.method public static manipulateCustomizePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "filename"

    .prologue
    .line 429
    const-string v0, "/system/customize/resource/"

    .line 430
    .local v0, WALLPAPER_PATH:Ljava/lang/String;
    if-eqz p0, :cond_0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 433
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/customize/resource/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private onImageFile()V
    .locals 4

    .prologue
    .line 170
    iget v0, p0, Lcom/htc/home/personalize/WallpaperLoader;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/home/personalize/WallpaperLoader;->mImagePosition:I

    if-eq v0, v1, :cond_0

    .line 171
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLoader;->mScrolling:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLoader;->mNonUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLoader;->mNonUIHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget v0, p0, Lcom/htc/home/personalize/WallpaperLoader;->mSelectedPosition:I

    iput v0, p0, Lcom/htc/home/personalize/WallpaperLoader;->mImagePosition:I

    .line 177
    iget v0, p0, Lcom/htc/home/personalize/WallpaperLoader;->mSelectedPosition:I

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/WallpaperLoader;->setImageView(I)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    .line 400
    const/4 v0, 0x0

    .line 401
    .local v0, size:I
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperLoader;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    if-eqz v1, :cond_2

    .line 402
    iget-boolean v1, p0, Lcom/htc/home/personalize/WallpaperLoader;->mDeleteMode:Z

    if-eqz v1, :cond_0

    .line 403
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperLoader;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v1}, Lcom/htc/home/personalize/config/GalleryData;->size()I

    move-result v0

    .line 415
    :goto_0
    return v0

    .line 405
    :cond_0
    iget-boolean v1, p0, Lcom/htc/home/personalize/WallpaperLoader;->mCustomized:Z

    if-eqz v1, :cond_1

    .line 406
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperLoader;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v1}, Lcom/htc/home/personalize/config/GalleryData;->size()I

    move-result v1

    iget-object v2, p0, Lcom/htc/home/personalize/WallpaperLoader;->mGalleryData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v2}, Lcom/htc/home/personalize/config/GalleryData;->size()I

    move-result v2

    add-int v0, v1, v2

    goto :goto_0

    .line 408
    :cond_1
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperLoader;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    invoke-virtual {v1}, Lcom/htc/home/personalize/config/GalleryData;->size()I

    move-result v1

    iget-object v2, p0, Lcom/htc/home/personalize/WallpaperLoader;->mWallpapers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int v0, v1, v2

    goto :goto_0

    .line 412
    :cond_2
    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperLoader;->mLiveData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public initHandler()V
    .locals 3

    .prologue
    .line 134
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WallpaperLoader"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperLoader;->mHandlerThread:Landroid/os/HandlerThread;

    .line 135
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLoader;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 136
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLoader;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperLoader;->mLooper:Landroid/os/Looper;

    .line 137
    new-instance v0, Lcom/htc/home/personalize/WallpaperLoader$1;

    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperLoader;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/htc/home/personalize/WallpaperLoader$1;-><init>(Lcom/htc/home/personalize/WallpaperLoader;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperLoader;->mNonUIHandler:Landroid/os/Handler;

    .line 153
    return-void
.end method

.method public onRemoveCaches()V
    .locals 8

    .prologue
    .line 184
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 185
    .local v5, removeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperLoader;->mImageCaches:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 187
    .local v2, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 188
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 189
    .local v0, data:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 190
    .local v3, key:Ljava/lang/String;
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 193
    .end local v0           #data:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;>;"
    .end local v3           #key:Ljava/lang/String;
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 194
    .local v4, removeKey:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperLoader;->mImageCaches:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 195
    .local v6, wallpaper:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 196
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 197
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->clear()V

    goto :goto_1

    .line 200
    .end local v4           #removeKey:Ljava/lang/String;
    .end local v6           #wallpaper:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    :cond_2
    return-void
.end method

.method public removeCaches()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLoader;->mNonUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLoader;->mNonUIHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 326
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 104
    iput v0, p0, Lcom/htc/home/personalize/WallpaperLoader;->mImagePosition:I

    .line 105
    iput v0, p0, Lcom/htc/home/personalize/WallpaperLoader;->preStart:I

    .line 106
    iput v0, p0, Lcom/htc/home/personalize/WallpaperLoader;->preEnd:I

    .line 107
    return-void
.end method

.method public setCustomized(Z)V
    .locals 0
    .parameter "customized"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/htc/home/personalize/WallpaperLoader;->mCustomized:Z

    .line 77
    return-void
.end method

.method public setDeleteMode(Z)V
    .locals 0
    .parameter "deleteMode"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/htc/home/personalize/WallpaperLoader;->mDeleteMode:Z

    .line 97
    return-void
.end method

.method public setDockMod(Z)V
    .locals 0
    .parameter "dockMode"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/htc/home/personalize/WallpaperLoader;->mDockMode:Z

    .line 101
    return-void
.end method

.method public setGalleryData(Lcom/htc/home/personalize/config/GalleryData;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/htc/home/personalize/WallpaperLoader;->mGalleryData:Lcom/htc/home/personalize/config/GalleryData;

    .line 85
    return-void
.end method

.method public setImageView(I)V
    .locals 11
    .parameter "position"

    .prologue
    const/4 v10, 0x1

    .line 203
    sget-object v7, Lcom/htc/home/personalize/WallpaperLoader;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setImageView : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 v1, 0x0

    .line 207
    .local v1, a:Ljava/lang/Object;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/WallpaperLoader;->getWallpaperPath(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_c

    move-result-object v1

    .line 211
    .end local v1           #a:Ljava/lang/Object;
    :goto_0
    instance-of v7, v1, Ljava/lang/String;

    if-eqz v7, :cond_1

    move-object v3, v1

    .line 212
    check-cast v3, Ljava/lang/String;

    .line 213
    .local v3, filePath:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/htc/home/personalize/WallpaperLoader;->isWallpaperExist(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 214
    const/4 v4, 0x0

    .line 216
    .local v4, image:Landroid/graphics/Bitmap;
    :try_start_1
    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v3, v7}, Lcom/htc/home/personalize/util/BitmapUtils;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v4

    .line 227
    :goto_1
    if-eqz v4, :cond_0

    .line 228
    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperLoader;->mImageCaches:Ljava/util/Map;

    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-direct {v8, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v7, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperLoader;->mUIUpdateCallback:Lcom/htc/home/personalize/WallpaperLoader$UIUpdateCallback;

    if-eqz v7, :cond_0

    .line 230
    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperLoader;->mUIUpdateCallback:Lcom/htc/home/personalize/WallpaperLoader$UIUpdateCallback;

    invoke-interface {v7, p1}, Lcom/htc/home/personalize/WallpaperLoader$UIUpdateCallback;->onUIUpdate(I)V

    .line 320
    .end local v3           #filePath:Ljava/lang/String;
    .end local v4           #image:Landroid/graphics/Bitmap;
    :cond_0
    :goto_2
    return-void

    .line 217
    .restart local v3       #filePath:Ljava/lang/String;
    .restart local v4       #image:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 218
    .local v2, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_1

    .line 219
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v2

    .line 220
    .local v2, e:Ljava/lang/NullPointerException;
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_1

    .line 221
    .end local v2           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v2

    .line 222
    .local v2, e:Ljava/lang/Exception;
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_1

    .line 223
    .end local v2           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 224
    .local v2, e:Ljava/lang/Error;
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_1

    .line 235
    .end local v2           #e:Ljava/lang/Error;
    .end local v3           #filePath:Ljava/lang/String;
    .end local v4           #image:Landroid/graphics/Bitmap;
    :cond_1
    instance-of v7, v1, Landroid/app/WallpaperInfo;

    if-eqz v7, :cond_4

    move-object v7, v1

    .line 236
    check-cast v7, Landroid/app/WallpaperInfo;

    invoke-virtual {v7}, Landroid/app/WallpaperInfo;->getServiceName()Ljava/lang/String;

    move-result-object v3

    .line 237
    .restart local v3       #filePath:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/htc/home/personalize/WallpaperLoader;->isWallpaperExist(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 238
    const/4 v4, 0x0

    .line 239
    .restart local v4       #image:Landroid/graphics/Bitmap;
    iget v7, p0, Lcom/htc/home/personalize/WallpaperLoader;->mOrientation:I

    if-ne v7, v10, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/htc/home/personalize/WallpaperLoader;->WALLPAPER_PATH:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 242
    .local v5, path:Ljava/lang/String;
    :goto_3
    const-string v7, "WallpaperLoader"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v5, v7}, Lcom/htc/home/personalize/util/BitmapUtils;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 247
    if-nez v4, :cond_2

    .line 249
    :try_start_2
    move-object v0, v1

    check-cast v0, Landroid/app/WallpaperInfo;

    move-object v7, v0

    iget-object v8, p0, Lcom/htc/home/personalize/WallpaperLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/WallpaperInfo;->loadThumbnail(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 250
    if-eqz v4, :cond_2

    .line 251
    sget-object v7, Lcom/htc/home/personalize/WallpaperLoader;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WallpaperInfo = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    check-cast v1, Landroid/app/WallpaperInfo;

    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->getServiceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  image isRecycled() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_7

    .line 263
    :cond_2
    :goto_4
    if-eqz v4, :cond_0

    .line 264
    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperLoader;->mImageCaches:Ljava/util/Map;

    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-direct {v8, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v7, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperLoader;->mUIUpdateCallback:Lcom/htc/home/personalize/WallpaperLoader$UIUpdateCallback;

    if-eqz v7, :cond_0

    .line 266
    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperLoader;->mUIUpdateCallback:Lcom/htc/home/personalize/WallpaperLoader$UIUpdateCallback;

    invoke-interface {v7, p1}, Lcom/htc/home/personalize/WallpaperLoader$UIUpdateCallback;->onUIUpdate(I)V

    goto/16 :goto_2

    .line 239
    .end local v5           #path:Ljava/lang/String;
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/htc/home/personalize/WallpaperLoader;->WALLPAPER_PATH:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_land"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 253
    .restart local v5       #path:Ljava/lang/String;
    :catch_4
    move-exception v2

    .line 254
    .local v2, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_4

    .line 255
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :catch_5
    move-exception v2

    .line 256
    .local v2, e:Ljava/lang/NullPointerException;
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_4

    .line 257
    .end local v2           #e:Ljava/lang/NullPointerException;
    :catch_6
    move-exception v2

    .line 258
    .local v2, e:Ljava/lang/Exception;
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_4

    .line 259
    .end local v2           #e:Ljava/lang/Exception;
    :catch_7
    move-exception v2

    .line 260
    .local v2, e:Ljava/lang/Error;
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_4

    .line 272
    .end local v2           #e:Ljava/lang/Error;
    .end local v3           #filePath:Ljava/lang/String;
    .end local v4           #image:Landroid/graphics/Bitmap;
    .end local v5           #path:Ljava/lang/String;
    :cond_4
    instance-of v7, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;

    if-eqz v7, :cond_7

    move-object v7, v1

    .line 273
    check-cast v7, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;

    invoke-virtual {v7}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->getServiceName()Ljava/lang/String;

    move-result-object v3

    .line 274
    .restart local v3       #filePath:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/htc/home/personalize/WallpaperLoader;->isWallpaperExist(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 275
    const/4 v4, 0x0

    .line 276
    .restart local v4       #image:Landroid/graphics/Bitmap;
    iget v7, p0, Lcom/htc/home/personalize/WallpaperLoader;->mOrientation:I

    if-ne v7, v10, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/htc/home/personalize/WallpaperLoader;->WALLPAPER_PATH:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 279
    .restart local v5       #path:Ljava/lang/String;
    :goto_5
    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperLoader;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v5, v7}, Lcom/htc/home/personalize/util/BitmapUtils;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 280
    if-nez v4, :cond_5

    .line 282
    :try_start_3
    move-object v0, v1

    check-cast v0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;

    move-object v7, v0

    iget-object v8, p0, Lcom/htc/home/personalize/WallpaperLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->loadThumbnail(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 283
    if-eqz v4, :cond_5

    .line 284
    sget-object v7, Lcom/htc/home/personalize/WallpaperLoader;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IdleScreenInfo = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    check-cast v1, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;

    invoke-virtual {v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->getServiceName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  image isRecycled() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_b

    .line 296
    :cond_5
    :goto_6
    if-eqz v4, :cond_0

    .line 297
    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperLoader;->mImageCaches:Ljava/util/Map;

    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-direct {v8, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v7, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperLoader;->mUIUpdateCallback:Lcom/htc/home/personalize/WallpaperLoader$UIUpdateCallback;

    if-eqz v7, :cond_0

    .line 299
    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperLoader;->mUIUpdateCallback:Lcom/htc/home/personalize/WallpaperLoader$UIUpdateCallback;

    invoke-interface {v7, p1}, Lcom/htc/home/personalize/WallpaperLoader$UIUpdateCallback;->onUIUpdate(I)V

    goto/16 :goto_2

    .line 276
    .end local v5           #path:Ljava/lang/String;
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/htc/home/personalize/WallpaperLoader;->WALLPAPER_PATH:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_land"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    .line 286
    .restart local v5       #path:Ljava/lang/String;
    :catch_8
    move-exception v2

    .line 287
    .local v2, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_6

    .line 288
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    :catch_9
    move-exception v2

    .line 289
    .local v2, e:Ljava/lang/NullPointerException;
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_6

    .line 290
    .end local v2           #e:Ljava/lang/NullPointerException;
    :catch_a
    move-exception v2

    .line 291
    .local v2, e:Ljava/lang/Exception;
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_6

    .line 292
    .end local v2           #e:Ljava/lang/Exception;
    :catch_b
    move-exception v2

    .line 293
    .local v2, e:Ljava/lang/Error;
    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_6

    .line 304
    .end local v2           #e:Ljava/lang/Error;
    .end local v3           #filePath:Ljava/lang/String;
    .end local v4           #image:Landroid/graphics/Bitmap;
    .end local v5           #path:Ljava/lang/String;
    :cond_7
    if-eqz v1, :cond_0

    .line 305
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 306
    .local v6, resId:I
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/htc/home/personalize/WallpaperLoader;->isWallpaperExist(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 307
    const/4 v4, 0x0

    .line 308
    .restart local v4       #image:Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 309
    if-eqz v4, :cond_0

    .line 310
    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperLoader;->mImageCaches:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/ref/WeakReference;

    invoke-direct {v9, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperLoader;->mUIUpdateCallback:Lcom/htc/home/personalize/WallpaperLoader$UIUpdateCallback;

    if-eqz v7, :cond_0

    .line 312
    iget-object v7, p0, Lcom/htc/home/personalize/WallpaperLoader;->mUIUpdateCallback:Lcom/htc/home/personalize/WallpaperLoader$UIUpdateCallback;

    invoke-interface {v7, p1}, Lcom/htc/home/personalize/WallpaperLoader$UIUpdateCallback;->onUIUpdate(I)V

    goto/16 :goto_2

    .line 208
    .end local v4           #image:Landroid/graphics/Bitmap;
    .end local v6           #resId:I
    .restart local v1       #a:Ljava/lang/Object;
    :catch_c
    move-exception v7

    goto/16 :goto_0
.end method

.method public setLiveData(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    iput-object p1, p0, Lcom/htc/home/personalize/WallpaperLoader;->mLiveData:Ljava/util/ArrayList;

    .line 93
    return-void
.end method

.method public setNetworkData(Lcom/htc/home/personalize/config/GalleryData;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/htc/home/personalize/WallpaperLoader;->mNetworkData:Lcom/htc/home/personalize/config/GalleryData;

    .line 81
    return-void
.end method

.method public setPosition(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 110
    iput p1, p0, Lcom/htc/home/personalize/WallpaperLoader;->mSelectedPosition:I

    .line 111
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLoader;->mNonUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLoader;->mNonUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/home/personalize/WallpaperLoader;->mNonUIHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 115
    :cond_0
    return-void
.end method

.method public setPosition(II)V
    .locals 4
    .parameter "position"
    .parameter "delayTime"

    .prologue
    const/4 v3, 0x1

    .line 118
    iput p1, p0, Lcom/htc/home/personalize/WallpaperLoader;->mSelectedPosition:I

    .line 119
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLoader;->mNonUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLoader;->mNonUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 121
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLoader;->mNonUIHandler:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 123
    :cond_0
    return-void
.end method

.method public setScrolling([Z)V
    .locals 0
    .parameter "scroll"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/htc/home/personalize/WallpaperLoader;->mScrolling:[Z

    .line 131
    return-void
.end method

.method public setUIUpdateCallback(Lcom/htc/home/personalize/WallpaperLoader$UIUpdateCallback;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/htc/home/personalize/WallpaperLoader;->mUIUpdateCallback:Lcom/htc/home/personalize/WallpaperLoader$UIUpdateCallback;

    .line 127
    return-void
.end method

.method public setWallpaperData(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/htc/home/personalize/WallpaperLoader;->mWallpapers:Ljava/util/ArrayList;

    .line 89
    return-void
.end method

.method public unInitHandler()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLoader;->mNonUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLoader;->mNonUIHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 159
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLoader;->mNonUIHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/home/personalize/WallpaperLoader;->mNonUIHandler:Landroid/os/Handler;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLoader;->mLooper:Landroid/os/Looper;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/htc/home/personalize/WallpaperLoader;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 166
    :cond_1
    return-void
.end method
