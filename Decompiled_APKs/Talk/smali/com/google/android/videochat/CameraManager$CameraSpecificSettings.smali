.class Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/videochat/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraSpecificSettings"
.end annotation


# instance fields
.field public cameraId:I

.field cameraIsFrontFacing:Z

.field cameraSupports3ALocks:Z

.field haveReadCameraParameters:Z

.field orientation:I

.field public previewSize:Lcom/google/android/videochat/Size;

.field previewSizeIsValid:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->haveReadCameraParameters:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/videochat/CameraManager$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;-><init>()V

    return-void
.end method
