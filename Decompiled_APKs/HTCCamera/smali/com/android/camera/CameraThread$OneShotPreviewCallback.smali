.class final Lcom/android/camera/CameraThread$OneShotPreviewCallback;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OneShotPreviewCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraThread;


# direct methods
.method private constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/CameraThread$OneShotPreviewCallback;->this$0:Lcom/android/camera/CameraThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread$OneShotPreviewCallback;-><init>(Lcom/android/camera/CameraThread;)V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/android/camera/CameraThread$DecodeThread;

    iget-object v1, p0, Lcom/android/camera/CameraThread$OneShotPreviewCallback;->this$0:Lcom/android/camera/CameraThread;

    iget-object v2, p0, Lcom/android/camera/CameraThread$OneShotPreviewCallback;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->Camera_Preview_Width:I
    invoke-static {v2}, Lcom/android/camera/CameraThread;->access$300(Lcom/android/camera/CameraThread;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/CameraThread$OneShotPreviewCallback;->this$0:Lcom/android/camera/CameraThread;

    #getter for: Lcom/android/camera/CameraThread;->Camera_Preview_Height:I
    invoke-static {v3}, Lcom/android/camera/CameraThread;->access$400(Lcom/android/camera/CameraThread;)I

    move-result v3

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/camera/CameraThread$DecodeThread;-><init>(Lcom/android/camera/CameraThread;[BII)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v1, p0, Lcom/android/camera/CameraThread$OneShotPreviewCallback;->this$0:Lcom/android/camera/CameraThread;

    iget-object v1, v1, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v1, v2, v4, v4, v3}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    return-void
.end method
