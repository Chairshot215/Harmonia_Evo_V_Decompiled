.class public Lcom/htc/sunny/SView;
.super Ljava/lang/Object;
.source "SView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny/SView$OnClickListener;
    }
.end annotation


# static fields
.field public static final BACKGROUND_RENDER_ORDER:I = -0xc8

.field public static final BOTTOM_MOST_RENDER_ORDER:I = -0x64

.field protected static final INVALID_ID:I = 0x0

.field public static final NORMAL_RENDER_ORDER:I = 0x0

.field public static final TOP_MOST_RENDER_ORDER:I = 0x64

.field public static final WRAP_CONTENT:I = -0x1


# instance fields
.field protected mAlpha:I

.field protected mAnimationController:Lcom/htc/sunny/SAnimationController;

.field protected mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

.field protected mBKPressDrawable:Landroid/graphics/drawable/Drawable;

.field protected mBKRestDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundHeight:I

.field protected mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

.field protected mBackgroundPressTextureId:I

.field protected mBackgroundRenderOrder:I

.field protected mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

.field protected mBackgroundRestTextureId:I

.field protected mBackgroundSpriteId:I

.field private mBackgroundWidth:I

.field private mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/sunny/SView;",
            ">;"
        }
    .end annotation
.end field

.field protected mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

.field protected mClickListener:Lcom/htc/sunny/SView$OnClickListener;

.field protected mContext:Landroid/content/Context;

.field protected mEnlargeSensorAreaB:I

.field protected mEnlargeSensorAreaL:I

.field protected mEnlargeSensorAreaR:I

.field protected mEnlargeSensorAreaT:I

.field protected mHasLayoutAnimation:Z

.field protected mIsMaskNode:Z

.field protected mIsPressed:Z

.field protected mIsSurfaceBinded:Z

.field private mOrder:I

.field protected mParentView:Lcom/htc/sunny/SView;

.field protected mRenderOrder:Z

.field protected mRotation:Lcom/htc/sunny/Vector3F;

.field protected mScale:Lcom/htc/sunny/Vector3F;

.field protected mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

.field protected mSurfaceView:Lcom/htc/sunny/SSurfaceView;

.field protected mTouchSensorSpriteId:I

.field protected mTouchable:Z

.field protected mTranslation:Lcom/htc/sunny/Vector3F;

.field protected mViewNodeId:I

.field protected mViewTagObject:Ljava/lang/Object;

.field protected mVisible:Z

.field private mVisibleRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/htc/sunny/SView;->mParentView:Lcom/htc/sunny/SView;

    iput v1, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    iput-boolean v1, p0, Lcom/htc/sunny/SView;->mIsMaskNode:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny/SView;->mChildren:Ljava/util/List;

    iput-object v2, p0, Lcom/htc/sunny/SView;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/htc/sunny/SView;->mSurfaceView:Lcom/htc/sunny/SSurfaceView;

    iput-object v2, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    new-instance v0, Lcom/htc/sunny/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SView;->mTranslation:Lcom/htc/sunny/Vector3F;

    new-instance v0, Lcom/htc/sunny/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SView;->mRotation:Lcom/htc/sunny/Vector3F;

    new-instance v0, Lcom/htc/sunny/Vector3F;

    invoke-direct {v0, v3, v3, v3}, Lcom/htc/sunny/Vector3F;-><init>(FFF)V

    iput-object v0, p0, Lcom/htc/sunny/SView;->mScale:Lcom/htc/sunny/Vector3F;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SView;->mVisibleRect:Landroid/graphics/Rect;

    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/sunny/SView;->mAlpha:I

    iput-boolean v5, p0, Lcom/htc/sunny/SView;->mVisible:Z

    iput-boolean v5, p0, Lcom/htc/sunny/SView;->mRenderOrder:Z

    iput-boolean v1, p0, Lcom/htc/sunny/SView;->mTouchable:Z

    iput-boolean v1, p0, Lcom/htc/sunny/SView;->mHasLayoutAnimation:Z

    iput-object v2, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object v2, p0, Lcom/htc/sunny/SView;->mViewTagObject:Ljava/lang/Object;

    iput-object v2, p0, Lcom/htc/sunny/SView;->mClickListener:Lcom/htc/sunny/SView$OnClickListener;

    iput v1, p0, Lcom/htc/sunny/SView;->mTouchSensorSpriteId:I

    iput v1, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    iput v1, p0, Lcom/htc/sunny/SView;->mBackgroundRestTextureId:I

    iput v1, p0, Lcom/htc/sunny/SView;->mBackgroundPressTextureId:I

    const/16 v0, -0xc8

    iput v0, p0, Lcom/htc/sunny/SView;->mBackgroundRenderOrder:I

    iput-boolean v1, p0, Lcom/htc/sunny/SView;->mIsPressed:Z

    iput-boolean v1, p0, Lcom/htc/sunny/SView;->mIsSurfaceBinded:Z

    iput v1, p0, Lcom/htc/sunny/SView;->mOrder:I

    iput-object v2, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    iput-object v2, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    iput-object v2, p0, Lcom/htc/sunny/SView;->mBKRestDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/htc/sunny/SView;->mBKPressDrawable:Landroid/graphics/drawable/Drawable;

    iput v4, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    iput v4, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    iput v1, p0, Lcom/htc/sunny/SView;->mEnlargeSensorAreaL:I

    iput v1, p0, Lcom/htc/sunny/SView;->mEnlargeSensorAreaT:I

    iput v1, p0, Lcom/htc/sunny/SView;->mEnlargeSensorAreaR:I

    iput v1, p0, Lcom/htc/sunny/SView;->mEnlargeSensorAreaB:I

    iput-object p1, p0, Lcom/htc/sunny/SView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/htc/sunny/SView;->mSurfaceView:Lcom/htc/sunny/SSurfaceView;

    new-instance v0, Lcom/htc/sunny/SView$1;

    invoke-direct {v0, p0, p2}, Lcom/htc/sunny/SView$1;-><init>(Lcom/htc/sunny/SView;Lcom/htc/sunny/SSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/htc/sunny/SView;->mParentView:Lcom/htc/sunny/SView;

    iput v1, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    iput-boolean v1, p0, Lcom/htc/sunny/SView;->mIsMaskNode:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny/SView;->mChildren:Ljava/util/List;

    iput-object v2, p0, Lcom/htc/sunny/SView;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/htc/sunny/SView;->mSurfaceView:Lcom/htc/sunny/SSurfaceView;

    iput-object v2, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    new-instance v0, Lcom/htc/sunny/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SView;->mTranslation:Lcom/htc/sunny/Vector3F;

    new-instance v0, Lcom/htc/sunny/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SView;->mRotation:Lcom/htc/sunny/Vector3F;

    new-instance v0, Lcom/htc/sunny/Vector3F;

    invoke-direct {v0, v3, v3, v3}, Lcom/htc/sunny/Vector3F;-><init>(FFF)V

    iput-object v0, p0, Lcom/htc/sunny/SView;->mScale:Lcom/htc/sunny/Vector3F;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SView;->mVisibleRect:Landroid/graphics/Rect;

    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/sunny/SView;->mAlpha:I

    iput-boolean v5, p0, Lcom/htc/sunny/SView;->mVisible:Z

    iput-boolean v5, p0, Lcom/htc/sunny/SView;->mRenderOrder:Z

    iput-boolean v1, p0, Lcom/htc/sunny/SView;->mTouchable:Z

    iput-boolean v1, p0, Lcom/htc/sunny/SView;->mHasLayoutAnimation:Z

    iput-object v2, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object v2, p0, Lcom/htc/sunny/SView;->mViewTagObject:Ljava/lang/Object;

    iput-object v2, p0, Lcom/htc/sunny/SView;->mClickListener:Lcom/htc/sunny/SView$OnClickListener;

    iput v1, p0, Lcom/htc/sunny/SView;->mTouchSensorSpriteId:I

    iput v1, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    iput v1, p0, Lcom/htc/sunny/SView;->mBackgroundRestTextureId:I

    iput v1, p0, Lcom/htc/sunny/SView;->mBackgroundPressTextureId:I

    const/16 v0, -0xc8

    iput v0, p0, Lcom/htc/sunny/SView;->mBackgroundRenderOrder:I

    iput-boolean v1, p0, Lcom/htc/sunny/SView;->mIsPressed:Z

    iput-boolean v1, p0, Lcom/htc/sunny/SView;->mIsSurfaceBinded:Z

    iput v1, p0, Lcom/htc/sunny/SView;->mOrder:I

    iput-object v2, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    iput-object v2, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    iput-object v2, p0, Lcom/htc/sunny/SView;->mBKRestDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/htc/sunny/SView;->mBKPressDrawable:Landroid/graphics/drawable/Drawable;

    iput v4, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    iput v4, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    iput v1, p0, Lcom/htc/sunny/SView;->mEnlargeSensorAreaL:I

    iput v1, p0, Lcom/htc/sunny/SView;->mEnlargeSensorAreaT:I

    iput v1, p0, Lcom/htc/sunny/SView;->mEnlargeSensorAreaR:I

    iput v1, p0, Lcom/htc/sunny/SView;->mEnlargeSensorAreaB:I

    iput-object p1, p0, Lcom/htc/sunny/SView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/htc/sunny/SView;->mSurfaceView:Lcom/htc/sunny/SSurfaceView;

    iput-boolean p3, p0, Lcom/htc/sunny/SView;->mRenderOrder:Z

    new-instance v0, Lcom/htc/sunny/SView$2;

    invoke-direct {v0, p0, p2}, Lcom/htc/sunny/SView$2;-><init>(Lcom/htc/sunny/SView;Lcom/htc/sunny/SSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunny/SView;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/sunny/SView;->freeBackgroundDrawable()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/sunny/SView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/sunny/SView;)I
    .locals 1

    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/sunny/SView;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny/SView;->mChildren:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/sunny/SView;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny/SView;->mVisibleRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private freeBackgroundDrawable()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/sunny/SView;->mBKRestDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->recycle()V

    iput-object v1, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    :cond_0
    iput-object v1, p0, Lcom/htc/sunny/SView;->mBKRestDrawable:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SView;->mBKPressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->recycle()V

    iput-object v1, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    :cond_2
    iput-object v1, p0, Lcom/htc/sunny/SView;->mBKPressDrawable:Landroid/graphics/drawable/Drawable;

    :cond_3
    return-void
.end method


# virtual methods
.method public addView(Lcom/htc/sunny/SView;)V
    .locals 1

    new-instance v0, Lcom/htc/sunny/SView$18;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SView$18;-><init>(Lcom/htc/sunny/SView;Lcom/htc/sunny/SView;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addView(Lcom/htc/sunny/SView;Z)V
    .locals 1

    new-instance v0, Lcom/htc/sunny/SView$19;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny/SView$19;-><init>(Lcom/htc/sunny/SView;Lcom/htc/sunny/SView;Z)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bindSurface()V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/sunny/SView;->mIsSurfaceBinded:Z

    invoke-virtual {p0}, Lcom/htc/sunny/SView;->createResource()V

    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny/SView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/sunny/SView;->bindSurface()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    :cond_1
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public cancelAnimation()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {p0}, Lcom/htc/sunny/SView;->updateViewLayout()V

    invoke-virtual {p0}, Lcom/htc/sunny/SView;->invalidate3DView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/sunny/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method protected createResource()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/sunny/SView;->mParentView:Lcom/htc/sunny/SView;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/htc/sunny/SView;->mIsMaskNode:Z

    if-ne v5, v1, :cond_d

    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget-object v2, p0, Lcom/htc/sunny/SView;->mParentView:Lcom/htc/sunny/SView;

    invoke-virtual {v2}, Lcom/htc/sunny/SView;->getViewNodeId()I

    move-result v2

    iget-boolean v3, p0, Lcom/htc/sunny/SView;->mRenderOrder:Z

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->createMaskNode(IZ)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    :cond_2
    :goto_1
    iget v1, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    invoke-virtual {v1, v2, v5}, Lcom/htc/sunny/SunnyEngine;->createSprite(II)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    :cond_3
    iget v1, p0, Lcom/htc/sunny/SView;->mTouchSensorSpriteId:I

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    invoke-virtual {v1, v2, v5}, Lcom/htc/sunny/SunnyEngine;->createSprite(II)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny/SView;->mTouchSensorSpriteId:I

    :cond_4
    iget-boolean v1, p0, Lcom/htc/sunny/SView;->mIsSurfaceBinded:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny/SView;->mBKRestDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->recycle()V

    iput-object v6, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    :cond_5
    iget-object v1, p0, Lcom/htc/sunny/SView;->mBKRestDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    iget v3, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    invoke-static {v1, v2, v3}, Lcom/htc/sunny/SBitmap;->createBitmap(Landroid/graphics/drawable/Drawable;II)Lcom/htc/sunny/SBitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    :cond_6
    iget-object v1, p0, Lcom/htc/sunny/SView;->mBKPressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->recycle()V

    iput-object v6, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    :cond_7
    iget-object v1, p0, Lcom/htc/sunny/SView;->mBKPressDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    iget v3, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    invoke-static {v1, v2, v3}, Lcom/htc/sunny/SBitmap;->createBitmap(Landroid/graphics/drawable/Drawable;II)Lcom/htc/sunny/SBitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    :cond_8
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    invoke-virtual {v1, v2, v4}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SView;->mTouchSensorSpriteId:I

    invoke-virtual {v1, v2, v4}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    iget v1, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    iget v2, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/sunny/SView;->setBackgroundDisplaySize(II)V

    iget v1, p0, Lcom/htc/sunny/SView;->mBackgroundRenderOrder:I

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SView;->setBackgroundRenderOrder(I)V

    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    iget v3, p0, Lcom/htc/sunny/SView;->mBackgroundRenderOrder:I

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->setNodeOrder(II)V

    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SView;->mTouchSensorSpriteId:I

    iget v3, p0, Lcom/htc/sunny/SView;->mBackgroundRenderOrder:I

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->setNodeOrder(II)V

    iget-object v1, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/htc/sunny/SView;->mBackgroundRestTextureId:I

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v1}, Lcom/htc/sunny/SunnyEngine;->createTexture()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny/SView;->mBackgroundRestTextureId:I

    :cond_9
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    iget v3, p0, Lcom/htc/sunny/SView;->mBackgroundRestTextureId:I

    invoke-virtual {v1, v2, v4, v4, v3}, Lcom/htc/sunny/SunnyEngine;->setTexturetoSprite(IIII)Z

    iget-object v1, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SView;->mBackgroundRestTextureId:I

    iget-object v3, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v3}, Lcom/htc/sunny/SBitmap;->getBmpId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->setBitmaptoTexture(II)Z

    const/4 v0, 0x1

    :cond_a
    iget-object v1, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v1, :cond_c

    iget v1, p0, Lcom/htc/sunny/SView;->mBackgroundPressTextureId:I

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v1}, Lcom/htc/sunny/SunnyEngine;->createTexture()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny/SView;->mBackgroundPressTextureId:I

    :cond_b
    iget-object v1, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SView;->mBackgroundPressTextureId:I

    iget-object v3, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v3}, Lcom/htc/sunny/SBitmap;->getBmpId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->setBitmaptoTexture(II)Z

    :cond_c
    if-ne v5, v0, :cond_e

    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    invoke-virtual {v1, v2, v5}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    :goto_2
    iget-boolean v1, p0, Lcom/htc/sunny/SView;->mTouchable:Z

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SView;->setTouchable(Z)V

    invoke-virtual {p0, v4}, Lcom/htc/sunny/SView;->onFocusChanged(Z)V

    invoke-virtual {p0}, Lcom/htc/sunny/SView;->updateViewLayout()V

    goto/16 :goto_0

    :cond_d
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget-object v2, p0, Lcom/htc/sunny/SView;->mParentView:Lcom/htc/sunny/SView;

    invoke-virtual {v2}, Lcom/htc/sunny/SView;->getViewNodeId()I

    move-result v2

    iget-boolean v3, p0, Lcom/htc/sunny/SView;->mRenderOrder:Z

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->createNode(IZ)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    goto/16 :goto_1

    :cond_e
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    invoke-virtual {v1, v2, v4}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    goto :goto_2
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny/SView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/htc/sunny/SView;->dispatchKeyEvent(Landroid/view/KeyEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    :cond_1
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->getHitSprite(II)I

    move-result v2

    if-eqz v2, :cond_1

    iget v3, p0, Lcom/htc/sunny/SView;->mTouchSensorSpriteId:I

    if-ne v3, v2, :cond_1

    invoke-virtual {p0, v6}, Lcom/htc/sunny/SView;->onFocusChanged(Z)V

    :cond_1
    const/4 v3, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/htc/sunny/SView;->mIsPressed:Z

    if-ne v6, v3, :cond_3

    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->getHitSprite(II)I

    move-result v2

    if-eqz v2, :cond_2

    iget v3, p0, Lcom/htc/sunny/SView;->mTouchSensorSpriteId:I

    if-eq v3, v2, :cond_3

    :cond_2
    invoke-virtual {p0, v7}, Lcom/htc/sunny/SView;->onFocusChanged(Z)V

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v6, v3, :cond_4

    iget-boolean v3, p0, Lcom/htc/sunny/SView;->mIsPressed:Z

    if-ne v6, v3, :cond_4

    invoke-virtual {p0, v7}, Lcom/htc/sunny/SView;->onFocusChanged(Z)V

    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->getHitSprite(II)I

    move-result v2

    if-eqz v2, :cond_4

    iget v3, p0, Lcom/htc/sunny/SView;->mTouchSensorSpriteId:I

    if-ne v3, v2, :cond_4

    iget-object v3, p0, Lcom/htc/sunny/SView;->mClickListener:Lcom/htc/sunny/SView$OnClickListener;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/htc/sunny/SView;->mClickListener:Lcom/htc/sunny/SView$OnClickListener;

    invoke-interface {v3}, Lcom/htc/sunny/SView$OnClickListener;->onClick()V

    :cond_4
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v3, p0, Lcom/htc/sunny/SView;->mChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny/SView;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/htc/sunny/SView;->dispatchTouchEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    :cond_6
    iget-object v3, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0
.end method

.method public enableMaskNode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/sunny/SView;->mIsMaskNode:Z

    return-void
.end method

.method protected freeResource()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SView;->mBKRestDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->recycle()V

    iput-object v1, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SView;->mBKPressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->recycle()V

    iput-object v1, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mBackgroundRestTextureId:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SunnyEngine;->destroyTexture(I)V

    iput v2, p0, Lcom/htc/sunny/SView;->mBackgroundRestTextureId:I

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mBackgroundPressTextureId:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SunnyEngine;->destroyTexture(I)V

    iput v2, p0, Lcom/htc/sunny/SView;->mBackgroundPressTextureId:I

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SunnyEngine;->destroySprite(I)V

    iput v2, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mTouchSensorSpriteId:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SunnyEngine;->destroySprite(I)V

    iput v2, p0, Lcom/htc/sunny/SView;->mTouchSensorSpriteId:I

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/sunny/SView;->mIsMaskNode:Z

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SunnyEngine;->destroyMaskNode(I)V

    :goto_1
    iput v2, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SunnyEngine;->destroyNode(I)V

    goto :goto_1
.end method

.method protected final getPosition()Lcom/htc/sunny/Vector3F;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny/SView;->mTranslation:Lcom/htc/sunny/Vector3F;

    return-object v0
.end method

.method protected getRenderOrder()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny/SView;->mOrder:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny/SView;->mViewTagObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getViewHeight()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    return v0
.end method

.method public getViewNodeId()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    return v0
.end method

.method protected getViewScale()Lcom/htc/sunny/Vector3F;
    .locals 5

    new-instance v1, Lcom/htc/sunny/Vector3F;

    invoke-direct {v1}, Lcom/htc/sunny/Vector3F;-><init>()V

    iget-object v2, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v2}, Lcom/htc/sunny/SAnimationController;->isEnded()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v2}, Lcom/htc/sunny/SAnimationController;->isFillAfter()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v2}, Lcom/htc/sunny/SAnimationController;->isStarted()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunny/SAnimationController;->isScaleAnimation()Z

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v2}, Lcom/htc/sunny/SAnimationController;->getCurrentScale()Lcom/htc/sunny/Vector3F;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/htc/sunny/Vector3F;->setVector3F(Lcom/htc/sunny/Vector3F;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/htc/sunny/SView;->mScale:Lcom/htc/sunny/Vector3F;

    iget v2, v2, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v3, p0, Lcom/htc/sunny/SView;->mScale:Lcom/htc/sunny/Vector3F;

    iget v3, v3, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v4, p0, Lcom/htc/sunny/SView;->mScale:Lcom/htc/sunny/Vector3F;

    iget v4, v4, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/sunny/Vector3F;->setVector3F(FFF)V

    goto :goto_0
.end method

.method public getViewWidth()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    return v0
.end method

.method public hasChild()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny/SView;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLayoutAnimation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny/SView;->mHasLayoutAnimation:Z

    return v0
.end method

.method public invalidate2DView()V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSurfaceView:Lcom/htc/sunny/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunny/SSurfaceView;->postInvalidate()V

    return-void
.end method

.method public invalidate3DView()V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSurfaceView:Lcom/htc/sunny/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunny/SSurfaceView;->requestRender()V

    return-void
.end method

.method public onAttachedToWindow(Lcom/htc/sunny/SView;)V
    .locals 5

    iget-object v2, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny/SView;->mSurfaceView:Lcom/htc/sunny/SSurfaceView;

    invoke-virtual {v2}, Lcom/htc/sunny/SSurfaceView;->getSunnyEngine()Lcom/htc/sunny/SunnyEngine;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    :cond_0
    iget-object v2, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/htc/sunny/SView;->mParentView:Lcom/htc/sunny/SView;

    if-eqz p1, :cond_2

    iget-boolean v2, p1, Lcom/htc/sunny/SView;->mIsSurfaceBinded:Z

    iput-boolean v2, p0, Lcom/htc/sunny/SView;->mIsSurfaceBinded:Z

    :cond_2
    invoke-virtual {p0}, Lcom/htc/sunny/SView;->createResource()V

    :try_start_0
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v2, p0, Lcom/htc/sunny/SView;->mParentView:Lcom/htc/sunny/SView;

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    if-nez v2, :cond_3

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/htc/sunny/SView;->mIsMaskNode:Z

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget-object v3, p0, Lcom/htc/sunny/SView;->mParentView:Lcom/htc/sunny/SView;

    invoke-virtual {v3}, Lcom/htc/sunny/SView;->getViewNodeId()I

    move-result v3

    iget-boolean v4, p0, Lcom/htc/sunny/SView;->mRenderOrder:Z

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny/SunnyEngine;->createMaskNode(IZ)I

    move-result v2

    iput v2, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny/SView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p0}, Lcom/htc/sunny/SView;->onAttachedToWindow(Lcom/htc/sunny/SView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    :cond_5
    :try_start_1
    iget-object v2, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget-object v3, p0, Lcom/htc/sunny/SView;->mParentView:Lcom/htc/sunny/SView;

    invoke-virtual {v3}, Lcom/htc/sunny/SView;->getViewNodeId()I

    move-result v3

    iget-boolean v4, p0, Lcom/htc/sunny/SView;->mRenderOrder:Z

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny/SunnyEngine;->createNode(IZ)I

    move-result v2

    iput v2, p0, Lcom/htc/sunny/SView;->mViewNodeId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny/SView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/sunny/SView;->onDetachedFromWindow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    :cond_1
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {p0}, Lcom/htc/sunny/SView;->freeResource()V

    iput-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iput-object v3, p0, Lcom/htc/sunny/SView;->mParentView:Lcom/htc/sunny/SView;

    return-void
.end method

.method protected onFocusChanged(Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/htc/sunny/SView;->mIsPressed:Z

    iget-boolean v0, p0, Lcom/htc/sunny/SView;->mIsPressed:Z

    if-ne v4, v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    iget v2, p0, Lcom/htc/sunny/SView;->mBackgroundPressTextureId:I

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/htc/sunny/SunnyEngine;->setTexturetoSprite(IIII)Z

    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundPressTextureId:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    invoke-virtual {v0, v1, v4}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    :goto_1
    invoke-virtual {p0}, Lcom/htc/sunny/SView;->invalidate3DView()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    invoke-virtual {v0, v1, v3}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    iget v2, p0, Lcom/htc/sunny/SView;->mBackgroundRestTextureId:I

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/htc/sunny/SunnyEngine;->setTexturetoSprite(IIII)Z

    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundRestTextureId:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    invoke-virtual {v0, v1, v4}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    invoke-virtual {v0, v1, v3}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    goto :goto_1
.end method

.method public onLayout(ZIIII)V
    .locals 7

    iget-object v1, p0, Lcom/htc/sunny/SView;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v1, p0, Lcom/htc/sunny/SView;->mChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny/SView;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny/SView;->onLayout(ZIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    :cond_1
    iget-object v1, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public removeView(Lcom/htc/sunny/SView;)V
    .locals 1

    new-instance v0, Lcom/htc/sunny/SView$20;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SView$20;-><init>(Lcom/htc/sunny/SView;Lcom/htc/sunny/SView;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public renderAndUpdate2D()V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny/SView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/sunny/SView;->renderAndUpdate2D()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    :cond_1
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public renderAndUpdate3D()V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny/SView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/sunny/SView;->renderAndUpdate3D()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    :cond_1
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v2, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunny/SAnimationController;->isReady()Z

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v2}, Lcom/htc/sunny/SAnimationController;->start()V

    :cond_2
    iget-object v2, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v2}, Lcom/htc/sunny/SAnimationController;->isEnded()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v2}, Lcom/htc/sunny/SAnimationController;->animate()V

    invoke-virtual {p0}, Lcom/htc/sunny/SView;->updateViewLayout()V

    invoke-virtual {p0}, Lcom/htc/sunny/SView;->invalidate3DView()V

    :cond_3
    return-void
.end method

.method protected runOnRenderThread(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSurfaceView:Lcom/htc/sunny/SSurfaceView;

    invoke-virtual {v0, p1}, Lcom/htc/sunny/SSurfaceView;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    new-instance v0, Lcom/htc/sunny/SView$17;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SView$17;-><init>(Lcom/htc/sunny/SView;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAnimation(Lcom/htc/sunny/SAnimationController;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iput-object p1, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny/SAnimationController;->setReady()V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny/SView;->invalidate3DView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/sunny/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setBackgroundDisplaySize(II)V
    .locals 7

    const/4 v2, 0x0

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    iput p2, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    iget-object v0, p0, Lcom/htc/sunny/SView;->mBKRestDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny/SView;->mBKRestDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    :cond_2
    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny/SView;->mBKRestDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    :cond_3
    :goto_1
    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    if-eq v1, v0, :cond_4

    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    if-eq v1, v0, :cond_4

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    iget v3, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    iget v4, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/htc/sunny/SunnyEngine;->setupSpriteGeometry(IIIIII)V

    iget v0, p0, Lcom/htc/sunny/SView;->mEnlargeSensorAreaL:I

    iget v1, p0, Lcom/htc/sunny/SView;->mEnlargeSensorAreaT:I

    iget v2, p0, Lcom/htc/sunny/SView;->mEnlargeSensorAreaR:I

    iget v3, p0, Lcom/htc/sunny/SView;->mEnlargeSensorAreaB:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/sunny/SView;->setEnlargeSensorArea(IIII)V

    :cond_4
    invoke-virtual {p0}, Lcom/htc/sunny/SView;->invalidate3DView()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/htc/sunny/SView;->mBKPressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    if-ne v1, v0, :cond_6

    iget-object v0, p0, Lcom/htc/sunny/SView;->mBKPressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    :cond_6
    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny/SView;->mBKPressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    if-ne v1, v0, :cond_8

    iget-object v0, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    :cond_8
    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    if-ne v1, v0, :cond_a

    iget-object v0, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    :cond_a
    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    goto :goto_1
.end method

.method public setBackgroundImage(II)V
    .locals 1

    new-instance v0, Lcom/htc/sunny/SView$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny/SView$7;-><init>(Lcom/htc/sunny/SView;II)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setBackgroundImage(IIII)V
    .locals 6

    new-instance v0, Lcom/htc/sunny/SView$6;

    move-object v1, p0

    move v2, p2

    move v3, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunny/SView$6;-><init>(Lcom/htc/sunny/SView;IIII)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setBackgroundImage(Lcom/htc/sunny/SBitmap;Lcom/htc/sunny/SBitmap;)V
    .locals 1

    new-instance v0, Lcom/htc/sunny/SView$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny/SView$4;-><init>(Lcom/htc/sunny/SView;Lcom/htc/sunny/SBitmap;Lcom/htc/sunny/SBitmap;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setBackgroundImage(Lcom/htc/sunny/SBitmap;Lcom/htc/sunny/SBitmap;II)V
    .locals 6

    new-instance v0, Lcom/htc/sunny/SView$5;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunny/SView$5;-><init>(Lcom/htc/sunny/SView;Lcom/htc/sunny/SBitmap;Lcom/htc/sunny/SBitmap;II)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setBackgroundImageByTexture(IIII)V
    .locals 6

    new-instance v0, Lcom/htc/sunny/SView$3;

    move-object v1, p0

    move v2, p2

    move v3, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunny/SView$3;-><init>(Lcom/htc/sunny/SView;IIII)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setBackgroundImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    new-instance v0, Lcom/htc/sunny/SView$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny/SView$9;-><init>(Lcom/htc/sunny/SView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setBackgroundImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V
    .locals 6

    new-instance v0, Lcom/htc/sunny/SView$8;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunny/SView$8;-><init>(Lcom/htc/sunny/SView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setBackgroundPosition(III)V
    .locals 5

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    int-to-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/sunny/SunnyEngine;->setNodePosition(IFFF)V

    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mTouchSensorSpriteId:I

    int-to-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/sunny/SunnyEngine;->setNodePosition(IFFF)V

    invoke-virtual {p0}, Lcom/htc/sunny/SView;->invalidate3DView()V

    return-void
.end method

.method public setBackgroundRenderOrder(I)V
    .locals 1

    new-instance v0, Lcom/htc/sunny/SView$10;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SView$10;-><init>(Lcom/htc/sunny/SView;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setEnlargeSensorArea(IIII)V
    .locals 6

    new-instance v0, Lcom/htc/sunny/SView$11;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunny/SView$11;-><init>(Lcom/htc/sunny/SView;IIII)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setLayoutAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/sunny/SView;->mHasLayoutAnimation:Z

    return-void
.end method

.method public setOnClickListener(Lcom/htc/sunny/SView$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny/SView;->mClickListener:Lcom/htc/sunny/SView$OnClickListener;

    return-void
.end method

.method public setPosition(FFF)V
    .locals 1

    new-instance v0, Lcom/htc/sunny/SView$12;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/htc/sunny/SView$12;-><init>(Lcom/htc/sunny/SView;FFF)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setRenderOrder(I)V
    .locals 0

    iput p1, p0, Lcom/htc/sunny/SView;->mOrder:I

    return-void
.end method

.method public setRotation(FFF)V
    .locals 1

    new-instance v0, Lcom/htc/sunny/SView$14;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/htc/sunny/SView$14;-><init>(Lcom/htc/sunny/SView;FFF)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setScale(FFF)V
    .locals 1

    new-instance v0, Lcom/htc/sunny/SView$13;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/htc/sunny/SView$13;-><init>(Lcom/htc/sunny/SView;FFF)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny/SView;->mViewTagObject:Ljava/lang/Object;

    return-void
.end method

.method public setTouchable(Z)V
    .locals 1

    new-instance v0, Lcom/htc/sunny/SView$15;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SView$15;-><init>(Lcom/htc/sunny/SView;Z)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setViewNode(IZ)V
    .locals 0

    iput p1, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    iput-boolean p2, p0, Lcom/htc/sunny/SView;->mIsMaskNode:Z

    return-void
.end method

.method public setVisibility(Z)V
    .locals 1

    new-instance v0, Lcom/htc/sunny/SView$16;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SView$16;-><init>(Lcom/htc/sunny/SView;Z)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startAnimation(Lcom/htc/sunny/SAnimationController;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iput-object p1, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny/SAnimationController;->start()V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny/SView;->invalidate3DView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/sunny/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public unBindSurface()V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/sunny/SView;->mIsSurfaceBinded:Z

    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny/SView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/sunny/SView;->unBindSurface()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/sunny/SView;->freeResource()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method protected updateViewLayout()V
    .locals 9

    const/4 v8, 0x1

    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunny/SAnimationController;->isEnded()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunny/SAnimationController;->isFillAfter()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunny/SAnimationController;->isEnded()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    if-ne v8, v0, :cond_3

    iget-object v3, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunny/SAnimationController;->isPositionAnimation()Z

    move-result v3

    if-ne v8, v3, :cond_3

    iget-object v3, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunny/SAnimationController;->getCurrentPosition()Lcom/htc/sunny/Vector3F;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v4, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    iget v5, v2, Lcom/htc/sunny/Vector3F;->mX:F

    iget v6, v2, Lcom/htc/sunny/Vector3F;->mY:F

    iget v7, v2, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/htc/sunny/SunnyEngine;->setNodePosition(IFFF)V

    :goto_1
    if-ne v8, v0, :cond_4

    iget-object v3, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunny/SAnimationController;->isRotateAnimation()Z

    move-result v3

    if-ne v8, v3, :cond_4

    iget-object v3, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunny/SAnimationController;->getCurrentRotation()Lcom/htc/sunny/Vector3F;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v4, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    iget v5, v2, Lcom/htc/sunny/Vector3F;->mX:F

    iget v6, v2, Lcom/htc/sunny/Vector3F;->mY:F

    iget v7, v2, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/htc/sunny/SunnyEngine;->setNodeRotate(IFFF)V

    :goto_2
    if-ne v8, v0, :cond_5

    iget-object v3, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunny/SAnimationController;->isScaleAnimation()Z

    move-result v3

    if-ne v8, v3, :cond_5

    iget-object v3, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunny/SAnimationController;->getCurrentScale()Lcom/htc/sunny/Vector3F;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v4, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    iget v5, v2, Lcom/htc/sunny/Vector3F;->mX:F

    iget v6, v2, Lcom/htc/sunny/Vector3F;->mY:F

    iget v7, v2, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/htc/sunny/SunnyEngine;->setNodeScale(IFFF)V

    :goto_3
    if-ne v8, v0, :cond_6

    iget-object v3, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunny/SAnimationController;->isAlphaAnimation()Z

    move-result v3

    if-ne v8, v3, :cond_6

    iget-object v3, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunny/SAnimationController;->getCurrentAlpha()I

    move-result v1

    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v4, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    invoke-virtual {v3, v4, v1}, Lcom/htc/sunny/SunnyEngine;->setNodeAlpha(II)V

    :goto_4
    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v4, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    iget-boolean v5, p0, Lcom/htc/sunny/SView;->mVisible:Z

    invoke-virtual {v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->setNodeVisible(IZ)V

    goto/16 :goto_0

    :cond_3
    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v4, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    iget-object v5, p0, Lcom/htc/sunny/SView;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v5, v5, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v6, p0, Lcom/htc/sunny/SView;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v6, v6, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v7, p0, Lcom/htc/sunny/SView;->mTranslation:Lcom/htc/sunny/Vector3F;

    iget v7, v7, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/htc/sunny/SunnyEngine;->setNodePosition(IFFF)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v4, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    iget-object v5, p0, Lcom/htc/sunny/SView;->mRotation:Lcom/htc/sunny/Vector3F;

    iget v5, v5, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v6, p0, Lcom/htc/sunny/SView;->mRotation:Lcom/htc/sunny/Vector3F;

    iget v6, v6, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v7, p0, Lcom/htc/sunny/SView;->mRotation:Lcom/htc/sunny/Vector3F;

    iget v7, v7, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/htc/sunny/SunnyEngine;->setNodeRotate(IFFF)V

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v4, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    iget-object v5, p0, Lcom/htc/sunny/SView;->mScale:Lcom/htc/sunny/Vector3F;

    iget v5, v5, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v6, p0, Lcom/htc/sunny/SView;->mScale:Lcom/htc/sunny/Vector3F;

    iget v6, v6, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v7, p0, Lcom/htc/sunny/SView;->mScale:Lcom/htc/sunny/Vector3F;

    iget v7, v7, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/htc/sunny/SunnyEngine;->setNodeScale(IFFF)V

    goto :goto_3

    :cond_6
    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v4, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    iget v5, p0, Lcom/htc/sunny/SView;->mAlpha:I

    invoke-virtual {v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->setNodeAlpha(II)V

    goto :goto_4
.end method
