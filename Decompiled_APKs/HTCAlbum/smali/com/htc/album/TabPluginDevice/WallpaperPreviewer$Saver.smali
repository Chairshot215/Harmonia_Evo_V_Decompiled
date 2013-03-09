.class Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$Saver;
.super Ljava/lang/Thread;
.source "WallpaperPreviewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Saver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;


# direct methods
.method public constructor <init>(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)V
    .locals 1
    .parameter

    .prologue
    .line 401
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$Saver;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 402
    const-string v0, "WallpaperSaver"

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$Saver;->setName(Ljava/lang/String;)V

    .line 403
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 416
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$Saver;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$Saver;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    #getter for: Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->access$100(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 417
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$Saver;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->setResult(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :goto_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$Saver;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->finish()V

    .line 426
    return-void

    .line 419
    :catch_0
    move-exception v0

    .line 421
    .local v0, e:Ljava/io/IOException;
    invoke-static {}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[Saver][run] Failed to set wallpaper."

    invoke-static {v1, v2, v0}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 422
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$Saver;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->setResult(I)V

    goto :goto_0
.end method
