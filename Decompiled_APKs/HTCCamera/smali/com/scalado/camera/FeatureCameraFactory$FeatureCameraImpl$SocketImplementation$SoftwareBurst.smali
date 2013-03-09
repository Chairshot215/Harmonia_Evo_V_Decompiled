.class Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;
.super Ljava/lang/Object;
.source "FeatureCameraFactory.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoftwareBurst"
.end annotation


# instance fields
.field private jpeg:Lcom/scalado/camera/Camera$PictureCallback;

.field private mCapturedImagesInThisBurst:I

.field private mStartOfSoftwareBurst:J

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;

.field private postview:Lcom/scalado/camera/FeatureCameraFactory$PictureCallbackAdapter;

.field private raw:Lcom/scalado/camera/FeatureCameraFactory$PictureCallbackAdapter;

.field private shutter:Lcom/scalado/camera/FeatureCameraFactory$ShutterCallbackAdapter;

.field final synthetic this$2:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;


# direct methods
.method public constructor <init>(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;Lcom/scalado/camera/Camera$ShutterCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/Camera$PictureCallback;)V
    .locals 2

    iput-object p1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->this$2:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->mTimer:Ljava/util/Timer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->mCapturedImagesInThisBurst:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->mStartOfSoftwareBurst:J

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;
    invoke-static {p1}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->access$0(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;)Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/scalado/camera/FeatureCameraFactory$ShutterCallbackAdapter;->createShutterCallbackAdapter(Lcom/scalado/camera/Camera$ShutterCallback;Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Lcom/scalado/camera/FeatureCameraFactory$ShutterCallbackAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->shutter:Lcom/scalado/camera/FeatureCameraFactory$ShutterCallbackAdapter;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;
    invoke-static {p1}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->access$0(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;)Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/scalado/camera/FeatureCameraFactory$PictureCallbackAdapter;->createPictureCallbackAdapter(Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Lcom/scalado/camera/FeatureCameraFactory$PictureCallbackAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->raw:Lcom/scalado/camera/FeatureCameraFactory$PictureCallbackAdapter;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;
    invoke-static {p1}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->access$0(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;)Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/scalado/camera/FeatureCameraFactory$PictureCallbackAdapter;->createPictureCallbackAdapter(Lcom/scalado/camera/Camera$PictureCallback;Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Lcom/scalado/camera/FeatureCameraFactory$PictureCallbackAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->postview:Lcom/scalado/camera/FeatureCameraFactory$PictureCallbackAdapter;

    iput-object p5, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->jpeg:Lcom/scalado/camera/Camera$PictureCallback;

    return-void
.end method

.method static synthetic access$0(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;)Lcom/scalado/camera/FeatureCameraFactory$ShutterCallbackAdapter;
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->shutter:Lcom/scalado/camera/FeatureCameraFactory$ShutterCallbackAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;)Lcom/scalado/camera/FeatureCameraFactory$PictureCallbackAdapter;
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->raw:Lcom/scalado/camera/FeatureCameraFactory$PictureCallbackAdapter;

    return-object v0
.end method

.method static synthetic access$2(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;)Lcom/scalado/camera/FeatureCameraFactory$PictureCallbackAdapter;
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->postview:Lcom/scalado/camera/FeatureCameraFactory$PictureCallbackAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;)Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;
    .locals 1

    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->this$2:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    return-object v0
.end method

.method private changeExposure(I)V
    .locals 5

    const-string v1, "ScaladoCameraFramework"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Software burst: Changing exposure to: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->this$2:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;
    invoke-static {v1}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->access$0(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;)Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    move-result-object v1

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mParameters:Lcom/scalado/camera/FeatureCamera$Parameters;
    invoke-static {v1}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$1(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/scalado/camera/FeatureCamera$Parameters;->setExposureCompensation(I)V

    :try_start_0
    iget-object v1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->this$2:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    iget-object v2, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->this$2:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;
    invoke-static {v2}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->access$0(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;)Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    move-result-object v2

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mParameters:Lcom/scalado/camera/FeatureCamera$Parameters;
    invoke-static {v2}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$1(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->doSetParameters(Lcom/scalado/camera/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "Nexus One"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "Nexus S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "HTC Desire"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "HTC Saga"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->this$2:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;
    invoke-static {v1}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->access$0(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;)Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    move-result-object v1

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$2(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v2

    monitor-enter v2

    :try_start_1
    const-string v1, "ScaladoCameraFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Device detected as: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Waiting 700 ms while adjusting expsoure"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->this$2:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;
    invoke-static {v1}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->access$0(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;)Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    move-result-object v1

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$2(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v1

    const-wide/16 v3, 0x258

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ScaladoCameraFramework"

    const-string v2, "HDR: Error when changing parameters to regulate exposure."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    throw v0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_1
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "DROID PRO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->this$2:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;
    invoke-static {v1}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->access$0(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;)Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    move-result-object v1

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$2(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v2

    monitor-enter v2

    :try_start_4
    const-string v1, "ScaladoCameraFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Device detected as: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Waiting 0 ms while adjusting expsoure"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    :cond_2
    iget-object v1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->this$2:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;
    invoke-static {v1}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->access$0(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;)Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    move-result-object v1

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$2(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v2

    monitor-enter v2

    :try_start_5
    const-string v1, "ScaladoCameraFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Device detected as: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Waiting default period of 300 ms while adjusting expsoure"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->this$2:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;
    invoke-static {v1}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->access$0(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;)Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    move-result-object v1

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$2(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v1

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_2
    :try_start_6
    monitor-exit v2

    goto :goto_1

    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto/16 :goto_0
.end method


# virtual methods
.method public capture()V
    .locals 6

    const-string v2, "ScaladoCameraFramework"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Software burst, capture "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->mCapturedImagesInThisBurst:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->this$2:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;
    invoke-static {v2}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->access$0(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;)Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    move-result-object v2

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mParameters:Lcom/scalado/camera/FeatureCamera$Parameters;
    invoke-static {v2}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$1(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v2

    invoke-interface {v2}, Lcom/scalado/camera/FeatureCamera$Parameters;->getExposureBracketing()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    iget v2, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->mCapturedImagesInThisBurst:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->this$2:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;
    invoke-static {v3}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->access$0(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;)Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    move-result-object v3

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mParameters:Lcom/scalado/camera/FeatureCamera$Parameters;
    invoke-static {v3}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$1(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v3

    invoke-interface {v3}, Lcom/scalado/camera/FeatureCamera$Parameters;->getExposureCompensation()I

    move-result v3

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->mCapturedImagesInThisBurst:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->changeExposure(I)V

    :cond_0
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "Nexus One"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->this$2:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;
    invoke-static {v2}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->access$0(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;)Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    move-result-object v2

    new-instance v3, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst$1;

    invoke-direct {v3, p0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst$1;-><init>(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;)V

    invoke-virtual {v2, v3}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->autoFocus(Lcom/scalado/camera/Camera$AutoFocusCallback;)V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->this$2:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;
    invoke-static {v2}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->access$0(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;)Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    move-result-object v2

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$2(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Landroid/hardware/Camera;

    move-result-object v2

    iget-object v3, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->shutter:Lcom/scalado/camera/FeatureCameraFactory$ShutterCallbackAdapter;

    iget-object v4, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->raw:Lcom/scalado/camera/FeatureCameraFactory$PictureCallbackAdapter;

    iget-object v5, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->postview:Lcom/scalado/camera/FeatureCameraFactory$PictureCallbackAdapter;

    invoke-virtual {v2, v3, v4, v5, p0}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    goto :goto_0
.end method

.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 6

    const-string v0, "ScaladoCameraFramework"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Software burst, capture "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->mCapturedImagesInThisBurst:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " completed after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->mStartOfSoftwareBurst:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->jpeg:Lcom/scalado/camera/Camera$PictureCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->jpeg:Lcom/scalado/camera/Camera$PictureCallback;

    iget-object v1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->this$2:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;
    invoke-static {v1}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->access$0(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;)Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/scalado/camera/Camera$PictureCallback;->onPictureTaken([BLcom/scalado/camera/Camera;)V

    :cond_0
    iget v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->mCapturedImagesInThisBurst:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->mCapturedImagesInThisBurst:I

    iget v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->mCapturedImagesInThisBurst:I

    iget-object v1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->this$2:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->this$1:Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;
    invoke-static {v1}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;->access$0(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation;)Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;

    move-result-object v1

    #getter for: Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->mParameters:Lcom/scalado/camera/FeatureCamera$Parameters;
    invoke-static {v1}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;->access$1(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl;)Lcom/scalado/camera/FeatureCamera$Parameters;

    move-result-object v1

    invoke-interface {v1}, Lcom/scalado/camera/FeatureCamera$Parameters;->getBurstTotalCaptures()I

    move-result v1

    if-ge v0, v1, :cond_1

    new-instance v0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst$2;

    invoke-direct {v0, p0}, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst$2;-><init>(Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;)V

    iput-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->mTimerTask:Ljava/util/TimerTask;

    iget-object v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->mTimerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x19

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/camera/FeatureCameraFactory$FeatureCameraImpl$SocketImplementation$SoftwareBurst;->mCapturedImagesInThisBurst:I

    goto :goto_0
.end method
