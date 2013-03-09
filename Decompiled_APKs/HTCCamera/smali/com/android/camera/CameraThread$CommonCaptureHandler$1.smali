.class Lcom/android/camera/CameraThread$CommonCaptureHandler$1;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraThread$CommonCaptureHandler;->takePicture(Lcom/android/camera/CameraThread;Landroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/CameraThread$CommonCaptureHandler;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraThread$CommonCaptureHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/CameraThread$CommonCaptureHandler$1;->this$1:Lcom/android/camera/CameraThread$CommonCaptureHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread$CommonCaptureHandler$1;->this$1:Lcom/android/camera/CameraThread$CommonCaptureHandler;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread$CommonCaptureHandler;->onShutter()V

    return-void
.end method
