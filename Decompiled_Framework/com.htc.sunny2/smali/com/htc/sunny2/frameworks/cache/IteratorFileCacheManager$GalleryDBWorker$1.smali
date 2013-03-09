.class Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker$1;
.super Landroid/os/Handler;
.source "IteratorFileCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;->onLooperPrepared()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker$1;->this$1:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker$Parameter;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker$Parameter;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker$1;->this$1:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    iget-object v2, v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;->this$0:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    iget-object v3, v1, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker$Parameter;->filePath:Ljava/lang/String;

    iget-object v4, v1, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker$Parameter;->cachePath:Ljava/lang/String;

    iget v5, v1, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker$Parameter;->type:I

    iget v6, v1, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker$Parameter;->cacheSize:I

    #calls: Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->insertThumbDB(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v2, v3, v4, v5, v6}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->access$000(Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "FileCacheMonitor"

    const-string v3, "fail to insert db"

    invoke-static {v2, v3, v0}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker$Parameter;

    if-eqz v2, :cond_0

    :try_start_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker$Parameter;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker$1;->this$1:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;

    iget-object v2, v2, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker;->this$0:Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;

    iget-object v3, v1, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker$Parameter;->filePath:Ljava/lang/String;

    iget-object v4, v1, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker$Parameter;->cachePath:Ljava/lang/String;

    iget v5, v1, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager$GalleryDBWorker$Parameter;->type:I

    #calls: Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->updateDBAccessTime(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v2, v3, v4, v5}, Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;->access$100(Lcom/htc/sunny2/frameworks/cache/IteratorFileCacheManager;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "FileCacheMonitor"

    const-string v3, "fail to update db"

    invoke-static {v2, v3, v0}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
