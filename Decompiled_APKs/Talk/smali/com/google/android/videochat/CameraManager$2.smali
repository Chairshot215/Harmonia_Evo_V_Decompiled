.class Lcom/google/android/videochat/CameraManager$2;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/videochat/CameraManager;->setPreviewSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/videochat/CameraManager;

.field final synthetic val$preparedLatch:Lcom/google/android/videochat/CameraManager$1Latch;


# direct methods
.method constructor <init>(Lcom/google/android/videochat/CameraManager;Lcom/google/android/videochat/CameraManager$1Latch;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 681
    iput-object p1, p0, Lcom/google/android/videochat/CameraManager$2;->this$0:Lcom/google/android/videochat/CameraManager;

    iput-object p2, p0, Lcom/google/android/videochat/CameraManager$2;->val$preparedLatch:Lcom/google/android/videochat/CameraManager$1Latch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5
    .parameter "mp"

    .prologue
    .line 683
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    .line 684
    .local v1, width:I
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    .line 685
    .local v0, height:I
    const-string v2, "vclib:CameraManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepared width="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", height="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget-object v2, p0, Lcom/google/android/videochat/CameraManager$2;->val$preparedLatch:Lcom/google/android/videochat/CameraManager$1Latch;

    invoke-virtual {v2}, Lcom/google/android/videochat/CameraManager$1Latch;->set()V

    .line 687
    return-void
.end method
