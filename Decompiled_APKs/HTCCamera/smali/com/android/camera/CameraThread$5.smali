.class Lcom/android/camera/CameraThread$5;
.super Ljava/lang/Thread;
.source "CameraThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraThread;->deleteLatestMedia()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraThread;

.field final synthetic val$contentUri:Landroid/net/Uri;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraThread;Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/CameraThread$5;->this$0:Lcom/android/camera/CameraThread;

    iput-object p3, p0, Lcom/android/camera/CameraThread$5;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/camera/CameraThread$5;->val$contentUri:Landroid/net/Uri;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/android/camera/CameraThread$5;->val$context:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CameraThread$5;->val$contentUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting media \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CameraThread$5;->val$contentUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/CameraThread$5;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CameraThread$5;->val$contentUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v0, Lcom/android/camera/MediaDeletionCompletedEvent;

    const-string v1, "Media.DeletionCompleted"

    iget-object v2, p0, Lcom/android/camera/CameraThread$5;->val$contentUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/MediaDeletionCompletedEvent;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;ZZLjava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v7, v0

    iget-object v1, p0, Lcom/android/camera/CameraThread$5;->this$0:Lcom/android/camera/CameraThread;

    iget-object v1, v1, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CameraThread$5;->this$0:Lcom/android/camera/CameraThread;

    iget-object v1, v1, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    new-instance v2, Lcom/android/camera/CameraThread$5$1;

    invoke-direct {v2, p0, v7}, Lcom/android/camera/CameraThread$5$1;-><init>(Lcom/android/camera/CameraThread$5;Lcom/android/camera/Event;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraThread$MainHandler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :catch_0
    move-exception v6

    const-string v1, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot delete media \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CameraThread$5;->val$contentUri:Landroid/net/Uri;

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

    iget-object v2, p0, Lcom/android/camera/CameraThread$5;->val$contentUri:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object v3, v8

    move v4, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/MediaDeletionCompletedEvent;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;ZZLjava/lang/Throwable;)V

    goto :goto_0
.end method
