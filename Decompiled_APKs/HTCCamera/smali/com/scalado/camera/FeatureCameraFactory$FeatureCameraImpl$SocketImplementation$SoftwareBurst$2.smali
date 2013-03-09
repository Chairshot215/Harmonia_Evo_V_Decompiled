.class Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst$2;
.super Ljava/util/TimerTask;
.source "FeatureCameraFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->onPictureTaken([BLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;


# direct methods
.method constructor <init>(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;)V
    .locals 0

    iput-object p1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst$2;->this$3:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst$2;->this$3:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->this$2:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;
    invoke-static {v0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->access$3(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;)Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->reAddCallbackBuffers()V

    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst$2;->this$3:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->this$2:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;
    invoke-static {v0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->access$3(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;)Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    move-result-object v0

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;
    invoke-static {v0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->access$0(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;)Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    move-result-object v0

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$2(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst$2;->this$3:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;

    invoke-virtual {v0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->capture()V

    return-void
.end method
