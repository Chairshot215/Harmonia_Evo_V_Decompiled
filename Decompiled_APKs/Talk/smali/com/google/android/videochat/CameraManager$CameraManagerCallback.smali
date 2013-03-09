.class interface abstract Lcom/google/android/videochat/CameraManager$CameraManagerCallback;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/videochat/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "CameraManagerCallback"
.end annotation


# virtual methods
.method public abstract getCaptureSizeForCamera(Ljava/util/List;)Lcom/google/android/videochat/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Lcom/google/android/videochat/Size;"
        }
    .end annotation
.end method

.method public abstract onCameraOpen(Lcom/google/android/videochat/Size;IZ)V
.end method

.method public abstract onFrameOutputSet(Lcom/google/android/videochat/CameraManager$FrameOutputParameters;)V
.end method
