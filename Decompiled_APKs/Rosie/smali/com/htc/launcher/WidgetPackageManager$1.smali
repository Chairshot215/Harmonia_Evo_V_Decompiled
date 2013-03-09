.class Lcom/htc/launcher/WidgetPackageManager$1;
.super Ljava/lang/Thread;
.source "WidgetPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/WidgetPackageManager;->loadHomeWallpaper(Lcom/htc/launcher/Launcher;Lcom/htc/htcSceneManager/scene/SceneManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/WidgetPackageManager;

.field final synthetic val$launcher:Lcom/htc/launcher/Launcher;

.field final synthetic val$sm:Lcom/htc/htcSceneManager/scene/SceneManager;


# direct methods
.method constructor <init>(Lcom/htc/launcher/WidgetPackageManager;Ljava/lang/String;Lcom/htc/htcSceneManager/scene/SceneManager;Lcom/htc/launcher/Launcher;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter

    .prologue
    .line 664
    iput-object p1, p0, Lcom/htc/launcher/WidgetPackageManager$1;->this$0:Lcom/htc/launcher/WidgetPackageManager;

    iput-object p3, p0, Lcom/htc/launcher/WidgetPackageManager$1;->val$sm:Lcom/htc/htcSceneManager/scene/SceneManager;

    iput-object p4, p0, Lcom/htc/launcher/WidgetPackageManager$1;->val$launcher:Lcom/htc/launcher/Launcher;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 670
    :try_start_0
    iget-object v4, p0, Lcom/htc/launcher/WidgetPackageManager$1;->val$sm:Lcom/htc/htcSceneManager/scene/SceneManager;

    invoke-virtual {v4}, Lcom/htc/htcSceneManager/scene/SceneManager;->getCurrentScene()Lcom/htc/htcSceneManager/scene/Scene;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 674
    .local v3, scene:Lcom/htc/htcSceneManager/scene/Scene;
    if-nez v3, :cond_0

    .line 690
    .end local v3           #scene:Lcom/htc/htcSceneManager/scene/Scene;
    :goto_0
    return-void

    .line 671
    :catch_0
    move-exception v0

    .line 672
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0

    .line 676
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #scene:Lcom/htc/htcSceneManager/scene/Scene;
    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/htc/htcSceneManager/scene/Scene;->isLiveWallpaper()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 678
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.htc.rosie.ACTION_SET_WALLPAPER_COMPONENT"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 679
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "wallpaper_component"

    invoke-virtual {v3}, Lcom/htc/htcSceneManager/scene/Scene;->getLiveWallpaperComponent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 680
    iget-object v4, p0, Lcom/htc/launcher/WidgetPackageManager$1;->val$launcher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v4, v1}, Lcom/htc/launcher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 685
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {v3}, Lcom/htc/htcSceneManager/scene/Scene;->getStaticWallpaperPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 686
    .local v2, is:Ljava/io/FileInputStream;
    invoke-static {}, Lcom/htc/launcher/WallpaperManager;->getInstance()Lcom/htc/launcher/WallpaperManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/htc/launcher/WallpaperManager;->setImage(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 687
    .end local v2           #is:Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 688
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v4, "Widget"

    const-string v5, "WidgetWorkspaceManager.loadHomeWallpaper"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
