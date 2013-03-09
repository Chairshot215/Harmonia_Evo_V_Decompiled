.class Lcom/google/android/videochat/CameraManager$FrameOutputParameters;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/videochat/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FrameOutputParameters"
.end annotation


# instance fields
.field public frameRate:I

.field public size:Lcom/google/android/videochat/Size;


# direct methods
.method public constructor <init>(Lcom/google/android/videochat/CameraManager$FrameOutputParameters;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/google/android/videochat/Size;

    iget-object v1, p1, Lcom/google/android/videochat/CameraManager$FrameOutputParameters;->size:Lcom/google/android/videochat/Size;

    invoke-direct {v0, v1}, Lcom/google/android/videochat/Size;-><init>(Lcom/google/android/videochat/Size;)V

    iput-object v0, p0, Lcom/google/android/videochat/CameraManager$FrameOutputParameters;->size:Lcom/google/android/videochat/Size;

    .line 59
    iget v0, p1, Lcom/google/android/videochat/CameraManager$FrameOutputParameters;->frameRate:I

    iput v0, p0, Lcom/google/android/videochat/CameraManager$FrameOutputParameters;->frameRate:I

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/google/android/videochat/Size;I)V
    .locals 0
    .parameter "s"
    .parameter "fps"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/android/videochat/CameraManager$FrameOutputParameters;->size:Lcom/google/android/videochat/Size;

    .line 55
    iput p2, p0, Lcom/google/android/videochat/CameraManager$FrameOutputParameters;->frameRate:I

    .line 56
    return-void
.end method
