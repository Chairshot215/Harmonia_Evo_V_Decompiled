.class public Lcom/htc/idlescreen/shortcut/ShortcutService$ShortcutEngine;
.super Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;
.source "ShortcutService.java"

# interfaces
.implements Lcom/htc/idlescreen/shortcut/WallpaperSetting$WallpaperMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/shortcut/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShortcutEngine"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShortcutEngine"


# instance fields
.field private mDestroyed:Z

.field private mShowLiveWallpaper:Z

.field final synthetic this$0:Lcom/htc/idlescreen/shortcut/ShortcutService;


# direct methods
.method public constructor <init>(Lcom/htc/idlescreen/shortcut/ShortcutService;Lcom/htc/lockscreen/idlescreen/IdleScreenService;)V
    .locals 1
    .parameter
    .parameter "service"

    .prologue
    const/4 v0, 0x0

    .line 22
    iput-object p1, p0, Lcom/htc/idlescreen/shortcut/ShortcutService$ShortcutEngine;->this$0:Lcom/htc/idlescreen/shortcut/ShortcutService;

    .line 23
    invoke-direct {p0, p2}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;-><init>(Lcom/htc/lockscreen/idlescreen/IdleScreenService;)V

    .line 20
    iput-boolean v0, p0, Lcom/htc/idlescreen/shortcut/ShortcutService$ShortcutEngine;->mShowLiveWallpaper:Z

    .line 21
    iput-boolean v0, p0, Lcom/htc/idlescreen/shortcut/ShortcutService$ShortcutEngine;->mDestroyed:Z

    .line 24
    return-void
.end method

.method private setLiveWallpaperVisible(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/htc/idlescreen/shortcut/ShortcutService$ShortcutEngine;->mShowLiveWallpaper:Z

    if-ne v0, p1, :cond_0

    .line 53
    :goto_0
    return-void

    .line 50
    :cond_0
    iput-boolean p1, p0, Lcom/htc/idlescreen/shortcut/ShortcutService$ShortcutEngine;->mShowLiveWallpaper:Z

    .line 51
    const-string v0, "ShortcutEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show live wallpaper="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/shortcut/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, p1}, Lcom/htc/idlescreen/shortcut/ShortcutService$ShortcutEngine;->setShowLiveWallpaper(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 5
    .parameter "holder"

    .prologue
    const/4 v4, 0x0

    .line 28
    invoke-super {p0, p1}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 29
    iput-boolean v4, p0, Lcom/htc/idlescreen/shortcut/ShortcutService$ShortcutEngine;->mDestroyed:Z

    .line 30
    invoke-static {}, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->getInstance()Lcom/htc/idlescreen/shortcut/WallpaperSetting;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->setMonitor(Lcom/htc/idlescreen/shortcut/WallpaperSetting$WallpaperMonitor;)V

    .line 31
    invoke-static {}, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->getInstance()Lcom/htc/idlescreen/shortcut/WallpaperSetting;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/idlescreen/shortcut/ShortcutService$ShortcutEngine;->mService:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

    invoke-virtual {v1, v2}, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->isCustomizeWallaper(Landroid/content/Context;)Z

    move-result v0

    .line 32
    .local v0, customized:Z
    const-string v1, "ShortcutEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wallpaper customized:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/idlescreen/shortcut/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    if-eqz v0, :cond_0

    .line 35
    invoke-direct {p0, v4}, Lcom/htc/idlescreen/shortcut/ShortcutService$ShortcutEngine;->setLiveWallpaperVisible(Z)V

    .line 39
    :goto_0
    return-void

    .line 37
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/idlescreen/shortcut/ShortcutService$ShortcutEngine;->setLiveWallpaperVisible(Z)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/idlescreen/shortcut/ShortcutService$ShortcutEngine;->mDestroyed:Z

    .line 44
    invoke-super {p0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->onDestroy()V

    .line 45
    return-void
.end method

.method public onWallpaperChangerd(ILandroid/graphics/Bitmap;)V
    .locals 2
    .parameter "type"
    .parameter "wallpaper"

    .prologue
    const/4 v1, 0x1

    .line 58
    iget-boolean v0, p0, Lcom/htc/idlescreen/shortcut/ShortcutService$ShortcutEngine;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 61
    :cond_0
    if-ne p1, v1, :cond_1

    if-eqz p2, :cond_1

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/idlescreen/shortcut/ShortcutService$ShortcutEngine;->setLiveWallpaperVisible(Z)V

    .line 63
    invoke-virtual {p0, p2}, Lcom/htc/idlescreen/shortcut/ShortcutService$ShortcutEngine;->setBackground(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 66
    :cond_1
    invoke-direct {p0, v1}, Lcom/htc/idlescreen/shortcut/ShortcutService$ShortcutEngine;->setLiveWallpaperVisible(Z)V

    .line 67
    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/htc/idlescreen/shortcut/ShortcutService$ShortcutEngine;->setBackground(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
