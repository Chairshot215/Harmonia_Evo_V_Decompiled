.class public Lcom/htc/idlescreen/shortcut/WallpaperChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WallpaperChangedReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 11
    invoke-static {}, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->getInstance()Lcom/htc/idlescreen/shortcut/WallpaperSetting;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/htc/idlescreen/shortcut/WallpaperSetting;->saveWallpaperType(Landroid/content/Context;I)V

    .line 12
    return-void
.end method
