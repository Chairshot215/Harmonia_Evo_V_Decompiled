.class Lcom/htc/album/TabPluginDevice/CropImage$5$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/CropImage$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/TabPluginDevice/CropImage$5;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/CropImage$5;)V
    .locals 0
    .parameter

    .prologue
    .line 1940
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/CropImage$5$1;->this$1:Lcom/htc/album/TabPluginDevice/CropImage$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1949
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/CropImage$5$1;->this$1:Lcom/htc/album/TabPluginDevice/CropImage$5;

    iget-object v6, v6, Lcom/htc/album/TabPluginDevice/CropImage$5;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-static {v6}, Lcom/htc/album/TabPluginDevice/CropImage;->access$500(Lcom/htc/album/TabPluginDevice/CropImage;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/CropImage$5$1;->this$1:Lcom/htc/album/TabPluginDevice/CropImage$5;

    iget-object v6, v6, Lcom/htc/album/TabPluginDevice/CropImage$5;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v0, v6, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 1954
    .local v0, b:Landroid/graphics/Bitmap;
    :goto_0
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/CropImage$5$1;->this$1:Lcom/htc/album/TabPluginDevice/CropImage$5;

    iget-object v6, v6, Lcom/htc/album/TabPluginDevice/CropImage$5;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-static {v6}, Lcom/htc/album/TabPluginDevice/CropImage;->access$500(Lcom/htc/album/TabPluginDevice/CropImage;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/CropImage$5$1;->this$1:Lcom/htc/album/TabPluginDevice/CropImage$5;

    iget-object v6, v6, Lcom/htc/album/TabPluginDevice/CropImage$5;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-static {v6}, Lcom/htc/album/TabPluginDevice/CropImage;->access$500(Lcom/htc/album/TabPluginDevice/CropImage;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v6

    instance-of v6, v6, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;

    if-eqz v6, :cond_0

    .line 1956
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/CropImage$5$1;->this$1:Lcom/htc/album/TabPluginDevice/CropImage$5;

    iget-object v6, v6, Lcom/htc/album/TabPluginDevice/CropImage$5;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-static {v6}, Lcom/htc/album/TabPluginDevice/CropImage;->access$500(Lcom/htc/album/TabPluginDevice/CropImage;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;

    .line 1957
    .local v4, uriImage:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;
    invoke-virtual {v4}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->is3DJPS()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1959
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v5, v6, 0x2

    .line 1960
    .local v5, width:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 1961
    .local v2, height:I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v8, v8, v5, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1962
    .local v3, r:Landroid/graphics/Rect;
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v5, v2, v6}, Lcom/htc/opensense2/album/util/BitmapUtil2;->cropImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1969
    .end local v2           #height:I
    .end local v3           #r:Landroid/graphics/Rect;
    .end local v4           #uriImage:Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;
    .end local v5           #width:I
    :cond_0
    if-eqz v0, :cond_1

    .line 1970
    invoke-static {}, Lcom/htc/album/TabPluginDevice/CropImage;->access$300()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "back from mImage.fullSizeBitmap() with bitmap of size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/album/AlbumUtility/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1972
    :cond_1
    move-object v1, v0

    .line 1973
    .local v1, fb:Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/CropImage$5$1;->this$1:Lcom/htc/album/TabPluginDevice/CropImage$5;

    iget-object v6, v6, Lcom/htc/album/TabPluginDevice/CropImage$5;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    new-instance v7, Lcom/htc/album/TabPluginDevice/CropImage$5$1$1;

    invoke-direct {v7, p0, v1}, Lcom/htc/album/TabPluginDevice/CropImage$5$1$1;-><init>(Lcom/htc/album/TabPluginDevice/CropImage$5$1;Landroid/graphics/Bitmap;)V

    #setter for: Lcom/htc/album/TabPluginDevice/CropImage;->mInitDFRunnable:Ljava/lang/Runnable;
    invoke-static {v6, v7}, Lcom/htc/album/TabPluginDevice/CropImage;->access$3602(Lcom/htc/album/TabPluginDevice/CropImage;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1993
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/CropImage$5$1;->this$1:Lcom/htc/album/TabPluginDevice/CropImage$5;

    iget-object v6, v6, Lcom/htc/album/TabPluginDevice/CropImage$5;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v6, v6, Lcom/htc/album/TabPluginDevice/CropImage;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/htc/album/TabPluginDevice/CropImage$5$1;->this$1:Lcom/htc/album/TabPluginDevice/CropImage$5;

    iget-object v7, v7, Lcom/htc/album/TabPluginDevice/CropImage$5;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mInitDFRunnable:Ljava/lang/Runnable;
    invoke-static {v7}, Lcom/htc/album/TabPluginDevice/CropImage;->access$3600(Lcom/htc/album/TabPluginDevice/CropImage;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1994
    return-void

    .line 1949
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #fb:Landroid/graphics/Bitmap;
    :cond_2
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/CropImage$5$1;->this$1:Lcom/htc/album/TabPluginDevice/CropImage$5;

    iget-object v6, v6, Lcom/htc/album/TabPluginDevice/CropImage$5;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-static {v6}, Lcom/htc/album/TabPluginDevice/CropImage;->access$500(Lcom/htc/album/TabPluginDevice/CropImage;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v6

    instance-of v6, v6, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/CropImage$5$1;->this$1:Lcom/htc/album/TabPluginDevice/CropImage$5;

    iget-object v6, v6, Lcom/htc/album/TabPluginDevice/CropImage$5;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-static {v6}, Lcom/htc/album/TabPluginDevice/CropImage;->access$500(Lcom/htc/album/TabPluginDevice/CropImage;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v6

    check-cast v6, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;

    invoke-static {}, Lcom/htc/album/TabPluginDevice/CropImage;->access$3500()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/htc/opensense2/album/util/ImageManager$SingleImageList$UriImage;->heapBasedfullSizeBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    iget-object v6, p0, Lcom/htc/album/TabPluginDevice/CropImage$5$1;->this$1:Lcom/htc/album/TabPluginDevice/CropImage$5;

    iget-object v6, v6, Lcom/htc/album/TabPluginDevice/CropImage$5;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-static {v6}, Lcom/htc/album/TabPluginDevice/CropImage;->access$500(Lcom/htc/album/TabPluginDevice/CropImage;)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v6

    invoke-static {}, Lcom/htc/album/TabPluginDevice/CropImage;->access$3500()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0
.end method
