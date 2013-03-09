.class Lcom/android/camera/ImageLoader$1;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ImageLoader;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ImageLoader;


# direct methods
.method constructor <init>(Lcom/android/camera/ImageLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ImageLoader$1;->this$0:Lcom/android/camera/ImageLoader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/camera/ImageLoader$1;->this$0:Lcom/android/camera/ImageLoader;

    #getter for: Lcom/android/camera/ImageLoader;->mDone:Z
    invoke-static {v6}, Lcom/android/camera/ImageLoader;->access$000(Lcom/android/camera/ImageLoader;)Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/camera/ImageLoader$1;->this$0:Lcom/android/camera/ImageLoader;

    #getter for: Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/camera/ImageLoader;->access$100(Lcom/android/camera/ImageLoader;)Ljava/util/ArrayList;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/android/camera/ImageLoader$1;->this$0:Lcom/android/camera/ImageLoader;

    #getter for: Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/camera/ImageLoader;->access$100(Lcom/android/camera/ImageLoader;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    iget-object v6, p0, Lcom/android/camera/ImageLoader$1;->this$0:Lcom/android/camera/ImageLoader;

    #getter for: Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/camera/ImageLoader;->access$100(Lcom/android/camera/ImageLoader;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/android/camera/ImageLoader$WorkItem;

    move-object v5, v0

    iget-object v6, p0, Lcom/android/camera/ImageLoader$1;->this$0:Lcom/android/camera/ImageLoader;

    #getter for: Lcom/android/camera/ImageLoader;->mInProgress:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/camera/ImageLoader;->access$200(Lcom/android/camera/ImageLoader;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    const/4 v1, 0x0

    :try_start_1
    iget-object v6, v5, Lcom/android/camera/ImageLoader$WorkItem;->mImage:Lcom/android/camera/ImageManager$IImage;

    invoke-interface {v6}, Lcom/android/camera/ImageManager$IImage;->miniThumbBitmap()Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_2
    if-nez v1, :cond_1

    const-string v6, "ImageLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unable to read thumbnail for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/camera/ImageLoader$WorkItem;->mImage:Lcom/android/camera/ImageManager$IImage;

    invoke-interface {v8}, Lcom/android/camera/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/camera/ImageLoader$1;->this$0:Lcom/android/camera/ImageLoader;

    #getter for: Lcom/android/camera/ImageLoader;->mBadThumbnailList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/camera/ImageLoader;->access$300(Lcom/android/camera/ImageLoader;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, v5, Lcom/android/camera/ImageLoader$WorkItem;->mImage:Lcom/android/camera/ImageManager$IImage;

    invoke-interface {v7}, Lcom/android/camera/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v6, p0, Lcom/android/camera/ImageLoader$1;->this$0:Lcom/android/camera/ImageLoader;

    #getter for: Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/camera/ImageLoader;->access$100(Lcom/android/camera/ImageLoader;)Ljava/util/ArrayList;

    move-result-object v7

    monitor-enter v7

    :try_start_2
    iget-object v6, p0, Lcom/android/camera/ImageLoader$1;->this$0:Lcom/android/camera/ImageLoader;

    #getter for: Lcom/android/camera/ImageLoader;->mInProgress:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/camera/ImageLoader;->access$200(Lcom/android/camera/ImageLoader;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v6, v5, Lcom/android/camera/ImageLoader$WorkItem;->mOnLoadedRunnable:Lcom/android/camera/ImageLoader$LoadedCallback;

    if-eqz v6, :cond_0

    iget-boolean v6, v5, Lcom/android/camera/ImageLoader$WorkItem;->mPostBack:Z

    if-eqz v6, :cond_3

    move-object v4, v5

    move-object v2, v1

    iget-object v6, p0, Lcom/android/camera/ImageLoader$1;->this$0:Lcom/android/camera/ImageLoader;

    #getter for: Lcom/android/camera/ImageLoader;->mDone:Z
    invoke-static {v6}, Lcom/android/camera/ImageLoader;->access$000(Lcom/android/camera/ImageLoader;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/camera/ImageLoader$1;->this$0:Lcom/android/camera/ImageLoader;

    #getter for: Lcom/android/camera/ImageLoader;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/camera/ImageLoader;->access$400(Lcom/android/camera/ImageLoader;)Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/android/camera/ImageLoader$1$1;

    invoke-direct {v7, p0, v4, v2}, Lcom/android/camera/ImageLoader$1$1;-><init>(Lcom/android/camera/ImageLoader$1;Lcom/android/camera/ImageLoader$WorkItem;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_2
    :try_start_3
    iget-object v6, p0, Lcom/android/camera/ImageLoader$1;->this$0:Lcom/android/camera/ImageLoader;

    #getter for: Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/camera/ImageLoader;->access$100(Lcom/android/camera/ImageLoader;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    goto :goto_1

    :catchall_0
    move-exception v6

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    :catch_1
    move-exception v3

    const-string v6, "ImageLoader"

    const-string v7, "couldn\'t load miniThumbBitmap"

    invoke-static {v6, v7, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_1
    move-exception v6

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v6

    :cond_3
    iget-object v6, v5, Lcom/android/camera/ImageLoader$WorkItem;->mOnLoadedRunnable:Lcom/android/camera/ImageLoader$LoadedCallback;

    invoke-interface {v6, v1}, Lcom/android/camera/ImageLoader$LoadedCallback;->run(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :cond_4
    return-void
.end method
