.class Lcom/htc/launcher/Launcher$10;
.super Ljava/lang/Thread;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/Launcher;->loadHomeWallpaper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/htc/launcher/Launcher;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 2504
    iput-object p1, p0, Lcom/htc/launcher/Launcher$10;->this$0:Lcom/htc/launcher/Launcher;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 2509
    iget-object v7, p0, Lcom/htc/launcher/Launcher$10;->this$0:Lcom/htc/launcher/Launcher;

    #calls: Lcom/htc/launcher/Launcher;->getSceneManager()Lcom/htc/htcSceneManager/scene/SceneManager;
    invoke-static {v7}, Lcom/htc/launcher/Launcher;->access$2800(Lcom/htc/launcher/Launcher;)Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v4

    .line 2510
    .local v4, manager:Lcom/htc/htcSceneManager/scene/SceneManager;
    const/4 v5, 0x0

    .line 2513
    .local v5, scene:Lcom/htc/htcSceneManager/scene/Scene;
    :try_start_0
    invoke-virtual {v4}, Lcom/htc/htcSceneManager/scene/SceneManager;->getCurrentSceneId()I

    move-result v6

    .line 2514
    .local v6, workspaceId:I
    invoke-virtual {v4, v6}, Lcom/htc/htcSceneManager/scene/SceneManager;->getSceneById(I)Lcom/htc/htcSceneManager/scene/Scene;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 2518
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/htc/htcSceneManager/scene/Scene;->isLiveWallpaper()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2520
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.htc.rosie.ACTION_SET_WALLPAPER_COMPONENT"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2521
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "wallpaper_component"

    invoke-virtual {v5}, Lcom/htc/htcSceneManager/scene/Scene;->getLiveWallpaperComponent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2522
    iget-object v7, p0, Lcom/htc/launcher/Launcher$10;->this$0:Lcom/htc/launcher/Launcher;

    invoke-virtual {v7, v2}, Lcom/htc/launcher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 2533
    .end local v2           #intent:Landroid/content/Intent;
    .end local v6           #workspaceId:I
    :goto_0
    return-void

    .line 2515
    :catch_0
    move-exception v1

    .line 2516
    .local v1, e1:Ljava/lang/Exception;
    goto :goto_0

    .line 2528
    .end local v1           #e1:Ljava/lang/Exception;
    .restart local v6       #workspaceId:I
    :cond_0
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v5}, Lcom/htc/htcSceneManager/scene/Scene;->getStaticWallpaperPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 2529
    .local v3, is:Ljava/io/FileInputStream;
    invoke-static {}, Lcom/htc/launcher/WallpaperManager;->getInstance()Lcom/htc/launcher/WallpaperManager;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/htc/launcher/WallpaperManager;->setImage(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2530
    .end local v3           #is:Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 2531
    .local v0, e:Ljava/io/IOException;
    const-string v7, "Rosie"

    const-string v8, "WidgetWorkspaceManager.loadHomeWallpaper"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
