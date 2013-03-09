.class public Lcom/scalado/camera/hdr/HDR;
.super Ljava/lang/Object;
.source "HDR.java"

# interfaces
.implements Lcom/scalado/camera/Feature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/camera/hdr/HDR$HDRFeatureImplementation;,
        Lcom/scalado/camera/hdr/HDR$HDRListener;,
        Lcom/scalado/camera/hdr/HDR$HDROptions;,
        Lcom/scalado/camera/hdr/HDR$HDRStates;,
        Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;,
        Lcom/scalado/camera/hdr/HDR$PostviewCallbackHandler;,
        Lcom/scalado/camera/hdr/HDR$RawCallbackHandler;,
        Lcom/scalado/camera/hdr/HDR$ShutterCallbackHandler;
    }
.end annotation


# static fields
.field public static final DEFAULT_EV_STEP:F = 0.5f

.field public static final DEFAULT_GAMMA:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "ScaladoCameraFramework"


# instance fields
.field private mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;

.field private mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;

.field private mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;

.field private mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;

.field private mCamera:Lcom/scalado/camera/FeatureCamera;

.field private mCapturedImages:I

.field private mDims:Lcom/scalado/base/Size;

.field private mDstBuffer:Lcom/scalado/base/Buffer;

.field private mExposureCompensationStep:F

.field private mExposures:[I

.field private mFeatureImplementation:Lcom/scalado/camera/hdr/HDR$HDRFeatureImplementation;

.field private mHDRImage:Lcom/scalado/caps/hdrimage/HDRImage;

.field private mHDRImageOptions:Lcom/scalado/caps/hdrimage/HDRImage$Options;

.field private mHDRListener:Lcom/scalado/camera/hdr/HDR$HDRListener;

.field private mHDROptions:Lcom/scalado/camera/hdr/HDR$HDROptions;

.field private mJpegCallbackHandler:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

.field private mMaxExposureCompensation:I

.field private mMinExposureCompensation:I

.field private mPostviewCallbackhandler:Lcom/scalado/camera/hdr/HDR$PostviewCallbackHandler;

.field private mRawCallbackhandler:Lcom/scalado/camera/hdr/HDR$RawCallbackHandler;

.field private mShutterCallbackHandler:Lcom/scalado/camera/hdr/HDR$ShutterCallbackHandler;

.field private mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

.field private mSrcBuffers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/scalado/base/Buffer;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/scalado/camera/hdr/HDR$HDRStates;

.field private mWorkerThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/scalado/camera/hdr/HDR;->mHDRListener:Lcom/scalado/camera/hdr/HDR$HDRListener;

    new-instance v0, Lcom/scalado/camera/hdr/HDR$ShutterCallbackHandler;

    invoke-direct {v0, p0, v4}, Lcom/scalado/camera/hdr/HDR$ShutterCallbackHandler;-><init>(Lcom/scalado/camera/hdr/HDR;Lcom/scalado/camera/hdr/HDR$ShutterCallbackHandler;)V

    iput-object v0, p0, Lcom/scalado/camera/hdr/HDR;->mShutterCallbackHandler:Lcom/scalado/camera/hdr/HDR$ShutterCallbackHandler;

    new-instance v0, Lcom/scalado/camera/hdr/HDR$RawCallbackHandler;

    invoke-direct {v0, p0, v4}, Lcom/scalado/camera/hdr/HDR$RawCallbackHandler;-><init>(Lcom/scalado/camera/hdr/HDR;Lcom/scalado/camera/hdr/HDR$RawCallbackHandler;)V

    iput-object v0, p0, Lcom/scalado/camera/hdr/HDR;->mRawCallbackhandler:Lcom/scalado/camera/hdr/HDR$RawCallbackHandler;

    new-instance v0, Lcom/scalado/camera/hdr/HDR$PostviewCallbackHandler;

    invoke-direct {v0, p0, v4}, Lcom/scalado/camera/hdr/HDR$PostviewCallbackHandler;-><init>(Lcom/scalado/camera/hdr/HDR;Lcom/scalado/camera/hdr/HDR$PostviewCallbackHandler;)V

    iput-object v0, p0, Lcom/scalado/camera/hdr/HDR;->mPostviewCallbackhandler:Lcom/scalado/camera/hdr/HDR$PostviewCallbackHandler;

    new-instance v0, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    invoke-direct {v0, p0, v4}, Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;-><init>(Lcom/scalado/camera/hdr/HDR;Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;)V

    iput-object v0, p0, Lcom/scalado/camera/hdr/HDR;->mJpegCallbackHandler:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/scalado/camera/hdr/HDR;->mSrcBuffers:Ljava/util/Vector;

    new-instance v0, Lcom/scalado/caps/hdrimage/HDRImage$Options;

    const/4 v1, 0x0

    const/high16 v2, 0x3f00

    sget-object v3, Lcom/scalado/caps/hdrimage/HDRImage$Registration;->LIGHTEST:Lcom/scalado/caps/hdrimage/HDRImage$Registration;

    invoke-direct {v0, v1, v2, v3}, Lcom/scalado/caps/hdrimage/HDRImage$Options;-><init>(FFLcom/scalado/caps/hdrimage/HDRImage$Registration;)V

    iput-object v0, p0, Lcom/scalado/camera/hdr/HDR;->mHDRImageOptions:Lcom/scalado/caps/hdrimage/HDRImage$Options;

    new-instance v0, Lcom/scalado/camera/hdr/HDR$HDROptions;

    invoke-direct {v0, p0}, Lcom/scalado/camera/hdr/HDR$HDROptions;-><init>(Lcom/scalado/camera/hdr/HDR;)V

    iput-object v0, p0, Lcom/scalado/camera/hdr/HDR;->mHDROptions:Lcom/scalado/camera/hdr/HDR$HDROptions;

    new-instance v0, Lcom/scalado/camera/hdr/HDR$HDRFeatureImplementation;

    invoke-direct {v0, p0, v4}, Lcom/scalado/camera/hdr/HDR$HDRFeatureImplementation;-><init>(Lcom/scalado/camera/hdr/HDR;Lcom/scalado/camera/hdr/HDR$HDRFeatureImplementation;)V

    iput-object v0, p0, Lcom/scalado/camera/hdr/HDR;->mFeatureImplementation:Lcom/scalado/camera/hdr/HDR$HDRFeatureImplementation;

    invoke-direct {p0}, Lcom/scalado/camera/hdr/HDR;->clean()V

    return-void
.end method

.method static synthetic access$0(Lcom/scalado/camera/hdr/HDR;[I)V
    .locals 0

    iput-object p1, p0, Lcom/scalado/camera/hdr/HDR;->mExposures:[I

    return-void
.end method

.method static synthetic access$1(Lcom/scalado/camera/hdr/HDR;)[I
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/hdr/HDR;->mExposures:[I

    return-object v0
.end method

.method static synthetic access$10(Lcom/scalado/camera/hdr/HDR;F)V
    .locals 0

    iput p1, p0, Lcom/scalado/camera/hdr/HDR;->mExposureCompensationStep:F

    return-void
.end method

.method static synthetic access$11(Lcom/scalado/camera/hdr/HDR;Lcom/scalado/base/Size;)V
    .locals 0

    iput-object p1, p0, Lcom/scalado/camera/hdr/HDR;->mDims:Lcom/scalado/base/Size;

    return-void
.end method

.method static synthetic access$12(Lcom/scalado/camera/hdr/HDR;)F
    .locals 1

    iget v0, p0, Lcom/scalado/camera/hdr/HDR;->mExposureCompensationStep:F

    return v0
.end method

.method static synthetic access$13(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/Feature$FeatureSocket;
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/hdr/HDR;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

    return-object v0
.end method

.method static synthetic access$14(Lcom/scalado/camera/hdr/HDR;Lcom/scalado/camera/Camera$ShutterCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/scalado/camera/hdr/HDR;->mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;

    return-void
.end method

.method static synthetic access$15(Lcom/scalado/camera/hdr/HDR;Lcom/scalado/camera/Camera$PictureCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/scalado/camera/hdr/HDR;->mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-void
.end method

.method static synthetic access$16(Lcom/scalado/camera/hdr/HDR;Lcom/scalado/camera/Camera$PictureCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/scalado/camera/hdr/HDR;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-void
.end method

.method static synthetic access$17(Lcom/scalado/camera/hdr/HDR;Lcom/scalado/camera/Camera$PictureCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/scalado/camera/hdr/HDR;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-void
.end method

.method static synthetic access$18(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/hdr/HDR$HDRStates;
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/hdr/HDR;->mState:Lcom/scalado/camera/hdr/HDR$HDRStates;

    return-object v0
.end method

.method static synthetic access$19(Lcom/scalado/camera/hdr/HDR;)V
    .locals 0

    invoke-direct {p0}, Lcom/scalado/camera/hdr/HDR;->startCapturing()V

    return-void
.end method

.method static synthetic access$2(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/caps/hdrimage/HDRImage$Options;
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/hdr/HDR;->mHDRImageOptions:Lcom/scalado/caps/hdrimage/HDRImage$Options;

    return-object v0
.end method

.method static synthetic access$20(Lcom/scalado/camera/hdr/HDR;)V
    .locals 0

    invoke-direct {p0}, Lcom/scalado/camera/hdr/HDR;->clean()V

    return-void
.end method

.method static synthetic access$21(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/hdr/HDR$HDRListener;
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/hdr/HDR;->mHDRListener:Lcom/scalado/camera/hdr/HDR$HDRListener;

    return-object v0
.end method

.method static synthetic access$22(Lcom/scalado/camera/hdr/HDR;)I
    .locals 1

    iget v0, p0, Lcom/scalado/camera/hdr/HDR;->mCapturedImages:I

    return v0
.end method

.method static synthetic access$23(Lcom/scalado/camera/hdr/HDR;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/hdr/HDR;->mSrcBuffers:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$24(Lcom/scalado/camera/hdr/HDR;I)V
    .locals 0

    iput p1, p0, Lcom/scalado/camera/hdr/HDR;->mCapturedImages:I

    return-void
.end method

.method static synthetic access$25(Lcom/scalado/camera/hdr/HDR;Lcom/scalado/camera/hdr/HDR$HDRStates;)V
    .locals 0

    iput-object p1, p0, Lcom/scalado/camera/hdr/HDR;->mState:Lcom/scalado/camera/hdr/HDR$HDRStates;

    return-void
.end method

.method static synthetic access$26(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/Camera$ShutterCallback;
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/hdr/HDR;->mApplicationShutterCallback:Lcom/scalado/camera/Camera$ShutterCallback;

    return-object v0
.end method

.method static synthetic access$27(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/Camera$PictureCallback;
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/hdr/HDR;->mApplicationRawCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$28(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/caps/hdrimage/HDRImage;
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/hdr/HDR;->mHDRImage:Lcom/scalado/caps/hdrimage/HDRImage;

    return-object v0
.end method

.method static synthetic access$29(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/Camera$PictureCallback;
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/hdr/HDR;->mApplicationPostviewCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$3(Lcom/scalado/camera/hdr/HDR;Lcom/scalado/camera/FeatureCamera;)V
    .locals 0

    iput-object p1, p0, Lcom/scalado/camera/hdr/HDR;->mCamera:Lcom/scalado/camera/FeatureCamera;

    return-void
.end method

.method static synthetic access$30(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/Camera$PictureCallback;
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/hdr/HDR;->mApplicationJpegCallback:Lcom/scalado/camera/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$31(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/base/Size;
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/hdr/HDR;->mDims:Lcom/scalado/base/Size;

    return-object v0
.end method

.method static synthetic access$32(Lcom/scalado/camera/hdr/HDR;Lcom/scalado/base/Buffer;)V
    .locals 0

    iput-object p1, p0, Lcom/scalado/camera/hdr/HDR;->mDstBuffer:Lcom/scalado/base/Buffer;

    return-void
.end method

.method static synthetic access$33(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/base/Buffer;
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/hdr/HDR;->mDstBuffer:Lcom/scalado/base/Buffer;

    return-object v0
.end method

.method static synthetic access$34(Lcom/scalado/camera/hdr/HDR;Ljava/lang/Thread;)V
    .locals 0

    iput-object p1, p0, Lcom/scalado/camera/hdr/HDR;->mWorkerThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$35(Lcom/scalado/camera/hdr/HDR;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/hdr/HDR;->mWorkerThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$4(Lcom/scalado/camera/hdr/HDR;Lcom/scalado/camera/Feature$FeatureSocket;)V
    .locals 0

    iput-object p1, p0, Lcom/scalado/camera/hdr/HDR;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

    return-void
.end method

.method static synthetic access$5(Lcom/scalado/camera/hdr/HDR;)Lcom/scalado/camera/FeatureCamera;
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/hdr/HDR;->mCamera:Lcom/scalado/camera/FeatureCamera;

    return-object v0
.end method

.method static synthetic access$6(Lcom/scalado/camera/hdr/HDR;I)V
    .locals 0

    iput p1, p0, Lcom/scalado/camera/hdr/HDR;->mMinExposureCompensation:I

    return-void
.end method

.method static synthetic access$7(Lcom/scalado/camera/hdr/HDR;I)V
    .locals 0

    iput p1, p0, Lcom/scalado/camera/hdr/HDR;->mMaxExposureCompensation:I

    return-void
.end method

.method static synthetic access$8(Lcom/scalado/camera/hdr/HDR;)I
    .locals 1

    iget v0, p0, Lcom/scalado/camera/hdr/HDR;->mMinExposureCompensation:I

    return v0
.end method

.method static synthetic access$9(Lcom/scalado/camera/hdr/HDR;)I
    .locals 1

    iget v0, p0, Lcom/scalado/camera/hdr/HDR;->mMaxExposureCompensation:I

    return v0
.end method

.method private clean()V
    .locals 1

    new-instance v0, Lcom/scalado/caps/hdrimage/HDRImage;

    invoke-direct {v0}, Lcom/scalado/caps/hdrimage/HDRImage;-><init>()V

    iput-object v0, p0, Lcom/scalado/camera/hdr/HDR;->mHDRImage:Lcom/scalado/caps/hdrimage/HDRImage;

    sget-object v0, Lcom/scalado/camera/hdr/HDR$HDRStates;->READY:Lcom/scalado/camera/hdr/HDR$HDRStates;

    iput-object v0, p0, Lcom/scalado/camera/hdr/HDR;->mState:Lcom/scalado/camera/hdr/HDR$HDRStates;

    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/camera/hdr/HDR;->mCapturedImages:I

    iget-object v0, p0, Lcom/scalado/camera/hdr/HDR;->mSrcBuffers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method private startCapturing()V
    .locals 8

    const-string v2, "Start Capturing. Exposures: "

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/scalado/camera/hdr/HDR;->mExposures:[I

    array-length v3, v3

    if-lt v0, v3, :cond_0

    iget-object v4, p0, Lcom/scalado/camera/hdr/HDR;->mExposures:[I

    array-length v5, v4

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v5, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " EVStep: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/scalado/camera/hdr/HDR;->mExposureCompensationStep:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Gamma: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/scalado/camera/hdr/HDR;->mHDRImageOptions:Lcom/scalado/caps/hdrimage/HDRImage$Options;

    iget v4, v4, Lcom/scalado/caps/hdrimage/HDRImage$Options;->gamma:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ScaladoCameraFramework"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/scalado/camera/hdr/HDR;->mCamera:Lcom/scalado/camera/FeatureCamera;

    invoke-interface {v3}, Lcom/scalado/camera/FeatureCamera;->getParameters()Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v1

    iget-object v3, p0, Lcom/scalado/camera/hdr/HDR;->mExposures:[I

    invoke-interface {v1, v3}, Lcom/scalado/camera/FeatureCamera$Parameters;->setExposureBracketing([I)V

    iget-object v3, p0, Lcom/scalado/camera/hdr/HDR;->mCamera:Lcom/scalado/camera/FeatureCamera;

    invoke-interface {v3, v1}, Lcom/scalado/camera/FeatureCamera;->setParameters(Lcom/scalado/camera/Camera$Parameters;)V

    sget-object v3, Lcom/scalado/camera/hdr/HDR$HDRStates;->CAPTURING:Lcom/scalado/camera/hdr/HDR$HDRStates;

    iput-object v3, p0, Lcom/scalado/camera/hdr/HDR;->mState:Lcom/scalado/camera/hdr/HDR$HDRStates;

    iget-object v3, p0, Lcom/scalado/camera/hdr/HDR;->mSocket:Lcom/scalado/camera/Feature$FeatureSocket;

    iget-object v4, p0, Lcom/scalado/camera/hdr/HDR;->mShutterCallbackHandler:Lcom/scalado/camera/hdr/HDR$ShutterCallbackHandler;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/scalado/camera/hdr/HDR;->mPostviewCallbackhandler:Lcom/scalado/camera/hdr/HDR$PostviewCallbackHandler;

    iget-object v7, p0, Lcom/scalado/camera/hdr/HDR;->mJpegCallbackHandler:Lcom/scalado/camera/hdr/HDR$JpegCallbackHandler;

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/scalado/camera/Feature$FeatureSocket;->doTakePicture(Lcom/scalado/camera/Camera$ShutterCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;)V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/scalado/camera/hdr/HDR;->mExposures:[I

    iget v4, p0, Lcom/scalado/camera/hdr/HDR;->mMaxExposureCompensation:I

    iget-object v5, p0, Lcom/scalado/camera/hdr/HDR;->mExposures:[I

    aget v5, v5, v0

    iget v6, p0, Lcom/scalado/camera/hdr/HDR;->mMinExposureCompensation:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aget v0, v4, v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1
.end method


# virtual methods
.method public getFeatureImplementation()Lcom/scalado/camera/Feature$FeatureImplementation;
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/hdr/HDR;->mFeatureImplementation:Lcom/scalado/camera/hdr/HDR$HDRFeatureImplementation;

    return-object v0
.end method

.method public getHDRDimensions()Lcom/scalado/base/Size;
    .locals 3

    iget-object v1, p0, Lcom/scalado/camera/hdr/HDR;->mState:Lcom/scalado/camera/hdr/HDR$HDRStates;

    sget-object v2, Lcom/scalado/camera/hdr/HDR$HDRStates;->FINISHED:Lcom/scalado/camera/hdr/HDR$HDRStates;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/scalado/camera/hdr/HDR;->mState:Lcom/scalado/camera/hdr/HDR$HDRStates;

    sget-object v2, Lcom/scalado/camera/hdr/HDR$HDRStates;->READY:Lcom/scalado/camera/hdr/HDR$HDRStates;

    if-ne v1, v2, :cond_0

    const-string v0, "No HDR has been captured yet"

    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wait for HDR capture sequence to complete. Currently captured "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/scalado/camera/hdr/HDR;->mCapturedImages:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/scalado/camera/hdr/HDR;->mExposures:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/scalado/camera/hdr/HDR;->mHDRImage:Lcom/scalado/caps/hdrimage/HDRImage;

    iget-object v2, p0, Lcom/scalado/camera/hdr/HDR;->mHDRImageOptions:Lcom/scalado/caps/hdrimage/HDRImage$Options;

    invoke-virtual {v1, v2}, Lcom/scalado/caps/hdrimage/HDRImage;->getRenderSize(Lcom/scalado/caps/hdrimage/HDRImage$Options;)Lcom/scalado/base/Size;

    move-result-object v1

    return-object v1
.end method

.method public getOptions()Lcom/scalado/camera/hdr/HDR$HDROptions;
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/hdr/HDR;->mHDROptions:Lcom/scalado/camera/hdr/HDR$HDROptions;

    return-object v0
.end method

.method public renderJpeg(Lcom/scalado/stream/Stream;)V
    .locals 3

    iget-object v1, p0, Lcom/scalado/camera/hdr/HDR;->mState:Lcom/scalado/camera/hdr/HDR$HDRStates;

    sget-object v2, Lcom/scalado/camera/hdr/HDR$HDRStates;->FINISHED:Lcom/scalado/camera/hdr/HDR$HDRStates;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/scalado/camera/hdr/HDR;->mState:Lcom/scalado/camera/hdr/HDR$HDRStates;

    sget-object v2, Lcom/scalado/camera/hdr/HDR$HDRStates;->READY:Lcom/scalado/camera/hdr/HDR$HDRStates;

    if-ne v1, v2, :cond_0

    const-string v0, "No HDR has been captured yet"

    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wait for HDR capture sequence to complete. Currently captured "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/scalado/camera/hdr/HDR;->mCapturedImages:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/scalado/camera/hdr/HDR;->mExposures:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "stream may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v1, p0, Lcom/scalado/camera/hdr/HDR;->mHDRImage:Lcom/scalado/caps/hdrimage/HDRImage;

    iget-object v2, p0, Lcom/scalado/camera/hdr/HDR;->mHDRImageOptions:Lcom/scalado/caps/hdrimage/HDRImage$Options;

    invoke-virtual {v1, v2, p1}, Lcom/scalado/caps/hdrimage/HDRImage;->render(Lcom/scalado/caps/hdrimage/HDRImage$Options;Lcom/scalado/stream/Stream;)V

    return-void
.end method

.method public renderPreview(Lcom/scalado/base/Image;)V
    .locals 3

    iget-object v1, p0, Lcom/scalado/camera/hdr/HDR;->mState:Lcom/scalado/camera/hdr/HDR$HDRStates;

    sget-object v2, Lcom/scalado/camera/hdr/HDR$HDRStates;->FINISHED:Lcom/scalado/camera/hdr/HDR$HDRStates;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/scalado/camera/hdr/HDR;->mState:Lcom/scalado/camera/hdr/HDR$HDRStates;

    sget-object v2, Lcom/scalado/camera/hdr/HDR$HDRStates;->READY:Lcom/scalado/camera/hdr/HDR$HDRStates;

    if-ne v1, v2, :cond_0

    const-string v0, "No HDR has been captured yet"

    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wait for HDR capture sequence to complete. Currently captured "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/scalado/camera/hdr/HDR;->mCapturedImages:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/scalado/camera/hdr/HDR;->mExposures:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "dstImage may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v1, p0, Lcom/scalado/camera/hdr/HDR;->mHDRImage:Lcom/scalado/caps/hdrimage/HDRImage;

    iget-object v2, p0, Lcom/scalado/camera/hdr/HDR;->mHDRImageOptions:Lcom/scalado/caps/hdrimage/HDRImage$Options;

    invoke-virtual {v1, v2, p1}, Lcom/scalado/caps/hdrimage/HDRImage;->generatePreview(Lcom/scalado/caps/hdrimage/HDRImage$Options;Lcom/scalado/base/Image;)V

    return-void
.end method

.method public renderRaw(Lcom/scalado/base/Image;)V
    .locals 5

    iget-object v2, p0, Lcom/scalado/camera/hdr/HDR;->mState:Lcom/scalado/camera/hdr/HDR$HDRStates;

    sget-object v3, Lcom/scalado/camera/hdr/HDR$HDRStates;->FINISHED:Lcom/scalado/camera/hdr/HDR$HDRStates;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/scalado/camera/hdr/HDR;->mState:Lcom/scalado/camera/hdr/HDR$HDRStates;

    sget-object v3, Lcom/scalado/camera/hdr/HDR$HDRStates;->READY:Lcom/scalado/camera/hdr/HDR$HDRStates;

    if-ne v2, v3, :cond_0

    const-string v1, "No HDR has been captured yet"

    :goto_0
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Wait for HDR capture sequence to complete. Currently captured "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/scalado/camera/hdr/HDR;->mCapturedImages:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/scalado/camera/hdr/HDR;->mExposures:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "dstImage may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    iget-object v2, p0, Lcom/scalado/camera/hdr/HDR;->mHDRImage:Lcom/scalado/caps/hdrimage/HDRImage;

    iget-object v3, p0, Lcom/scalado/camera/hdr/HDR;->mHDRImageOptions:Lcom/scalado/caps/hdrimage/HDRImage$Options;

    invoke-virtual {v2, v3}, Lcom/scalado/caps/hdrimage/HDRImage;->getRenderSize(Lcom/scalado/caps/hdrimage/HDRImage$Options;)Lcom/scalado/base/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v3

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v3

    invoke-virtual {v3}, Lcom/scalado/base/Size;->getHeight()I

    move-result v3

    if-eq v2, v3, :cond_4

    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "dstImage dimensions: ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scalado/base/Size;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/scalado/base/Image;->getDimensions()Lcom/scalado/base/Size;

    move-result-object v4

    invoke-virtual {v4}, Lcom/scalado/base/Size;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") must match getRenderSize(): ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/scalado/base/Size;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    iget-object v2, p0, Lcom/scalado/camera/hdr/HDR;->mHDRImage:Lcom/scalado/caps/hdrimage/HDRImage;

    iget-object v3, p0, Lcom/scalado/camera/hdr/HDR;->mHDRImageOptions:Lcom/scalado/caps/hdrimage/HDRImage$Options;

    invoke-virtual {v2, v3, p1}, Lcom/scalado/caps/hdrimage/HDRImage;->renderRaw(Lcom/scalado/caps/hdrimage/HDRImage$Options;Lcom/scalado/base/Image;)V

    return-void
.end method

.method public setListener(Lcom/scalado/camera/hdr/HDR$HDRListener;)V
    .locals 0

    iput-object p1, p0, Lcom/scalado/camera/hdr/HDR;->mHDRListener:Lcom/scalado/camera/hdr/HDR$HDRListener;

    return-void
.end method
