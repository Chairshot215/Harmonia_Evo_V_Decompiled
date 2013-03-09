.class Lcom/android/camera/component/HdrController$4;
.super Ljava/lang/Object;
.source "HdrController.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/HdrController;->takePicture(Lcom/android/camera/CameraThread;Landroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/HdrController;

.field final synthetic val$cameraThread:Lcom/android/camera/CameraThread;


# direct methods
.method constructor <init>(Lcom/android/camera/component/HdrController;Lcom/android/camera/CameraThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/HdrController$4;->this$0:Lcom/android/camera/component/HdrController;

    iput-object p2, p0, Lcom/android/camera/component/HdrController$4;->val$cameraThread:Lcom/android/camera/CameraThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/camera/component/HdrController$4;->this$0:Lcom/android/camera/component/HdrController;

    iget-object v1, p0, Lcom/android/camera/component/HdrController$4;->this$0:Lcom/android/camera/component/HdrController;

    #getter for: Lcom/android/camera/component/HdrController;->m_HdrUI:Lcom/android/camera/component/HdrUI;
    invoke-static {v1}, Lcom/android/camera/component/HdrController;->access$000(Lcom/android/camera/component/HdrController;)Lcom/android/camera/component/HdrUI;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/HdrController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/component/HdrController$4;->val$cameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getCommonCaptureHandler()Lcom/android/camera/CameraThread$CommonCaptureHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/CameraThread$CommonCaptureHandler;->onJpegPictureTaken([BLandroid/hardware/Camera;)V

    return-void
.end method
