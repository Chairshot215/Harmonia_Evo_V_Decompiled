.class public Lcom/google/android/videochat/CameraInterface;
.super Ljava/lang/Object;
.source "CameraInterface.java"


# instance fields
.field private mCameraManager:Lcom/google/android/videochat/CameraManager;


# direct methods
.method constructor <init>(Lcom/google/android/videochat/CameraManager;)V
    .locals 0
    .parameter "cm"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/google/android/videochat/CameraInterface;->mCameraManager:Lcom/google/android/videochat/CameraManager;

    .line 18
    return-void
.end method


# virtual methods
.method public arePreview3ALocksSupported()Z
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/videochat/CameraInterface;->mCameraManager:Lcom/google/android/videochat/CameraManager;

    invoke-virtual {v0}, Lcom/google/android/videochat/CameraManager;->arePreview3ALocksSupported()Z

    move-result v0

    return v0
.end method

.method public getCurrentCameraId()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/videochat/CameraInterface;->mCameraManager:Lcom/google/android/videochat/CameraManager;

    invoke-virtual {v0}, Lcom/google/android/videochat/CameraManager;->getCurrentCameraId()I

    move-result v0

    return v0
.end method

.method public setPreview3ALocks(Z)V
    .locals 1
    .parameter "toggle"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/videochat/CameraInterface;->mCameraManager:Lcom/google/android/videochat/CameraManager;

    invoke-virtual {v0, p1}, Lcom/google/android/videochat/CameraManager;->setPreview3ALocks(Z)V

    .line 51
    return-void
.end method

.method public suspendCamera()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/videochat/CameraInterface;->mCameraManager:Lcom/google/android/videochat/CameraManager;

    invoke-virtual {v0}, Lcom/google/android/videochat/CameraManager;->suspendCamera()V

    .line 40
    return-void
.end method

.method public useCamera(Lcom/google/android/videochat/CameraSpecification;)V
    .locals 1
    .parameter "camera"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/videochat/CameraInterface;->mCameraManager:Lcom/google/android/videochat/CameraManager;

    invoke-virtual {v0, p1}, Lcom/google/android/videochat/CameraManager;->useCamera(Lcom/google/android/videochat/CameraSpecification;)V

    .line 26
    return-void
.end method
