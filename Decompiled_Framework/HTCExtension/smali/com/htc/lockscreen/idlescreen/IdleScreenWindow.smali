.class public abstract Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;
.super Ljava/lang/Object;
.source "IdleScreenWindow.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

.field final mLayout:Landroid/view/WindowManager$LayoutParams;

.field mShow:I

.field mShowLiveWallpaper:Z

.field mVisibility:I

.field mWindowFlags:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mVisibility:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mShow:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mWindowFlags:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mShowLiveWallpaper:Z

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method


# virtual methods
.method protected attach()V
    .locals 0

    return-void
.end method

.method protected detach()V
    .locals 0

    return-void
.end method

.method protected doDestroy()V
    .locals 0

    return-void
.end method

.method public finishDrawing()V
    .locals 0

    return-void
.end method

.method public getSession()Landroid/view/IWindowSession;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getShowLiveWallpaper()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mShowLiveWallpaper:Z

    return v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getWindow()Lcom/android/internal/view/BaseIWindow;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getWindowFlag()I
    .locals 1

    iget v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mWindowFlags:I

    return v0
.end method

.method public getWindowLayout()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getWindowShow()I
    .locals 1

    iget v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mShow:I

    return v0
.end method

.method public getWindowVisibility()I
    .locals 1

    iget v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mVisibility:I

    return v0
.end method

.method setEngine(Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    iget-object v0, p1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mService:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mContext:Landroid/content/Context;

    return-void
.end method

.method protected setFormat(I)V
    .locals 0

    return-void
.end method

.method public setShowLiveWallpaper(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mShowLiveWallpaper:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mShowLiveWallpaper:Z

    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->requestUpdateSurface()V

    :cond_0
    return-void
.end method

.method protected setSurfaceSize()V
    .locals 0

    return-void
.end method

.method public setWindowFlag(I)V
    .locals 0

    iput p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mWindowFlags:I

    return-void
.end method

.method public setWindowShow(Z)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mShow:I

    :goto_0
    invoke-virtual {p0, v1, v1, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->updateSurface(ZZZ)V

    return-void

    :cond_0
    iput v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mShow:I

    goto :goto_0
.end method

.method public setWindowVisibility(I)V
    .locals 0

    iput p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mVisibility:I

    return-void
.end method

.method protected abstract updateSurface(ZZZ)V
.end method
