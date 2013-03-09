.class Lcom/android/camera/component/ThumbnailController$6;
.super Ljava/lang/Object;
.source "ThumbnailController.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ThumbnailController;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ThumbnailController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ThumbnailController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ThumbnailController$6;->this$0:Lcom/android/camera/component/ThumbnailController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 7

    iget-object v4, p0, Lcom/android/camera/component/ThumbnailController$6;->this$0:Lcom/android/camera/component/ThumbnailController;

    monitor-enter v4

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/camera/ThumbnailEvent;

    move-object v1, v0

    iget-object v3, p0, Lcom/android/camera/component/ThumbnailController$6;->this$0:Lcom/android/camera/component/ThumbnailController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/component/ThumbnailController;->access$700(Lcom/android/camera/component/ThumbnailController;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Video thumbnail created : Path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/camera/ThumbnailEvent;->filePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/component/ThumbnailController$6;->this$0:Lcom/android/camera/component/ThumbnailController;

    #getter for: Lcom/android/camera/component/ThumbnailController;->m_LatestRecordedVideoThumb:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/android/camera/component/ThumbnailController;->access$800(Lcom/android/camera/component/ThumbnailController;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/component/ThumbnailController$6;->this$0:Lcom/android/camera/component/ThumbnailController;

    #getter for: Lcom/android/camera/component/ThumbnailController;->m_LatestRecordedVideoThumb:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/android/camera/component/ThumbnailController;->access$800(Lcom/android/camera/component/ThumbnailController;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget-object v3, p0, Lcom/android/camera/component/ThumbnailController$6;->this$0:Lcom/android/camera/component/ThumbnailController;

    iget-object v5, v1, Lcom/android/camera/ThumbnailEvent;->filePath:Ljava/lang/String;

    #setter for: Lcom/android/camera/component/ThumbnailController;->m_LatestRecordedVideoPath:Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/android/camera/component/ThumbnailController;->access$902(Lcom/android/camera/component/ThumbnailController;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, v1, Lcom/android/camera/ThumbnailEvent;->thumbnailImage:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/component/ThumbnailController$6;->this$0:Lcom/android/camera/component/ThumbnailController;

    iget-object v5, v1, Lcom/android/camera/ThumbnailEvent;->thumbnailImage:Landroid/graphics/Bitmap;

    invoke-static {v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    #setter for: Lcom/android/camera/component/ThumbnailController;->m_LatestRecordedVideoThumb:Landroid/graphics/Bitmap;
    invoke-static {v3, v5}, Lcom/android/camera/component/ThumbnailController;->access$802(Lcom/android/camera/component/ThumbnailController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/android/camera/component/ThumbnailController$6;->this$0:Lcom/android/camera/component/ThumbnailController;

    const/4 v5, 0x0

    #setter for: Lcom/android/camera/component/ThumbnailController;->m_LatestRecordedVideoThumb:Landroid/graphics/Bitmap;
    invoke-static {v3, v5}, Lcom/android/camera/component/ThumbnailController;->access$802(Lcom/android/camera/component/ThumbnailController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_4
    iget-object v3, p0, Lcom/android/camera/component/ThumbnailController$6;->this$0:Lcom/android/camera/component/ThumbnailController;

    const/4 v5, 0x0

    #setter for: Lcom/android/camera/component/ThumbnailController;->m_LatestRecordedVideoThumb:Landroid/graphics/Bitmap;
    invoke-static {v3, v5}, Lcom/android/camera/component/ThumbnailController;->access$802(Lcom/android/camera/component/ThumbnailController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/camera/component/ThumbnailController$6;->this$0:Lcom/android/camera/component/ThumbnailController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/component/ThumbnailController;->access$1000(Lcom/android/camera/component/ThumbnailController;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Error copying video thumbnail image"

    invoke-static {v3, v5, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3
.end method
