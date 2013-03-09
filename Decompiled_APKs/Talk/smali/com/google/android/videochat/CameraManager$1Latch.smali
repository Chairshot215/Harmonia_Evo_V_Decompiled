.class Lcom/google/android/videochat/CameraManager$1Latch;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/videochat/CameraManager;->setPreviewSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Latch"
.end annotation


# instance fields
.field mState:Z

.field final synthetic this$0:Lcom/google/android/videochat/CameraManager;


# direct methods
.method constructor <init>(Lcom/google/android/videochat/CameraManager;)V
    .locals 0
    .parameter

    .prologue
    .line 663
    iput-object p1, p0, Lcom/google/android/videochat/CameraManager$1Latch;->this$0:Lcom/google/android/videochat/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized awaitSet()V
    .locals 1

    .prologue
    .line 672
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/videochat/CameraManager$1Latch;->mState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 674
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 675
    :catch_0
    move-exception v0

    goto :goto_0

    .line 678
    :cond_0
    monitor-exit p0

    return-void

    .line 672
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized set()V
    .locals 1

    .prologue
    .line 666
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/videochat/CameraManager$1Latch;->mState:Z

    if-nez v0, :cond_0

    .line 667
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/videochat/CameraManager$1Latch;->mState:Z

    .line 668
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 670
    :cond_0
    monitor-exit p0

    return-void

    .line 666
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
