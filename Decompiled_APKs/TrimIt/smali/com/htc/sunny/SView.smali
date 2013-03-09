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
    .parameter "context"
    .parameter "surfaceView"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v2, p0, Lcom/htc/sunny/SView;->mParentView:Lcom/htc/sunny/SView;

    .line 40
    iput v1, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    .line 41
    iput-boolean v1, p0, Lcom/htc/sunny/SView;->mIsMaskNode:Z

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny/SView;->mChildren:Ljava/util/List;

    .line 44
    iput-object v2, p0, Lcom/htc/sunny/SView;->mContext:Landroid/content/Context;

    .line 45
    iput-object v2, p0, Lcom/htc/sunny/SView;->mSurfaceView:Lcom/htc/sunny/SSurfaceView;

    .line 46
    iput-object v2, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    .line 48
    new-instance v0, Lcom/htc/sunny/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SView;->mTranslation:Lcom/htc/sunny/Vector3F;

    .line 49
    new-instance v0, Lcom/htc/sunny/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SView;->mRotation:Lcom/htc/sunny/Vector3F;

    .line 50
    new-instance v0, Lcom/htc/sunny/Vector3F;

    invoke-direct {v0, v3, v3, v3}, Lcom/htc/sunny/Vector3F;-><init>(FFF)V

    iput-object v0, p0, Lcom/htc/sunny/SView;->mScale:Lcom/htc/sunny/Vector3F;

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SView;->mVisibleRect:Landroid/graphics/Rect;

    .line 52
    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/sunny/SView;->mAlpha:I

    .line 53
    iput-boolean v5, p0, Lcom/htc/sunny/SView;->mVisible:Z

    .line 54
    iput-boolean v5, p0, Lcom/htc/sunny/SView;->mRenderOrder:Z

    .line 55
    iput-boolean v1, p0, Lcom/htc/sunny/SView;->mTouchable:Z

    .line 56
    iput-boolean v1, p0, Lcom/htc/sunny/SView;->mHasLayoutAnimation:Z

    .line 58
    iput-object v2, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    .line 59
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 60
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 62
    iput-object v2, p0, Lcom/htc/sunny/SView;->mViewTagObject:Ljava/lang/Object;

    .line 64
    iput-object v2, p0, Lcom/htc/sunny/SView;->mClickListener:Lcom/htc/sunny/SView$OnClickListener;

    .line 68
    iput v1, p0, Lcom/htc/sunny/SView;->mTouchSensorSpriteId:I

    .line 69
    iput v1, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    .line 70
    iput v1, p0, Lcom/htc/sunny/SView;->mBackgroundRestTextureId:I

    .line 71
    iput v1, p0, Lcom/htc/sunny/SView;->mBackgroundPressTextureId:I

    .line 72
    const/16 v0, -0xc8

    iput v0, p0, Lcom/htc/sunny/SView;->mBackgroundRenderOrder:I

    .line 74
    iput-boolean v1, p0, Lcom/htc/sunny/SView;->mIsPressed:Z

    .line 75
    iput-boolean v1, p0, Lcom/htc/sunny/SView;->mIsSurfaceBinded:Z

    .line 91
    iput v1, p0, Lcom/htc/sunny/SView;->mOrder:I

    .line 114
    iput-object v2, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    iput-object v2, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    .line 116
    iput-object v2, p0, Lcom/htc/sunny/SView;->mBKRestDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/htc/sunny/SView;->mBKPressDrawable:Landroid/graphics/drawable/Drawable;

    .line 118
    iput v4, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    iput v4, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    .line 119
    iput v1, p0, Lcom/htc/sunny/SView;->mEnlargeSensorAreaL:I

    .line 120
    iput v1, p0, Lcom/htc/sunny/SView;->mEnlargeSensorAreaT:I

    .line 121
    iput v1, p0, Lcom/htc/sunny/SView;->mEnlargeSensorAreaR:I

    .line 122
    iput v1, p0, Lcom/htc/sunny/SView;->mEnlargeSensorAreaB:I

    .line 126
    iput-object p1, p0, Lcom/htc/sunny/SView;->mContext:Landroid/content/Context;

    .line 127
    iput-object p2, p0, Lcom/htc/sunny/SView;->mSurfaceView:Lcom/htc/sunny/SSurfaceView;

    .line 128
    new-instance v0, Lcom/htc/sunny/SView$1;

    invoke-direct {v0, p0, p2}, Lcom/htc/sunny/SView$1;-><init>(Lcom/htc/sunny/SView;Lcom/htc/sunny/SSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;Z)V
    .locals 6
    .parameter "context"
    .parameter "surfaceView"
    .parameter "bRenderOrder"

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v2, p0, Lcom/htc/sunny/SView;->mParentView:Lcom/htc/sunny/SView;

    .line 40
    iput v1, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    .line 41
    iput-boolean v1, p0, Lcom/htc/sunny/SView;->mIsMaskNode:Z

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny/SView;->mChildren:Ljava/util/List;

    .line 44
    iput-object v2, p0, Lcom/htc/sunny/SView;->mContext:Landroid/content/Context;

    .line 45
    iput-object v2, p0, Lcom/htc/sunny/SView;->mSurfaceView:Lcom/htc/sunny/SSurfaceView;

    .line 46
    iput-object v2, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    .line 48
    new-instance v0, Lcom/htc/sunny/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SView;->mTranslation:Lcom/htc/sunny/Vector3F;

    .line 49
    new-instance v0, Lcom/htc/sunny/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SView;->mRotation:Lcom/htc/sunny/Vector3F;

    .line 50
    new-instance v0, Lcom/htc/sunny/Vector3F;

    invoke-direct {v0, v3, v3, v3}, Lcom/htc/sunny/Vector3F;-><init>(FFF)V

    iput-object v0, p0, Lcom/htc/sunny/SView;->mScale:Lcom/htc/sunny/Vector3F;

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SView;->mVisibleRect:Landroid/graphics/Rect;

    .line 52
    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/sunny/SView;->mAlpha:I

    .line 53
    iput-boolean v5, p0, Lcom/htc/sunny/SView;->mVisible:Z

    .line 54
    iput-boolean v5, p0, Lcom/htc/sunny/SView;->mRenderOrder:Z

    .line 55
    iput-boolean v1, p0, Lcom/htc/sunny/SView;->mTouchable:Z

    .line 56
    iput-boolean v1, p0, Lcom/htc/sunny/SView;->mHasLayoutAnimation:Z

    .line 58
    iput-object v2, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    .line 59
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 60
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 62
    iput-object v2, p0, Lcom/htc/sunny/SView;->mViewTagObject:Ljava/lang/Object;

    .line 64
    iput-object v2, p0, Lcom/htc/sunny/SView;->mClickListener:Lcom/htc/sunny/SView$OnClickListener;

    .line 68
    iput v1, p0, Lcom/htc/sunny/SView;->mTouchSensorSpriteId:I

    .line 69
    iput v1, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    .line 70
    iput v1, p0, Lcom/htc/sunny/SView;->mBackgroundRestTextureId:I

    .line 71
    iput v1, p0, Lcom/htc/sunny/SView;->mBackgroundPressTextureId:I

    .line 72
    const/16 v0, -0xc8

    iput v0, p0, Lcom/htc/sunny/SView;->mBackgroundRenderOrder:I

    .line 74
    iput-boolean v1, p0, Lcom/htc/sunny/SView;->mIsPressed:Z

    .line 75
    iput-boolean v1, p0, Lcom/htc/sunny/SView;->mIsSurfaceBinded:Z

    .line 91
    iput v1, p0, Lcom/htc/sunny/SView;->mOrder:I

    .line 114
    iput-object v2, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    iput-object v2, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    .line 116
    iput-object v2, p0, Lcom/htc/sunny/SView;->mBKRestDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/htc/sunny/SView;->mBKPressDrawable:Landroid/graphics/drawable/Drawable;

    .line 118
    iput v4, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    iput v4, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    .line 119
    iput v1, p0, Lcom/htc/sunny/SView;->mEnlargeSensorAreaL:I

    .line 120
    iput v1, p0, Lcom/htc/sunny/SView;->mEnlargeSensorAreaT:I

    .line 121
    iput v1, p0, Lcom/htc/sunny/SView;->mEnlargeSensorAreaR:I

    .line 122
    iput v1, p0, Lcom/htc/sunny/SView;->mEnlargeSensorAreaB:I

    .line 136
    iput-object p1, p0, Lcom/htc/sunny/SView;->mContext:Landroid/content/Context;

    .line 137
    iput-object p2, p0, Lcom/htc/sunny/SView;->mSurfaceView:Lcom/htc/sunny/SSurfaceView;

    .line 138
    iput-boolean p3, p0, Lcom/htc/sunny/SView;->mRenderOrder:Z

    .line 139
    new-instance v0, Lcom/htc/sunny/SView$2;

    invoke-direct {v0, p0, p2}, Lcom/htc/sunny/SView$2;-><init>(Lcom/htc/sunny/SView;Lcom/htc/sunny/SSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunny/SView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/htc/sunny/SView;->freeBackgroundDrawable()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/sunny/SView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/sunny/SView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/sunny/SView;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/sunny/SView;->mChildren:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/sunny/SView;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/sunny/SView;->mVisibleRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private freeBackgroundDrawable()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 171
    iget-object v0, p0, Lcom/htc/sunny/SView;->mBKRestDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 174
    iput-object v1, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    .line 176
    :cond_0
    iput-object v1, p0, Lcom/htc/sunny/SView;->mBKRestDrawable:Landroid/graphics/drawable/Drawable;

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SView;->mBKPressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 179
    iget-object v0, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 181
    iput-object v1, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    .line 183
    :cond_2
    iput-object v1, p0, Lcom/htc/sunny/SView;->mBKPressDrawable:Landroid/graphics/drawable/Drawable;

    .line 185
    :cond_3
    return-void
.end method


# virtual methods
.method public addView(Lcom/htc/sunny/SView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1076
    new-instance v0, Lcom/htc/sunny/SView$18;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SView$18;-><init>(Lcom/htc/sunny/SView;Lcom/htc/sunny/SView;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1099
    return-void
.end method

.method public addView(Lcom/htc/sunny/SView;Z)V
    .locals 1
    .parameter "view"
    .parameter "bTopRender"

    .prologue
    .line 1110
    new-instance v0, Lcom/htc/sunny/SView$19;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny/SView$19;-><init>(Lcom/htc/sunny/SView;Lcom/htc/sunny/SView;Z)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1137
    return-void
.end method

.method public bindSurface()V
    .locals 4

    .prologue
    .line 610
    :try_start_0
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 611
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/sunny/SView;->mIsSurfaceBinded:Z

    .line 612
    invoke-virtual {p0}, Lcom/htc/sunny/SView;->createResource()V

    .line 613
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildren:Ljava/util/List;

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

    check-cast v0, Lcom/htc/sunny/SView;

    .line 614
    .local v0, child:Lcom/htc/sunny/SView;
    if-eqz v0, :cond_0

    .line 615
    invoke-virtual {v0}, Lcom/htc/sunny/SView;->bindSurface()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 618
    .end local v0           #child:Lcom/htc/sunny/SView;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 620
    return-void
.end method

.method public cancelAnimation()V
    .locals 2

    .prologue
    .line 1058
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1060
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    .line 1061
    invoke-virtual {p0}, Lcom/htc/sunny/SView;->updateViewLayout()V

    .line 1063
    invoke-virtual {p0}, Lcom/htc/sunny/SView;->invalidate3DView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1065
    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1067
    return-void

    .line 1065
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/sunny/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method protected createResource()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 493
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v1, :cond_1

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 495
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny/SView;->mParentView:Lcom/htc/sunny/SView;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    if-nez v1, :cond_2

    .line 496
    iget-boolean v1, p0, Lcom/htc/sunny/SView;->mIsMaskNode:Z

    if-ne v5, v1, :cond_d

    .line 497
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget-object v2, p0, Lcom/htc/sunny/SView;->mParentView:Lcom/htc/sunny/SView;

    invoke-virtual {v2}, Lcom/htc/sunny/SView;->getViewNodeId()I

    move-result v2

    iget-boolean v3, p0, Lcom/htc/sunny/SView;->mRenderOrder:Z

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->createMaskNode(IZ)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    .line 502
    :cond_2
    :goto_1
    iget v1, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    if-nez v1, :cond_3

    .line 503
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    invoke-virtual {v1, v2, v5}, Lcom/htc/sunny/SunnyEngine;->createSprite(II)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    .line 505
    :cond_3
    iget v1, p0, Lcom/htc/sunny/SView;->mTouchSensorSpriteId:I

    if-nez v1, :cond_4

    .line 506
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    invoke-virtual {v1, v2, v5}, Lcom/htc/sunny/SunnyEngine;->createSprite(II)I

    move-result v1

    iput v1, p0, Lcom/htc/sunny/SView;->mTouchSensorSpriteId:I

    .line 509
    :cond_4
    iget-boolean v1, p0, Lcom/htc/sunny/SView;->mIsSurfaceBinded:Z

    if-eqz v1, :cond_0

    .line 512
    iget-object v1, p0, Lcom/htc/sunny/SView;->mBKRestDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    .line 513
    iget-object v1, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v1, :cond_5

    .line 514
    iget-object v1, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 515
    iput-object v6, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    .line 517
    :cond_5
    iget-object v1, p0, Lcom/htc/sunny/SView;->mBKRestDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    iget v3, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    invoke-static {v1, v2, v3}, Lcom/htc/sunny/SBitmap;->createBitmap(Landroid/graphics/drawable/Drawable;II)Lcom/htc/sunny/SBitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    .line 519
    :cond_6
    iget-object v1, p0, Lcom/htc/sunny/SView;->mBKPressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_8

    .line 520
    iget-object v1, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v1, :cond_7

    .line 521
    iget-object v1, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 522
    iput-object v6, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    .line 524
    :cond_7
    iget-object v1, p0, Lcom/htc/sunny/SView;->mBKPressDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    iget v3, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    invoke-static {v1, v2, v3}, Lcom/htc/sunny/SBitmap;->createBitmap(Landroid/graphics/drawable/Drawable;II)Lcom/htc/sunny/SBitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    .line 528
    :cond_8
    const/4 v0, 0x0

    .line 530
    .local v0, bRenderable:Z
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    invoke-virtual {v1, v2, v4}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    .line 531
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SView;->mTouchSensorSpriteId:I

    invoke-virtual {v1, v2, v4}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    .line 533
    iget v1, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    iget v2, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    invoke-virtual {p0, v1, v2}, Lcom/htc/sunny/SView;->setBackgroundDisplaySize(II)V

    .line 534
    iget v1, p0, Lcom/htc/sunny/SView;->mBackgroundRenderOrder:I

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SView;->setBackgroundRenderOrder(I)V

    .line 536
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    iget v3, p0, Lcom/htc/sunny/SView;->mBackgroundRenderOrder:I

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->setNodeOrder(II)V

    .line 537
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SView;->mTouchSensorSpriteId:I

    iget v3, p0, Lcom/htc/sunny/SView;->mBackgroundRenderOrder:I

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->setNodeOrder(II)V

    .line 540
    iget-object v1, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v1, :cond_a

    .line 541
    iget v1, p0, Lcom/htc/sunny/SView;->mBackgroundRestTextureId:I

    if-nez v1, :cond_9

    .line 542
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v1}, Lcom/htc/sunny/SunnyEngine;->createTexture()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny/SView;->mBackgroundRestTextureId:I

    .line 544
    :cond_9
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    iget v3, p0, Lcom/htc/sunny/SView;->mBackgroundRestTextureId:I

    invoke-virtual {v1, v2, v4, v4, v3}, Lcom/htc/sunny/SunnyEngine;->setTexturetoSprite(IIII)Z

    .line 545
    iget-object v1, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_a

    .line 546
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SView;->mBackgroundRestTextureId:I

    iget-object v3, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v3}, Lcom/htc/sunny/SBitmap;->getBmpId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->setBitmaptoTexture(II)Z

    .line 547
    const/4 v0, 0x1

    .line 552
    :cond_a
    iget-object v1, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v1, :cond_c

    .line 553
    iget v1, p0, Lcom/htc/sunny/SView;->mBackgroundPressTextureId:I

    if-nez v1, :cond_b

    .line 554
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v1}, Lcom/htc/sunny/SunnyEngine;->createTexture()I

    move-result v1

    iput v1, p0, Lcom/htc/sunny/SView;->mBackgroundPressTextureId:I

    .line 557
    :cond_b
    iget-object v1, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v1}, Lcom/htc/sunny/SBitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_c

    .line 558
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SView;->mBackgroundPressTextureId:I

    iget-object v3, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v3}, Lcom/htc/sunny/SBitmap;->getBmpId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SunnyEngine;->setBitmaptoTexture(II)Z

    .line 562
    :cond_c
    if-ne v5, v0, :cond_e

    .line 563
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    invoke-virtual {v1, v2, v5}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    .line 568
    :goto_2
    iget-boolean v1, p0, Lcom/htc/sunny/SView;->mTouchable:Z

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SView;->setTouchable(Z)V

    .line 570
    invoke-virtual {p0, v4}, Lcom/htc/sunny/SView;->onFocusChanged(Z)V

    .line 572
    invoke-virtual {p0}, Lcom/htc/sunny/SView;->updateViewLayout()V

    goto/16 :goto_0

    .line 499
    .end local v0           #bRenderable:Z
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

    .line 565
    .restart local v0       #bRenderable:Z
    :cond_e
    iget-object v1, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v2, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    invoke-virtual {v1, v2, v4}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    goto :goto_2
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 638
    :try_start_0
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 639
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildren:Ljava/util/List;

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

    check-cast v0, Lcom/htc/sunny/SView;

    .line 640
    .local v0, child:Lcom/htc/sunny/SView;
    if-eqz v0, :cond_0

    .line 641
    invoke-virtual {v0, p1}, Lcom/htc/sunny/SView;->dispatchKeyEvent(Landroid/view/KeyEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 644
    .end local v0           #child:Lcom/htc/sunny/SView;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 646
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 672
    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v3, :cond_0

    .line 712
    :goto_0
    return-void

    .line 674
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 675
    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->getHitSprite(II)I

    move-result v2

    .line 676
    .local v2, nHitSpriteId:I
    if-eqz v2, :cond_1

    iget v3, p0, Lcom/htc/sunny/SView;->mTouchSensorSpriteId:I

    if-ne v3, v2, :cond_1

    .line 677
    invoke-virtual {p0, v6}, Lcom/htc/sunny/SView;->onFocusChanged(Z)V

    .line 681
    .end local v2           #nHitSpriteId:I
    :cond_1
    const/4 v3, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 682
    iget-boolean v3, p0, Lcom/htc/sunny/SView;->mIsPressed:Z

    if-ne v6, v3, :cond_3

    .line 683
    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->getHitSprite(II)I

    move-result v2

    .line 684
    .restart local v2       #nHitSpriteId:I
    if-eqz v2, :cond_2

    iget v3, p0, Lcom/htc/sunny/SView;->mTouchSensorSpriteId:I

    if-eq v3, v2, :cond_3

    .line 685
    :cond_2
    invoke-virtual {p0, v7}, Lcom/htc/sunny/SView;->onFocusChanged(Z)V

    .line 690
    .end local v2           #nHitSpriteId:I
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v6, v3, :cond_4

    .line 692
    iget-boolean v3, p0, Lcom/htc/sunny/SView;->mIsPressed:Z

    if-ne v6, v3, :cond_4

    .line 693
    invoke-virtual {p0, v7}, Lcom/htc/sunny/SView;->onFocusChanged(Z)V

    .line 694
    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->getHitSprite(II)I

    move-result v2

    .line 695
    .restart local v2       #nHitSpriteId:I
    if-eqz v2, :cond_4

    iget v3, p0, Lcom/htc/sunny/SView;->mTouchSensorSpriteId:I

    if-ne v3, v2, :cond_4

    .line 696
    iget-object v3, p0, Lcom/htc/sunny/SView;->mClickListener:Lcom/htc/sunny/SView$OnClickListener;

    if-eqz v3, :cond_4

    .line 697
    iget-object v3, p0, Lcom/htc/sunny/SView;->mClickListener:Lcom/htc/sunny/SView$OnClickListener;

    invoke-interface {v3}, Lcom/htc/sunny/SView$OnClickListener;->onClick()V

    .line 704
    .end local v2           #nHitSpriteId:I
    :cond_4
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 705
    iget-object v3, p0, Lcom/htc/sunny/SView;->mChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny/SView;

    .line 706
    .local v0, child:Lcom/htc/sunny/SView;
    if-eqz v0, :cond_5

    .line 707
    invoke-virtual {v0, p1}, Lcom/htc/sunny/SView;->dispatchTouchEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 710
    .end local v0           #child:Lcom/htc/sunny/SView;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_6
    iget-object v3, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0
.end method

.method public enableMaskNode(Z)V
    .locals 0
    .parameter "bEnabled"

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/htc/sunny/SView;->mIsMaskNode:Z

    .line 168
    return-void
.end method

.method protected freeResource()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 576
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_0

    .line 605
    :goto_0
    return-void

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SView;->mBKRestDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_1

    .line 579
    iget-object v0, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 580
    iput-object v1, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    .line 582
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SView;->mBKPressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_2

    .line 583
    iget-object v0, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 584
    iput-object v1, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    .line 587
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mBackgroundRestTextureId:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SunnyEngine;->destroyTexture(I)V

    .line 588
    iput v2, p0, Lcom/htc/sunny/SView;->mBackgroundRestTextureId:I

    .line 590
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mBackgroundPressTextureId:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SunnyEngine;->destroyTexture(I)V

    .line 591
    iput v2, p0, Lcom/htc/sunny/SView;->mBackgroundPressTextureId:I

    .line 593
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SunnyEngine;->destroySprite(I)V

    .line 594
    iput v2, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    .line 596
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mTouchSensorSpriteId:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SunnyEngine;->destroySprite(I)V

    .line 597
    iput v2, p0, Lcom/htc/sunny/SView;->mTouchSensorSpriteId:I

    .line 599
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/sunny/SView;->mIsMaskNode:Z

    if-ne v0, v1, :cond_3

    .line 600
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SunnyEngine;->destroyMaskNode(I)V

    .line 604
    :goto_1
    iput v2, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    goto :goto_0

    .line 602
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SunnyEngine;->destroyNode(I)V

    goto :goto_1
.end method

.method protected final getPosition()Lcom/htc/sunny/Vector3F;
    .locals 1

    .prologue
    .line 947
    iget-object v0, p0, Lcom/htc/sunny/SView;->mTranslation:Lcom/htc/sunny/Vector3F;

    return-object v0
.end method

.method protected getRenderOrder()I
    .locals 1

    .prologue
    .line 986
    iget v0, p0, Lcom/htc/sunny/SView;->mOrder:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/htc/sunny/SView;->mViewTagObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getViewHeight()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    return v0
.end method

.method public getViewNodeId()I
    .locals 1

    .prologue
    .line 867
    iget v0, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    return v0
.end method

.method protected getViewScale()Lcom/htc/sunny/Vector3F;
    .locals 5

    .prologue
    .line 739
    new-instance v1, Lcom/htc/sunny/Vector3F;

    invoke-direct {v1}, Lcom/htc/sunny/Vector3F;-><init>()V

    .line 740
    .local v1, vRes:Lcom/htc/sunny/Vector3F;
    iget-object v2, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v2, :cond_1

    .line 751
    :cond_0
    :goto_0
    return-object v1

    .line 742
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

    .line 743
    :cond_2
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunny/SAnimationController;->isScaleAnimation()Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 744
    iget-object v2, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v2}, Lcom/htc/sunny/SAnimationController;->getCurrentScale()Lcom/htc/sunny/Vector3F;

    move-result-object v0

    .line 745
    .local v0, v:Lcom/htc/sunny/Vector3F;
    invoke-virtual {v1, v0}, Lcom/htc/sunny/Vector3F;->setVector3F(Lcom/htc/sunny/Vector3F;)V

    goto :goto_0

    .line 748
    .end local v0           #v:Lcom/htc/sunny/Vector3F;
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

    .prologue
    .line 153
    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    return v0
.end method

.method public hasChild()Z
    .locals 1

    .prologue
    .line 489
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

    .prologue
    .line 484
    iget-boolean v0, p0, Lcom/htc/sunny/SView;->mHasLayoutAnimation:Z

    return v0
.end method

.method public invalidate2DView()V
    .locals 1

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSurfaceView:Lcom/htc/sunny/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunny/SSurfaceView;->postInvalidate()V

    .line 1165
    return-void
.end method

.method public invalidate3DView()V
    .locals 1

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSurfaceView:Lcom/htc/sunny/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunny/SSurfaceView;->requestRender()V

    .line 1161
    return-void
.end method

.method public onAttachedToWindow(Lcom/htc/sunny/SView;)V
    .locals 5
    .parameter "parentView"

    .prologue
    .line 819
    iget-object v2, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v2, :cond_0

    .line 820
    iget-object v2, p0, Lcom/htc/sunny/SView;->mSurfaceView:Lcom/htc/sunny/SSurfaceView;

    invoke-virtual {v2}, Lcom/htc/sunny/SSurfaceView;->getSunnyEngine()Lcom/htc/sunny/SunnyEngine;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    .line 822
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v2, :cond_1

    .line 848
    :goto_0
    return-void

    .line 824
    :cond_1
    iput-object p1, p0, Lcom/htc/sunny/SView;->mParentView:Lcom/htc/sunny/SView;

    .line 825
    if-eqz p1, :cond_2

    .line 826
    iget-boolean v2, p1, Lcom/htc/sunny/SView;->mIsSurfaceBinded:Z

    iput-boolean v2, p0, Lcom/htc/sunny/SView;->mIsSurfaceBinded:Z

    .line 829
    :cond_2
    invoke-virtual {p0}, Lcom/htc/sunny/SView;->createResource()V

    .line 832
    :try_start_0
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 833
    iget-object v2, p0, Lcom/htc/sunny/SView;->mParentView:Lcom/htc/sunny/SView;

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    if-nez v2, :cond_3

    .line 834
    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/htc/sunny/SView;->mIsMaskNode:Z

    if-ne v2, v3, :cond_5

    .line 835
    iget-object v2, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget-object v3, p0, Lcom/htc/sunny/SView;->mParentView:Lcom/htc/sunny/SView;

    invoke-virtual {v3}, Lcom/htc/sunny/SView;->getViewNodeId()I

    move-result v3

    iget-boolean v4, p0, Lcom/htc/sunny/SView;->mRenderOrder:Z

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny/SunnyEngine;->createMaskNode(IZ)I

    move-result v2

    iput v2, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    .line 840
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny/SView;

    .line 841
    .local v0, child:Lcom/htc/sunny/SView;
    if-eqz v0, :cond_4

    .line 842
    invoke-virtual {v0, p0}, Lcom/htc/sunny/SView;->onAttachedToWindow(Lcom/htc/sunny/SView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 845
    .end local v0           #child:Lcom/htc/sunny/SView;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 837
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

    .line 845
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_6
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 852
    :try_start_0
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 853
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildren:Ljava/util/List;

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

    check-cast v0, Lcom/htc/sunny/SView;

    .line 854
    .local v0, child:Lcom/htc/sunny/SView;
    if-eqz v0, :cond_0

    .line 855
    invoke-virtual {v0}, Lcom/htc/sunny/SView;->onDetachedFromWindow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 858
    .end local v0           #child:Lcom/htc/sunny/SView;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 861
    invoke-virtual {p0}, Lcom/htc/sunny/SView;->freeResource()V

    .line 862
    iput-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    .line 863
    iput-object v3, p0, Lcom/htc/sunny/SView;->mParentView:Lcom/htc/sunny/SView;

    .line 864
    return-void
.end method

.method protected onFocusChanged(Z)V
    .locals 5
    .parameter "bFocus"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 649
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_0

    .line 669
    :goto_0
    return-void

    .line 651
    :cond_0
    iput-boolean p1, p0, Lcom/htc/sunny/SView;->mIsPressed:Z

    .line 652
    iget-boolean v0, p0, Lcom/htc/sunny/SView;->mIsPressed:Z

    if-ne v4, v0, :cond_2

    .line 653
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    iget v2, p0, Lcom/htc/sunny/SView;->mBackgroundPressTextureId:I

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/htc/sunny/SunnyEngine;->setTexturetoSprite(IIII)Z

    .line 654
    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundPressTextureId:I

    if-eqz v0, :cond_1

    .line 655
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    invoke-virtual {v0, v1, v4}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    .line 668
    :goto_1
    invoke-virtual {p0}, Lcom/htc/sunny/SView;->invalidate3DView()V

    goto :goto_0

    .line 657
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    invoke-virtual {v0, v1, v3}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    goto :goto_1

    .line 660
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    iget v2, p0, Lcom/htc/sunny/SView;->mBackgroundRestTextureId:I

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/htc/sunny/SunnyEngine;->setTexturetoSprite(IIII)Z

    .line 661
    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundRestTextureId:I

    if-eqz v0, :cond_3

    .line 662
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    invoke-virtual {v0, v1, v4}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    goto :goto_1

    .line 664
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    invoke-virtual {v0, v1, v3}, Lcom/htc/sunny/SunnyEngine;->setSpriteRenderable(IZ)V

    goto :goto_1
.end method

.method public onLayout(ZIIII)V
    .locals 7
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 806
    iget-object v1, p0, Lcom/htc/sunny/SView;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 808
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 809
    iget-object v1, p0, Lcom/htc/sunny/SView;->mChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny/SView;

    .line 810
    .local v0, child:Lcom/htc/sunny/SView;
    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 811
    invoke-virtual/range {v0 .. v5}, Lcom/htc/sunny/SView;->onLayout(ZIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 814
    .end local v0           #child:Lcom/htc/sunny/SView;
    .end local v6           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 816
    return-void
.end method

.method public removeView(Lcom/htc/sunny/SView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1145
    new-instance v0, Lcom/htc/sunny/SView$20;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SView$20;-><init>(Lcom/htc/sunny/SView;Lcom/htc/sunny/SView;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1153
    return-void
.end method

.method public renderAndUpdate2D()V
    .locals 4

    .prologue
    .line 795
    :try_start_0
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 796
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildren:Ljava/util/List;

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

    check-cast v0, Lcom/htc/sunny/SView;

    .line 797
    .local v0, child:Lcom/htc/sunny/SView;
    if-eqz v0, :cond_0

    .line 798
    invoke-virtual {v0}, Lcom/htc/sunny/SView;->renderAndUpdate2D()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 801
    .end local v0           #child:Lcom/htc/sunny/SView;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 803
    return-void
.end method

.method public renderAndUpdate3D()V
    .locals 4

    .prologue
    .line 716
    :try_start_0
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 717
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildren:Ljava/util/List;

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

    check-cast v0, Lcom/htc/sunny/SView;

    .line 718
    .local v0, child:Lcom/htc/sunny/SView;
    if-eqz v0, :cond_0

    .line 719
    invoke-virtual {v0}, Lcom/htc/sunny/SView;->renderAndUpdate3D()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 722
    .end local v0           #child:Lcom/htc/sunny/SView;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 725
    iget-object v2, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    if-eqz v2, :cond_3

    .line 726
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunny/SAnimationController;->isReady()Z

    move-result v3

    if-ne v2, v3, :cond_2

    .line 727
    iget-object v2, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v2}, Lcom/htc/sunny/SAnimationController;->start()V

    .line 729
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v2}, Lcom/htc/sunny/SAnimationController;->isEnded()Z

    move-result v2

    if-nez v2, :cond_3

    .line 730
    iget-object v2, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v2}, Lcom/htc/sunny/SAnimationController;->animate()V

    .line 731
    invoke-virtual {p0}, Lcom/htc/sunny/SView;->updateViewLayout()V

    .line 732
    invoke-virtual {p0}, Lcom/htc/sunny/SView;->invalidate3DView()V

    .line 735
    :cond_3
    return-void
.end method

.method protected runOnRenderThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSurfaceView:Lcom/htc/sunny/SSurfaceView;

    invoke-virtual {v0, p1}, Lcom/htc/sunny/SSurfaceView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 1157
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 973
    new-instance v0, Lcom/htc/sunny/SView$17;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SView$17;-><init>(Lcom/htc/sunny/SView;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 983
    return-void
.end method

.method public setAnimation(Lcom/htc/sunny/SAnimationController;)V
    .locals 2
    .parameter "controller"

    .prologue
    .line 1041
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1043
    iput-object p1, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    .line 1044
    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny/SAnimationController;->setReady()V

    .line 1047
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny/SView;->invalidate3DView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1049
    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1051
    return-void

    .line 1049
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/sunny/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setBackgroundDisplaySize(II)V
    .locals 7
    .parameter "nWidth"
    .parameter "nHeight"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 406
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    iput p1, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    .line 409
    iput p2, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    .line 413
    iget-object v0, p0, Lcom/htc/sunny/SView;->mBKRestDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 415
    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    if-ne v1, v0, :cond_2

    .line 416
    iget-object v0, p0, Lcom/htc/sunny/SView;->mBKRestDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    .line 418
    :cond_2
    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    if-ne v1, v0, :cond_3

    .line 419
    iget-object v0, p0, Lcom/htc/sunny/SView;->mBKRestDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    .line 446
    :cond_3
    :goto_1
    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    if-eq v1, v0, :cond_4

    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    if-eq v1, v0, :cond_4

    .line 447
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    iget v3, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    iget v4, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/htc/sunny/SunnyEngine;->setupSpriteGeometry(IIIIII)V

    .line 449
    iget v0, p0, Lcom/htc/sunny/SView;->mEnlargeSensorAreaL:I

    iget v1, p0, Lcom/htc/sunny/SView;->mEnlargeSensorAreaT:I

    iget v2, p0, Lcom/htc/sunny/SView;->mEnlargeSensorAreaR:I

    iget v3, p0, Lcom/htc/sunny/SView;->mEnlargeSensorAreaB:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/sunny/SView;->setEnlargeSensorArea(IIII)V

    .line 452
    :cond_4
    invoke-virtual {p0}, Lcom/htc/sunny/SView;->invalidate3DView()V

    goto :goto_0

    .line 422
    :cond_5
    iget-object v0, p0, Lcom/htc/sunny/SView;->mBKPressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 424
    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    if-ne v1, v0, :cond_6

    .line 425
    iget-object v0, p0, Lcom/htc/sunny/SView;->mBKPressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    .line 427
    :cond_6
    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    if-ne v1, v0, :cond_3

    .line 428
    iget-object v0, p0, Lcom/htc/sunny/SView;->mBKPressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    goto :goto_1

    .line 430
    :cond_7
    iget-object v0, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_9

    .line 431
    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    if-ne v1, v0, :cond_8

    .line 432
    iget-object v0, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    .line 434
    :cond_8
    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    if-ne v1, v0, :cond_3

    .line 435
    iget-object v0, p0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    goto :goto_1

    .line 437
    :cond_9
    iget-object v0, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_3

    .line 438
    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    if-ne v1, v0, :cond_a

    .line 439
    iget-object v0, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SView;->mBackgroundWidth:I

    .line 441
    :cond_a
    iget v0, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    if-ne v1, v0, :cond_3

    .line 442
    iget-object v0, p0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny/SView;->mBackgroundHeight:I

    goto :goto_1
.end method

.method public setBackgroundImage(II)V
    .locals 1
    .parameter "nPressResId"
    .parameter "nRestResId"

    .prologue
    .line 300
    new-instance v0, Lcom/htc/sunny/SView$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny/SView$7;-><init>(Lcom/htc/sunny/SView;II)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 305
    return-void
.end method

.method public setBackgroundImage(IIII)V
    .locals 6
    .parameter "nPressResId"
    .parameter "nRestResId"
    .parameter "nWidth"
    .parameter "nHeight"

    .prologue
    .line 270
    new-instance v0, Lcom/htc/sunny/SView$6;

    move-object v1, p0

    move v2, p2

    move v3, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunny/SView$6;-><init>(Lcom/htc/sunny/SView;IIII)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 290
    return-void
.end method

.method public setBackgroundImage(Lcom/htc/sunny/SBitmap;Lcom/htc/sunny/SBitmap;)V
    .locals 1
    .parameter "sunnyPressBmp"
    .parameter "sunnyRestBmp"

    .prologue
    .line 229
    new-instance v0, Lcom/htc/sunny/SView$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny/SView$4;-><init>(Lcom/htc/sunny/SView;Lcom/htc/sunny/SBitmap;Lcom/htc/sunny/SBitmap;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 234
    return-void
.end method

.method public setBackgroundImage(Lcom/htc/sunny/SBitmap;Lcom/htc/sunny/SBitmap;II)V
    .locals 6
    .parameter "sunnyPressBmp"
    .parameter "sunnyRestBmp"
    .parameter "nWidth"
    .parameter "nHeight"

    .prologue
    .line 246
    new-instance v0, Lcom/htc/sunny/SView$5;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunny/SView$5;-><init>(Lcom/htc/sunny/SView;Lcom/htc/sunny/SBitmap;Lcom/htc/sunny/SBitmap;II)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 259
    return-void
.end method

.method protected setBackgroundImageByTexture(IIII)V
    .locals 6
    .parameter "nTexturPressId"
    .parameter "nTexturRestId"
    .parameter "nWidth"
    .parameter "nHeight"

    .prologue
    .line 188
    new-instance v0, Lcom/htc/sunny/SView$3;

    move-object v1, p0

    move v2, p2

    move v3, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunny/SView$3;-><init>(Lcom/htc/sunny/SView;IIII)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 219
    return-void
.end method

.method public setBackgroundImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawablePress"
    .parameter "drawableRest"

    .prologue
    .line 344
    new-instance v0, Lcom/htc/sunny/SView$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny/SView$9;-><init>(Lcom/htc/sunny/SView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 349
    return-void
.end method

.method public setBackgroundImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V
    .locals 6
    .parameter "drawablePress"
    .parameter "drawableRest"
    .parameter "nWidth"
    .parameter "nHeight"

    .prologue
    .line 317
    new-instance v0, Lcom/htc/sunny/SView$8;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunny/SView$8;-><init>(Lcom/htc/sunny/SView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 333
    return-void
.end method

.method public setBackgroundPosition(III)V
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    int-to-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/sunny/SunnyEngine;->setNodePosition(IFFF)V

    .line 371
    iget-object v0, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v1, p0, Lcom/htc/sunny/SView;->mTouchSensorSpriteId:I

    int-to-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/sunny/SunnyEngine;->setNodePosition(IFFF)V

    .line 372
    invoke-virtual {p0}, Lcom/htc/sunny/SView;->invalidate3DView()V

    .line 373
    return-void
.end method

.method public setBackgroundRenderOrder(I)V
    .locals 1
    .parameter "nOrder"

    .prologue
    .line 357
    new-instance v0, Lcom/htc/sunny/SView$10;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SView$10;-><init>(Lcom/htc/sunny/SView;I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 367
    return-void
.end method

.method public setEnlargeSensorArea(IIII)V
    .locals 6
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 385
    new-instance v0, Lcom/htc/sunny/SView$11;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/sunny/SView$11;-><init>(Lcom/htc/sunny/SView;IIII)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 402
    return-void
.end method

.method public setLayoutAnimation(Z)V
    .locals 0
    .parameter "bEnableAnimation"

    .prologue
    .line 477
    iput-boolean p1, p0, Lcom/htc/sunny/SView;->mHasLayoutAnimation:Z

    .line 478
    return-void
.end method

.method public setOnClickListener(Lcom/htc/sunny/SView$OnClickListener;)V
    .locals 0
    .parameter "listner"

    .prologue
    .line 463
    iput-object p1, p0, Lcom/htc/sunny/SView;->mClickListener:Lcom/htc/sunny/SView$OnClickListener;

    .line 464
    return-void
.end method

.method public setPosition(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 878
    new-instance v0, Lcom/htc/sunny/SView$12;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/htc/sunny/SView$12;-><init>(Lcom/htc/sunny/SView;FFF)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 886
    return-void
.end method

.method protected setRenderOrder(I)V
    .locals 0
    .parameter "nOrder"

    .prologue
    .line 990
    iput p1, p0, Lcom/htc/sunny/SView;->mOrder:I

    .line 991
    return-void
.end method

.method public setRotation(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 915
    new-instance v0, Lcom/htc/sunny/SView$14;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/htc/sunny/SView$14;-><init>(Lcom/htc/sunny/SView;FFF)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 924
    return-void
.end method

.method public setScale(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 896
    new-instance v0, Lcom/htc/sunny/SView$13;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/htc/sunny/SView$13;-><init>(Lcom/htc/sunny/SView;FFF)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 905
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 1002
    iput-object p1, p0, Lcom/htc/sunny/SView;->mViewTagObject:Ljava/lang/Object;

    .line 1003
    return-void
.end method

.method public setTouchable(Z)V
    .locals 1
    .parameter "bTouchable"

    .prologue
    .line 932
    new-instance v0, Lcom/htc/sunny/SView$15;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SView$15;-><init>(Lcom/htc/sunny/SView;Z)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 944
    return-void
.end method

.method protected setViewNode(IZ)V
    .locals 0
    .parameter "viewId"
    .parameter "bIsMaskNode"

    .prologue
    .line 472
    iput p1, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    .line 473
    iput-boolean p2, p0, Lcom/htc/sunny/SView;->mIsMaskNode:Z

    .line 474
    return-void
.end method

.method public setVisibility(Z)V
    .locals 1
    .parameter "bVisible"

    .prologue
    .line 956
    new-instance v0, Lcom/htc/sunny/SView$16;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SView$16;-><init>(Lcom/htc/sunny/SView;Z)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 965
    return-void
.end method

.method public startAnimation(Lcom/htc/sunny/SAnimationController;)V
    .locals 2
    .parameter "controller"

    .prologue
    .line 1022
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1024
    iput-object p1, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    .line 1025
    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    if-eqz v0, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v0}, Lcom/htc/sunny/SAnimationController;->start()V

    .line 1028
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny/SView;->invalidate3DView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1030
    iget-object v0, p0, Lcom/htc/sunny/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1032
    return-void

    .line 1030
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/sunny/SView;->mAnimationLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public unBindSurface()V
    .locals 4

    .prologue
    .line 624
    :try_start_0
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 625
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/sunny/SView;->mIsSurfaceBinded:Z

    .line 626
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildren:Ljava/util/List;

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

    check-cast v0, Lcom/htc/sunny/SView;

    .line 627
    .local v0, child:Lcom/htc/sunny/SView;
    if-eqz v0, :cond_0

    .line 628
    invoke-virtual {v0}, Lcom/htc/sunny/SView;->unBindSurface()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 632
    .end local v0           #child:Lcom/htc/sunny/SView;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 630
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/sunny/SView;->freeResource()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 632
    iget-object v2, p0, Lcom/htc/sunny/SView;->mChildrenLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 634
    return-void
.end method

.method protected updateViewLayout()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 755
    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v3, :cond_0

    .line 791
    :goto_0
    return-void

    .line 757
    :cond_0
    const/4 v0, 0x0

    .line 758
    .local v0, bAnimationLayout:Z
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

    .line 759
    :cond_1
    const/4 v0, 0x1

    .line 762
    :cond_2
    if-ne v8, v0, :cond_3

    iget-object v3, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunny/SAnimationController;->isPositionAnimation()Z

    move-result v3

    if-ne v8, v3, :cond_3

    .line 763
    iget-object v3, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunny/SAnimationController;->getCurrentPosition()Lcom/htc/sunny/Vector3F;

    move-result-object v2

    .line 764
    .local v2, v:Lcom/htc/sunny/Vector3F;
    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v4, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    iget v5, v2, Lcom/htc/sunny/Vector3F;->mX:F

    iget v6, v2, Lcom/htc/sunny/Vector3F;->mY:F

    iget v7, v2, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/htc/sunny/SunnyEngine;->setNodePosition(IFFF)V

    .line 769
    .end local v2           #v:Lcom/htc/sunny/Vector3F;
    :goto_1
    if-ne v8, v0, :cond_4

    iget-object v3, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunny/SAnimationController;->isRotateAnimation()Z

    move-result v3

    if-ne v8, v3, :cond_4

    .line 770
    iget-object v3, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunny/SAnimationController;->getCurrentRotation()Lcom/htc/sunny/Vector3F;

    move-result-object v2

    .line 771
    .restart local v2       #v:Lcom/htc/sunny/Vector3F;
    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v4, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    iget v5, v2, Lcom/htc/sunny/Vector3F;->mX:F

    iget v6, v2, Lcom/htc/sunny/Vector3F;->mY:F

    iget v7, v2, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/htc/sunny/SunnyEngine;->setNodeRotate(IFFF)V

    .line 776
    .end local v2           #v:Lcom/htc/sunny/Vector3F;
    :goto_2
    if-ne v8, v0, :cond_5

    iget-object v3, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunny/SAnimationController;->isScaleAnimation()Z

    move-result v3

    if-ne v8, v3, :cond_5

    .line 777
    iget-object v3, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunny/SAnimationController;->getCurrentScale()Lcom/htc/sunny/Vector3F;

    move-result-object v2

    .line 778
    .restart local v2       #v:Lcom/htc/sunny/Vector3F;
    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v4, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    iget v5, v2, Lcom/htc/sunny/Vector3F;->mX:F

    iget v6, v2, Lcom/htc/sunny/Vector3F;->mY:F

    iget v7, v2, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/htc/sunny/SunnyEngine;->setNodeScale(IFFF)V

    .line 783
    .end local v2           #v:Lcom/htc/sunny/Vector3F;
    :goto_3
    if-ne v8, v0, :cond_6

    iget-object v3, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunny/SAnimationController;->isAlphaAnimation()Z

    move-result v3

    if-ne v8, v3, :cond_6

    .line 784
    iget-object v3, p0, Lcom/htc/sunny/SView;->mAnimationController:Lcom/htc/sunny/SAnimationController;

    invoke-virtual {v3}, Lcom/htc/sunny/SAnimationController;->getCurrentAlpha()I

    move-result v1

    .line 785
    .local v1, nAlpha:I
    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v4, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    invoke-virtual {v3, v4, v1}, Lcom/htc/sunny/SunnyEngine;->setNodeAlpha(II)V

    .line 790
    .end local v1           #nAlpha:I
    :goto_4
    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v4, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    iget-boolean v5, p0, Lcom/htc/sunny/SView;->mVisible:Z

    invoke-virtual {v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->setNodeVisible(IZ)V

    goto/16 :goto_0

    .line 766
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

    .line 773
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

    .line 780
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

    .line 787
    :cond_6
    iget-object v3, p0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget v4, p0, Lcom/htc/sunny/SView;->mViewNodeId:I

    iget v5, p0, Lcom/htc/sunny/SView;->mAlpha:I

    invoke-virtual {v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->setNodeAlpha(II)V

    goto :goto_4
.end method
