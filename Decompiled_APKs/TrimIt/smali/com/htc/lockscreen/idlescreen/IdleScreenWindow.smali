.class public abstract Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;
.super Ljava/lang/Object;
.source "IdleScreenWindow.java"


# instance fields
.field mAlpha:I

.field protected mContext:Landroid/content/Context;

.field protected mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

.field final mLayout:Landroid/view/WindowManager$LayoutParams;

.field mShowLiveWallpaper:Z

.field mVisibility:I

.field mWindowFlags:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mVisibility:I

    .line 16
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mAlpha:I

    .line 17
    const/16 v0, 0x10

    iput v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mWindowFlags:I

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mShowLiveWallpaper:Z

    .line 19
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 26
    return-void
.end method


# virtual methods
.method protected attach()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method protected detach()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method protected doDestroy()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public finishDrawing()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public getSession()Landroid/view/IWindowSession;
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWindow()Lcom/android/internal/view/BaseIWindow;
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWindowFlag()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mWindowFlags:I

    return v0
.end method

.method setEngine(Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;)V
    .locals 1
    .parameter "engine"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mEngine:Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;

    .line 30
    iget-object v0, p1, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->mService:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method

.method protected setFormat(I)V
    .locals 0
    .parameter "format"

    .prologue
    .line 88
    return-void
.end method

.method public setShowLiveWallpaper(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mShowLiveWallpaper:Z

    if-eq v0, p1, :cond_0

    .line 92
    iput-boolean p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mShowLiveWallpaper:Z

    .line 93
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mShowLiveWallpaper:Z

    if-eqz v0, :cond_1

    .line 94
    iget v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mWindowFlags:I

    const/high16 v1, 0x10

    or-int/2addr v0, v1

    iput v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mWindowFlags:I

    .line 99
    :goto_0
    iget v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mVisibility:I

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->updateSurface(ZZ)V

    .line 103
    :cond_0
    return-void

    .line 97
    :cond_1
    iget v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mWindowFlags:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mWindowFlags:I

    goto :goto_0
.end method

.method protected setSurfaceSize()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public setWindowFlag(I)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 59
    iput p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mWindowFlags:I

    .line 60
    return-void
.end method

.method public setWindowShow(Z)V
    .locals 2
    .parameter "show"

    .prologue
    const/4 v1, 0x0

    .line 49
    if-eqz p1, :cond_0

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mAlpha:I

    .line 55
    :goto_0
    invoke-virtual {p0, v1, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->updateSurface(ZZ)V

    .line 56
    return-void

    .line 53
    :cond_0
    iput v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mAlpha:I

    goto :goto_0
.end method

.method public setWindowVisibility(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 67
    iput p1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenWindow;->mVisibility:I

    .line 68
    return-void
.end method

.method protected abstract updateSurface(ZZ)V
.end method
