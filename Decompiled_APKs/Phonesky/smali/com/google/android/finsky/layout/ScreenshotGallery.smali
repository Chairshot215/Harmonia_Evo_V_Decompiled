.class public Lcom/google/android/finsky/layout/ScreenshotGallery;
.super Landroid/widget/FrameLayout;
.source "ScreenshotGallery.java"

# interfaces
.implements Lcom/google/android/finsky/layout/LayoutSwitcher$RetryButtonListener;


# instance fields
.field private mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mCombinedImagesToLoad:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Image;",
            ">;"
        }
    .end annotation
.end field

.field private mDocument:Lcom/google/android/finsky/api/model/Document;

.field private final mHandler:Landroid/os/Handler;

.field private mHasDetailsLoaded:Z

.field private mImageStrip:Lcom/google/android/finsky/layout/HorizontalStrip;

.field private mImageStripAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

.field private mImageUrls:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Image;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mInFlightRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final mInvalidateRunnable:Ljava/lang/Runnable;

.field private mLastRequestedHeight:I

.field private mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

.field private mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private mNumImagesFailed:I

.field private mScreenshotsSpacing:I

.field private mVideoPreviews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Image;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attributeSet"

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/ScreenshotGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attributeSet"
    .parameter "defStyle"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mInFlightRequests:Ljava/util/List;

    .line 59
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageUrls:Landroid/util/SparseArray;

    .line 61
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mHandler:Landroid/os/Handler;

    .line 63
    new-instance v1, Lcom/google/android/finsky/layout/ScreenshotGallery$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/ScreenshotGallery$1;-><init>(Lcom/google/android/finsky/layout/ScreenshotGallery;)V

    iput-object v1, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mInvalidateRunnable:Ljava/lang/Runnable;

    .line 77
    iget-object v1, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageUrls:Landroid/util/SparseArray;

    const/4 v2, 0x1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 78
    iget-object v1, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageUrls:Landroid/util/SparseArray;

    const/4 v2, 0x3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    iget-object v1, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageUrls:Landroid/util/SparseArray;

    const/16 v2, 0xd

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 82
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0b002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mScreenshotsSpacing:I

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/ScreenshotGallery;)Lcom/google/android/finsky/adapters/ImageStripAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageStripAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/ScreenshotGallery;)Lcom/google/android/finsky/api/model/Document;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mDocument:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/layout/ScreenshotGallery;)Lcom/google/android/finsky/navigationmanager/NavigationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/layout/ScreenshotGallery;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mVideoPreviews:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/layout/ScreenshotGallery;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mInFlightRequests:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$504(Lcom/google/android/finsky/layout/ScreenshotGallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mNumImagesFailed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mNumImagesFailed:I

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/layout/ScreenshotGallery;)Lcom/google/android/finsky/layout/LayoutSwitcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/finsky/layout/ScreenshotGallery;)Lcom/google/android/finsky/layout/HorizontalStrip;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageStrip:Lcom/google/android/finsky/layout/HorizontalStrip;

    return-object v0
.end method

.method private clearPendingRequests()V
    .locals 3

    .prologue
    .line 324
    iget-object v2, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mInFlightRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .line 325
    .local v0, container:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v0}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->cancelRequest()V

    goto :goto_0

    .line 329
    .end local v0           #container:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mInFlightRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 330
    return-void
.end method

.method private isSame(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Image;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Image;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, list1:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Doc$Image;>;"
    .local p2, list2:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Doc$Image;>;"
    const/4 v2, 0x0

    .line 96
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_0

    move v1, v2

    .line 104
    :goto_0
    return v1

    .line 99
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 100
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    .line 101
    goto :goto_0

    .line 99
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 104
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private loadImages()V
    .locals 14

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 241
    const/4 v7, 0x0

    .line 242
    .local v7, currIndex:I
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mCombinedImagesToLoad:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    .line 243
    .local v12, numImagesToLoad:I
    iput v4, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mNumImagesFailed:I

    .line 246
    invoke-direct {p0}, Lcom/google/android/finsky/layout/ScreenshotGallery;->clearPendingRequests()V

    .line 247
    const/4 v13, 0x0

    .line 248
    .local v13, switchToDataMode:Z
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mCombinedImagesToLoad:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    .line 249
    .local v10, img:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    if-nez v10, :cond_0

    .line 250
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mInFlightRequests:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    add-int/lit8 v7, v7, 0x1

    .line 252
    goto :goto_0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageStripAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v10}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getDimension()Lcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;

    move-result-object v3

    invoke-virtual {v0, v7, v3}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->setImageDimensionAt(ILcom/google/android/finsky/remoting/protos/Doc$Image$Dimension;)V

    .line 255
    move v11, v7

    .line 256
    .local v11, index:I
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageStripAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v0, v11}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->hasImageDimensionAt(I)Z

    move-result v8

    .line 257
    .local v8, hasDimension:Z
    invoke-virtual {v10}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, url:Ljava/lang/String;
    invoke-virtual {v10}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getSupportsFifeUrlOptions()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ScreenshotGallery;->getHeight()I

    move-result v0

    invoke-static {v1, v4, v0}, Lcom/google/android/finsky/utils/ThumbnailUtils;->buildFifeUrl(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    new-instance v3, Lcom/google/android/finsky/layout/ScreenshotGallery$4;

    invoke-direct {v3, p0, v11, v12, v8}, Lcom/google/android/finsky/layout/ScreenshotGallery$4;-><init>(Lcom/google/android/finsky/layout/ScreenshotGallery;IIZ)V

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ScreenshotGallery;->getHeight()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v6

    .line 295
    .local v6, bitmapContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mInFlightRequests:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-virtual {v6}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 298
    const/4 v13, 0x1

    .line 299
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageStripAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v11, v3}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->setImageAt(ILandroid/graphics/drawable/Drawable;)V

    .line 301
    if-nez v8, :cond_2

    .line 302
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageStrip:Lcom/google/android/finsky/layout/HorizontalStrip;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/HorizontalStrip;->requestLayout()V

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mInFlightRequests:Ljava/util/List;

    invoke-interface {v0, v11, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 309
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 310
    goto :goto_0

    .line 311
    .end local v1           #url:Ljava/lang/String;
    .end local v6           #bitmapContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    .end local v8           #hasDimension:Z
    .end local v10           #img:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    .end local v11           #index:I
    :cond_4
    if-eqz v13, :cond_5

    .line 312
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToDataMode()V

    .line 316
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mInvalidateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 318
    :cond_5
    return-void
.end method

.method private loadImagesIfNecessary()V
    .locals 14

    .prologue
    const/16 v1, 0x8

    const/16 v4, 0xd

    const/4 v3, 0x3

    const/4 v5, 0x0

    const/4 v13, 0x1

    .line 125
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mHasDetailsLoaded:Z

    if-eqz v0, :cond_3

    .line 126
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->hasScreenshots()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->hasVideos()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v7, v13

    .line 134
    .local v7, hasDataContent:Z
    :goto_0
    if-eqz v7, :cond_5

    move v0, v5

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ScreenshotGallery;->setVisibility(I)V

    .line 136
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ScreenshotGallery;->getHeight()I

    move-result v8

    .line 137
    .local v8, height:I
    if-eqz v8, :cond_1

    iget v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mLastRequestedHeight:I

    if-eq v8, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    if-nez v0, :cond_6

    .line 223
    :cond_1
    :goto_2
    return-void

    .end local v7           #hasDataContent:Z
    .end local v8           #height:I
    :cond_2
    move v7, v5

    .line 126
    goto :goto_0

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    if-ne v0, v3, :cond_4

    move v7, v13

    .restart local v7       #hasDataContent:Z
    :goto_3
    goto :goto_0

    .end local v7           #hasDataContent:Z
    :cond_4
    move v7, v5

    goto :goto_3

    .restart local v7       #hasDataContent:Z
    :cond_5
    move v0, v1

    .line 134
    goto :goto_1

    .line 141
    .restart local v8       #height:I
    :cond_6
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->hasScreenshots()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0, v13}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v10

    .line 143
    .local v10, previewImages:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Doc$Image;>;"
    :goto_4
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->hasVideos()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mVideoPreviews:Ljava/util/List;

    .line 145
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->hasVideoThumbnails()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v12

    .line 149
    .local v12, videoThumbnails:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Doc$Image;>;"
    :goto_6
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mDocument:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ScreenshotGallery;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageUrls:Landroid/util/SparseArray;

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v10, v0}, Lcom/google/android/finsky/layout/ScreenshotGallery;->isSame(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mVideoPreviews:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageUrls:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v2, v0}, Lcom/google/android/finsky/layout/ScreenshotGallery;->isSame(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageUrls:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v12, v0}, Lcom/google/android/finsky/layout/ScreenshotGallery;->isSame(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    :cond_7
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageUrls:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 159
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageUrls:Landroid/util/SparseArray;

    invoke-virtual {v0, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageUrls:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mVideoPreviews:Ljava/util/List;

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 161
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageUrls:Landroid/util/SparseArray;

    invoke-virtual {v0, v4, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 163
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 164
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mHasDetailsLoaded:Z

    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/ScreenshotGallery;->setVisibility(I)V

    goto/16 :goto_2

    .line 141
    .end local v10           #previewImages:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Doc$Image;>;"
    .end local v12           #videoThumbnails:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Doc$Image;>;"
    :cond_8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    goto/16 :goto_4

    .line 143
    .restart local v10       #previewImages:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Doc$Image;>;"
    :cond_9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto/16 :goto_5

    .line 145
    :cond_a
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    goto :goto_6

    .line 172
    .restart local v12       #videoThumbnails:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Doc$Image;>;"
    :cond_b
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mVideoPreviews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mVideoPreviews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    move v11, v13

    .line 177
    .local v11, useVideoPreview:Z
    :goto_7
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mCombinedImagesToLoad:Ljava/util/List;

    .line 178
    if-eqz v11, :cond_10

    .line 179
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mCombinedImagesToLoad:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 187
    :cond_c
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mCombinedImagesToLoad:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 189
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageStrip:Lcom/google/android/finsky/layout/HorizontalStrip;

    iget v1, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mScreenshotsSpacing:I

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/HorizontalStrip;->setLayoutMargin(I)V

    .line 192
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageStripAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    if-eqz v0, :cond_d

    .line 193
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageStripAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->unregisterAll()V

    .line 196
    :cond_d
    const v0, 0x3f1eb852

    int-to-float v1, v8

    mul-float/2addr v0, v1

    float-to-int v6, v0

    .line 197
    .local v6, videoFrameWidth:I
    new-instance v0, Lcom/google/android/finsky/adapters/ImageStripAdapter;

    iget-object v1, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mDocument:Lcom/google/android/finsky/api/model/Document;

    iget-object v2, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mVideoPreviews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v11, :cond_e

    move v5, v13

    :cond_e
    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/adapters/ImageStripAdapter;-><init>(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;IIZI)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageStripAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    .line 199
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageStrip:Lcom/google/android/finsky/layout/HorizontalStrip;

    iget-object v1, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageStripAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/HorizontalStrip;->setAdapter(Lcom/google/android/finsky/adapters/ImageStripAdapter;)V

    .line 201
    iput v8, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mLastRequestedHeight:I

    .line 203
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageStrip:Lcom/google/android/finsky/layout/HorizontalStrip;

    new-instance v1, Lcom/google/android/finsky/layout/ScreenshotGallery$2;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/ScreenshotGallery$2;-><init>(Lcom/google/android/finsky/layout/ScreenshotGallery;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/HorizontalStrip;->setImageChildTappedListener(Lcom/google/android/finsky/layout/HorizontalStrip$OnImageChildViewTapListener;)V

    .line 209
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageStrip:Lcom/google/android/finsky/layout/HorizontalStrip;

    new-instance v1, Lcom/google/android/finsky/layout/ScreenshotGallery$3;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/ScreenshotGallery$3;-><init>(Lcom/google/android/finsky/layout/ScreenshotGallery;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/HorizontalStrip;->setVideoChildTappedListener(Lcom/google/android/finsky/layout/HorizontalStrip$OnVideoChildViewTapListener;)V

    .line 222
    invoke-direct {p0}, Lcom/google/android/finsky/layout/ScreenshotGallery;->loadImages()V

    goto/16 :goto_2

    .end local v6           #videoFrameWidth:I
    .end local v11           #useVideoPreview:Z
    :cond_f
    move v11, v5

    .line 172
    goto :goto_7

    .line 183
    .restart local v11       #useVideoPreview:Z
    :cond_10
    const/4 v9, 0x0

    .local v9, i:I
    :goto_8
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mVideoPreviews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_c

    .line 184
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mCombinedImagesToLoad:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    add-int/lit8 v9, v9, 0x1

    goto :goto_8
.end method


# virtual methods
.method public bind(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/navigationmanager/NavigationManager;Z)V
    .locals 0
    .parameter "doc"
    .parameter "bitmapLoader"
    .parameter "navigationManager"
    .parameter "hasDetailsLoaded"

    .prologue
    .line 109
    iput-object p2, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 110
    iput-object p3, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 111
    iput-object p1, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mDocument:Lcom/google/android/finsky/api/model/Document;

    .line 112
    iput-boolean p4, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mHasDetailsLoaded:Z

    .line 114
    invoke-direct {p0}, Lcom/google/android/finsky/layout/ScreenshotGallery;->loadImagesIfNecessary()V

    .line 115
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageStripAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageStripAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    invoke-virtual {v0}, Lcom/google/android/finsky/adapters/ImageStripAdapter;->unregisterAll()V

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mInvalidateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 338
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageStrip:Lcom/google/android/finsky/layout/HorizontalStrip;

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/HorizontalStrip;->onDestroyView()V

    .line 339
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageStripAdapter:Lcom/google/android/finsky/adapters/ImageStripAdapter;

    .line 341
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 342
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const v1, 0x7f0800e4

    .line 87
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 89
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/layout/ScreenshotGallery;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/HorizontalStrip;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mImageStrip:Lcom/google/android/finsky/layout/HorizontalStrip;

    .line 91
    new-instance v0, Lcom/google/android/finsky/layout/LayoutSwitcher;

    invoke-direct {v0, p0, v1, p0}, Lcom/google/android/finsky/layout/LayoutSwitcher;-><init>(Landroid/view/View;ILcom/google/android/finsky/layout/LayoutSwitcher$RetryButtonListener;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    .line 92
    iget-object v0, p0, Lcom/google/android/finsky/layout/ScreenshotGallery;->mLayoutSwitcher:Lcom/google/android/finsky/layout/LayoutSwitcher;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/LayoutSwitcher;->switchToLoadingDelayed(I)V

    .line 93
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 119
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 120
    invoke-direct {p0}, Lcom/google/android/finsky/layout/ScreenshotGallery;->loadImagesIfNecessary()V

    .line 121
    return-void
.end method

.method public onRetry()V
    .locals 0

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/google/android/finsky/layout/ScreenshotGallery;->loadImages()V

    .line 233
    return-void
.end method
