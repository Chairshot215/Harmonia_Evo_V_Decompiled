.class public Lcom/android/camera/CameraThread$CommonCaptureHandler;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Lcom/android/camera/ICaptureHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CommonCaptureHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraThread;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/CameraThread$CommonCaptureHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onJpegPictureTaken([BLandroid/hardware/Camera;)V
    .locals 2

    const-string v0, "CameraThread"

    const-string v1, "got JpegPictureCallback..."

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/camera/TIME;->JpegCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v0}, Lcom/android/camera/TIME$Value;->End()V

    sget-object v0, Lcom/android/camera/TIME;->StoreJpegImage:Lcom/android/camera/TIME$Value;

    invoke-virtual {v0}, Lcom/android/camera/TIME$Value;->Start()V

    iget-object v0, p0, Lcom/android/camera/CameraThread$CommonCaptureHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->endTakePicture()V

    iget-object v0, p0, Lcom/android/camera/CameraThread$CommonCaptureHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v0}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraThread$CommonCaptureHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v0}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->showActionScreen()V

    iget-object v0, p0, Lcom/android/camera/CameraThread$CommonCaptureHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCaptureState:I
    invoke-static {v0}, Lcom/android/camera/CameraThread;->access$100(Lcom/android/camera/CameraThread;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraThread$CommonCaptureHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v0}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isUIReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraThread$CommonCaptureHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->startPreview(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraThread$CommonCaptureHandler;->this$0:Lcom/android/camera/CameraThread;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/CameraThread;->storeTakenPicture([BZ)V

    const-string v0, "CameraThread"

    const-string v1, "JpegPictureCallback end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPostviewPictureTaken([BLandroid/hardware/Camera;)V
    .locals 2

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "CameraThread"

    const-string v1, "got PostViewPictureCallback..."

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread$CommonCaptureHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraThread;->createPostViewImage([B)V

    const-string v0, "CameraThread"

    const-string v1, "RawPictureCallback end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRawPictureTaken([BLandroid/hardware/Camera;)V
    .locals 2

    const-string v0, "CameraThread"

    const-string v1, "got RawPictureCallback..."

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/camera/TIME;->RawCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v0}, Lcom/android/camera/TIME$Value;->End()V

    sget-object v0, Lcom/android/camera/TIME;->JpegCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v0}, Lcom/android/camera/TIME$Value;->Start()V

    iget-object v0, p0, Lcom/android/camera/CameraThread$CommonCaptureHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v0}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraThread$CommonCaptureHandler;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v0}, Lcom/android/camera/CameraThread;->access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;

    move-result-object v0

    const/16 v1, 0xfa

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->showActionScreen(I)V

    :cond_0
    const-string v0, "CameraThread"

    const-string v1, "RawPictureCallback end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onShutter()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread$CommonCaptureHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraThread$CommonCaptureHandler;->this$0:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->playShutterSound()V

    :cond_0
    sget-object v0, Lcom/android/camera/TIME;->ShutterCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v0}, Lcom/android/camera/TIME$Value;->End()V

    sget-object v0, Lcom/android/camera/TIME;->RawCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v0}, Lcom/android/camera/TIME$Value;->Start()V

    return-void
.end method

.method public takePicture(Lcom/android/camera/CameraThread;Landroid/hardware/Camera;)V
    .locals 4

    sget-object v0, Lcom/android/camera/TIME;->ShutterCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v0}, Lcom/android/camera/TIME$Value;->Start()V

    new-instance v0, Lcom/android/camera/CameraThread$CommonCaptureHandler$1;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraThread$CommonCaptureHandler$1;-><init>(Lcom/android/camera/CameraThread$CommonCaptureHandler;)V

    new-instance v1, Lcom/android/camera/CameraThread$CommonCaptureHandler$2;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraThread$CommonCaptureHandler$2;-><init>(Lcom/android/camera/CameraThread$CommonCaptureHandler;)V

    new-instance v2, Lcom/android/camera/CameraThread$CommonCaptureHandler$3;

    invoke-direct {v2, p0}, Lcom/android/camera/CameraThread$CommonCaptureHandler$3;-><init>(Lcom/android/camera/CameraThread$CommonCaptureHandler;)V

    new-instance v3, Lcom/android/camera/CameraThread$CommonCaptureHandler$4;

    invoke-direct {v3, p0}, Lcom/android/camera/CameraThread$CommonCaptureHandler$4;-><init>(Lcom/android/camera/CameraThread$CommonCaptureHandler;)V

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    return-void
.end method
