.class Lcom/htc/dockmode/wallpaper/WallpaperControl$2;
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
    .line 115
    iput-object p1, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl$2;->this$0:Lcom/htc/dockmode/wallpaper/WallpaperControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 118
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.htc.intent.ACTION_SET_LIVEWALLPAPER_DOCKMODE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    const-string v2, "EXTRA_WALLPAPER_COMPONENT"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, mComponentName:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 124
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, mComponentArray:[Ljava/lang/String;
    aget-object v2, v0, v5

    const-string v3, "com.htc.android.WeatherLiveWallpaper"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    const-string v2, "com.htc.android.WeatherLiveWallpaper.service.WeatherLoopingService"

    aput-object v2, v0, v4

    .line 128
    :cond_0
    iget-object v2, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl$2;->this$0:Lcom/htc/dockmode/wallpaper/WallpaperControl;

    #getter for: Lcom/htc/dockmode/wallpaper/WallpaperControl;->mResume:Ljava/lang/Boolean;
    invoke-static {v2}, Lcom/htc/dockmode/wallpaper/WallpaperControl;->access$100(Lcom/htc/dockmode/wallpaper/WallpaperControl;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 129
    iget-object v2, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl$2;->this$0:Lcom/htc/dockmode/wallpaper/WallpaperControl;

    #setter for: Lcom/htc/dockmode/wallpaper/WallpaperControl;->mChangelive:Z
    invoke-static {v2, v4}, Lcom/htc/dockmode/wallpaper/WallpaperControl;->access$202(Lcom/htc/dockmode/wallpaper/WallpaperControl;Z)Z

    .line 130
    iget-object v2, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl$2;->this$0:Lcom/htc/dockmode/wallpaper/WallpaperControl;

    aget-object v3, v0, v5

    #setter for: Lcom/htc/dockmode/wallpaper/WallpaperControl;->mPackageString:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/dockmode/wallpaper/WallpaperControl;->access$302(Lcom/htc/dockmode/wallpaper/WallpaperControl;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    iget-object v2, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl$2;->this$0:Lcom/htc/dockmode/wallpaper/WallpaperControl;

    aget-object v3, v0, v4

    #setter for: Lcom/htc/dockmode/wallpaper/WallpaperControl;->mClassString:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/dockmode/wallpaper/WallpaperControl;->access$402(Lcom/htc/dockmode/wallpaper/WallpaperControl;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    invoke-static {}, Lcom/htc/dockmode/wallpaper/WallpaperControl;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BroadcastReceive mChangeLive = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl$2;->this$0:Lcom/htc/dockmode/wallpaper/WallpaperControl;

    #getter for: Lcom/htc/dockmode/wallpaper/WallpaperControl;->mChangelive:Z
    invoke-static {v4}, Lcom/htc/dockmode/wallpaper/WallpaperControl;->access$200(Lcom/htc/dockmode/wallpaper/WallpaperControl;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .end local v0           #mComponentArray:[Ljava/lang/String;
    .end local v1           #mComponentName:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 135
    .restart local v0       #mComponentArray:[Ljava/lang/String;
    .restart local v1       #mComponentName:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/htc/dockmode/wallpaper/WallpaperControl;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v2, p0, Lcom/htc/dockmode/wallpaper/WallpaperControl$2;->this$0:Lcom/htc/dockmode/wallpaper/WallpaperControl;

    aget-object v3, v0, v5

    aget-object v4, v0, v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/dockmode/wallpaper/WallpaperControl;->setLiveWallpaper(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
