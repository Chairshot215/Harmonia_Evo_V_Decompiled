.class Lcom/htc/dockmode/wallpaper/WallpaperControl$1;
.super Landroid/content/BroadcastReceiver;
.source "WallpaperControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dockmode/wallpaper/WallpaperControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dockmode/wallpaper/WallpaperControl;


# direct methods
.method constructor <init>(Lcom/htc/dockmode/wallpaper/WallpaperControl;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl$1;->this$0:Lcom/htc/dockmode/wallpaper/WallpaperControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 105
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.htc.intent.ACTION_SET_WALLPAPER_DOCKMODE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    const-string v1, "EXTRA_WALLPAPER_PATH"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, mFilePath:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 109
    invoke-static {}, Lcom/htc/dockmode/wallpaper/WallpaperControl;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl$1;->this$0:Lcom/htc/dockmode/wallpaper/WallpaperControl;

    invoke-virtual {v1, v0}, Lcom/htc/dockmode/wallpaper/WallpaperControl;->setWallpaper(Ljava/lang/String;)V

    .line 112
    .end local v0           #mFilePath:Ljava/lang/String;
    :cond_1
    return-void
.end method
