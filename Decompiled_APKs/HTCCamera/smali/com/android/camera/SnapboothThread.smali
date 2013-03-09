.class public Lcom/android/camera/SnapboothThread;
.super Ljava/lang/Thread;
.source "SnapboothThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/SnapboothThread$MainHandler;
    }
.end annotation


# static fields
.field public static final CANCEL_CAPTURE:I = 0xa

.field private static final CAPTURE_STATE_ERROR:I = 0x4

.field private static final CAPTURE_STATE_IDLE:I = 0x0

.field private static final CAPTURE_STATE_TAKING_PICTURE:I = 0x1

.field private static final CAPTURE_STATE_WAITING_CLOSE_CAMERA:I = 0x2

.field private static final CAPTURE_STATE_WAITING_QUIT_THREAD:I = 0x3

.field public static final CLOSE_CAMERA:I = 0x2

.field public static final CREATE_INIT_THUMBNAIL:I = 0x64

.field public static final CREATE_MULTISHOT_BITMAP:I = 0x3

.field public static final DELETE_CURRENT_IMAGE:I = 0x65

.field private static final MULTI_SHOT_INTERVAL:I = 0x3e8

.field public static final QUIT_CAMERA_THREAD:I = 0x5

.field public static final RECHECK_STORAGE_STATE:I = 0x66

.field public static final SETTINGS_RELOAD:I = 0x1

.field public static final SETTINGS_REMAIN:I = 0x0

.field public static final SET_GE_BLOOM:I = 0x24

.field public static final SET_GE_BULGE:I = 0x20

.field public static final SET_GE_CONTRAST:I = 0x23

.field public static final SET_GE_DOTS:I = 0x27

.field public static final SET_GE_MIRROR:I = 0x22

.field public static final SET_GE_NONE:I = 0x1f

.field public static final SET_GE_PUCKER:I = 0x21

.field public static final SET_GE_SEPIA:I = 0x25

.field public static final SET_GE_VINTAGE:I = 0x26

.field public static final START_PREVIEW:I = 0x0

.field public static final STOP_PREVIEW:I = 0x1

.field public static final STORE_JPEG:I = 0x6

.field private static final TAG:Ljava/lang/String; = "SnapboothThread"

.field public static final TAKE_PICTURE:I = 0x4

.field public static final UPDATE_EFFECT_ORIENTATION:I = 0x67

.field public static final mCountDownSec:I = 0x960

.field public static mIsLastCameraClosed:Z


# instance fields
.field private Camera_Mode_Height:I

.field private Camera_Mode_Width:I

.field private Camera_Preview_Height:I

.field private Camera_Preview_Width:I

.field private mCamController:Lcom/android/camera/CameraController;

.field private mCameraDevice:Landroid/hardware/Camera;

.field private mCaptureState:I

.field private mCurrentEffectMessage:I

.field private mCurrentShutterNum:I

.field private mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

.field private mIsCapturing:Z

.field private mIsMultiShutter:Z

.field private mIsShutterSound:Z

.field private mIsTakingPicture:Z

.field private mJPEGQuality:I

.field private mJpegData:[B

.field private mJpegPictureCallback:Landroid/hardware/Camera$PictureCallback;

.field private mMultiBitmap:Landroid/graphics/Bitmap;

.field private mMultiBitmapOrientation:I

.field private mPreviewing:Z

.field private mRawPictureCallback:Landroid/hardware/Camera$PictureCallback;

.field private mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field private mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

.field private mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;

.field private mStorageCheckRunnable:Ljava/lang/Runnable;

.field private mStorageCheckThread:Ljava/lang/Thread;

.field private mStorageState:I

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/camera/SnapboothThread;->mIsLastCameraClosed:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/HTCSnapbooth;Landroid/os/Handler;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v1, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    iput-object v1, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    iput-object v1, p0, Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    iput-object v1, p0, Lcom/android/camera/SnapboothThread;->mUIHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/camera/SnapboothThread;->mJpegData:[B

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/camera/SnapboothThread;->mJPEGQuality:I

    iput-object v1, p0, Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;

    const/16 v0, 0x1f

    iput v0, p0, Lcom/android/camera/SnapboothThread;->mCurrentEffectMessage:I

    iput v2, p0, Lcom/android/camera/SnapboothThread;->mStorageState:I

    iput v2, p0, Lcom/android/camera/SnapboothThread;->mCaptureState:I

    iput-object v1, p0, Lcom/android/camera/SnapboothThread;->mMultiBitmap:Landroid/graphics/Bitmap;

    iput v2, p0, Lcom/android/camera/SnapboothThread;->mMultiBitmapOrientation:I

    iput v3, p0, Lcom/android/camera/SnapboothThread;->mCurrentShutterNum:I

    iput-boolean v2, p0, Lcom/android/camera/SnapboothThread;->mPreviewing:Z

    iput-boolean v3, p0, Lcom/android/camera/SnapboothThread;->mIsShutterSound:Z

    new-instance v0, Lcom/android/camera/SnapboothThread$1;

    invoke-direct {v0, p0}, Lcom/android/camera/SnapboothThread$1;-><init>(Lcom/android/camera/SnapboothThread;)V

    iput-object v0, p0, Lcom/android/camera/SnapboothThread;->mStorageCheckRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/camera/SnapboothThread$2;

    invoke-direct {v0, p0}, Lcom/android/camera/SnapboothThread$2;-><init>(Lcom/android/camera/SnapboothThread;)V

    iput-object v0, p0, Lcom/android/camera/SnapboothThread;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    new-instance v0, Lcom/android/camera/SnapboothThread$3;

    invoke-direct {v0, p0}, Lcom/android/camera/SnapboothThread$3;-><init>(Lcom/android/camera/SnapboothThread;)V

    iput-object v0, p0, Lcom/android/camera/SnapboothThread;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    new-instance v0, Lcom/android/camera/SnapboothThread$4;

    invoke-direct {v0, p0}, Lcom/android/camera/SnapboothThread$4;-><init>(Lcom/android/camera/SnapboothThread;)V

    iput-object v0, p0, Lcom/android/camera/SnapboothThread;->mRawPictureCallback:Landroid/hardware/Camera$PictureCallback;

    new-instance v0, Lcom/android/camera/SnapboothThread$5;

    invoke-direct {v0, p0}, Lcom/android/camera/SnapboothThread$5;-><init>(Lcom/android/camera/SnapboothThread;)V

    iput-object v0, p0, Lcom/android/camera/SnapboothThread;->mJpegPictureCallback:Landroid/hardware/Camera$PictureCallback;

    iput-object p1, p0, Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    iput-object p2, p0, Lcom/android/camera/SnapboothThread;->mUIHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/SnapboothThread;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/SnapboothThread;->mStorageState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/HTCSnapbooth;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/SnapboothThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/SnapboothThread;->stopPreview()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/SnapboothThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/SnapboothThread;->cancelCapture()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/SnapboothThread;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/SnapboothThread;->endCheckStorageState()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/camera/SnapboothThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/SnapboothThread;->beginCheckStorageState()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/SnapboothThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/SnapboothThread;->notifyStorageState()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/SnapboothThread;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mMultiBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/camera/SnapboothThread;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/SnapboothThread;->mMultiBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/camera/SnapboothThread;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/SnapboothThread;->mMultiBitmapOrientation:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/camera/SnapboothThread;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/SnapboothThread;->mMultiBitmapOrientation:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/camera/SnapboothThread;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/SnapboothThread;->capture()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/camera/SnapboothThread;I)F
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/SnapboothThread;->getMultiDrawLeft(I)F

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/camera/SnapboothThread;I)F
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/camera/SnapboothThread;->getMultiDrawTop(I)F

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/SnapboothThread;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/SnapboothThread;->mIsShutterSound:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/camera/SnapboothThread;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/android/camera/SnapboothThread;->mJpegData:[B

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/camera/SnapboothThread;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/SnapboothThread;->mIsCapturing:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/camera/SnapboothThread;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/SnapboothThread;->mIsCapturing:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/camera/SnapboothThread;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/SnapboothThread;->mCurrentEffectMessage:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/camera/SnapboothThread;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/SnapboothThread;->mCurrentEffectMessage:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/SnapboothThread$MainHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/SnapboothThread;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/SnapboothThread;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/SnapboothThread;->mIsTakingPicture:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/camera/SnapboothThread;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/SnapboothThread;->mIsTakingPicture:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/SnapboothThread;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/SnapboothThread;->mCaptureState:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/camera/SnapboothThread;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/SnapboothThread;->mCaptureState:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/camera/SnapboothThread;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/SnapboothThread;->mIsMultiShutter:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/camera/SnapboothThread;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/SnapboothThread;->mIsMultiShutter:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/SnapboothThread;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/SnapboothThread;->mCurrentShutterNum:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/camera/SnapboothThread;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/SnapboothThread;->mCurrentShutterNum:I

    return p1
.end method

.method static synthetic access$804(Lcom/android/camera/SnapboothThread;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/SnapboothThread;->mCurrentShutterNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/SnapboothThread;->mCurrentShutterNum:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/SnapboothThread;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/SnapboothThread;->isLastCameraClosed()Z

    move-result v0

    return v0
.end method

.method private beginCheckStorageState()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mStorageCheckThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/SnapboothThread;->mStorageState:I

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/camera/SnapboothThread;->mStorageCheckRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/camera/SnapboothThread;->mStorageCheckThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mStorageCheckThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private cancelCapture()V
    .locals 3

    const/4 v2, 0x4

    const-string v0, "SnapboothThread"

    const-string v1, "cancelCapture - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;

    invoke-static {v0, v2}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mMultiBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mMultiBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/SnapboothThread;->mMultiBitmap:Landroid/graphics/Bitmap;

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/SnapboothThread;->mCurrentShutterNum:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/SnapboothThread;->mIsCapturing:Z

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    const-string v0, "SnapboothThread"

    const-string v1, "cancelCapture - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private capture()Z
    .locals 10

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "SnapboothThread"

    const-string v7, "start to capture photo"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/SnapboothThread;->endCheckStorageState()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v6}, Lcom/android/camera/HTCSnapbooth;->isServiceMode()Z

    move-result v6

    if-nez v6, :cond_0

    :goto_0
    return v4

    :cond_0
    iput-boolean v4, p0, Lcom/android/camera/SnapboothThread;->mPreviewing:Z

    iput-boolean v5, p0, Lcom/android/camera/SnapboothThread;->mIsCapturing:Z

    iget-object v6, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    iget v7, p0, Lcom/android/camera/SnapboothThread;->mJPEGQuality:I

    invoke-virtual {v6, v7}, Lcom/android/camera/CameraController;->setJpegQuality(I)V

    iget-object v6, p0, Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v6}, Lcom/android/camera/HTCSnapbooth;->getFreezeOrientation()I

    move-result v6

    invoke-static {v6, v4}, Lcom/android/camera/rotate/OrientationConfig;->mapDrgreeToUIOrientationEx(IZ)I

    move-result v3

    if-ne v3, v5, :cond_1

    move v0, v4

    :goto_1
    const-string v6, "SnapboothThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set rotation, mCaptureRotation = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v6, v0}, Lcom/android/camera/CameraController;->setRotation(I)V

    iget-object v6, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    invoke-static {}, Lcom/android/camera/LocationHandler;->getLocation()Landroid/location/Location;

    move-result-object v2

    iget-object v6, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v6, v2}, Lcom/android/camera/CameraController;->setLocation(Landroid/location/Location;)V

    iget-object v6, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v7, "img-timestamp"

    const-string v8, "0"

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v6}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    const-string v6, "SnapboothThread"

    const-string v7, "Camera - takePicture"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/android/camera/TIME;->ReadyTakePicture:Lcom/android/camera/TIME$Value;

    invoke-virtual {v6}, Lcom/android/camera/TIME$Value;->End()V

    sget-object v6, Lcom/android/camera/TIME;->ShutterCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v6}, Lcom/android/camera/TIME$Value;->Start()V

    const/4 v6, 0x1

    :try_start_0
    iput-boolean v6, p0, Lcom/android/camera/SnapboothThread;->mIsTakingPicture:Z

    iget-object v6, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v7, p0, Lcom/android/camera/SnapboothThread;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    iget-object v8, p0, Lcom/android/camera/SnapboothThread;->mRawPictureCallback:Landroid/hardware/Camera$PictureCallback;

    iget-object v9, p0, Lcom/android/camera/SnapboothThread;->mJpegPictureCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v6, v7, v8, v9}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    goto :goto_0

    :cond_1
    const/16 v0, 0x5a

    goto :goto_1

    :catch_0
    move-exception v1

    iput-boolean v4, p0, Lcom/android/camera/SnapboothThread;->mIsTakingPicture:Z

    const/4 v5, 0x4

    iput v5, p0, Lcom/android/camera/SnapboothThread;->mCaptureState:I

    const-string v5, "SnapboothThread"

    const-string v6, "take picture exception - mCaptureState = CAPTURE_STATE_ERROR"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "SnapboothThread"

    const-string v6, "take picture exception. Camera app finished"

    invoke-static {v5, v6, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v5, p0, Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v5}, Lcom/android/camera/HTCSnapbooth;->finish()V

    goto/16 :goto_0
.end method

.method private endCheckStorageState()I
    .locals 1

    :goto_0
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mStorageCheckThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mStorageCheckThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/SnapboothThread;->mStorageCheckThread:Ljava/lang/Thread;

    :cond_0
    iget v0, p0, Lcom/android/camera/SnapboothThread;->mStorageState:I

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/SnapboothThread;->notifyStorageState()V

    iget v0, p0, Lcom/android/camera/SnapboothThread;->mStorageState:I

    return v0

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/SnapboothThread;->beginCheckStorageState()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private getMultiDrawLeft(I)F
    .locals 2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    :cond_0
    iget v0, p0, Lcom/android/camera/SnapboothThread;->mMultiBitmapOrientation:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/SnapboothThread;->mMultiBitmapOrientation:I

    if-ne v0, v1, :cond_2

    :cond_1
    sget v0, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_WIDTH:I

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_2
    sget v0, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_HEIGHT:I

    int-to-float v0, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMultiDrawTop(I)F
    .locals 2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    :cond_0
    iget v0, p0, Lcom/android/camera/SnapboothThread;->mMultiBitmapOrientation:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/SnapboothThread;->mMultiBitmapOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_1
    sget v0, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_HEIGHT:I

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_2
    sget v0, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_WIDTH:I

    int-to-float v0, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLastCameraClosed()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/SnapboothThread;->mIsLastCameraClosed:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadResolution()V
    .locals 2

    const-string v0, "SnapboothThread"

    const-string v1, "loadResolution() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_HEIGHT:I

    iput v0, p0, Lcom/android/camera/SnapboothThread;->Camera_Mode_Width:I

    sget v0, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_WIDTH:I

    iput v0, p0, Lcom/android/camera/SnapboothThread;->Camera_Mode_Height:I

    sget v0, Lcom/android/camera/SnapboothCustomize;->PREVIEW_HEIGHT:I

    iput v0, p0, Lcom/android/camera/SnapboothThread;->Camera_Preview_Width:I

    sget v0, Lcom/android/camera/SnapboothCustomize;->PREVIEW_WIDTH:I

    iput v0, p0, Lcom/android/camera/SnapboothThread;->Camera_Preview_Height:I

    const-string v0, "SnapboothThread"

    const-string v1, "loadResolution() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private notifyStorageState()V
    .locals 5

    iget v0, p0, Lcom/android/camera/SnapboothThread;->mStorageState:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x2a

    iget v2, p0, Lcom/android/camera/SnapboothThread;->mStorageState:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private stopPreview()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/SnapboothThread;->mPreviewing:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/SnapboothThread;->mPreviewing:Z

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    const-string v0, "SnapboothThread"

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method closeCamera()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/camera/SnapboothThread;->mPreviewing:Z

    if-eqz v0, :cond_0

    const-string v0, "SnapboothThread"

    const-string v1, "before stopPreview"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    iput-boolean v2, p0, Lcom/android/camera/SnapboothThread;->mPreviewing:Z

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    const-string v0, "SnapboothThread"

    const-string v1, "after stopPreview"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/SnapboothThread;->resetJpegData()V

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    const-string v0, "SnapboothThread"

    const-string v1, "before release"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const-string v0, "SnapboothThread"

    const-string v1, "after release"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    iput-object v3, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    iput v2, p0, Lcom/android/camera/SnapboothThread;->mCaptureState:I

    const-string v0, "SnapboothThread"

    const-string v1, "close camera - mCaptureState = CAPTURE_STATE_IDLE"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/camera/SnapboothThread;->mIsLastCameraClosed:Z

    const-string v0, "SnapboothThread"

    const-string v1, "Release Camera - set mIsLastCameraClosed to true"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "SnapboothThread"

    const-string v1, "mCameraDevice == null in closeCamera"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCameraController()Lcom/android/camera/CameraController;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    return-object v0
.end method

.method public getCurrentStorageState()I
    .locals 1

    iget v0, p0, Lcom/android/camera/SnapboothThread;->mStorageState:I

    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;

    return-object v0
.end method

.method public getJpegData()[B
    .locals 1

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mJpegData:[B

    return-object v0
.end method

.method public releaseSnapboothThread()V
    .locals 0

    return-void
.end method

.method public resetJpegData()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/SnapboothThread;->mJpegData:[B

    return-void
.end method

.method public run()V
    .locals 2

    const-string v0, "SnapboothThread"

    const-string v1, "*************************************** run"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/android/camera/SnapboothThread$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/SnapboothThread$MainHandler;-><init>(Lcom/android/camera/SnapboothThread;Lcom/android/camera/SnapboothThread$1;)V

    iput-object v0, p0, Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;

    invoke-direct {p0}, Lcom/android/camera/SnapboothThread;->beginCheckStorageState()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

.method public startPreview(IZ)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    const-string v4, "SnapboothThread"

    const-string v6, "startPreview() - start"

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/camera/SnapboothThread;->mPreviewing:Z

    if-eqz v4, :cond_0

    const-string v4, "SnapboothThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Camera has been in Prevewing. mPreviewing="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/camera/SnapboothThread;->mPreviewing:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v4, :cond_1

    const-string v4, "SnapboothThread"

    const-string v6, "Open camera while startPreview"

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/android/camera/SensorHolder;->getSecondCamID()I

    move-result v4

    invoke-static {v4}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v6, p0, Lcom/android/camera/SnapboothThread;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    invoke-virtual {v4, v6}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/camera/SnapboothThread;->mIsLastCameraClosed:Z

    const-string v4, "SnapboothThread"

    const-string v6, "StartPreview - Set mIsLastCameraClosed to false"

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v4, Lcom/android/camera/CameraController;

    iget-object v6, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-direct {v4, v6}, Lcom/android/camera/CameraController;-><init>(Landroid/hardware/Camera;)V

    iput-object v4, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v4}, Lcom/android/camera/CameraController;->setSupportedList()V

    :cond_1
    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    iget-object v6, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-static {v4, v6}, Lcom/android/camera/HTCCameraAdvanceSetting;->initPrefrenceFiles(Landroid/app/Activity;Lcom/android/camera/CameraController;)Z

    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v6, "touch-aec"

    const-string v7, "off"

    invoke-virtual {v4, v6, v7}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "SnapboothThread"

    const-string v6, "Disable touch aec !!!"

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v6, "enable-caf"

    const-string v7, "off"

    invoke-virtual {v4, v6, v7}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "SnapboothThread"

    const-string v6, "Start preview - disable continue AF !!!"

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v6, "cam-mode"

    invoke-virtual {v4, v6, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v6, "front-camera-mode"

    const-string v7, "mirror"

    invoke-virtual {v4, v6, v7}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v6, "sound-off"

    const-string v7, "true"

    invoke-virtual {v4, v6, v7}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v4}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    invoke-direct {p0}, Lcom/android/camera/SnapboothThread;->loadResolution()V

    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    iget v6, p0, Lcom/android/camera/SnapboothThread;->Camera_Mode_Width:I

    iget v7, p0, Lcom/android/camera/SnapboothThread;->Camera_Mode_Height:I

    invoke-virtual {v4, v6, v7}, Lcom/android/camera/CameraController;->setPictureSizeParameter(II)V

    const-string v4, "SnapboothThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SetPictureSize: CAMERA MODE, Width = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/camera/SnapboothThread;->Camera_Mode_Width:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Height = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/camera/SnapboothThread;->Camera_Mode_Height:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    iget v6, p0, Lcom/android/camera/SnapboothThread;->Camera_Preview_Width:I

    iget v7, p0, Lcom/android/camera/SnapboothThread;->Camera_Preview_Height:I

    invoke-virtual {v4, v6, v7}, Lcom/android/camera/CameraController;->setPreviewSizeParameter(II)V

    const-string v4, "SnapboothThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SetPreviewSize: CAMERA MODE, Width = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/camera/SnapboothThread;->Camera_Preview_Width:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Height = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/camera/SnapboothThread;->Camera_Preview_Height:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v6, "taking-picture-zoom"

    invoke-virtual {v4, v6}, Lcom/android/camera/CameraController;->getSettingsInfo(Ljava/lang/String;)Lcom/android/camera/CameraController$SettingInfo;

    move-result-object v3

    sget-boolean v4, Lcom/android/camera/HTCCameraAdvanceSetting;->mIsInitZoom:Z

    if-ne v4, v8, :cond_2

    invoke-virtual {v3}, Lcom/android/camera/CameraController$SettingInfo;->getMin()I

    move-result v4

    sput v4, Lcom/android/camera/HTCCameraAdvanceSetting;->mZoomValue:I

    sput-boolean v5, Lcom/android/camera/HTCCameraAdvanceSetting;->mIsInitZoom:Z

    :cond_2
    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v6, "taking-picture-zoom"

    invoke-virtual {v3}, Lcom/android/camera/CameraController$SettingInfo;->getMin()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v4}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    const/16 v6, 0x5a

    invoke-virtual {v4, v6}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v4}, Lcom/android/camera/HTCSnapbooth;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    :try_start_1
    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v4, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    new-instance v6, Lcom/android/camera/SnapboothThread$6;

    invoke-direct {v6, p0}, Lcom/android/camera/SnapboothThread$6;-><init>(Lcom/android/camera/SnapboothThread;)V

    invoke-virtual {v4, v6}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :try_start_2
    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->startPreview()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    iput-boolean v8, p0, Lcom/android/camera/SnapboothThread;->mPreviewing:Z

    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;

    invoke-virtual {v4, v9}, Lcom/android/camera/SnapboothThread$MainHandler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v6, p0, Lcom/android/camera/SnapboothThread;->mUIHandler:Landroid/os/Handler;

    if-eqz p2, :cond_5

    move v4, v5

    :goto_3
    const/4 v7, 0x0

    invoke-static {v6, v9, v4, v5, v7}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    iget v4, p0, Lcom/android/camera/SnapboothThread;->mCurrentEffectMessage:I

    const/16 v5, 0x1f

    if-eq v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;

    iget v5, p0, Lcom/android/camera/SnapboothThread;->mCurrentEffectMessage:I

    invoke-virtual {v4, v5}, Lcom/android/camera/SnapboothThread$MainHandler;->sendEmptyMessage(I)Z

    :cond_3
    invoke-direct {p0}, Lcom/android/camera/SnapboothThread;->endCheckStorageState()I

    :cond_4
    const-string v4, "SnapboothThread"

    const-string v5, "start_preview() - end"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v4, "SnapboothThread"

    const-string v5, "open camera failed"

    invoke-static {v4, v5, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v4}, Lcom/android/camera/HTCSnapbooth;->finish()V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    const-string v4, "SnapboothThread"

    const-string v6, "mCameraDevice.setPreviewDisplay failed"

    invoke-static {v4, v6, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v4}, Lcom/android/camera/HTCSnapbooth;->finish()V

    goto :goto_1

    :catch_2
    move-exception v1

    const-string v4, "SnapboothThread"

    const-string v6, "start preview failed"

    invoke-static {v4, v6, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v4, p0, Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v4}, Lcom/android/camera/HTCSnapbooth;->finish()V

    goto :goto_2

    :cond_5
    const/4 v4, 0x3

    goto :goto_3
.end method
