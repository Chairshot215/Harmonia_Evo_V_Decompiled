.class public Lcom/scalado/camera/autorama/Autorama;
.super Ljava/lang/Object;
.source "Autorama.java"

# interfaces
.implements Lcom/scalado/camera/Feature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/camera/autorama/Autorama$3;,
        Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;,
        Lcom/scalado/camera/autorama/Autorama$PostviewCallbackHandler;,
        Lcom/scalado/camera/autorama/Autorama$ShutterCallbackHandler;,
        Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;,
        Lcom/scalado/camera/autorama/Autorama$AutoramaFeatureImplementation;,
        Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;,
        Lcom/scalado/camera/autorama/Autorama$State;,
        Lcom/scalado/camera/autorama/Autorama$AutoramaPostviewImage;,
        Lcom/scalado/camera/autorama/Autorama$AutoramaJpegImage;,
        Lcom/scalado/camera/autorama/Autorama$AutoramaImage;,
        Lcom/scalado/camera/autorama/Autorama$AutoramaListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_DIRECTION_TRIGGER:I = 0xa

.field public static final DEFAULT_MAX_DEVIATION:I = 0x64

.field public static final DEFAULT_OVERLAP:I = 0x2d

.field private static final TAG:Ljava/lang/String; = "ScaladoCameraFramework"


# instance fields
.field private mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;

.field private mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;

.field private mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;

.field private mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;

.field private mAutoramaImages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/camera/autorama/Autorama$AutoramaImage;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

.field mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

.field private mAutoramaPostviewImages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/camera/autorama/Autorama$AutoramaImage;",
            ">;"
        }
    .end annotation
.end field

.field private mCamera:Lcom/scalado/camera/Camera;

.field private mCapturedImages:I

.field private mDirection:Lcom/scalado/caps/autorama/Direction;

.field private mFeatureImplementation:Lcom/scalado/camera/Feature$FeatureImplementation;

.field private mJpegCallbackHandler:Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;

.field private mLastPreviewImage:Lcom/scalado/base/Image;

.field private mLens:Lcom/scalado/caps/autorama/Lens;

.field private mPostviewCallbackHandler:Lcom/scalado/camera/autorama/Autorama$PostviewCallbackHandler;

.field private mPreviewCallbackHandler:Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;

.field private mPreviewConfig:Lcom/scalado/base/Image$Config;

.field private mPreviewDimensions:Lcom/scalado/base/Size;

.field private mShutterCallbackHandler:Lcom/scalado/camera/autorama/Autorama$ShutterCallbackHandler;

.field private mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

.field private mState:Lcom/scalado/camera/autorama/Autorama$State;

.field private mStopRequested:Z

.field private mTargetCoordinates:Landroid/graphics/Point;

.field private mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

.field private mTrackerTransform:Lcom/scalado/caps/autorama/Transform;

.field mTrackingX:F

.field mTrackingY:F

.field private mWorkerThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/scalado/caps/autorama/Lens;)V
    .locals 4
    .parameter "lens"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 468
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 231
    new-instance v0, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    invoke-direct {v0, p0}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;-><init>(Lcom/scalado/camera/autorama/Autorama;)V

    iput-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    .line 244
    new-instance v0, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;

    invoke-direct {v0, p0, v1}, Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;-><init>(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/autorama/Autorama$1;)V

    iput-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mPreviewCallbackHandler:Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;

    .line 245
    new-instance v0, Lcom/scalado/camera/autorama/Autorama$ShutterCallbackHandler;

    invoke-direct {v0, p0, v1}, Lcom/scalado/camera/autorama/Autorama$ShutterCallbackHandler;-><init>(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/autorama/Autorama$1;)V

    iput-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mShutterCallbackHandler:Lcom/scalado/camera/autorama/Autorama$ShutterCallbackHandler;

    .line 246
    new-instance v0, Lcom/scalado/camera/autorama/Autorama$PostviewCallbackHandler;

    invoke-direct {v0, p0, v1}, Lcom/scalado/camera/autorama/Autorama$PostviewCallbackHandler;-><init>(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/autorama/Autorama$1;)V

    iput-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mPostviewCallbackHandler:Lcom/scalado/camera/autorama/Autorama$PostviewCallbackHandler;

    .line 247
    new-instance v0, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;

    invoke-direct {v0, p0, v1}, Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;-><init>(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/autorama/Autorama$1;)V

    iput-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mJpegCallbackHandler:Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;

    .line 254
    iput v2, p0, Lcom/scalado/camera/autorama/Autorama;->mTrackingX:F

    .line 255
    iput v2, p0, Lcom/scalado/camera/autorama/Autorama;->mTrackingY:F

    .line 469
    if-nez p1, :cond_0

    .line 470
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Lens must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 472
    :cond_0
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mLens:Lcom/scalado/caps/autorama/Lens;

    .line 473
    sget-object v0, Lcom/scalado/caps/autorama/Direction;->UNKNOWN:Lcom/scalado/caps/autorama/Direction;

    iput-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;

    .line 474
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v3}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaImages:Ljava/util/Vector;

    .line 475
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v3}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaPostviewImages:Ljava/util/Vector;

    .line 477
    new-instance v0, Lcom/scalado/camera/autorama/Autorama$AutoramaFeatureImplementation;

    invoke-direct {v0, p0, v1}, Lcom/scalado/camera/autorama/Autorama$AutoramaFeatureImplementation;-><init>(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/autorama/Autorama$1;)V

    iput-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mFeatureImplementation:Lcom/scalado/camera/Feature$FeatureImplementation;

    .line 479
    invoke-direct {p0}, Lcom/scalado/camera/autorama/Autorama;->reset()V

    .line 480
    return-void
.end method

.method static synthetic access$1000(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mCamera:Lcom/scalado/camera/Camera;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/Camera;)Lcom/scalado/camera/Camera;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mCamera:Lcom/scalado/camera/Camera;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Lens;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mLens:Lcom/scalado/caps/autorama/Lens;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/caps/autorama/Lens;Lcom/scalado/caps/autorama/Direction;Ljava/util/Vector;)Lcom/scalado/caps/Session;
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
    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/scalado/camera/autorama/Autorama;->createPanoramaSession(Lcom/scalado/caps/autorama/Lens;Lcom/scalado/caps/autorama/Direction;Ljava/util/Vector;)Lcom/scalado/caps/Session;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera$PictureCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/Camera$PictureCallback;)Lcom/scalado/camera/Camera$PictureCallback;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Camera$PictureCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/Camera$PictureCallback;)Lcom/scalado/camera/Camera$PictureCallback;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$AutoramaListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Size;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mPreviewDimensions:Lcom/scalado/base/Size;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/base/Size;)Lcom/scalado/base/Size;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mPreviewDimensions:Lcom/scalado/base/Size;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/base/Image$Config;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mPreviewConfig:Lcom/scalado/base/Image$Config;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/base/Image$Config;)Lcom/scalado/base/Image$Config;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mPreviewConfig:Lcom/scalado/base/Image$Config;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/scalado/camera/autorama/Autorama;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/scalado/camera/autorama/Autorama;->reset()V

    return-void
.end method

.method static synthetic access$1902(Lcom/scalado/camera/autorama/Autorama;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mWorkerThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/Feature$FeatureSocket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/Feature$FeatureSocket;)Lcom/scalado/camera/Feature$FeatureSocket;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/camera/autorama/Autorama$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mState:Lcom/scalado/camera/autorama/Autorama$State;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/autorama/Autorama$State;)Lcom/scalado/camera/autorama/Autorama$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mState:Lcom/scalado/camera/autorama/Autorama$State;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/Camera$ShutterCallback;)Lcom/scalado/camera/Camera$ShutterCallback;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/camera/Camera$PictureCallback;)Lcom/scalado/camera/Camera$PictureCallback;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/scalado/camera/autorama/Autorama;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/scalado/camera/autorama/Autorama;->capture()V

    return-void
.end method

.method static synthetic access$2902(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/base/Image;)Lcom/scalado/base/Image;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mLastPreviewImage:Lcom/scalado/base/Image;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/ViewfinderTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/caps/autorama/ViewfinderTracker;)Lcom/scalado/caps/autorama/ViewfinderTracker;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Transform;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mTrackerTransform:Lcom/scalado/caps/autorama/Transform;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/caps/autorama/Transform;)Lcom/scalado/caps/autorama/Transform;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mTrackerTransform:Lcom/scalado/caps/autorama/Transform;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/scalado/camera/autorama/Autorama;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaPostviewImages:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/scalado/camera/autorama/Autorama;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/scalado/camera/autorama/Autorama;->restartPreview()V

    return-void
.end method

.method static synthetic access$3800(Lcom/scalado/camera/autorama/Autorama;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/scalado/camera/autorama/Autorama;->mStopRequested:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/scalado/camera/autorama/Autorama;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/scalado/camera/autorama/Autorama;->stopTracking()V

    return-void
.end method

.method static synthetic access$4000(Lcom/scalado/camera/autorama/Autorama;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/scalado/camera/autorama/Autorama;->panoramaCompleted()V

    return-void
.end method

.method static synthetic access$4100(Lcom/scalado/camera/autorama/Autorama;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/scalado/camera/autorama/Autorama;->startTracking()V

    return-void
.end method

.method static synthetic access$500(Lcom/scalado/camera/autorama/Autorama;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaImages:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$600(Lcom/scalado/camera/autorama/Autorama;)Lcom/scalado/caps/autorama/Direction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;

    return-object v0
.end method

.method static synthetic access$602(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/caps/autorama/Direction;)Lcom/scalado/caps/autorama/Direction;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;

    return-object p1
.end method

.method static synthetic access$700(Lcom/scalado/camera/autorama/Autorama;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/scalado/camera/autorama/Autorama;->mCapturedImages:I

    return v0
.end method

.method static synthetic access$708(Lcom/scalado/camera/autorama/Autorama;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/scalado/camera/autorama/Autorama;->mCapturedImages:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/scalado/camera/autorama/Autorama;->mCapturedImages:I

    return v0
.end method

.method static synthetic access$800(Lcom/scalado/camera/autorama/Autorama;)Landroid/graphics/Point;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mTargetCoordinates:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$802(Lcom/scalado/camera/autorama/Autorama;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mTargetCoordinates:Landroid/graphics/Point;

    return-object p1
.end method

.method private capture()V
    .locals 5

    .prologue
    .line 673
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mState:Lcom/scalado/camera/autorama/Autorama$State;

    sget-object v1, Lcom/scalado/camera/autorama/Autorama$State;->CAPTURING:Lcom/scalado/camera/autorama/Autorama$State;

    if-ne v0, v1, :cond_0

    .line 674
    const-string v0, "ScaladoCameraFramework"

    const-string v1, "Autorama can not capture, already capturing. "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :goto_0
    return-void

    .line 678
    :cond_0
    const-string v0, "ScaladoCameraFramework"

    const-string v1, "Start autorama capture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    sget-object v0, Lcom/scalado/camera/autorama/Autorama$State;->CAPTURING:Lcom/scalado/camera/autorama/Autorama$State;

    iput-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mState:Lcom/scalado/camera/autorama/Autorama$State;

    .line 680
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    if-eqz v0, :cond_1

    .line 681
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    iget-object v1, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaImages:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/scalado/camera/autorama/Autorama$AutoramaListener;->onIntermediateCaptureStart(I)V

    .line 684
    :cond_1
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

    iget-object v1, p0, Lcom/scalado/camera/autorama/Autorama;->mShutterCallbackHandler:Lcom/scalado/camera/autorama/Autorama$ShutterCallbackHandler;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/scalado/camera/autorama/Autorama;->mPostviewCallbackHandler:Lcom/scalado/camera/autorama/Autorama$PostviewCallbackHandler;

    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama;->mJpegCallbackHandler:Lcom/scalado/camera/autorama/Autorama$JpegCallbackhandler;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/scalado/camera/Feature$FeatureSocket;->doTakePicture(Lcom/scalado/camera/Camera$ShutterCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;)V

    goto :goto_0
.end method

.method private createPanoramaSession(Lcom/scalado/caps/autorama/Lens;Lcom/scalado/caps/autorama/Direction;Ljava/util/Vector;)Lcom/scalado/caps/Session;
    .locals 11
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
            "Lcom/scalado/camera/autorama/Autorama$AutoramaImage;",
            ">;)",
            "Lcom/scalado/caps/Session;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p3, sources:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/scalado/camera/autorama/Autorama$AutoramaImage;>;"
    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 790
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v7

    if-nez v7, :cond_0

    .line 791
    const-string v7, "ScaladoCameraFramework"

    const-string v8, "No sources when rendering autorama. Returning null session"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :goto_0
    return-object v5

    .line 795
    :cond_0
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 796
    const-string v7, "ScaladoCameraFramework"

    const-string v8, "Only one source when rendering autorama. Returning session based on this single image."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    invoke-virtual {p3, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/scalado/camera/autorama/Autorama$AutoramaImage;

    invoke-virtual {v7}, Lcom/scalado/camera/autorama/Autorama$AutoramaImage;->getDecoder()Lcom/scalado/caps/Decoder;

    move-result-object v0

    .line 800
    .local v0, decoder:Lcom/scalado/caps/Decoder;
    new-instance v5, Lcom/scalado/caps/Session;

    invoke-direct {v5, v0}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    .line 801
    .local v5, session:Lcom/scalado/caps/Session;
    goto :goto_0

    .line 804
    .end local v0           #decoder:Lcom/scalado/caps/Decoder;
    .end local v5           #session:Lcom/scalado/caps/Session;
    :cond_1
    sget-object v7, Lcom/scalado/caps/autorama/Direction;->UNKNOWN:Lcom/scalado/caps/autorama/Direction;

    if-ne p2, v7, :cond_2

    .line 805
    const-string v7, "ScaladoCameraFramework"

    const-string v8, "Cannot complete stitch due to Direction UNKNOWN. Returning null session"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 810
    :cond_2
    new-instance v6, Lcom/scalado/caps/autorama/Stitcher;

    invoke-virtual {p3, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/scalado/camera/autorama/Autorama$AutoramaImage;

    invoke-virtual {v7}, Lcom/scalado/camera/autorama/Autorama$AutoramaImage;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v7

    invoke-direct {v6, p1, v7, p2}, Lcom/scalado/caps/autorama/Stitcher;-><init>(Lcom/scalado/caps/autorama/Lens;Lcom/scalado/base/Size;Lcom/scalado/caps/autorama/Direction;)V

    .line 813
    .local v6, stitcher:Lcom/scalado/caps/autorama/Stitcher;
    sget-object v7, Lcom/scalado/caps/autorama/Direction;->LEFT:Lcom/scalado/caps/autorama/Direction;

    if-eq p2, v7, :cond_3

    sget-object v7, Lcom/scalado/caps/autorama/Direction;->RIGHT:Lcom/scalado/caps/autorama/Direction;

    if-ne p2, v7, :cond_4

    .line 814
    :cond_3
    iget-object v7, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mBlendMode:Lcom/scalado/caps/autorama/Stitcher$BlendMode;
    invoke-static {v7}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$2000(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)Lcom/scalado/caps/autorama/Stitcher$BlendMode;

    move-result-object v7

    new-instance v8, Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;

    iget-object v9, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mIntensityCompensation:Z
    invoke-static {v9}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$2100(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)Z

    move-result v9

    iget-object v10, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mColorCompensation:Z
    invoke-static {v10}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$2200(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)Z

    move-result v10

    invoke-direct {v8, v9, v10}, Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;-><init>(ZZ)V

    invoke-virtual {v6, v7, v8}, Lcom/scalado/caps/autorama/Stitcher;->setBlendMode(Lcom/scalado/caps/autorama/Stitcher$BlendMode;Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;)V

    .line 821
    :goto_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v2, v7, :cond_5

    .line 823
    :try_start_0
    invoke-virtual {p3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/scalado/camera/autorama/Autorama$AutoramaImage;

    invoke-virtual {v7, v6}, Lcom/scalado/camera/autorama/Autorama$AutoramaImage;->addToStitcher(Lcom/scalado/caps/autorama/Stitcher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 817
    .end local v2           #i:I
    :cond_4
    sget-object v7, Lcom/scalado/caps/autorama/Stitcher$BlendMode;->LINEAR:Lcom/scalado/caps/autorama/Stitcher$BlendMode;

    new-instance v8, Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;

    iget-object v9, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mIntensityCompensation:Z
    invoke-static {v9}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$2100(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)Z

    move-result v9

    iget-object v10, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mColorCompensation:Z
    invoke-static {v10}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$2200(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)Z

    move-result v10

    invoke-direct {v8, v9, v10}, Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;-><init>(ZZ)V

    invoke-virtual {v6, v7, v8}, Lcom/scalado/caps/autorama/Stitcher;->setBlendMode(Lcom/scalado/caps/autorama/Stitcher$BlendMode;Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;)V

    goto :goto_1

    .line 825
    .restart local v2       #i:I
    :catch_0
    move-exception v1

    .line 826
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "ScaladoCameraFramework"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 831
    .end local v1           #e:Ljava/lang/Exception;
    :cond_5
    invoke-static {v6}, Lcom/scalado/caps/autorama/PanoramaDecoder;->create(Lcom/scalado/caps/autorama/Stitcher;)Lcom/scalado/base/Iterator;

    move-result-object v3

    .line 833
    .local v3, iterator:Lcom/scalado/base/Iterator;
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v3, v7}, Lcom/scalado/base/Iterator;->step(I)F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 838
    :goto_4
    invoke-virtual {v3}, Lcom/scalado/base/Iterator;->getObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/scalado/caps/autorama/PanoramaDecoder;

    .line 841
    .local v4, panoramaDecoder:Lcom/scalado/caps/autorama/PanoramaDecoder;
    new-instance v5, Lcom/scalado/caps/Session;

    invoke-direct {v5, v4}, Lcom/scalado/caps/Session;-><init>(Lcom/scalado/caps/Decoder;)V

    goto/16 :goto_0

    .line 835
    .end local v4           #panoramaDecoder:Lcom/scalado/caps/autorama/PanoramaDecoder;
    :catch_1
    move-exception v1

    .line 836
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v7, "ScaladoCameraFramework"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private panoramaCompleted()V
    .locals 3

    .prologue
    .line 688
    const-string v0, "ScaladoCameraFramework"

    const-string v1, "Panorama Completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    sget-object v0, Lcom/scalado/camera/autorama/Autorama$State;->RENDERING:Lcom/scalado/camera/autorama/Autorama$State;

    iput-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mState:Lcom/scalado/camera/autorama/Autorama$State;

    .line 692
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;

    invoke-interface {v0}, Lcom/scalado/camera/Camera$ShutterCallback;->onShutter()V

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;

    if-eqz v0, :cond_1

    .line 697
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/scalado/camera/autorama/Autorama;->mCamera:Lcom/scalado/camera/Camera;

    invoke-interface {v0, v1, v2}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V

    .line 700
    :cond_1
    new-instance v0, Lcom/scalado/camera/autorama/Autorama$2;

    invoke-direct {v0, p0}, Lcom/scalado/camera/autorama/Autorama$2;-><init>(Lcom/scalado/camera/autorama/Autorama;)V

    iput-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mWorkerThread:Ljava/lang/Thread;

    .line 775
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mWorkerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 776
    return-void
.end method

.method private reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 849
    sget-object v0, Lcom/scalado/camera/autorama/Autorama$State;->READY:Lcom/scalado/camera/autorama/Autorama$State;

    iput-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mState:Lcom/scalado/camera/autorama/Autorama$State;

    .line 850
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    #getter for: Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->mDetectDirectionAutomatically:Z
    invoke-static {v0}, Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;->access$2300(Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 851
    sget-object v0, Lcom/scalado/caps/autorama/Direction;->UNKNOWN:Lcom/scalado/caps/autorama/Direction;

    iput-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;

    .line 853
    :cond_0
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

    if-eqz v0, :cond_1

    .line 854
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mTracker:Lcom/scalado/caps/autorama/ViewfinderTracker;

    invoke-virtual {v0}, Lcom/scalado/caps/autorama/ViewfinderTracker;->reset()V

    .line 856
    :cond_1
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaImages:Ljava/util/Vector;

    if-eqz v0, :cond_2

    .line 857
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaImages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 859
    :cond_2
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaPostviewImages:Ljava/util/Vector;

    if-eqz v0, :cond_3

    .line 860
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaPostviewImages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 862
    :cond_3
    iput v1, p0, Lcom/scalado/camera/autorama/Autorama;->mCapturedImages:I

    .line 863
    iput-boolean v1, p0, Lcom/scalado/camera/autorama/Autorama;->mStopRequested:Z

    .line 864
    return-void
.end method

.method private restartPreview()V
    .locals 4

    .prologue
    .line 641
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 642
    .local v0, timer:Ljava/util/Timer;
    new-instance v1, Lcom/scalado/camera/autorama/Autorama$1;

    invoke-direct {v1, p0}, Lcom/scalado/camera/autorama/Autorama$1;-><init>(Lcom/scalado/camera/autorama/Autorama;)V

    .line 650
    .local v1, timerTask:Ljava/util/TimerTask;
    const-wide/16 v2, 0x19

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 651
    return-void
.end method

.method private startTracking()V
    .locals 2

    .prologue
    .line 657
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

    iget-object v1, p0, Lcom/scalado/camera/autorama/Autorama;->mPreviewCallbackHandler:Lcom/scalado/camera/autorama/Autorama$PreviewCallbackHandler;

    invoke-interface {v0, v1}, Lcom/scalado/camera/Feature$FeatureSocket;->setFeaturePreviewCallback(Lcom/scalado/camera/Camera$ImageCallback;)V

    .line 658
    return-void
.end method

.method private stopTracking()V
    .locals 2

    .prologue
    .line 664
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/scalado/camera/Feature$FeatureSocket;->setFeaturePreviewCallback(Lcom/scalado/camera/Camera$ImageCallback;)V

    .line 667
    :cond_0
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 3

    .prologue
    .line 544
    iget-object v1, p0, Lcom/scalado/camera/autorama/Autorama;->mWorkerThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/scalado/camera/autorama/Autorama;->mWorkerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/scalado/camera/autorama/Autorama;->mWorkerThread:Ljava/lang/Thread;

    if-eq v1, v2, :cond_0

    .line 546
    :try_start_0
    iget-object v1, p0, Lcom/scalado/camera/autorama/Autorama;->mWorkerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/scalado/camera/autorama/Autorama;->stopTracking()V

    .line 553
    invoke-direct {p0}, Lcom/scalado/camera/autorama/Autorama;->reset()V

    .line 554
    return-void

    .line 547
    :catch_0
    move-exception v0

    .line 549
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDirection()Lcom/scalado/caps/autorama/Direction;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;

    invoke-virtual {v0}, Lcom/scalado/caps/autorama/Direction;->clone()Lcom/scalado/caps/autorama/Direction;

    move-result-object v0

    return-object v0
.end method

.method public getFeatureImplementation()Lcom/scalado/camera/Feature$FeatureImplementation;
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mFeatureImplementation:Lcom/scalado/camera/Feature$FeatureImplementation;

    return-object v0
.end method

.method public getLowResolutionPanorama(Z)Lcom/scalado/caps/Session;
    .locals 7
    .parameter "includeLatestPreview"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 582
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaImages:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v4, v5, :cond_0

    .line 583
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Must wait until at least 1 image has been captured"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 586
    :cond_0
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaPostviewImages:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Vector;

    .line 588
    .local v2, images:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/scalado/camera/autorama/Autorama$AutoramaImage;>;"
    iget-object v1, p0, Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;

    .line 590
    .local v1, direction:Lcom/scalado/caps/autorama/Direction;
    if-eqz p1, :cond_7

    .line 592
    sget-object v4, Lcom/scalado/caps/autorama/Direction;->UNKNOWN:Lcom/scalado/caps/autorama/Direction;

    if-ne v1, v4, :cond_1

    .line 593
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama;->mTrackerTransform:Lcom/scalado/caps/autorama/Transform;

    invoke-virtual {v4, v5}, Lcom/scalado/caps/autorama/Transform;->getDirection(I)Lcom/scalado/caps/autorama/Direction;

    move-result-object v1

    .line 596
    :cond_1
    sget-object v4, Lcom/scalado/caps/autorama/Direction;->UNKNOWN:Lcom/scalado/caps/autorama/Direction;

    if-eq v1, v4, :cond_b

    .line 597
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama;->mLastPreviewImage:Lcom/scalado/base/Image;

    if-eqz v4, :cond_a

    .line 599
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;

    sget-object v5, Lcom/scalado/caps/autorama/Direction;->DOWN:Lcom/scalado/caps/autorama/Direction;

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;

    sget-object v5, Lcom/scalado/caps/autorama/Direction;->UP:Lcom/scalado/caps/autorama/Direction;

    if-ne v4, v5, :cond_8

    :cond_2
    iget v3, p0, Lcom/scalado/camera/autorama/Autorama;->mTrackingY:F

    .line 600
    .local v3, relevantTrackingCoordinate:F
    :goto_0
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;

    sget-object v5, Lcom/scalado/caps/autorama/Direction;->LEFT:Lcom/scalado/caps/autorama/Direction;

    if-eq v4, v5, :cond_3

    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;

    sget-object v5, Lcom/scalado/caps/autorama/Direction;->UP:Lcom/scalado/caps/autorama/Direction;

    if-ne v4, v5, :cond_4

    :cond_3
    cmpg-float v4, v3, v6

    if-ltz v4, :cond_6

    :cond_4
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;

    sget-object v5, Lcom/scalado/caps/autorama/Direction;->RIGHT:Lcom/scalado/caps/autorama/Direction;

    if-eq v4, v5, :cond_5

    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama;->mDirection:Lcom/scalado/caps/autorama/Direction;

    sget-object v5, Lcom/scalado/caps/autorama/Direction;->DOWN:Lcom/scalado/caps/autorama/Direction;

    if-ne v4, v5, :cond_9

    :cond_5
    cmpl-float v4, v3, v6

    if-lez v4, :cond_9

    .line 602
    :cond_6
    new-instance v0, Lcom/scalado/camera/autorama/Autorama$AutoramaPostviewImage;

    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama;->mLastPreviewImage:Lcom/scalado/base/Image;

    iget-object v5, p0, Lcom/scalado/camera/autorama/Autorama;->mTrackerTransform:Lcom/scalado/caps/autorama/Transform;

    invoke-direct {v0, p0, v4, v5}, Lcom/scalado/camera/autorama/Autorama$AutoramaPostviewImage;-><init>(Lcom/scalado/camera/autorama/Autorama;Lcom/scalado/base/Image;Lcom/scalado/caps/autorama/Transform;)V

    .line 603
    .local v0, autoramaImage:Lcom/scalado/camera/autorama/Autorama$AutoramaPostviewImage;
    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 618
    .end local v0           #autoramaImage:Lcom/scalado/camera/autorama/Autorama$AutoramaPostviewImage;
    .end local v3           #relevantTrackingCoordinate:F
    :cond_7
    :goto_1
    iget-object v4, p0, Lcom/scalado/camera/autorama/Autorama;->mLens:Lcom/scalado/caps/autorama/Lens;

    invoke-direct {p0, v4, v1, v2}, Lcom/scalado/camera/autorama/Autorama;->createPanoramaSession(Lcom/scalado/caps/autorama/Lens;Lcom/scalado/caps/autorama/Direction;Ljava/util/Vector;)Lcom/scalado/caps/Session;

    move-result-object v4

    return-object v4

    .line 599
    :cond_8
    iget v3, p0, Lcom/scalado/camera/autorama/Autorama;->mTrackingX:F

    goto :goto_0

    .line 606
    .restart local v3       #relevantTrackingCoordinate:F
    :cond_9
    const-string v4, "ScaladoCameraFramework"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLowResolutionPanorama: Skipping last preview frame because to little translation in determined direction: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 610
    .end local v3           #relevantTrackingCoordinate:F
    :cond_a
    const-string v4, "ScaladoCameraFramework"

    const-string v5, "getLowResolutionPanorama: No last preview image found"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 614
    :cond_b
    const-string v4, "ScaladoCameraFramework"

    const-string v5, "getLowResolutionPanorama: Direction unknown"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getNumberOfCapturedImages()I
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaImages:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 629
    const/4 v0, 0x0

    .line 632
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaImages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getOptions()Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaOptions:Lcom/scalado/camera/autorama/Autorama$AutoramaOptions;

    return-object v0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 561
    sget-object v0, Lcom/scalado/camera/autorama/Autorama$3;->$SwitchMap$com$scalado$camera$autorama$Autorama$State:[I

    iget-object v1, p0, Lcom/scalado/camera/autorama/Autorama;->mState:Lcom/scalado/camera/autorama/Autorama$State;

    invoke-virtual {v1}, Lcom/scalado/camera/autorama/Autorama$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 567
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 564
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 561
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setListener(Lcom/scalado/camera/autorama/Autorama$AutoramaListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 504
    iput-object p1, p0, Lcom/scalado/camera/autorama/Autorama;->mAutoramaListener:Lcom/scalado/camera/autorama/Autorama$AutoramaListener;

    .line 505
    return-void
.end method

.method public stop(Z)V
    .locals 3
    .parameter "takeOneLastPicture"

    .prologue
    const/4 v2, 0x1

    .line 515
    invoke-virtual {p0}, Lcom/scalado/camera/autorama/Autorama;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mState:Lcom/scalado/camera/autorama/Autorama$State;

    sget-object v1, Lcom/scalado/camera/autorama/Autorama$State;->CAPTURING:Lcom/scalado/camera/autorama/Autorama$State;

    if-ne v0, v1, :cond_1

    .line 517
    iput-boolean v2, p0, Lcom/scalado/camera/autorama/Autorama;->mStopRequested:Z

    .line 518
    const-string v0, "ScaladoCameraFramework"

    const-string v1, "Currently capturing. Will stop when capture completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 521
    :cond_1
    if-eqz p1, :cond_2

    .line 522
    const-string v0, "ScaladoCameraFramework"

    const-string v1, "Will make one more capture and then stop."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iput-boolean v2, p0, Lcom/scalado/camera/autorama/Autorama;->mStopRequested:Z

    .line 524
    invoke-direct {p0}, Lcom/scalado/camera/autorama/Autorama;->capture()V

    goto :goto_0

    .line 527
    :cond_2
    const-string v0, "ScaladoCameraFramework"

    const-string v1, "Stopping now."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v0, p0, Lcom/scalado/camera/autorama/Autorama;->mCamera:Lcom/scalado/camera/Camera;

    invoke-interface {v0}, Lcom/scalado/camera/Camera;->stopPreview()V

    .line 529
    invoke-direct {p0}, Lcom/scalado/camera/autorama/Autorama;->stopTracking()V

    .line 530
    invoke-direct {p0}, Lcom/scalado/camera/autorama/Autorama;->panoramaCompleted()V

    goto :goto_0
.end method
