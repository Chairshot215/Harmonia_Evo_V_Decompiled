.class public Lcom/htc/sunny/SunnyEngine;
.super Ljava/lang/Object;
.source "SunnyEngine.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "3DGlideMode"

.field public static final POWEROF2:Z

.field private static mBitmapQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSpriteDefaultPos:Lcom/htc/sunny/Vector3F;

.field private static mSunnyReferenceCount:I

.field private static mSunnyReferenceLock:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field private mBackgroundBitmapId:I

.field private mBackgroundBmp:Lcom/htc/sunny/SBitmap;

.field private mBackgroundNodeId:I

.field private mBackgroundSpriteId:I

.field private mBackgroundTextureId:I

.field private mBind:Z

.field private mCameraId:I

.field private mContext:Landroid/content/Context;

.field private mEnabledTranslucent:Z

.field private mEnvironmentId:I

.field private mGlobalRootNode:I

.field private mInit:Z

.field private mLocker:Ljava/lang/Object;

.field private mMaskNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRootNodeId:I

.field private mSceneId:I

.field private mSpriteQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTextureQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPortId:I

.field private mWindowH:I

.field private mWindowId:I

.field private mWindowW:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/htc/sunny/SunnyEngine;->mBitmapQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 62
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/htc/sunny/SunnyEngine;->mSunnyReferenceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 63
    const/4 v0, 0x0

    sput v0, Lcom/htc/sunny/SunnyEngine;->mSunnyReferenceCount:I

    .line 65
    new-instance v0, Lcom/htc/sunny/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny/Vector3F;-><init>()V

    sput-object v0, Lcom/htc/sunny/SunnyEngine;->mSpriteDefaultPos:Lcom/htc/sunny/Vector3F;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "bTranslucent"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mContext:Landroid/content/Context;

    .line 39
    iput-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    .line 40
    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    .line 41
    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    .line 42
    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mViewPortId:I

    .line 43
    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mSceneId:I

    .line 44
    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundNodeId:I

    .line 45
    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    .line 46
    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundTextureId:I

    .line 47
    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundBitmapId:I

    .line 48
    iput-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundBmp:Lcom/htc/sunny/SBitmap;

    .line 50
    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mGlobalRootNode:I

    .line 51
    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mRootNodeId:I

    .line 52
    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mCameraId:I

    .line 53
    iput-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mBind:Z

    .line 54
    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mWindowW:I

    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mWindowH:I

    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mMaskNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mSpriteQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 58
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mTextureQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mLocker:Ljava/lang/Object;

    .line 67
    iput-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mEnabledTranslucent:Z

    .line 70
    iput-object p1, p0, Lcom/htc/sunny/SunnyEngine;->mContext:Landroid/content/Context;

    .line 71
    iput-boolean p2, p0, Lcom/htc/sunny/SunnyEngine;->mEnabledTranslucent:Z

    .line 72
    return-void
.end method

.method public static createAlphaBitmap(Landroid/graphics/Bitmap;III)I
    .locals 8
    .parameter "bitmap"
    .parameter "nMaxWidth"
    .parameter "nMaxHeight"
    .parameter "transparentBorders"

    .prologue
    const/4 v2, 0x0

    .line 412
    if-nez p0, :cond_1

    .line 447
    :cond_0
    :goto_0
    return v2

    .line 414
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 415
    .local v7, nWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 417
    .local v6, nHeight:I
    if-lez v7, :cond_0

    if-lez v6, :cond_0

    .line 419
    invoke-static {v2}, Lcom/htc/sunny/Sunny;->CreateBitmap(I)I

    move-result v0

    .line 420
    .local v0, nBitmapId:I
    if-eqz v0, :cond_0

    .line 422
    const/4 v3, 0x0

    .line 429
    .local v3, nNewWidth:I
    move v3, v7

    .line 432
    const/4 v4, 0x0

    .line 439
    .local v4, nNewHeight:I
    move v4, v6

    move-object v1, p0

    move v5, p3

    .line 442
    invoke-static/range {v0 .. v5}, Lcom/htc/sunny/Sunny;->Bitmap_SetAndConvert(ILandroid/graphics/Bitmap;IIII)Z

    .line 444
    sget-object v1, Lcom/htc/sunny/SunnyEngine;->mBitmapQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v1, :cond_2

    .line 445
    sget-object v1, Lcom/htc/sunny/SunnyEngine;->mBitmapQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_2
    move v2, v0

    .line 447
    goto :goto_0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;III)I
    .locals 8
    .parameter "bitmap"
    .parameter "nMaxWidth"
    .parameter "nMaxHeight"
    .parameter "transparentBorders"

    .prologue
    const/4 v1, 0x0

    .line 364
    if-nez p0, :cond_1

    move v0, v1

    .line 402
    :cond_0
    :goto_0
    return v0

    .line 366
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 367
    .local v7, nWidth:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 369
    .local v6, nHeight:I
    if-lez v7, :cond_2

    if-gtz v6, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 371
    :cond_3
    invoke-static {v1}, Lcom/htc/sunny/Sunny;->CreateBitmap(I)I

    move-result v0

    .line 372
    .local v0, nBitmapId:I
    if-nez v0, :cond_4

    move v0, v1

    goto :goto_0

    .line 374
    :cond_4
    const/4 v3, 0x0

    .line 381
    .local v3, nNewWidth:I
    move v3, v7

    .line 384
    const/4 v4, 0x0

    .line 393
    .local v4, nNewHeight:I
    if-nez p3, :cond_5

    .line 394
    invoke-static {v0, p0}, Lcom/htc/sunny/Sunny;->Bitmap_Set(ILandroid/graphics/Bitmap;)Z

    .line 399
    :goto_1
    sget-object v1, Lcom/htc/sunny/SunnyEngine;->mBitmapQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v1, :cond_0

    .line 400
    sget-object v1, Lcom/htc/sunny/SunnyEngine;->mBitmapQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 396
    :cond_5
    const v2, 0x25551

    move-object v1, p0

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/htc/sunny/Sunny;->Bitmap_SetAndConvert(ILandroid/graphics/Bitmap;IIII)Z

    goto :goto_1
.end method

.method public static destroyBitmap(I)V
    .locals 3
    .parameter "nBitmapId"

    .prologue
    .line 458
    if-nez p0, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    const/4 v0, 0x1

    sget-object v1, Lcom/htc/sunny/SunnyEngine;->mBitmapQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 461
    invoke-static {p0}, Lcom/htc/sunny/Sunny;->DestroyBitmap(I)V

    .line 463
    sget-object v0, Lcom/htc/sunny/SunnyEngine;->mBitmapQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static isBitmapDestroyed(I)Z
    .locals 3
    .parameter "nBitmapId"

    .prologue
    const/4 v0, 0x1

    .line 451
    sget-object v1, Lcom/htc/sunny/SunnyEngine;->mBitmapQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 452
    const/4 v0, 0x0

    .line 454
    :cond_0
    return v0
.end method

.method public static nextPowerOf2(I)I
    .locals 1
    .parameter "n"

    .prologue
    .line 610
    add-int/lit8 p0, p0, -0x1

    .line 611
    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 612
    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 613
    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 614
    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 615
    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 616
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method private setBackgroundSize(II)V
    .locals 7
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v4, 0x0

    .line 659
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    if-eqz v0, :cond_0

    .line 660
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    const/4 v1, 0x0

    int-to-float v2, p1

    int-to-float v3, p2

    move v5, v4

    move v6, v4

    invoke-static/range {v0 .. v6}, Lcom/htc/sunny/Sunny;->Sprite_SetupGeometry(IIFFFFF)V

    .line 663
    :cond_0
    return-void
.end method


# virtual methods
.method public bindWindows(Landroid/view/Surface;II)Z
    .locals 3
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v0, 0x1

    .line 643
    iget-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 644
    :cond_0
    const/4 v0, 0x0

    .line 655
    :goto_0
    return v0

    .line 647
    :cond_1
    iget v1, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    invoke-static {v1, p1, p2, p3}, Lcom/htc/sunny/Sunny;->Window_BindSurface(ILandroid/view/Surface;II)Z

    .line 650
    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mWindowW:I

    .line 651
    add-int/lit8 v1, p3, 0x1

    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mWindowH:I

    .line 652
    iget v1, p0, Lcom/htc/sunny/SunnyEngine;->mWindowW:I

    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mWindowH:I

    invoke-direct {p0, v1, v2}, Lcom/htc/sunny/SunnyEngine;->setBackgroundSize(II)V

    .line 654
    iput-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mBind:Z

    goto :goto_0
.end method

.method public createMaskNode(IZ)I
    .locals 5
    .parameter "nParent"
    .parameter "bRenderOrder"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 267
    iget-boolean v2, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v0, v1

    .line 281
    :goto_0
    return v0

    .line 270
    :cond_1
    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->CreateScissor(I)I

    move-result v0

    .line 271
    .local v0, nChildId:I
    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    .line 273
    :cond_2
    invoke-static {v0, v3, v3, v3}, Lcom/htc/sunny/Sunny;->SceneNode_SetPosition(IFFF)V

    .line 274
    invoke-static {p1, v0}, Lcom/htc/sunny/Sunny;->SceneNode_AddChild(II)Z

    .line 275
    if-ne v4, p2, :cond_3

    .line 276
    invoke-static {v0, v4}, Lcom/htc/sunny/Sunny;->SceneNode_SetChildrenRenderOrderMode(II)V

    .line 279
    :cond_3
    iget-object v1, p0, Lcom/htc/sunny/SunnyEngine;->mMaskNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public createNode(IZ)I
    .locals 5
    .parameter "nParent"
    .parameter "bRenderOrder"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 242
    iget-boolean v2, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v0, v1

    .line 256
    :goto_0
    return v0

    .line 245
    :cond_1
    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->CreateSceneNode(I)I

    move-result v0

    .line 246
    .local v0, nChildId:I
    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    .line 248
    :cond_2
    invoke-static {v0, v3, v3, v3}, Lcom/htc/sunny/Sunny;->SceneNode_SetPosition(IFFF)V

    .line 249
    invoke-static {p1, v0}, Lcom/htc/sunny/Sunny;->SceneNode_AddChild(II)Z

    .line 250
    if-ne v4, p2, :cond_3

    .line 251
    invoke-static {v0, v4}, Lcom/htc/sunny/Sunny;->SceneNode_SetChildrenRenderOrderMode(II)V

    .line 254
    :cond_3
    iget-object v1, p0, Lcom/htc/sunny/SunnyEngine;->mNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public createSprite(II)I
    .locals 3
    .parameter "nParentNode"
    .parameter "nLayerCount"

    .prologue
    const/4 v1, 0x0

    .line 299
    iget-boolean v2, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v0, v1

    .line 314
    :goto_0
    return v0

    .line 302
    :cond_1
    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    invoke-static {v2, p2}, Lcom/htc/sunny/Sunny;->CreateSprite(II)I

    move-result v0

    .line 303
    .local v0, nChildId:I
    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    .line 308
    :cond_2
    invoke-static {p1, v0}, Lcom/htc/sunny/Sunny;->SceneNode_AddChild(II)Z

    .line 310
    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny/SunnyEngine;->setSpriteTouchable(IZ)V

    .line 312
    iget-object v1, p0, Lcom/htc/sunny/SunnyEngine;->mSpriteQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public createTexture()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 341
    iget-boolean v2, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-nez v2, :cond_0

    move v0, v1

    .line 348
    :goto_0
    return v0

    .line 344
    :cond_0
    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->CreateTexture(I)I

    move-result v0

    .line 345
    .local v0, nTextureId:I
    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 347
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny/SunnyEngine;->mTextureQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public deInit()V
    .locals 6

    .prologue
    .line 724
    const-string v2, "3DGlideMode"

    const-string v3, "[SunnyEngine] Sunny deInit() +"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    iget-object v3, p0, Lcom/htc/sunny/SunnyEngine;->mLocker:Ljava/lang/Object;

    monitor-enter v3

    .line 727
    :try_start_0
    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    if-eqz v2, :cond_7

    .line 729
    sget-object v2, Lcom/htc/sunny/SunnyEngine;->mSunnyReferenceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 730
    sget v2, Lcom/htc/sunny/SunnyEngine;->mSunnyReferenceCount:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/htc/sunny/SunnyEngine;->mSunnyReferenceCount:I

    .line 731
    const-string v2, "3DGlideMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SunnyEngine] deInit() ref count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/htc/sunny/SunnyEngine;->mSunnyReferenceCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    sget v2, Lcom/htc/sunny/SunnyEngine;->mSunnyReferenceCount:I

    if-nez v2, :cond_2

    .line 733
    sget-object v2, Lcom/htc/sunny/SunnyEngine;->mBitmapQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v2, :cond_2

    .line 734
    const-string v2, "3DGlideMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SunnyEngine] deInit() bmp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/htc/sunny/SunnyEngine;->mBitmapQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    sget-object v2, Lcom/htc/sunny/SunnyEngine;->mBitmapQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 736
    .local v1, id:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    .line 737
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->DestroyBitmap(I)V

    goto :goto_0

    .line 774
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #id:Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 739
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    sget-object v2, Lcom/htc/sunny/SunnyEngine;->mBitmapQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 742
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_2
    sget-object v2, Lcom/htc/sunny/SunnyEngine;->mSunnyReferenceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 744
    invoke-virtual {p0}, Lcom/htc/sunny/SunnyEngine;->destroyAllResource()V

    .line 746
    invoke-virtual {p0}, Lcom/htc/sunny/SunnyEngine;->destroyBackgroundResource()V

    .line 748
    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mRootNodeId:I

    if-eqz v2, :cond_3

    .line 749
    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mRootNodeId:I

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->DestroySceneNode(I)V

    .line 750
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/sunny/SunnyEngine;->mRootNodeId:I

    .line 753
    :cond_3
    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    if-eqz v2, :cond_5

    .line 754
    const/4 v2, 0x1

    iget-boolean v4, p0, Lcom/htc/sunny/SunnyEngine;->mBind:Z

    if-ne v2, v4, :cond_4

    .line 755
    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->Window_UnbindSurface(I)V

    .line 758
    :cond_4
    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->DestroyWindow(I)V

    .line 759
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    .line 762
    :cond_5
    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mSceneId:I

    if-eqz v2, :cond_6

    .line 763
    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mSceneId:I

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->DestroyScene(I)V

    .line 764
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/sunny/SunnyEngine;->mSceneId:I

    .line 767
    :cond_6
    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    if-eqz v2, :cond_7

    .line 768
    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->DeinitEnvironment(I)V

    .line 769
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    .line 773
    :cond_7
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    .line 774
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 775
    const-string v2, "3DGlideMode"

    const-string v3, "[SunnyEngine] Sunny deInit() -"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    return-void
.end method

.method public destroyAllResource()V
    .locals 5

    .prologue
    .line 667
    iget-object v2, p0, Lcom/htc/sunny/SunnyEngine;->mTextureQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v2, :cond_1

    .line 668
    const-string v2, "3DGlideMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SunnyEngine] destroy texture "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny/SunnyEngine;->mTextureQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget-object v2, p0, Lcom/htc/sunny/SunnyEngine;->mTextureQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 670
    .local v1, id:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->DestroyTexture(I)V

    goto :goto_0

    .line 672
    .end local v1           #id:Ljava/lang/Integer;
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny/SunnyEngine;->mTextureQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 675
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny/SunnyEngine;->mSpriteQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v2, :cond_3

    .line 676
    const-string v2, "3DGlideMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SunnyEngine] destroy sprite "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny/SunnyEngine;->mSpriteQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iget-object v2, p0, Lcom/htc/sunny/SunnyEngine;->mSpriteQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 678
    .restart local v1       #id:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->DestroySprite(I)V

    goto :goto_1

    .line 680
    .end local v1           #id:Ljava/lang/Integer;
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny/SunnyEngine;->mSpriteQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 683
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v2, p0, Lcom/htc/sunny/SunnyEngine;->mNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v2, :cond_5

    .line 684
    const-string v2, "3DGlideMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SunnyEngine] destroy node "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny/SunnyEngine;->mNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iget-object v2, p0, Lcom/htc/sunny/SunnyEngine;->mNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 686
    .restart local v1       #id:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->DestroySceneNode(I)V

    goto :goto_2

    .line 688
    .end local v1           #id:Ljava/lang/Integer;
    :cond_4
    iget-object v2, p0, Lcom/htc/sunny/SunnyEngine;->mNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 691
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_5
    iget-object v2, p0, Lcom/htc/sunny/SunnyEngine;->mMaskNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v2, :cond_7

    .line 692
    const-string v2, "3DGlideMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SunnyEngine] destroy scissor node "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny/SunnyEngine;->mMaskNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object v2, p0, Lcom/htc/sunny/SunnyEngine;->mMaskNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 694
    .restart local v1       #id:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->DestroyScissor(I)V

    goto :goto_3

    .line 696
    .end local v1           #id:Ljava/lang/Integer;
    :cond_6
    iget-object v2, p0, Lcom/htc/sunny/SunnyEngine;->mMaskNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 698
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_7
    return-void
.end method

.method public destroyBackgroundResource()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 701
    const-string v0, "3DGlideMode"

    const-string v1, "[SunnyEngine] destroy background"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundBitmapId:I

    if-eqz v0, :cond_0

    .line 703
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundBitmapId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->DestroyBitmap(I)V

    .line 704
    iput v2, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundBitmapId:I

    .line 707
    :cond_0
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundTextureId:I

    if-eqz v0, :cond_1

    .line 708
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundTextureId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->DestroyTexture(I)V

    .line 709
    iput v2, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundTextureId:I

    .line 712
    :cond_1
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    if-eqz v0, :cond_2

    .line 713
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->DestroySprite(I)V

    .line 714
    iput v2, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    .line 717
    :cond_2
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundNodeId:I

    if-eqz v0, :cond_3

    .line 718
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundNodeId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->DestroySceneNode(I)V

    .line 719
    iput v2, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundNodeId:I

    .line 721
    :cond_3
    return-void
.end method

.method public destroyMaskNode(I)V
    .locals 2
    .parameter "nNodeId"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mMaskNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    invoke-static {p1}, Lcom/htc/sunny/Sunny;->DestroyScissor(I)V

    .line 287
    iget-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mMaskNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 289
    :cond_0
    return-void
.end method

.method public destroyNode(I)V
    .locals 2
    .parameter "nNodeId"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-static {p1}, Lcom/htc/sunny/Sunny;->DestroySceneNode(I)V

    .line 262
    iget-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 264
    :cond_0
    return-void
.end method

.method public destroySprite(I)V
    .locals 2
    .parameter "nSpriteId"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mSpriteQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    invoke-static {p1}, Lcom/htc/sunny/Sunny;->DestroySprite(I)V

    .line 336
    iget-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mSpriteQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 338
    :cond_0
    return-void
.end method

.method public destroyTexture(I)V
    .locals 2
    .parameter "nTextureId"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mTextureQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    invoke-static {p1}, Lcom/htc/sunny/Sunny;->DestroyTexture(I)V

    .line 354
    iget-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mTextureQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 356
    :cond_0
    return-void
.end method

.method public getGlobalRootNode()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mGlobalRootNode:I

    return v0
.end method

.method public getHitSprite(II)I
    .locals 1
    .parameter "nX"
    .parameter "nY"

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-nez v0, :cond_0

    .line 200
    const/4 v0, -0x1

    .line 203
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    invoke-static {v0, p1, p2}, Lcom/htc/sunny/Sunny;->Window_HitTest(III)I

    move-result v0

    goto :goto_0
.end method

.method public getNodeOrder(I)I
    .locals 1
    .parameter "nNodeId"

    .prologue
    .line 534
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 535
    :cond_0
    const/4 v0, 0x0

    .line 538
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/htc/sunny/Sunny;->SceneNode_GetRenderOrder(I)I

    move-result v0

    goto :goto_0
.end method

.method public getRootNode()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mRootNodeId:I

    return v0
.end method

.method public final getSpritePosition(I)Lcom/htc/sunny/Vector3F;
    .locals 4
    .parameter "nSpriteId"

    .prologue
    .line 207
    iget-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_2

    .line 208
    :cond_0
    sget-object v0, Lcom/htc/sunny/SunnyEngine;->mSpriteDefaultPos:Lcom/htc/sunny/Vector3F;

    .line 218
    :cond_1
    :goto_0
    return-object v0

    .line 211
    :cond_2
    new-instance v0, Lcom/htc/sunny/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny/Vector3F;-><init>()V

    .line 212
    .local v0, pos:Lcom/htc/sunny/Vector3F;
    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    iget v3, p0, Lcom/htc/sunny/SunnyEngine;->mViewPortId:I

    invoke-static {v2, v3, p1}, Lcom/htc/sunny/Sunny;->Window_QuerySceneNodeOriginPositionOnViewport(III)Z

    move-result v2

    if-ne v1, v2, :cond_1

    .line 213
    invoke-static {}, Lcom/htc/sunny/Sunny;->getOutputVectorX()F

    move-result v1

    iput v1, v0, Lcom/htc/sunny/Vector3F;->mX:F

    .line 214
    invoke-static {}, Lcom/htc/sunny/Sunny;->getOutputVectorY()F

    move-result v1

    iput v1, v0, Lcom/htc/sunny/Vector3F;->mY:F

    .line 215
    invoke-static {}, Lcom/htc/sunny/Sunny;->getOutputVectorZ()F

    move-result v1

    iput v1, v0, Lcom/htc/sunny/Vector3F;->mZ:F

    goto :goto_0
.end method

.method public getTag(II)I
    .locals 2
    .parameter "nNodeId"
    .parameter "nDefault"

    .prologue
    .line 230
    iget-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 238
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 234
    .restart local p2
    :cond_1
    invoke-static {p1}, Lcom/htc/sunny/Sunny;->SceneNode_GetUserFlag(I)I

    move-result v0

    .line 235
    .local v0, nFlag:I
    if-eqz v0, :cond_0

    .line 237
    add-int/lit8 v0, v0, -0x1

    move p2, v0

    .line 238
    goto :goto_0
.end method

.method public init()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/16 v0, 0x8

    const/4 v7, 0x1

    .line 75
    iget-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-ne v7, v1, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    .line 156
    :goto_0
    return v0

    .line 77
    :cond_0
    iget-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mEnabledTranslucent:Z

    if-nez v1, :cond_1

    .line 78
    invoke-static {}, Lcom/htc/sunny/Sunny;->InitEnvironment()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    .line 82
    :goto_1
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    if-nez v0, :cond_2

    .line 84
    const-string v0, "3DGlideMode"

    const-string v1, "[SunnyEngine] Sunny.InitEnvironment() fail !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {p0}, Lcom/htc/sunny/SunnyEngine;->deInit()V

    .line 86
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    goto :goto_0

    :cond_1
    move v1, v0

    move v2, v0

    move v3, v0

    move v5, v4

    move v6, v4

    .line 80
    invoke-static/range {v0 .. v6}, Lcom/htc/sunny/Sunny;->InitEnvironmentWithConfig(IIIIIII)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    goto :goto_1

    .line 89
    :cond_2
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->CreateWindow(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    .line 90
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    if-nez v0, :cond_3

    .line 91
    const-string v0, "3DGlideMode"

    const-string v1, "[SunnyEngine] Sunny.CreateWindow() fail !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p0}, Lcom/htc/sunny/SunnyEngine;->deInit()V

    .line 93
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    goto :goto_0

    .line 96
    :cond_3
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->Window_GetDefaultViewport(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SunnyEngine;->mViewPortId:I

    .line 97
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mViewPortId:I

    if-nez v0, :cond_4

    .line 98
    const-string v0, "3DGlideMode"

    const-string v1, "[SunnyEngine] Sunny.Window_GetDefaultViewport() fail !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p0}, Lcom/htc/sunny/SunnyEngine;->deInit()V

    .line 100
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    goto :goto_0

    .line 106
    :cond_4
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->CreateScene(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SunnyEngine;->mSceneId:I

    .line 107
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mSceneId:I

    if-nez v0, :cond_5

    .line 108
    const-string v0, "3DGlideMode"

    const-string v1, "[SunnyEngine] Sunny.CreateScene() fail !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {p0}, Lcom/htc/sunny/SunnyEngine;->deInit()V

    .line 110
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    goto :goto_0

    .line 113
    :cond_5
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mSceneId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->Scene_GetRootNode(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SunnyEngine;->mGlobalRootNode:I

    .line 114
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mGlobalRootNode:I

    if-nez v0, :cond_6

    .line 115
    const-string v0, "3DGlideMode"

    const-string v1, "[SunnyEngine] Sunny.Scene_GetRootNode() fail !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0}, Lcom/htc/sunny/SunnyEngine;->deInit()V

    .line 117
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    goto/16 :goto_0

    .line 119
    :cond_6
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mGlobalRootNode:I

    invoke-static {v0, v7}, Lcom/htc/sunny/Sunny;->SceneNode_SetChildrenRenderOrderMode(II)V

    .line 121
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->CreateSceneNode(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundNodeId:I

    .line 122
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundNodeId:I

    if-nez v0, :cond_7

    .line 123
    const-string v0, "3DGlideMode"

    const-string v1, "[SunnyEngine] init() fail to creat background node!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p0}, Lcom/htc/sunny/SunnyEngine;->deInit()V

    .line 125
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    goto/16 :goto_0

    .line 127
    :cond_7
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mGlobalRootNode:I

    iget v1, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundNodeId:I

    invoke-static {v0, v1}, Lcom/htc/sunny/Sunny;->SceneNode_AddChild(II)Z

    .line 130
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->CreateSceneNode(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SunnyEngine;->mRootNodeId:I

    .line 131
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mRootNodeId:I

    if-nez v0, :cond_8

    .line 132
    const-string v0, "3DGlideMode"

    const-string v1, "[SunnyEngine] init() fail to creat root node!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {p0}, Lcom/htc/sunny/SunnyEngine;->deInit()V

    .line 134
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    goto/16 :goto_0

    .line 136
    :cond_8
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundNodeId:I

    iget v1, p0, Lcom/htc/sunny/SunnyEngine;->mRootNodeId:I

    invoke-static {v0, v1}, Lcom/htc/sunny/Sunny;->SceneNode_AddChild(II)Z

    .line 137
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mRootNodeId:I

    invoke-static {v0, v7}, Lcom/htc/sunny/Sunny;->SceneNode_SetChildrenRenderOrderMode(II)V

    .line 140
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mSceneId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->Scene_GetDefaultCamera(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SunnyEngine;->mCameraId:I

    .line 141
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mCameraId:I

    if-nez v0, :cond_9

    .line 142
    const-string v0, "3DGlideMode"

    const-string v1, "[SunnyEngine] Sunny.Scene_GetDefaultCamera() fail !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p0}, Lcom/htc/sunny/SunnyEngine;->deInit()V

    .line 144
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    goto/16 :goto_0

    .line 147
    :cond_9
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mCameraId:I

    const/high16 v1, 0x4270

    const/high16 v2, 0x4120

    const v3, 0x461c4000

    invoke-static {v0, v1, v2, v3}, Lcom/htc/sunny/Sunny;->Camera_2DIsometricSetup(IFFF)V

    .line 148
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mViewPortId:I

    iget v1, p0, Lcom/htc/sunny/SunnyEngine;->mCameraId:I

    invoke-static {v0, v1}, Lcom/htc/sunny/Sunny;->Viewport_LinkCamera(II)V

    .line 150
    iput-boolean v7, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    .line 152
    sget-object v0, Lcom/htc/sunny/SunnyEngine;->mSunnyReferenceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 153
    sget v0, Lcom/htc/sunny/SunnyEngine;->mSunnyReferenceCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/htc/sunny/SunnyEngine;->mSunnyReferenceCount:I

    .line 154
    const-string v0, "3DGlideMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SunnyEngine] init() ref count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/htc/sunny/SunnyEngine;->mSunnyReferenceCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    sget-object v0, Lcom/htc/sunny/SunnyEngine;->mSunnyReferenceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 156
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    goto/16 :goto_0
.end method

.method public logStatus()V
    .locals 1

    .prologue
    .line 620
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-nez v0, :cond_0

    .line 624
    :goto_0
    return-void

    .line 623
    :cond_0
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->Environment_LogStatus(I)V

    goto :goto_0
.end method

.method public renderWindow()V
    .locals 1

    .prologue
    .line 627
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mBind:Z

    if-nez v0, :cond_1

    .line 631
    :cond_0
    :goto_0
    return-void

    .line 630
    :cond_1
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->Window_Render(I)V

    goto :goto_0
.end method

.method public setBackgroundImage(Lcom/htc/sunny/SBitmap;)V
    .locals 4
    .parameter "backgroundBmp"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 160
    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/htc/sunny/SBitmap;->isRecycled()Z

    move-result v0

    if-ne v3, v0, :cond_1

    .line 161
    :cond_0
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    invoke-virtual {p0, v0, v2}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    .line 162
    iput-object p1, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundBmp:Lcom/htc/sunny/SBitmap;

    .line 183
    :goto_0
    return-void

    .line 165
    :cond_1
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    if-nez v0, :cond_2

    .line 166
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    invoke-static {v0, v3}, Lcom/htc/sunny/Sunny;->CreateSprite(II)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    .line 167
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    if-eqz v0, :cond_2

    .line 168
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundNodeId:I

    iget v1, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    invoke-static {v0, v1}, Lcom/htc/sunny/Sunny;->SceneNode_AddChild(II)Z

    .line 169
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    invoke-virtual {p0, v0, v2}, Lcom/htc/sunny/SunnyEngine;->setSpriteTouchable(IZ)V

    .line 172
    :cond_2
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundTextureId:I

    if-nez v0, :cond_3

    .line 173
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->CreateTexture(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundTextureId:I

    .line 176
    :cond_3
    iput-object p1, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundBmp:Lcom/htc/sunny/SBitmap;

    .line 177
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundTextureId:I

    iget-object v1, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundBmp:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->getBmpId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny/SunnyEngine;->setBitmaptoTexture(II)Z

    .line 180
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    invoke-virtual {p0, v0, v3}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    .line 181
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    iget v1, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundTextureId:I

    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/htc/sunny/SunnyEngine;->setTexturetoSprite(IIII)Z

    .line 182
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mWindowW:I

    iget v1, p0, Lcom/htc/sunny/SunnyEngine;->mWindowH:I

    invoke-direct {p0, v0, v1}, Lcom/htc/sunny/SunnyEngine;->setBackgroundSize(II)V

    goto :goto_0
.end method

.method public setBitmaptoTexture(II)Z
    .locals 2
    .parameter "nTextureId"
    .parameter "inputBitmap"

    .prologue
    const/4 v0, 0x0

    .line 514
    iget-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 518
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1, p2, v0}, Lcom/htc/sunny/Sunny;->Texture_SetupByBitmap_InRenderThread(IIZ)Z

    move-result v0

    goto :goto_0
.end method

.method public setClipArea(IIIII)V
    .locals 1
    .parameter "nNodeId"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    invoke-static {p1, p2, p3, p4, p5}, Lcom/htc/sunny/Sunny;->Scissor_SetArea(IIIII)V

    goto :goto_0
.end method

.method public setNodeAlpha(II)V
    .locals 3
    .parameter "nNodeId"
    .parameter "alpha"

    .prologue
    .line 574
    iget-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 578
    :cond_1
    int-to-float v1, p2

    const/high16 v2, 0x437f

    div-float v0, v1, v2

    .line 579
    .local v0, groupAlpha:F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    const/4 v0, 0x0

    .line 580
    :cond_2
    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    const/high16 v0, 0x3f80

    .line 582
    :cond_3
    invoke-static {p1, v0}, Lcom/htc/sunny/Sunny;->SceneNode_SetGroupAlpha(IF)V

    goto :goto_0
.end method

.method public setNodeOrder(II)V
    .locals 1
    .parameter "nNodeId"
    .parameter "renderOrder"

    .prologue
    .line 525
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    invoke-static {p1, p2}, Lcom/htc/sunny/Sunny;->SceneNode_SetRenderOrder(II)V

    goto :goto_0
.end method

.method public setNodePosition(IFFF)V
    .locals 1
    .parameter "nNodeId"
    .parameter "nX"
    .parameter "nY"
    .parameter "nZ"

    .prologue
    .line 566
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 570
    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/htc/sunny/Sunny;->SceneNode_SetPosition(IFFF)V

    goto :goto_0
.end method

.method public setNodeRotate(IFFF)V
    .locals 1
    .parameter "nNodeId"
    .parameter "nX"
    .parameter "nY"
    .parameter "nZ"

    .prologue
    .line 558
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/htc/sunny/Sunny;->SceneNode_SetRotate(IFFF)V

    goto :goto_0
.end method

.method public setNodeScale(IFFF)V
    .locals 1
    .parameter "nNodeId"
    .parameter "nX"
    .parameter "nY"
    .parameter "nZ"

    .prologue
    .line 542
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 546
    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/htc/sunny/Sunny;->SceneNode_SetScale(IFFF)V

    goto :goto_0
.end method

.method public setNodeVisible(IZ)V
    .locals 1
    .parameter "nNodeId"
    .parameter "bVisible"

    .prologue
    .line 550
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    invoke-static {p1, p2}, Lcom/htc/sunny/Sunny;->SceneNode_SetVisible(IZ)V

    goto :goto_0
.end method

.method public setSpriteAlpha(III)V
    .locals 1
    .parameter "nSpriteId"
    .parameter "nLayerIndex"
    .parameter "alpha"

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/htc/sunny/Sunny;->Sprite_SetAlpha(III)V

    goto :goto_0
.end method

.method public setSpriteAsShadow(II)Z
    .locals 3
    .parameter "nSpriteId"
    .parameter "nLayer"

    .prologue
    const/4 v0, 0x1

    const/16 v2, 0x41

    .line 476
    iget-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 477
    :cond_0
    const/4 v0, 0x0

    .line 483
    :goto_0
    return v0

    .line 480
    :cond_1
    invoke-static {p1, p2, v2, v2, v2}, Lcom/htc/sunny/Sunny;->Sprite_SetColor(IIIII)V

    .line 481
    invoke-static {p1, p2, v0}, Lcom/htc/sunny/Sunny;->Sprite_SetRGBOperation(III)V

    goto :goto_0
.end method

.method public setSpriteAsShadow(IIIII)Z
    .locals 2
    .parameter "nSpriteId"
    .parameter "nLayer"
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    const/4 v0, 0x1

    .line 487
    iget-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 488
    :cond_0
    const/4 v0, 0x0

    .line 494
    :goto_0
    return v0

    .line 491
    :cond_1
    invoke-static {p1, p2, p3, p4, p5}, Lcom/htc/sunny/Sunny;->Sprite_SetColor(IIIII)V

    .line 492
    invoke-static {p1, p2, v0}, Lcom/htc/sunny/Sunny;->Sprite_SetRGBOperation(III)V

    goto :goto_0
.end method

.method public setSpriteRenderable(IZ)V
    .locals 1
    .parameter "nSpriteId"
    .parameter "bRenderable"

    .prologue
    .line 594
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 598
    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/htc/sunny/Sunny;->Sprite_SetLayerRenderable(IIZ)V

    goto :goto_0
.end method

.method public setSpriteTouchable(IZ)V
    .locals 1
    .parameter "nSpriteId"
    .parameter "bTouchable"

    .prologue
    .line 586
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 590
    :cond_1
    invoke-static {p1, p2}, Lcom/htc/sunny/Sunny;->Sprite_SetTouchable(IZ)V

    goto :goto_0
.end method

.method public setSpriteVisible(IZ)V
    .locals 1
    .parameter "nSpriteId"
    .parameter "bVisible"

    .prologue
    .line 602
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 606
    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/htc/sunny/Sunny;->Sprite_SetLayerVisible(IIZ)V

    goto :goto_0
.end method

.method public setTag(II)V
    .locals 1
    .parameter "nNodeId"
    .parameter "nTag"

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-nez v0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 226
    invoke-static {p1, p2}, Lcom/htc/sunny/Sunny;->SceneNode_SetUserFlag(II)V

    goto :goto_0
.end method

.method public setTextureCoordinates(IFFFF)V
    .locals 6
    .parameter "nSpriteId"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 498
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    const/4 v1, 0x0

    move v0, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/htc/sunny/Sunny;->Sprite_SetTextureCoordinatesBy2P(IIFFFF)V

    goto :goto_0
.end method

.method public setTextureCoordinates(IIFFFF)V
    .locals 1
    .parameter "nSpriteId"
    .parameter "nLayerIndex"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    invoke-static/range {p1 .. p6}, Lcom/htc/sunny/Sunny;->Sprite_SetTextureCoordinatesBy2P(IIFFFF)V

    goto :goto_0
.end method

.method public setTexturetoSprite(IIII)Z
    .locals 2
    .parameter "nSpriteId"
    .parameter "nLayerIndex"
    .parameter "nTextureIndex"
    .parameter "nTextureId"

    .prologue
    const/4 v0, 0x0

    .line 468
    iget-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    .line 472
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1, p2, v0, p4}, Lcom/htc/sunny/Sunny;->Sprite_SetTexture(IIII)Z

    move-result v0

    goto :goto_0
.end method

.method public setupSpriteGeometry(IIIIII)V
    .locals 7
    .parameter "nSpriteId"
    .parameter "nLayerIndex"
    .parameter "nWidth"
    .parameter "nHeight"
    .parameter "nCenterX"
    .parameter "nCenterY"

    .prologue
    .line 318
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    int-to-float v5, p6

    const/4 v6, 0x0

    move v0, p1

    move v1, p2

    invoke-static/range {v0 .. v6}, Lcom/htc/sunny/Sunny;->Sprite_SetupGeometry(IIFFFFF)V

    goto :goto_0
.end method

.method public unbindWindow()V
    .locals 1

    .prologue
    .line 634
    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mBind:Z

    if-nez v0, :cond_1

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 637
    :cond_1
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->Window_UnbindSurface(I)V

    .line 638
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mBind:Z

    goto :goto_0
.end method
