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

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/htc/sunny/SunnyEngine;->mBitmapQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/htc/sunny/SunnyEngine;->mSunnyReferenceLock:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v0, 0x0

    sput v0, Lcom/htc/sunny/SunnyEngine;->mSunnyReferenceCount:I

    new-instance v0, Lcom/htc/sunny/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny/Vector3F;-><init>()V

    sput-object v0, Lcom/htc/sunny/SunnyEngine;->mSpriteDefaultPos:Lcom/htc/sunny/Vector3F;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mContext:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mViewPortId:I

    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mSceneId:I

    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundNodeId:I

    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundTextureId:I

    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundBitmapId:I

    iput-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundBmp:Lcom/htc/sunny/SBitmap;

    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mGlobalRootNode:I

    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mRootNodeId:I

    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mCameraId:I

    iput-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mBind:Z

    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mWindowW:I

    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mWindowH:I

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mMaskNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mSpriteQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mTextureQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mLocker:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mEnabledTranslucent:Z

    iput-object p1, p0, Lcom/htc/sunny/SunnyEngine;->mContext:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/htc/sunny/SunnyEngine;->mEnabledTranslucent:Z

    return-void
.end method

.method public static createAlphaBitmap(Landroid/graphics/Bitmap;III)I
    .locals 8

    const/4 v2, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-lez v7, :cond_0

    if-lez v6, :cond_0

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->CreateBitmap(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    move v3, v7

    const/4 v4, 0x0

    move v4, v6

    move-object v1, p0

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/htc/sunny/Sunny;->Bitmap_SetAndConvert(ILandroid/graphics/Bitmap;IIII)Z

    sget-object v1, Lcom/htc/sunny/SunnyEngine;->mBitmapQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/htc/sunny/SunnyEngine;->mBitmapQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method public static createBitmap(Landroid/graphics/Bitmap;III)I
    .locals 8

    const/4 v1, 0x0

    if-nez p0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-lez v7, :cond_2

    if-gtz v6, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lcom/htc/sunny/Sunny;->CreateBitmap(I)I

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    move v3, v7

    const/4 v4, 0x0

    if-nez p3, :cond_5

    invoke-static {v0, p0}, Lcom/htc/sunny/Sunny;->Bitmap_Set(ILandroid/graphics/Bitmap;)Z

    :goto_1
    sget-object v1, Lcom/htc/sunny/SunnyEngine;->mBitmapQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/htc/sunny/SunnyEngine;->mBitmapQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    const v2, 0x25551

    move-object v1, p0

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/htc/sunny/Sunny;->Bitmap_SetAndConvert(ILandroid/graphics/Bitmap;IIII)Z

    goto :goto_1
.end method

.method public static destroyBitmap(I)V
    .locals 3

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    sget-object v1, Lcom/htc/sunny/SunnyEngine;->mBitmapQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/htc/sunny/Sunny;->DestroyBitmap(I)V

    sget-object v0, Lcom/htc/sunny/SunnyEngine;->mBitmapQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static isBitmapDestroyed(I)Z
    .locals 3

    const/4 v0, 0x1

    sget-object v1, Lcom/htc/sunny/SunnyEngine;->mBitmapQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public static nextPowerOf2(I)I
    .locals 1

    add-int/lit8 p0, p0, -0x1

    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method private setBackgroundSize(II)V
    .locals 7

    const/4 v4, 0x0

    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    const/4 v1, 0x0

    int-to-float v2, p1

    int-to-float v3, p2

    move v5, v4

    move v6, v4

    invoke-static/range {v0 .. v6}, Lcom/htc/sunny/Sunny;->Sprite_SetupGeometry(IIFFFFF)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bindWindows(Landroid/view/Surface;II)Z
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    invoke-static {v1, p1, p2, p3}, Lcom/htc/sunny/Sunny;->Window_BindSurface(ILandroid/view/Surface;II)Z

    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mWindowW:I

    add-int/lit8 v1, p3, 0x1

    iput v1, p0, Lcom/htc/sunny/SunnyEngine;->mWindowH:I

    iget v1, p0, Lcom/htc/sunny/SunnyEngine;->mWindowW:I

    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mWindowH:I

    invoke-direct {p0, v1, v2}, Lcom/htc/sunny/SunnyEngine;->setBackgroundSize(II)V

    iput-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mBind:Z

    goto :goto_0
.end method

.method public createMaskNode(IZ)I
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-boolean v2, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->CreateScissor(I)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {v0, v3, v3, v3}, Lcom/htc/sunny/Sunny;->SceneNode_SetPosition(IFFF)V

    invoke-static {p1, v0}, Lcom/htc/sunny/Sunny;->SceneNode_AddChild(II)Z

    if-ne v4, p2, :cond_3

    invoke-static {v0, v4}, Lcom/htc/sunny/Sunny;->SceneNode_SetChildrenRenderOrderMode(II)V

    :cond_3
    iget-object v1, p0, Lcom/htc/sunny/SunnyEngine;->mMaskNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public createNode(IZ)I
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-boolean v2, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->CreateSceneNode(I)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {v0, v3, v3, v3}, Lcom/htc/sunny/Sunny;->SceneNode_SetPosition(IFFF)V

    invoke-static {p1, v0}, Lcom/htc/sunny/Sunny;->SceneNode_AddChild(II)Z

    if-ne v4, p2, :cond_3

    invoke-static {v0, v4}, Lcom/htc/sunny/Sunny;->SceneNode_SetChildrenRenderOrderMode(II)V

    :cond_3
    iget-object v1, p0, Lcom/htc/sunny/SunnyEngine;->mNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public createSprite(II)I
    .locals 3

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    invoke-static {v2, p2}, Lcom/htc/sunny/Sunny;->CreateSprite(II)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {p1, v0}, Lcom/htc/sunny/Sunny;->SceneNode_AddChild(II)Z

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny/SunnyEngine;->setSpriteTouchable(IZ)V

    iget-object v1, p0, Lcom/htc/sunny/SunnyEngine;->mSpriteQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public createTexture()I
    .locals 3

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->CreateTexture(I)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/htc/sunny/SunnyEngine;->mTextureQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public deInit()V
    .locals 6

    const-string v2, "3DGlideMode"

    const-string v3, "[SunnyEngine] Sunny deInit() +"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/htc/sunny/SunnyEngine;->mLocker:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    if-eqz v2, :cond_7

    sget-object v2, Lcom/htc/sunny/SunnyEngine;->mSunnyReferenceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    sget v2, Lcom/htc/sunny/SunnyEngine;->mSunnyReferenceCount:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/htc/sunny/SunnyEngine;->mSunnyReferenceCount:I

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

    sget v2, Lcom/htc/sunny/SunnyEngine;->mSunnyReferenceCount:I

    if-nez v2, :cond_2

    sget-object v2, Lcom/htc/sunny/SunnyEngine;->mBitmapQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v2, :cond_2

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

    sget-object v2, Lcom/htc/sunny/SunnyEngine;->mBitmapQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->DestroyBitmap(I)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    sget-object v2, Lcom/htc/sunny/SunnyEngine;->mBitmapQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    :cond_2
    sget-object v2, Lcom/htc/sunny/SunnyEngine;->mSunnyReferenceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/htc/sunny/SunnyEngine;->destroyAllResource()V

    invoke-virtual {p0}, Lcom/htc/sunny/SunnyEngine;->destroyBackgroundResource()V

    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mRootNodeId:I

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mRootNodeId:I

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->DestroySceneNode(I)V

    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/sunny/SunnyEngine;->mRootNodeId:I

    :cond_3
    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    iget-boolean v4, p0, Lcom/htc/sunny/SunnyEngine;->mBind:Z

    if-ne v2, v4, :cond_4

    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->Window_UnbindSurface(I)V

    :cond_4
    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->DestroyWindow(I)V

    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    :cond_5
    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mSceneId:I

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mSceneId:I

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->DestroyScene(I)V

    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/sunny/SunnyEngine;->mSceneId:I

    :cond_6
    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->DeinitEnvironment(I)V

    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    :cond_7
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "3DGlideMode"

    const-string v3, "[SunnyEngine] Sunny deInit() -"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public destroyAllResource()V
    .locals 5

    iget-object v2, p0, Lcom/htc/sunny/SunnyEngine;->mTextureQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v2, :cond_1

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

    iget-object v2, p0, Lcom/htc/sunny/SunnyEngine;->mTextureQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->DestroyTexture(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/htc/sunny/SunnyEngine;->mTextureQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    :cond_1
    iget-object v2, p0, Lcom/htc/sunny/SunnyEngine;->mSpriteQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v2, :cond_3

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

    iget-object v2, p0, Lcom/htc/sunny/SunnyEngine;->mSpriteQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->DestroySprite(I)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/htc/sunny/SunnyEngine;->mSpriteQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    :cond_3
    iget-object v2, p0, Lcom/htc/sunny/SunnyEngine;->mNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v2, :cond_5

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

    iget-object v2, p0, Lcom/htc/sunny/SunnyEngine;->mNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->DestroySceneNode(I)V

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/htc/sunny/SunnyEngine;->mNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    :cond_5
    iget-object v2, p0, Lcom/htc/sunny/SunnyEngine;->mMaskNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v2, :cond_7

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

    iget-object v2, p0, Lcom/htc/sunny/SunnyEngine;->mMaskNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/htc/sunny/Sunny;->DestroyScissor(I)V

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/htc/sunny/SunnyEngine;->mMaskNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    :cond_7
    return-void
.end method

.method public destroyBackgroundResource()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "3DGlideMode"

    const-string v1, "[SunnyEngine] destroy background"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundBitmapId:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundBitmapId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->DestroyBitmap(I)V

    iput v2, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundBitmapId:I

    :cond_0
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundTextureId:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundTextureId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->DestroyTexture(I)V

    iput v2, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundTextureId:I

    :cond_1
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->DestroySprite(I)V

    iput v2, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    :cond_2
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundNodeId:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundNodeId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->DestroySceneNode(I)V

    iput v2, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundNodeId:I

    :cond_3
    return-void
.end method

.method public destroyMaskNode(I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mMaskNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/htc/sunny/Sunny;->DestroyScissor(I)V

    iget-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mMaskNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public destroyNode(I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/htc/sunny/Sunny;->DestroySceneNode(I)V

    iget-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mNodeQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public destroySprite(I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mSpriteQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/htc/sunny/Sunny;->DestroySprite(I)V

    iget-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mSpriteQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public destroyTexture(I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mTextureQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/htc/sunny/Sunny;->DestroyTexture(I)V

    iget-object v0, p0, Lcom/htc/sunny/SunnyEngine;->mTextureQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getGlobalRootNode()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mGlobalRootNode:I

    return v0
.end method

.method public getHitSprite(II)I
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

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

    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/htc/sunny/Sunny;->SceneNode_GetRenderOrder(I)I

    move-result v0

    goto :goto_0
.end method

.method public getRootNode()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mRootNodeId:I

    return v0
.end method

.method public final getSpritePosition(I)Lcom/htc/sunny/Vector3F;
    .locals 4

    iget-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_2

    :cond_0
    sget-object v0, Lcom/htc/sunny/SunnyEngine;->mSpriteDefaultPos:Lcom/htc/sunny/Vector3F;

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Lcom/htc/sunny/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny/Vector3F;-><init>()V

    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    iget v3, p0, Lcom/htc/sunny/SunnyEngine;->mViewPortId:I

    invoke-static {v2, v3, p1}, Lcom/htc/sunny/Sunny;->Window_QuerySceneNodeOriginPositionOnViewport(III)Z

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/htc/sunny/Sunny;->getOutputVectorX()F

    move-result v1

    iput v1, v0, Lcom/htc/sunny/Vector3F;->mX:F

    invoke-static {}, Lcom/htc/sunny/Sunny;->getOutputVectorY()F

    move-result v1

    iput v1, v0, Lcom/htc/sunny/Vector3F;->mY:F

    invoke-static {}, Lcom/htc/sunny/Sunny;->getOutputVectorZ()F

    move-result v1

    iput v1, v0, Lcom/htc/sunny/Vector3F;->mZ:F

    goto :goto_0
.end method

.method public getTag(II)I
    .locals 2

    iget-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return p2

    :cond_1
    invoke-static {p1}, Lcom/htc/sunny/Sunny;->SceneNode_GetUserFlag(I)I

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    move p2, v0

    goto :goto_0
.end method

.method public init()Z
    .locals 8

    const/4 v4, 0x0

    const/16 v0, 0x8

    const/4 v7, 0x1

    iget-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-ne v7, v1, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    :goto_0
    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mEnabledTranslucent:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/htc/sunny/Sunny;->InitEnvironment()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    :goto_1
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    if-nez v0, :cond_2

    const-string v0, "3DGlideMode"

    const-string v1, "[SunnyEngine] Sunny.InitEnvironment() fail !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny/SunnyEngine;->deInit()V

    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    goto :goto_0

    :cond_1
    move v1, v0

    move v2, v0

    move v3, v0

    move v5, v4

    move v6, v4

    invoke-static/range {v0 .. v6}, Lcom/htc/sunny/Sunny;->InitEnvironmentWithConfig(IIIIIII)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->CreateWindow(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    if-nez v0, :cond_3

    const-string v0, "3DGlideMode"

    const-string v1, "[SunnyEngine] Sunny.CreateWindow() fail !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny/SunnyEngine;->deInit()V

    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->Window_GetDefaultViewport(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SunnyEngine;->mViewPortId:I

    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mViewPortId:I

    if-nez v0, :cond_4

    const-string v0, "3DGlideMode"

    const-string v1, "[SunnyEngine] Sunny.Window_GetDefaultViewport() fail !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny/SunnyEngine;->deInit()V

    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->CreateScene(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SunnyEngine;->mSceneId:I

    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mSceneId:I

    if-nez v0, :cond_5

    const-string v0, "3DGlideMode"

    const-string v1, "[SunnyEngine] Sunny.CreateScene() fail !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny/SunnyEngine;->deInit()V

    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mSceneId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->Scene_GetRootNode(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SunnyEngine;->mGlobalRootNode:I

    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mGlobalRootNode:I

    if-nez v0, :cond_6

    const-string v0, "3DGlideMode"

    const-string v1, "[SunnyEngine] Sunny.Scene_GetRootNode() fail !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny/SunnyEngine;->deInit()V

    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    goto/16 :goto_0

    :cond_6
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mGlobalRootNode:I

    invoke-static {v0, v7}, Lcom/htc/sunny/Sunny;->SceneNode_SetChildrenRenderOrderMode(II)V

    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->CreateSceneNode(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundNodeId:I

    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundNodeId:I

    if-nez v0, :cond_7

    const-string v0, "3DGlideMode"

    const-string v1, "[SunnyEngine] init() fail to creat background node!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny/SunnyEngine;->deInit()V

    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    goto/16 :goto_0

    :cond_7
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mGlobalRootNode:I

    iget v1, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundNodeId:I

    invoke-static {v0, v1}, Lcom/htc/sunny/Sunny;->SceneNode_AddChild(II)Z

    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->CreateSceneNode(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SunnyEngine;->mRootNodeId:I

    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mRootNodeId:I

    if-nez v0, :cond_8

    const-string v0, "3DGlideMode"

    const-string v1, "[SunnyEngine] init() fail to creat root node!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny/SunnyEngine;->deInit()V

    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    goto/16 :goto_0

    :cond_8
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundNodeId:I

    iget v1, p0, Lcom/htc/sunny/SunnyEngine;->mRootNodeId:I

    invoke-static {v0, v1}, Lcom/htc/sunny/Sunny;->SceneNode_AddChild(II)Z

    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mRootNodeId:I

    invoke-static {v0, v7}, Lcom/htc/sunny/Sunny;->SceneNode_SetChildrenRenderOrderMode(II)V

    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mSceneId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->Scene_GetDefaultCamera(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SunnyEngine;->mCameraId:I

    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mCameraId:I

    if-nez v0, :cond_9

    const-string v0, "3DGlideMode"

    const-string v1, "[SunnyEngine] Sunny.Scene_GetDefaultCamera() fail !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny/SunnyEngine;->deInit()V

    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    goto/16 :goto_0

    :cond_9
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mCameraId:I

    const/high16 v1, 0x4270

    const/high16 v2, 0x4120

    const v3, 0x461c4000

    invoke-static {v0, v1, v2, v3}, Lcom/htc/sunny/Sunny;->Camera_2DIsometricSetup(IFFF)V

    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mViewPortId:I

    iget v1, p0, Lcom/htc/sunny/SunnyEngine;->mCameraId:I

    invoke-static {v0, v1}, Lcom/htc/sunny/Sunny;->Viewport_LinkCamera(II)V

    iput-boolean v7, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    sget-object v0, Lcom/htc/sunny/SunnyEngine;->mSunnyReferenceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    sget v0, Lcom/htc/sunny/SunnyEngine;->mSunnyReferenceCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/htc/sunny/SunnyEngine;->mSunnyReferenceCount:I

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

    sget-object v0, Lcom/htc/sunny/SunnyEngine;->mSunnyReferenceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    goto/16 :goto_0
.end method

.method public logStatus()V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->Environment_LogStatus(I)V

    goto :goto_0
.end method

.method public renderWindow()V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mBind:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->Window_Render(I)V

    goto :goto_0
.end method

.method public setBackgroundImage(Lcom/htc/sunny/SBitmap;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/htc/sunny/SBitmap;->isRecycled()Z

    move-result v0

    if-ne v3, v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    invoke-virtual {p0, v0, v2}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    iput-object p1, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundBmp:Lcom/htc/sunny/SBitmap;

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    invoke-static {v0, v3}, Lcom/htc/sunny/Sunny;->CreateSprite(II)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundNodeId:I

    iget v1, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    invoke-static {v0, v1}, Lcom/htc/sunny/Sunny;->SceneNode_AddChild(II)Z

    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    invoke-virtual {p0, v0, v2}, Lcom/htc/sunny/SunnyEngine;->setSpriteTouchable(IZ)V

    :cond_2
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundTextureId:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mEnvironmentId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->CreateTexture(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundTextureId:I

    :cond_3
    iput-object p1, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundBmp:Lcom/htc/sunny/SBitmap;

    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundTextureId:I

    iget-object v1, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundBmp:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->getBmpId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny/SunnyEngine;->setBitmaptoTexture(II)Z

    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    invoke-virtual {p0, v0, v3}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundSpriteId:I

    iget v1, p0, Lcom/htc/sunny/SunnyEngine;->mBackgroundTextureId:I

    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/htc/sunny/SunnyEngine;->setTexturetoSprite(IIII)Z

    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mWindowW:I

    iget v1, p0, Lcom/htc/sunny/SunnyEngine;->mWindowH:I

    invoke-direct {p0, v0, v1}, Lcom/htc/sunny/SunnyEngine;->setBackgroundSize(II)V

    goto :goto_0
.end method

.method public setBitmaptoTexture(II)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

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

    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1, p2, p3, p4, p5}, Lcom/htc/sunny/Sunny;->Scissor_SetArea(IIIII)V

    goto :goto_0
.end method

.method public setNodeAlpha(II)V
    .locals 3

    iget-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    int-to-float v1, p2

    const/high16 v2, 0x437f

    div-float v0, v1, v2

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    const/high16 v0, 0x3f80

    :cond_3
    invoke-static {p1, v0}, Lcom/htc/sunny/Sunny;->SceneNode_SetGroupAlpha(IF)V

    goto :goto_0
.end method

.method public setNodeOrder(II)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1, p2}, Lcom/htc/sunny/Sunny;->SceneNode_SetRenderOrder(II)V

    goto :goto_0
.end method

.method public setNodePosition(IFFF)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/htc/sunny/Sunny;->SceneNode_SetPosition(IFFF)V

    goto :goto_0
.end method

.method public setNodeRotate(IFFF)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/htc/sunny/Sunny;->SceneNode_SetRotate(IFFF)V

    goto :goto_0
.end method

.method public setNodeScale(IFFF)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/htc/sunny/Sunny;->SceneNode_SetScale(IFFF)V

    goto :goto_0
.end method

.method public setNodeVisible(IZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1, p2}, Lcom/htc/sunny/Sunny;->SceneNode_SetVisible(IZ)V

    goto :goto_0
.end method

.method public setSpriteAlpha(III)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1, p2, p3}, Lcom/htc/sunny/Sunny;->Sprite_SetAlpha(III)V

    goto :goto_0
.end method

.method public setSpriteAsShadow(II)Z
    .locals 3

    const/4 v0, 0x1

    const/16 v2, 0x41

    iget-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {p1, p2, v2, v2, v2}, Lcom/htc/sunny/Sunny;->Sprite_SetColor(IIIII)V

    invoke-static {p1, p2, v0}, Lcom/htc/sunny/Sunny;->Sprite_SetRGBOperation(III)V

    goto :goto_0
.end method

.method public setSpriteAsShadow(IIIII)Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {p1, p2, p3, p4, p5}, Lcom/htc/sunny/Sunny;->Sprite_SetColor(IIIII)V

    invoke-static {p1, p2, v0}, Lcom/htc/sunny/Sunny;->Sprite_SetRGBOperation(III)V

    goto :goto_0
.end method

.method public setSpriteRenderable(IZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/htc/sunny/Sunny;->Sprite_SetLayerRenderable(IIZ)V

    goto :goto_0
.end method

.method public setSpriteTouchable(IZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1, p2}, Lcom/htc/sunny/Sunny;->Sprite_SetTouchable(IZ)V

    goto :goto_0
.end method

.method public setSpriteVisible(IZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/htc/sunny/Sunny;->Sprite_SetLayerVisible(IIZ)V

    goto :goto_0
.end method

.method public setTag(II)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/htc/sunny/Sunny;->SceneNode_SetUserFlag(II)V

    goto :goto_0
.end method

.method public setTextureCoordinates(IFFFF)V
    .locals 6

    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

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

    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static/range {p1 .. p6}, Lcom/htc/sunny/Sunny;->Sprite_SetTextureCoordinatesBy2P(IIFFFF)V

    goto :goto_0
.end method

.method public setTexturetoSprite(IIII)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    if-nez p4, :cond_1

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

    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

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

    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mInit:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mBind:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/htc/sunny/SunnyEngine;->mWindowId:I

    invoke-static {v0}, Lcom/htc/sunny/Sunny;->Window_UnbindSurface(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny/SunnyEngine;->mBind:Z

    goto :goto_0
.end method
