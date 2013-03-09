.class public final Lcom/htc/launcher/Launcher$WallpaperIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WallpaperIntentReceiver"
.end annotation


# static fields
.field static sLauncherStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9548
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/launcher/Launcher$WallpaperIntentReceiver;->sLauncherStarted:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9547
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "data"

    .prologue
    .line 9551
    const-string v0, "Rosie"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WallpaperIntentReceiver.onReceive(): launcher started? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/htc/launcher/Launcher$WallpaperIntentReceiver;->sLauncherStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9552
    sget-boolean v0, Lcom/htc/launcher/Launcher$WallpaperIntentReceiver;->sLauncherStarted:Z

    if-eqz v0, :cond_0

    .line 9556
    :goto_0
    return-void

    .line 9554
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/launcher/WallpaperManager;->isOOBE:Z

    .line 9555
    invoke-static {p1}, Lcom/htc/launcher/Launcher;->saveHomeWallpaper(Landroid/content/Context;)V

    goto :goto_0
.end method
