.class Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$1;
.super Ljava/lang/Object;
.source "WallpaperPreviewer.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 292
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$1;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 296
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$1;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    #getter for: Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mActivityState:S
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->access$000(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)S

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 334
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$1;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    #getter for: Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mActivityState:S
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->access$000(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)S

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 301
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$1;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->showDialog(I)V

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$1;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    #getter for: Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->access$100(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3

    .line 306
    invoke-static {}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[mLoadBitmapRunnable][run] Make list for uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$1;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    #getter for: Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mTargetUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->access$300(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$1;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$1;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    #getter for: Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mTargetUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->access$300(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$1;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    invoke-static {v1, v2, v3, v3, v4}, Lcom/htc/opensense2/album/util/ImageManager;->makeImageList(Landroid/net/Uri;Landroid/content/Context;IZZ)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v1

    #setter for: Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    invoke-static {v0, v1}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->access$402(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;Lcom/htc/opensense2/album/util/ImageManager$IImageList;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 310
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$1;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$1;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    #getter for: Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->access$400(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$1;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    #getter for: Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mTargetUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->access$300(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageForUri(Landroid/net/Uri;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v1

    #setter for: Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-static {v0, v1}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->access$502(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;Lcom/htc/opensense2/album/util/ImageManager$IImage;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 311
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$1;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    #getter for: Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->access$500(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 312
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$1;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$1;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    #getter for: Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->access$500(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->thumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    #setter for: Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->access$102(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 313
    :cond_2
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$1;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    #getter for: Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->access$100(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 315
    invoke-static {}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[mLoadBitmapRunnable][run] Thumb bitmap found, Bitmap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$1;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    #getter for: Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->access$100(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  ( W: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$1;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    #getter for: Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->access$100(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , H: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$1;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    #getter for: Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->access$100(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :cond_3
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$1;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    #getter for: Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->access$100(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_4

    .line 322
    invoke-static {}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[mLoadBitmapRunnable][run] Unable to get thumb bitmap, go finish..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$1;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->finish()V

    goto/16 :goto_0

    .line 327
    :cond_4
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$1;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    #getter for: Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mImageView:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->access$600(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$1;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    #getter for: Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->access$100(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;->setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V

    .line 328
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$1;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    #getter for: Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mImageView:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->access$600(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;->getScale()F

    move-result v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    .line 329
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$1;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    #getter for: Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mImageView:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->access$600(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;

    move-result-object v0

    invoke-virtual {v0, v3, v3, v4}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;->center(ZZZ)V

    .line 331
    :cond_5
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$1;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    new-instance v1, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$HQLoader;

    iget-object v2, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$1;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$HQLoader;-><init>(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$1;)V

    #setter for: Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mHQLoader:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$HQLoader;
    invoke-static {v0, v1}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->access$702(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$HQLoader;)Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$HQLoader;

    .line 332
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$1;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    #getter for: Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mHQLoader:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$HQLoader;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->access$700(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$HQLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$HQLoader;->start()V

    goto/16 :goto_0
.end method
