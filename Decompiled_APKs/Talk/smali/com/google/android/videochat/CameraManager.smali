.class Lcom/google/android/videochat/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/videochat/CameraManager$CameraManagerCallback;,
        Lcom/google/android/videochat/CameraManager$FrameOutputParameters;,
        Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;
    }
.end annotation


# static fields
.field private static final CAMERA_STATE_CLOSED:I = 0x0

.field private static final CAMERA_STATE_NATIVE_WANTS:I = 0x1

.field private static final CAMERA_STATE_RUNNING:I = 0x2

.field private static final CAMERA_STATE_SUSPENDED:I = 0x3

.field private static final DEBUG:Z = false

.field private static final DEFAULT_FRAME_RATE:I = 0xf

.field private static final DELAY_BEFORE_FIRST_DIM_FRAME_PUSH_MS:I = 0x3e8

.field private static final DELAY_BETWEEN_DIM_FRAME_PUSH_MS:I = 0x3e8

.field private static final FRAME_PUSHER_MAX_WAIT_MS:I = 0x3e8

.field private static final FRAME_PUSHER_PUSH_FRAME_MSG:I = 0x64

.field private static final FRAME_PUSHER_QUIT_MSG:I = 0x65

.field private static final TAG:Ljava/lang/String; = "vclib:CameraManager"

.field private static final TEST_STABILIZATION:Ljava/lang/String;

.field private static volatile sInstance:Lcom/google/android/videochat/CameraManager;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field private mCallback:Lcom/google/android/videochat/CameraManager$CameraManagerCallback;

.field private mCamera:Landroid/hardware/Camera;

.field private final mCameraLock:Ljava/lang/Object;

.field private mCameraSettings:[Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

.field private mCameraState:I

.field private mCurrentCameraIndex:I

.field private mCurrentCameraLock:Ljava/lang/Object;

.field private mCurrentCameraSettings:Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

.field private mDefaultCamera:Lcom/google/android/videochat/CameraSpecification;

.field private mDisableCamera:Z

.field private mFinalOutputParams:Lcom/google/android/videochat/CameraManager$FrameOutputParameters;

.field private mFramePusher:Landroid/os/Handler;

.field private final mFramePusherLock:Ljava/lang/Object;

.field private mFramePusherPending:Z

.field private final mFramePusherRunnable:Ljava/lang/Runnable;

.field private mHaveReadCameraIds:Z

.field private mLastFrameTime:J

.field private mLastReportedParameters:Lcom/google/android/videochat/CameraManager$FrameOutputParameters;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mNumAvailableCameras:I

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/videochat/CameraManager;->TEST_STABILIZATION:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/videochat/CameraManager;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/videochat/CameraManager;->mCameraLock:Ljava/lang/Object;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/videochat/CameraManager;->mHaveReadCameraIds:Z

    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraLock:Ljava/lang/Object;

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/videochat/CameraManager;->mFramePusherLock:Ljava/lang/Object;

    .line 451
    new-instance v0, Lcom/google/android/videochat/CameraManager$1;

    invoke-direct {v0, p0}, Lcom/google/android/videochat/CameraManager$1;-><init>(Lcom/google/android/videochat/CameraManager;)V

    iput-object v0, p0, Lcom/google/android/videochat/CameraManager;->mFramePusherRunnable:Ljava/lang/Runnable;

    .line 148
    const-string v0, "Talk.disableCamera"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    const-string v0, "vclib:CameraManager"

    const-string v1, "Disabling camera"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/videochat/CameraManager;->mDisableCamera:Z

    .line 153
    :cond_0
    invoke-static {}, Lcom/google/android/videochat/util/LogUtil;->refreshTalkLogLevel()I

    .line 154
    invoke-direct {p0}, Lcom/google/android/videochat/CameraManager;->readCameraIds()V

    .line 155
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/videochat/CameraManager;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/videochat/CameraManager;->mFramePusherLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/videochat/CameraManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/google/android/videochat/CameraManager;->mFramePusherPending:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/videochat/CameraManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/videochat/CameraManager;->mFramePusher:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/videochat/CameraManager;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/google/android/videochat/CameraManager;->mFramePusher:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/videochat/CameraManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/videochat/CameraManager;->nativePushPausedFrame()V

    return-void
.end method

.method public static acquireCameraNative()Z
    .locals 1

    .prologue
    .line 745
    invoke-static {}, Lcom/google/android/videochat/CameraManager;->getInstance()Lcom/google/android/videochat/CameraManager;

    move-result-object v0

    invoke-direct {v0}, Lcom/google/android/videochat/CameraManager;->openCameraForNative()Z

    move-result v0

    return v0
.end method

.method private chooseDefaultCamera()V
    .locals 3

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/google/android/videochat/CameraManager;->readCameraIds()V

    .line 174
    iget-object v1, p0, Lcom/google/android/videochat/CameraManager;->mDefaultCamera:Lcom/google/android/videochat/CameraSpecification;

    if-eqz v1, :cond_2

    .line 175
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/google/android/videochat/CameraManager;->mNumAvailableCameras:I

    if-ge v0, v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/google/android/videochat/CameraManager;->mCameraSettings:[Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->cameraId:I

    iget-object v2, p0, Lcom/google/android/videochat/CameraManager;->mDefaultCamera:Lcom/google/android/videochat/CameraSpecification;

    iget v2, v2, Lcom/google/android/videochat/CameraSpecification;->cameraId:I

    if-ne v1, v2, :cond_1

    .line 177
    iput v0, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraIndex:I

    .line 178
    iget-object v1, p0, Lcom/google/android/videochat/CameraManager;->mDefaultCamera:Lcom/google/android/videochat/CameraSpecification;

    iget-object v1, v1, Lcom/google/android/videochat/CameraSpecification;->previewSize:Lcom/google/android/videochat/Size;

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/google/android/videochat/CameraManager;->mCameraSettings:[Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/google/android/videochat/CameraManager;->mDefaultCamera:Lcom/google/android/videochat/CameraSpecification;

    iget-object v2, v2, Lcom/google/android/videochat/CameraSpecification;->previewSize:Lcom/google/android/videochat/Size;

    iput-object v2, v1, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->previewSize:Lcom/google/android/videochat/Size;

    .line 181
    iget-object v1, p0, Lcom/google/android/videochat/CameraManager;->mCameraSettings:[Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->previewSizeIsValid:Z

    .line 196
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/google/android/videochat/CameraManager;->mCameraSettings:[Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    iget v2, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraIndex:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraSettings:Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    .line 197
    return-void

    .line 175
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    .end local v0           #i:I
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget v1, p0, Lcom/google/android/videochat/CameraManager;->mNumAvailableCameras:I

    if-ge v0, v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/google/android/videochat/CameraManager;->mCameraSettings:[Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->cameraIsFrontFacing:Z

    if-eqz v1, :cond_3

    .line 190
    iput v0, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraIndex:I

    goto :goto_1

    .line 188
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private static convertIntegerListToIntArray(Ljava/util/List;)[I
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 732
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    new-array v3, v5, [I

    .line 733
    .local v3, intarray:[I
    const/4 v0, 0x0

    .line 734
    .local v0, i:I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 735
    .local v4, value:Ljava/lang/Integer;
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v3, v0

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_0

    .line 737
    .end local v4           #value:Ljava/lang/Integer;
    :cond_0
    return-object v3
.end method

.method private createLastFramePusher()V
    .locals 3

    .prologue
    .line 495
    iget-object v2, p0, Lcom/google/android/videochat/CameraManager;->mFramePusherLock:Ljava/lang/Object;

    monitor-enter v2

    .line 496
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/google/android/videochat/CameraManager;->mFramePusherRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 498
    .local v0, framePusherThread:Ljava/lang/Thread;
    const-string v1, "frame push"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 499
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 500
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/videochat/CameraManager;->mFramePusherPending:Z

    .line 501
    monitor-exit v2

    .line 502
    return-void

    .line 501
    .end local v0           #framePusherThread:Ljava/lang/Thread;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private destroyLastFramePusher()V
    .locals 4

    .prologue
    .line 506
    iget-object v1, p0, Lcom/google/android/videochat/CameraManager;->mFramePusherLock:Ljava/lang/Object;

    monitor-enter v1

    .line 507
    :try_start_0
    iget-object v0, p0, Lcom/google/android/videochat/CameraManager;->mFramePusher:Landroid/os/Handler;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/videochat/CameraManager;->mFramePusherPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 516
    :try_start_1
    iget-object v0, p0, Lcom/google/android/videochat/CameraManager;->mFramePusherLock:Ljava/lang/Object;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 521
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/google/android/videochat/CameraManager;->mFramePusher:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 523
    iget-object v0, p0, Lcom/google/android/videochat/CameraManager;->mFramePusher:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 524
    iget-object v0, p0, Lcom/google/android/videochat/CameraManager;->mFramePusher:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 525
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/videochat/CameraManager;->mFramePusher:Landroid/os/Handler;

    .line 527
    :cond_1
    monitor-exit v1

    .line 528
    return-void

    .line 527
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 518
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private ensureCameraChosen()V
    .locals 2

    .prologue
    .line 158
    iget-object v1, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraLock:Ljava/lang/Object;

    monitor-enter v1

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraSettings:Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    if-nez v0, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/google/android/videochat/CameraManager;->chooseDefaultCamera()V

    .line 162
    :cond_0
    monitor-exit v1

    .line 163
    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance()Lcom/google/android/videochat/CameraManager;
    .locals 2

    .prologue
    .line 134
    sget-object v0, Lcom/google/android/videochat/CameraManager;->sInstance:Lcom/google/android/videochat/CameraManager;

    if-nez v0, :cond_1

    .line 135
    sget-object v1, Lcom/google/android/videochat/CameraManager;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 136
    :try_start_0
    sget-object v0, Lcom/google/android/videochat/CameraManager;->sInstance:Lcom/google/android/videochat/CameraManager;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lcom/google/android/videochat/CameraManager;

    invoke-direct {v0}, Lcom/google/android/videochat/CameraManager;-><init>()V

    sput-object v0, Lcom/google/android/videochat/CameraManager;->sInstance:Lcom/google/android/videochat/CameraManager;

    .line 139
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :cond_1
    sget-object v0, Lcom/google/android/videochat/CameraManager;->sInstance:Lcom/google/android/videochat/CameraManager;

    return-object v0

    .line 139
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getSupportedFrameRates()[I
    .locals 6

    .prologue
    .line 706
    iget-object v3, p0, Lcom/google/android/videochat/CameraManager;->mCameraLock:Ljava/lang/Object;

    monitor-enter v3

    .line 707
    :try_start_0
    iget-object v2, p0, Lcom/google/android/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-nez v2, :cond_0

    .line 708
    const-string v2, "vclib:CameraManager"

    const-string v4, "no camera, so returning null from getSupportedFrameRates"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    const/4 v2, 0x0

    monitor-exit v3

    .line 723
    :goto_0
    return-object v2

    .line 712
    :cond_0
    iget-object v2, p0, Lcom/google/android/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 713
    .local v1, parameters:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v0

    .line 714
    .local v0, framerates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez v0, :cond_1

    .line 718
    const-string v2, "vclib:CameraManager"

    const-string v4, "Camera getSupportedPreviewFrameRates returned null"

    invoke-static {v2, v4}, Lcom/google/android/videochat/util/LogUtil;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v4, 0x0

    const/16 v5, 0xf

    aput v5, v2, v4

    monitor-exit v3

    goto :goto_0

    .line 721
    .end local v0           #framerates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v1           #parameters:Landroid/hardware/Camera$Parameters;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #framerates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v1       #parameters:Landroid/hardware/Camera$Parameters;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 722
    const-string v2, "vclib:CameraManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camera getSupportedFrameRates "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/videochat/util/LogUtil;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    invoke-static {v0}, Lcom/google/android/videochat/CameraManager;->convertIntegerListToIntArray(Ljava/util/List;)[I

    move-result-object v2

    goto :goto_0
.end method

.method public static getSupportedFrameRatesNative()[I
    .locals 1

    .prologue
    .line 753
    invoke-static {}, Lcom/google/android/videochat/CameraManager;->getInstance()Lcom/google/android/videochat/CameraManager;

    move-result-object v0

    invoke-direct {v0}, Lcom/google/android/videochat/CameraManager;->getSupportedFrameRates()[I

    move-result-object v0

    return-object v0
.end method

.method private final native nativePushPausedFrame()V
.end method

.method private openCameraForNative()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 289
    iget-object v1, p0, Lcom/google/android/videochat/CameraManager;->mCameraLock:Ljava/lang/Object;

    monitor-enter v1

    .line 290
    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/videochat/CameraManager;->mDisableCamera:Z

    if-nez v2, :cond_0

    .line 291
    const-string v2, "vclib:CameraManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openCameraForNative state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/videochat/CameraManager;->mCameraState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/videochat/util/LogUtil;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget v2, p0, Lcom/google/android/videochat/CameraManager;->mCameraState:I

    packed-switch v2, :pswitch_data_0

    .line 303
    :goto_0
    :pswitch_0
    monitor-exit v1

    .line 305
    :goto_1
    return v0

    .line 295
    :pswitch_1
    const/4 v2, 0x1

    iput v2, p0, Lcom/google/android/videochat/CameraManager;->mCameraState:I

    goto :goto_0

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 298
    :pswitch_2
    :try_start_1
    const-string v2, "vclib:CameraManager"

    const-string v3, "got openCameraForNative in state NATIVE_WANTS"

    invoke-static {v2, v3}, Lcom/google/android/videochat/util/LogUtil;->Logwtf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 305
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private openCameraIfNeeded()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 221
    iget-object v3, p0, Lcom/google/android/videochat/CameraManager;->mCameraLock:Ljava/lang/Object;

    monitor-enter v3

    .line 222
    :try_start_0
    iget-object v4, p0, Lcom/google/android/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/google/android/videochat/CameraManager;->mDisableCamera:Z

    if-nez v4, :cond_3

    .line 226
    invoke-direct {p0}, Lcom/google/android/videochat/CameraManager;->ensureCameraChosen()V

    .line 228
    const-string v4, "vclib:CameraManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Opening Camera "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraSettings:Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    iget v6, v6, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->cameraId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v4, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraSettings:Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    iget v4, v4, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->cameraId:I

    invoke-static {v4}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    .line 231
    iget-object v4, p0, Lcom/google/android/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 234
    .local v0, params:Landroid/hardware/Camera$Parameters;
    const-string v4, "video-stabilization-supported"

    invoke-virtual {v0, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, vstabSupported:Ljava/lang/String;
    const-string v4, "true"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 236
    const-string v4, "video-stabilization"

    const-string v5, "false"

    invoke-virtual {v0, v4, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_0
    iget-object v4, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraSettings:Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    iget-boolean v4, v4, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->haveReadCameraParameters:Z

    if-nez v4, :cond_1

    .line 241
    iget-object v4, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraSettings:Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_0
    iput-boolean v2, v4, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->cameraSupports3ALocks:Z

    .line 244
    iget-object v2, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraSettings:Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->haveReadCameraParameters:Z

    .line 246
    :cond_1
    iget-object v2, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraSettings:Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    iget-boolean v2, v2, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->previewSizeIsValid:Z

    if-nez v2, :cond_2

    .line 250
    iget-object v2, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraSettings:Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    iget-object v4, p0, Lcom/google/android/videochat/CameraManager;->mCallback:Lcom/google/android/videochat/CameraManager$CameraManagerCallback;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/android/videochat/CameraManager$CameraManagerCallback;->getCaptureSizeForCamera(Ljava/util/List;)Lcom/google/android/videochat/Size;

    move-result-object v4

    iput-object v4, v2, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->previewSize:Lcom/google/android/videochat/Size;

    .line 252
    iget-object v2, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraSettings:Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->previewSizeIsValid:Z

    .line 254
    :cond_2
    const-string v2, "vclib:CameraManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setting camera preview size to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraSettings:Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    iget-object v5, v5, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->previewSize:Lcom/google/android/videochat/Size;

    invoke-virtual {v5}, Lcom/google/android/videochat/Size;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/google/android/videochat/util/LogUtil;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v2, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraSettings:Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    iget-object v2, v2, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->previewSize:Lcom/google/android/videochat/Size;

    iget v2, v2, Lcom/google/android/videochat/Size;->width:I

    iget-object v4, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraSettings:Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    iget-object v4, v4, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->previewSize:Lcom/google/android/videochat/Size;

    iget v4, v4, Lcom/google/android/videochat/Size;->height:I

    invoke-virtual {v0, v2, v4}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 258
    iget-object v2, p0, Lcom/google/android/videochat/CameraManager;->mFinalOutputParams:Lcom/google/android/videochat/CameraManager$FrameOutputParameters;

    if-eqz v2, :cond_5

    .line 259
    iget-object v2, p0, Lcom/google/android/videochat/CameraManager;->mFinalOutputParams:Lcom/google/android/videochat/CameraManager$FrameOutputParameters;

    iget v2, v2, Lcom/google/android/videochat/CameraManager$FrameOutputParameters;->frameRate:I

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 263
    :goto_1
    iget-object v2, p0, Lcom/google/android/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 264
    iget-object v2, p0, Lcom/google/android/videochat/CameraManager;->mCallback:Lcom/google/android/videochat/CameraManager$CameraManagerCallback;

    iget-object v4, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraSettings:Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    iget-object v4, v4, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->previewSize:Lcom/google/android/videochat/Size;

    iget-object v5, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraSettings:Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    iget v5, v5, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->orientation:I

    iget-object v6, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraSettings:Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    iget-boolean v6, v6, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->cameraIsFrontFacing:Z

    invoke-interface {v2, v4, v5, v6}, Lcom/google/android/videochat/CameraManager$CameraManagerCallback;->onCameraOpen(Lcom/google/android/videochat/Size;IZ)V

    .line 268
    .end local v0           #params:Landroid/hardware/Camera$Parameters;
    .end local v1           #vstabSupported:Ljava/lang/String;
    :cond_3
    monitor-exit v3

    .line 269
    return-void

    .line 241
    .restart local v0       #params:Landroid/hardware/Camera$Parameters;
    .restart local v1       #vstabSupported:Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 261
    :cond_5
    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    goto :goto_1

    .line 268
    .end local v0           #params:Landroid/hardware/Camera$Parameters;
    .end local v1           #vstabSupported:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private readCameraIds()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 200
    iget-boolean v2, p0, Lcom/google/android/videochat/CameraManager;->mHaveReadCameraIds:Z

    if-nez v2, :cond_2

    .line 201
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 202
    .local v0, cameraInfo:Landroid/hardware/Camera$CameraInfo;
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    iput v2, p0, Lcom/google/android/videochat/CameraManager;->mNumAvailableCameras:I

    .line 203
    iget v2, p0, Lcom/google/android/videochat/CameraManager;->mNumAvailableCameras:I

    new-array v2, v2, [Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    iput-object v2, p0, Lcom/google/android/videochat/CameraManager;->mCameraSettings:[Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    .line 204
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/google/android/videochat/CameraManager;->mNumAvailableCameras:I

    if-ge v1, v2, :cond_1

    .line 205
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 206
    iget-object v2, p0, Lcom/google/android/videochat/CameraManager;->mCameraSettings:[Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    new-instance v4, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;-><init>(Lcom/google/android/videochat/CameraManager$1;)V

    aput-object v4, v2, v1

    .line 207
    iget-object v2, p0, Lcom/google/android/videochat/CameraManager;->mCameraSettings:[Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    aget-object v2, v2, v1

    iput v1, v2, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->cameraId:I

    .line 208
    iget-object v2, p0, Lcom/google/android/videochat/CameraManager;->mCameraSettings:[Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    aget-object v4, v2, v1

    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v2, v3, :cond_0

    move v2, v3

    :goto_1
    iput-boolean v2, v4, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->cameraIsFrontFacing:Z

    .line 210
    iget-object v2, p0, Lcom/google/android/videochat/CameraManager;->mCameraSettings:[Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    aget-object v2, v2, v1

    iget v4, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iput v4, v2, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->orientation:I

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 212
    :cond_1
    iput-boolean v3, p0, Lcom/google/android/videochat/CameraManager;->mHaveReadCameraIds:Z

    .line 214
    .end local v0           #cameraInfo:Landroid/hardware/Camera$CameraInfo;
    .end local v1           #i:I
    :cond_2
    return-void
.end method

.method private releaseCamera()V
    .locals 3

    .prologue
    .line 275
    iget-object v1, p0, Lcom/google/android/videochat/CameraManager;->mCameraLock:Ljava/lang/Object;

    monitor-enter v1

    .line 276
    :try_start_0
    const-string v0, "vclib:CameraManager"

    const-string v2, "releaseCamera"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Lcom/google/android/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/google/android/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 279
    iget-object v0, p0, Lcom/google/android/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    .line 282
    :cond_0
    monitor-exit v1

    .line 283
    return-void

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private releaseCameraForNative()V
    .locals 4

    .prologue
    .line 315
    iget-object v1, p0, Lcom/google/android/videochat/CameraManager;->mCameraLock:Ljava/lang/Object;

    monitor-enter v1

    .line 316
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/videochat/CameraManager;->mDisableCamera:Z

    if-nez v0, :cond_0

    .line 317
    const-string v0, "vclib:CameraManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseCameraForNative state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/videochat/CameraManager;->mCameraState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/videochat/util/LogUtil;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget v0, p0, Lcom/google/android/videochat/CameraManager;->mCameraState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 319
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/videochat/CameraManager;->mCameraState:I

    .line 320
    invoke-direct {p0}, Lcom/google/android/videochat/CameraManager;->releaseCamera()V

    .line 321
    iget-object v0, p0, Lcom/google/android/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 322
    const-string v0, "vclib:CameraManager"

    const-string v2, "releaseForNative called while in NATIVE_WANTS but camera didn\'t actually release"

    invoke-static {v0, v2}, Lcom/google/android/videochat/util/LogUtil;->Logwtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :cond_0
    monitor-exit v1

    .line 328
    return-void

    .line 327
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static releaseCameraNative()V
    .locals 1

    .prologue
    .line 749
    invoke-static {}, Lcom/google/android/videochat/CameraManager;->getInstance()Lcom/google/android/videochat/CameraManager;

    move-result-object v0

    invoke-direct {v0}, Lcom/google/android/videochat/CameraManager;->releaseCameraForNative()V

    .line 750
    return-void
.end method

.method private setCaptureParameters(IIII)V
    .locals 3
    .parameter "width"
    .parameter "height"
    .parameter "imageFormatNotUsed"
    .parameter "frameRate"

    .prologue
    .line 373
    const-string v0, "vclib:CameraManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera setCaptureParameters state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/videochat/CameraManager;->mCameraState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/videochat/util/LogUtil;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v1, p0, Lcom/google/android/videochat/CameraManager;->mCameraLock:Ljava/lang/Object;

    monitor-enter v1

    .line 377
    :try_start_0
    new-instance v0, Lcom/google/android/videochat/CameraManager$FrameOutputParameters;

    new-instance v2, Lcom/google/android/videochat/Size;

    invoke-direct {v2, p1, p2}, Lcom/google/android/videochat/Size;-><init>(II)V

    invoke-direct {v0, v2, p4}, Lcom/google/android/videochat/CameraManager$FrameOutputParameters;-><init>(Lcom/google/android/videochat/Size;I)V

    iput-object v0, p0, Lcom/google/android/videochat/CameraManager;->mFinalOutputParams:Lcom/google/android/videochat/CameraManager$FrameOutputParameters;

    .line 382
    iget-object v0, p0, Lcom/google/android/videochat/CameraManager;->mCallback:Lcom/google/android/videochat/CameraManager$CameraManagerCallback;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/google/android/videochat/CameraManager;->mCallback:Lcom/google/android/videochat/CameraManager$CameraManagerCallback;

    iget-object v2, p0, Lcom/google/android/videochat/CameraManager;->mFinalOutputParams:Lcom/google/android/videochat/CameraManager$FrameOutputParameters;

    invoke-interface {v0, v2}, Lcom/google/android/videochat/CameraManager$CameraManagerCallback;->onFrameOutputSet(Lcom/google/android/videochat/CameraManager$FrameOutputParameters;)V

    .line 385
    :cond_0
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

.method public static setCaptureParametersNative(IIII)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "imageFormat"
    .parameter "frameRate"

    .prologue
    .line 758
    invoke-static {}, Lcom/google/android/videochat/CameraManager;->getInstance()Lcom/google/android/videochat/CameraManager;

    move-result-object v0

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/videochat/CameraManager;->setCaptureParameters(IIII)V

    .line 759
    return-void
.end method

.method private useCameraInternal(ILcom/google/android/videochat/Size;)V
    .locals 6
    .parameter "cameraIndex"
    .parameter "previewSize"

    .prologue
    .line 412
    iget-object v3, p0, Lcom/google/android/videochat/CameraManager;->mCameraLock:Ljava/lang/Object;

    monitor-enter v3

    .line 413
    :try_start_0
    const-string v2, "vclib:CameraManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switchCamera state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/google/android/videochat/CameraManager;->mCameraState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-direct {p0}, Lcom/google/android/videochat/CameraManager;->releaseCamera()V

    .line 417
    iput p1, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraIndex:I

    .line 418
    iget-object v4, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 419
    :try_start_1
    iget-object v2, p0, Lcom/google/android/videochat/CameraManager;->mCameraSettings:[Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    iget v5, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraIndex:I

    aget-object v2, v2, v5

    iput-object v2, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraSettings:Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    .line 420
    if-eqz p2, :cond_0

    .line 421
    iget-object v2, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraSettings:Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    iput-object p2, v2, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->previewSize:Lcom/google/android/videochat/Size;

    .line 422
    iget-object v2, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraSettings:Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->previewSizeIsValid:Z

    .line 424
    :cond_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 426
    :try_start_2
    iget v2, p0, Lcom/google/android/videochat/CameraManager;->mCameraState:I

    packed-switch v2, :pswitch_data_0

    .line 448
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 449
    :goto_1
    return-void

    .line 424
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 448
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 428
    :pswitch_0
    :try_start_5
    invoke-direct {p0}, Lcom/google/android/videochat/CameraManager;->openCameraIfNeeded()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 430
    :try_start_6
    sget-object v2, Lcom/google/android/videochat/CameraManager;->TEST_STABILIZATION:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 433
    const/4 v0, 0x1

    .line 434
    .local v0, always:Z
    if-eqz v0, :cond_2

    .line 435
    new-instance v2, Ljava/io/IOException;

    const-string v4, "not supported"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 440
    .end local v0           #always:Z
    :catch_0
    move-exception v1

    .line 441
    .local v1, e:Ljava/io/IOException;
    :try_start_7
    const-string v2, "vclib:CameraManager"

    const-string v4, "setPreviewTexture failed"

    invoke-static {v2, v4}, Lcom/google/android/videochat/util/LogUtil;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    .line 438
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    :try_start_8
    iget-object v2, p0, Lcom/google/android/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    iget-object v4, p0, Lcom/google/android/videochat/CameraManager;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2, v4}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 444
    :cond_2
    :try_start_9
    const-string v2, "vclib:CameraManager"

    const-string v4, "switchCamera calling startPreview"

    invoke-static {v2, v4}, Lcom/google/android/videochat/util/LogUtil;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object v2, p0, Lcom/google/android/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_0

    .line 426
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public arePreview3ALocksSupported()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 580
    iget-object v1, p0, Lcom/google/android/videochat/CameraManager;->mCameraLock:Ljava/lang/Object;

    monitor-enter v1

    .line 581
    :try_start_0
    iget-object v2, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraSettings:Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    if-nez v2, :cond_0

    .line 582
    const-string v2, "vclib:CameraManager"

    const-string v3, "Calling arePreview3ALocksSupported without a current camera!"

    invoke-static {v2, v3}, Lcom/google/android/videochat/util/LogUtil;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    monitor-exit v1

    .line 593
    :goto_0
    return v0

    .line 587
    :cond_0
    iget-object v2, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraSettings:Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    iget-boolean v2, v2, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->haveReadCameraParameters:Z

    if-nez v2, :cond_1

    .line 588
    const-string v2, "vclib:CameraManager"

    const-string v3, "Calling arePreview3ALocksSupported before reading camera parameters!"

    invoke-static {v2, v3}, Lcom/google/android/videochat/util/LogUtil;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    monitor-exit v1

    goto :goto_0

    .line 594
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 593
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraSettings:Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    iget-boolean v0, v0, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->cameraSupports3ALocks:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getCurrentCameraId()I
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/google/android/videochat/CameraManager;->mCameraSettings:[Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    iget v1, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraIndex:I

    aget-object v0, v0, v1

    iget v0, v0, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->cameraId:I

    return v0
.end method

.method public getCurrentFrameOutputParameters()Lcom/google/android/videochat/CameraManager$FrameOutputParameters;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/google/android/videochat/CameraManager;->mFinalOutputParams:Lcom/google/android/videochat/CameraManager$FrameOutputParameters;

    return-object v0
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 334
    iget-object v1, p0, Lcom/google/android/videochat/CameraManager;->mCameraLock:Ljava/lang/Object;

    monitor-enter v1

    .line 335
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/videochat/CameraManager;->mDisableCamera:Z

    if-nez v0, :cond_0

    .line 336
    const-string v0, "vclib:CameraManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reset state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/videochat/CameraManager;->mCameraState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/videochat/util/LogUtil;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-direct {p0}, Lcom/google/android/videochat/CameraManager;->destroyLastFramePusher()V

    .line 338
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/videochat/CameraManager;->mCameraState:I

    .line 339
    invoke-direct {p0}, Lcom/google/android/videochat/CameraManager;->releaseCamera()V

    .line 340
    invoke-direct {p0}, Lcom/google/android/videochat/CameraManager;->chooseDefaultCamera()V

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/videochat/CameraManager;->mFinalOutputParams:Lcom/google/android/videochat/CameraManager$FrameOutputParameters;

    .line 343
    :cond_0
    monitor-exit v1

    .line 344
    return-void

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setApplicationCallback(Lcom/google/android/videochat/CameraManager$CameraManagerCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 351
    iget-object v1, p0, Lcom/google/android/videochat/CameraManager;->mCameraLock:Ljava/lang/Object;

    monitor-enter v1

    .line 352
    :try_start_0
    iput-object p1, p0, Lcom/google/android/videochat/CameraManager;->mCallback:Lcom/google/android/videochat/CameraManager$CameraManagerCallback;

    .line 353
    monitor-exit v1

    .line 354
    return-void

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDefaultCamera(Lcom/google/android/videochat/CameraSpecification;)V
    .locals 0
    .parameter "cam"

    .prologue
    .line 168
    iput-object p1, p0, Lcom/google/android/videochat/CameraManager;->mDefaultCamera:Lcom/google/android/videochat/CameraSpecification;

    .line 169
    invoke-direct {p0}, Lcom/google/android/videochat/CameraManager;->ensureCameraChosen()V

    .line 170
    return-void
.end method

.method public setPreview3ALocks(Z)V
    .locals 4
    .parameter "toggle"

    .prologue
    .line 558
    iget-object v2, p0, Lcom/google/android/videochat/CameraManager;->mCameraLock:Ljava/lang/Object;

    monitor-enter v2

    .line 559
    :try_start_0
    iget v1, p0, Lcom/google/android/videochat/CameraManager;->mCameraState:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    .line 560
    const-string v1, "vclib:CameraManager"

    const-string v3, "Can\'t lock AE/AWB when camera not running!"

    invoke-static {v1, v3}, Lcom/google/android/videochat/util/LogUtil;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    monitor-exit v2

    .line 572
    :goto_0
    return-void

    .line 563
    :cond_0
    iget-object v1, p0, Lcom/google/android/videochat/CameraManager;->mCurrentCameraSettings:Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    iget-boolean v1, v1, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->cameraSupports3ALocks:Z

    if-nez v1, :cond_1

    .line 564
    const-string v1, "vclib:CameraManager"

    const-string v3, "Current camera does not support AE/AWB locks."

    invoke-static {v1, v3}, Lcom/google/android/videochat/util/LogUtil;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    monitor-exit v2

    goto :goto_0

    .line 571
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 567
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 568
    .local v0, params:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 569
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 570
    iget-object v1, p0, Lcom/google/android/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 571
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setPreviewSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 605
    iget-object v2, p0, Lcom/google/android/videochat/CameraManager;->mCameraLock:Ljava/lang/Object;

    monitor-enter v2

    .line 606
    :try_start_0
    const-string v3, "vclib:CameraManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPreviewSurfaceTexture "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/google/android/videochat/CameraManager;->mCameraState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/videochat/util/LogUtil;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    iget-boolean v3, p0, Lcom/google/android/videochat/CameraManager;->mDisableCamera:Z

    if-eqz v3, :cond_0

    .line 609
    monitor-exit v2

    .line 697
    :goto_0
    return-void

    .line 611
    :cond_0
    if-nez p1, :cond_1

    .line 612
    invoke-virtual {p0}, Lcom/google/android/videochat/CameraManager;->suspendCamera()V

    .line 613
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/videochat/CameraManager;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 614
    monitor-exit v2

    goto :goto_0

    .line 696
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 616
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/google/android/videochat/CameraManager;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 617
    iget v3, p0, Lcom/google/android/videochat/CameraManager;->mCameraState:I

    packed-switch v3, :pswitch_data_0

    .line 628
    :goto_1
    sget-object v3, Lcom/google/android/videochat/CameraManager;->TEST_STABILIZATION:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/videochat/CameraManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v3, :cond_2

    .line 629
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/google/android/videochat/CameraManager;->mMediaPlayer:Landroid/media/MediaPlayer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 633
    :cond_2
    :try_start_2
    sget-object v3, Lcom/google/android/videochat/CameraManager;->TEST_STABILIZATION:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 635
    const-class v3, Landroid/media/MediaPlayer;

    .line 636
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/graphics/SurfaceTexture;

    aput-object v6, v4, v5

    .line 637
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 639
    :try_start_3
    const-string v6, "setTexture"

    invoke-virtual {v3, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/videochat/CameraManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 646
    :goto_2
    if-eqz v0, :cond_3

    .line 647
    :try_start_4
    iget-object v0, p0, Lcom/google/android/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 653
    :cond_3
    :try_start_5
    sget-object v0, Lcom/google/android/videochat/CameraManager;->TEST_STABILIZATION:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_4

    .line 655
    :try_start_6
    iget-object v0, p0, Lcom/google/android/videochat/CameraManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    sget-object v1, Lcom/google/android/videochat/CameraManager;->TEST_STABILIZATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 680
    :goto_3
    :try_start_7
    new-instance v0, Lcom/google/android/videochat/CameraManager$1Latch;

    invoke-direct {v0, p0}, Lcom/google/android/videochat/CameraManager$1Latch;-><init>(Lcom/google/android/videochat/CameraManager;)V

    .line 681
    iget-object v1, p0, Lcom/google/android/videochat/CameraManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v3, Lcom/google/android/videochat/CameraManager$2;

    invoke-direct {v3, p0, v0}, Lcom/google/android/videochat/CameraManager$2;-><init>(Lcom/google/android/videochat/CameraManager;Lcom/google/android/videochat/CameraManager$1Latch;)V

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 689
    iget-object v1, p0, Lcom/google/android/videochat/CameraManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 690
    invoke-virtual {v0}, Lcom/google/android/videochat/CameraManager$1Latch;->awaitSet()V

    .line 691
    iget-object v0, p0, Lcom/google/android/videochat/CameraManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 693
    :cond_4
    iget-object v0, p0, Lcom/google/android/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 694
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/videochat/CameraManager;->mCameraState:I

    .line 695
    invoke-direct {p0}, Lcom/google/android/videochat/CameraManager;->destroyLastFramePusher()V

    .line 696
    monitor-exit v2

    goto :goto_0

    .line 621
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/videochat/CameraManager;->openCameraIfNeeded()V

    goto :goto_1

    .line 625
    :pswitch_1
    iget-object v3, p0, Lcom/google/android/videochat/CameraManager;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->stopPreview()V

    goto :goto_1

    .line 641
    :catch_0
    move-exception v0

    move v0, v1

    .line 644
    goto :goto_2

    .line 642
    :catch_1
    move-exception v0

    move v0, v1

    .line 644
    goto :goto_2

    .line 643
    :catch_2
    move-exception v0

    move v0, v1

    goto :goto_2

    .line 649
    :catch_3
    move-exception v0

    .line 650
    const-string v0, "vclib:CameraManager"

    const-string v1, "setPreviewTexture failed"

    invoke-static {v0, v1}, Lcom/google/android/videochat/util/LogUtil;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    monitor-exit v2

    goto/16 :goto_0

    .line 660
    :catch_4
    move-exception v0

    .line 661
    const-string v1, "vclib:CameraManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_2

    .line 617
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public suspendCamera()V
    .locals 4

    .prologue
    .line 535
    iget-object v1, p0, Lcom/google/android/videochat/CameraManager;->mCameraLock:Ljava/lang/Object;

    monitor-enter v1

    .line 536
    :try_start_0
    const-string v0, "vclib:CameraManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "suspendCamera state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/videochat/CameraManager;->mCameraState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/videochat/util/LogUtil;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    iget v0, p0, Lcom/google/android/videochat/CameraManager;->mCameraState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 538
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/videochat/CameraManager;->mCameraState:I

    .line 539
    invoke-direct {p0}, Lcom/google/android/videochat/CameraManager;->releaseCamera()V

    .line 540
    invoke-direct {p0}, Lcom/google/android/videochat/CameraManager;->createLastFramePusher()V

    .line 542
    :cond_0
    monitor-exit v1

    .line 543
    return-void

    .line 542
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public useCamera(Lcom/google/android/videochat/CameraSpecification;)V
    .locals 6
    .parameter "cam"

    .prologue
    .line 389
    iget-object v3, p0, Lcom/google/android/videochat/CameraManager;->mCameraLock:Ljava/lang/Object;

    monitor-enter v3

    .line 390
    const/4 v1, -0x1

    .line 391
    .local v1, targetCameraIndex:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/google/android/videochat/CameraManager;->mNumAvailableCameras:I

    if-ge v0, v2, :cond_0

    .line 392
    iget v2, p1, Lcom/google/android/videochat/CameraSpecification;->cameraId:I

    iget-object v4, p0, Lcom/google/android/videochat/CameraManager;->mCameraSettings:[Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/google/android/videochat/CameraManager$CameraSpecificSettings;->cameraId:I

    if-ne v2, v4, :cond_1

    .line 393
    move v1, v0

    .line 398
    :cond_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 399
    const-string v2, "vclib:CameraManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t switch to camera "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/google/android/videochat/CameraSpecification;->cameraId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Invalid id."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    monitor-exit v3

    .line 405
    :goto_1
    return-void

    .line 391
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 403
    :cond_2
    iget-object v2, p1, Lcom/google/android/videochat/CameraSpecification;->previewSize:Lcom/google/android/videochat/Size;

    invoke-direct {p0, v1, v2}, Lcom/google/android/videochat/CameraManager;->useCameraInternal(ILcom/google/android/videochat/Size;)V

    .line 404
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
