.class Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$2;
.super Landroid/content/BroadcastReceiver;
.source "WallpaperPreviewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)V
    .locals 0
    .parameter

    .prologue
    .line 430
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$2;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 437
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 446
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$2;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$2;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    #getter for: Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v3}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->access$1200(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    :goto_0
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$2;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 455
    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$2;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    invoke-virtual {v2}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->finish()V

    .line 456
    invoke-static {}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[onReceive] Activity is finishing..."

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    :cond_1
    return-void

    .line 448
    :catch_0
    move-exception v1

    .line 450
    .local v1, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onReceive] Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
