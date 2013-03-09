.class public Lcom/scalado/camera/autorama3d/Autorama3D;
.super Ljava/lang/Object;
.source "Autorama3D.java"

# interfaces
.implements Lcom/scalado/camera/Feature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaPreviewImage;,
        Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaImage;,
        Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;,
        Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaFeatureImplementation;,
        Lcom/scalado/camera/autorama3d/Autorama3D$Autorama3DOptions;,
        Lcom/scalado/camera/autorama3d/Autorama3D$Autorama3DListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_NUMBER_OF_IMAGES:I = 0x1e

.field public static final DEFAULT_OUTPUT_FORMAT:Lcom/scalado/camera/autorama3d/OutputFormat; = null

.field private static final DEFAULT_OVERLAP:I = 0x5f

.field private static final READY:I = 0x1

.field private static final RENDERING:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ScaladoCameraFramework"

.field private static final TRACKING:I = 0x2


# instance fields
.field private mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;

.field private mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;

.field private mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;

.field private mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;

.field private mAutorama3DListener:Lcom/scalado/camera/autorama3d/Autorama3D$Autorama3DListener;

.field mAutorama3dOptions:Lcom/scalado/camera/autorama3d/Autorama3D$Autorama3DOptions;

.field private mAutoramaImages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaImage;",
            ">;"
        }
    .end annotation
.end field

.field private mCamera:Lcom/scalado/camera/Camera;

.field private mDoCapture:Z

.field private mFeatureImplementation:Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaFeatureImplementation;

.field private mLens:Lcom/scalado/caps/autorama/Lens;

.field private mNumberOfImages:I

.field private mOutputFormat:Lcom/scalado/camera/autorama3d/OutputFormat;

.field private mOverlap:I

.field private mPreviewCallbackHandler:Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;

.field private mPreviewConfig:Lcom/scalado/base/Image$Config;

.field private mPreviewDimensions:Lcom/scalado/base/Size;

.field private mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

.field private mState:I

.field private mTargetCoordinates:Landroid/graphics/Point;

.field private mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

.field private mTrackerTransform:Lcom/scalado/caps/autorama/Transform;

.field private mWorkerThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/scalado/camera/autorama3d/OutputFormat;->JPS:Lcom/scalado/camera/autorama3d/OutputFormat;

    sput-object v0, Lcom/scalado/camera/autorama3d/Autorama3D;->DEFAULT_OUTPUT_FORMAT:Lcom/scalado/camera/autorama3d/OutputFormat;

    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/autorama/Lens;)V
    .locals 1
    .parameter "lens"

    .prologue
    .line 184
    const/16 v0, 0x1e

    invoke-direct {p0, p1, v0}, Lcom/scalado/camera/autorama3d/Autorama3D;-><init>(Lcom/scalado/caps/autorama/Lens;I)V

    .line 185
    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/autorama/Lens;I)V
    .locals 3
    .parameter "lens"
    .parameter "numberOfImages"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x1e

    .line 164
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/scalado/camera/autorama3d/Autorama3D$Autorama3DOptions;

    invoke-direct {v0, p0}, Lcom/scalado/camera/autorama3d/Autorama3D$Autorama3DOptions;-><init>(Lcom/scalado/camera/autorama3d/Autorama3D;)V

    iput-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mAutorama3dOptions:Lcom/scalado/camera/autorama3d/Autorama3D$Autorama3DOptions;

    .line 70
    const/16 v0, 0x5f

    iput v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mOverlap:I

    .line 71
    iput v1, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mNumberOfImages:I

    .line 72
    sget-object v0, Lcom/scalado/camera/autorama3d/Autorama3D;->DEFAULT_OUTPUT_FORMAT:Lcom/scalado/camera/autorama3d/OutputFormat;

    iput-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mOutputFormat:Lcom/scalado/camera/autorama3d/OutputFormat;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mDoCapture:Z

    .line 86
    new-instance v0, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;

    invoke-direct {v0, p0, v2}, Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;-><init>(Lcom/scalado/camera/autorama3d/Autorama3D;Lcom/scalado/camera/autorama3d/Autorama3D$1;)V

    iput-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mPreviewCallbackHandler:Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;

    .line 165
    iput-object p1, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mLens:Lcom/scalado/caps/autorama/Lens;

    .line 166
    if-lez p2, :cond_0

    .line 167
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, p2}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mAutoramaImages:Ljava/util/Vector;

    .line 168
    iput p2, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mNumberOfImages:I

    .line 173
    :goto_0
    new-instance v0, Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaFeatureImplementation;

    invoke-direct {v0, p0, v2}, Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaFeatureImplementation;-><init>(Lcom/scalado/camera/autorama3d/Autorama3D;Lcom/scalado/camera/autorama3d/Autorama3D$1;)V

    iput-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mFeatureImplementation:Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaFeatureImplementation;

    .line 175
    invoke-direct {p0}, Lcom/scalado/camera/autorama3d/Autorama3D;->reset()V

    .line 176
    return-void

    .line 170
    :cond_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mAutoramaImages:Ljava/util/Vector;

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/autorama3d/OutputFormat;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mOutputFormat:Lcom/scalado/camera/autorama3d/OutputFormat;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/scalado/camera/autorama3d/Autorama3D;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/scalado/camera/autorama3d/Autorama3D;->capture()V

    return-void
.end method

.method static synthetic access$102(Lcom/scalado/camera/autorama3d/Autorama3D;Lcom/scalado/camera/autorama3d/OutputFormat;)Lcom/scalado/camera/autorama3d/OutputFormat;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mOutputFormat:Lcom/scalado/camera/autorama3d/OutputFormat;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mCamera:Lcom/scalado/camera/Camera;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/scalado/camera/autorama3d/Autorama3D;Lcom/scalado/camera/Camera;)Lcom/scalado/camera/Camera;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mCamera:Lcom/scalado/camera/Camera;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/base/Size;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mPreviewDimensions:Lcom/scalado/base/Size;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/scalado/camera/autorama3d/Autorama3D;Lcom/scalado/base/Size;)Lcom/scalado/base/Size;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mPreviewDimensions:Lcom/scalado/base/Size;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/base/Image$Config;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mPreviewConfig:Lcom/scalado/base/Image$Config;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/scalado/camera/autorama3d/Autorama3D;Lcom/scalado/base/Image$Config;)Lcom/scalado/base/Image$Config;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mPreviewConfig:Lcom/scalado/base/Image$Config;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/scalado/camera/autorama3d/Autorama3D;)Landroid/graphics/Point;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mTargetCoordinates:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/scalado/camera/autorama3d/Autorama3D;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mTargetCoordinates:Landroid/graphics/Point;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/scalado/camera/autorama3d/Autorama3D;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mOverlap:I

    return v0
.end method

.method static synthetic access$1600(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/caps/autorama/ViewfinderTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/scalado/camera/autorama3d/Autorama3D;Lcom/scalado/caps/autorama/ViewfinderTracker;)Lcom/scalado/caps/autorama/ViewfinderTracker;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/caps/autorama/Transform;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mTrackerTransform:Lcom/scalado/caps/autorama/Transform;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/scalado/camera/autorama3d/Autorama3D;Lcom/scalado/caps/autorama/Transform;)Lcom/scalado/caps/autorama/Transform;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mTrackerTransform:Lcom/scalado/caps/autorama/Transform;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/scalado/camera/autorama3d/Autorama3D;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mDoCapture:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/scalado/camera/autorama3d/Autorama3D;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mDoCapture:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/scalado/camera/autorama3d/Autorama3D;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mAutoramaImages:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/scalado/camera/autorama3d/Autorama3D;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mNumberOfImages:I

    return v0
.end method

.method static synthetic access$2000(Lcom/scalado/camera/autorama3d/Autorama3D;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/scalado/camera/autorama3d/Autorama3D;->stopTracking()V

    return-void
.end method

.method static synthetic access$202(Lcom/scalado/camera/autorama3d/Autorama3D;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mNumberOfImages:I

    return p1
.end method

.method static synthetic access$2100(Lcom/scalado/camera/autorama3d/Autorama3D;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/scalado/camera/autorama3d/Autorama3D;->panoramaCompleted()V

    return-void
.end method

.method static synthetic access$2200(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/autorama3d/Autorama3D$Autorama3DListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mAutorama3DListener:Lcom/scalado/camera/autorama3d/Autorama3D$Autorama3DListener;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/caps/autorama/Lens;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mLens:Lcom/scalado/caps/autorama/Lens;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/scalado/camera/autorama3d/Autorama3D;Lcom/scalado/caps/autorama/Lens;Lcom/scalado/caps/autorama/Direction;Ljava/util/Vector;)[Lcom/scalado/caps/Session;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/scalado/camera/autorama3d/Autorama3D;->createPanoramaSession(Lcom/scalado/caps/autorama/Lens;Lcom/scalado/caps/autorama/Direction;Ljava/util/Vector;)[Lcom/scalado/caps/Session;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/scalado/camera/autorama3d/Autorama3D;[Lcom/scalado/caps/Session;)[B
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/scalado/camera/autorama3d/Autorama3D;->encodePanorama([Lcom/scalado/caps/Session;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/scalado/camera/autorama3d/Autorama3D;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/scalado/camera/autorama3d/Autorama3D;->reset()V

    return-void
.end method

.method static synthetic access$2802(Lcom/scalado/camera/autorama3d/Autorama3D;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mWorkerThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$400(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Feature$FeatureSocket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

    return-object v0
.end method

.method static synthetic access$402(Lcom/scalado/camera/autorama3d/Autorama3D;Lcom/scalado/camera/Feature$FeatureSocket;)Lcom/scalado/camera/Feature$FeatureSocket;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

    return-object p1
.end method

.method static synthetic access$500(Lcom/scalado/camera/autorama3d/Autorama3D;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mState:I

    return v0
.end method

.method static synthetic access$602(Lcom/scalado/camera/autorama3d/Autorama3D;Lcom/scalado/camera/Camera$ShutterCallback;)Lcom/scalado/camera/Camera$ShutterCallback;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;

    return-object p1
.end method

.method static synthetic access$702(Lcom/scalado/camera/autorama3d/Autorama3D;Lcom/scalado/camera/Camera$PictureCallback;)Lcom/scalado/camera/Camera$PictureCallback;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-object p1
.end method

.method static synthetic access$800(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Camera$PictureCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$802(Lcom/scalado/camera/autorama3d/Autorama3D;Lcom/scalado/camera/Camera$PictureCallback;)Lcom/scalado/camera/Camera$PictureCallback;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-object p1
.end method

.method static synthetic access$900(Lcom/scalado/camera/autorama3d/Autorama3D;)Lcom/scalado/camera/Camera$PictureCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$902(Lcom/scalado/camera/autorama3d/Autorama3D;Lcom/scalado/camera/Camera$PictureCallback;)Lcom/scalado/camera/Camera$PictureCallback;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-object p1
.end method

.method private capture()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 344
    const-string v0, "ScaladoCameraFramework"

    const-string v1, "Start 3D autorama capture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iput-boolean v2, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mDoCapture:Z

    .line 347
    iget v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mState:I

    if-ne v0, v2, :cond_0

    .line 348
    const/4 v0, 0x2

    iput v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mState:I

    .line 349
    iget-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mCamera:Lcom/scalado/camera/Camera;

    invoke-interface {v0}, Lcom/scalado/camera/Camera;->startPreview()V

    .line 350
    invoke-direct {p0}, Lcom/scalado/camera/autorama3d/Autorama3D;->startTracking()V

    .line 352
    :cond_0
    return-void
.end method

.method private createPanoramaSession(Lcom/scalado/caps/autorama/Lens;Lcom/scalado/caps/autorama/Direction;Ljava/util/Vector;)[Lcom/scalado/caps/Session;
    .locals 10
    .parameter "lens"
    .parameter "direction"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/scalado/caps/autorama/Lens;",
            "Lcom/scalado/caps/autorama/Direction;",
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaImage;",
            ">;)[",
            "Lcom/scalado/caps/Session;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p3, sources:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaImage;>;"
    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 541
    const/4 v7, 0x2

    new-array v3, v7, [Lcom/scalado/caps/Session;

    .line 543
    .local v3, sessions:[Lcom/scalado/caps/Session;
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v7

    if-nez v7, :cond_0

    .line 544
    const-string v7, "ScaladoCameraFramework"

    const-string v8, "No sources when rendering autorama. Returning null session"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v6

    .line 588
    .end local v3           #sessions:[Lcom/scalado/caps/Session;
    :goto_0
    return-object v3

    .line 548
    .restart local v3       #sessions:[Lcom/scalado/caps/Session;
    :cond_0
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v7

    if-ne v7, v9, :cond_1

    .line 549
    const-string v6, "ScaladoCameraFramework"

    const-string v7, "Only one source when rendering autorama. Returning session based on this single image."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-virtual {p3, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaImage;

    invoke-virtual {v6}, Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaImage;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    .line 553
    .local v0, decoder:Lcom/scalado/caps/Decoder;
    new-instance v6, Lcom/scalado/caps/Session;

    invoke-direct {v6, v0}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    aput-object v6, v3, v8

    .line 554
    aget-object v6, v3, v8

    aput-object v6, v3, v9

    goto :goto_0

    .line 558
    .end local v0           #decoder:Lcom/scalado/caps/Decoder;
    :cond_1
    sget-object v7, Lcom/scalado/caps/autorama/Direction;->UNKNOWN:Lcom/scalado/caps/autorama/Direction;

    if-ne p2, v7, :cond_2

    .line 559
    const-string v7, "ScaladoCameraFramework"

    const-string v8, "Cannot complete stitch due to Direction UNKNOWN. Returning null session"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v6

    .line 560
    goto :goto_0

    .line 564
    :cond_2
    new-instance v5, Lcom/scalado/caps/autorama/Stitcher;

    invoke-virtual {p3, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaImage;

    invoke-virtual {v6}, Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaImage;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v6

    invoke-direct {v5, p1, v6, p2}, Lcom/scalado/caps/autorama/Stitcher;-><init>(Lcom/scalado/caps/autorama/Lens;Lcom/scalado/base/Size;Lcom/scalado/caps/autorama/Direction;)V

    .line 568
    .local v5, stitcher:Lcom/scalado/caps/autorama/Stitcher;
    sget-object v6, Lcom/scalado/caps/autorama/Stitcher$BlendMode;->LINEAR:Lcom/scalado/caps/autorama/Stitcher$BlendMode;

    new-instance v7, Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;

    invoke-direct {v7, v9, v9}, Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;-><init>(ZZ)V

    invoke-virtual {v5, v6, v7}, Lcom/scalado/caps/autorama/Stitcher;->setBlendMode(Lcom/scalado/caps/autorama/Stitcher$BlendMode;Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;)V

    .line 571
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 573
    :try_start_0
    invoke-virtual {p3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaImage;

    invoke-virtual {v6, v5}, Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaImage;->addToStitcher(Lcom/scalado/caps/autorama/Stitcher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 575
    :catch_0
    move-exception v1

    .line 576
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "ScaladoCameraFramework"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 581
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    new-instance v4, Lcom/scalado/caps/autorama/stereo/StereoPanoramaFromMultiAngle;

    const/4 v6, 0x5

    const/4 v7, 0x4

    invoke-direct {v4, v5, v6, v8, v7}, Lcom/scalado/caps/autorama/stereo/StereoPanoramaFromMultiAngle;-><init>(Lcom/scalado/caps/autorama/Stitcher;III)V

    .line 582
    .local v4, stereoPanorama:Lcom/scalado/caps/autorama/stereo/StereoPanorama;
    invoke-virtual {v4}, Lcom/scalado/caps/autorama/stereo/StereoPanorama;->render()V

    .line 584
    new-instance v6, Lcom/scalado/caps/Session;

    invoke-virtual {v4}, Lcom/scalado/caps/autorama/stereo/StereoPanorama;->getLeftDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    aput-object v6, v3, v8

    .line 585
    new-instance v6, Lcom/scalado/caps/Session;

    invoke-virtual {v4}, Lcom/scalado/caps/autorama/stereo/StereoPanorama;->getRightDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    aput-object v6, v3, v9

    goto/16 :goto_0
.end method

.method private encodePanorama([Lcom/scalado/caps/Session;)[B
    .locals 14
    .parameter "sessions"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 592
    new-instance v7, Lcom/scalado/base/Buffer;

    const/4 v11, 0x1

    invoke-direct {v7, v11}, Lcom/scalado/base/Buffer;-><init>(I)V

    .line 593
    .local v7, outputBuffer:Lcom/scalado/base/Buffer;
    new-instance v8, Lcom/scalado/stream/BufferStream;

    const/4 v11, 0x0

    invoke-direct {v8, v7, v11}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    .line 595
    .local v8, outputStream:Lcom/scalado/stream/BufferStream;
    iget-object v11, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mOutputFormat:Lcom/scalado/camera/autorama3d/OutputFormat;

    sget-object v12, Lcom/scalado/camera/autorama3d/OutputFormat;->MPO:Lcom/scalado/camera/autorama3d/OutputFormat;

    if-ne v11, v12, :cond_0

    .line 596
    new-instance v4, Lcom/scalado/base/Buffer;

    const/4 v11, 0x1

    invoke-direct {v4, v11}, Lcom/scalado/base/Buffer;-><init>(I)V

    .line 597
    .local v4, leftImageJpeg:Lcom/scalado/base/Buffer;
    new-instance v5, Lcom/scalado/stream/BufferStream;

    const/4 v11, 0x0

    invoke-direct {v5, v4, v11}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    .line 598
    .local v5, leftImageStream:Lcom/scalado/stream/BufferStream;
    new-instance v9, Lcom/scalado/base/Buffer;

    const/4 v11, 0x1

    invoke-direct {v9, v11}, Lcom/scalado/base/Buffer;-><init>(I)V

    .line 599
    .local v9, rightImageJpeg:Lcom/scalado/base/Buffer;
    new-instance v10, Lcom/scalado/stream/BufferStream;

    const/4 v11, 0x0

    invoke-direct {v10, v9, v11}, Lcom/scalado/stream/BufferStream;-><init>(Lcom/scalado/base/Buffer;I)V

    .line 602
    .local v10, rightImageStream:Lcom/scalado/stream/BufferStream;
    new-instance v2, Lcom/scalado/caps/codec/encoder/JpegEncoder;

    const/4 v11, 0x0

    aget-object v11, p1, v11

    invoke-virtual {v11}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/scalado/caps/Decoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v11

    invoke-direct {v2, v5, v11}, Lcom/scalado/caps/codec/encoder/JpegEncoder;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;)V

    .line 603
    .local v2, jpegEncoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    const/4 v11, 0x0

    aget-object v11, p1, v11

    invoke-virtual {v11, v2}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v1

    .line 604
    .local v1, iterator:Lcom/scalado/base/Iterator;
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Lcom/scalado/base/Iterator;->step(I)F

    .line 607
    new-instance v2, Lcom/scalado/caps/codec/encoder/JpegEncoder;

    .end local v2           #jpegEncoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    const/4 v11, 0x1

    aget-object v11, p1, v11

    invoke-virtual {v11}, Lcom/scalado/caps/Session;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/scalado/caps/Decoder;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v11

    invoke-direct {v2, v10, v11}, Lcom/scalado/caps/codec/encoder/JpegEncoder;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/base/Size;)V

    .line 608
    .restart local v2       #jpegEncoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    const/4 v11, 0x1

    aget-object v11, p1, v11

    invoke-virtual {v11, v2}, Lcom/scalado/caps/Session;->render(Lcom/scalado/caps/Encoder;)Lcom/scalado/base/Iterator;

    move-result-object v1

    .line 609
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Lcom/scalado/base/Iterator;->step(I)F

    .line 612
    new-instance v6, Lcom/scalado/caps/mpo/Mpo;

    sget-object v11, Lcom/scalado/stream/FileStream$Access;->WRITE:Lcom/scalado/stream/FileStream$Access;

    invoke-direct {v6, v8, v11}, Lcom/scalado/caps/mpo/Mpo;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/stream/FileStream$Access;)V

    .line 613
    .local v6, mpo:Lcom/scalado/caps/mpo/Mpo;
    invoke-virtual {v6, v5}, Lcom/scalado/caps/mpo/Mpo;->addStream(Lcom/scalado/stream/Stream;)V

    .line 614
    invoke-virtual {v6, v10}, Lcom/scalado/caps/mpo/Mpo;->addStream(Lcom/scalado/stream/Stream;)V

    .line 615
    invoke-virtual {v6}, Lcom/scalado/caps/mpo/Mpo;->flush()V

    .line 618
    const/4 v4, 0x0

    .line 619
    const/4 v5, 0x0

    .line 620
    const/4 v9, 0x0

    .line 621
    const/4 v10, 0x0

    .line 622
    const/4 v2, 0x0

    .line 623
    const/4 v1, 0x0

    .line 635
    .end local v1           #iterator:Lcom/scalado/base/Iterator;
    .end local v2           #jpegEncoder:Lcom/scalado/caps/codec/encoder/JpegEncoder;
    .end local v4           #leftImageJpeg:Lcom/scalado/base/Buffer;
    .end local v5           #leftImageStream:Lcom/scalado/stream/BufferStream;
    .end local v6           #mpo:Lcom/scalado/caps/mpo/Mpo;
    .end local v9           #rightImageJpeg:Lcom/scalado/base/Buffer;
    .end local v10           #rightImageStream:Lcom/scalado/stream/BufferStream;
    :goto_0
    invoke-virtual {v7}, Lcom/scalado/base/Buffer;->getSize()I

    move-result v11

    new-array v0, v11, [B

    .line 636
    .local v0, data:[B
    const/4 v11, 0x0

    const/4 v12, 0x0

    array-length v13, v0

    invoke-virtual {v7, v0, v11, v12, v13}, Lcom/scalado/base/Buffer;->get([BIII)V

    .line 638
    .end local v0           #data:[B
    :goto_1
    return-object v0

    .line 625
    :cond_0
    iget-object v11, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mOutputFormat:Lcom/scalado/camera/autorama3d/OutputFormat;

    sget-object v12, Lcom/scalado/camera/autorama3d/OutputFormat;->JPS:Lcom/scalado/camera/autorama3d/OutputFormat;

    if-ne v11, v12, :cond_1

    .line 626
    new-instance v3, Lcom/scalado/caps/stereo/Stereo;

    invoke-direct {v3}, Lcom/scalado/caps/stereo/Stereo;-><init>()V

    .line 627
    .local v3, jps:Lcom/scalado/caps/stereo/Stereo;
    const/4 v11, 0x0

    aget-object v11, p1, v11

    invoke-virtual {v3, v11}, Lcom/scalado/caps/stereo/Stereo;->setLeftEyeSession(Lcom/scalado/caps/Session;)V

    .line 628
    const/4 v11, 0x1

    aget-object v11, p1, v11

    invoke-virtual {v3, v11}, Lcom/scalado/caps/stereo/Stereo;->setRightEyeSession(Lcom/scalado/caps/Session;)V

    .line 629
    invoke-virtual {v3, v8}, Lcom/scalado/caps/stereo/Stereo;->finalizeJps(Lcom/scalado/stream/Stream;)V

    goto :goto_0

    .line 632
    .end local v3           #jps:Lcom/scalado/caps/stereo/Stereo;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private panoramaCompleted()V
    .locals 3

    .prologue
    .line 448
    const-string v0, "ScaladoCameraFramework"

    const-string v1, "Panorama Completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const/4 v0, 0x4

    iput v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mState:I

    .line 452
    iget-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;

    invoke-interface {v0}, Lcom/scalado/camera/Camera$ShutterCallback;->onShutter()V

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;

    if-eqz v0, :cond_1

    .line 457
    iget-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mCamera:Lcom/scalado/camera/Camera;

    invoke-interface {v0, v1, v2}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V

    .line 460
    :cond_1
    new-instance v0, Lcom/scalado/camera/autorama3d/Autorama3D$1;

    invoke-direct {v0, p0}, Lcom/scalado/camera/autorama3d/Autorama3D$1;-><init>(Lcom/scalado/camera/autorama3d/Autorama3D;)V

    iput-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mWorkerThread:Ljava/lang/Thread;

    .line 527
    iget-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mWorkerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 528
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x1

    iput v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mState:I

    .line 269
    iget-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

    invoke-virtual {v0}, Lcom/scalado/caps/autorama/ViewfinderTracker;->reset()V

    .line 273
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mTrackerTransform:Lcom/scalado/caps/autorama/Transform;

    .line 275
    iget-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mAutoramaImages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 276
    return-void
.end method

.method private startTracking()V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

    iget-object v1, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mPreviewCallbackHandler:Lcom/scalado/camera/autorama3d/Autorama3D$PreviewCallbackHandler;

    invoke-interface {v0, v1}, Lcom/scalado/camera/Feature$FeatureSocket;->setFeaturePreviewCallback(Lcom/scalado/camera/Camera$ImageCallback;)V

    .line 359
    return-void
.end method

.method private stopTracking()V
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/scalado/camera/Feature$FeatureSocket;->setFeaturePreviewCallback(Lcom/scalado/camera/Camera$ImageCallback;)V

    .line 368
    :cond_0
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/scalado/camera/autorama3d/Autorama3D;->stopTracking()V

    .line 259
    invoke-direct {p0}, Lcom/scalado/camera/autorama3d/Autorama3D;->reset()V

    .line 260
    invoke-direct {p0}, Lcom/scalado/camera/autorama3d/Autorama3D;->reset()V

    .line 261
    return-void
.end method

.method public getFeatureImplementation()Lcom/scalado/camera/Feature$FeatureImplementation;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mFeatureImplementation:Lcom/scalado/camera/autorama3d/Autorama3D$AutoramaFeatureImplementation;

    return-object v0
.end method

.method public getNumberOfCapturedImages()I
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mAutoramaImages:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 209
    const/4 v0, 0x0

    .line 212
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mAutoramaImages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getOptions()Lcom/scalado/camera/autorama3d/Autorama3D$Autorama3DOptions;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mAutorama3dOptions:Lcom/scalado/camera/autorama3d/Autorama3D$Autorama3DOptions;

    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 226
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 223
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public setListener(Lcom/scalado/camera/autorama3d/Autorama3D$Autorama3DListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mAutorama3DListener:Lcom/scalado/camera/autorama3d/Autorama3D$Autorama3DListener;

    .line 236
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/scalado/camera/autorama3d/Autorama3D;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    const-string v0, "ScaladoCameraFramework"

    const-string v1, "Stopping now."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/scalado/camera/autorama3d/Autorama3D;->mCamera:Lcom/scalado/camera/Camera;

    invoke-interface {v0}, Lcom/scalado/camera/Camera;->stopPreview()V

    .line 247
    invoke-direct {p0}, Lcom/scalado/camera/autorama3d/Autorama3D;->stopTracking()V

    .line 248
    invoke-direct {p0}, Lcom/scalado/camera/autorama3d/Autorama3D;->panoramaCompleted()V

    .line 250
    :cond_0
    return-void
.end method
