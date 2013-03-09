.class Lcom/android/camera/HTCCamera$5;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/HTCCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/HTCCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCCamera$5;->this$0:Lcom/android/camera/HTCCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    iget-object v0, p0, Lcom/android/camera/HTCCamera$5;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mAudioSyncRoot:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$100(Lcom/android/camera/HTCCamera;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera$5;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mAudioPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/camera/HTCCamera;->access$200(Lcom/android/camera/HTCCamera;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera$5;->this$0:Lcom/android/camera/HTCCamera;

    const/4 v2, 0x0

    #setter for: Lcom/android/camera/HTCCamera;->mAudioPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0, v2}, Lcom/android/camera/HTCCamera;->access$202(Lcom/android/camera/HTCCamera;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/android/camera/HTCCamera$5;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera$5;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera$5;->this$0:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/HTCCamera$5;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;
    invoke-static {v2}, Lcom/android/camera/HTCCamera;->access$300(Lcom/android/camera/HTCCamera;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_0
    monitor-exit v1

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
