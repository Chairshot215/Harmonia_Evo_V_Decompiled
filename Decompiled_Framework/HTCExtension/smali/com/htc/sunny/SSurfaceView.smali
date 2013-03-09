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

    const-wide/16 v6, -0x1

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/htc/sunny/SSurfaceView$RenderThread;

    const-string v1, "3D Render Thread"

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny/SSurfaceView$RenderThread;-><init>(Lcom/htc/sunny/SSurfaceView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    iput-object v3, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iput-object v3, p0, Lcom/htc/sunny/SSurfaceView;->mGestureDetector:Landroid/view/GestureDetector;

    iput-object v3, p0, Lcom/htc/sunny/SSurfaceView;->mGenerateBackgroundListener:Lcom/htc/sunny/SSurfaceView$OnGenerateBackgroundListener;

    iput-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->mRecycleBK:Z

    iput-object v3, p0, Lcom/htc/sunny/SSurfaceView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/htc/sunny/SSurfaceView;->mBackgroundBmp:Lcom/htc/sunny/SBitmap;

    iput-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->mInited:Z

    iput-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->mSurfaceChanged:Z

    iput-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->mIsSurfaceBinded:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mBindSurfaceLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mUnbindSurfaceLock:Ljava/lang/Object;

    iput-object v3, p0, Lcom/htc/sunny/SSurfaceView;->mRootView:Lcom/htc/sunny/SView;

    iput-wide v4, p0, Lcom/htc/sunny/SSurfaceView;->mLastMouseMoveTime:J

    iput-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->ENABLE_DEBUG:Z

    iput-object v3, p0, Lcom/htc/sunny/SSurfaceView;->mFPSTextView:Lcom/htc/sunny/STextView;

    iput-wide v6, p0, Lcom/htc/sunny/SSurfaceView;->mCurrentTime:J

    iput-wide v6, p0, Lcom/htc/sunny/SSurfaceView;->mLastTime:J

    iput-wide v4, p0, Lcom/htc/sunny/SSurfaceView;->mCounter:J

    iput-wide v4, p0, Lcom/htc/sunny/SSurfaceView;->mFps:J

    iput-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->mEnableManaulRelease:Z

    iput-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->mEnabledTranslucent:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny/SSurfaceView;->mIsResumeDrawing:Z

    const-string v0, "3DGlideMode"

    const-string v1, "[SSurfaceView] SSurfaceView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2}, Lcom/htc/sunny/SSurfaceView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    const-wide/16 v6, -0x1

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/htc/sunny/SSurfaceView$RenderThread;

    const-string v1, "3D Render Thread"

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny/SSurfaceView$RenderThread;-><init>(Lcom/htc/sunny/SSurfaceView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    iput-object v3, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iput-object v3, p0, Lcom/htc/sunny/SSurfaceView;->mGestureDetector:Landroid/view/GestureDetector;

    iput-object v3, p0, Lcom/htc/sunny/SSurfaceView;->mGenerateBackgroundListener:Lcom/htc/sunny/SSurfaceView$OnGenerateBackgroundListener;

    iput-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->mRecycleBK:Z

    iput-object v3, p0, Lcom/htc/sunny/SSurfaceView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/htc/sunny/SSurfaceView;->mBackgroundBmp:Lcom/htc/sunny/SBitmap;

    iput-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->mInited:Z

    iput-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->mSurfaceChanged:Z

    iput-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->mIsSurfaceBinded:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mBindSurfaceLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mUnbindSurfaceLock:Ljava/lang/Object;

    iput-object v3, p0, Lcom/htc/sunny/SSurfaceView;->mRootView:Lcom/htc/sunny/SView;

    iput-wide v4, p0, Lcom/htc/sunny/SSurfaceView;->mLastMouseMoveTime:J

    iput-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->ENABLE_DEBUG:Z

    iput-object v3, p0, Lcom/htc/sunny/SSurfaceView;->mFPSTextView:Lcom/htc/sunny/STextView;

    iput-wide v6, p0, Lcom/htc/sunny/SSurfaceView;->mCurrentTime:J

    iput-wide v6, p0, Lcom/htc/sunny/SSurfaceView;->mLastTime:J

    iput-wide v4, p0, Lcom/htc/sunny/SSurfaceView;->mCounter:J

    iput-wide v4, p0, Lcom/htc/sunny/SSurfaceView;->mFps:J

    iput-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->mEnableManaulRelease:Z

    iput-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->mEnabledTranslucent:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny/SSurfaceView;->mIsResumeDrawing:Z

    const-string v0, "3DGlideMode"

    const-string v1, "[SSurfaceView] SSurfaceView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2}, Lcom/htc/sunny/SSurfaceView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$002(Lcom/htc/sunny/SSurfaceView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/sunny/SSurfaceView;->mRecycleBK:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/sunny/SSurfaceView;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/sunny/SSurfaceView;->recycleBackground()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/sunny/SSurfaceView;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/sunny/SSurfaceView;->generateBackground()V

    return-void
.end method

.method static synthetic access$302(Lcom/htc/sunny/SSurfaceView;Lcom/htc/sunny/SBitmap;)Lcom/htc/sunny/SBitmap;
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny/SSurfaceView;->mBackgroundBmp:Lcom/htc/sunny/SBitmap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/sunny/SSurfaceView;)Lcom/htc/sunny/SView;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRootView:Lcom/htc/sunny/SView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/sunny/SSurfaceView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny/SSurfaceView;->mIsSurfaceBinded:Z

    return v0
.end method

.method private generateBackground()V
    .locals 4

    invoke-virtual {p0}, Lcom/htc/sunny/SSurfaceView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/sunny/SSurfaceView;->getHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/htc/sunny/SSurfaceView;->recycleBackground()V

    iget-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mGenerateBackgroundListener:Lcom/htc/sunny/SSurfaceView$OnGenerateBackgroundListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mGenerateBackgroundListener:Lcom/htc/sunny/SSurfaceView$OnGenerateBackgroundListener;

    invoke-interface {v2}, Lcom/htc/sunny/SSurfaceView$OnGenerateBackgroundListener;->onGenerateBackground()Lcom/htc/sunny/SBitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mBackgroundBmp:Lcom/htc/sunny/SBitmap;

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget-object v3, p0, Lcom/htc/sunny/SSurfaceView;->mBackgroundBmp:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v2, v3}, Lcom/htc/sunny/SunnyEngine;->setBackgroundImage(Lcom/htc/sunny/SBitmap;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mBackgroundBmp:Lcom/htc/sunny/SBitmap;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    if-lez v1, :cond_0

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v1, v0}, Lcom/htc/sunny/SBitmap;->createBitmap(Landroid/graphics/drawable/Drawable;II)Lcom/htc/sunny/SBitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mBackgroundBmp:Lcom/htc/sunny/SBitmap;

    goto :goto_0
.end method

.method private recycleBackground()V
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/sunny/SSurfaceView;->mRecycleBK:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mBackgroundBmp:Lcom/htc/sunny/SBitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mBackgroundBmp:Lcom/htc/sunny/SBitmap;

    invoke-virtual {v0}, Lcom/htc/sunny/SBitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mBackgroundBmp:Lcom/htc/sunny/SBitmap;

    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Lcom/htc/sunny/SView;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/htc/sunny/SSurfaceView$10;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SSurfaceView$10;-><init>(Lcom/htc/sunny/SSurfaceView;Lcom/htc/sunny/SView;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SSurfaceView;->runOnRenderThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected bindSurfaceR(Landroid/view/Surface;II)V
    .locals 3

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

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView;->mBindSurfaceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mBindSurfaceLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/sunny/SunnyEngine;->bindWindows(Landroid/view/Surface;II)Z

    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRootView:Lcom/htc/sunny/SView;

    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v1}, Lcom/htc/sunny/SunnyEngine;->getRootNode()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny/SView;->setViewNode(IZ)V

    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRootView:Lcom/htc/sunny/SView;

    invoke-virtual {v0}, Lcom/htc/sunny/SView;->bindSurface()V

    invoke-direct {p0}, Lcom/htc/sunny/SSurfaceView;->generateBackground()V

    invoke-virtual {p0}, Lcom/htc/sunny/SSurfaceView;->render3D()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny/SSurfaceView;->mIsSurfaceBinded:Z

    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView;->mBindSurfaceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mBindSurfaceLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v0, "3DGlideMode"

    const-string v1, "[SSurfaceView] bindSurfaceR() -"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

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

    const-string v0, "3DGlideMode"

    const-string v1, "[SSurfaceView] destroySunnyR() +"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v0}, Lcom/htc/sunny/SunnyEngine;->deInit()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    const-string v0, "3DGlideMode"

    const-string v1, "[SSurfaceView] destroySunnyR() -"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/SurfaceView;->dispatchDraw(Landroid/graphics/Canvas;)V

    new-instance v0, Lcom/htc/sunny/SSurfaceView$15;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SSurfaceView$15;-><init>(Lcom/htc/sunny/SSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SSurfaceView;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    new-instance v0, Lcom/htc/sunny/SSurfaceView$12;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SSurfaceView$12;-><init>(Lcom/htc/sunny/SSurfaceView;Landroid/view/KeyEvent;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SSurfaceView;->runOnRenderThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/htc/sunny/SSurfaceView;->mIsSurfaceBinded:Z

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v4, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v4, v5, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v4, p0, Lcom/htc/sunny/SSurfaceView;->mLastMouseMoveTime:J

    sub-long v4, v1, v4

    const-wide/16 v6, 0x1e

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    iput-wide v1, p0, Lcom/htc/sunny/SSurfaceView;->mLastMouseMoveTime:J

    :cond_2
    :goto_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    new-instance v3, Lcom/htc/sunny/SSurfaceView$13;

    invoke-direct {v3, p0, v0}, Lcom/htc/sunny/SSurfaceView$13;-><init>(Lcom/htc/sunny/SSurfaceView;Landroid/view/MotionEvent;)V

    invoke-virtual {p0, v3}, Lcom/htc/sunny/SSurfaceView;->runOnRenderThread(Ljava/lang/Runnable;)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/sunny/SSurfaceView;->mLastMouseMoveTime:J

    goto :goto_1
.end method

.method public enableManualRelease(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/sunny/SSurfaceView;->mEnableManaulRelease:Z

    return-void
.end method

.method public getSunnyEngine()Lcom/htc/sunny/SunnyEngine;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    return-object v0
.end method

.method protected init(Landroid/util/AttributeSet;)V
    .locals 4

    const/16 v3, 0xa

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/htc/sunny/SSurfaceView;->mInited:Z

    if-nez v0, :cond_0

    const-string v0, "3DGlideMode"

    const-string v1, "init surface and start render thread..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny/SSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-boolean v0, p0, Lcom/htc/sunny/SSurfaceView;->mEnabledTranslucent:Z

    if-ne v2, v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/sunny/SSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    :goto_0
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    invoke-virtual {v0, v3}, Lcom/htc/sunny/SSurfaceView$RenderThread;->setPriority(I)V

    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny/SSurfaceView$RenderThread;->start()V

    :goto_1
    new-instance v0, Lcom/htc/sunny/SSurfaceView$1;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SSurfaceView$1;-><init>(Lcom/htc/sunny/SSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SSurfaceView;->runOnRenderThread(Ljava/lang/Runnable;)V

    iput-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->mInited:Z

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny/SSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/htc/sunny/SSurfaceView$RenderThread;

    const-string v1, "3D Render Thread"

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny/SSurfaceView$RenderThread;-><init>(Lcom/htc/sunny/SSurfaceView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    invoke-virtual {v0, v3}, Lcom/htc/sunny/SSurfaceView$RenderThread;->setPriority(I)V

    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny/SSurfaceView$RenderThread;->start()V

    goto :goto_1
.end method

.method protected initW()V
    .locals 3

    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/sunny/SunnyEngine;

    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->mEnabledTranslucent:Z

    invoke-direct {v0, v1, v2}, Lcom/htc/sunny/SunnyEngine;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v0}, Lcom/htc/sunny/SunnyEngine;->init()Z

    new-instance v0, Lcom/htc/sunny/SView;

    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/htc/sunny/SView;-><init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V

    iput-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRootView:Lcom/htc/sunny/SView;

    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRootView:Lcom/htc/sunny/SView;

    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v1}, Lcom/htc/sunny/SunnyEngine;->getRootNode()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny/SView;->setViewNode(IZ)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    const-string v0, "3DGlideMode"

    const-string v1, "[SSurfaceView] onAttachedToWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SSurfaceView;->init(Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/htc/sunny/SSurfaceView$6;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SSurfaceView$6;-><init>(Lcom/htc/sunny/SSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SSurfaceView;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    const-string v0, "3DGlideMode"

    const-string v1, "[SSurfaceView] onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/sunny/SSurfaceView;->mEnableManaulRelease:Z

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/htc/sunny/SSurfaceView$7;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SSurfaceView$7;-><init>(Lcom/htc/sunny/SSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SSurfaceView;->runOnRenderThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/htc/sunny/SSurfaceView$8;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SSurfaceView$8;-><init>(Lcom/htc/sunny/SSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SSurfaceView;->runOnRenderThread(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/htc/sunny/SSurfaceView;->release()V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    new-instance v0, Lcom/htc/sunny/SSurfaceView$14;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/htc/sunny/SSurfaceView$14;-><init>(Lcom/htc/sunny/SSurfaceView;ZIIII)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SSurfaceView;->runOnRenderThread(Ljava/lang/Runnable;)V

    invoke-super/range {p0 .. p5}, Landroid/view/SurfaceView;->onLayout(ZIIII)V

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny/SSurfaceView;->mIsResumeDrawing:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny/SSurfaceView;->mIsResumeDrawing:Z

    invoke-virtual {p0}, Lcom/htc/sunny/SSurfaceView;->requestRender()V

    return-void
.end method

.method public release()V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/htc/sunny/SSurfaceView;->mInited:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "3DGlideMode"

    const-string v2, "[SSurfaceView] release() +"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/htc/sunny/SSurfaceView$9;

    invoke-direct {v1, p0}, Lcom/htc/sunny/SSurfaceView$9;-><init>(Lcom/htc/sunny/SSurfaceView;)V

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SSurfaceView;->runOnRenderThread(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    invoke-virtual {v1}, Lcom/htc/sunny/SSurfaceView$RenderThread;->stopWorker()V

    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SSurfaceView$RenderThread;->join(J)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny/SSurfaceView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iput-object v4, p0, Lcom/htc/sunny/SSurfaceView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/htc/sunny/SSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny/SSurfaceView;->mInited:Z

    const-string v1, "3DGlideMode"

    const-string v2, "[SSurfaceView] release() -"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public removeView(Lcom/htc/sunny/SView;)V
    .locals 1

    new-instance v0, Lcom/htc/sunny/SSurfaceView$11;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SSurfaceView$11;-><init>(Lcom/htc/sunny/SSurfaceView;Lcom/htc/sunny/SView;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SSurfaceView;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public render3D()V
    .locals 10

    const-wide/16 v8, 0x3e8

    const-wide/16 v6, 0x0

    iget-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->mIsResumeDrawing:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v2}, Lcom/htc/sunny/SunnyEngine;->renderWindow()V

    :cond_2
    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/htc/sunny/SSurfaceView;->ENABLE_DEBUG:Z

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mFPSTextView:Lcom/htc/sunny/STextView;

    if-nez v2, :cond_3

    new-instance v2, Lcom/htc/sunny/STextView;

    iget-object v3, p0, Lcom/htc/sunny/SSurfaceView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/htc/sunny/STextView;-><init>(Landroid/content/Context;Lcom/htc/sunny/SSurfaceView;)V

    iput-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mFPSTextView:Lcom/htc/sunny/STextView;

    iget-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mFPSTextView:Lcom/htc/sunny/STextView;

    const/16 v3, -0x100

    invoke-virtual {v2, v3}, Lcom/htc/sunny/STextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mFPSTextView:Lcom/htc/sunny/STextView;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lcom/htc/sunny/STextView;->setTextSize(I)V

    iget-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mFPSTextView:Lcom/htc/sunny/STextView;

    const/16 v3, 0x64

    const/16 v4, 0x32

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny/STextView;->setDisplaySize(II)V

    iget-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mFPSTextView:Lcom/htc/sunny/STextView;

    invoke-virtual {p0, v2}, Lcom/htc/sunny/SSurfaceView;->addView(Lcom/htc/sunny/SView;)V

    :cond_3
    iget-wide v2, p0, Lcom/htc/sunny/SSurfaceView;->mLastTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/sunny/SSurfaceView;->mLastTime:J

    iput-wide v6, p0, Lcom/htc/sunny/SSurfaceView;->mCounter:J

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/sunny/SSurfaceView;->mCurrentTime:J

    iget-wide v2, p0, Lcom/htc/sunny/SSurfaceView;->mCurrentTime:J

    iget-wide v4, p0, Lcom/htc/sunny/SSurfaceView;->mLastTime:J

    sub-long v0, v2, v4

    cmp-long v2, v0, v8

    if-lez v2, :cond_5

    iget-wide v2, p0, Lcom/htc/sunny/SSurfaceView;->mCurrentTime:J

    iput-wide v2, p0, Lcom/htc/sunny/SSurfaceView;->mLastTime:J

    iput-wide v6, p0, Lcom/htc/sunny/SSurfaceView;->mCounter:J

    goto :goto_0

    :cond_5
    iget-wide v2, p0, Lcom/htc/sunny/SSurfaceView;->mCounter:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/htc/sunny/SSurfaceView;->mCounter:J

    iget-wide v2, p0, Lcom/htc/sunny/SSurfaceView;->mCounter:J

    const-wide/16 v4, 0x14

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    cmp-long v2, v6, v0

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/htc/sunny/SSurfaceView;->mCounter:J

    mul-long/2addr v2, v8

    div-long/2addr v2, v0

    long-to-int v2, v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/htc/sunny/SSurfaceView;->mFps:J

    iput-wide v6, p0, Lcom/htc/sunny/SSurfaceView;->mCounter:J

    iget-wide v2, p0, Lcom/htc/sunny/SSurfaceView;->mCurrentTime:J

    iput-wide v2, p0, Lcom/htc/sunny/SSurfaceView;->mLastTime:J

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

    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny/SSurfaceView$RenderThread;->render()V

    goto :goto_0
.end method

.method public runOnRenderThread(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRenderThread:Lcom/htc/sunny/SSurfaceView$RenderThread;

    invoke-virtual {v0, p1}, Lcom/htc/sunny/SSurfaceView$RenderThread;->addOperator(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setBackground(Lcom/htc/sunny/SBitmap;)V
    .locals 1

    new-instance v0, Lcom/htc/sunny/SSurfaceView$3;

    invoke-direct {v0, p0, p1}, Lcom/htc/sunny/SSurfaceView$3;-><init>(Lcom/htc/sunny/SSurfaceView;Lcom/htc/sunny/SBitmap;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SSurfaceView;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SSurfaceView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/sunny/SSurfaceView;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v0, Lcom/htc/sunny/SSurfaceView$2;

    invoke-direct {v0, p0}, Lcom/htc/sunny/SSurfaceView$2;-><init>(Lcom/htc/sunny/SSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/htc/sunny/SSurfaceView;->runOnRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setOnGenerateBackgroundListener(Lcom/htc/sunny/SSurfaceView$OnGenerateBackgroundListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny/SSurfaceView;->mGenerateBackgroundListener:Lcom/htc/sunny/SSurfaceView$OnGenerateBackgroundListener;

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 5

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

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/sunny/SSurfaceView;->mSurfaceChanged:Z

    new-instance v1, Lcom/htc/sunny/SSurfaceView$4;

    invoke-direct {v1, p0, p1, p3, p4}, Lcom/htc/sunny/SSurfaceView$4;-><init>(Lcom/htc/sunny/SSurfaceView;Landroid/view/SurfaceHolder;II)V

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SSurfaceView;->runOnRenderThread(Ljava/lang/Runnable;)V

    iget-boolean v1, p0, Lcom/htc/sunny/SSurfaceView;->mIsSurfaceBinded:Z

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mBindSurfaceLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string v1, "3DGlideMode"

    const-string v3, "[SSurfaceView] surfaceChanged() wait +"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView;->mBindSurfaceLock:Ljava/lang/Object;

    const-wide/16 v3, 0xfa0

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V

    const-string v1, "3DGlideMode"

    const-string v3, "[SSurfaceView] surfaceChanged() wait -"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    monitor-exit v2

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    const-string v0, "3DGlideMode"

    const-string v1, "[SSurfaceView] surfaceCreated()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 5

    const-string v1, "3DGlideMode"

    const-string v2, "[SSurfaceView] surfaceDestroyed()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/htc/sunny/SSurfaceView$5;

    invoke-direct {v1, p0}, Lcom/htc/sunny/SSurfaceView$5;-><init>(Lcom/htc/sunny/SSurfaceView;)V

    invoke-virtual {p0, v1}, Lcom/htc/sunny/SSurfaceView;->runOnRenderThread(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/htc/sunny/SSurfaceView;->mIsSurfaceBinded:Z

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny/SSurfaceView;->mUnbindSurfaceLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string v1, "3DGlideMode"

    const-string v3, "[SSurfaceView] surfaceDestroyed() wait +"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView;->mUnbindSurfaceLock:Ljava/lang/Object;

    const-wide/16 v3, 0xfa0

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V

    const-string v1, "3DGlideMode"

    const-string v3, "[SSurfaceView] surfaceDestroyed() wait -"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    monitor-exit v2

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected unBindSurfaceR()V
    .locals 2

    const-string v0, "3DGlideMode"

    const-string v1, "[SSurfaceView] unBindSurfaceR() +"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView;->mUnbindSurfaceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mUnbindSurfaceLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mRootView:Lcom/htc/sunny/SView;

    invoke-virtual {v0}, Lcom/htc/sunny/SView;->unBindSurface()V

    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v0}, Lcom/htc/sunny/SunnyEngine;->logStatus()V

    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    invoke-virtual {v0}, Lcom/htc/sunny/SunnyEngine;->unbindWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny/SSurfaceView;->mIsSurfaceBinded:Z

    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView;->mUnbindSurfaceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView;->mUnbindSurfaceLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v0, "3DGlideMode"

    const-string v1, "[SSurfaceView] unBindSurfaceR() -"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
