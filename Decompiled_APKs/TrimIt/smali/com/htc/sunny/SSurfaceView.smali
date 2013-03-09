.class public Lcom/htc/sunny/SSurfaceView;
.super Landroid/view/SurfaceView;
.source "SSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny/SSurfaceView$RenderThread;,
        Lcom/htc/sunny/SSurfaceView$OnGenerateBackgroundListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "3DGlideMode"


# instance fields
.field protected ENABLE_DEBUG:Z

.field private mBackgroundBmp:Lcom/htc/sunny/SBitmap;

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBindSurfaceLock:Ljava/lang/Object;

.field private mCounter:J

.field private mCurrentTime:J

.field private mEnableManaulRelease:Z

.field protected mEnabledTranslucent:Z

.field private mFPSTextView:Lcom/htc/sunny/STextView;

.field private mFps:J

.field protected mGenerateBackgroundListener:Lcom/htc/sunny/SSurfaceView$OnGenerateBackgroundListener;

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field protected mInited:Z

.field protected mIsResumeDrawing:Z

.field private volatile mIsSurfaceBinded:Z

.field private mLastMouseMoveTime:J

.field private mLastTime:J

.field private mRecycleBK:Z

.field protected mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

.field private mRootView:Lcom/htc/sunny/SView;

.field protected mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

.field private mSurfaceChanged:Z

.field private mUnbindSurfaceLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const-wide/16 v6, -0x1

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 106
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    new-instance v0, Lcom/htc/sunny/SSurfaceView$RenderThread;

    const-string v1, "3D Render Thread"

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny/SSurfaceView$RenderThread;-><init>(Lcom/htc/sunny/SSurfaceView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    .line 65
    iput-object v3, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    .line 66
    iput-object v3, p0, Lcom/htc/sunny/SSurfaceView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 67
    iput-object v3, p0, Lcom/htc/sunny/SSurfaceView;->mGenerateBackgroundListener:Lcom/htc/sunny/SSurfaceView$OnGenerateBackgroundListener;

    .line 69
    iput-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->mRecycleBK:Z

    .line 70
    iput-object v3, p0, Lcom/htc/sunny/SSurfaceView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 71
    iput-object v3, p0, Lcom/htc/sunny/SSurfaceView;->mBackgroundBmp:Lcom/htc/sunny/SBitmap;

    .line 73
    iput-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->mInited:Z

    .line 76
    iput-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->mSurfaceChanged:Z

    .line 77
    iput-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->mIsSurfaceBinded:Z

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mBindSurfaceLock:Ljava/lang/Object;

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mUnbindSurfaceLock:Ljava/lang/Object;

    .line 82
    iput-object v3, p0, Lcom/htc/sunny/SSurfaceView;->mRootView:Lcom/htc/sunny/SView;

    .line 84
    iput-wide v4, p0, Lcom/htc/sunny/SSurfaceView;->mLastMouseMoveTime:J

    .line 88
    iput-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->ENABLE_DEBUG:Z

    .line 89
    iput-object v3, p0, Lcom/htc/sunny/SSurfaceView;->mFPSTextView:Lcom/htc/sunny/STextView;

    .line 90
    iput-wide v6, p0, Lcom/htc/sunny/SSurfaceView;->mCurrentTime:J

    iput-wide v6, p0, Lcom/htc/sunny/SSurfaceView;->mLastTime:J

    .line 91
    iput-wide v4, p0, Lcom/htc/sunny/SSurfaceView;->mCounter:J

    .line 92
    iput-wide v4, p0, Lcom/htc/sunny/SSurfaceView;->mFps:J

    .line 95
    iput-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->mEnableManaulRelease:Z

    .line 96
    iput-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->mEnabledTranslucent:Z

    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny/SSurfaceView;->mIsResumeDrawing:Z

    .line 107
    const-string v0, "3DGlideMode"

    const-string v1, "[SSurfaceView] SSurfaceView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {p0, p2}, Lcom/htc/sunny/SSurfaceView;->init(Landroid/util/AttributeSet;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const-wide/16 v6, -0x1

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 100
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    new-instance v0, Lcom/htc/sunny/SSurfaceView$RenderThread;

    const-string v1, "3D Render Thread"

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny/SSurfaceView$RenderThread;-><init>(Lcom/htc/sunny/SSurfaceView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    .line 65
    iput-object v3, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    .line 66
    iput-object v3, p0, Lcom/htc/sunny/SSurfaceView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 67
    iput-object v3, p0, Lcom/htc/sunny/SSurfaceView;->mGenerateBackgroundListener:Lcom/htc/sunny/SSurfaceView$OnGenerateBackgroundListener;

    .line 69
    iput-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->mRecycleBK:Z

    .line 70
    iput-object v3, p0, Lcom/htc/sunny/SSurfaceView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 71
    iput-object v3, p0, Lcom/htc/sunny/SSurfaceView;->mBackgroundBmp:Lcom/htc/sunny/SBitmap;

    .line 73
    iput-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->mInited:Z

    .line 76
    iput-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->mSurfaceChanged:Z

    .line 77
    iput-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->mIsSurfaceBinded:Z

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mBindSurfaceLock:Ljava/lang/Object;

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mUnbindSurfaceLock:Ljava/lang/Object;

    .line 82
    iput-object v3, p0, Lcom/htc/sunny/SSurfaceView;->mRootView:Lcom/htc/sunny/SView;

    .line 84
    iput-wide v4, p0, Lcom/htc/sunny/SSurfaceView;->mLastMouseMoveTime:J

    .line 88
    iput-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->ENABLE_DEBUG:Z

    .line 89
    iput-object v3, p0, Lcom/htc/sunny/SSurfaceView;->mFPSTextView:Lcom/htc/sunny/STextView;

    .line 90
    iput-wide v6, p0, Lcom/htc/sunny/SSurfaceView;->mCurrentTime:J

    iput-wide v6, p0, Lcom/htc/sunny/SSurfaceView;->mLastTime:J

    .line 91
    iput-wide v4, p0, Lcom/htc/sunny/SSurfaceView;->mCounter:J

    .line 92
    iput-wide v4, p0, Lcom/htc/sunny/SSurfaceView;->mFps:J

    .line 95
    iput-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->mEnableManaulRelease:Z

    .line 96
    iput-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->mEnabledTranslucent:Z

    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny/SSurfaceView;->mIsResumeDrawing:Z

    .line 101
    const-string v0, "3DGlideMode"

    const-string v1, "[SSurfaceView] SSurfaceView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0, p2}, Lcom/htc/sunny/SSurfaceView;->init(Landroid/util/AttributeSet;)V

    .line 103
    return-void
.end method

.method static synthetic access$002(Lcom/htc/sunny/SSurfaceView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/htc/sunny/SSurfaceView;->mRecycleBK:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/sunny/SSurfaceView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/htc/sunny/SSurfaceView;->recycleBackground()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/sunny/SSurfaceView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/htc/sunny/SSurfaceView;->generateBackground()V

    return-void
.end method

.method static synthetic access$302(Lcom/htc/sunny/SSurfaceView;Lcom/htc/sunny/SBitmap;)Lcom/htc/sunny/SBitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/htc/sunny/SSurfaceView;->mBackgroundBmp:Lcom/htc/sunny/SBitmap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/sunny/SSurfaceView;)Lcom/htc/sunny/SView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRootView:Lcom/htc/sunny/SView;

    return-object v0
.end method

.method private generateBackground()V
    .locals 4

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/htc/sunny/SSurfaceView;->getWidth()I

    move-result v1

    .line 169
    .local v1, w:I
    invoke-virtual {p0}, Lcom/htc/sunny/SSurfaceView;->getHeight()I

    move-result v0

    .line 171
    .local v0, h:I
    invoke-direct {p0}, Lcom/htc/sunny/SSurfaceView;->recycleBackground()V

    .line 172
    iget-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mGenerateBackgroundListener:Lcom/htc/sunny/SSurfaceView$OnGenerateBackgroundListener;

    if-eqz v2, :cond_1

    .line 173
    iget-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mGenerateBackgroundListener:Lcom/htc/sunny/SSurfaceView$OnGenerateBackgroundListener;

    invoke-interface {v2}, Lcom/htc/sunny/SSurfaceView$OnGenerateBackgroundListener;->onGenerateBackground()Lcom/htc/sunny/SBitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mBackgroundBmp:Lcom/htc/sunny/SBitmap;

    .line 180
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget-object v3, p0, Lcom/htc/sunny/SSurfaceView;->mBackgroundBmp:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v2, v3}, Lcom/htc/sunny/SunnyEngine;->setBackgroundImage(Lcom/htc/sunny/SBitmap;)V

    .line 181
    return-void

    .line 174
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mBackgroundBmp:Lcom/htc/sunny/SBitmap;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 175
    if-lez v1, :cond_0

    if-lez v0, :cond_0

    .line 176
    iget-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v1, v0}, Lcom/htc/sunny/SBitmap;->createBitmap(Landroid/graphics/drawable/Drawable;II)Lcom/htc/sunny/SBitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mBackgroundBmp:Lcom/htc/sunny/SBitmap;

    goto :goto_0
.end method

.method private recycleBackground()V
    .locals 2

    .prologue
    .line 159
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/sunny/SSurfaceView;->mRecycleBK:Z

    if-ne v0, v1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mBackgroundBmp:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mBackgroundBmp:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->recycle()V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mBackgroundBmp:Lcom/htc/sunny/SBitmap;

    .line 165
    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Lcom/htc/sunny/SView;)V
    .locals 1
    .parameter "childView"

    .prologue
    .line 492
    if-nez p1, :cond_0

    .line 499
    :goto_0
    return-void

    .line 494
    :cond_0
    new-instance v0, Lcom/htc/sunny/SSurfaceView$10;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SSurfaceView$10;-><init>(Lcom/htc/sunny/SSurfaceView;Lcom/htc/sunny/SView;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SSurfaceView;->runOnRenderThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected bindSurfaceR(Landroid/view/Surface;II)V
    .locals 3
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 350
    const-string v0, "3DGlideMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SSurfaceView] bindSurfaceR() + isValide:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " w:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_1

    .line 353
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView;->mBindSurfaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mBindSurfaceLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 355
    monitor-exit v1

    .line 373
    :goto_0
    return-void

    .line 355
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/sunny/SunnyEngine;->bindWindows(Landroid/view/Surface;II)Z

    .line 361
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRootView:Lcom/htc/sunny/SView;

    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v1}, Lcom/htc/sunny/SunnyEngine;->getRootNode()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny/SView;->setViewNode(IZ)V

    .line 362
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRootView:Lcom/htc/sunny/SView;

    invoke-virtual {v0}, Lcom/htc/sunny/SView;->bindSurface()V

    .line 364
    invoke-direct {p0}, Lcom/htc/sunny/SSurfaceView;->generateBackground()V

    .line 366
    invoke-virtual {p0}, Lcom/htc/sunny/SSurfaceView;->render3D()V

    .line 368
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny/SSurfaceView;->mIsSurfaceBinded:Z

    .line 369
    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView;->mBindSurfaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 370
    :try_start_1
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mBindSurfaceLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 371
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 372
    const-string v0, "3DGlideMode"

    const-string v1, "[SSurfaceView] bindSurfaceR() -"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 371
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public destroySunnyR()V
    .locals 2

    .prologue
    .line 401
    const-string v0, "3DGlideMode"

    const-string v1, "[SSurfaceView] destroySunnyR() +"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_0

    .line 407
    :goto_0
    return-void

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v0}, Lcom/htc/sunny/SunnyEngine;->deInit()V

    .line 405
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    .line 406
    const-string v0, "3DGlideMode"

    const-string v1, "[SSurfaceView] destroySunnyR() -"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 565
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 566
    new-instance v0, Lcom/htc/sunny/SSurfaceView$15;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SSurfaceView$15;-><init>(Lcom/htc/sunny/SSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SSurfaceView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 587
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 515
    new-instance v0, Lcom/htc/sunny/SSurfaceView$12;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SSurfaceView$12;-><init>(Lcom/htc/sunny/SSurfaceView;Landroid/view/KeyEvent;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SSurfaceView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 521
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 526
    iget-boolean v4, p0, Lcom/htc/sunny/SSurfaceView;->mIsSurfaceBinded:Z

    if-nez v4, :cond_1

    .line 550
    :cond_0
    :goto_0
    return v3

    .line 531
    :cond_1
    const/4 v4, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 532
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 533
    .local v1, time:J
    iget-wide v4, p0, Lcom/htc/sunny/SSurfaceView;->mLastMouseMoveTime:J

    sub-long v4, v1, v4

    const-wide/16 v6, 0x1e

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 536
    iput-wide v1, p0, Lcom/htc/sunny/SSurfaceView;->mLastMouseMoveTime:J

    .line 541
    .end local v1           #time:J
    :cond_2
    :goto_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 542
    .local v0, myEvent:Landroid/view/MotionEvent;
    new-instance v3, Lcom/htc/sunny/SSurfaceView$13;

    invoke-direct {v3, p0, v0}, Lcom/htc/sunny/SSurfaceView$13;-><init>(Lcom/htc/sunny/SSurfaceView;Landroid/view/MotionEvent;)V

    invoke-virtual {p0, v3}, Lcom/htc/sunny/SSurfaceView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 550
    const/4 v3, 0x1

    goto :goto_0

    .line 537
    .end local v0           #myEvent:Landroid/view/MotionEvent;
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    .line 538
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/sunny/SSurfaceView;->mLastMouseMoveTime:J

    goto :goto_1
.end method

.method public enableManualRelease(Z)V
    .locals 0
    .parameter "bEnable"

    .prologue
    .line 488
    iput-boolean p1, p0, Lcom/htc/sunny/SSurfaceView;->mEnableManaulRelease:Z

    .line 489
    return-void
.end method

.method public getSunnyEngine()Lcom/htc/sunny/SunnyEngine;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    return-object v0
.end method

.method protected init(Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "attrs"

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x1

    .line 118
    iget-boolean v0, p0, Lcom/htc/sunny/SSurfaceView;->mInited:Z

    if-nez v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/htc/sunny/SSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 121
    iget-boolean v0, p0, Lcom/htc/sunny/SSurfaceView;->mEnabledTranslucent:Z

    if-ne v2, v0, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/htc/sunny/SSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 127
    :goto_0
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    invoke-virtual {v0, v3}, Lcom/htc/sunny/SSurfaceView$RenderThread;->setPriority(I)V

    .line 129
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny/SSurfaceView$RenderThread;->start()V

    .line 137
    :goto_1
    new-instance v0, Lcom/htc/sunny/SSurfaceView$1;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SSurfaceView$1;-><init>(Lcom/htc/sunny/SSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SSurfaceView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 143
    iput-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->mInited:Z

    .line 145
    :cond_0
    return-void

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny/SSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    goto :goto_0

    .line 132
    :cond_2
    new-instance v0, Lcom/htc/sunny/SSurfaceView$RenderThread;

    const-string v1, "3D Render Thread"

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny/SSurfaceView$RenderThread;-><init>(Lcom/htc/sunny/SSurfaceView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    .line 133
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    invoke-virtual {v0, v3}, Lcom/htc/sunny/SSurfaceView$RenderThread;->setPriority(I)V

    .line 134
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny/SSurfaceView$RenderThread;->start()V

    goto :goto_1
.end method

.method protected initW()V
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lcom/htc/sunny/SunnyEngine;

    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->mEnabledTranslucent:Z

    invoke-direct {v0, v1, v2}, Lcom/htc/sunny/SunnyEngine;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v0}, Lcom/htc/sunny/SunnyEngine;->init()Z

    .line 154
    new-instance v0, Lcom/htc/sunny/SView;

    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/htc/sunny/SView;-><init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V

    iput-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRootView:Lcom/htc/sunny/SView;

    .line 155
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRootView:Lcom/htc/sunny/SView;

    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v1}, Lcom/htc/sunny/SunnyEngine;->getRootNode()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny/SView;->setViewNode(IZ)V

    .line 156
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 411
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 412
    const-string v0, "3DGlideMode"

    const-string v1, "[SSurfaceView] onAttachedToWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SSurfaceView;->init(Landroid/util/AttributeSet;)V

    .line 414
    new-instance v0, Lcom/htc/sunny/SSurfaceView$6;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SSurfaceView$6;-><init>(Lcom/htc/sunny/SSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SSurfaceView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 419
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 423
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 424
    const-string v0, "3DGlideMode"

    const-string v1, "[SSurfaceView] onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/sunny/SSurfaceView;->mEnableManaulRelease:Z

    if-ne v0, v1, :cond_0

    .line 427
    new-instance v0, Lcom/htc/sunny/SSurfaceView$7;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SSurfaceView$7;-><init>(Lcom/htc/sunny/SSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SSurfaceView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 440
    :goto_0
    return-void

    .line 433
    :cond_0
    new-instance v0, Lcom/htc/sunny/SSurfaceView$8;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SSurfaceView$8;-><init>(Lcom/htc/sunny/SSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SSurfaceView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 438
    invoke-virtual {p0}, Lcom/htc/sunny/SSurfaceView;->release()V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 555
    new-instance v0, Lcom/htc/sunny/SSurfaceView$14;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/htc/sunny/SSurfaceView$14;-><init>(Lcom/htc/sunny/SSurfaceView;ZIIII)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SSurfaceView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 560
    invoke-super/range {p0 .. p5}, Landroid/view/SurfaceView;->onLayout(ZIIII)V

    .line 561
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny/SSurfaceView;->mIsResumeDrawing:Z

    .line 294
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny/SSurfaceView;->mIsResumeDrawing:Z

    .line 289
    invoke-virtual {p0}, Lcom/htc/sunny/SSurfaceView;->requestRender()V

    .line 290
    return-void
.end method

.method public release()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 448
    iget-boolean v1, p0, Lcom/htc/sunny/SSurfaceView;->mInited:Z

    if-nez v1, :cond_0

    .line 480
    :goto_0
    return-void

    .line 450
    :cond_0
    const-string v1, "3DGlideMode"

    const-string v2, "[SSurfaceView] release() +"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    new-instance v1, Lcom/htc/sunny/SSurfaceView$9;

    invoke-direct {v1, p0}, Lcom/htc/sunny/SSurfaceView$9;-><init>(Lcom/htc/sunny/SSurfaceView;)V

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SSurfaceView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 463
    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    if-eqz v1, :cond_1

    .line 465
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    invoke-virtual {v1}, Lcom/htc/sunny/SSurfaceView$RenderThread;->stopWorker()V

    .line 466
    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SSurfaceView$RenderThread;->join(J)V

    .line 467
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny/SSurfaceView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    :cond_1
    :goto_1
    iput-object v4, p0, Lcom/htc/sunny/SSurfaceView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 476
    invoke-virtual {p0}, Lcom/htc/sunny/SSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 478
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny/SSurfaceView;->mInited:Z

    .line 479
    const-string v1, "3DGlideMode"

    const-string v2, "[SSurfaceView] release() -"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 468
    :catch_0
    move-exception v0

    .line 469
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public removeView(Lcom/htc/sunny/SView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 502
    new-instance v0, Lcom/htc/sunny/SSurfaceView$11;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SSurfaceView$11;-><init>(Lcom/htc/sunny/SSurfaceView;Lcom/htc/sunny/SView;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SSurfaceView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 507
    return-void
.end method

.method public render3D()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    const-wide/16 v6, 0x0

    .line 304
    iget-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v2, :cond_1

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    iget-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->mIsResumeDrawing:Z

    if-eqz v2, :cond_2

    .line 308
    iget-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v2}, Lcom/htc/sunny/SunnyEngine;->renderWindow()V

    .line 312
    :cond_2
    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/htc/sunny/SSurfaceView;->ENABLE_DEBUG:Z

    if-ne v2, v3, :cond_0

    .line 313
    iget-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mFPSTextView:Lcom/htc/sunny/STextView;

    if-nez v2, :cond_3

    .line 314
    new-instance v2, Lcom/htc/sunny/STextView;

    iget-object v3, p0, Lcom/htc/sunny/SSurfaceView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/htc/sunny/STextView;-><init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V

    iput-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mFPSTextView:Lcom/htc/sunny/STextView;

    .line 315
    iget-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mFPSTextView:Lcom/htc/sunny/STextView;

    const/16 v3, -0x100

    invoke-virtual {v2, v3}, Lcom/htc/sunny/STextView;->setTextColor(I)V

    .line 316
    iget-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mFPSTextView:Lcom/htc/sunny/STextView;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lcom/htc/sunny/STextView;->setTextSize(I)V

    .line 317
    iget-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mFPSTextView:Lcom/htc/sunny/STextView;

    const/16 v3, 0x64

    const/16 v4, 0x32

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny/STextView;->setDisplaySize(II)V

    .line 318
    iget-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mFPSTextView:Lcom/htc/sunny/STextView;

    invoke-virtual {p0, v2}, Lcom/htc/sunny/SSurfaceView;->addView(Lcom/htc/sunny/SView;)V

    .line 320
    :cond_3
    iget-wide v2, p0, Lcom/htc/sunny/SSurfaceView;->mLastTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 321
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/sunny/SSurfaceView;->mLastTime:J

    .line 322
    iput-wide v6, p0, Lcom/htc/sunny/SSurfaceView;->mCounter:J

    .line 325
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/sunny/SSurfaceView;->mCurrentTime:J

    .line 326
    iget-wide v2, p0, Lcom/htc/sunny/SSurfaceView;->mCurrentTime:J

    iget-wide v4, p0, Lcom/htc/sunny/SSurfaceView;->mLastTime:J

    sub-long v0, v2, v4

    .line 328
    .local v0, delay:J
    cmp-long v2, v0, v8

    if-lez v2, :cond_5

    .line 330
    iget-wide v2, p0, Lcom/htc/sunny/SSurfaceView;->mCurrentTime:J

    iput-wide v2, p0, Lcom/htc/sunny/SSurfaceView;->mLastTime:J

    .line 331
    iput-wide v6, p0, Lcom/htc/sunny/SSurfaceView;->mCounter:J

    goto :goto_0

    .line 333
    :cond_5
    iget-wide v2, p0, Lcom/htc/sunny/SSurfaceView;->mCounter:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/htc/sunny/SSurfaceView;->mCounter:J

    .line 335
    iget-wide v2, p0, Lcom/htc/sunny/SSurfaceView;->mCounter:J

    const-wide/16 v4, 0x14

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    cmp-long v2, v6, v0

    if-eqz v2, :cond_0

    .line 336
    iget-wide v2, p0, Lcom/htc/sunny/SSurfaceView;->mCounter:J

    mul-long/2addr v2, v8

    div-long/2addr v2, v0

    long-to-int v2, v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/htc/sunny/SSurfaceView;->mFps:J

    .line 337
    iput-wide v6, p0, Lcom/htc/sunny/SSurfaceView;->mCounter:J

    .line 338
    iget-wide v2, p0, Lcom/htc/sunny/SSurfaceView;->mCurrentTime:J

    iput-wide v2, p0, Lcom/htc/sunny/SSurfaceView;->mLastTime:J

    .line 340
    const-string v2, "Test"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fps: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/htc/sunny/SSurfaceView;->mFps:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mFPSTextView:Lcom/htc/sunny/STextView;

    invoke-virtual {p0}, Lcom/htc/sunny/SSurfaceView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x64

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/htc/sunny/SSurfaceView;->getHeight()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x32

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/sunny/STextView;->setPosition(FFF)V

    .line 343
    iget-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mFPSTextView:Lcom/htc/sunny/STextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FPS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/htc/sunny/SSurfaceView;->mFps:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/sunny/STextView;->setTextWithoutRender(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    if-nez v0, :cond_0

    .line 301
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny/SSurfaceView$RenderThread;->render()V

    goto :goto_0
.end method

.method public runOnRenderThread(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "runnable"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    if-nez v0, :cond_0

    .line 279
    :goto_0
    return-void

    .line 273
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    if-ne v0, v1, :cond_1

    .line 274
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    invoke-virtual {v0, p1}, Lcom/htc/sunny/SSurfaceView$RenderThread;->addOperator(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setBackground(Lcom/htc/sunny/SBitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 210
    new-instance v0, Lcom/htc/sunny/SSurfaceView$3;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SSurfaceView$3;-><init>(Lcom/htc/sunny/SSurfaceView;Lcom/htc/sunny/SBitmap;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SSurfaceView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 218
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 193
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SSurfaceView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 194
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 197
    iput-object p1, p0, Lcom/htc/sunny/SSurfaceView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 199
    new-instance v0, Lcom/htc/sunny/SSurfaceView$2;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SSurfaceView$2;-><init>(Lcom/htc/sunny/SSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SSurfaceView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 206
    return-void
.end method

.method public setOnGenerateBackgroundListener(Lcom/htc/sunny/SSurfaceView$OnGenerateBackgroundListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/htc/sunny/SSurfaceView;->mGenerateBackgroundListener:Lcom/htc/sunny/SSurfaceView$OnGenerateBackgroundListener;

    .line 190
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 5
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 221
    const-string v1, "3DGlideMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SSurfaceView] surfaceChanged() w:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " h:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/sunny/SSurfaceView;->mSurfaceChanged:Z

    .line 223
    new-instance v1, Lcom/htc/sunny/SSurfaceView$4;

    invoke-direct {v1, p0, p1, p3, p4}, Lcom/htc/sunny/SSurfaceView$4;-><init>(Lcom/htc/sunny/SSurfaceView;Landroid/view/SurfaceHolder;II)V

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SSurfaceView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 232
    iget-boolean v1, p0, Lcom/htc/sunny/SSurfaceView;->mIsSurfaceBinded:Z

    if-nez v1, :cond_0

    .line 233
    iget-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mBindSurfaceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 235
    :try_start_0
    const-string v1, "3DGlideMode"

    const-string v3, "[SSurfaceView] surfaceChanged() wait +"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView;->mBindSurfaceLock:Ljava/lang/Object;

    const-wide/16 v3, 0xfa0

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 237
    const-string v1, "3DGlideMode"

    const-string v3, "[SSurfaceView] surfaceChanged() wait -"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 243
    :cond_0
    return-void

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 241
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 246
    const-string v0, "3DGlideMode"

    const-string v1, "[SSurfaceView] surfaceCreated()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 5
    .parameter "holder"

    .prologue
    .line 250
    const-string v1, "3DGlideMode"

    const-string v2, "[SSurfaceView] surfaceDestroyed()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    new-instance v1, Lcom/htc/sunny/SSurfaceView$5;

    invoke-direct {v1, p0}, Lcom/htc/sunny/SSurfaceView$5;-><init>(Lcom/htc/sunny/SSurfaceView;)V

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SSurfaceView;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 257
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->mIsSurfaceBinded:Z

    if-ne v1, v2, :cond_0

    .line 258
    iget-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mUnbindSurfaceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 260
    :try_start_0
    const-string v1, "3DGlideMode"

    const-string v3, "[SSurfaceView] surfaceDestroyed() wait +"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView;->mUnbindSurfaceLock:Ljava/lang/Object;

    const-wide/16 v3, 0xfa0

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 262
    const-string v1, "3DGlideMode"

    const-string v3, "[SSurfaceView] surfaceDestroyed() wait -"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 268
    :cond_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 266
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected unBindSurfaceR()V
    .locals 2

    .prologue
    .line 376
    const-string v0, "3DGlideMode"

    const-string v1, "[SSurfaceView] unBindSurfaceR() +"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_0

    .line 378
    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView;->mUnbindSurfaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 379
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mUnbindSurfaceLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 380
    monitor-exit v1

    .line 398
    :goto_0
    return-void

    .line 380
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRootView:Lcom/htc/sunny/SView;

    invoke-virtual {v0}, Lcom/htc/sunny/SView;->unBindSurface()V

    .line 388
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v0}, Lcom/htc/sunny/SunnyEngine;->logStatus()V

    .line 389
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v0}, Lcom/htc/sunny/SunnyEngine;->unbindWindow()V

    .line 391
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny/SSurfaceView;->mIsSurfaceBinded:Z

    .line 393
    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView;->mUnbindSurfaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 394
    :try_start_1
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mUnbindSurfaceLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 395
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 397
    const-string v0, "3DGlideMode"

    const-string v1, "[SSurfaceView] unBindSurfaceR() -"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 395
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
