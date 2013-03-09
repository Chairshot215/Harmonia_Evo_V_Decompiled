.class Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$HQLoader;
.super Ljava/lang/Thread;
.source "WallpaperPreviewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HQLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;


# direct methods
.method private constructor <init>(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)V
    .locals 0
    .parameter

    .prologue
    .line 365
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$HQLoader;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 365
    invoke-direct {p0, p1}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$HQLoader;-><init>(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 380
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$HQLoader;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    #getter for: Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->access$500(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$HQLoader;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    #getter for: Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->access$100(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 388
    .local v0, b:Landroid/graphics/Bitmap;
    :goto_0
    if-eqz v0, :cond_0

    .line 389
    invoke-static {}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HQLoader][run] Bitmap decoded with size (W: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", H: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :cond_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$HQLoader;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    new-instance v2, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$BitmapUpdater;

    iget-object v3, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$HQLoader;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    invoke-direct {v2, v3, v0}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$BitmapUpdater;-><init>(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;Landroid/graphics/Bitmap;)V

    #setter for: Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mBUHQ:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$BitmapUpdater;
    invoke-static {v1, v2}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->access$1002(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$BitmapUpdater;)Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$BitmapUpdater;

    .line 392
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$HQLoader;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    #getter for: Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->access$1100(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$HQLoader;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    #getter for: Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mBUHQ:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$BitmapUpdater;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->access$1000(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$BitmapUpdater;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 394
    return-void

    .line 380
    .end local v0           #b:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$HQLoader;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    #getter for: Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->access$500(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v1

    instance-of v1, v1, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$HQLoader;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    #getter for: Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->access$500(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;

    invoke-static {}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->access$900()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->heapBasedfullSizeBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$HQLoader;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    #getter for: Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->access$500(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v1

    invoke-static {}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->access$900()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method
