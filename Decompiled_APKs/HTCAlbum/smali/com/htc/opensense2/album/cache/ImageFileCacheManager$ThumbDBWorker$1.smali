.class Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker$1;
.super Landroid/os/Handler;
.source "ImageFileCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker;->onLooperPrepared()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker;


# direct methods
.method constructor <init>(Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 497
    iput-object p1, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker$1;->this$1:Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 499
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 539
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 506
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker$Parameter;

    if-eqz v2, :cond_0

    .line 508
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker$Parameter;

    .line 509
    .local v1, p:Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker$Parameter;
    iget-object v2, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker$1;->this$1:Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker;

    iget-object v2, v2, Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker;->this$0:Lcom/htc/opensense2/album/cache/ImageFileCacheManager;

    iget-object v3, v1, Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker$Parameter;->fileName:Ljava/lang/String;

    iget-object v4, v1, Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker$Parameter;->cacheName:Ljava/lang/String;

    iget v5, v1, Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker$Parameter;->type:I

    #calls: Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->insertThumbDB(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v2, v3, v4, v5}, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->access$000(Lcom/htc/opensense2/album/cache/ImageFileCacheManager;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 511
    .end local v1           #p:Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker$Parameter;
    :catch_0
    move-exception v0

    .line 512
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "OldFileCacheMonitor"

    const-string v3, "fail to insert db"

    invoke-static {v2, v3, v0}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 520
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker$Parameter;

    if-eqz v2, :cond_0

    .line 522
    :try_start_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker$Parameter;

    .line 523
    .restart local v1       #p:Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker$Parameter;
    iget-object v2, p0, Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker$1;->this$1:Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker;

    iget-object v2, v2, Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker;->this$0:Lcom/htc/opensense2/album/cache/ImageFileCacheManager;

    iget-object v3, v1, Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker$Parameter;->fileName:Ljava/lang/String;

    iget-object v4, v1, Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker$Parameter;->cacheName:Ljava/lang/String;

    iget v5, v1, Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker$Parameter;->type:I

    #calls: Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->updateDBAccessTime(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v2, v3, v4, v5}, Lcom/htc/opensense2/album/cache/ImageFileCacheManager;->access$100(Lcom/htc/opensense2/album/cache/ImageFileCacheManager;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 525
    .end local v1           #p:Lcom/htc/opensense2/album/cache/ImageFileCacheManager$ThumbDBWorker$Parameter;
    :catch_1
    move-exception v0

    .line 526
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "OldFileCacheMonitor"

    const-string v3, "fail to update db"

    invoke-static {v2, v3, v0}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 499
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
