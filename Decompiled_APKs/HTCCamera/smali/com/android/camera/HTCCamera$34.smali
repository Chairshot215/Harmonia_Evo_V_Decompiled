.class Lcom/android/camera/HTCCamera$34;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/HTCCamera;->playSound(Landroid/media/MediaPlayer;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/HTCCamera;

.field final synthetic val$isLastPlay:Z


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCCamera$34;->this$0:Lcom/android/camera/HTCCamera;

    iput-boolean p2, p0, Lcom/android/camera/HTCCamera$34;->val$isLastPlay:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    if-eqz p1, :cond_2

    const-string v0, "HTCCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error occurred when playing audio, what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extra = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/camera/HTCCamera$34;->val$isLastPlay:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera$34;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mAudioSyncRoot:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$100(Lcom/android/camera/HTCCamera;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera$34;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mAudioPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$200(Lcom/android/camera/HTCCamera;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/HTCCamera$34;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v2, 0x0

    #setter for: Lcom/android/camera/HTCCamera;->mAudioPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v2}, Lcom/android/camera/HTCCamera;->access$202(Lcom/android/camera/HTCCamera;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    :cond_1
    monitor-exit v1

    :cond_2
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
