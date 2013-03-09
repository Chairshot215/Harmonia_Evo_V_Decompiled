.class Lcom/android/camera/component/BurstController$4;
.super Ljava/lang/Object;
.source "BurstController.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/BurstController;->takePicture(Lcom/android/camera/CameraThread;Landroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/BurstController;

.field final synthetic val$cameraActivity:Lcom/android/camera/HTCCamera;

.field final synthetic val$cameraThread:Lcom/android/camera/CameraThread;

.field final synthetic val$mediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method constructor <init>(Lcom/android/camera/component/BurstController;Lcom/android/camera/CameraThread;Lcom/android/camera/HTCCamera;Landroid/media/MediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/BurstController$4;->this$0:Lcom/android/camera/component/BurstController;

    iput-object p2, p0, Lcom/android/camera/component/BurstController$4;->val$cameraThread:Lcom/android/camera/CameraThread;

    iput-object p3, p0, Lcom/android/camera/component/BurstController$4;->val$cameraActivity:Lcom/android/camera/HTCCamera;

    iput-object p4, p0, Lcom/android/camera/component/BurstController$4;->val$mediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/camera/component/BurstController$4;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/camera/component/BurstController;->access$1000(Lcom/android/camera/component/BurstController;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Burst Mode - RAW Call-back, raw-data size = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_1

    array-length v0, p1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/component/BurstController$4;->val$cameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/camera/component/BurstController$4;->val$cameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v4, p0, Lcom/android/camera/component/BurstController$4;->val$mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/android/camera/component/BurstController$4;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/component/BurstController;->m_CurrentCaptureIndex:I
    invoke-static {v0}, Lcom/android/camera/component/BurstController;->access$1100(Lcom/android/camera/component/BurstController;)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    :goto_1
    iget-object v5, p0, Lcom/android/camera/component/BurstController$4;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/component/BurstController;->m_CurrentCaptureIndex:I
    invoke-static {v5}, Lcom/android/camera/component/BurstController;->access$1100(Lcom/android/camera/component/BurstController;)I

    move-result v5

    const/4 v6, 0x4

    if-lt v5, v6, :cond_3

    :goto_2
    invoke-virtual {v3, v4, v1, v0, v2}, Lcom/android/camera/HTCCamera;->playSound(Landroid/media/MediaPlayer;ZZZ)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_2
.end method
