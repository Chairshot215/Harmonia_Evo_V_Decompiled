.class public Lcom/htc/fusion/fx/FxWallpaperService$FxWallpaperEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "FxWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fusion/fx/FxWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FxWallpaperEngine"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mViewObject:Lcom/htc/fusion/fx/FxViewObject;

.field final synthetic this$0:Lcom/htc/fusion/fx/FxWallpaperService;


# direct methods
.method protected constructor <init>(Lcom/htc/fusion/fx/FxWallpaperService;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/fusion/fx/FxWallpaperService$FxWallpaperEngine;->this$0:Lcom/htc/fusion/fx/FxWallpaperService;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    iput-object p2, p0, Lcom/htc/fusion/fx/FxWallpaperService$FxWallpaperEngine;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addScene(Lcom/htc/fusion/fx/FxScene;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/fusion/fx/FxWallpaperService$FxWallpaperEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fusion/fx/FxWallpaperService$FxWallpaperEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/FxViewObject;->addScene(Lcom/htc/fusion/fx/FxScene;)V

    :cond_0
    return-void
.end method

.method public createScene(Lcom/htc/fusion/fx/FxSceneLoader;Z)Lcom/htc/fusion/fx/FxScene;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/fusion/fx/FxWallpaperService$FxWallpaperEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/fusion/fx/FxWallpaperService$FxWallpaperEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-virtual {v1, p1, p2}, Lcom/htc/fusion/fx/FxViewObject;->createScene(Lcom/htc/fusion/fx/FxSceneLoader;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public createScene(Ljava/lang/String;)Lcom/htc/fusion/fx/FxScene;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/fusion/fx/FxWallpaperService$FxWallpaperEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/fusion/fx/FxWallpaperService$FxWallpaperEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/htc/fusion/fx/FxViewObject;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/fusion/fx/FxWallpaperService$FxWallpaperEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/fusion/fx/FxWallpaperService$FxWallpaperEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-virtual {v1, p1, p2}, Lcom/htc/fusion/fx/FxViewObject;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/fusion/fx/FxWallpaperService$FxWallpaperEngine;->setTouchEventsEnabled(Z)V

    iget-object v0, p0, Lcom/htc/fusion/fx/FxWallpaperService$FxWallpaperEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fusion/fx/FxWallpaperService$FxWallpaperEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxViewObject;->clearHandle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fusion/fx/FxWallpaperService$FxWallpaperEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-class v2, Lcom/htc/fusion/fx/FxWallpaperService$FxWallpaperEngine;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/fusion/fx/FxWallpaperService$FxWallpaperEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/htc/fusion/fx/FxWallpaperService$FxWallpaperEngine;

    invoke-virtual {p1}, Lcom/htc/fusion/fx/FxWallpaperService$FxWallpaperEngine;->getViewObject()Lcom/htc/fusion/fx/FxViewObject;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/fusion/fx/FxWallpaperService$FxWallpaperEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/FxViewObject;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getViewObject()Lcom/htc/fusion/fx/FxViewObject;
    .locals 1

    iget-object v0, p0, Lcom/htc/fusion/fx/FxWallpaperService$FxWallpaperEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/fusion/fx/FxWallpaperService$FxWallpaperEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/fusion/fx/FxWallpaperService$FxWallpaperEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxViewObject;->hashCode()I

    move-result v0

    :cond_0
    return v0
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/htc/fusion/fx/FxViewObject;->create(Lcom/htc/fusion/fx/FxView;)Lcom/htc/fusion/fx/FxViewObject;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fusion/fx/FxWallpaperService$FxWallpaperEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    iget-object v0, p0, Lcom/htc/fusion/fx/FxWallpaperService$FxWallpaperEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    iget-object v1, p0, Lcom/htc/fusion/fx/FxWallpaperService$FxWallpaperEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxViewObject;->setPackageResourcePath(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    invoke-virtual {p0}, Lcom/htc/fusion/fx/FxWallpaperService$FxWallpaperEngine;->dispose()V

    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    iget-object v0, p0, Lcom/htc/fusion/fx/FxWallpaperService$FxWallpaperEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fusion/fx/FxWallpaperService$FxWallpaperEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/htc/fusion/fx/FxViewObject;->setSurface(Landroid/view/Surface;III)V

    :cond_0
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/htc/fusion/fx/FxWallpaperService$FxWallpaperEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fusion/fx/FxWallpaperService$FxWallpaperEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/htc/fusion/fx/FxViewObject;->setSurface(Landroid/view/Surface;III)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 7

    iget-object v3, p0, Lcom/htc/fusion/fx/FxWallpaperService$FxWallpaperEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/htc/fusion/fx/FxWallpaperService$FxWallpaperEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/htc/fusion/fx/FxViewObject;->onTouchEvent(IIFF)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    iget-object v3, p0, Lcom/htc/fusion/fx/FxWallpaperService$FxWallpaperEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/htc/fusion/fx/FxViewObject;->onTouchEvent(IIFF)Z

    :cond_1
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/fusion/fx/FxWallpaperService$FxWallpaperEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fusion/fx/FxWallpaperService$FxWallpaperEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxViewObject;->resumeRendering()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/fusion/fx/FxWallpaperService$FxWallpaperEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fusion/fx/FxWallpaperService$FxWallpaperEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxViewObject;->pauseRendering()V

    goto :goto_0
.end method

.method public removeScene(Lcom/htc/fusion/fx/FxScene;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/fusion/fx/FxWallpaperService$FxWallpaperEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fusion/fx/FxWallpaperService$FxWallpaperEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/FxViewObject;->removeScene(Lcom/htc/fusion/fx/FxScene;)V

    :cond_0
    return-void
.end method
