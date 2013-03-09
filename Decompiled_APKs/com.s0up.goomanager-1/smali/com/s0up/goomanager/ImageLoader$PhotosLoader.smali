.class Lcom/s0up/goomanager/ImageLoader$PhotosLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s0up/goomanager/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhotosLoader"
.end annotation


# instance fields
.field photoToLoad:Lcom/s0up/goomanager/ImageLoader$PhotoToLoad;

.field final synthetic this$0:Lcom/s0up/goomanager/ImageLoader;


# direct methods
.method constructor <init>(Lcom/s0up/goomanager/ImageLoader;Lcom/s0up/goomanager/ImageLoader$PhotoToLoad;)V
    .locals 0
    .parameter
    .parameter "photoToLoad"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/s0up/goomanager/ImageLoader$PhotosLoader;->this$0:Lcom/s0up/goomanager/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p2, p0, Lcom/s0up/goomanager/ImageLoader$PhotosLoader;->photoToLoad:Lcom/s0up/goomanager/ImageLoader$PhotoToLoad;

    .line 159
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 163
    iget-object v3, p0, Lcom/s0up/goomanager/ImageLoader$PhotosLoader;->this$0:Lcom/s0up/goomanager/ImageLoader;

    iget-object v4, p0, Lcom/s0up/goomanager/ImageLoader$PhotosLoader;->photoToLoad:Lcom/s0up/goomanager/ImageLoader$PhotoToLoad;

    invoke-virtual {v3, v4}, Lcom/s0up/goomanager/ImageLoader;->imageViewReused(Lcom/s0up/goomanager/ImageLoader$PhotoToLoad;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v3, p0, Lcom/s0up/goomanager/ImageLoader$PhotosLoader;->this$0:Lcom/s0up/goomanager/ImageLoader;

    iget-object v4, p0, Lcom/s0up/goomanager/ImageLoader$PhotosLoader;->photoToLoad:Lcom/s0up/goomanager/ImageLoader$PhotoToLoad;

    iget-object v4, v4, Lcom/s0up/goomanager/ImageLoader$PhotoToLoad;->url:Ljava/lang/String;

    #calls: Lcom/s0up/goomanager/ImageLoader;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    invoke-static {v3, v4}, Lcom/s0up/goomanager/ImageLoader;->access$0(Lcom/s0up/goomanager/ImageLoader;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 166
    .local v2, bmp:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/s0up/goomanager/ImageLoader$PhotosLoader;->this$0:Lcom/s0up/goomanager/ImageLoader;

    iget-object v3, v3, Lcom/s0up/goomanager/ImageLoader;->memoryCache:Lcom/s0up/goomanager/MemoryCache;

    iget-object v4, p0, Lcom/s0up/goomanager/ImageLoader$PhotosLoader;->photoToLoad:Lcom/s0up/goomanager/ImageLoader$PhotoToLoad;

    iget-object v4, v4, Lcom/s0up/goomanager/ImageLoader$PhotoToLoad;->url:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/s0up/goomanager/MemoryCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 167
    iget-object v3, p0, Lcom/s0up/goomanager/ImageLoader$PhotosLoader;->this$0:Lcom/s0up/goomanager/ImageLoader;

    iget-object v4, p0, Lcom/s0up/goomanager/ImageLoader$PhotosLoader;->photoToLoad:Lcom/s0up/goomanager/ImageLoader$PhotoToLoad;

    invoke-virtual {v3, v4}, Lcom/s0up/goomanager/ImageLoader;->imageViewReused(Lcom/s0up/goomanager/ImageLoader$PhotoToLoad;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 169
    new-instance v1, Lcom/s0up/goomanager/ImageLoader$BitmapDisplayer;

    iget-object v3, p0, Lcom/s0up/goomanager/ImageLoader$PhotosLoader;->this$0:Lcom/s0up/goomanager/ImageLoader;

    iget-object v4, p0, Lcom/s0up/goomanager/ImageLoader$PhotosLoader;->photoToLoad:Lcom/s0up/goomanager/ImageLoader$PhotoToLoad;

    invoke-direct {v1, v3, v2, v4}, Lcom/s0up/goomanager/ImageLoader$BitmapDisplayer;-><init>(Lcom/s0up/goomanager/ImageLoader;Landroid/graphics/Bitmap;Lcom/s0up/goomanager/ImageLoader$PhotoToLoad;)V

    .line 170
    .local v1, bd:Lcom/s0up/goomanager/ImageLoader$BitmapDisplayer;
    iget-object v3, p0, Lcom/s0up/goomanager/ImageLoader$PhotosLoader;->photoToLoad:Lcom/s0up/goomanager/ImageLoader$PhotoToLoad;

    iget-object v3, v3, Lcom/s0up/goomanager/ImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 171
    .local v0, a:Landroid/app/Activity;
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
