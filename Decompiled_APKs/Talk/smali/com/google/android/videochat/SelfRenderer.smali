.class public Lcom/google/android/videochat/SelfRenderer;
.super Lcom/google/android/videochat/Renderer;
.source "SelfRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/videochat/SelfRenderer$CameraInputData;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/google/android/videochat/Renderer$SelfRendererThreadCallback;

.field private mCamera:Lcom/google/android/videochat/CameraManager;

.field private mCameraCaptureFlip:Z

.field private mCameraInputData:Lcom/google/android/videochat/SelfRenderer$CameraInputData;

.field private final mCameraInterface:Lcom/google/android/videochat/CameraInterface;

.field private mCameraOrientation:I

.field private mCameraOutputTextureName:I

.field private mCameraRendererID:I

.field private mCameraRotation:I

.field private mCameraStopWatch:Lcom/google/android/videochat/util/GLStopWatch;

.field private mCameraSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mCameraTransformMatrix:[F

.field private mCaptureSize:Lcom/google/android/videochat/Size;

.field private mCurrentImageStabilizationLevel:I

.field private mDeviceOrientation:I

.field private final mEffectsLock:Ljava/lang/Object;

.field private mEncodeRendererID:I

.field private mEncodeStopWatch:Lcom/google/android/videochat/util/GLStopWatch;

.field private mFrameOutputParameters:Lcom/google/android/videochat/CameraManager$FrameOutputParameters;

.field private mHaveInitializedCameraSettings:Z

.field private volatile mHaveSeenFirstFrame:Z

.field private mImageStabilizationRendererID:I

.field private mImageStabilizationStopWatch:Lcom/google/android/videochat/util/GLStopWatch;

.field private mImageStabilizationTextureName:I

.field private mLastCameraFrameTime:J

.field private mMaxFrameOutputParameters:Lcom/google/android/videochat/Size;

.field private mOutputTextureName:I

.field private mPendingImageStabilizationLevel:I

.field private mResetImageStabilization:Z

.field private mRotatedCameraBufferSize:Lcom/google/android/videochat/Size;

.field private mRotatedCaptureSize:Lcom/google/android/videochat/Size;

.field private mRotatedFrameOutputSize:Lcom/google/android/videochat/Size;

.field private mRotatedScaledCameraBufferSize:Lcom/google/android/videochat/Size;

.field private mRotationTransform:[F

.field private volatile mSelfFrameReady:Z

.field private final mSelfFrameReadyLock:Ljava/lang/Object;

.field private mSelfViewTransformMatrix:[F

.field private mUseMaxSizeForCameraBuffer:Z


# direct methods
.method constructor <init>(Lcom/google/android/videochat/RendererManager;Lcom/google/android/videochat/Renderer$SelfRendererThreadCallback;Lcom/google/android/videochat/CameraSpecification;)V
    .locals 4
    .parameter "rendererManager"
    .parameter "callback"
    .parameter "defaultCamera"

    .prologue
    const/16 v1, 0x10

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 74
    invoke-direct {p0}, Lcom/google/android/videochat/Renderer;-><init>()V

    .line 21
    iput v3, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraRendererID:I

    .line 22
    iput v3, p0, Lcom/google/android/videochat/SelfRenderer;->mEncodeRendererID:I

    .line 23
    iput v3, p0, Lcom/google/android/videochat/SelfRenderer;->mImageStabilizationRendererID:I

    .line 36
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraTransformMatrix:[F

    .line 37
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mSelfViewTransformMatrix:[F

    .line 39
    new-instance v0, Lcom/google/android/videochat/SelfRenderer$CameraInputData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/videochat/SelfRenderer$CameraInputData;-><init>(Lcom/google/android/videochat/SelfRenderer$1;)V

    iput-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraInputData:Lcom/google/android/videochat/SelfRenderer$CameraInputData;

    .line 40
    iput-boolean v2, p0, Lcom/google/android/videochat/SelfRenderer;->mSelfFrameReady:Z

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mSelfFrameReadyLock:Ljava/lang/Object;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mEffectsLock:Ljava/lang/Object;

    .line 43
    iput v2, p0, Lcom/google/android/videochat/SelfRenderer;->mCurrentImageStabilizationLevel:I

    .line 44
    iput v2, p0, Lcom/google/android/videochat/SelfRenderer;->mPendingImageStabilizationLevel:I

    .line 45
    iput-boolean v2, p0, Lcom/google/android/videochat/SelfRenderer;->mResetImageStabilization:Z

    .line 46
    new-instance v0, Lcom/google/android/videochat/util/GLStopWatch;

    const-string v1, "SelfVideo.camera"

    invoke-direct {v0, v1}, Lcom/google/android/videochat/util/GLStopWatch;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraStopWatch:Lcom/google/android/videochat/util/GLStopWatch;

    .line 47
    new-instance v0, Lcom/google/android/videochat/util/GLStopWatch;

    const-string v1, "SelfVideo.encode"

    invoke-direct {v0, v1}, Lcom/google/android/videochat/util/GLStopWatch;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mEncodeStopWatch:Lcom/google/android/videochat/util/GLStopWatch;

    .line 48
    new-instance v0, Lcom/google/android/videochat/util/GLStopWatch;

    const-string v1, "SelfVideo.stabilize"

    invoke-direct {v0, v1}, Lcom/google/android/videochat/util/GLStopWatch;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mImageStabilizationStopWatch:Lcom/google/android/videochat/util/GLStopWatch;

    .line 75
    iput-object p1, p0, Lcom/google/android/videochat/SelfRenderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    .line 76
    iput-object p2, p0, Lcom/google/android/videochat/SelfRenderer;->mCallback:Lcom/google/android/videochat/Renderer$SelfRendererThreadCallback;

    .line 77
    iget-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/videochat/RendererManager;->instantiateRenderer(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraRendererID:I

    .line 79
    iget-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    invoke-virtual {v0, v2}, Lcom/google/android/videochat/RendererManager;->instantiateRenderer(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/videochat/SelfRenderer;->mEncodeRendererID:I

    .line 81
    invoke-static {}, Lcom/google/android/videochat/util/LogUtil;->debugLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "vclib:SelfRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "construct cam "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraRendererID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " encode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/videochat/SelfRenderer;->mEncodeRendererID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    invoke-static {}, Lcom/google/android/videochat/CameraManager;->getInstance()Lcom/google/android/videochat/CameraManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mCamera:Lcom/google/android/videochat/CameraManager;

    .line 86
    if-eqz p3, :cond_1

    iget v0, p3, Lcom/google/android/videochat/CameraSpecification;->cameraId:I

    if-eq v0, v3, :cond_1

    .line 87
    iget-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mCamera:Lcom/google/android/videochat/CameraManager;

    invoke-virtual {v0, p3}, Lcom/google/android/videochat/CameraManager;->setDefaultCamera(Lcom/google/android/videochat/CameraSpecification;)V

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mCamera:Lcom/google/android/videochat/CameraManager;

    new-instance v1, Lcom/google/android/videochat/SelfRenderer$1;

    invoke-direct {v1, p0}, Lcom/google/android/videochat/SelfRenderer$1;-><init>(Lcom/google/android/videochat/SelfRenderer;)V

    invoke-virtual {v0, v1}, Lcom/google/android/videochat/CameraManager;->setApplicationCallback(Lcom/google/android/videochat/CameraManager$CameraManagerCallback;)V

    .line 173
    new-instance v0, Lcom/google/android/videochat/CameraInterface;

    iget-object v1, p0, Lcom/google/android/videochat/SelfRenderer;->mCamera:Lcom/google/android/videochat/CameraManager;

    invoke-direct {v0, v1}, Lcom/google/android/videochat/CameraInterface;-><init>(Lcom/google/android/videochat/CameraManager;)V

    iput-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraInterface:Lcom/google/android/videochat/CameraInterface;

    .line 174
    iget-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    invoke-virtual {v0, p0}, Lcom/google/android/videochat/RendererManager;->registerRendererForStats(Lcom/google/android/videochat/Renderer;)V

    .line 175
    return-void
.end method

.method static synthetic access$1002(Lcom/google/android/videochat/SelfRenderer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/google/android/videochat/SelfRenderer;->mHaveSeenFirstFrame:Z

    return p1
.end method

.method static synthetic access$102(Lcom/google/android/videochat/SelfRenderer;Lcom/google/android/videochat/CameraManager$FrameOutputParameters;)Lcom/google/android/videochat/CameraManager$FrameOutputParameters;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/google/android/videochat/SelfRenderer;->mFrameOutputParameters:Lcom/google/android/videochat/CameraManager$FrameOutputParameters;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/android/videochat/SelfRenderer;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mSelfFrameReadyLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/android/videochat/SelfRenderer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/google/android/videochat/SelfRenderer;->mSelfFrameReady:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/videochat/SelfRenderer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/android/videochat/SelfRenderer;->onFrameSizesChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/videochat/SelfRenderer;)Lcom/google/android/videochat/Renderer$SelfRendererThreadCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mCallback:Lcom/google/android/videochat/Renderer$SelfRendererThreadCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/videochat/SelfRenderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/google/android/videochat/SelfRenderer;->mDeviceOrientation:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/videochat/SelfRenderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraRotation:I

    return v0
.end method

.method static synthetic access$602(Lcom/google/android/videochat/SelfRenderer;Lcom/google/android/videochat/Size;)Lcom/google/android/videochat/Size;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/google/android/videochat/SelfRenderer;->mCaptureSize:Lcom/google/android/videochat/Size;

    return-object p1
.end method

.method static synthetic access$702(Lcom/google/android/videochat/SelfRenderer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraCaptureFlip:Z

    return p1
.end method

.method static synthetic access$802(Lcom/google/android/videochat/SelfRenderer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraOrientation:I

    return p1
.end method

.method static synthetic access$900(Lcom/google/android/videochat/SelfRenderer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/android/videochat/SelfRenderer;->recomputeCameraRotation()V

    return-void
.end method

.method private initializeImageStabilizationRenderer()V
    .locals 4

    .prologue
    .line 466
    const-string v0, "vclib:SelfRenderer"

    const-string v1, "initializeImageStabilizationRenderer"

    invoke-static {v0, v1}, Lcom/google/android/videochat/util/LogUtil;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v1, p0, Lcom/google/android/videochat/SelfRenderer;->mImageStabilizationRendererID:I

    const-string v2, "sub_intex"

    iget v3, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraOutputTextureName:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/videochat/RendererManager;->setIntParam(ILjava/lang/String;I)V

    .line 471
    invoke-direct {p0}, Lcom/google/android/videochat/SelfRenderer;->setSizeOnImageStabilizationRenderer()V

    .line 472
    iget-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v1, p0, Lcom/google/android/videochat/SelfRenderer;->mImageStabilizationRendererID:I

    invoke-virtual {v0, v1}, Lcom/google/android/videochat/RendererManager;->initializeGLContext(I)Z

    .line 473
    iget-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v1, p0, Lcom/google/android/videochat/SelfRenderer;->mImageStabilizationRendererID:I

    const-string v2, "sub_outtex"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/videochat/RendererManager;->getIntParam(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/videochat/SelfRenderer;->mImageStabilizationTextureName:I

    .line 476
    return-void
.end method

.method private onFrameSizesChanged()V
    .locals 14

    .prologue
    const/4 v7, 0x1

    const/high16 v13, 0x4000

    .line 219
    const-string v6, "vclib:SelfRenderer"

    const-string v8, "onFrameSizesChanged"

    invoke-static {v6, v8}, Lcom/google/android/videochat/util/LogUtil;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mCaptureSize:Lcom/google/android/videochat/Size;

    if-nez v6, :cond_0

    .line 326
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mMaxFrameOutputParameters:Lcom/google/android/videochat/Size;

    if-eqz v6, :cond_4

    .line 229
    iget-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mFrameOutputParameters:Lcom/google/android/videochat/CameraManager$FrameOutputParameters;

    iget-object v6, v6, Lcom/google/android/videochat/CameraManager$FrameOutputParameters;->size:Lcom/google/android/videochat/Size;

    iget-object v8, p0, Lcom/google/android/videochat/SelfRenderer;->mMaxFrameOutputParameters:Lcom/google/android/videochat/Size;

    invoke-static {v6, v8}, Lcom/google/android/videochat/Size;->scaleToMax(Lcom/google/android/videochat/Size;Lcom/google/android/videochat/Size;)Lcom/google/android/videochat/Size;

    move-result-object v5

    .line 237
    .local v5, scaledFrameOutputParameters:Lcom/google/android/videochat/Size;
    :goto_1
    iget v6, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraRotation:I

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraRotation:I

    const/16 v8, 0xb4

    if-ne v6, v8, :cond_5

    .line 238
    :cond_1
    new-instance v6, Lcom/google/android/videochat/Size;

    iget-object v8, p0, Lcom/google/android/videochat/SelfRenderer;->mCaptureSize:Lcom/google/android/videochat/Size;

    iget v8, v8, Lcom/google/android/videochat/Size;->width:I

    iget-object v9, p0, Lcom/google/android/videochat/SelfRenderer;->mCaptureSize:Lcom/google/android/videochat/Size;

    iget v9, v9, Lcom/google/android/videochat/Size;->height:I

    invoke-direct {v6, v8, v9}, Lcom/google/android/videochat/Size;-><init>(II)V

    iput-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedCaptureSize:Lcom/google/android/videochat/Size;

    .line 240
    iget v3, v5, Lcom/google/android/videochat/Size;->width:I

    .line 241
    .local v3, rotatedFrameOutputWidth:I
    iget v2, v5, Lcom/google/android/videochat/Size;->height:I

    .line 250
    .local v2, rotatedFrameOutputHeight:I
    :goto_2
    new-instance v6, Lcom/google/android/videochat/Size;

    add-int/lit8 v8, v3, 0x4

    and-int/lit8 v8, v8, -0x8

    add-int/lit8 v9, v2, 0x1

    and-int/lit8 v9, v9, -0x2

    invoke-direct {v6, v8, v9}, Lcom/google/android/videochat/Size;-><init>(II)V

    iput-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedFrameOutputSize:Lcom/google/android/videochat/Size;

    .line 253
    iget-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedCaptureSize:Lcom/google/android/videochat/Size;

    iget v6, v6, Lcom/google/android/videochat/Size;->width:I

    int-to-float v6, v6

    iget-object v8, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedCaptureSize:Lcom/google/android/videochat/Size;

    iget v8, v8, Lcom/google/android/videochat/Size;->height:I

    int-to-float v8, v8

    div-float v0, v6, v8

    .line 255
    .local v0, captureAspectRatio:F
    iget-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedFrameOutputSize:Lcom/google/android/videochat/Size;

    iget v6, v6, Lcom/google/android/videochat/Size;->width:I

    int-to-float v6, v6

    iget-object v8, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedFrameOutputSize:Lcom/google/android/videochat/Size;

    iget v8, v8, Lcom/google/android/videochat/Size;->height:I

    int-to-float v8, v8

    div-float v1, v6, v8

    .line 258
    .local v1, outputAspectRatio:F
    cmpg-float v6, v0, v1

    if-gez v6, :cond_6

    .line 259
    iget-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedCaptureSize:Lcom/google/android/videochat/Size;

    iget v6, v6, Lcom/google/android/videochat/Size;->width:I

    int-to-float v6, v6

    iget-object v8, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedFrameOutputSize:Lcom/google/android/videochat/Size;

    iget v8, v8, Lcom/google/android/videochat/Size;->width:I

    int-to-float v8, v8

    div-float v4, v6, v8

    .line 263
    .local v4, scale:F
    :goto_3
    iget-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedCaptureSize:Lcom/google/android/videochat/Size;

    invoke-static {v6, v4}, Lcom/google/android/videochat/Size;->newWithScaleDown(Lcom/google/android/videochat/Size;F)Lcom/google/android/videochat/Size;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedScaledCameraBufferSize:Lcom/google/android/videochat/Size;

    .line 265
    iget-boolean v6, p0, Lcom/google/android/videochat/SelfRenderer;->mUseMaxSizeForCameraBuffer:Z

    if-eqz v6, :cond_7

    .line 266
    new-instance v6, Lcom/google/android/videochat/Size;

    iget-object v8, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedCaptureSize:Lcom/google/android/videochat/Size;

    invoke-direct {v6, v8}, Lcom/google/android/videochat/Size;-><init>(Lcom/google/android/videochat/Size;)V

    iput-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedCameraBufferSize:Lcom/google/android/videochat/Size;

    .line 271
    :goto_4
    iget v6, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraRotation:I

    sparse-switch v6, :sswitch_data_0

    .line 282
    invoke-static {}, Lcom/google/android/videochat/util/MatrixUtil;->getIdentityMatrix()[F

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mRotationTransform:[F

    .line 286
    :goto_5
    iget-object v8, p0, Lcom/google/android/videochat/SelfRenderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v9, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraRendererID:I

    const-string v10, "sub_flipinput"

    iget-boolean v6, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraCaptureFlip:Z

    if-eqz v6, :cond_8

    move v6, v7

    :goto_6
    invoke-virtual {v8, v9, v10, v6}, Lcom/google/android/videochat/RendererManager;->setIntParam(ILjava/lang/String;I)V

    .line 288
    iget-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v8, p0, Lcom/google/android/videochat/SelfRenderer;->mEncodeRendererID:I

    const-string v9, "c_rotation"

    iget v10, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraRotation:I

    invoke-virtual {v6, v8, v9, v10}, Lcom/google/android/videochat/RendererManager;->setIntParam(ILjava/lang/String;I)V

    .line 290
    iget-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v8, p0, Lcom/google/android/videochat/SelfRenderer;->mEncodeRendererID:I

    const-string v9, "sub_outdims"

    iget-object v10, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedFrameOutputSize:Lcom/google/android/videochat/Size;

    invoke-virtual {v10}, Lcom/google/android/videochat/Size;->getEncodedDimensions()I

    move-result v10

    invoke-virtual {v6, v8, v9, v10}, Lcom/google/android/videochat/RendererManager;->setIntParam(ILjava/lang/String;I)V

    .line 293
    iget-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v8, p0, Lcom/google/android/videochat/SelfRenderer;->mEncodeRendererID:I

    const-string v9, "sub_indims"

    iget-object v10, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedScaledCameraBufferSize:Lcom/google/android/videochat/Size;

    invoke-virtual {v10}, Lcom/google/android/videochat/Size;->getEncodedDimensions()I

    move-result v10

    invoke-virtual {v6, v8, v9, v10}, Lcom/google/android/videochat/RendererManager;->setIntParam(ILjava/lang/String;I)V

    .line 297
    invoke-static {}, Lcom/google/android/videochat/util/LogUtil;->verboseLoggable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 298
    const-string v6, "vclib:SelfRenderer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Self dimensions - captureAspectRatio "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " outputAspectRatio "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " scale "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mFrameOutputParameters = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/videochat/SelfRenderer;->mFrameOutputParameters:Lcom/google/android/videochat/CameraManager$FrameOutputParameters;

    iget-object v9, v9, Lcom/google/android/videochat/CameraManager$FrameOutputParameters;->size:Lcom/google/android/videochat/Size;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mMaxFrameOutputParameters = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/videochat/SelfRenderer;->mMaxFrameOutputParameters:Lcom/google/android/videochat/Size;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mRotatedCaptureSize = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedCaptureSize:Lcom/google/android/videochat/Size;

    invoke-virtual {v9}, Lcom/google/android/videochat/Size;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mRotatedCameraBufferSize = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedCameraBufferSize:Lcom/google/android/videochat/Size;

    invoke-virtual {v9}, Lcom/google/android/videochat/Size;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mRotatedScaledDownCameraBufferSize = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedScaledCameraBufferSize:Lcom/google/android/videochat/Size;

    invoke-virtual {v9}, Lcom/google/android/videochat/Size;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mRotatedFrameOutputSize = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedFrameOutputSize:Lcom/google/android/videochat/Size;

    invoke-virtual {v9}, Lcom/google/android/videochat/Size;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_2
    iget-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v8, p0, Lcom/google/android/videochat/SelfRenderer;->mEncodeRendererID:I

    const-string v9, "sub_inclip"

    iget-object v10, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedScaledCameraBufferSize:Lcom/google/android/videochat/Size;

    iget v10, v10, Lcom/google/android/videochat/Size;->width:I

    iget-object v11, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedFrameOutputSize:Lcom/google/android/videochat/Size;

    iget v11, v11, Lcom/google/android/videochat/Size;->width:I

    sub-int/2addr v10, v11

    shl-int/lit8 v10, v10, 0x10

    iget-object v11, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedScaledCameraBufferSize:Lcom/google/android/videochat/Size;

    iget v11, v11, Lcom/google/android/videochat/Size;->height:I

    iget-object v12, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedFrameOutputSize:Lcom/google/android/videochat/Size;

    iget v12, v12, Lcom/google/android/videochat/Size;->height:I

    sub-int/2addr v11, v12

    or-int/2addr v10, v11

    invoke-virtual {v6, v8, v9, v10}, Lcom/google/android/videochat/RendererManager;->setIntParam(ILjava/lang/String;I)V

    .line 313
    iget-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v8, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraRendererID:I

    const-string v9, "sub_outdims"

    iget-object v10, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedCameraBufferSize:Lcom/google/android/videochat/Size;

    invoke-virtual {v10}, Lcom/google/android/videochat/Size;->getEncodedDimensions()I

    move-result v10

    invoke-virtual {v6, v8, v9, v10}, Lcom/google/android/videochat/RendererManager;->setIntParam(ILjava/lang/String;I)V

    .line 316
    iget-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mCallback:Lcom/google/android/videochat/Renderer$SelfRendererThreadCallback;

    iget-object v8, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedFrameOutputSize:Lcom/google/android/videochat/Size;

    iget v8, v8, Lcom/google/android/videochat/Size;->width:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedFrameOutputSize:Lcom/google/android/videochat/Size;

    iget v9, v9, Lcom/google/android/videochat/Size;->height:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    iget-object v9, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedScaledCameraBufferSize:Lcom/google/android/videochat/Size;

    iget v9, v9, Lcom/google/android/videochat/Size;->width:I

    iget-object v10, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedFrameOutputSize:Lcom/google/android/videochat/Size;

    iget v10, v10, Lcom/google/android/videochat/Size;->width:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    iget-object v10, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedScaledCameraBufferSize:Lcom/google/android/videochat/Size;

    iget v10, v10, Lcom/google/android/videochat/Size;->width:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    div-float/2addr v9, v13

    iget-object v10, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedScaledCameraBufferSize:Lcom/google/android/videochat/Size;

    iget v10, v10, Lcom/google/android/videochat/Size;->height:I

    iget-object v11, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedFrameOutputSize:Lcom/google/android/videochat/Size;

    iget v11, v11, Lcom/google/android/videochat/Size;->height:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    iget-object v11, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedScaledCameraBufferSize:Lcom/google/android/videochat/Size;

    iget v11, v11, Lcom/google/android/videochat/Size;->height:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    div-float/2addr v10, v13

    invoke-interface {v6, v8, v9, v10}, Lcom/google/android/videochat/Renderer$SelfRendererThreadCallback;->onFrameGeometryChanged(FFF)V

    .line 322
    iget v6, p0, Lcom/google/android/videochat/SelfRenderer;->mImageStabilizationRendererID:I

    const/4 v8, -0x1

    if-eq v6, v8, :cond_3

    .line 323
    invoke-direct {p0}, Lcom/google/android/videochat/SelfRenderer;->setSizeOnImageStabilizationRenderer()V

    .line 325
    :cond_3
    iput-boolean v7, p0, Lcom/google/android/videochat/SelfRenderer;->mHaveInitializedCameraSettings:Z

    goto/16 :goto_0

    .line 232
    .end local v0           #captureAspectRatio:F
    .end local v1           #outputAspectRatio:F
    .end local v2           #rotatedFrameOutputHeight:I
    .end local v3           #rotatedFrameOutputWidth:I
    .end local v4           #scale:F
    .end local v5           #scaledFrameOutputParameters:Lcom/google/android/videochat/Size;
    :cond_4
    iget-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mFrameOutputParameters:Lcom/google/android/videochat/CameraManager$FrameOutputParameters;

    iget-object v5, v6, Lcom/google/android/videochat/CameraManager$FrameOutputParameters;->size:Lcom/google/android/videochat/Size;

    .restart local v5       #scaledFrameOutputParameters:Lcom/google/android/videochat/Size;
    goto/16 :goto_1

    .line 243
    :cond_5
    new-instance v6, Lcom/google/android/videochat/Size;

    iget-object v8, p0, Lcom/google/android/videochat/SelfRenderer;->mCaptureSize:Lcom/google/android/videochat/Size;

    iget v8, v8, Lcom/google/android/videochat/Size;->height:I

    iget-object v9, p0, Lcom/google/android/videochat/SelfRenderer;->mCaptureSize:Lcom/google/android/videochat/Size;

    iget v9, v9, Lcom/google/android/videochat/Size;->width:I

    invoke-direct {v6, v8, v9}, Lcom/google/android/videochat/Size;-><init>(II)V

    iput-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedCaptureSize:Lcom/google/android/videochat/Size;

    .line 245
    iget v3, v5, Lcom/google/android/videochat/Size;->height:I

    .line 246
    .restart local v3       #rotatedFrameOutputWidth:I
    iget v2, v5, Lcom/google/android/videochat/Size;->width:I

    .restart local v2       #rotatedFrameOutputHeight:I
    goto/16 :goto_2

    .line 261
    .restart local v0       #captureAspectRatio:F
    .restart local v1       #outputAspectRatio:F
    :cond_6
    iget-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedCaptureSize:Lcom/google/android/videochat/Size;

    iget v6, v6, Lcom/google/android/videochat/Size;->height:I

    int-to-float v6, v6

    iget-object v8, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedFrameOutputSize:Lcom/google/android/videochat/Size;

    iget v8, v8, Lcom/google/android/videochat/Size;->height:I

    int-to-float v8, v8

    div-float v4, v6, v8

    .restart local v4       #scale:F
    goto/16 :goto_3

    .line 268
    :cond_7
    new-instance v6, Lcom/google/android/videochat/Size;

    iget-object v8, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedScaledCameraBufferSize:Lcom/google/android/videochat/Size;

    invoke-direct {v6, v8}, Lcom/google/android/videochat/Size;-><init>(Lcom/google/android/videochat/Size;)V

    iput-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedCameraBufferSize:Lcom/google/android/videochat/Size;

    goto/16 :goto_4

    .line 273
    :sswitch_0
    invoke-static {}, Lcom/google/android/videochat/util/MatrixUtil;->getRotate90Matrix()[F

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mRotationTransform:[F

    goto/16 :goto_5

    .line 276
    :sswitch_1
    invoke-static {}, Lcom/google/android/videochat/util/MatrixUtil;->getRotate180Matrix()[F

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mRotationTransform:[F

    goto/16 :goto_5

    .line 279
    :sswitch_2
    invoke-static {}, Lcom/google/android/videochat/util/MatrixUtil;->getRotate270Matrix()[F

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mRotationTransform:[F

    goto/16 :goto_5

    .line 286
    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_6

    .line 271
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method private recomputeCameraRotation()V
    .locals 2

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraCaptureFlip:Z

    if-eqz v0, :cond_0

    .line 179
    iget v0, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraOrientation:I

    iget v1, p0, Lcom/google/android/videochat/SelfRenderer;->mDeviceOrientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraRotation:I

    .line 180
    iget v0, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraRotation:I

    rsub-int v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraRotation:I

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    iget v0, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraOrientation:I

    iget v1, p0, Lcom/google/android/videochat/SelfRenderer;->mDeviceOrientation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraRotation:I

    goto :goto_0
.end method

.method private setOutputTextureName(I)V
    .locals 2
    .parameter "textureName"

    .prologue
    .line 400
    iget v0, p0, Lcom/google/android/videochat/SelfRenderer;->mOutputTextureName:I

    if-eq p1, v0, :cond_0

    .line 401
    iput p1, p0, Lcom/google/android/videochat/SelfRenderer;->mOutputTextureName:I

    .line 402
    iget-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mCallback:Lcom/google/android/videochat/Renderer$SelfRendererThreadCallback;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mCallback:Lcom/google/android/videochat/Renderer$SelfRendererThreadCallback;

    iget v1, p0, Lcom/google/android/videochat/SelfRenderer;->mOutputTextureName:I

    invoke-interface {v0, v1}, Lcom/google/android/videochat/Renderer$SelfRendererThreadCallback;->onOutputTextureNameChanged(I)V

    .line 406
    :cond_0
    return-void
.end method

.method private setSizeOnImageStabilizationRenderer()V
    .locals 4

    .prologue
    .line 479
    iget-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v1, p0, Lcom/google/android/videochat/SelfRenderer;->mImageStabilizationRendererID:I

    const-string v2, "sub_indims"

    iget-object v3, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedCameraBufferSize:Lcom/google/android/videochat/Size;

    invoke-virtual {v3}, Lcom/google/android/videochat/Size;->getEncodedDimensions()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/videochat/RendererManager;->setIntParam(ILjava/lang/String;I)V

    .line 482
    iget-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v1, p0, Lcom/google/android/videochat/SelfRenderer;->mImageStabilizationRendererID:I

    const-string v2, "sub_outdims"

    iget-object v3, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedScaledCameraBufferSize:Lcom/google/android/videochat/Size;

    invoke-virtual {v3}, Lcom/google/android/videochat/Size;->getEncodedDimensions()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/videochat/RendererManager;->setIntParam(ILjava/lang/String;I)V

    .line 485
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 0
    .parameter "writer"

    .prologue
    .line 439
    return-void
.end method

.method public encodeFrame()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 598
    iget-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mEncodeStopWatch:Lcom/google/android/videochat/util/GLStopWatch;

    invoke-virtual {v0}, Lcom/google/android/videochat/util/GLStopWatch;->start()V

    .line 599
    iget-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v1, p0, Lcom/google/android/videochat/SelfRenderer;->mEncodeRendererID:I

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/videochat/RendererManager;->renderFrame(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 600
    iget-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mEncodeStopWatch:Lcom/google/android/videochat/util/GLStopWatch;

    invoke-virtual {v0}, Lcom/google/android/videochat/util/GLStopWatch;->stop()V

    .line 601
    return-void
.end method

.method public getCamera()Lcom/google/android/videochat/CameraInterface;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraInterface:Lcom/google/android/videochat/CameraInterface;

    return-object v0
.end method

.method public getCameraBufferSize()Lcom/google/android/videochat/Size;
    .locals 2

    .prologue
    .line 206
    new-instance v0, Lcom/google/android/videochat/Size;

    iget-object v1, p0, Lcom/google/android/videochat/SelfRenderer;->mRotatedCameraBufferSize:Lcom/google/android/videochat/Size;

    invoke-direct {v0, v1}, Lcom/google/android/videochat/Size;-><init>(Lcom/google/android/videochat/Size;)V

    return-object v0
.end method

.method public getMostRecentCameraFrameTime()J
    .locals 2

    .prologue
    .line 493
    iget-wide v0, p0, Lcom/google/android/videochat/SelfRenderer;->mLastCameraFrameTime:J

    return-wide v0
.end method

.method public getOutputTextureName()I
    .locals 1

    .prologue
    .line 396
    iget v0, p0, Lcom/google/android/videochat/SelfRenderer;->mOutputTextureName:I

    return v0
.end method

.method public initializeGLContext()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 330
    invoke-static {}, Lcom/google/android/videochat/util/LogUtil;->verboseLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 331
    const-string v2, "vclib:SelfRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializeGLContext "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraRendererID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_0
    iput-boolean v6, p0, Lcom/google/android/videochat/SelfRenderer;->mHaveSeenFirstFrame:Z

    .line 335
    iput-boolean v6, p0, Lcom/google/android/videochat/SelfRenderer;->mHaveInitializedCameraSettings:Z

    .line 336
    iput-boolean v6, p0, Lcom/google/android/videochat/SelfRenderer;->mSelfFrameReady:Z

    .line 338
    new-array v1, v5, [I

    .line 339
    .local v1, textures:[I
    invoke-static {v5, v1, v6}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 340
    const-string v2, "gen camera texture"

    invoke-static {v2}, Lcom/google/android/videochat/util/RendererUtil;->checkGlError(Ljava/lang/String;)V

    .line 341
    aget v0, v1, v6

    .line 342
    .local v0, cameraExternalTextureName:I
    new-instance v2, Landroid/graphics/SurfaceTexture;

    invoke-direct {v2, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 343
    iget-object v2, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v3, Lcom/google/android/videochat/SelfRenderer$2;

    invoke-direct {v3, p0}, Lcom/google/android/videochat/SelfRenderer$2;-><init>(Lcom/google/android/videochat/SelfRenderer;)V

    invoke-virtual {v2, v3}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 352
    iget-object v2, p0, Lcom/google/android/videochat/SelfRenderer;->mCamera:Lcom/google/android/videochat/CameraManager;

    iget-object v3, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2, v3}, Lcom/google/android/videochat/CameraManager;->setPreviewSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 354
    iget-object v2, p0, Lcom/google/android/videochat/SelfRenderer;->mCamera:Lcom/google/android/videochat/CameraManager;

    invoke-virtual {v2}, Lcom/google/android/videochat/CameraManager;->getCurrentFrameOutputParameters()Lcom/google/android/videochat/CameraManager$FrameOutputParameters;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/videochat/SelfRenderer;->mFrameOutputParameters:Lcom/google/android/videochat/CameraManager$FrameOutputParameters;

    .line 355
    iget-object v2, p0, Lcom/google/android/videochat/SelfRenderer;->mFrameOutputParameters:Lcom/google/android/videochat/CameraManager$FrameOutputParameters;

    if-nez v2, :cond_2

    .line 357
    invoke-static {}, Lcom/google/android/videochat/util/LogUtil;->verboseLoggable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 358
    const-string v2, "vclib:SelfRenderer"

    const-string v3, "initializeGLContext -- no frameOutputParams yet"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_1
    new-instance v2, Lcom/google/android/videochat/CameraManager$FrameOutputParameters;

    new-instance v3, Lcom/google/android/videochat/Size;

    const/16 v4, 0x140

    const/16 v5, 0xc8

    invoke-direct {v3, v4, v5}, Lcom/google/android/videochat/Size;-><init>(II)V

    const/16 v4, 0xf

    invoke-direct {v2, v3, v4}, Lcom/google/android/videochat/CameraManager$FrameOutputParameters;-><init>(Lcom/google/android/videochat/Size;I)V

    iput-object v2, p0, Lcom/google/android/videochat/SelfRenderer;->mFrameOutputParameters:Lcom/google/android/videochat/CameraManager$FrameOutputParameters;

    .line 363
    :cond_2
    iget-object v2, p0, Lcom/google/android/videochat/SelfRenderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v3, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraRendererID:I

    const-string v4, "sub_intex"

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/videochat/RendererManager;->setIntParam(ILjava/lang/String;I)V

    .line 366
    iget-object v2, p0, Lcom/google/android/videochat/SelfRenderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v3, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraRendererID:I

    invoke-virtual {v2, v3}, Lcom/google/android/videochat/RendererManager;->initializeGLContext(I)Z

    .line 367
    iget-object v2, p0, Lcom/google/android/videochat/SelfRenderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v3, p0, Lcom/google/android/videochat/SelfRenderer;->mEncodeRendererID:I

    invoke-virtual {v2, v3}, Lcom/google/android/videochat/RendererManager;->initializeGLContext(I)Z

    .line 368
    iput v6, p0, Lcom/google/android/videochat/SelfRenderer;->mCurrentImageStabilizationLevel:I

    .line 369
    iget v2, p0, Lcom/google/android/videochat/SelfRenderer;->mImageStabilizationRendererID:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 370
    invoke-direct {p0}, Lcom/google/android/videochat/SelfRenderer;->initializeImageStabilizationRenderer()V

    .line 373
    :cond_3
    iget-object v2, p0, Lcom/google/android/videochat/SelfRenderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v3, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraRendererID:I

    const-string v4, "sub_outtex"

    invoke-virtual {v2, v3, v4}, Lcom/google/android/videochat/RendererManager;->getIntParam(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraOutputTextureName:I

    .line 375
    iget-object v2, p0, Lcom/google/android/videochat/SelfRenderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v3, p0, Lcom/google/android/videochat/SelfRenderer;->mEncodeRendererID:I

    const-string v4, "sub_intex"

    iget v5, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraOutputTextureName:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/videochat/RendererManager;->setIntParam(ILjava/lang/String;I)V

    .line 378
    iget v2, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraOutputTextureName:I

    invoke-direct {p0, v2}, Lcom/google/android/videochat/SelfRenderer;->setOutputTextureName(I)V

    .line 379
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/videochat/SelfRenderer;->mLastCameraFrameTime:J

    .line 380
    return-void
.end method

.method public overrideEncodeTexture(I)V
    .locals 3
    .parameter "textureName"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v1, p0, Lcom/google/android/videochat/SelfRenderer;->mEncodeRendererID:I

    const-string v2, "sub_intex"

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/videochat/RendererManager;->setIntParam(ILjava/lang/String;I)V

    .line 412
    return-void
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 422
    invoke-static {}, Lcom/google/android/videochat/util/LogUtil;->verboseLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    const-string v0, "vclib:SelfRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release cam "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraRendererID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/videochat/SelfRenderer;->mEncodeRendererID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/videochat/SelfRenderer;->mImageStabilizationRendererID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mCamera:Lcom/google/android/videochat/CameraManager;

    invoke-virtual {v0, v3}, Lcom/google/android/videochat/CameraManager;->setPreviewSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 427
    iget v0, p0, Lcom/google/android/videochat/SelfRenderer;->mImageStabilizationRendererID:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 428
    iget-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v1, p0, Lcom/google/android/videochat/SelfRenderer;->mImageStabilizationRendererID:I

    invoke-virtual {v0, v1}, Lcom/google/android/videochat/RendererManager;->releaseRenderer(I)V

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    invoke-virtual {v0, p0}, Lcom/google/android/videochat/RendererManager;->unregisterRendererForStats(Lcom/google/android/videochat/Renderer;)V

    .line 431
    iget-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v1, p0, Lcom/google/android/videochat/SelfRenderer;->mEncodeRendererID:I

    invoke-virtual {v0, v1}, Lcom/google/android/videochat/RendererManager;->releaseRenderer(I)V

    .line 432
    iget-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v1, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraRendererID:I

    invoke-virtual {v0, v1}, Lcom/google/android/videochat/RendererManager;->releaseRenderer(I)V

    .line 433
    iget-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mCamera:Lcom/google/android/videochat/CameraManager;

    invoke-virtual {v0, v3}, Lcom/google/android/videochat/CameraManager;->setApplicationCallback(Lcom/google/android/videochat/CameraManager$CameraManagerCallback;)V

    .line 434
    return-void
.end method

.method public renderSelfFrame()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 502
    const/4 v4, 0x0

    .line 503
    .local v4, selfFrameReady:Z
    iget-boolean v5, p0, Lcom/google/android/videochat/SelfRenderer;->mHaveInitializedCameraSettings:Z

    if-eqz v5, :cond_1

    .line 504
    iget-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mSelfFrameReadyLock:Ljava/lang/Object;

    monitor-enter v6

    .line 505
    :try_start_0
    iget-boolean v4, p0, Lcom/google/android/videochat/SelfRenderer;->mSelfFrameReady:Z

    .line 506
    if-eqz v4, :cond_0

    .line 507
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/google/android/videochat/SelfRenderer;->mSelfFrameReady:Z

    .line 509
    :cond_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    :cond_1
    if-eqz v4, :cond_8

    .line 513
    iget-object v5, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraStopWatch:Lcom/google/android/videochat/util/GLStopWatch;

    invoke-virtual {v5}, Lcom/google/android/videochat/util/GLStopWatch;->start()V

    .line 514
    iget-object v5, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v5}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 515
    iget-object v5, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v5}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/videochat/SelfRenderer;->mLastCameraFrameTime:J

    .line 516
    iget-object v5, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraTransformMatrix:[F

    invoke-virtual {v5, v6}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 517
    iget-object v5, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraTransformMatrix:[F

    iget-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mRotationTransform:[F

    iget-object v7, p0, Lcom/google/android/videochat/SelfRenderer;->mSelfViewTransformMatrix:[F

    invoke-static {v5, v6, v7}, Lcom/google/android/videochat/util/MatrixUtil;->matrixMultiply4x4([F[F[F)V

    .line 519
    iget-object v5, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraInputData:Lcom/google/android/videochat/SelfRenderer$CameraInputData;

    iget-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mSelfViewTransformMatrix:[F

    iput-object v6, v5, Lcom/google/android/videochat/SelfRenderer$CameraInputData;->selfFrameTransform:[F

    .line 521
    iget-object v5, p0, Lcom/google/android/videochat/SelfRenderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v6, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraRendererID:I

    iget-object v7, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraInputData:Lcom/google/android/videochat/SelfRenderer$CameraInputData;

    invoke-virtual {v5, v6, v7, v9}, Lcom/google/android/videochat/RendererManager;->renderFrame(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 522
    iget-object v5, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraStopWatch:Lcom/google/android/videochat/util/GLStopWatch;

    invoke-virtual {v5}, Lcom/google/android/videochat/util/GLStopWatch;->stop()V

    .line 524
    iget-boolean v5, p0, Lcom/google/android/videochat/SelfRenderer;->mHaveSeenFirstFrame:Z

    if-nez v5, :cond_3

    .line 525
    iget-object v5, p0, Lcom/google/android/videochat/SelfRenderer;->mCallback:Lcom/google/android/videochat/Renderer$SelfRendererThreadCallback;

    if-eqz v5, :cond_2

    .line 526
    iget-object v5, p0, Lcom/google/android/videochat/SelfRenderer;->mCallback:Lcom/google/android/videochat/Renderer$SelfRendererThreadCallback;

    invoke-interface {v5}, Lcom/google/android/videochat/Renderer$SelfRendererThreadCallback;->onInitialFrame()V

    .line 528
    :cond_2
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/google/android/videochat/SelfRenderer;->mHaveSeenFirstFrame:Z

    .line 534
    :cond_3
    iget-object v6, p0, Lcom/google/android/videochat/SelfRenderer;->mEffectsLock:Ljava/lang/Object;

    monitor-enter v6

    .line 535
    :try_start_1
    iget v0, p0, Lcom/google/android/videochat/SelfRenderer;->mCurrentImageStabilizationLevel:I

    .line 536
    .local v0, currentImageStabilizationLevel:I
    iget v2, p0, Lcom/google/android/videochat/SelfRenderer;->mPendingImageStabilizationLevel:I

    .line 537
    .local v2, pendingImageStabilizationLevel:I
    iget v5, p0, Lcom/google/android/videochat/SelfRenderer;->mPendingImageStabilizationLevel:I

    iput v5, p0, Lcom/google/android/videochat/SelfRenderer;->mCurrentImageStabilizationLevel:I

    .line 538
    iget-boolean v3, p0, Lcom/google/android/videochat/SelfRenderer;->mResetImageStabilization:Z

    .line 539
    .local v3, resetImageStabilization:Z
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/google/android/videochat/SelfRenderer;->mResetImageStabilization:Z

    .line 540
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 541
    if-eqz v3, :cond_4

    .line 542
    iget-object v5, p0, Lcom/google/android/videochat/SelfRenderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v6, p0, Lcom/google/android/videochat/SelfRenderer;->mImageStabilizationRendererID:I

    const-string v7, "is_reset"

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/android/videochat/RendererManager;->setIntParam(ILjava/lang/String;I)V

    .line 546
    :cond_4
    if-eq v2, v0, :cond_7

    .line 547
    invoke-static {}, Lcom/google/android/videochat/util/LogUtil;->verboseLoggable()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 548
    const-string v5, "vclib:SelfRenderer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IS level was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " now "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :cond_5
    if-lez v2, :cond_9

    .line 554
    iget v5, p0, Lcom/google/android/videochat/SelfRenderer;->mImageStabilizationRendererID:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_6

    .line 556
    iget-object v5, p0, Lcom/google/android/videochat/SelfRenderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/google/android/videochat/RendererManager;->instantiateRenderer(I)I

    move-result v5

    iput v5, p0, Lcom/google/android/videochat/SelfRenderer;->mImageStabilizationRendererID:I

    .line 559
    invoke-direct {p0}, Lcom/google/android/videochat/SelfRenderer;->initializeImageStabilizationRenderer()V

    .line 562
    :cond_6
    iget-object v5, p0, Lcom/google/android/videochat/SelfRenderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v6, p0, Lcom/google/android/videochat/SelfRenderer;->mImageStabilizationRendererID:I

    const-string v7, "is_level"

    invoke-virtual {v5, v6, v7, v2}, Lcom/google/android/videochat/RendererManager;->setIntParam(ILjava/lang/String;I)V

    .line 568
    iget-object v5, p0, Lcom/google/android/videochat/SelfRenderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v6, p0, Lcom/google/android/videochat/SelfRenderer;->mEncodeRendererID:I

    const-string v7, "sub_intex"

    iget v8, p0, Lcom/google/android/videochat/SelfRenderer;->mImageStabilizationTextureName:I

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/android/videochat/RendererManager;->setIntParam(ILjava/lang/String;I)V

    .line 571
    iget v1, p0, Lcom/google/android/videochat/SelfRenderer;->mImageStabilizationTextureName:I

    .line 580
    .local v1, newOutputTextureName:I
    :goto_0
    invoke-direct {p0, v1}, Lcom/google/android/videochat/SelfRenderer;->setOutputTextureName(I)V

    .line 581
    move v0, v2

    .line 584
    .end local v1           #newOutputTextureName:I
    :cond_7
    if-lez v0, :cond_8

    .line 585
    iget-object v5, p0, Lcom/google/android/videochat/SelfRenderer;->mImageStabilizationStopWatch:Lcom/google/android/videochat/util/GLStopWatch;

    invoke-virtual {v5}, Lcom/google/android/videochat/util/GLStopWatch;->start()V

    .line 586
    iget-object v5, p0, Lcom/google/android/videochat/SelfRenderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v6, p0, Lcom/google/android/videochat/SelfRenderer;->mImageStabilizationRendererID:I

    invoke-virtual {v5, v6, v9, v9}, Lcom/google/android/videochat/RendererManager;->renderFrame(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 587
    iget-object v5, p0, Lcom/google/android/videochat/SelfRenderer;->mImageStabilizationStopWatch:Lcom/google/android/videochat/util/GLStopWatch;

    invoke-virtual {v5}, Lcom/google/android/videochat/util/GLStopWatch;->stop()V

    .line 590
    .end local v0           #currentImageStabilizationLevel:I
    .end local v2           #pendingImageStabilizationLevel:I
    .end local v3           #resetImageStabilization:Z
    :cond_8
    return v4

    .line 509
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 540
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    .line 575
    .restart local v0       #currentImageStabilizationLevel:I
    .restart local v2       #pendingImageStabilizationLevel:I
    .restart local v3       #resetImageStabilization:Z
    :cond_9
    iget-object v5, p0, Lcom/google/android/videochat/SelfRenderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v6, p0, Lcom/google/android/videochat/SelfRenderer;->mEncodeRendererID:I

    const-string v7, "sub_intex"

    iget v8, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraOutputTextureName:I

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/android/videochat/RendererManager;->setIntParam(ILjava/lang/String;I)V

    .line 578
    iget v1, p0, Lcom/google/android/videochat/SelfRenderer;->mCameraOutputTextureName:I

    .restart local v1       #newOutputTextureName:I
    goto :goto_0
.end method

.method public resetEncodeTexture()V
    .locals 4

    .prologue
    .line 415
    iget-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mRendererManager:Lcom/google/android/videochat/RendererManager;

    iget v1, p0, Lcom/google/android/videochat/SelfRenderer;->mEncodeRendererID:I

    const-string v2, "sub_intex"

    iget v3, p0, Lcom/google/android/videochat/SelfRenderer;->mOutputTextureName:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/videochat/RendererManager;->setIntParam(ILjava/lang/String;I)V

    .line 418
    return-void
.end method

.method public resetImageStabilization()V
    .locals 2

    .prologue
    .line 389
    iget-object v1, p0, Lcom/google/android/videochat/SelfRenderer;->mEffectsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 390
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/videochat/SelfRenderer;->mResetImageStabilization:Z

    .line 391
    monitor-exit v1

    .line 392
    return-void

    .line 391
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDeviceOrientation(I)V
    .locals 0
    .parameter "degrees"

    .prologue
    .line 200
    iput p1, p0, Lcom/google/android/videochat/SelfRenderer;->mDeviceOrientation:I

    .line 201
    invoke-direct {p0}, Lcom/google/android/videochat/SelfRenderer;->recomputeCameraRotation()V

    .line 202
    invoke-direct {p0}, Lcom/google/android/videochat/SelfRenderer;->onFrameSizesChanged()V

    .line 203
    return-void
.end method

.method public setImageStabilizationLevel(I)V
    .locals 2
    .parameter "level"

    .prologue
    .line 383
    iget-object v1, p0, Lcom/google/android/videochat/SelfRenderer;->mEffectsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 384
    :try_start_0
    iput p1, p0, Lcom/google/android/videochat/SelfRenderer;->mPendingImageStabilizationLevel:I

    .line 385
    monitor-exit v1

    .line 386
    return-void

    .line 385
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMaxEncodeVideoSpec(Lcom/google/android/videochat/VideoSpecification;)V
    .locals 2
    .parameter "spec"

    .prologue
    .line 211
    invoke-virtual {p1}, Lcom/google/android/videochat/VideoSpecification;->getSize()Lcom/google/android/videochat/Size;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/videochat/SelfRenderer;->mMaxFrameOutputParameters:Lcom/google/android/videochat/Size;

    invoke-virtual {v0, v1}, Lcom/google/android/videochat/Size;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    invoke-virtual {p1}, Lcom/google/android/videochat/VideoSpecification;->getSize()Lcom/google/android/videochat/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/videochat/SelfRenderer;->mMaxFrameOutputParameters:Lcom/google/android/videochat/Size;

    .line 213
    invoke-direct {p0}, Lcom/google/android/videochat/SelfRenderer;->onFrameSizesChanged()V

    .line 215
    :cond_0
    return-void
.end method

.method public setUseMaxSizeForCameraBuffer(Z)V
    .locals 3
    .parameter "useMaxSize"

    .prologue
    .line 192
    invoke-static {}, Lcom/google/android/videochat/util/LogUtil;->verboseLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const-string v0, "vclib:SelfRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUseMaxSizeForCameraBuffer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/videochat/SelfRenderer;->mUseMaxSizeForCameraBuffer:Z

    .line 196
    invoke-direct {p0}, Lcom/google/android/videochat/SelfRenderer;->onFrameSizesChanged()V

    .line 197
    return-void
.end method
