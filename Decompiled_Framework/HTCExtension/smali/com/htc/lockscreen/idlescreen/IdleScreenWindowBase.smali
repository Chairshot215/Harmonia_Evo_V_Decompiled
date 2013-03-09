.class public Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;
.super Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;
.source "IdleScreenWindowBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;,
        Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;
    }
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String; = "IdleScreenWindowBase"


# instance fields
.field final mConfiguration:Landroid/content/res/Configuration;

.field final mContentInsets:Landroid/graphics/Rect;

.field mCreated:Z

.field mCurHeight:I

.field mCurWidth:I

.field mCurWindowAnime:I

.field mCurWindowFlags:I

.field mDetached:Z

.field private mDrawingAllowed:Z

.field mFormat:I

.field mHeight:I

.field mIsCreating:Z

.field mSession:Landroid/view/IWindowSession;

.field mSurfaceCreated:Z

.field mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

.field mType:I

.field final mVisibleInsets:Landroid/graphics/Rect;

.field mWidth:I

.field final mWinFrame:Landroid/graphics/Rect;

.field mWindiowShow:I

.field mWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;

.field private mWindowVisibility:I

.field mWindowVisible:Z


# direct methods
.method public constructor <init>(Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;-><init>()V

    new-instance v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-direct {v0, p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;-><init>(Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;)V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    new-instance v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;

    invoke-direct {v0, p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;-><init>(Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;)V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;

    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mDrawingAllowed:Z

    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindowVisibility:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindiowShow:I

    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindowVisible:Z

    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mDetached:Z

    iget v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mWindowFlags:I

    iput v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCurWindowFlags:I

    iput v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCurWindowAnime:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mVisibleInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWinFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mContentInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->setEngine(Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;)V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mDrawingAllowed:Z

    return v0
.end method

.method private getWindowFormat()I
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->getRequestedFormat()I

    move-result v0

    return v0
.end method

.method private isStatusBarInTop()Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindowManager;->canStatusBarHide()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public attach()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mDetached:Z

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewRootImpl;->getWindowSession(Landroid/os/Looper;)Landroid/view/IWindowSession;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSession:Landroid/view/IWindowSession;

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;

    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSession:Landroid/view/IWindowSession;

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;->setSession(Landroid/view/IWindowSession;)V

    return-void
.end method

.method public detach()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mDetached:Z

    invoke-virtual {p0, v1, v1, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->updateSurface(ZZZ)V

    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->reportSurfaceDestroyed()V

    return-void
.end method

.method protected doDestroy()V
    .locals 3

    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCreated:Z

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "IdleScreenWindowBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing window and destroying surface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lockscreen/idlescreen/ISLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    iget-object v0, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCreated:Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public finishDrawing()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;

    invoke-interface {v1, v2}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSession()Landroid/view/IWindowSession;
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSession:Landroid/view/IWindowSession;

    return-object v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    return-object v0
.end method

.method public getWindow()Lcom/android/internal/view/BaseIWindow;
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;

    return-object v0
.end method

.method public isDestroyed()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method reportSurfaceDestroyed()V
    .locals 8

    iget-boolean v5, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceCreated:Z

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceCreated:Z

    iget-object v5, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    iget-object v6, v5, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    iget-object v5, v5, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v2, v5, [Landroid/view/SurfaceHolder$Callback;

    iget-object v5, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    iget-object v5, v5, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    iget-object v5, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-interface {v1, v5}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    :cond_0
    const-string v5, "IdleScreenWindowBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSurfaceDestroyed("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/lockscreen/idlescreen/ISLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    iget-object v6, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v5, v6}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    :cond_1
    return-void
.end method

.method protected setFormat(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->setFormat(I)V

    return-void
.end method

.method protected setSurfaceSize()V
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->setSizeFromLayout()V

    return-void
.end method

.method public updateSurface(ZZZ)V
    .locals 40

    invoke-virtual/range {p0 .. p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "IdleScreenWindowBase"

    const-string v3, "updateSurface~ destroyed"

    invoke-static {v2, v3}, Lcom/htc/lockscreen/idlescreen/ISLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->getRequestedWidth()I

    move-result v30

    if-gtz v30, :cond_1

    const/16 v30, -0x1

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->getRequestedHeight()I

    move-result v29

    if-gtz v29, :cond_2

    const/16 v29, -0x1

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->getWindowFormat()I

    move-result v28

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCreated:Z

    if-nez v2, :cond_b

    const/16 v21, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceCreated:Z

    if-nez v2, :cond_c

    const/16 v34, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mFormat:I

    move/from16 v0, v28

    if-eq v2, v0, :cond_d

    const/16 v24, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWidth:I

    move/from16 v0, v30

    if-ne v2, v0, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mHeight:I

    move/from16 v0, v29

    if-eq v2, v0, :cond_e

    :cond_3
    const/16 v33, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mType:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v3}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->getRequestedType()I

    move-result v3

    if-eq v2, v3, :cond_f

    const/16 v35, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mVisibility:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mShow:I

    if-gtz v2, :cond_4

    const/16 v36, 0x8

    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindowVisibility:I

    move/from16 v0, v36

    if-eq v0, v2, :cond_10

    const/16 v37, 0x1

    :goto_5
    if-eqz v37, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mWindowFlags:I

    const v3, -0x100001

    and-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mWindowFlags:I

    if-nez v36, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mShowLiveWallpaper:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->requestUpdateSurface(J)V

    :cond_5
    :goto_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCurWindowFlags:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mWindowFlags:I

    if-eq v2, v3, :cond_12

    const/16 v23, 0x1

    :goto_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindiowShow:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mShow:I

    if-eq v2, v3, :cond_13

    const/16 v39, 0x1

    :goto_8
    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mDetached:Z

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    invoke-virtual {v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->getWindowAnimation()I

    move-result v16

    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCurWindowAnime:I

    move/from16 v0, v16

    if-eq v2, v0, :cond_14

    const/16 v17, 0x1

    :goto_9
    const-string v2, "IdleScreenWindowBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSurface~ creating="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " surfaceCreating="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " formatChanged="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sizeChanged="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " typeChanged="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " flagsChanged="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " visibleChanged="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v37

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " windowShowChanged ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " redrawNeeded ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " animationChanged ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/idlescreen/ISLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_7

    if-nez v21, :cond_7

    if-nez v34, :cond_7

    if-nez v24, :cond_7

    if-nez v33, :cond_7

    if-nez v35, :cond_7

    if-nez v23, :cond_7

    if-nez v37, :cond_7

    if-nez v39, :cond_7

    if-nez p3, :cond_7

    if-eqz v17, :cond_a

    :cond_7
    :try_start_0
    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindowVisibility:I

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWidth:I

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mHeight:I

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mFormat:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->getRequestedType()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mType:I

    const/16 v31, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->isStatusBarInTop()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v31

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move/from16 v0, v31

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move/from16 v0, v30

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move/from16 v0, v29

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mFormat:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mWindowFlags:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCurWindowFlags:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mWindowFlags:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mShow:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindiowShow:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindowVisibility:I

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v2, v3}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onSurfaceDestroyPredict(Landroid/view/SurfaceHolder;)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mType:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->memoryType:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    invoke-virtual {v3}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-lez v16, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move/from16 v0, v16

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :goto_a
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCurWindowAnime:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCreated:Z

    if-nez v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    invoke-virtual {v3}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->getWindowType()I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;

    iget v4, v4, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;->mSeq:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindowVisibility:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mContentInsets:Landroid/graphics/Rect;

    invoke-interface/range {v2 .. v7}, Landroid/view/IWindowSession;->addWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;)I

    move-result v2

    if-gez v2, :cond_17

    const-string v2, "IdleScreenWindowBase"

    const-string v3, "Failed to add window"

    invoke-static {v2, v3}, Lcom/htc/lockscreen/idlescreen/ISLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    :goto_b
    return-void

    :cond_b
    const/16 v21, 0x0

    goto/16 :goto_0

    :cond_c
    const/16 v34, 0x0

    goto/16 :goto_1

    :cond_d
    const/16 v24, 0x0

    goto/16 :goto_2

    :cond_e
    const/16 v33, 0x0

    goto/16 :goto_3

    :cond_f
    const/16 v35, 0x0

    goto/16 :goto_4

    :cond_10
    const/16 v37, 0x0

    goto/16 :goto_5

    :cond_11
    if-nez v36, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mShowLiveWallpaper:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mWindowFlags:I

    const/high16 v3, 0x10

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mWindowFlags:I

    goto/16 :goto_6

    :cond_12
    const/16 v23, 0x0

    goto/16 :goto_7

    :cond_13
    const/16 v39, 0x0

    goto/16 :goto_8

    :cond_14
    const/16 v17, 0x0

    goto/16 :goto_9

    :cond_15
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_a

    :catch_0
    move-exception v22

    const-string v2, "IdleScreenWindowBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSurface~ RemoteException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/idlescreen/ISLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    :goto_c
    const-string v2, "IdleScreenWindowBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSurface~ x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " w="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " h="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/idlescreen/ISLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_17
    const/4 v2, 0x1

    :try_start_2
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCreated:Z

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    iget-object v2, v2, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mDrawingAllowed:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;

    iget v4, v4, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;->mSeq:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mHeight:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindowVisibility:I

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWinFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    iget-object v14, v14, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-interface/range {v2 .. v14}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I

    move-result v32

    const-string v2, "IdleScreenWindowBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSurface~ New surface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    iget-object v4, v4, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", frame="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/idlescreen/ISLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v38

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCurWidth:I

    move/from16 v0, v38

    if-eq v2, v0, :cond_19

    const/16 v33, 0x1

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCurWidth:I

    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v25

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCurHeight:I

    move/from16 v0, v25

    if-eq v2, v0, :cond_1a

    const/16 v33, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCurHeight:I

    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    iget-object v2, v2, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    iget-object v2, v2, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->reportSurfaceDestroyed()V

    :cond_1b
    :goto_d
    if-eqz v37, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindowVisibility:I

    invoke-virtual {v2, v3, v4}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onSurfaceVisibilityChanged(Landroid/view/SurfaceHolder;I)V

    goto/16 :goto_c

    :cond_1c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindowVisibility:I

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v2, v3}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onSurfaceDestroyPredict(Landroid/view/SurfaceHolder;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1d
    const/16 v20, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    iget-object v3, v2, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    iget-object v2, v2, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_1e

    new-array v0, v15, [Landroid/view/SurfaceHolder$Callback;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    iget-object v2, v2, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_1e
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v34, :cond_20

    const/4 v2, 0x1

    :try_start_5
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mIsCreating:Z

    const-string v2, "IdleScreenWindowBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSurfaceCreated("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/idlescreen/ISLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v2, v3}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    if-eqz v20, :cond_20

    move-object/from16 v18, v20

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v27, v0

    const/16 v26, 0x0

    :goto_e
    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_20

    aget-object v19, v18, v26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    add-int/lit8 v26, v26, 0x1

    goto :goto_e

    :catchall_0
    move-exception v2

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v2

    const/4 v3, 0x0

    :try_start_8
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mIsCreating:Z

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceCreated:Z

    if-eqz p3, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->finishDrawing()V

    :cond_1f
    throw v2
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0

    :cond_20
    if-nez v21, :cond_21

    and-int/lit8 v2, v32, 0x2

    if-eqz v2, :cond_23

    :cond_21
    const/4 v2, 0x1

    :goto_f
    or-int p3, p3, v2

    if-nez p2, :cond_22

    if-nez v21, :cond_22

    if-nez v34, :cond_22

    if-nez v24, :cond_22

    if-eqz v33, :cond_24

    :cond_22
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mFormat:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCurWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCurHeight:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    if-eqz v20, :cond_24

    move-object/from16 v18, v20

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v27, v0

    const/16 v26, 0x0

    :goto_10
    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_24

    aget-object v19, v18, v26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mFormat:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCurWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCurHeight:I

    move-object/from16 v0, v19

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    add-int/lit8 v26, v26, 0x1

    goto :goto_10

    :cond_23
    const/4 v2, 0x0

    goto :goto_f

    :cond_24
    if-eqz p3, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v2, v3}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    if-eqz v20, :cond_26

    move-object/from16 v18, v20

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v27, v0

    const/16 v26, 0x0

    :goto_11
    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_26

    aget-object v19, v18, v26

    move-object/from16 v0, v19

    instance-of v2, v0, Landroid/view/SurfaceHolder$Callback2;

    if-eqz v2, :cond_25

    check-cast v19, Landroid/view/SurfaceHolder$Callback2;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_25
    add-int/lit8 v26, v26, 0x1

    goto :goto_11

    :cond_26
    const/4 v2, 0x0

    :try_start_a
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mIsCreating:Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceCreated:Z

    if-eqz p3, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->finishDrawing()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_d
.end method
