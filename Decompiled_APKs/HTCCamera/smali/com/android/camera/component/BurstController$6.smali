.class Lcom/android/camera/component/BurstController$6;
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

.field final synthetic val$cameraController:Lcom/android/camera/CameraController;

.field final synthetic val$cameraThread:Lcom/android/camera/CameraThread;


# direct methods
.method constructor <init>(Lcom/android/camera/component/BurstController;Lcom/android/camera/CameraThread;Lcom/android/camera/CameraController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/BurstController$6;->this$0:Lcom/android/camera/component/BurstController;

    iput-object p2, p0, Lcom/android/camera/component/BurstController$6;->val$cameraThread:Lcom/android/camera/CameraThread;

    iput-object p3, p0, Lcom/android/camera/component/BurstController$6;->val$cameraController:Lcom/android/camera/CameraController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/camera/component/BurstController$6;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/component/BurstController;->access$1400(Lcom/android/camera/component/BurstController;)Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JPEG Callback["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/android/camera/component/BurstController$6;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/component/BurstController;->m_CurrentCaptureIndex:I
    invoke-static {v5}, Lcom/android/camera/component/BurstController;->access$1100(Lcom/android/camera/component/BurstController;)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "], JPEG-data size = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_2

    array-length v1, p1

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/component/BurstController$6;->this$0:Lcom/android/camera/component/BurstController;

    iget-object v4, p0, Lcom/android/camera/component/BurstController$6;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/component/BurstController;->m_CurrentCaptureIndex:I
    invoke-static {v4}, Lcom/android/camera/component/BurstController;->access$1100(Lcom/android/camera/component/BurstController;)I

    move-result v4

    #calls: Lcom/android/camera/component/BurstController;->createPostviewImage(ILandroid/hardware/Camera;)V
    invoke-static {v1, v4, p2}, Lcom/android/camera/component/BurstController;->access$1500(Lcom/android/camera/component/BurstController;ILandroid/hardware/Camera;)V

    iget-object v1, p0, Lcom/android/camera/component/BurstController$6;->this$0:Lcom/android/camera/component/BurstController;

    invoke-static {v1}, Lcom/android/camera/component/BurstController;->access$1104(Lcom/android/camera/component/BurstController;)I

    iget-object v1, p0, Lcom/android/camera/component/BurstController$6;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/component/BurstController;->m_CurrentCaptureIndex:I
    invoke-static {v1}, Lcom/android/camera/component/BurstController;->access$1100(Lcom/android/camera/component/BurstController;)I

    move-result v1

    iget-object v4, p0, Lcom/android/camera/component/BurstController$6;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/component/BurstController;->m_CaptureCount:I
    invoke-static {v4}, Lcom/android/camera/component/BurstController;->access$200(Lcom/android/camera/component/BurstController;)I

    move-result v4

    if-lt v1, v4, :cond_3

    move v0, v3

    :goto_1
    iget-object v1, p0, Lcom/android/camera/component/BurstController$6;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/component/BurstController;->m_CurrentCaptureIndex:I
    invoke-static {v1}, Lcom/android/camera/component/BurstController;->access$1100(Lcom/android/camera/component/BurstController;)I

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/BurstController$6;->val$cameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->setCanStartPreview()V

    :cond_0
    iget-object v4, p0, Lcom/android/camera/component/BurstController$6;->val$cameraThread:Lcom/android/camera/CameraThread;

    iget-object v1, p0, Lcom/android/camera/component/BurstController$6;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/component/BurstController;->m_StorePictureCallback:Lcom/android/camera/CameraThread$StorePictureCallback;
    invoke-static {v1}, Lcom/android/camera/component/BurstController;->access$1600(Lcom/android/camera/component/BurstController;)Lcom/android/camera/CameraThread$StorePictureCallback;

    move-result-object v5

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/camera/component/BurstController;->access$800()Lcom/android/camera/DCFInfo;

    move-result-object v1

    :goto_2
    invoke-virtual {v4, p1, v5, v1, v0}, Lcom/android/camera/CameraThread;->storeTakenPicture([BLcom/android/camera/CameraThread$StorePictureCallback;Lcom/android/camera/DCFInfo;Z)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/component/BurstController$6;->val$cameraController:Lcom/android/camera/CameraController;

    const-string v4, "picture-count"

    invoke-virtual {v1, v4, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/camera/component/BurstController$6;->val$cameraController:Lcom/android/camera/CameraController;

    invoke-virtual {v1}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    iget-object v1, p0, Lcom/android/camera/component/BurstController$6;->val$cameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->endTakePicture()V

    iget-object v1, p0, Lcom/android/camera/component/BurstController$6;->this$0:Lcom/android/camera/component/BurstController;

    iget-object v3, p0, Lcom/android/camera/component/BurstController$6;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/component/BurstController;->m_BurstUI:Lcom/android/camera/component/BurstUI;
    invoke-static {v3}, Lcom/android/camera/component/BurstController;->access$000(Lcom/android/camera/component/BurstController;)Lcom/android/camera/component/BurstUI;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/component/BurstController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    iget-object v3, p0, Lcom/android/camera/component/BurstController$6;->this$0:Lcom/android/camera/component/BurstController;

    const/4 v1, 0x0

    check-cast v1, [[B

    #setter for: Lcom/android/camera/component/BurstController;->m_postviewData:[[B
    invoke-static {v3, v1}, Lcom/android/camera/component/BurstController;->access$1302(Lcom/android/camera/component/BurstController;[[B)[[B

    iget-object v1, p0, Lcom/android/camera/component/BurstController$6;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/component/BurstController;->m_BurstUI:Lcom/android/camera/component/BurstUI;
    invoke-static {v1}, Lcom/android/camera/component/BurstController;->access$000(Lcom/android/camera/component/BurstController;)Lcom/android/camera/component/BurstUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/component/BurstUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/component/BurstController$6;->val$cameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraThread;->startPreview(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/BurstController$6;->this$0:Lcom/android/camera/component/BurstController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/component/BurstController;->access$1700(Lcom/android/camera/component/BurstController;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "JPEG Callback end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    move v1, v2

    goto/16 :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/android/camera/DCFRuler;->DefaultDCFInfo:Lcom/android/camera/DCFInfo;

    goto :goto_2
.end method
