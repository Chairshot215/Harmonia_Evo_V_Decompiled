.class public Lcom/android/camera/CameraThread;
.super Ljava/lang/Thread;
.source "CameraThread.java"

# interfaces
.implements Lcom/android/camera/component/IComponentOwner;
.implements Lcom/android/camera/IEventManagerOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraThread$ErrorListener;,
        Lcom/android/camera/CameraThread$InfoListener;,
        Lcom/android/camera/CameraThread$OneShotPreviewCallback;,
        Lcom/android/camera/CameraThread$DecodeThread;,
        Lcom/android/camera/CameraThread$PreviewCallback;,
        Lcom/android/camera/CameraThread$HtcCallback;,
        Lcom/android/camera/CameraThread$ErrorCallback;,
        Lcom/android/camera/CameraThread$AutoFocusCallback;,
        Lcom/android/camera/CameraThread$ScaladoThread;,
        Lcom/android/camera/CameraThread$MainHandler;,
        Lcom/android/camera/CameraThread$CommonCaptureHandler;,
        Lcom/android/camera/CameraThread$StorePictureCallback;
    }
.end annotation


# static fields
.field public static final CALCULATE_FPS:I = 0x19

.field public static final CAMERA_MODE:I = 0x0

.field public static final CAMERA_TYPE_FRONT:I = 0x2

.field public static final CAMERA_TYPE_MAIN:I = 0x1

.field public static final CAMERA_TYPE_MAIN_3D:I = 0x3

.field public static final CAMERA_TYPE_UNKNOWN:I = 0x0

.field public static final CANCEL_FOCUS:I = 0x6

.field public static final CANNOT_STAT_ERROR:I = 0x2

.field private static final CAPTURE_STATE_ERROR:I = 0x4

.field private static final CAPTURE_STATE_IDLE:I = 0x0

.field private static final CAPTURE_STATE_TAKING_PICTURE:I = 0x1

.field private static final CAPTURE_STATE_WAITING_CLOSE_CAMERA:I = 0x2

.field private static final CAPTURE_STATE_WAITING_QUIT_THREAD:I = 0x3

.field private static final CHANGE_ZOOM:I = 0x46

.field public static final CHECK_INTERNAL_STORAGE:I = 0x34

.field public static final CHECK_RECORD_SIZE_LIMIT:I = 0x16

.field public static final CHECK_STORAGE_STATUS:I = 0x35

.field public static final CLOSE_CAMERA:I = 0x2

.field public static final CLOSE_CAMERA_DELAYED:I = 0x18

.field private static final CLOSE_CAMERA_DELAYED_TIME:I = 0x7d0

.field public static final CREATE_IMAGE_THUMB:I = 0x1d

.field public static final CREATE_THUMB:I = 0x39

.field public static final CREATE_VIDEO_THUMB:I = 0x1e

.field public static final DISABLE_TOUCH_AEC:I = 0x1f

.field public static final ENABLE_CAF:I = 0x2e

.field public static final ENTER_VIDEO_MODE:I = 0xb

.field public static final EVENT_AUTOSCENE_ENABLED:Ljava/lang/String; = "AutoScene.Enabled"

.field public static final EVENT_AUTOSMILECAPTURE:Ljava/lang/String; = "HTCCallback.AutoSmileCapture"

.field public static final EVENT_BLINKONOFF_CHANGED:Ljava/lang/String; = "HTCCallback.BlinkOffChanged"

.field public static final EVENT_BLINK_CHANGED:Ljava/lang/String; = "HTCCallback.BlinkChanged"

.field public static final EVENT_FOCUS_FINISHED:Ljava/lang/String; = "Focus.Finished"

.field public static final EVENT_LOWLIGHT_CHANGED:Ljava/lang/String; = "HTCCallback.LowLightChanged"

.field public static final EVENT_MACROFOCUS_CHANGED:Ljava/lang/String; = "HTCCallback.MarcoFocusChanged"

.field public static final EVENT_MEDIA_DELETION_COMPLETED:Ljava/lang/String; = "Media.DeletionCompleted"

.field public static final EVENT_MEDIA_SAVED:Ljava/lang/String; = "Media.Saved"

.field public static final EVENT_MEDIA_SAVE_FAILED:Ljava/lang/String; = "Media.SaveFailed"

.field public static final EVENT_POSTVIEW_IMAGE_CREATE:Ljava/lang/String; = "ReviewAnimation.PostviewCreated"

.field public static final EVENT_POWER_REC_WARNING_RECEIVED:Ljava/lang/String; = "PowerRecWarning.Received"

.field public static final EVENT_POWER_WARNING_RECEIVED:Ljava/lang/String; = "PowerWarning.Received"

.field public static final EVENT_PREVIEW_STARTED:Ljava/lang/String; = "Preview.Started"

.field public static final EVENT_PREVIEW_STARTING:Ljava/lang/String; = "Preview.Starting"

.field public static final EVENT_PREVIEW_STOPPED:Ljava/lang/String; = "Preview.Stopped"

.field public static final EVENT_PREVIEW_STOPPING:Ljava/lang/String; = "Preview.Stopping"

.field public static final EVENT_RECORDING_STARTED:Ljava/lang/String; = "Recording_Started"

.field public static final EVENT_REQUEST_CLOSE_CAMERA:Ljava/lang/String; = "Request.CloseCamera"

.field public static final EVENT_REQUEST_DELETE_MEDIA:Ljava/lang/String; = "Request.DeleteLatestMedia"

.field public static final EVENT_SMILE_CHANGED:Ljava/lang/String; = "HTCCallback.SmileChanged"

.field public static final EVENT_TAKE_PICTURE_ENDED:Ljava/lang/String; = "Capture.Ended"

.field public static final EVENT_TAKE_PICTURE_STARTED:Ljava/lang/String; = "Capture.Started"

.field public static final EVENT_VIDEO_THUMB_CREATED:Ljava/lang/String; = "VideoThumbnailImage.Created"

.field public static final EVENT_ZOOM_CHANGED:Ljava/lang/String; = "Zoom.Changed"

.field public static final EVENT_ZOOM_RANGE_RETRIEVED:Ljava/lang/String; = "Zoom.RangeRetrieved"

.field public static final EXIT_VIDEO_MODE:I = 0xc

.field public static final LOAD_SETTINGS:I = 0x1c

.field public static final NO_STORAGE_ERROR:I = 0x1

.field public static final POST_PROCESSING:I = 0x37

.field public static final QUIT_CAMERA_THREAD:I = 0x8

.field public static final RECORDING_FINISH_AUTO_FOCUS:I = 0x2d

.field public static final RECORDING_MESSAGE:I = 0xa

.field public static final RESET_ZOOM_VALUE:I = 0x30

.field public static final SEND_POWER_WARNING_MSG:I = 0x3b

.field public static final SETTINGS_RELOAD:I = 0x1

.field public static final SETTINGS_REMAIN:I = 0x0

.field public static final SET_BLINK_DETECTION:I = 0x3c

.field public static final SET_BRIGHTNESS_VALUE:I = 0x11

.field public static final SET_CUSTOM_EFFECT_PROP:I = 0x2c

.field public static final SET_EFFECT:I = 0x13

.field public static final SET_FACE_OPTIONS:I = 0x20

.field public static final SET_FLASH_MODE:I = 0x15

.field public static final SET_GE_WHITEBOARD:I = 0x3e

.field public static final SET_IMAGE_PROPERTY:I = 0x14

.field public static final SET_ISO:I = 0x12

.field public static final SET_OLA_ORIENTATION_PARAMETER:I = 0x2b

.field public static final SET_RESOLUTION:I = 0xf

.field public static final SET_SCENE_MODE:I = 0x3a

.field public static final SET_SMILE_CAPTURE:I = 0x3d

.field public static final SET_WHITE_BALANCE:I = 0x10

.field public static final START_FOCUS:I = 0x5

.field public static final START_PREVIEW:I = 0x0

.field public static final START_RECORDING:I = 0x9

.field public static final START_RECORDING_DELAY:I = 0x36

.field private static final START_RECORDING_DELAY_TIME:I = 0x12c

.field public static final STEREO_RECORDING:I = 0x38

.field public static final STOP_PREVIEW:I = 0x1

.field public static final STOP_VIDEO_RECORDING_DELAY:I = 0x2f

.field public static final STORAGE_FULL:I = 0x3

.field public static final STORAGE_OK:I = 0x0

.field public static Storage_Status:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CameraThread"

.field public static final TAKE_FOCUS:I = 0x4

.field public static final TAKE_PICTURE:I = 0x7

.field public static final TAKE_PREVIEW:I = 0x1a

.field public static final THUMB_FILE_PATH:Ljava/lang/String; = "thumb_file_path"

.field public static final VIDEO_MODE:I = 0x1

.field public static final WAIT_SELFTIMER:I = 0x3

.field public static final ZOOM_UNKNOWN:I = -0x80000000

.field public static mEnableCAF:Z

.field public static mEnableTouchAEC:Z

.field public static mIsLastCameraClosed:Z

.field private static mLastContentUri:Landroid/net/Uri;

.field public static mTakeFocus:Z


# instance fields
.field private Camera_Mode_Height:I

.field private Camera_Mode_Width:I

.field private Camera_Preview_Height:I

.field private Camera_Preview_Width:I

.field private final HTC_CALLBACK_AUTOSMILECAPTURE:I

.field private final HTC_CALLBACK_BLINKONOFF_CHANGED:I

.field private final HTC_CALLBACK_BLINK_CHANGED:I

.field private final HTC_CALLBACK_LOWLIGHT_CHANGED:I

.field private final HTC_CALLBACK_MACROFOCUS_CHANGED:I

.field private final HTC_CALLBACK_SMILE_CHANGED:I

.field private final MINIMUN_CAMERA_REMAIN_SPACE:J

.field private Video_Mode_Height:I

.field private Video_Mode_Width:I

.field private bIsStereo:Z

.field private bShowFocusIcon:Z

.field private bShutterSound:Z

.field private bSwitchCamera:Z

.field public m3DButtonStatus:I

.field private m3DFileFormat:Ljava/lang/String;

.field public m3DPreviewStatus:I

.field private mAutoFocusCallback:Lcom/android/camera/CameraThread$AutoFocusCallback;

.field private mCamController:Lcom/android/camera/CameraController;

.field private mCameraActivity:Lcom/android/camera/HTCCamera;

.field private mCameraDevice:Landroid/hardware/Camera;

.field mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

.field private mCanStartPreview:Z

.field private mCaptureHandler:Lcom/android/camera/ICaptureHandler;

.field private mCaptureRotation:I

.field private mCaptureState:I

.field private mCheckingThread:Ljava/lang/Thread;

.field private final mCommonCaptureHandler:Lcom/android/camera/CameraThread$CommonCaptureHandler;

.field private mComponentManager:Lcom/android/camera/component/ComponentManager;

.field private mCurrentColorEffect:Ljava/lang/String;

.field private mCurrentResolution:Lcom/android/camera/Resolution;

.field private mEncoderType:I

.field private mErrorCallback:Lcom/android/camera/CameraThread$ErrorCallback;

.field private mErrorListener:Lcom/android/camera/CameraThread$ErrorListener;

.field private mFocusArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusAreaSupported:Z

.field private mFps:I

.field private mHtcCallback:Lcom/android/camera/CameraThread$HtcCallback;

.field private mInfoListener:Lcom/android/camera/CameraThread$InfoListener;

.field mIsAecAwbLocked:Z

.field private mIsCaptureInterrupted:Z

.field private mIsOnlySetResolution:Z

.field private mIsStart_fps:Z

.field private mJPEGQuality:I

.field private mJPEGQualityKey:Ljava/lang/String;

.field private mJpegData:[B

.field private mLastMediaInfo:Lcom/android/camera/MediaInfo;

.field private mLocation:Landroid/location/Location;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMeteringArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mMeteringAreaSupported:Z

.field public mMode:I

.field private mNumber:I

.field public mOneShotBitmap:Landroid/graphics/Bitmap;

.field private mOneShotPreviewCallback:Lcom/android/camera/CameraThread$OneShotPreviewCallback;

.field private mPlaySoundFromCameraService:Z

.field private mPreviewCallback:Lcom/android/camera/CameraThread$PreviewCallback;

.field private mPreviewData:[B

.field private mPreviewing:Z

.field public mRecPowerWarning:Z

.field private mRecorder:Landroid/media/MediaRecorder;

.field private mRecording:Z

.field private mStartRecordingTime:J

.field public mSyncObject:Ljava/lang/Object;

.field private volatile mTaking_picture:Z

.field mUIHandler:Landroid/os/Handler;

.field private mVideoPath:Ljava/lang/String;

.field private m_EventManager:Lcom/android/camera/EventManager;

.field private volatile m_MaxZoom:I

.field private volatile m_MinZoom:I

.field private mbCanTakePicture:Z

.field private mbNoneEffect:Z

.field private mfilename:Ljava/lang/String;

.field private mfilepath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/camera/CameraThread;->mIsLastCameraClosed:Z

    sput-boolean v1, Lcom/android/camera/CameraThread;->mEnableTouchAEC:Z

    sput-boolean v1, Lcom/android/camera/CameraThread;->mEnableCAF:Z

    sput-boolean v1, Lcom/android/camera/CameraThread;->mTakeFocus:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/CameraThread;->mLastContentUri:Landroid/net/Uri;

    sput v1, Lcom/android/camera/CameraThread;->Storage_Status:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 5

    const/high16 v1, -0x8000

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput v3, p0, Lcom/android/camera/CameraThread;->HTC_CALLBACK_SMILE_CHANGED:I

    iput v4, p0, Lcom/android/camera/CameraThread;->HTC_CALLBACK_AUTOSMILECAPTURE:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/CameraThread;->HTC_CALLBACK_BLINK_CHANGED:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/CameraThread;->HTC_CALLBACK_BLINKONOFF_CHANGED:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/camera/CameraThread;->HTC_CALLBACK_LOWLIGHT_CHANGED:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/CameraThread;->HTC_CALLBACK_MACROFOCUS_CHANGED:I

    iput v1, p0, Lcom/android/camera/CameraThread;->m_MaxZoom:I

    iput v1, p0, Lcom/android/camera/CameraThread;->m_MinZoom:I

    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mFocusAreaSupported:Z

    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mMeteringAreaSupported:Z

    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mRecording:Z

    iput v3, p0, Lcom/android/camera/CameraThread;->mMode:I

    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mIsOnlySetResolution:Z

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mPreviewData:[B

    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mTaking_picture:Z

    iput-boolean v4, p0, Lcom/android/camera/CameraThread;->mCanStartPreview:Z

    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->bShutterSound:Z

    iput-boolean v4, p0, Lcom/android/camera/CameraThread;->mbNoneEffect:Z

    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->bShowFocusIcon:Z

    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->bIsStereo:Z

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mCurrentResolution:Lcom/android/camera/Resolution;

    const/16 v0, 0x55

    iput v0, p0, Lcom/android/camera/CameraThread;->mJPEGQuality:I

    new-instance v0, Lcom/android/camera/MediaInfo;

    invoke-direct {v0}, Lcom/android/camera/MediaInfo;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mVideoPath:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mfilepath:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/camera/CameraThread;->m3DFileFormat:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mCurrentColorEffect:Ljava/lang/String;

    iput v3, p0, Lcom/android/camera/CameraThread;->mNumber:I

    iput v3, p0, Lcom/android/camera/CameraThread;->mCaptureRotation:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/CameraThread;->mStartRecordingTime:J

    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lcom/android/camera/CameraThread;->MINIMUN_CAMERA_REMAIN_SPACE:J

    iput v3, p0, Lcom/android/camera/CameraThread;->mFps:I

    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mIsStart_fps:Z

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mJpegData:[B

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mOneShotBitmap:Landroid/graphics/Bitmap;

    iput v3, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    iput v4, p0, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    iput v4, p0, Lcom/android/camera/CameraThread;->m3DPreviewStatus:I

    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mRecPowerWarning:Z

    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mPlaySoundFromCameraService:Z

    new-instance v0, Lcom/android/camera/CameraThread$CommonCaptureHandler;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraThread$CommonCaptureHandler;-><init>(Lcom/android/camera/CameraThread;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mCommonCaptureHandler:Lcom/android/camera/CameraThread$CommonCaptureHandler;

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mSyncObject:Ljava/lang/Object;

    new-instance v0, Lcom/android/camera/CameraThread$AutoFocusCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/CameraThread$AutoFocusCallback;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mAutoFocusCallback:Lcom/android/camera/CameraThread$AutoFocusCallback;

    new-instance v0, Lcom/android/camera/CameraThread$ErrorCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/CameraThread$ErrorCallback;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mErrorCallback:Lcom/android/camera/CameraThread$ErrorCallback;

    new-instance v0, Lcom/android/camera/CameraThread$HtcCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/CameraThread$HtcCallback;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mHtcCallback:Lcom/android/camera/CameraThread$HtcCallback;

    new-instance v0, Lcom/android/camera/CameraThread$PreviewCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/CameraThread$PreviewCallback;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mPreviewCallback:Lcom/android/camera/CameraThread$PreviewCallback;

    new-instance v0, Lcom/android/camera/CameraThread$OneShotPreviewCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/CameraThread$OneShotPreviewCallback;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mOneShotPreviewCallback:Lcom/android/camera/CameraThread$OneShotPreviewCallback;

    new-instance v0, Lcom/android/camera/CameraThread$InfoListener;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/CameraThread$InfoListener;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mInfoListener:Lcom/android/camera/CameraThread$InfoListener;

    new-instance v0, Lcom/android/camera/CameraThread$ErrorListener;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/CameraThread$ErrorListener;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mErrorListener:Lcom/android/camera/CameraThread$ErrorListener;

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mCheckingThread:Ljava/lang/Thread;

    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mbCanTakePicture:Z

    check-cast p1, Lcom/android/camera/HTCCamera;

    iput-object p1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    iput-object p2, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    return-void
.end method

.method private NeedToApplyAMR_NB()Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v4, p0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v0

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0, v4}, Lcom/android/camera/MovieModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Resolution;

    move-result-object v1

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v5, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v4, v5}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v4

    if-eq v4, v3, :cond_2

    sget-object v4, Lcom/android/camera/Resolution;->Video_QCIF:Lcom/android/camera/Resolution;

    invoke-virtual {v1, v4}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    sget-object v4, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    sget-object v5, Lcom/android/camera/DisplayDevice$CustomMMS;->Verizon:Lcom/android/camera/DisplayDevice$CustomMMS;

    if-eq v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v5, Lcom/android/camera/IntentManager$RequestName;->CU:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v4, v5}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method private SetICSFocusParam(II)V
    .locals 13

    int-to-float v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->getPreviewHeight()I

    move-result v0

    div-int/lit8 v1, v0, 0x4

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->getPreviewWidth()I

    move-result v0

    div-int/lit8 v2, v0, 0x4

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->getPreviewHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->getPreviewWidth()I

    move-result v7

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->getMaxNumFocusAreas()I

    move-result v10

    if-lez v10, :cond_3

    const-string v0, "auto"

    sget-object v3, Lcom/android/camera/CameraController$SupportedList;->FocusModes:Ljava/util/List;

    invoke-static {v0, v3}, Lcom/android/camera/CameraController;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mFocusAreaSupported:Z

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->getMaxNumMeteringAreas()I

    move-result v11

    if-lez v11, :cond_4

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mMeteringAreaSupported:Z

    const-string v0, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ICS focus MaxNumFocusAreas:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ",MaxNumMeteringAreas:"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mFocusArea:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mFocusArea:Ljava/util/List;

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mFocusArea:Ljava/util/List;

    new-instance v3, Landroid/hardware/Camera$Area;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    const/4 v12, 0x1

    invoke-direct {v3, v8, v12}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mMeteringArea:Ljava/util/List;

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mMeteringArea:Ljava/util/List;

    new-instance v3, Landroid/hardware/Camera$Area;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    const/4 v12, 0x1

    invoke-direct {v3, v8, v12}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/high16 v3, 0x3f80

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mFocusArea:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/CameraThread;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mFocusAreaSupported:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mFocusArea:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraController;->setFocusAreas(Ljava/util/List;)V

    const-string v0, "CameraThread"

    const-string v3, "ICS focus setFocusAreas "

    invoke-static {v0, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mFocusArea:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/android/camera/CameraController;->setMeteringAreas(Ljava/util/List;)V

    :cond_2
    const-string v0, "CameraThread"

    const-string v3, "ICS focus setMeteringAreas "

    invoke-static {v0, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_1

    :catch_0
    move-exception v9

    const-string v0, "CameraThread"

    const-string v3, "SetICSFocusParam throws exception:"

    invoke-static {v0, v3, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/CameraThread;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/camera/CameraThread;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/CameraThread;->mIsOnlySetResolution:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/camera/CameraThread;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/camera/CameraThread;)Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/CameraThread;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mCanStartPreview:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/camera/CameraThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->checkCanTakePicture()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/CameraThread;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mTaking_picture:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/camera/CameraThread;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/CameraThread;->mTaking_picture:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraThread$OneShotPreviewCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mOneShotPreviewCallback:Lcom/android/camera/CameraThread$OneShotPreviewCallback;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/CameraThread;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->bShutterSound:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/camera/CameraThread;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mRecording:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/camera/CameraThread;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/CameraThread;->mRecording:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/android/camera/CameraThread;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/CameraThread;->bShowFocusIcon:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/CameraThread;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/CameraThread;->SetICSFocusParam(II)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraThread$AutoFocusCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAutoFocusCallback:Lcom/android/camera/CameraThread$AutoFocusCallback;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/CameraThread;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->handleAutoFocus(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/camera/CameraThread;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCheckingThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/camera/CameraThread;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/CameraThread;->mCheckingThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/camera/CameraThread;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mbCanTakePicture:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/camera/CameraThread;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/CameraThread;->mbCanTakePicture:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/camera/CameraThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->capture()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/camera/CameraThread;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mPlaySoundFromCameraService:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/android/camera/CameraThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->checkCanTakeRecorder()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/camera/CameraThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->stop_video_recording()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/camera/CameraThread;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->bIsStereo:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/android/camera/CameraThread;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/CameraThread;->bIsStereo:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/CameraThread;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/camera/CameraThread;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mIsStart_fps:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/camera/CameraThread;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/camera/CameraThread;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/CameraThread;->mFps:I

    return v0
.end method

.method static synthetic access$3102(Lcom/android/camera/CameraThread;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/CameraThread;->mFps:I

    return p1
.end method

.method static synthetic access$3108(Lcom/android/camera/CameraThread;)I
    .locals 2

    iget v0, p0, Lcom/android/camera/CameraThread;->mFps:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/CameraThread;->mFps:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/camera/CameraThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->loadSettings()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/camera/CameraThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->stop_video_recording_delay()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/camera/CameraThread;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/android/camera/CameraThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->checkStorageStatus()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/camera/CameraThread;)Lcom/android/camera/EventManager;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/CameraThread;)I
    .locals 1

    iget v0, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/camera/CameraThread;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    return p1
.end method

.method static synthetic access$4500(Lcom/android/camera/CameraThread;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->setAecAwbLockInternal(Z)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/camera/CameraThread;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/CameraThread;->Camera_Mode_Width:I

    return p1
.end method

.method static synthetic access$602(Lcom/android/camera/CameraThread;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/CameraThread;->Camera_Mode_Height:I

    return p1
.end method

.method static synthetic access$702(Lcom/android/camera/CameraThread;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    return p1
.end method

.method static synthetic access$802(Lcom/android/camera/CameraThread;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera/CameraThread;->Video_Mode_Height:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/camera/CameraThread;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/camera/CameraThread;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    return p1
.end method

.method private capture()V
    .locals 10

    const/4 v9, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v5, "CameraThread"

    const-string v6, "start to capture photo"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v8, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    iput-boolean v8, p0, Lcom/android/camera/CameraThread;->mIsCaptureInterrupted:Z

    iget-object v5, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    if-nez v5, :cond_0

    const-string v5, "CameraThread"

    const-string v6, "take picture , mCamController is null, return"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iput v9, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    iget v6, p0, Lcom/android/camera/CameraThread;->mJPEGQuality:I

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraController;->setJpegQuality(I)V

    iget-object v5, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getFreezeOrientation()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    const-string v5, "CameraThread"

    const-string v6, "orientation = OrientationEventListener.ORIENTATION_UNKNOWN"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_1
    const/4 v2, 0x0

    iget-boolean v5, p0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    if-ne v5, v7, :cond_4

    invoke-static {}, Lcom/android/camera/SensorHolder;->getSecondCamID()I

    move-result v2

    :goto_2
    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    invoke-static {v2, v3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v5, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v5, v7, :cond_6

    iget v5, v3, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v5, v4

    add-int/lit16 v5, v5, 0x168

    rem-int/lit16 v5, v5, 0x168

    iput v5, p0, Lcom/android/camera/CameraThread;->mCaptureRotation:I

    :goto_3
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    if-nez v5, :cond_1

    const-string v5, "CameraThread"

    const-string v6, "set rotation landscape while 3D photo mode"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iput v8, p0, Lcom/android/camera/CameraThread;->mCaptureRotation:I

    :cond_1
    const-string v5, "CameraThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set rotation, mCaptureRotation = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/camera/CameraThread;->mCaptureRotation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    iget v6, p0, Lcom/android/camera/CameraThread;->mCaptureRotation:I

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraController;->setRotation(I)V

    invoke-static {}, Lcom/android/camera/LocationHandler;->getLocation()Landroid/location/Location;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/CameraThread;->mLocation:Landroid/location/Location;

    iget-object v5, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    iget-object v6, p0, Lcom/android/camera/CameraThread;->mLocation:Landroid/location/Location;

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraController;->setLocation(Landroid/location/Location;)V

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->isAddTimeStamp()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v6, "img-timestamp"

    const-string v7, "1"

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "CameraThread"

    const-string v6, "add time stamp on photo"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    iget-object v5, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v5}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    const-string v5, "CameraThread"

    const-string v6, "Camera - takePicture"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/android/camera/TIME;->ReadyTakePicture:Lcom/android/camera/TIME$Value;

    invoke-virtual {v5}, Lcom/android/camera/TIME$Value;->End()V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCaptureHandler:Lcom/android/camera/ICaptureHandler;

    if-nez v0, :cond_2

    const-string v5, "CameraThread"

    const-string v6, "No capture handler is specified, use default handler"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCommonCaptureHandler:Lcom/android/camera/CameraThread$CommonCaptureHandler;

    :cond_2
    const-string v5, "CameraThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Before capturing, capture handler is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v8, p0, Lcom/android/camera/CameraThread;->mCanStartPreview:Z

    :try_start_0
    iget-object v5, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-interface {v0, p0, v5}, Lcom/android/camera/ICaptureHandler;->takePicture(Lcom/android/camera/CameraThread;Landroid/hardware/Camera;)V

    iget-object v5, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->prepareActionScreen()V

    iget-object v5, p0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v6, "Capture.Started"

    invoke-virtual {v5, v6}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    iput v9, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    const-string v5, "CameraThread"

    const-string v6, "take picture exception - mCaptureState = CAPTURE_STATE_ERROR"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "CameraThread"

    const-string v6, "take picture exception. Camera app finished"

    invoke-static {v5, v6, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v5, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->finish()V

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v5, v4, 0x2d

    div-int/lit8 v5, v5, 0x5a

    mul-int/lit8 v4, v5, 0x5a

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/android/camera/SensorHolder;->get3DCamID()I

    move-result v2

    goto/16 :goto_2

    :cond_5
    invoke-static {}, Lcom/android/camera/SensorHolder;->getMainCamID()I

    move-result v2

    goto/16 :goto_2

    :cond_6
    iget v5, v3, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v5, v4

    rem-int/lit16 v5, v5, 0x168

    iput v5, p0, Lcom/android/camera/CameraThread;->mCaptureRotation:I

    goto/16 :goto_3

    :cond_7
    iget-object v5, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v6, "img-timestamp"

    const-string v7, "0"

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "CameraThread"

    const-string v6, "not add time stamp on photo"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method private checkCanTakePicture()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mbCanTakePicture:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/camera/CameraThread$3;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraThread$3;-><init>(Lcom/android/camera/CameraThread;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mCheckingThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCheckingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private checkCanTakeRecorder()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mbCanTakePicture:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/camera/CameraThread$4;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraThread$4;-><init>(Lcom/android/camera/CameraThread;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mCheckingThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCheckingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private checkSavedFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "."

    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    return-object p2
.end method

.method private checkStorageStatus()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->hasStorageTest()V

    sget v0, Lcom/android/camera/CameraThread;->Storage_Status:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/camera/CameraThread;->Storage_Status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isActionScreenOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CameraThread"

    const-string v1, "Storage Error!! exit action screen"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->closeActionScreen()V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraThread;->showStorageToast(Z)V

    sget v0, Lcom/android/camera/CameraThread;->Storage_Status:I

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/camera/DisplayDevice;->contactsNoStorage()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v1, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "CameraThread"

    const-string v1, "Storage Error!! close self-timer"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x46

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    :cond_3
    return-void
.end method

.method public static clamp(III)I
    .locals 0

    if-le p0, p2, :cond_0

    :goto_0
    return p2

    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    goto :goto_0

    :cond_1
    move p2, p0

    goto :goto_0
.end method

.method private getJPEGQualityPreference()I
    .locals 4

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v3, "pref_camera_capture_quality"

    invoke-static {v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "_super"

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mJPEGQualityKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v2, "_super"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v1, 0x2

    const-string v2, "_super"

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mJPEGQualityKey:Ljava/lang/String;

    :cond_1
    :goto_0
    invoke-static {v1}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(I)I

    move-result v2

    return v2

    :cond_2
    const-string v2, "_fine"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    const-string v2, "_fine"

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mJPEGQualityKey:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v2, "_normal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    const-string v2, "_normal"

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mJPEGQualityKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getLastContentUri()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/camera/CameraThread;->mLastContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method private getSavedFile(Lcom/android/camera/DCFInfo;)Lcom/android/camera/DCFRuler$PathPackage;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/camera/DCFRuler$OverMaxDCFDirectoryNumberException;
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getCurStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/CameraThread;->m3DFileFormat:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v3, Lcom/android/camera/DCFRuler$fileFormat;->JPG:Lcom/android/camera/DCFRuler$fileFormat;

    invoke-static {v2, v1, v3, p1}, Lcom/android/camera/DCFRuler;->getNextFilePath(Landroid/app/Activity;Ljava/lang/String;Lcom/android/camera/DCFRuler$fileFormat;Lcom/android/camera/DCFInfo;)Lcom/android/camera/DCFRuler$PathPackage;

    move-result-object v0

    iget-object v2, v0, Lcom/android/camera/DCFRuler$PathPackage;->mDirectoryName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    const-string v4, ".jpg"

    invoke-direct {p0, v2, v3, v4}, Lcom/android/camera/CameraThread;->checkSavedFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    const-string v2, "CameraThread"

    const-string v3, "m3DFileFormat == null"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FOLDER = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/camera/DCFRuler$PathPackage;->mDirectoryName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", NAME = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/android/camera/CameraThread;->m3DFileFormat:Ljava/lang/String;

    const-string v3, "jps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v3, Lcom/android/camera/DCFRuler$fileFormat;->JPS:Lcom/android/camera/DCFRuler$fileFormat;

    invoke-static {v2, v1, v3, p1}, Lcom/android/camera/DCFRuler;->getNextFilePath(Landroid/app/Activity;Ljava/lang/String;Lcom/android/camera/DCFRuler$fileFormat;Lcom/android/camera/DCFInfo;)Lcom/android/camera/DCFRuler$PathPackage;

    move-result-object v0

    iget-object v2, v0, Lcom/android/camera/DCFRuler$PathPackage;->mDirectoryName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    const-string v4, ".jps"

    invoke-direct {p0, v2, v3, v4}, Lcom/android/camera/CameraThread;->checkSavedFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v3, Lcom/android/camera/DCFRuler$fileFormat;->MPO:Lcom/android/camera/DCFRuler$fileFormat;

    invoke-static {v2, v1, v3, p1}, Lcom/android/camera/DCFRuler;->getNextFilePath(Landroid/app/Activity;Ljava/lang/String;Lcom/android/camera/DCFRuler$fileFormat;Lcom/android/camera/DCFInfo;)Lcom/android/camera/DCFRuler$PathPackage;

    move-result-object v0

    iget-object v2, v0, Lcom/android/camera/DCFRuler$PathPackage;->mDirectoryName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    const-string v4, ".mpo"

    invoke-direct {p0, v2, v3, v4}, Lcom/android/camera/CameraThread;->checkSavedFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v3, Lcom/android/camera/DCFRuler$fileFormat;->JPG:Lcom/android/camera/DCFRuler$fileFormat;

    invoke-static {v2, v1, v3, p1}, Lcom/android/camera/DCFRuler;->getNextFilePath(Landroid/app/Activity;Ljava/lang/String;Lcom/android/camera/DCFRuler$fileFormat;Lcom/android/camera/DCFInfo;)Lcom/android/camera/DCFRuler$PathPackage;

    move-result-object v0

    iget-object v2, v0, Lcom/android/camera/DCFRuler$PathPackage;->mDirectoryName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    const-string v4, ".jpg"

    invoke-direct {p0, v2, v3, v4}, Lcom/android/camera/CameraThread;->checkSavedFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FOLDER = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/camera/DCFRuler$PathPackage;->mDirectoryName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", NAME = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getVideoEncoder()I
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v3, "pref_capture_format_video"

    invoke-static {v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x3

    :goto_0
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->CU:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    const-string v2, "h263"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "h264"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private handleAutoFocus(Z)V
    .locals 7

    const-wide/16 v5, 0xc8

    const/4 v2, 0x1

    const-string v0, "CameraThread"

    const-string v1, "handleAutoFocus() start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v1, 0x2d

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isCancelFocus()Z

    move-result v0

    if-ne v0, v2, :cond_0

    const-string v0, "CameraThread"

    const-string v1, "handleAutoFocus() end - cancel focus"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->hasAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_5

    const-string v0, "CameraThread"

    const-string v1, " Now We have Focus"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isAutoCaptureTask()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->bShutterSound:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mRecording:Z

    if-nez v0, :cond_2

    sget v0, Lcom/android/camera/HTCCamera;->mFocusMode:I

    if-eq v0, v2, :cond_1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceFocusSound()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/camera/HTCCamera;->bFocusFromPress:Z

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "CameraThread"

    const-string v1, "Play Focused Sound - successful"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    const v2, 0x7f060002

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->bShowFocusIcon:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x19

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v1, Lcom/android/camera/OneValueEvent;

    const-string v2, "Focus.Finished"

    sget v3, Lcom/android/camera/HTCCamera;->mFocusMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/OneValueEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->bShowFocusIcon:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x1b

    invoke-static {v0, v1, v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    :cond_4
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x1c

    invoke-static {v0, v1, v5, v6}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    const-string v0, "CameraThread"

    const-string v1, "handleAutoFocus() end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v0, "CameraThread"

    const-string v1, " Now We don\'t have Focus"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->bShowFocusIcon:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x1a

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto :goto_1
.end method

.method private hasStorageTest()V
    .locals 3

    const/4 v1, 0x0

    sput v1, Lcom/android/camera/CameraThread;->Storage_Status:I

    :try_start_0
    invoke-static {}, Lcom/android/camera/ImageManager;->hasStorage()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    sput v1, Lcom/android/camera/CameraThread;->Storage_Status:I

    :cond_0
    const/4 v1, 0x1

    invoke-static {}, Lcom/android/camera/DCFRuler;->getReleativeVideoPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/ImageManager;->hasStorage(ZLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    sput v1, Lcom/android/camera/CameraThread;->Storage_Status:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "CameraThread"

    const-string v2, "cannot know storage state"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x2

    sput v1, Lcom/android/camera/CameraThread;->Storage_Status:I

    goto :goto_0
.end method

.method private isAddTimeStamp()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/camera/CameraThread;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->captrueFullSize()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v1, v2}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v1, v2}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v1, "pref_camera_timestamp"

    invoke-static {v0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method private isMMSRecording()Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v4, p0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v0

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0, v4}, Lcom/android/camera/MovieModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Resolution;

    move-result-object v1

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v5, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v4, v5}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v4

    if-eq v4, v3, :cond_2

    sget-object v4, Lcom/android/camera/Resolution;->Video_QCIF:Lcom/android/camera/Resolution;

    invoke-virtual {v1, v4}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method private loadResolution()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const-string v4, "CameraThread"

    const-string v5, "loadResolution() - start"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, p0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v4, :cond_7

    invoke-static {}, Lcom/android/camera/PhotoModeHandler;->getPhotoModeHandler()Lcom/android/camera/PhotoModeHandler;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->captrueFullSize()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v5, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v4, v5}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v5, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v4, v5}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1, v4}, Lcom/android/camera/PhotoModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Resolution;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/android/camera/CameraThread;->Camera_Mode_Width:I

    invoke-virtual {v3}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/android/camera/CameraThread;->Camera_Mode_Height:I

    sget v4, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_SIZE_FOR_CONTACT:I

    iput v4, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    sget v4, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_SIZE_FOR_CONTACT:I

    iput v4, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    :cond_1
    :goto_0
    const-string v4, "CameraThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mEncoderType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/CameraThread;->mEncoderType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    const/4 v4, 0x0

    const/16 v5, 0x5a

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->getPreviewHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->getPreviewWidth()I

    move-result v7

    invoke-static {v2, v4, v5, v6, v7}, Lcom/android/camera/CameraThread;->prepareMatrix(Landroid/graphics/Matrix;ZIII)V

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iput-object v3, p0, Lcom/android/camera/CameraThread;->mCurrentResolution:Lcom/android/camera/Resolution;

    const-string v4, "CameraThread"

    const-string v5, "loadResolution() - end"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportWideScreen2ndCamera()Z

    move-result v4

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    if-ne v4, v6, :cond_3

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/CameraThread;->updateImageRatio(ZLcom/android/camera/ModeHandler;)Lcom/android/camera/Resolution;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/android/camera/CameraThread;->Camera_Mode_Width:I

    invoke-virtual {v3}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/android/camera/CameraThread;->Camera_Mode_Height:I

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportWideScreen2ndCamera()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    if-eqz v4, :cond_5

    sget v4, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X_2ND:I

    iput v4, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    sget v4, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X_2ND:I

    iput v4, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    if-nez v4, :cond_1

    sget v4, Lcom/android/camera/DisplayDevice;->DEFAULT_3D_CAMERA_PREVIEW_WIDTH:I

    iput v4, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    sget v4, Lcom/android/camera/DisplayDevice;->DEFAULT_3D_CAMERA_PREVIEW_HEIGHT:I

    iput v4, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v5, Lcom/android/camera/IntentManager$RequestName;->CU:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v4, v5}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v4

    if-ne v4, v6, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v5, "pref_camera_image_ratio"

    invoke-static {v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_5
    sget v4, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X:I

    iput v4, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    sget v4, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X:I

    iput v4, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    goto :goto_2

    :cond_6
    sget v4, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_WIDTH_FOR_4x3:I

    iput v4, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    sget v4, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_HEIGHT_FOR_4x3:I

    iput v4, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v1

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1, v4}, Lcom/android/camera/MovieModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Resolution;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    invoke-virtual {v3}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/android/camera/CameraThread;->Video_Mode_Height:I

    sget-object v4, Lcom/android/camera/Resolution;->Video_QCIF:Lcom/android/camera/Resolution;

    invoke-virtual {v3, v4}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    sget-object v4, Lcom/android/camera/Resolution;->Video_QCIF_Service:Lcom/android/camera/Resolution;

    invoke-virtual {v3, v4}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    sget-object v4, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    sget-object v5, Lcom/android/camera/DisplayDevice$CustomMMS;->Verizon:Lcom/android/camera/DisplayDevice$CustomMMS;

    if-eq v4, v5, :cond_9

    iput v6, p0, Lcom/android/camera/CameraThread;->mEncoderType:I

    goto/16 :goto_0

    :cond_9
    sget-object v4, Lcom/android/camera/Resolution;->Video_720p:Lcom/android/camera/Resolution;

    invoke-virtual {v3, v4}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    sget-object v4, Lcom/android/camera/Resolution;->Video_720p_Online:Lcom/android/camera/Resolution;

    invoke-virtual {v3, v4}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_a
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportQCT8x50()Z

    move-result v4

    if-eqz v4, :cond_b

    iput v8, p0, Lcom/android/camera/CameraThread;->mEncoderType:I

    goto/16 :goto_0

    :cond_b
    iput v7, p0, Lcom/android/camera/CameraThread;->mEncoderType:I

    goto/16 :goto_0

    :cond_c
    invoke-static {}, Lcom/android/camera/DisplayDevice;->notSupportH264()Z

    move-result v4

    if-eqz v4, :cond_d

    iput v8, p0, Lcom/android/camera/CameraThread;->mEncoderType:I

    goto/16 :goto_0

    :cond_d
    iput v7, p0, Lcom/android/camera/CameraThread;->mEncoderType:I

    goto/16 :goto_0
.end method

.method private loadSettings()V
    .locals 21

    const-string v17, "CameraThread"

    const-string v18, "Start to Load Settings to Set Camera "

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/DCFRuler$StorageCardControl;->initStorageType(Landroid/app/Activity;)V

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/CameraThread;->mPlaySoundFromCameraService:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "sound-off"

    const-string v19, "true"

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v16, 0x0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSpecific2ndCamera()Z

    move-result v17

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    const-string v18, "pref_camera_white_balance_2nd"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraController;->setWhiteBalance(Ljava/lang/String;)V

    const-string v17, "pref_camera_brightness"

    const-string v18, "exposure-compensation"

    const/16 v19, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/CameraThread;->setParameterFromBarLevel(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->getJPEGQualityPreference()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/CameraThread;->mJPEGQuality:I

    invoke-static {}, Lcom/android/camera/CameraController;->supportFlashLight()Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/HTCCamera;->getFlashRestriction()Lcom/android/camera/FlashRestriction;

    move-result-object v12

    if-eqz v12, :cond_10

    invoke-virtual {v12}, Lcom/android/camera/FlashRestriction;->isDisableFlash()Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "off"

    invoke-virtual/range {v17 .. v18}, Lcom/android/camera/CameraController;->setFlashMode(Ljava/lang/String;)V

    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceSutterSound()Z

    move-result v17

    if-nez v17, :cond_1

    const-string v17, "pref_play_shutter_sound"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_13

    :cond_1
    const/16 v17, 0x1

    :goto_2
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/CameraThread;->bShutterSound:Z

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    move/from16 v17, v0

    if-nez v17, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    const-string v18, "pref_camera_effect"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_3
    const-string v17, "none"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/CameraThread;->mbNoneEffect:Z

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CameraThread;->mbNoneEffect:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    const-string v17, "CameraThread"

    const-string v18, " Load Settings - ImageProperty "

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->setImageProperty()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    const-string v18, "pref_flicker_adjustment"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/camera/CameraController;->setAntibanding(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportISO()Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "preview-iso"

    const-string v19, "on"

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "iso"

    const-string v19, "auto"

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    move/from16 v17, v0

    if-nez v17, :cond_4

    sget-boolean v17, Lcom/android/camera/DisplayDevice;->NOT_SENSE_2_0:Z

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    const-string v18, "pref_post_processing"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "postproc-enable-imboost"

    const-string v19, "on"

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "postproc-enable-denoise"

    const-string v19, "on"

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_6
    invoke-static {}, Lcom/android/camera/DisplayDevice;->showSceneInMenu()Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    move/from16 v17, v0

    if-nez v17, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    const-string v18, "pref_camera_scene"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :goto_7
    const-string v17, "auto"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    if-nez v11, :cond_1c

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/camera/BooleanEvent;

    const-string v19, "AutoScene.Enabled"

    const/16 v20, 0x1

    invoke-direct/range {v18 .. v20}, Lcom/android/camera/BooleanEvent;-><init>(Ljava/lang/String;Z)V

    invoke-virtual/range {v17 .. v18}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/android/camera/CameraController;->setSceneMode(Ljava/lang/String;)V

    :cond_6
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v17

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    const-string v18, "pref_blink detection"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    const-string v18, "pref_smile_capture"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v5, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "ola-sbd-options"

    const-string v19, "03"

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportStereoRecord()Z

    move-result v17

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    const-string v18, "pref_stereo_recording"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1f

    const-string v17, "CameraThread"

    const-string v18, "Stereo = true"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/CameraThread;->bIsStereo:Z

    :cond_8
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v17

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    const-string v18, "pref_camera_3D_file_format"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/CameraThread;->m3DFileFormat:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "3d-file-format"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->m3DFileFormat:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    const-string v17, "CameraThread"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Set 3D file format: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->m3DFileFormat:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-string v17, "CameraThread"

    const-string v18, "End to Load Settings to Set Camera"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v17

    if-nez v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    const-string v18, "pref_camera_white_balance"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_0

    :cond_b
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v17

    if-nez v17, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    const-string v18, "pref_camera_scene_ds"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :goto_b
    const/4 v14, 0x0

    if-eqz v13, :cond_c

    const-string v17, "null"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_c

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    :cond_c
    const/16 v17, 0x8

    move/from16 v0, v17

    if-ne v14, v0, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    const-string v18, "pref_camera_white_balance_manual"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    const-string v18, "pref_camera_scene_service_ds"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_b

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    const-string v18, "pref_camera_white_balance"

    const-string v19, "auto"

    invoke-static/range {v17 .. v19}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    const-string v18, "pref_camera_white_balance"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    const-string v18, "pref_camera_white_balance_2nd"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_0

    :cond_10
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/HTCCamera;->isTurnOnTorch()Z

    move-result v17

    if-eqz v17, :cond_11

    const-string v8, "torch"

    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/android/camera/CameraController;->setFlashMode(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_11
    const-string v8, "off"

    goto :goto_c

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    const-string v18, "pref_camera_flash_mode"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_c

    :cond_13
    const/16 v17, 0x0

    goto/16 :goto_2

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    const-string v18, "pref_video_effect"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_3

    :cond_15
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/CameraThread;->mbNoneEffect:Z

    goto/16 :goto_4

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "preview-iso"

    const-string v19, "off"

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    const-string v18, "pref_camera_iso"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_17

    const-string v17, "null"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_18

    :cond_17
    const-string v10, "auto"

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v17

    if-eqz v17, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "iso"

    const-string v19, "auto"

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "iso"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "postproc-enable-imboost"

    const-string v19, "off"

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "postproc-enable-denoise"

    const-string v19, "off"

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    const-string v18, "pref_video_scene"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_7

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/camera/BooleanEvent;

    const-string v19, "AutoScene.Enabled"

    const/16 v20, 0x0

    invoke-direct/range {v18 .. v20}, Lcom/android/camera/BooleanEvent;-><init>(Ljava/lang/String;Z)V

    invoke-virtual/range {v17 .. v18}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    goto/16 :goto_8

    :cond_1d
    if-eqz v6, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "ola-sbd-options"

    const-string v19, "10"

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "ola-sbd-options"

    const-string v19, "00"

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_1f
    const-string v17, "CameraThread"

    const-string v18, "Stereo = false"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/CameraThread;->bIsStereo:Z

    goto/16 :goto_a
.end method

.method public static prepareMatrix(Landroid/graphics/Matrix;ZIII)V
    .locals 4

    const/high16 v3, 0x44fa

    const/high16 v2, 0x4000

    const/high16 v1, 0x3f80

    if-eqz p1, :cond_0

    const/high16 v0, -0x4080

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    int-to-float v0, p2

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    int-to-float v0, p3

    div-float/2addr v0, v3

    int-to-float v1, p4

    div-float/2addr v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    int-to-float v0, p3

    div-float/2addr v0, v2

    int-to-float v1, p4

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 1

    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private releaseMediaRecorder()V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "CameraThread"

    const-string v2, "releaseMediaRecorder()"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    iput-object v3, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "CameraThread"

    const-string v2, "mRecorder.setOnInfoListener(null - Runtime exception caught"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "CameraThread"

    const-string v2, "mRecorder.reset() - Runtime exception caught"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "CameraThread"

    const-string v2, "mRecorder.release() - Runtime exception caught"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private resetCameraFlag()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mIsOnlySetResolution:Z

    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mTaking_picture:Z

    return-void
.end method

.method private setAecAwbLockInternal(Z)V
    .locals 3

    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAecAwbLockInternal("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/camera/CameraThread;->mIsAecAwbLocked:Z

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    if-nez v0, :cond_0

    const-string v0, "CameraThread"

    const-string v1, "setAecAwbLockInternal() - No camera controller"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mTaking_picture:Z

    if-eqz v0, :cond_1

    const-string v0, "CameraThread"

    const-string v1, "setAecAwbLockInternal() - Taking picture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mRecording:Z

    if-eqz v0, :cond_2

    const-string v0, "CameraThread"

    const-string v1, "setAecAwbLockInternal() - Recording video"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraController;->setAutoExposureLock(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto :goto_0

    :cond_3
    const-string v0, "CameraThread"

    const-string v1, "setAecAwbLockInternal() - Both AEC and AWB lock are not supported"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setCounter(Ljava/lang/String;I)V
    .locals 5

    :try_start_0
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-static {v2, p1, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "incCounter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setImageProperty()V
    .locals 3

    const/4 v2, 0x5

    const-string v0, "pref_camera_contrast"

    const-string v1, "contrast"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/CameraThread;->setParameterFromBarLevel(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "pref_camera_saturation"

    const-string v1, "saturation"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/CameraThread;->setParameterFromBarLevel(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "pref_camera_shaprness"

    const-string v1, "sharpness"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/CameraThread;->setParameterFromBarLevel(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private setParameterFromBarLevel(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-static {v4, p1}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v4, "null"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, p2, v5, p3}, Lcom/android/camera/CameraController;->mapBarLevel2SettingValue(Ljava/lang/String;II)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v4, p2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v4, "CameraThread"

    const-string v5, "get level failed !!!"

    invoke-static {v4, v5, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v4, p2}, Lcom/android/camera/CameraController;->getSettingsInfo(Ljava/lang/String;)Lcom/android/camera/CameraController$SettingInfo;

    move-result-object v1

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v1}, Lcom/android/camera/CameraController$SettingInfo;->getDefault()I

    move-result v5

    invoke-virtual {v4, p2, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v4, p2}, Lcom/android/camera/CameraController;->getSettingsInfo(Ljava/lang/String;)Lcom/android/camera/CameraController$SettingInfo;

    move-result-object v1

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v1}, Lcom/android/camera/CameraController$SettingInfo;->getDefault()I

    move-result v5

    invoke-virtual {v4, p2, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private stop_video_recording()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    sget-boolean v2, Lcom/android/camera/CameraThread;->mTakeFocus:Z

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v2, "CameraThread"

    const-string v3, "stop recording, so cancel auto focus, mTakeFocus = false"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v7, Lcom/android/camera/CameraThread;->mTakeFocus:Z

    :cond_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportStereoRecord()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-static {v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getIsRecordWithAudio(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/camera/SoundEffect;->disableSoundEffect()I

    :cond_1
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_2

    :try_start_1
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->isRecPowerWarning()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->reconnect()V

    :cond_3
    const-string v2, "CameraThread"

    const-string v3, "stop video recording : reconnect camera device"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->isRecPowerWarning()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_4
    :goto_3
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->restoreBackgrounddataSetting()V

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v3, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->isRequestMode(Lcom/android/camera/IntentManager$RequestMode;)Z

    move-result v2

    if-eq v2, v6, :cond_5

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v2

    if-ne v2, v6, :cond_a

    :cond_5
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x2f

    const-wide/16 v4, 0x1f4

    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    :goto_4
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportThumbnailAlbumButton()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v3, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->isRequestMode(Lcom/android/camera/IntentManager$RequestMode;)Z

    move-result v2

    if-eq v2, v6, :cond_6

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v2

    if-ne v2, v6, :cond_8

    :cond_6
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->needsReview()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->isUIReady()Z

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x1e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/camera/CameraThread;->mfilepath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v7, v7, v4}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :cond_8
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v2

    const-string v3, "CAMCORDER_MODE=OFF"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const-string v2, "CameraThread"

    const-string v3, "cancel focus failed"

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v2, "CameraThread"

    const-string v3, "mRecorder.stop() - Runtime exception caught"

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :catch_2
    move-exception v0

    const-string v2, "CameraThread"

    const-string v3, "camera reconnect exception."

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :catch_3
    move-exception v0

    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stop preview exception."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_9
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->stop_video_recording_delay()V

    goto/16 :goto_4

    :cond_a
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->stop_video_recording_delay()V

    goto/16 :goto_4
.end method

.method private stop_video_recording_delay()V
    .locals 19

    const-string v2, "CameraThread"

    const-string v3, "stop_video_recording_delay start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v13, "video/3gpp"

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportOnlyMP4VideoFormat()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isMMSRecording()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v13, "video/mp4"

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    if-nez v2, :cond_1

    const-string v13, "video/mp4-3d"

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mfilepath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v17

    :try_start_1
    move-object/from16 v0, v17

    invoke-static {v0, v13}, Lcom/android/camera/ThumbnailUtility;->createThumbnailImage(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v18

    :goto_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v3, Lcom/android/camera/ThumbnailEvent;

    const-string v4, "VideoThumbnailImage.Created"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v3, v4, v0, v1}, Lcom/android/camera/ThumbnailEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    if-eqz v18, :cond_2

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->recycle()V

    const/16 v18, 0x0

    :cond_2
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/camera/DCFRuler$StorageCardControl;->setURIType(I)V

    invoke-static {}, Lcom/android/camera/ImageManager;->instance()Lcom/android/camera/ImageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/camera/DCFRuler;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/camera/CameraThread;->mStartRecordingTime:J

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->mfilepath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v14}, Lcom/android/camera/HTCCamera;->getRecordMS()J

    move-result-wide v14

    invoke-virtual/range {v2 .. v15}, Lcom/android/camera/ImageManager;->addVideo(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JLandroid/location/Location;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/android/camera/CameraThread;->mLastContentUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    sget-object v3, Lcom/android/camera/CameraThread;->mLastContentUri:Landroid/net/Uri;

    iput-object v3, v2, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mfilepath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/camera/MediaInfo;->filePath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    iput-object v13, v2, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/camera/CameraThread;->mLastContentUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/android/camera/ImageManager;->setVideoSize(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v3, Lcom/android/camera/VideoSavedEvent;

    const-string v4, "Media.Saved"

    sget-object v5, Lcom/android/camera/CameraThread;->mLastContentUri:Landroid/net/Uri;

    move-object/from16 v0, v17

    invoke-direct {v3, v4, v5, v0}, Lcom/android/camera/VideoSavedEvent;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraThread;->setRecPowerWarning(Z)V

    const-string v2, "CameraThread"

    const-string v3, "stop_video_recording_delay end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v16

    const/16 v18, 0x0

    :try_start_3
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot create video thumbnail for \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v16

    const-string v2, "CameraThread"

    const-string v3, "stop_video_recording(), create uri failed!!"

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v3, Lcom/android/camera/MediaSaveFailedEvent;

    const-string v4, "Media.SaveFailed"

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-direct {v3, v4, v5, v0}, Lcom/android/camera/MediaSaveFailedEvent;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    goto :goto_1
.end method

.method private store_image([BLcom/android/camera/CameraThread$StorePictureCallback;Lcom/android/camera/DCFInfo;)Z
    .locals 18

    :try_start_0
    const-string v2, "CameraThread"

    const-string v3, "Store Jpeg Image..."

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/camera/CameraThread;->getSavedFile(Lcom/android/camera/DCFInfo;)Lcom/android/camera/DCFRuler$PathPackage;

    move-result-object v17

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/camera/DCFRuler$StorageCardControl;->setURIType(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/camera/ImageManager;->instance()Lcom/android/camera/ImageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/camera/DCFRuler;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/CameraThread;->mLocation:Landroid/location/Location;

    const/4 v10, 0x0

    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/android/camera/DCFRuler$PathPackage;->mDirectoryName:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v12, v0, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/CameraThread;->m3DFileFormat:Ljava/lang/String;

    invoke-virtual/range {v2 .. v13}, Lcom/android/camera/ImageManager;->addImage(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JLandroid/location/Location;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/android/camera/CameraThread;->mLastContentUri:Landroid/net/Uri;

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    const-string v3, ".jps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    const-string v3, "image/jps"

    iput-object v3, v2, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    :goto_0
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/camera/DCFRuler$PathPackage;->mDirectoryName:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/CameraThread;->mfilepath:Ljava/lang/String;

    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Store image - directory name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/camera/DCFRuler$PathPackage;->mDirectoryName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  file name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/camera/CameraThread;->mLastContentUri:Landroid/net/Uri;

    if-nez v2, :cond_5

    const-string v2, "CameraThread"

    const-string v3, "Store image: mLastContentUri = null"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mfilepath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/android/camera/CameraThread;->mLastContentUri:Landroid/net/Uri;

    :goto_1
    invoke-static {}, Lcom/android/camera/ImageManager;->instance()Lcom/android/camera/ImageManager;

    move-result-object v2

    sget-object v3, Lcom/android/camera/CameraThread;->mLastContentUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-virtual/range {v2 .. v9}, Lcom/android/camera/ImageManager;->storeImage(Landroid/net/Uri;Landroid/content/Context;Landroid/content/ContentResolver;ILandroid/graphics/Bitmap;[BLcom/android/camera/ImageManager$StoreImageCallback;)Lcom/android/camera/ImageManager$IAddImage_cancelable;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/android/camera/ImageManager$IAddImage_cancelable;->get()V

    const/16 v16, 0x0

    invoke-virtual/range {p3 .. p3}, Lcom/android/camera/DCFInfo;->getFileCounterPreferenceKey()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/camera/DCFRuler$PathPackage;->mImageCounter:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/camera/CameraThread;->setCounter(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Lcom/android/camera/DCFInfo;->getDirCounterPreferenceKey()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/camera/DCFRuler$PathPackage;->mDirectoryCounter:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/camera/CameraThread;->setCounter(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    sget-object v3, Lcom/android/camera/CameraThread;->mLastContentUri:Landroid/net/Uri;

    iput-object v3, v2, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mfilepath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/camera/MediaInfo;->filePath:Ljava/lang/String;

    if-eqz p2, :cond_0

    sget-object v2, Lcom/android/camera/CameraThread;->mLastContentUri:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mfilepath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/CameraThread$StorePictureCallback;->onPictureStored([BLandroid/net/Uri;Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x1

    :goto_2
    return v2

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    const-string v3, "image/mpo"

    iput-object v3, v2, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/camera/DCFRuler$OverMaxDCFDirectoryNumberException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v14

    const-string v2, "CameraThread"

    const-string v3, "The number of the Files are over, please insert a new sdcard "

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v14}, Lcom/android/camera/CameraThread$StorePictureCallback;->onError([BLjava/lang/Exception;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v3, Lcom/android/camera/MediaSaveFailedEvent;

    const-string v4, "Media.SaveFailed"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v14}, Lcom/android/camera/MediaSaveFailedEvent;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    :try_start_1
    invoke-static {}, Lcom/android/camera/ImageManager;->instance()Lcom/android/camera/ImageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/camera/DCFRuler;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/CameraThread;->mLocation:Landroid/location/Location;

    const/4 v10, 0x0

    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/android/camera/DCFRuler$PathPackage;->mDirectoryName:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v12, v0, Lcom/android/camera/DCFRuler$PathPackage;->mFileName:Ljava/lang/String;

    invoke-virtual/range {v2 .. v12}, Lcom/android/camera/ImageManager;->addImage(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JLandroid/location/Location;ILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/android/camera/CameraThread;->mLastContentUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    const-string v3, "image/jpeg"

    iput-object v3, v2, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;
    :try_end_1
    .catch Lcom/android/camera/DCFRuler$OverMaxDCFDirectoryNumberException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    :catch_1
    move-exception v15

    const-string v2, "CameraThread"

    const-string v3, "Cannot find available image file location, please check the storage card"

    invoke-static {v2, v3, v15}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p2, :cond_4

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v15}, Lcom/android/camera/CameraThread$StorePictureCallback;->onError([BLjava/lang/Exception;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v3, Lcom/android/camera/MediaSaveFailedEvent;

    const-string v4, "Media.SaveFailed"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v15}, Lcom/android/camera/MediaSaveFailedEvent;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_5
    :try_start_2
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Store image: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/camera/CameraThread;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/android/camera/DCFRuler$OverMaxDCFDirectoryNumberException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v15

    const-string v2, "CameraThread"

    const-string v3, "Exception while compressing image."

    invoke-static {v2, v3, v15}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p2, :cond_6

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v15}, Lcom/android/camera/CameraThread$StorePictureCallback;->onError([BLjava/lang/Exception;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v3, Lcom/android/camera/MediaSaveFailedEvent;

    const-string v4, "Media.SaveFailed"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v15}, Lcom/android/camera/MediaSaveFailedEvent;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    const/4 v2, 0x0

    goto/16 :goto_2
.end method

.method private store_image_on_data([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/data/test_image.jpg"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    return-void
.end method

.method private store_image_on_sdcard([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/sdcard/test_image.jpg"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    return-void
.end method

.method private final threadAccessCheck()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cross-thread access"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public IsEqualOrAbove720p()Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v4, p0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v0

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0, v4}, Lcom/android/camera/MovieModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Resolution;

    move-result-object v1

    sget-object v4, Lcom/android/camera/Resolution;->Video_720p:Lcom/android/camera/Resolution;

    invoke-virtual {v1, v4}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/android/camera/Resolution;->Video_720p_Online:Lcom/android/camera/Resolution;

    invoke-virtual {v1, v4}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    sget-object v4, Lcom/android/camera/Resolution;->Video_1080p:Lcom/android/camera/Resolution;

    invoke-virtual {v1, v4}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lcom/android/camera/Resolution;->Video_1080p_Online:Lcom/android/camera/Resolution;

    invoke-virtual {v1, v4}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method public calculatePicturesRemaining()J
    .locals 17

    const-string v13, "CameraThread"

    const-string v14, "calculatePicturesRemaining() - start"

    invoke-static {v13, v14}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/camera/PhotoModeHandler;->getPhotoModeHandler()Lcom/android/camera/PhotoModeHandler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v13, v14}, Lcom/android/camera/PhotoModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Resolution;

    move-result-object v8

    invoke-static {}, Lcom/android/camera/ResolutionSize;->getInstance()Lcom/android/camera/ResolutionSize;

    move-result-object v13

    invoke-virtual {v8}, Lcom/android/camera/Resolution;->getNameResId()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/CameraThread;->mJPEGQualityKey:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Lcom/android/camera/ResolutionSize;->getSize(ILjava/lang/String;)I

    move-result v13

    int-to-long v2, v13

    const-wide/16 v13, -0x1

    cmp-long v13, v13, v2

    if-nez v13, :cond_0

    const-string v13, "CameraThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getResolutionSize fail: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/CameraThread;->mJPEGQualityKey:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 v2, 0x61a80

    :cond_0
    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getCurStorageDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v11, Landroid/os/StatFs;

    invoke-direct {v11, v12}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v13

    int-to-long v13, v13

    invoke-virtual {v11}, Landroid/os/StatFs;->getBlockSize()I

    move-result v15

    int-to-long v15, v15

    mul-long/2addr v13, v15

    const-wide/32 v15, 0x100000

    sub-long v9, v13, v15

    div-long v6, v9, v2

    move-wide v4, v6

    const-wide/16 v13, 0x0

    cmp-long v13, v4, v13

    if-gez v13, :cond_1

    const-wide/16 v4, 0x0

    :cond_1
    const-string v13, "CameraThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "return freeshot = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v13, "CameraThread"

    const-string v14, "calculatePicturesRemaining() - end"

    invoke-static {v13, v14}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v4

    :catch_0
    move-exception v1

    const-string v13, "CameraThread"

    const-string v14, "catch - calculatePicturesRemaining with exception: "

    invoke-static {v13, v14, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v13, "CameraThread"

    const-string v14, "return freeshot = -1"

    invoke-static {v13, v14}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, -0x1

    goto :goto_0
.end method

.method public calculateTapArea(IIFIIIILandroid/graphics/Rect;)V
    .locals 10

    const-string v6, "CameraThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ICS focus calculateTapArea:x,y = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float v6, p1

    mul-float/2addr v6, p3

    float-to-int v2, v6

    int-to-float v6, p2

    mul-float/2addr v6, p3

    float-to-int v1, v6

    div-int/lit8 v6, v2, 0x2

    sub-int v6, p4, v6

    const/4 v7, 0x0

    sub-int v8, p6, v2

    invoke-static {v6, v7, v8}, Lcom/android/camera/CameraThread;->clamp(III)I

    move-result v3

    div-int/lit8 v6, v1, 0x2

    sub-int v6, p5, v6

    const/4 v7, 0x0

    sub-int v8, p7, v1

    invoke-static {v6, v7, v8}, Lcom/android/camera/CameraThread;->clamp(III)I

    move-result v5

    const-string v6, "CameraThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ICS focus calculateTapArea:left,right,top,bottom = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int v8, v3, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int v8, v5, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/graphics/RectF;

    int-to-float v6, v3

    int-to-float v7, v5

    add-int v8, v3, v2

    int-to-float v8, v8

    add-int v9, v5, v1

    int-to-float v9, v9

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v6, p0, Lcom/android/camera/CameraThread;->mMatrix:Landroid/graphics/Matrix;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/camera/CameraThread;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    :cond_0
    move-object/from16 v0, p8

    invoke-static {v4, v0}, Lcom/android/camera/CameraThread;->rectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    const-string v6, "CameraThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ICS focus calculateTapArea:left,right,top,bottom = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p8

    iget v8, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p8

    iget v8, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p8

    iget v8, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p8

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public canTakePicture()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mbCanTakePicture:Z

    return v0
.end method

.method public final changeZoom(I)V
    .locals 6

    const/16 v5, 0x46

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v2, p0, :cond_a

    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeZoom("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") - start sync"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/android/camera/HTCCameraAdvanceSetting;->mZoomValue:I

    if-ne v1, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    sput p1, Lcom/android/camera/HTCCameraAdvanceSetting;->mZoomValue:I

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    if-nez v2, :cond_2

    :cond_1
    const-string v2, "CameraThread"

    const-string v3, "Camera is not open, cannot change zoom"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/android/camera/CameraThread;->mRecording:Z

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/android/camera/DisplayDevice;->needDelayZooming()Z

    move-result v2

    if-nez v2, :cond_9

    if-ge v1, p1, :cond_6

    move v0, v1

    :cond_3
    add-int/lit8 v2, v0, 0x2

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v3, "taking-picture-zoom"

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    invoke-virtual {v2, v5}, Lcom/android/camera/CameraThread$MainHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pending zooming request found, stop zooming at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sput v0, Lcom/android/camera/HTCCameraAdvanceSetting;->mZoomValue:I

    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v3, Lcom/android/camera/OneValueEvent;

    const-string v4, "Zoom.Changed"

    sget v5, Lcom/android/camera/HTCCameraAdvanceSetting;->mZoomValue:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/camera/OneValueEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeZoom("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") - end sync"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Ljava/lang/Thread;->yield()V

    if-lt v0, p1, :cond_3

    goto :goto_1

    :cond_6
    move v0, v1

    :cond_7
    add-int/lit8 v2, v0, -0x2

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v3, "taking-picture-zoom"

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    invoke-virtual {v2, v5}, Lcom/android/camera/CameraThread$MainHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pending zooming request found, stop zooming at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sput v0, Lcom/android/camera/HTCCameraAdvanceSetting;->mZoomValue:I

    goto :goto_1

    :cond_8
    invoke-static {}, Ljava/lang/Thread;->yield()V

    if-gt v0, p1, :cond_7

    goto :goto_1

    :cond_9
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v3, "taking-picture-zoom"

    invoke-virtual {v2, v3, p1}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->needDelayZooming()Z

    move-result v2

    if-eqz v2, :cond_4

    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v2

    goto/16 :goto_1

    :cond_a
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v2, :cond_b

    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeZoom("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") - start async"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v5, p1, v3, v4}, Lcom/android/camera/MessageHandler;->sendUniqueObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeZoom("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") - end async"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string v2, "CameraThread"

    const-string v3, "Cannot change zoom because there is no handler"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method close_camera()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v2, p0, Lcom/android/camera/CameraThread;->mRecording:Z

    if-ne v2, v5, :cond_0

    iget v2, p0, Lcom/android/camera/CameraThread;->mMode:I

    if-ne v2, v5, :cond_0

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->stop_video_recording()V

    iput-boolean v4, p0, Lcom/android/camera/CameraThread;->mRecording:Z

    :cond_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSharpSensor()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/camera/CameraThread;->mTakeFocus:Z

    if-ne v2, v5, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v2, "CameraThread"

    const-string v3, "cancel auto focus, mTakeFocus = false"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v4, Lcom/android/camera/CameraThread;->mTakeFocus:Z

    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    if-ne v2, v5, :cond_2

    const-string v2, "CameraThread"

    const-string v3, "before stopPreview"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    iput-boolean v4, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    const-string v2, "CameraThread"

    const-string v3, "after stopPreview"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iput-boolean v4, p0, Lcom/android/camera/CameraThread;->mIsAecAwbLocked:Z

    iput-object v6, p0, Lcom/android/camera/CameraThread;->mCurrentColorEffect:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->resetJpegData()V

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    const-string v2, "CameraThread"

    const-string v3, "before release"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/camera/CloseCameraRequestEvent;

    const-string v2, "Request.CloseCamera"

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-direct {v0, v2, v3}, Lcom/android/camera/CloseCameraRequestEvent;-><init>(Ljava/lang/String;Landroid/hardware/Camera;)V

    :try_start_1
    iget-object v2, p0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    invoke-virtual {v2, v0}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-virtual {v0}, Lcom/android/camera/CloseCameraRequestEvent;->isHandled()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    :cond_3
    const-string v2, "CameraThread"

    const-string v3, "after release"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->resetCameraFlag()V

    iput-object v6, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    iput-object v6, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    iput v4, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    const-string v2, "CameraThread"

    const-string v3, "close camera - mCaptureState = CAPTURE_STATE_IDLE"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v5, Lcom/android/camera/CameraThread;->mIsLastCameraClosed:Z

    const-string v2, "CameraThread"

    const-string v3, "Release Camera - set mIsLastCameraClosed to true"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :catch_0
    move-exception v1

    const-string v2, "CameraThread"

    const-string v3, "cancel focus failed"

    invoke-static {v2, v3, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "CameraThread"

    const-string v3, "Exception was occurred while requesting close camera"

    invoke-static {v2, v3, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    const-string v2, "CameraThread"

    const-string v3, "mCameraDevice == null in close_camera"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final createPostViewImage(Landroid/graphics/Bitmap;)V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string v0, "CameraThread"

    const-string v1, "!!!!!!!! bitmap == null !!!!!!!!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "CameraThread"

    const-string v1, "bitmap != null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v1, Lcom/android/camera/PictureEvent;

    const-string v2, "ReviewAnimation.PostviewCreated"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/android/camera/PictureEvent;-><init>(Ljava/lang/String;[BLandroid/graphics/Bitmap;Z)V

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public final createPostViewImage([B)V
    .locals 11

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v7}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    const-string v7, "CameraThread"

    const-string v8, "!!!!!!!! postviewData == null !!!!!!!!"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v7, "CameraThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "postviewData != null, postviewData.length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v7}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v7, "postview-size"

    invoke-virtual {v4, v7}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x78

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v5, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sget-object v7, Lcom/scalado/base/Image$Config;->YVU_420SP:Lcom/scalado/base/Image$Config;

    invoke-static {v1, v3, v7, p1}, Lcom/android/camera/ImageUtility;->createBitmapFromRawData(IILcom/scalado/base/Image$Config;[B)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v7, p0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v8, Lcom/android/camera/PictureEvent;

    const-string v9, "ReviewAnimation.PostviewCreated"

    invoke-direct {v8, v9, p1, v0, v10}, Lcom/android/camera/PictureEvent;-><init>(Ljava/lang/String;[BLandroid/graphics/Bitmap;Z)V

    invoke-virtual {v7, v8}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public final deleteLatestMedia()V
    .locals 6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v4, p0, :cond_1

    const-string v4, "CameraThread"

    const-string v5, "deleteLatestMedia() - start sync"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/android/camera/DeletionRequestEvent;

    const-string v4, "Request.DeleteLatestMedia"

    invoke-direct {v2, v4}, Lcom/android/camera/DeletionRequestEvent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    invoke-virtual {v4, v2}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    invoke-virtual {v2}, Lcom/android/camera/DeletionRequestEvent;->isDeleted()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "CameraThread"

    const-string v5, "Use default method to delete latest media"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v0, Lcom/android/camera/CameraThread;->mLastContentUri:Landroid/net/Uri;

    new-instance v3, Lcom/android/camera/CameraThread$5;

    const-string v4, "Default media deletion thread"

    invoke-direct {v3, p0, v4, v1, v0}, Lcom/android/camera/CameraThread$5;-><init>(Lcom/android/camera/CameraThread;Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    iget v4, p0, Lcom/android/camera/CameraThread;->mMode:I

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    const-string v4, "CameraThread"

    const-string v5, "deleteLatestMedia() - end sync"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_0
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v5, Lcom/android/camera/DCFRuler;->DefaultDCFInfo:Lcom/android/camera/DCFInfo;

    invoke-static {v4, v5}, Lcom/android/camera/DCFRuler;->backToCounterForImage(Landroid/app/Activity;Lcom/android/camera/DCFInfo;)V

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-static {v4}, Lcom/android/camera/DCFRuler;->backToCounterForVideo(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v4, :cond_2

    const-string v4, "CameraThread"

    const-string v5, "deleteLatestMedia() - start async"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    new-instance v5, Lcom/android/camera/CameraThread$6;

    invoke-direct {v5, p0}, Lcom/android/camera/CameraThread$6;-><init>(Lcom/android/camera/CameraThread;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraThread$MainHandler;->post(Ljava/lang/Runnable;)Z

    const-string v4, "CameraThread"

    const-string v5, "deleteLatestMedia() - end async"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v4, "CameraThread"

    const-string v5, "Cannot delete media because there is no handler"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public enableShutterSound(Z)V
    .locals 1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceSutterSound()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->bShutterSound:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final endTakePicture()V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mTaking_picture:Z

    if-nez v0, :cond_0

    const-string v0, "CameraThread"

    const-string v1, "mTaking_picture == false"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/android/camera/CameraThread;->mTaking_picture:Z

    iput-boolean v1, p0, Lcom/android/camera/CameraThread;->mCanStartPreview:Z

    invoke-direct {p0, v2}, Lcom/android/camera/CameraThread;->setAecAwbLockInternal(Z)V

    iget v0, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    if-eq v0, v1, :cond_1

    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCaptureState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sending CLOSE_CAMERA message"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    :goto_1
    iget-object v0, p0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v1, "Capture.Ended"

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "CameraThread"

    const-string v1, "reset mCaptureState to CAPTURE_STATE_IDLE"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iput v2, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    goto :goto_1
.end method

.method public getCamera()Landroid/hardware/Camera;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    return-object v0
.end method

.method public getCameraController()Lcom/android/camera/CameraController;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    return-object v0
.end method

.method public final getCameraType()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCaptureHeight()I
    .locals 1

    iget v0, p0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/CameraThread;->Camera_Mode_Height:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/camera/CameraThread;->Video_Mode_Height:I

    goto :goto_0
.end method

.method public getCaptureWidth()I
    .locals 1

    iget v0, p0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/CameraThread;->Camera_Mode_Width:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    goto :goto_0
.end method

.method public final getCommonCaptureHandler()Lcom/android/camera/CameraThread$CommonCaptureHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCommonCaptureHandler:Lcom/android/camera/CameraThread$CommonCaptureHandler;

    return-object v0
.end method

.method public final getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/component/ComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    return-object v0
.end method

.method public final getComponentManager()Lcom/android/camera/component/ComponentManager;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    return-object v0
.end method

.method public final getEventManager()Lcom/android/camera/EventManager;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    return-object v0
.end method

.method public getJpegData()[B
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mJpegData:[B

    return-object v0
.end method

.method public final getLastMediaInfo()Lcom/android/camera/MediaInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    invoke-virtual {v0}, Lcom/android/camera/MediaInfo;->clone()Lcom/android/camera/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getMaximumZoom()I
    .locals 1

    iget v0, p0, Lcom/android/camera/CameraThread;->m_MaxZoom:I

    return v0
.end method

.method public final getMinimumZoom()I
    .locals 1

    iget v0, p0, Lcom/android/camera/CameraThread;->m_MinZoom:I

    return v0
.end method

.method public final getMode()I
    .locals 1

    iget v0, p0, Lcom/android/camera/CameraThread;->mMode:I

    return v0
.end method

.method public getPreviewHeight()I
    .locals 1

    iget v0, p0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/camera/CameraThread;->Video_Mode_Height:I

    goto :goto_0
.end method

.method public getPreviewWidth()I
    .locals 1

    iget v0, p0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    goto :goto_0
.end method

.method public getRecorderStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mRecording:Z

    return v0
.end method

.method public getRecordingTime()J
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/CameraThread;->mStartRecordingTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    return-wide v2
.end method

.method public getStoredDirectoryPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mfilepath:Ljava/lang/String;

    return-object v0
.end method

.method public getStoredFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    return-object v0
.end method

.method getStoredVideoPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mVideoPath:Ljava/lang/String;

    return-object v0
.end method

.method public hasShutterSound()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->bShutterSound:Z

    return v0
.end method

.method public final interruptCapture()V
    .locals 2

    const-string v0, "CameraThread"

    const-string v1, "interruptCapture() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mTaking_picture:Z

    if-nez v0, :cond_0

    const-string v0, "CameraThread"

    const-string v1, "Capturing is not in progress"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mIsCaptureInterrupted:Z

    const-string v0, "CameraThread"

    const-string v1, "interruptCapture() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public is2ndCamera()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    return v0
.end method

.method public is3DMode()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/android/camera/CameraThread;->m3DPreviewStatus:I

    if-eq v2, v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public is720p()Z
    .locals 4

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v0

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0, v3}, Lcom/android/camera/MovieModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Resolution;

    move-result-object v1

    sget-object v3, Lcom/android/camera/Resolution;->Video_720p:Lcom/android/camera/Resolution;

    invoke-virtual {v1, v3}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/android/camera/Resolution;->Video_720p_Online:Lcom/android/camera/Resolution;

    invoke-virtual {v1, v3}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isCameraTakingPicture()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mTaking_picture:Z

    return v0
.end method

.method public isLastCameraClosed()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/camera/CameraThread;->mIsLastCameraClosed:Z

    if-nez v1, :cond_1

    const-string v1, "CameraThread"

    const-string v2, "mIsLastCameraClosed = false, waiting for last camera close"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    if-eqz v1, :cond_1

    const-string v1, "CameraThread"

    const-string v2, "mCaptureState != CAPTURE_STATE_IDLE, waiting for camera close"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPreviewing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    return v0
.end method

.method public isRecPowerWarning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mRecPowerWarning:Z

    return v0
.end method

.method public final isShutterSoundNeeded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->bShutterSound:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isAutoCaptureTask()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isTakingFocus()Z
    .locals 1

    sget-boolean v0, Lcom/android/camera/CameraThread;->mTakeFocus:Z

    return v0
.end method

.method public final isTakingPicture()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mTaking_picture:Z

    return v0
.end method

.method public final isWaitingForTakingFocus()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraThread$MainHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraThread$MainHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final isWaitingForTakingPicture()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread$MainHandler;->hasMessages(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isZoomRangeRetrieved()Z
    .locals 2

    iget v0, p0, Lcom/android/camera/CameraThread;->m_MaxZoom:I

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final playShutterSound()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mPlaySoundFromCameraService:Z

    if-nez v0, :cond_0

    const-string v0, "CameraThread"

    const-string v1, "Play Take Picture Sound"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    const v2, 0x7f060001

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public releaseCameraThread()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    return-void
.end method

.method public resetJpegData()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mJpegData:[B

    return-void
.end method

.method public final restartPreview(I)V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restartPreview("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - start sync"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->stopPreview()V

    invoke-virtual {p0, p1}, Lcom/android/camera/CameraThread;->startPreview(I)V

    const-string v0, "CameraThread"

    const-string v1, "restartPreview() - end sync"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v0, :cond_1

    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restartPreview("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - start async"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    new-instance v1, Lcom/android/camera/CameraThread$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/CameraThread$1;-><init>(Lcom/android/camera/CameraThread;I)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread$MainHandler;->post(Ljava/lang/Runnable;)Z

    const-string v0, "CameraThread"

    const-string v1, "restartPreview() - end async"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "CameraThread"

    const-string v1, "Cannot re-start preview because there is no handler for camera thread"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public run()V
    .locals 2

    const-string v0, "CameraThread"

    const-string v1, "*************************************** run"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/android/camera/CameraThread$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/CameraThread$MainHandler;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    new-instance v0, Lcom/android/camera/EventManager;

    invoke-direct {v0, p0}, Lcom/android/camera/EventManager;-><init>(Lcom/android/camera/IEventManagerOwner;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v0, Lcom/android/camera/component/ComponentManager;

    invoke-direct {v0, p0}, Lcom/android/camera/component/ComponentManager;-><init>(Lcom/android/camera/component/IComponentOwner;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    new-instance v0, Lcom/android/camera/component/CameraThreadComponentFactory;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-direct {v0, v1}, Lcom/android/camera/component/CameraThreadComponentFactory;-><init>(Lcom/android/camera/HTCCamera;)V

    invoke-virtual {v0}, Lcom/android/camera/component/CameraThreadComponentFactory;->createAllSupportedComponents()V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/component/ComponentManager;->enableAutoInitialization(Z)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CameraThread"

    const-string v1, "Cannot notify UI that camera thread is running, because message cannot be sent"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mMatrix:Landroid/graphics/Matrix;

    invoke-static {}, Landroid/os/Looper;->loop()V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/ComponentManager;

    invoke-virtual {v0}, Lcom/android/camera/component/ComponentManager;->removeComponents()V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    invoke-virtual {v0}, Lcom/android/camera/EventManager;->close()V

    return-void

    :cond_1
    const-string v0, "CameraThread"

    const-string v1, "Cannot notify UI that camera thread is running, because there is no UI handler"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setAecAwbLock(Z)V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    new-instance v1, Lcom/android/camera/CameraThread$7;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/CameraThread$7;-><init>(Lcom/android/camera/CameraThread;Z)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread$MainHandler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "CameraThread"

    const-string v1, "setAecAwbLock() - No camera thread handler"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->setAecAwbLockInternal(Z)V

    goto :goto_0
.end method

.method public final setCanStartPreview()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mCanStartPreview:Z

    return-void
.end method

.method public final setCaptureHandler(Lcom/android/camera/ICaptureHandler;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mTaking_picture:Z

    if-eqz v0, :cond_0

    const-string v0, "CameraThread"

    const-string v1, "Set capture handler while taking picture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Set capture handler while taking picture"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/android/camera/CameraThread;->mCaptureHandler:Lcom/android/camera/ICaptureHandler;

    return-void
.end method

.method public setColorEffect(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCurrentColorEffect:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iput-object p1, p0, Lcom/android/camera/CameraThread;->mCurrentColorEffect:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraController;->setColorEffect(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto :goto_0
.end method

.method public final setMode(I)V
    .locals 3

    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    if-eqz v0, :cond_0

    const-string v0, "CameraThread"

    const-string v1, "Cannot set mode during preview"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot set mode during preview"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mRecording:Z

    if-eqz v0, :cond_1

    const-string v0, "CameraThread"

    const-string v1, "Cannot set mode during recording"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot set mode during recording"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/android/camera/CameraThread;->mMode:I

    return-void
.end method

.method public setRecPowerWarning(Z)V
    .locals 3

    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set mRecPowerWarning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/camera/CameraThread;->mRecPowerWarning:Z

    return-void
.end method

.method public showStorageToast(Z)V
    .locals 12

    const/16 v11, 0x8a

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v7, 0x25

    sget-boolean v3, Lcom/android/camera/DCFRuler$StorageCardControl;->bSupportPhoneStorage:Z

    if-eqz v3, :cond_4

    sget v3, Lcom/android/camera/CameraThread;->Storage_Status:I

    if-eqz v3, :cond_4

    const-string v3, "CameraThread"

    const-string v4, "no storage, ready to switch"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/android/camera/CameraThread;->Storage_Status:I

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-static {v3}, Lcom/android/camera/DCFRuler$StorageCardControl;->toggleStorageType(Landroid/app/Activity;)V

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->hasStorageTest()V

    sget v3, Lcom/android/camera/CameraThread;->Storage_Status:I

    if-nez v3, :cond_3

    if-ne p1, v9, :cond_0

    iget v3, p0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->calculatePicturesRemaining()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    const/4 v3, 0x3

    sput v3, Lcom/android/camera/CameraThread;->Storage_Status:I

    :cond_0
    :goto_0
    sget v3, Lcom/android/camera/CameraThread;->Storage_Status:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    invoke-static {v3, v7}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getStorageType()I

    move-result v3

    if-nez v3, :cond_2

    const v0, 0x7f0a0152

    :goto_1
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    invoke-static {v3, v7, v0, v8, v10}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v4, 0x68

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    :goto_2
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getRecordLimitCheck()Lcom/android/camera/RecordLimitCheck;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getRecordLimitCheck()Lcom/android/camera/RecordLimitCheck;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3, v4}, Lcom/android/camera/RecordLimitCheck;->setByteRate(Lcom/android/camera/HTCCamera;)V

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getRecordLimitCheck()Lcom/android/camera/RecordLimitCheck;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/android/camera/RecordLimitCheck;->remainTime(Z)J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    const/4 v3, 0x3

    sput v3, Lcom/android/camera/CameraThread;->Storage_Status:I

    goto :goto_0

    :cond_2
    const v0, 0x7f0a0153

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-static {v3}, Lcom/android/camera/DCFRuler$StorageCardControl;->toggleStorageType(Landroid/app/Activity;)V

    sput v1, Lcom/android/camera/CameraThread;->Storage_Status:I

    :cond_4
    invoke-static {}, Lcom/android/camera/DisplayDevice;->contactsNoStorage()Z

    move-result v3

    if-ne v3, v9, :cond_5

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v4, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v3

    if-ne v3, v9, :cond_5

    const-string v3, "CameraThread"

    const-string v4, "take picture on contact picture request - not show storage status"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    sget v3, Lcom/android/camera/CameraThread;->Storage_Status:I

    packed-switch v3, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const/4 v2, 0x0

    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getStorageType()I

    move-result v3

    if-ne v3, v9, :cond_7

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    :goto_3
    const-string v3, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@@@@ status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "shared"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "CameraThread"

    const-string v4, "media shared"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    invoke-static {v3, v7}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    sget-boolean v3, Lcom/android/camera/DCFRuler$StorageCardControl;->bSupportPhoneStorage:Z

    if-eqz v3, :cond_8

    const v0, 0x7f0a0037

    iget v3, p0, Lcom/android/camera/CameraThread;->mMode:I

    if-ne v3, v9, :cond_6

    const v0, 0x7f0a0038

    :cond_6
    :goto_4
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    invoke-static {v3, v7, v0, v8, v10}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_7
    invoke-static {}, Landroid/os/Environment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_8
    iget v3, p0, Lcom/android/camera/CameraThread;->mMode:I

    if-nez v3, :cond_a

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v3, v11, :cond_9

    const v0, 0x7f0a0037

    goto :goto_4

    :cond_9
    const v0, 0x7f0a0035

    goto :goto_4

    :cond_a
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v3, v11, :cond_b

    const v0, 0x7f0a0038

    goto :goto_4

    :cond_b
    const v0, 0x7f0a0036

    goto :goto_4

    :cond_c
    const-string v3, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "media status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    invoke-static {v3, v7}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    const-string v3, "removed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "bad_removal"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "unmounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_d
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const v4, 0x20c00a1

    invoke-static {v3, v7, v4, v8, v10}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_e
    invoke-static {}, Lcom/android/camera/ImageManager;->isNonWritable()Z

    move-result v3

    if-ne v3, v9, :cond_10

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v3, v11, :cond_f

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const v4, 0x7f0a0039

    invoke-static {v3, v7, v4, v8, v10}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_f
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const v4, 0x7f0a0032

    invoke-static {v3, v7, v4, v8, v10}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_10
    const-string v3, "CameraThread"

    const-string v4, "no storage - unknown case, maybe prepare storage"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_1
    const-string v3, "CameraThread"

    const-string v4, "cannot know storage state"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_2
    const-string v3, "CameraThread"

    const-string v4, "storage full"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    invoke-static {v3, v7}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    invoke-static {}, Lcom/android/camera/DCFRuler$StorageCardControl;->getStorageType()I

    move-result v3

    if-ne v3, v9, :cond_11

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-eq v3, v11, :cond_11

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const v4, 0x7f0a0033

    invoke-static {v3, v7, v4, v8, v10}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_11
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const v4, 0x7f0a0034

    invoke-static {v3, v7, v4, v8, v10}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public startPreview(I)V
    .locals 22

    const-string v17, "CameraThread"

    const-string v18, "startPreview() - start"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    const-string v17, "CameraThread"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Camera has been in Prevewing. mPreviewing="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " mMode="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isRecPowerWarning()Z

    move-result v17

    if-eqz v17, :cond_2

    const-string v17, "CameraThread"

    const-string v18, "isRecPowerWarning(), won\'t start preview"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget v17, Lcom/android/camera/CameraThread;->Storage_Status:I

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    const/16 v17, 0x0

    sput v17, Lcom/android/camera/CameraThread;->Storage_Status:I

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/CameraThread;->m3DPreviewStatus:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    const-string v18, "pref_camera_switch"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    invoke-static {}, Lcom/android/camera/HTCCameraAdvanceSetting;->isSetDefault()Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v17, v0

    if-nez v17, :cond_7

    const-string v17, "CameraThread"

    const-string v18, "open the Camera in start_camera_preview"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->resetCameraFlag()V

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_13

    invoke-static {}, Lcom/android/camera/SensorHolder;->getSecondCamID()I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/camera/HTCCamera;->registerFocusSensor(Z)V

    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mErrorCallback:Lcom/android/camera/CameraThread$ErrorCallback;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mHtcCallback:Lcom/android/camera/CameraThread$HtcCallback;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/hardware/Camera;->setHtcCallback(Landroid/hardware/Camera$HtcCallback;)V

    const/16 v17, 0x0

    sput-boolean v17, Lcom/android/camera/CameraThread;->mIsLastCameraClosed:Z

    const-string v17, "CameraThread"

    const-string v18, "Open Camera - set mIsLastCameraClosed to false"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v17, Lcom/android/camera/CameraController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Lcom/android/camera/CameraController;-><init>(Landroid/hardware/Camera;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/CameraController;->setSupportedList()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->m_MaxZoom:I

    move/from16 v17, v0

    const/high16 v18, -0x8000

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    move/from16 v17, v0

    if-nez v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "taking-picture-zoom"

    invoke-virtual/range {v17 .. v18}, Lcom/android/camera/CameraController;->getSettingsInfo(Ljava/lang/String;)Lcom/android/camera/CameraController$SettingInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/CameraController$SettingInfo;->getMin()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/CameraThread;->m_MinZoom:I

    invoke-virtual {v9}, Lcom/android/camera/CameraController$SettingInfo;->getMax()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/CameraThread;->m_MaxZoom:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/camera/RangeEvent;

    const-string v19, "Zoom.RangeRetrieved"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->m_MinZoom:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->m_MaxZoom:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-direct/range {v18 .. v21}, Lcom/android/camera/RangeEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {v17 .. v18}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    :cond_6
    const/16 p1, 0x1

    :cond_7
    const/16 v17, 0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    move/from16 v17, v0

    if-nez v17, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v17

    if-nez v17, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    move/from16 v17, v0

    if-nez v17, :cond_18

    const-string v17, "CameraThread"

    const-string v18, "Enable zero-shutter-lag"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "capture-mode"

    const-string v19, "burst"

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "picture-count"

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    :goto_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/CameraController;->doSetCameraParameters()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/android/camera/HTCCameraAdvanceSetting;->initPrefrenceFiles(Landroid/app/Activity;Lcom/android/camera/CameraController;)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v17

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    const-string v18, "pref_camera_3D_status"

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v19

    invoke-static/range {v17 .. v19}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Z)Z

    :cond_9
    const-string v17, "CameraThread"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "AEC/AWB locked : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CameraThread;->mIsAecAwbLocked:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CameraThread;->mIsAecAwbLocked:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/camera/CameraController;->setAutoExposureLock(Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    move-object/from16 v17, v0

    const/16 v18, 0x1f

    invoke-static/range {v17 .. v18}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "touch-aec"

    const-string v19, "off"

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v17, 0x0

    sput-boolean v17, Lcom/android/camera/CameraThread;->mEnableTouchAEC:Z

    const-string v17, "CameraThread"

    const-string v18, "Disable touch aec !!!"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const-string v17, "CameraThread"

    const-string v18, "Start preview - disable continue AF !!!"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    move-object/from16 v17, v0

    const/16 v18, 0x2e

    invoke-static/range {v17 .. v18}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "enable-caf"

    const-string v19, "off"

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v17, 0x0

    sput-boolean v17, Lcom/android/camera/CameraThread;->mEnableCAF:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CameraThread;->mIsOnlySetResolution:Z

    move/from16 v17, v0

    if-nez v17, :cond_a

    const/16 v17, 0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_a

    const-string v17, "CameraThread"

    const-string v18, "reset flashlight mode !!!"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "off"

    invoke-virtual/range {v17 .. v18}, Lcom/android/camera/CameraController;->setFlashMode(Ljava/lang/String;)V

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    const-string v18, "pref_fast_fps"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v7, v0, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v17

    if-nez v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v17

    if-eqz v17, :cond_19

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "cam-mode"

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    :goto_4
    invoke-static {}, Lcom/android/camera/DisplayDevice;->canChangeFrameRate()Z

    move-result v17

    if-eqz v17, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isMMSRecording()Z

    move-result v17

    if-eqz v17, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const/16 v18, 0x3a98

    const/16 v19, 0x3a98

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setPreviewFpsRange(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    :cond_c
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    const-string v18, "pref_front_camera_mode"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "front-camera-mode"

    const-string v19, "mirror"

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->loadResolution()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    move/from16 v17, v0

    if-nez v17, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setPreviewSizeParameter(II)V

    const-string v17, "CameraThread"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SetPreviewSize: CAMERA MODE, Width = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", Height = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Camera_Mode_Width:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Camera_Mode_Height:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setPictureSizeParameter(II)V

    const-string v17, "CameraThread"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SetPictureSize: CAMERA MODE, Width = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Camera_Mode_Width:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", Height = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Camera_Mode_Height:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v17, "CameraThread"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Camera mode RESET_SURFACEVIEW_LAYOUT width= "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", Height = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    move/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v17 .. v21}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :cond_e
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "taking-picture-zoom"

    invoke-virtual/range {v17 .. v18}, Lcom/android/camera/CameraController;->getSettingsInfo(Ljava/lang/String;)Lcom/android/camera/CameraController$SettingInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/camera/CameraController$SettingInfo;->getMin()I

    move-result v12

    invoke-virtual {v9}, Lcom/android/camera/CameraController$SettingInfo;->getMax()I

    move-result v11

    sget-boolean v17, Lcom/android/camera/HTCCameraAdvanceSetting;->mIsInitZoom:Z

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    invoke-virtual {v9}, Lcom/android/camera/CameraController$SettingInfo;->getDefault()I

    move-result v17

    sput v17, Lcom/android/camera/HTCCameraAdvanceSetting;->mZoomValue:I

    const/16 v17, 0x0

    sput-boolean v17, Lcom/android/camera/HTCCameraAdvanceSetting;->mIsInitZoom:Z

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    move/from16 v17, v0

    if-nez v17, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v17

    if-nez v17, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "taking-picture-zoom"

    sget v19, Lcom/android/camera/HTCCameraAdvanceSetting;->mZoomValue:I

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v17, v0

    const/16 v18, 0x5a

    invoke-virtual/range {v17 .. v18}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/HTCCamera;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v8

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    move-object/from16 v17, v0

    const-string v18, "Preview.Starting"

    invoke-virtual/range {v17 .. v18}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    :try_start_3
    const-string v17, "CameraThread"

    const-string v18, "mCameraDevice.startPreview() - start"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/Camera;->startPreview()V

    const-string v17, "CameraThread"

    const-string v18, "mCameraDevice.startPreview() - end"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    const/16 v16, 0x1

    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/CameraThread;->mIsOnlySetResolution:Z

    move/from16 v17, v0

    if-nez v17, :cond_21

    const/16 v17, 0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_21

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->loadSettings()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->start_calculate_fps()V

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/CameraThread;->mPreviewing:Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v17

    if-eqz v17, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x54

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v17 .. v21}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :cond_10
    if-eqz v16, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    move-object/from16 v17, v0

    const-string v18, "Preview.Started"

    invoke-virtual/range {v17 .. v18}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    :cond_11
    const-string v17, "CameraThread"

    const-string v18, "start preview, mTakeFocus = false"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v17, 0x0

    sput-boolean v17, Lcom/android/camera/CameraThread;->mTakeFocus:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/android/camera/CameraThread$MainHandler;->hasMessages(I)Z

    move-result v17

    if-nez v17, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x1f

    invoke-static/range {v17 .. v18}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x23

    invoke-static/range {v17 .. v18}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x2d

    invoke-static/range {v17 .. v18}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    if-eqz v17, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/HTCCamera;->updateFlashMode()V

    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    move/from16 v17, v0

    if-nez v17, :cond_22

    const-string v17, "[ANALYTIC_com.android.camera]"

    const-string v18, "[camera_preview]complete"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    const-string v17, "CameraThread"

    const-string v18, "startPreview() - end"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v17

    if-eqz v17, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/component/PowerWarningController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v17

    if-eqz v17, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/HTCCamera;->getFlashRestriction()Lcom/android/camera/FlashRestriction;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/camera/FlashRestriction;->checkLowPower()Z

    move-result v17

    if-eqz v17, :cond_16

    const-string v17, "CameraThread"

    const-string v18, "power is low in 3D mode, won\'t start preview"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    move-object/from16 v17, v0

    const/16 v18, 0x3b

    const-wide/16 v19, 0x64

    invoke-static/range {v17 .. v20}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v6

    const-string v17, "CameraThread"

    const-string v18, "open camera failed"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-short v17, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v18, 0xda

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_15

    const v14, 0x7f0a004b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_14

    const v14, 0x7f0a004c

    :cond_14
    const/16 v4, 0x7d0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    const/16 v18, 0x25

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-static {v0, v1, v14, v2, v3}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    int-to-long v0, v4

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_15
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/HTCCamera;->finish()V

    goto/16 :goto_0

    :cond_16
    :try_start_6
    invoke-static {}, Lcom/android/camera/SensorHolder;->get3DCamID()I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/camera/HTCCamera;->registerFocusSensor(Z)V

    goto/16 :goto_1

    :cond_17
    invoke-static {}, Lcom/android/camera/SensorHolder;->getMainCamID()I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_e

    :catch_1
    move-exception v5

    const-string v17, "CameraThread"

    const-string v18, "Camera thread was interrupted when show toast due to sensor resource is locked"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_18
    const-string v17, "CameraThread"

    const-string v18, "Disable zero-shutter-lag"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "capture-mode"

    const-string v19, "normal"

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_2
    move-exception v6

    const-string v17, "CameraThread"

    const-string v18, "Cannot enable/disable zero-shutter-lag"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/HTCCameraAdvanceSetting;->getIsRecordWithAudio(Landroid/app/Activity;)Z

    move-result v10

    if-eqz v10, :cond_1a

    invoke-static {}, Lcom/android/camera/SoundEffect;->disableSoundEffect()I

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "cam-mode"

    const/16 v19, 0x2

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    goto/16 :goto_4

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "cam-mode"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    goto/16 :goto_4

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const v19, 0x30d40

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setPreviewFpsRange(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto/16 :goto_5

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "front-camera-mode"

    const-string v19, "reverse"

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->mMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/camera/MovieModeHandler;->IsLockMMSVideoInLandscape(Lcom/android/camera/HTCCamera;)Z

    move-result v17

    if-eqz v17, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x67

    invoke-static/range {v17 .. v18}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Video_Mode_Height:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/android/camera/CameraController;->setPreviewSizeParameter(II)V

    const-string v17, "CameraThread"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SetPreviewSize in start_preview: VIDEO MODE, Width = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", Height = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Video_Mode_Height:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const-string v17, "CameraThread"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Video mode in start_preview RESET_SURFACEVIEW_LAYOUT width= "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", Height = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Video_Mode_Height:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    const/16 v18, 0x7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Video_Mode_Height:I

    move/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v17 .. v21}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_7

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v17, v0

    const-string v18, "taking-picture-zoom"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    goto/16 :goto_8

    :catch_3
    move-exception v6

    const-string v17, "CameraThread"

    const-string v18, "mCameraDevice.setPreviewDisplay failed"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/HTCCamera;->finish()V

    goto/16 :goto_9

    :catch_4
    move-exception v6

    const-string v17, "CameraThread"

    const-string v18, "start preview failed"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/HTCCamera;->finish()V

    const/16 v16, 0x0

    goto/16 :goto_a

    :cond_21
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/CameraThread;->mIsOnlySetResolution:Z

    goto/16 :goto_b

    :cond_22
    const-string v17, "[ANALYTIC_com.android.camera]"

    const-string v18, "[camcorder_preview]complete"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c
.end method

.method public final startScaladoPostProcessing(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public start_calculate_fps()V
    .locals 0

    return-void
.end method

.method start_video_recording(I)V
    .locals 24

    const-string v3, "CameraThread"

    const-string v4, "start_video_recording - start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraThread$MainHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "CameraThread"

    const-string v4, "start recording before stop recoding delay"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v4, 0x2f

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->stop_video_recording_delay()V

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v3, :cond_1

    const-string v3, "CameraThread"

    const-string v4, "mRecorder != null in start video recording"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v3, :cond_2

    new-instance v3, Landroid/media/MediaRecorder;

    invoke-direct {v3}, Landroid/media/MediaRecorder;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v3, :cond_3

    const-string v3, "CameraThread"

    const-string v4, "mCameraDevice is null in start video recording"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    if-eqz v3, :cond_4

    sget v3, Lcom/android/camera/HTCCamera;->mFocusMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const-string v3, "CameraThread"

    const-string v4, "Start recording and not touch focus - enable continue AF !!!"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v4, "enable-caf"

    const-string v5, "on"

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v3}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/camera/CameraThread;->mEnableCAF:Z

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v3

    const-string v4, "CAMCORDER_MODE=ON"

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->isPowerWarning()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "CameraThread"

    const-string v4, "Won\'t access mCameraDevice due to PowerWarning"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/camera/CameraThread;->setAecAwbLockInternal(Z)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/CameraThread;->mRecording:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->unlock()V

    const-string v3, "CameraThread"

    const-string v4, "start video recording: unlock camera"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getFreezeOrientation()I

    move-result v20

    const/4 v3, -0x1

    move/from16 v0, v20

    if-ne v0, v3, :cond_f

    const-string v3, "CameraThread"

    const-string v4, "orientation = OrientationEventListener.ORIENTATION_UNKNOWN"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v20, 0x0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/CameraThread;->bSwitchCamera:Z

    if-nez v3, :cond_6

    const-string v3, "CameraThread"

    const-string v4, "set rotation landscape while 3D video mode"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v20, 0x0

    :cond_6
    invoke-static/range {v20 .. v20}, Lcom/android/camera/ImageManager;->roundOrientation(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/camera/CameraThread;->mCaptureRotation:I

    const-string v3, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set rotation, mCaptureRotation = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/CameraThread;->mCaptureRotation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCamcorderRotate()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3, v4}, Lcom/android/camera/MovieModeHandler;->IsLockMMSVideoInLandscape(Lcom/android/camera/HTCCamera;)Z

    move-result v3

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/CameraThread;->mCaptureRotation:I

    invoke-static {v4}, Lcom/android/camera/ImageManager;->roundOrientation(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v14

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-interface {v14}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-static {v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getIsRecordWithAudio(Landroid/app/Activity;)Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportStereoRecord()Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/CameraThread;->bIsStereo:Z

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getFreezeOrientation()I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/rotate/OrientationConfig;->mapOrientation_Event2UI(I)I

    move-result v19

    const/4 v3, 0x1

    move/from16 v0, v19

    invoke-static {v3, v0}, Lcom/android/camera/SoundEffect;->setSoundEffect(ZI)I

    invoke-static {}, Lcom/android/camera/SoundEffect;->enableSoundEffect()I

    const-string v3, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[START RECORD] Stereo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/camera/CameraThread;->bIsStereo:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "CameraThread"

    const-string v4, "is Service Mode."

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/IntentManager;->getSaveUri()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v2, :cond_14

    if-eqz v1, :cond_14

    :try_start_1
    const-string v3, "rw"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v23

    if-eqz v23, :cond_13

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_data"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "mime_type"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "bucket_display_name"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/CameraThread;->mVideoPath:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/4 v3, 0x2

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    const-string v3, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mVideoPath : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->mVideoPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mime_type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",bucket_display_name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportOnlyMP4VideoFormat()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isMMSRecording()Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "video/3gpp"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    :goto_3
    const/4 v3, 0x1

    move-object/from16 v0, v22

    invoke-static {v3, v0}, Lcom/android/camera/ImageManager;->hasStorage(ZLjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual/range {v23 .. v23}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v7, 0x1

    :cond_a
    :goto_4
    if-nez v7, :cond_c

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportOnlyMP4VideoFormat()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isMMSRecording()Z

    move-result v3

    if-nez v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    :goto_5
    new-instance v9, Ljava/lang/StringBuffer;

    const/16 v3, 0x32

    invoke-direct {v9, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-static {}, Lcom/android/camera/DCFRuler;->getVideoPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/CameraThread;->mfilepath:Ljava/lang/String;

    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-static {v3, v9}, Lcom/android/camera/DCFRuler;->getVideoNameAndNumber(Landroid/app/Activity;Ljava/lang/StringBuffer;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/camera/CameraThread;->mNumber:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_6
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    const-string v13, ".3gp"

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportOnlyMP4VideoFormat()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isMMSRecording()Z

    move-result v3

    if-nez v3, :cond_b

    const-string v13, ".mp4"

    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    const-string v3, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Save video: directory name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->mfilepath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",  file name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mfilepath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/CameraThread;->mVideoPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mVideoPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getRecordLimitCheck()Lcom/android/camera/RecordLimitCheck;

    move-result-object v16

    if-eqz v16, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mVideoPath:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/camera/RecordLimitCheck;->setFilePath(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/RecordLimitCheck;->calculateRemainSpace()V

    :try_start_3
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/RecordLimitCheck;->getVideoBitrate()I

    move-result v8

    const-string v3, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set encode bitrate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3, v8}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_7
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/RecordLimitCheck;->getMaxSeconds()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/camera/RecordLimitCheck;->setUseTimeOut_API(Z)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_8
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/RecordLimitCheck;->getMaxBytes()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isMMSRecording()Z

    move-result v3

    if-eqz v3, :cond_17

    sget-object v3, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    sget-object v4, Lcom/android/camera/DisplayDevice$CustomMMS;->Verizon:Lcom/android/camera/DisplayDevice$CustomMMS;

    if-ne v3, v4, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/CameraThread;->Video_Mode_Height:I

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    const-string v3, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setVideoSize: width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/CameraThread;->Video_Mode_Height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/CameraThread;->mEncoderType:I

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    if-eqz v15, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->IsEqualOrAbove720p()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support128kBitrate()Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/16 v4, 0x7d00

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/16 v4, 0x1f40

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    :cond_d
    :goto_b
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->NeedToApplyAMR_NB()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1f

    const-string v3, "CameraThread"

    const-string v4, "AMR_NB"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    :cond_e
    :goto_c
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/camera/CameraThread;->mStartRecordingTime:J

    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mInfoListener:Lcom/android/camera/CameraThread$InfoListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mErrorListener:Lcom/android/camera/CameraThread$ErrorListener;

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->start()V

    const-string v3, "[ANALYTIC_com.android.camera]"

    const-string v4, "[record_video]complete"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->prepareActionScreen()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v4, "counter_video"

    new-instance v5, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/CameraThread;->mNumber:I

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    const-string v4, "Recording_Started"

    invoke-virtual {v3, v4}, Lcom/android/camera/EventManager;->raiseEvent(Ljava/lang/String;)V

    const-string v3, "CameraThread"

    const-string v4, "start_video_recording - end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    add-int/lit8 v20, v20, 0x5a

    goto/16 :goto_1

    :catch_0
    move-exception v11

    const-string v3, "CameraThread"

    const-string v4, "setPreviewDisplay failed, Camera app finished"

    invoke-static {v3, v4, v11}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->finish()V

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getFreezeOrientation()I

    move-result v3

    invoke-static {v3}, Lcom/android/camera/rotate/OrientationConfig;->mapOrientation_Event2UI(I)I

    move-result v19

    const/4 v3, 0x0

    move/from16 v0, v19

    invoke-static {v3, v0}, Lcom/android/camera/SoundEffect;->setSoundEffect(ZI)I

    invoke-static {}, Lcom/android/camera/SoundEffect;->enableSoundEffect()I

    const-string v3, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[START RECORD] Stereo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/camera/CameraThread;->bIsStereo:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_11
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOutputFormat(I)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v11

    const-string v3, "CameraThread"

    invoke-virtual {v11}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_12
    :try_start_9
    const-string v3, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "floder:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",has no storage."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_13
    const-string v3, "CameraThread"

    const-string v4, "Video File Descriptor is null."

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_4

    :cond_14
    const-string v3, "CameraThread"

    const-string v4, "SaveUri or ContentResolver is null."

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    goto/16 :goto_5

    :catch_2
    move-exception v11

    const-string v3, "CameraThread"

    const-string v4, "Cannot find available video file location, please check the storage card"

    invoke-static {v3, v4, v11}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v3, "CameraThread"

    const-string v4, "Camera app finished"

    invoke-static {v3, v4, v11}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->finish()V

    goto/16 :goto_6

    :catch_3
    move-exception v12

    const-string v3, "CameraThread"

    const-string v4, "mRecorder.setParameters() failed"

    invoke-static {v3, v4, v12}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :catch_4
    move-exception v12

    const-string v3, "CameraThread"

    const-string v4, "mRecorder.setMaxDuration() failed - only use ui message to check time out"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/camera/RecordLimitCheck;->setUseTimeOut_API(Z)V

    goto/16 :goto_8

    :catch_5
    move-exception v12

    const-string v3, "CameraThread"

    const-string v4, "mRecorder.setMaxFileSize() failed - use message to check file size"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/RecordLimitCheck;->restartCheckFile()V

    goto/16 :goto_9

    :cond_16
    const-string v3, "CameraThread"

    const-string v4, "RecordLimitCheck is null !!!"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    goto/16 :goto_a

    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const v4, 0x1f400

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->needForce48KAudioSamplingRate()Z

    move-result v3

    if-eqz v3, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const v4, 0xbb80

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    :goto_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->setBackgroundDataSetting(Z)V

    goto/16 :goto_b

    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const v4, 0xac44

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    goto :goto_d

    :cond_1a
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->NeedToApplyAMR_NB()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v17

    if-eqz v17, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/camera/MovieModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Resolution;

    move-result-object v21

    sget-object v3, Lcom/android/camera/Resolution;->Video_QHD:Lcom/android/camera/Resolution;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    sget-object v3, Lcom/android/camera/Resolution;->Video_WVGA:Lcom/android/camera/Resolution;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const v4, 0x17700

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    :goto_e
    invoke-static {}, Lcom/android/camera/DisplayDevice;->needForce48KAudioSamplingRate()Z

    move-result v3

    if-eqz v3, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const v4, 0xbb80

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    goto/16 :goto_b

    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const v4, 0xfa00

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    goto :goto_e

    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const v4, 0xfa00

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    goto :goto_e

    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const v4, 0xac44

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    goto/16 :goto_b

    :cond_1f
    const-string v3, "CameraThread"

    const-string v4, "AAC"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportStereoRecord()Z

    move-result v3

    if-eqz v3, :cond_20

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/CameraThread;->bIsStereo:Z

    if-eqz v3, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    :goto_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    goto/16 :goto_c

    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    goto :goto_f

    :catch_6
    move-exception v11

    const-string v3, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "recorder prepare failed for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->mfilepath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "CameraThread"

    const-string v4, "Camera app finished"

    invoke-static {v3, v4, v11}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->restoreBackgrounddataSetting()V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->finish()V

    goto/16 :goto_0

    :catch_7
    move-exception v11

    const-string v3, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "recorder start failed for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->mfilepath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "CameraThread"

    const-string v4, "Camera app finished"

    invoke-static {v3, v4, v11}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->finish()V

    goto/16 :goto_0
.end method

.method public final stopPreview()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v0, p0, :cond_1

    const-string v0, "CameraThread"

    const-string v1, "stopPreview() - start sync"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->stop_calculate_fps()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    :cond_0
    const-string v0, "CameraThread"

    const-string v1, "stopPreview() - end sync"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v0, :cond_2

    const-string v0, "CameraThread"

    const-string v1, "stopPreview() - start async"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    new-instance v1, Lcom/android/camera/CameraThread$2;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraThread$2;-><init>(Lcom/android/camera/CameraThread;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread$MainHandler;->post(Ljava/lang/Runnable;)Z

    const-string v0, "CameraThread"

    const-string v1, "stopPreview() - end async"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "CameraThread"

    const-string v1, "Cannot stop preview because there is no handler for camera thread"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stop_calculate_fps()V
    .locals 0

    return-void
.end method

.method public final storeTakenPicture([BLcom/android/camera/CameraThread$StorePictureCallback;Lcom/android/camera/DCFInfo;Z)V
    .locals 7

    const-string v0, "CameraThread"

    const-string v1, "storeTakenPicture() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    if-nez p1, :cond_5

    const-string v0, "CameraThread"

    const-string v1, "!!!!!!!! jpegData == null !!!!!!!!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-nez p3, :cond_0

    const-string v0, "CameraThread"

    const-string v1, "No DCF information specified, use default value"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p3, Lcom/android/camera/DCFRuler;->DefaultDCFInfo:Lcom/android/camera/DCFInfo;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isRequestSquare()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/IntentManager;->getSaveUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isUnknownServiceMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iput-object p1, p0, Lcom/android/camera/CameraThread;->mJpegData:[B

    :cond_2
    sget v0, Lcom/android/camera/CameraThread;->Storage_Status:I

    if-nez v0, :cond_6

    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/CameraThread;->store_image([BLcom/android/camera/CameraThread$StorePictureCallback;Lcom/android/camera/DCFInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mfilepath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mfilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v0, Lcom/android/camera/PictureSavedEvent;

    const-string v1, "Media.Saved"

    sget-object v4, Lcom/android/camera/CameraThread;->mLastContentUri:Landroid/net/Uri;

    move-object v2, p1

    move v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/PictureSavedEvent;-><init>(Ljava/lang/String;[BZLandroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    :cond_3
    :goto_1
    if-eqz p4, :cond_4

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportThumbnailAlbumButton()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v1, 0x39

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    :cond_4
    const-string v0, "CameraThread"

    const-string v1, "storeTakenPicture() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jpegData != null, jpegData.length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/camera/CameraThread;->m_EventManager:Lcom/android/camera/EventManager;

    new-instance v1, Lcom/android/camera/MediaSaveFailedEvent;

    const-string v2, "Media.SaveFailed"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/camera/MediaSaveFailedEvent;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    goto :goto_1
.end method

.method public final storeTakenPicture([BLcom/android/camera/CameraThread$StorePictureCallback;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/camera/CameraThread;->storeTakenPicture([BLcom/android/camera/CameraThread$StorePictureCallback;Lcom/android/camera/DCFInfo;Z)V

    return-void
.end method

.method public final storeTakenPicture([BLcom/android/camera/DCFInfo;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/camera/CameraThread;->storeTakenPicture([BLcom/android/camera/CameraThread$StorePictureCallback;Lcom/android/camera/DCFInfo;Z)V

    return-void
.end method

.method public final storeTakenPicture([BZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/android/camera/CameraThread;->storeTakenPicture([BLcom/android/camera/CameraThread$StorePictureCallback;Lcom/android/camera/DCFInfo;Z)V

    return-void
.end method

.method public updateImageRatio(ZLcom/android/camera/ModeHandler;)Lcom/android/camera/Resolution;
    .locals 12

    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {p2, v9}, Lcom/android/camera/ModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;)Lcom/android/camera/Resolution;

    move-result-object v5

    invoke-static {}, Lcom/android/camera/DisplayDevice;->captrueFullSize()Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v10, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v9, v10}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v10, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v9, v10}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    const-string v9, "CameraThread"

    const-string v10, "Contacts request - directly get CONTACT_STYLE resolution"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v5

    :cond_1
    invoke-virtual {v5}, Lcom/android/camera/Resolution;->isWideRatio()Z

    move-result v9

    if-eq p1, v9, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->is2ndCamera()Z

    move-result v9

    if-nez v9, :cond_3

    :cond_2
    const-string v9, "CameraThread"

    const-string v10, "not need to update image ratio"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v9, "CameraThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateImageRatio - Current Resolution: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {p2, v9}, Lcom/android/camera/ModeHandler;->getResolutionMenuItem(Lcom/android/camera/HTCCamera;)Ljava/util/LinkedList;

    move-result-object v7

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v8, Ljava/util/TreeSet;

    invoke-direct {v8}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {v8, v7}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v8}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ResolutionMenuItem;

    iget-object v9, v6, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    invoke-virtual {v9}, Lcom/android/camera/Resolution;->isWideRatio()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v1, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v9

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v10

    if-eq v9, v10, :cond_6

    const-string v9, "CameraThread"

    const-string v10, "Note: the number of resolution pairs for image ratio are not equal"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const/4 v4, 0x0

    if-eqz p1, :cond_8

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v9

    if-ge v2, v9, :cond_a

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/ResolutionMenuItem;

    iget-object v9, v9, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    invoke-virtual {v5, v9}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/ResolutionMenuItem;

    iget-object v4, v9, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v9

    if-ge v2, v9, :cond_a

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/ResolutionMenuItem;

    iget-object v9, v9, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    invoke-virtual {v5, v9}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/ResolutionMenuItem;

    iget-object v4, v9, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    if-nez v4, :cond_c

    const-string v9, "CameraThread"

    const-string v10, "update image ratio is fail"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_4
    const-string v9, "CameraThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateImageRatio - New Resolution: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v4

    goto/16 :goto_0

    :cond_c
    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v10, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v9, v10}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_b

    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v10, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {p2, v10}, Lcom/android/camera/ModeHandler;->getResolutionSettingString(Lcom/android/camera/HTCCamera;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_4
.end method
