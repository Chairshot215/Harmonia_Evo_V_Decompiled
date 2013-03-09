.class Lcom/android/camera/component/PanoramaController$2$1;
.super Ljava/lang/Object;
.source "PanoramaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/PanoramaController$2;->onEvent(Lcom/android/camera/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/component/PanoramaController$2;

.field final synthetic val$activity:Lcom/android/camera/HTCCamera;

.field final synthetic val$contentUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/camera/component/PanoramaController$2;Landroid/net/Uri;Lcom/android/camera/HTCCamera;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/PanoramaController$2$1;->this$1:Lcom/android/camera/component/PanoramaController$2;

    iput-object p2, p0, Lcom/android/camera/component/PanoramaController$2$1;->val$contentUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/camera/component/PanoramaController$2$1;->val$activity:Lcom/android/camera/HTCCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$2$1;->this$1:Lcom/android/camera/component/PanoramaController$2;

    iget-object v1, v1, Lcom/android/camera/component/PanoramaController$2;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$700(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/component/PanoramaController$2$1;->val$contentUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$2$1;->val$activity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/component/PanoramaController$2$1;->val$contentUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v0, Lcom/android/camera/MediaDeletionCompletedEvent;

    const-string v1, "Media.DeletionCompleted"

    iget-object v2, p0, Lcom/android/camera/component/PanoramaController$2$1;->val$contentUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/MediaDeletionCompletedEvent;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;ZZLjava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v9, v0

    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$2$1;->this$1:Lcom/android/camera/component/PanoramaController$2;

    iget-object v1, v1, Lcom/android/camera/component/PanoramaController$2;->this$0:Lcom/android/camera/component/PanoramaController;

    invoke-virtual {v1}, Lcom/android/camera/component/PanoramaController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v8

    if-eqz v8, :cond_0

    new-instance v1, Lcom/android/camera/component/PanoramaController$2$1$1;

    invoke-direct {v1, p0, v7, v9}, Lcom/android/camera/component/PanoramaController$2$1$1;-><init>(Lcom/android/camera/component/PanoramaController$2$1;Lcom/android/camera/CameraThread;Lcom/android/camera/Event;)V

    invoke-virtual {v8, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :catch_0
    move-exception v6

    iget-object v1, p0, Lcom/android/camera/component/PanoramaController$2$1;->this$1:Lcom/android/camera/component/PanoramaController$2;

    iget-object v1, v1, Lcom/android/camera/component/PanoramaController$2;->this$0:Lcom/android/camera/component/PanoramaController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/component/PanoramaController;->access$800(Lcom/android/camera/component/PanoramaController;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot delete content \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/component/PanoramaController$2$1;->val$contentUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/android/camera/MediaDeletionCompletedEvent;

    const-string v1, "Media.DeletionCompleted"

    iget-object v2, p0, Lcom/android/camera/component/PanoramaController$2$1;->val$contentUri:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object v3, v10

    move v4, v11

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/MediaDeletionCompletedEvent;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;ZZLjava/lang/Throwable;)V

    goto :goto_0
.end method
