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

.field mCurWindowFlags:I

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

.field mWindiowAlpha:I

.field mWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;

.field private mWindowVisibility:I

.field mWindowVisible:Z


# direct methods
.method public constructor <init>(Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;)V
    .locals 2
    .parameter "engine"

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;-><init>()V

    .line 23
    new-instance v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-direct {v0, p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;-><init>(Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;)V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    .line 25
    new-instance v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;

    invoke-direct {v0, p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;-><init>(Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;)V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;

    .line 26
    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mDrawingAllowed:Z

    .line 27
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindowVisibility:I

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindiowAlpha:I

    .line 42
    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindowVisible:Z

    .line 43
    iget v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindowFlags:I

    iput v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCurWindowFlags:I

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mVisibleInsets:Landroid/graphics/Rect;

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWinFrame:Landroid/graphics/Rect;

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mContentInsets:Landroid/graphics/Rect;

    .line 47
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mConfiguration:Landroid/content/res/Configuration;

    .line 50
    invoke-virtual {p0, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->setEngine(Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;)V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mDrawingAllowed:Z

    return v0
.end method

.method private getWindowFormat()I
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mShowLiveWallpaper:Z

    if-eqz v0, :cond_0

    .line 83
    const/4 v0, 0x1

    .line 86
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method


# virtual methods
.method public attach()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewRootImpl;->getWindowSession(Landroid/os/Looper;)Landroid/view/IWindowSession;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSession:Landroid/view/IWindowSession;

    .line 57
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;

    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSession:Landroid/view/IWindowSession;

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;->setSession(Landroid/view/IWindowSession;)V

    .line 58
    return-void
.end method

.method public detach()V
    .locals 0

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->reportSurfaceDestroyed()V

    .line 62
    return-void
.end method

.method protected doDestroy()V
    .locals 3

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCreated:Z

    if-eqz v0, :cond_0

    .line 67
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

    .line 69
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    iget-object v0, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCreated:Z

    .line 75
    :cond_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public finishDrawing()V
    .locals 3

    .prologue
    .line 400
    :try_start_0
    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;

    invoke-interface {v1, v2}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :goto_0
    return-void

    .line 401
    :catch_0
    move-exception v0

    .line 403
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSession()Landroid/view/IWindowSession;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSession:Landroid/view/IWindowSession;

    return-object v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    return-object v0
.end method

.method public getWindow()Lcom/android/internal/view/BaseIWindow;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;

    return-object v0
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->isDestroyed()Z

    move-result v0

    return v0
.end method

.method reportSurfaceDestroyed()V
    .locals 8

    .prologue
    .line 265
    iget-boolean v5, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceCreated:Z

    if-eqz v5, :cond_1

    .line 266
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceCreated:Z

    .line 268
    iget-object v5, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    iget-object v6, v5, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v6

    .line 269
    :try_start_0
    iget-object v5, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    iget-object v5, v5, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v2, v5, [Landroid/view/SurfaceHolder$Callback;

    .line 271
    .local v2, callbacks:[Landroid/view/SurfaceHolder$Callback;
    iget-object v5, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    iget-object v5, v5, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 272
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    move-object v0, v2

    .local v0, arr$:[Landroid/view/SurfaceHolder$Callback;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 274
    .local v1, c:Landroid/view/SurfaceHolder$Callback;
    iget-object v5, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-interface {v1, v5}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 273
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 272
    .end local v0           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v1           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v2           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 276
    .restart local v0       #arr$:[Landroid/view/SurfaceHolder$Callback;
    .restart local v2       #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
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

    .line 278
    iget-object v5, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    iget-object v6, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v5, v6}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 280
    .end local v0           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v2           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    return-void
.end method

.method protected setFormat(I)V
    .locals 1
    .parameter "format"

    .prologue
    .line 382
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v0, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->setFormat(I)V

    .line 383
    return-void
.end method

.method protected setSurfaceSize()V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->setSizeFromLayout()V

    .line 392
    return-void
.end method

.method public updateSurface(ZZ)V
    .locals 37
    .parameter "forceRelayout"
    .parameter "forceReport"

    .prologue
    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    const-string v2, "IdleScreenWindowBase"

    const-string v3, "updateSurface~ destroyed"

    invoke-static {v2, v3}, Lcom/htc/lockscreen/idlescreen/ISLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->getRequestedWidth()I

    move-result v29

    .line 98
    .local v29, myWidth:I
    if-gtz v29, :cond_1

    const/16 v29, -0x1

    .line 99
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->getRequestedHeight()I

    move-result v28

    .line 100
    .local v28, myHeight:I
    if-gtz v28, :cond_2

    const/16 v28, -0x1

    .line 101
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->getWindowFormat()I

    move-result v27

    .line 103
    .local v27, myFormat:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCreated:Z

    if-nez v2, :cond_7

    const/16 v21, 0x1

    .line 104
    .local v21, creating:Z
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceCreated:Z

    if-nez v2, :cond_8

    const/16 v33, 0x1

    .line 105
    .local v33, surfaceCreating:Z
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mFormat:I

    move/from16 v0, v27

    if-eq v2, v0, :cond_9

    const/16 v23, 0x1

    .line 106
    .local v23, formatChanged:Z
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWidth:I

    move/from16 v0, v29

    if-ne v2, v0, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mHeight:I

    move/from16 v0, v28

    if-eq v2, v0, :cond_a

    :cond_3
    const/16 v32, 0x1

    .line 107
    .local v32, sizeChanged:Z
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mType:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v3}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->getRequestedType()I

    move-result v3

    if-eq v2, v3, :cond_b

    const/16 v34, 0x1

    .line 108
    .local v34, typeChanged:Z
    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCurWindowFlags:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindowFlags:I

    if-eq v2, v3, :cond_c

    const/16 v22, 0x1

    .line 109
    .local v22, flagsChanged:Z
    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mVisibility:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindowVisibility:I

    if-eq v2, v3, :cond_d

    const/16 v35, 0x1

    .line 110
    .local v35, visibleChanged:Z
    :goto_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindiowAlpha:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mAlpha:I

    if-eq v2, v3, :cond_e

    const/16 v16, 0x1

    .line 111
    .local v16, alphaChanged:Z
    :goto_7
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

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " formatChanged="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sizeChanged="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " typeChanged="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " flagsChanged="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " visibleChanged="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " alphaChanged ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/idlescreen/ISLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    if-nez p1, :cond_4

    if-nez v21, :cond_4

    if-nez v33, :cond_4

    if-nez v23, :cond_4

    if-nez v32, :cond_4

    if-nez v34, :cond_4

    if-nez v22, :cond_4

    if-nez v35, :cond_4

    if-eqz v16, :cond_6

    .line 123
    :cond_4
    :try_start_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mVisibility:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindowVisibility:I

    .line 125
    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWidth:I

    .line 126
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mHeight:I

    .line 128
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mFormat:I

    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->getRequestedType()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mType:I

    .line 131
    const/16 v30, 0x0

    .line 132
    .local v30, padding:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v30

    .line 134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move/from16 v0, v30

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move/from16 v0, v29

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move/from16 v0, v28

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mFormat:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 140
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindowFlags:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCurWindowFlags:I

    .line 141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindowFlags:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 143
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mAlpha:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindiowAlpha:I

    .line 144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindiowAlpha:I

    int-to-float v3, v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mType:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->memoryType:I

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    invoke-virtual {v3}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 155
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCreated:Z

    if-nez v2, :cond_10

    .line 156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    invoke-virtual {v3}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->getWindowType()I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    invoke-virtual {v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->getWindowAnimation()I

    move-result v17

    .line 160
    .local v17, animation:I
    if-lez v17, :cond_5

    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move/from16 v0, v17

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 164
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;

    iget v4, v4, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;->mSeq:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindowVisibility:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mContentInsets:Landroid/graphics/Rect;

    invoke-interface/range {v2 .. v7}, Landroid/view/IWindowSession;->addWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;)I

    move-result v2

    if-gez v2, :cond_f

    .line 165
    const-string v2, "IdleScreenWindowBase"

    const-string v3, "Failed to add window"

    invoke-static {v2, v3}, Lcom/htc/lockscreen/idlescreen/ISLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .end local v17           #animation:I
    .end local v30           #padding:I
    :cond_6
    :goto_8
    return-void

    .line 103
    .end local v16           #alphaChanged:Z
    .end local v21           #creating:Z
    .end local v22           #flagsChanged:Z
    .end local v23           #formatChanged:Z
    .end local v32           #sizeChanged:Z
    .end local v33           #surfaceCreating:Z
    .end local v34           #typeChanged:Z
    .end local v35           #visibleChanged:Z
    :cond_7
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 104
    .restart local v21       #creating:Z
    :cond_8
    const/16 v33, 0x0

    goto/16 :goto_1

    .line 105
    .restart local v33       #surfaceCreating:Z
    :cond_9
    const/16 v23, 0x0

    goto/16 :goto_2

    .line 106
    .restart local v23       #formatChanged:Z
    :cond_a
    const/16 v32, 0x0

    goto/16 :goto_3

    .line 107
    .restart local v32       #sizeChanged:Z
    :cond_b
    const/16 v34, 0x0

    goto/16 :goto_4

    .line 108
    .restart local v34       #typeChanged:Z
    :cond_c
    const/16 v22, 0x0

    goto/16 :goto_5

    .line 109
    .restart local v22       #flagsChanged:Z
    :cond_d
    const/16 v35, 0x0

    goto/16 :goto_6

    .line 110
    .restart local v35       #visibleChanged:Z
    :cond_e
    const/16 v16, 0x0

    goto/16 :goto_7

    .line 169
    .restart local v16       #alphaChanged:Z
    .restart local v17       #animation:I
    .restart local v30       #padding:I
    :cond_f
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCreated:Z

    .line 172
    .end local v17           #animation:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    iget-object v2, v2, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 173
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mDrawingAllowed:Z

    .line 179
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;

    iget v4, v4, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;->mSeq:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mLayout:Landroid/view/WindowManager$LayoutParams;

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

    invoke-interface/range {v2 .. v14}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I

    move-result v31

    .line 192
    .local v31, relayoutResult:I
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

    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v36

    .line 196
    .local v36, w:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCurWidth:I

    move/from16 v0, v36

    if-eq v2, v0, :cond_11

    .line 197
    const/16 v32, 0x1

    .line 198
    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCurWidth:I

    .line 200
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v24

    .line 201
    .local v24, h:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCurHeight:I

    move/from16 v0, v24

    if-eq v2, v0, :cond_12

    .line 202
    const/16 v32, 0x1

    .line 203
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCurHeight:I

    .line 206
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    iget-object v2, v2, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    iget-object v2, v2, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-nez v2, :cond_14

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->reportSurfaceDestroyed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_8

    .line 256
    .end local v24           #h:I
    .end local v30           #padding:I
    .end local v31           #relayoutResult:I
    .end local v36           #w:I
    :catch_0
    move-exception v2

    .line 258
    :cond_13
    :goto_9
    const-string v2, "IdleScreenWindowBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSurface~ x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " w="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " h="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/idlescreen/ISLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 214
    .restart local v24       #h:I
    .restart local v30       #padding:I
    .restart local v31       #relayoutResult:I
    .restart local v36       #w:I
    :cond_14
    const/16 v20, 0x0

    .line 215
    .local v20, callbacks:[Landroid/view/SurfaceHolder$Callback;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    iget-object v3, v2, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 216
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    iget-object v2, v2, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 217
    .local v15, N:I
    if-lez v15, :cond_15

    .line 218
    new-array v0, v15, [Landroid/view/SurfaceHolder$Callback;

    move-object/from16 v20, v0

    .line 219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    iget-object v2, v2, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 221
    :cond_15
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 223
    if-eqz v33, :cond_18

    .line 224
    const/4 v2, 0x1

    :try_start_3
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mIsCreating:Z

    .line 225
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

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    invoke-virtual {v2, v3}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 228
    if-eqz v20, :cond_18

    .line 229
    move-object/from16 v18, v20

    .local v18, arr$:[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v26, v0

    .local v26, len$:I
    const/16 v25, 0x0

    .local v25, i$:I
    :goto_a
    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_18

    aget-object v19, v18, v25

    .line 230
    .local v19, c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 229
    add-int/lit8 v25, v25, 0x1

    goto :goto_a

    .line 221
    .end local v15           #N:I
    .end local v18           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v19           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v25           #i$:I
    .end local v26           #len$:I
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 250
    :catchall_1
    move-exception v2

    const/4 v3, 0x0

    :try_start_6
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mIsCreating:Z

    .line 251
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceCreated:Z

    .line 252
    if-nez v21, :cond_16

    and-int/lit8 v3, v31, 0x2

    if-eqz v3, :cond_17

    .line 253
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;

    invoke-interface {v3, v4}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V

    :cond_17
    throw v2
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 234
    .restart local v15       #N:I
    :cond_18
    if-nez p2, :cond_19

    if-nez v21, :cond_19

    if-nez v33, :cond_19

    if-nez v23, :cond_19

    if-eqz v32, :cond_1a

    .line 236
    :cond_19
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceHolder:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MySurfaceHolder;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mFormat:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCurWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mCurHeight:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 238
    if-eqz v20, :cond_1a

    .line 239
    move-object/from16 v18, v20

    .restart local v18       #arr$:[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v26, v0

    .restart local v26       #len$:I
    const/16 v25, 0x0

    .restart local v25       #i$:I
    :goto_b
    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_1a

    aget-object v19, v18, v25

    .line 240
    .restart local v19       #c:Landroid/view/SurfaceHolder$Callback;
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

    .line 239
    add-int/lit8 v25, v25, 0x1

    goto :goto_b

    .line 245
    .end local v18           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v19           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v25           #i$:I
    .end local v26           #len$:I
    :cond_1a
    if-eqz v33, :cond_1b

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    const-string v3, "idlescreen_surface_create"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->sendLockScreenCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 250
    :cond_1b
    const/4 v2, 0x0

    :try_start_8
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mIsCreating:Z

    .line 251
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSurfaceCreated:Z

    .line 252
    if-nez v21, :cond_1c

    and-int/lit8 v2, v31, 0x2

    if-eqz v2, :cond_13

    .line 253
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase;->mWindow:Lcom/htc/lockscreen/idlescreen/IdleScreenWindowBase$MyWindow;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_9
.end method
