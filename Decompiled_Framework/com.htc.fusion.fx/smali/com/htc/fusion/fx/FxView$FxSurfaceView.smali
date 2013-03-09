.class Lcom/htc/fusion/fx/FxView$FxSurfaceView;
.super Landroid/view/SurfaceView;
.source "FxView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fusion/fx/FxView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FxSurfaceView"
.end annotation


# instance fields
.field private mViewObject:Lcom/htc/fusion/fx/FxViewObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/fusion/fx/FxViewObject;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/htc/fusion/fx/FxView$FxSurfaceView;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-virtual {p0}, Lcom/htc/fusion/fx/FxView$FxSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    invoke-virtual {p0}, Lcom/htc/fusion/fx/FxView$FxSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/fusion/fx/FxView$FxSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fusion/fx/FxView$FxSurfaceView;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/fusion/fx/FxView$FxSurfaceView;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v3, p0, Lcom/htc/fusion/fx/FxView$FxSurfaceView;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

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

    iget-object v3, p0, Lcom/htc/fusion/fx/FxView$FxSurfaceView;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

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

    iget-object v3, p0, Lcom/htc/fusion/fx/FxView$FxSurfaceView;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/htc/fusion/fx/FxViewObject;->onTouchEvent(IIFF)Z

    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method public setFormat(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/fusion/fx/FxView$FxSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    iget-object v0, p0, Lcom/htc/fusion/fx/FxView$FxSurfaceView;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fusion/fx/FxView$FxSurfaceView;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/htc/fusion/fx/FxViewObject;->setSurface(Landroid/view/Surface;III)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/fusion/fx/FxView$FxSurfaceView;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fusion/fx/FxView$FxSurfaceView;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/htc/fusion/fx/FxViewObject;->setSurface(Landroid/view/Surface;III)V

    :cond_0
    return-void
.end method
