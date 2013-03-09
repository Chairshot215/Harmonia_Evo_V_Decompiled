.class final Lcom/htc/home/personalize/SceneProvider/SaveHomeWallpaper$1;
.super Ljava/lang/Thread;
.source "SaveHomeWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/SceneProvider/SaveHomeWallpaper;->loadHomeWallpaper(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$sceneId:I


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;I)V
    .locals 0
    .parameter "x0"
    .parameter
    .parameter

    .prologue
    .line 32
    iput-object p2, p0, Lcom/htc/home/personalize/SceneProvider/SaveHomeWallpaper$1;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/htc/home/personalize/SceneProvider/SaveHomeWallpaper$1;->val$sceneId:I

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 35
    const/4 v4, 0x0

    .line 37
    .local v4, scene:Lcom/htc/htcSceneManager/scene/Scene;
    :try_start_0
    iget-object v7, p0, Lcom/htc/home/personalize/SceneProvider/SaveHomeWallpaper$1;->val$context:Landroid/content/Context;

    invoke-static {v7}, Lcom/htc/htcSceneManager/scene/SceneManager;->getInstance(Landroid/content/Context;)Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v5

    .line 38
    .local v5, sceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;
    iget v7, p0, Lcom/htc/home/personalize/SceneProvider/SaveHomeWallpaper$1;->val$sceneId:I

    invoke-virtual {v5, v7}, Lcom/htc/htcSceneManager/scene/SceneManager;->getSceneById(I)Lcom/htc/htcSceneManager/scene/Scene;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 42
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/htc/htcSceneManager/scene/Scene;->isLiveWallpaper()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 43
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.htc.rosie.ACTION_SET_WALLPAPER_COMPONENT"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "wallpaper_component"

    invoke-virtual {v4}, Lcom/htc/htcSceneManager/scene/Scene;->getLiveWallpaperComponent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    iget-object v7, p0, Lcom/htc/home/personalize/SceneProvider/SaveHomeWallpaper$1;->val$context:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 59
    .end local v2           #intent:Landroid/content/Intent;
    .end local v5           #sceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v1

    .line 40
    .local v1, e1:Ljava/lang/Exception;
    goto :goto_0

    .line 50
    .end local v1           #e1:Ljava/lang/Exception;
    .restart local v5       #sceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Lcom/htc/htcSceneManager/scene/Scene;->getStaticWallpaperPath()Ljava/lang/String;

    move-result-object v6

    .line 51
    .local v6, staticWallpaperPath:Ljava/lang/String;
    const-string v7, "SaveHomeWallpaper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadHomeWallpaper: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 53
    .local v3, is:Ljava/io/FileInputStream;
    iget-object v7, p0, Lcom/htc/home/personalize/SceneProvider/SaveHomeWallpaper$1;->val$context:Landroid/content/Context;

    invoke-static {v7}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 54
    .end local v3           #is:Ljava/io/FileInputStream;
    .end local v6           #staticWallpaperPath:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 55
    .local v0, e:Ljava/io/IOException;
    const-string v7, "SaveHomeWallpaper"

    const-string v8, "loadHomeWallpaper"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 56
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 57
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v7, "SaveHomeWallpaper"

    const-string v8, "NullPointerException"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
