.class Lcom/htc/graphics/drawable/CacheUrlDrawable$3;
.super Ljava/lang/Object;
.source "CacheUrlDrawable.java"

# interfaces
.implements Lcom/htc/opensense/cache/DownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/graphics/drawable/CacheUrlDrawable;->getCallbackInstance(Landroid/content/Context;)Lcom/htc/opensense/cache/DownloadCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/graphics/drawable/CacheUrlDrawable;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/htc/graphics/drawable/CacheUrlDrawable;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 489
    iput-object p1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$3;->this$0:Lcom/htc/graphics/drawable/CacheUrlDrawable;

    iput-object p2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadError(Ljava/lang/Exception;Landroid/os/Bundle;)V
    .locals 2
    .parameter "e"
    .parameter "data"

    .prologue
    .line 492
    const-string v0, "UrlDrawable"

    const-string v1, "download error  "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 494
    return-void
.end method

.method public onDownloadSuccess(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 5
    .parameter "uri"
    .parameter "data"

    .prologue
    .line 498
    iget-object v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$3;->this$0:Lcom/htc/graphics/drawable/CacheUrlDrawable;

    iget-object v2, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$3;->val$context:Landroid/content/Context;

    #calls: Lcom/htc/graphics/drawable/CacheUrlDrawable;->getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    invoke-static {v1, v2, p1}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->access$300(Lcom/htc/graphics/drawable/CacheUrlDrawable;Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 499
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 500
    iget-object v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$3;->this$0:Lcom/htc/graphics/drawable/CacheUrlDrawable;

    #calls: Lcom/htc/graphics/drawable/CacheUrlDrawable;->writeBitmapToRamCache(Landroid/graphics/Bitmap;)V
    invoke-static {v1, v0}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->access$400(Lcom/htc/graphics/drawable/CacheUrlDrawable;Landroid/graphics/Bitmap;)V

    .line 501
    iget-object v1, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$3;->this$0:Lcom/htc/graphics/drawable/CacheUrlDrawable;

    #getter for: Lcom/htc/graphics/drawable/CacheUrlDrawable;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/graphics/drawable/CacheUrlDrawable;->access$500(Lcom/htc/graphics/drawable/CacheUrlDrawable;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/graphics/drawable/CacheUrlDrawable$3;->this$0:Lcom/htc/graphics/drawable/CacheUrlDrawable;

    iget-object v3, v3, Lcom/htc/graphics/drawable/CacheUrlDrawable;->mUrl:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 506
    :cond_0
    return-void
.end method
